@interface ComponentButtonBase
- (ComponentButtonBase)init;
- (NSArray)buttonsDetected;
- (id)parseStringToArray:(char *)array length:(unint64_t)length;
@end

@implementation ComponentButtonBase

- (ComponentButtonBase)init
{
  v7.receiver = self;
  v7.super_class = ComponentButtonBase;
  v2 = [(ComponentButtonBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    buttonsDetected = [(ComponentButtonBase *)v2 buttonsDetected];
    buttonsDetected = v3->_buttonsDetected;
    v3->_buttonsDetected = buttonsDetected;
  }

  return v3;
}

- (id)parseStringToArray:(char *)array length:(unint64_t)length
{
  v6 = objc_alloc_init(NSMutableArray);
  if (length)
  {
    v7 = array + 1;
    do
    {
      if (!*(v7 - 1))
      {
        v8 = [NSString stringWithUTF8String:array];
        [v6 addObject:v8];

        array = v7;
      }

      ++v7;
      --length;
    }

    while (length);
  }

  return v6;
}

- (NSArray)buttonsDetected
{
  v10 = 0;
  if (FindDevicesWithProp("IOService:name", "buttons", entry, 30, &v10))
  {
LABEL_2:
    v3 = 0;
    goto LABEL_13;
  }

  if (!v10)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(properties) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: IOService:buttons is not found in IORegistry", &properties, 2u);
    }

    goto LABEL_2;
  }

  properties = 0;
  if (IORegistryEntryCreateCFProperties(entry[0], &properties, 0, 0))
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error: IORegistryEntryCreateCFProperties failed", v8, 2u);
    }

    v3 = 0;
  }

  else
  {
    v6 = properties;
    v4 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"button-names"];
    v3 = [(ComponentButtonBase *)self parseStringToArray:[v4 bytes] length:[v4 length]];
    CFRelease(properties);
  }

LABEL_13:

  return v3;
}

@end