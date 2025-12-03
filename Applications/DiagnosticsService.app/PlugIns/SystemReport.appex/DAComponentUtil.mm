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
  block[2] = sub_10002A81C;
  block[3] = &unk_100090B10;
  block[4] = self;
  if (qword_1000D1FE0 != -1)
  {
    dispatch_once(&qword_1000D1FE0, block);
  }

  v2 = qword_1000D1FE8;

  return v2;
}

+ (id)getIOregData:(const char *)data property:(__CFString *)property length:(int)length optionalKey:(const __CFString *)key
{
  v10 = IOServiceMatching(data);
  if (!v10)
  {
    v20 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v18 = 0;
      goto LABEL_26;
    }

    *v28 = 136315138;
    *&v28[4] = data;
    v21 = "Class %s not found";
LABEL_30:
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, v28, 0xCu);
    goto LABEL_13;
  }

  v11 = v10;
  if (key)
  {
    *v28 = key;
    v12 = CFDictionaryCreate(kCFAllocatorDefault, v28, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v11, @"IONameMatch", v12);
    CFRelease(v12);
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v11);
  if (!MatchingService)
  {
    v20 = DiagnosticLogHandleForCategory();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *v28 = 136315138;
    *&v28[4] = data;
    v21 = "IO service for %s not found";
    goto LABEL_30;
  }

  v14 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, property, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v16 = CFProperty;
    v17 = CFGetTypeID(CFProperty);
    if (v17 == CFDataGetTypeID())
    {
      v18 = [NSData dataWithBytes:CFDataGetBytePtr(v16) length:length];
      v19 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v28 = 0;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "   Got CFData", v28, 2u);
      }
    }

    else
    {
      v23 = CFGetTypeID(v16);
      TypeID = CFStringGetTypeID();
      v25 = DiagnosticLogHandleForCategory();
      v26 = v25;
      if (v23 == TypeID)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *v28 = 0;
          _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "   Got CFString", v28, 2u);
        }

        v18 = [(__CFData *)v16 dataUsingEncoding:4];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v28 = 0;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unsupported type from ioreg", v28, 2u);
        }

        v18 = 0;
      }
    }

    CFRelease(v16);
  }

  else
  {
    v22 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138412290;
      *&v28[4] = property;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "ioreg entry %@ does not exist", v28, 0xCu);
    }

    v18 = 0;
  }

  IOObjectRelease(v14);
LABEL_26:

  return v18;
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
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Class/name not found", v13, 2u);
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
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "ioreg entry does not exist", buf, 2u);
      }

      v16 = 0;
      goto LABEL_25;
    }

    v13 = CFProperty;
    v14 = CFGetTypeID(CFProperty);
    if (v14 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v13);
      v16 = [NSData dataWithBytes:BytePtr length:CFDataGetLength(v13)];
      v17 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
LABEL_5:

LABEL_24:
        CFRelease(v13);
LABEL_25:
        IOObjectRelease(v11);
        goto LABEL_26;
      }

      *buf = 0;
      v23 = "   Got CFData";
    }

    else
    {
      v20 = CFGetTypeID(v13);
      if (v20 == CFStringGetTypeID())
      {
        v21 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "   Got CFString", buf, 2u);
        }

        v16 = [(__CFData *)v13 dataUsingEncoding:4];
        goto LABEL_24;
      }

      v22 = CFGetTypeID(v13);
      if (v22 != CFBooleanGetTypeID())
      {
        v24 = CFGetTypeID(v13);
        if (v24 != CFNumberGetTypeID() || CFNumberIsFloatType(v13))
        {
          v25 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unsupported type from ioreg", buf, 2u);
          }

          v16 = 0;
          goto LABEL_24;
        }

        *buf = 0;
        CFNumberGetValue(v13, kCFNumberNSIntegerType, buf);
        v16 = [NSData dataWithBytes:buf length:8];
        v17 = DiagnosticLogHandleForCategory();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        v28[0] = 0;
        v23 = "   Got Float";
        v27 = v28;
        goto LABEL_31;
      }

      LOBYTE(v28[0]) = CFBooleanGetValue(v13);
      v16 = [NSData dataWithBytes:v28 length:1];
      v17 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_5;
      }

      *buf = 0;
      v23 = "   Got Boolean";
    }

    v27 = buf;
LABEL_31:
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v23, v27, 2u);
    goto LABEL_5;
  }

  v18 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "IO service not found", buf, 2u);
  }

  v16 = 0;
LABEL_26:

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
      *properties = 138412290;
      *&properties[4] = dictionaryCopy;
      v8 = "[ERROR] Could not find the service matched by: %@";
      v9 = properties;
      v10 = v7;
      v11 = 12;
      goto LABEL_12;
    }

LABEL_6:

    v12 = 0;
    goto LABEL_8;
  }

  v5 = MatchingService;
  *properties = 0;
  CFProperties = IORegistryEntryCreateCFProperties(MatchingService, properties, 0, 0);
  IOObjectRelease(v5);
  if (CFProperties)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      v8 = "[ERROR] Could not create properties";
      v9 = &v15;
      v10 = v7;
      v11 = 2;
LABEL_12:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, v9, v11);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v12 = *properties;
LABEL_8:
  v13 = [v12 copy];

  return v13;
}

@end