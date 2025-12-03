@interface DAComponentUtil
+ (BOOL)IORegistryNameExists:(id)exists optionalKey:(id)key passingValidator:(id)validator;
+ (id)getIORegistryClass:(id)class property:(id)property optionalKey:(id)key classValidator:(id)validator;
+ (id)getIORegistryName:(id)name property:(id)property optionalKey:(id)key classValidator:(id)validator;
+ (id)getIOServicePropertiesWithMatchingDictionary:(id)dictionary;
+ (id)getIOregData:(const char *)data property:(__CFString *)property length:(int)length optionalKey:(const __CFString *)key;
+ (id)getMatchingDict:(__CFDictionary *)dict property:(id)property optionalKey:(id)key optionalClassValidator:(id)validator;
+ (id)sharedInstance;
+ (unsigned)getIOService:(__CFDictionary *)service optionalKey:(id)key optionalClassValidator:(id)validator;
@end

@implementation DAComponentUtil

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000ED8;
  block[3] = &unk_100004218;
  block[4] = self;
  if (qword_100008880 != -1)
  {
    dispatch_once(&qword_100008880, block);
  }

  v2 = qword_100008888;

  return v2;
}

+ (id)getIOregData:(const char *)data property:(__CFString *)property length:(int)length optionalKey:(const __CFString *)key
{
  v9 = IOServiceMatching(data);
  if (!v9)
  {
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000221C();
    }

    goto LABEL_14;
  }

  v10 = v9;
  if (key)
  {
    keys = key;
    v11 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v10, @"IONameMatch", v11);
    CFRelease(v11);
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v10);
  if (!MatchingService)
  {
    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000021AC();
    }

LABEL_14:

    v17 = 0;
    goto LABEL_27;
  }

  v13 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, property, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v15 = CFProperty;
    v16 = CFGetTypeID(CFProperty);
    if (v16 == CFDataGetTypeID())
    {
      v17 = [NSData dataWithBytes:CFDataGetBytePtr(v15) length:length];
      v18 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100002108();
      }
    }

    else
    {
      v21 = CFGetTypeID(v15);
      TypeID = CFStringGetTypeID();
      v23 = DiagnosticLogHandleForCategory();
      v24 = v23;
      if (v21 == TypeID)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1000020D4();
        }

        v17 = [(__CFData *)v15 dataUsingEncoding:4];
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100002098();
        }

        v17 = 0;
      }
    }

    CFRelease(v15);
  }

  else
  {
    v20 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000213C();
    }

    v17 = 0;
  }

  IOObjectRelease(v13);
LABEL_27:

  return v17;
}

+ (id)getIORegistryClass:(id)class property:(id)property optionalKey:(id)key classValidator:(id)validator
{
  classCopy = class;
  validatorCopy = validator;
  keyCopy = key;
  propertyCopy = property;
  v15 = IOServiceMatching([class UTF8String]);
  v16 = [self getMatchingDict:v15 property:propertyCopy optionalKey:keyCopy optionalClassValidator:validatorCopy];

  if (v15)
  {
    CFRelease(v15);
  }

  return v16;
}

+ (id)getIORegistryName:(id)name property:(id)property optionalKey:(id)key classValidator:(id)validator
{
  nameCopy = name;
  validatorCopy = validator;
  keyCopy = key;
  propertyCopy = property;
  v15 = IOServiceNameMatching([name UTF8String]);
  v16 = [self getMatchingDict:v15 property:propertyCopy optionalKey:keyCopy optionalClassValidator:validatorCopy];

  if (v15)
  {
    CFRelease(v15);
  }

  return v16;
}

+ (BOOL)IORegistryNameExists:(id)exists optionalKey:(id)key passingValidator:(id)validator
{
  existsCopy = exists;
  validatorCopy = validator;
  keyCopy = key;
  v11 = IOServiceNameMatching([exists UTF8String]);
  v12 = [DAComponentUtil getIOService:v11 optionalKey:keyCopy optionalClassValidator:validatorCopy];

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    IOObjectRelease(v12);
  }

  return v12 != 0;
}

+ (unsigned)getIOService:(__CFDictionary *)service optionalKey:(id)key optionalClassValidator:(id)validator
{
  keyCopy = key;
  validatorCopy = validator;
  if (!service)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000228C();
    }

    goto LABEL_12;
  }

  CFRetain(service);
  if (keyCopy)
  {
    keys = CFStringCreateWithCString(0, [keyCopy UTF8String], 0x8000100u);
    v9 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(service, @"IONameMatch", v9);
    CFRelease(v9);
    CFRelease(keys);
  }

  existing = 0;
  if (IOServiceGetMatchingServices(kIOMainPortDefault, service, &existing))
  {
LABEL_12:
    LODWORD(v10) = 0;
    goto LABEL_13;
  }

  if (validatorCopy)
  {
    do
    {
      v10 = IOIteratorNext(existing);
    }

    while (v10 && !validatorCopy[2](validatorCopy, v10));
  }

  else
  {
    LODWORD(v10) = IOIteratorNext(existing);
  }

LABEL_13:

  return v10;
}

+ (id)getMatchingDict:(__CFDictionary *)dict property:(id)property optionalKey:(id)key optionalClassValidator:(id)validator
{
  propertyCopy = property;
  v10 = [DAComponentUtil getIOService:dict optionalKey:key optionalClassValidator:validator];
  if (v10)
  {
    v11 = v10;
    CFProperty = IORegistryEntryCreateCFProperty(v10, propertyCopy, kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      v19 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100002330();
      }

      v16 = 0;
      goto LABEL_26;
    }

    v13 = CFProperty;
    v14 = CFGetTypeID(CFProperty);
    if (v14 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v13);
      v16 = [NSData dataWithBytes:BytePtr length:CFDataGetLength(v13)];
      v17 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100002108();
      }
    }

    else
    {
      v20 = CFGetTypeID(v13);
      if (v20 == CFStringGetTypeID())
      {
        v21 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000020D4();
        }

        v16 = [(__CFData *)v13 dataUsingEncoding:4];
        goto LABEL_25;
      }

      v22 = CFGetTypeID(v13);
      if (v22 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v13);
        v16 = [NSData dataWithBytes:&Value length:1];
        v17 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_1000022FC();
        }
      }

      else
      {
        v23 = CFGetTypeID(v13);
        if (v23 != CFNumberGetTypeID() || CFNumberIsFloatType(v13))
        {
          v24 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_100002098();
          }

          v16 = 0;
          goto LABEL_25;
        }

        v26 = 0;
        CFNumberGetValue(v13, kCFNumberNSIntegerType, &v26);
        v16 = [NSData dataWithBytes:&v26 length:8];
        v17 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_1000022C8();
        }
      }
    }

LABEL_25:
    CFRelease(v13);
LABEL_26:
    IOObjectRelease(v11);
    goto LABEL_27;
  }

  v18 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10000236C();
  }

  v16 = 0;
LABEL_27:

  return v16;
}

+ (id)getIOServicePropertiesWithMatchingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, dictionaryCopy);
  if (!MatchingService)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000023E4();
    }

    goto LABEL_7;
  }

  v5 = MatchingService;
  properties = 0;
  v6 = IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0);
  IOObjectRelease(v5);
  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000023A8();
    }

LABEL_7:

    v8 = 0;
    goto LABEL_9;
  }

  v8 = properties;
LABEL_9:
  v9 = [(__CFDictionary *)v8 copy];

  return v9;
}

@end