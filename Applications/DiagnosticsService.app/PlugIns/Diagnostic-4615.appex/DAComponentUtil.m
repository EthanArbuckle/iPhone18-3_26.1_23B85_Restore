@interface DAComponentUtil
+ (BOOL)IORegistryNameExists:(id)a3 optionalKey:(id)a4 passingValidator:(id)a5;
+ (id)getIORegistryClass:(id)a3 property:(id)a4 optionalKey:(id)a5 classValidator:(id)a6;
+ (id)getIORegistryName:(id)a3 property:(id)a4 optionalKey:(id)a5 classValidator:(id)a6;
+ (id)getIOServicePropertiesWithMatchingDictionary:(id)a3;
+ (id)getIOregData:(const char *)a3 property:(__CFString *)a4 length:(int)a5 optionalKey:(const __CFString *)a6;
+ (id)getMatchingDict:(__CFDictionary *)a3 property:(id)a4 optionalKey:(id)a5 optionalClassValidator:(id)a6;
+ (id)sharedInstance;
+ (unsigned)getIOService:(__CFDictionary *)a3 optionalKey:(id)a4 optionalClassValidator:(id)a5;
@end

@implementation DAComponentUtil

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000ED8;
  block[3] = &unk_100004218;
  block[4] = a1;
  if (qword_100008880 != -1)
  {
    dispatch_once(&qword_100008880, block);
  }

  v2 = qword_100008888;

  return v2;
}

+ (id)getIOregData:(const char *)a3 property:(__CFString *)a4 length:(int)a5 optionalKey:(const __CFString *)a6
{
  v9 = IOServiceMatching(a3);
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
  if (a6)
  {
    keys = a6;
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
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, a4, kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v15 = CFProperty;
    v16 = CFGetTypeID(CFProperty);
    if (v16 == CFDataGetTypeID())
    {
      v17 = [NSData dataWithBytes:CFDataGetBytePtr(v15) length:a5];
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

+ (id)getIORegistryClass:(id)a3 property:(id)a4 optionalKey:(id)a5 classValidator:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = IOServiceMatching([a3 UTF8String]);
  v16 = [a1 getMatchingDict:v15 property:v14 optionalKey:v13 optionalClassValidator:v12];

  if (v15)
  {
    CFRelease(v15);
  }

  return v16;
}

+ (id)getIORegistryName:(id)a3 property:(id)a4 optionalKey:(id)a5 classValidator:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = IOServiceNameMatching([a3 UTF8String]);
  v16 = [a1 getMatchingDict:v15 property:v14 optionalKey:v13 optionalClassValidator:v12];

  if (v15)
  {
    CFRelease(v15);
  }

  return v16;
}

+ (BOOL)IORegistryNameExists:(id)a3 optionalKey:(id)a4 passingValidator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = IOServiceNameMatching([a3 UTF8String]);
  v12 = [DAComponentUtil getIOService:v11 optionalKey:v10 optionalClassValidator:v9];

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

+ (unsigned)getIOService:(__CFDictionary *)a3 optionalKey:(id)a4 optionalClassValidator:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (!a3)
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000228C();
    }

    goto LABEL_12;
  }

  CFRetain(a3);
  if (v7)
  {
    keys = CFStringCreateWithCString(0, [v7 UTF8String], 0x8000100u);
    v9 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(a3, @"IONameMatch", v9);
    CFRelease(v9);
    CFRelease(keys);
  }

  existing = 0;
  if (IOServiceGetMatchingServices(kIOMainPortDefault, a3, &existing))
  {
LABEL_12:
    LODWORD(v10) = 0;
    goto LABEL_13;
  }

  if (v8)
  {
    do
    {
      v10 = IOIteratorNext(existing);
    }

    while (v10 && !v8[2](v8, v10));
  }

  else
  {
    LODWORD(v10) = IOIteratorNext(existing);
  }

LABEL_13:

  return v10;
}

+ (id)getMatchingDict:(__CFDictionary *)a3 property:(id)a4 optionalKey:(id)a5 optionalClassValidator:(id)a6
{
  v9 = a4;
  v10 = [DAComponentUtil getIOService:a3 optionalKey:a5 optionalClassValidator:a6];
  if (v10)
  {
    v11 = v10;
    CFProperty = IORegistryEntryCreateCFProperty(v10, v9, kCFAllocatorDefault, 0);
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

+ (id)getIOServicePropertiesWithMatchingDictionary:(id)a3
{
  v3 = a3;
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
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