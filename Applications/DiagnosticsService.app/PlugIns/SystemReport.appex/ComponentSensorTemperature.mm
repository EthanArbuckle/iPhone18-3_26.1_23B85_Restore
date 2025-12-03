@interface ComponentSensorTemperature
- (BOOL)isPresent;
- (BOOL)systemClientSetup;
- (__IOHIDEventSystemClient)HIDEventSystem;
- (id)celsiusTemperatureFromService:(__IOHIDServiceClient *)service;
- (id)parseHIDLocationID:(int)d;
- (id)temperatureData;
- (void)populateAttributes:(id)attributes;
- (void)systemClientRelease;
@end

@implementation ComponentSensorTemperature

- (BOOL)isPresent
{
  if (![(ComponentSensorTemperature *)self systemClientSetup])
  {
    return 0;
  }

  v3 = IOHIDEventSystemClientCopyServices([(ComponentSensorTemperature *)self HIDEventSystem]);
  v4 = v3 != 0;
  if (v3)
  {
    CFRelease(v3);
  }

  [(ComponentSensorTemperature *)self systemClientRelease];
  return v4;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  temperatureData = [(ComponentSensorTemperature *)self temperatureData];
  [attributesCopy addEntriesFromDictionary:temperatureData];
}

- (__IOHIDEventSystemClient)HIDEventSystem
{
  result = self->_HIDEventSystem;
  if (!result)
  {
    result = IOHIDEventSystemClientCreate();
    self->_HIDEventSystem = result;
    if (!result)
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[ERROR] - Could not create HID event system.", v5, 2u);
      }

      return self->_HIDEventSystem;
    }
  }

  return result;
}

- (BOOL)systemClientSetup
{
  hIDEventSystem = [(ComponentSensorTemperature *)self HIDEventSystem];
  if (hIDEventSystem)
  {
    v6[0] = @"PrimaryUsagePage";
    v6[1] = @"PrimaryUsage";
    v7[0] = &off_1000C8DE0;
    v7[1] = &off_1000C8DF8;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    [(ComponentSensorTemperature *)self HIDEventSystem];
    IOHIDEventSystemClientSetMatching();
  }

  return hIDEventSystem != 0;
}

- (void)systemClientRelease
{
  if ([(ComponentSensorTemperature *)self HIDEventSystem])
  {
    CFRelease([(ComponentSensorTemperature *)self HIDEventSystem]);

    [(ComponentSensorTemperature *)self setHIDEventSystem:0];
  }
}

- (id)parseHIDLocationID:(int)d
{
  if ((d >> 24) > 0x7F || (_DefaultRuneLocale.__runetype[d >> 24] & 0x200) != 0)
  {
    [NSString stringWithFormat:@"%3ld ", d, v5, v6, v7];
  }

  else
  {
    [NSString stringWithFormat:@"%c%c%c%c", (d >> 24), BYTE2(d), BYTE1(d), d];
  }
  v3 = ;

  return v3;
}

- (id)celsiusTemperatureFromService:(__IOHIDServiceClient *)service
{
  v3 = IOHIDServiceClientCopyEvent();
  if (v3)
  {
    v4 = v3;
    IOHIDEventGetFloatValue();
    v6 = v5;
    CFRelease(v4);
    v3 = [NSNumber numberWithDouble:v6];
  }

  return v3;
}

- (id)temperatureData
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(ComponentSensorTemperature *)self systemClientSetup])
  {
    v4 = IOHIDEventSystemClientCopyServices([(ComponentSensorTemperature *)self HIDEventSystem]);
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4) >= 1)
      {
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
          v8 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"LocationID");
          if (v8)
          {
            v9 = v8;
            valuePtr = 0;
            Value = CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
            CFRelease(v9);
            if (Value)
            {
              if (valuePtr != -1)
              {
                v11 = [(ComponentSensorTemperature *)self parseHIDLocationID:?];
                v12 = [(ComponentSensorTemperature *)self celsiusTemperatureFromService:ValueAtIndex];
                if (v12)
                {
                  [v3 setObject:v12 forKeyedSubscript:v11];
                }
              }
            }
          }

          ++v6;
        }

        while (CFArrayGetCount(v5) > v6);
      }

      CFRelease(v5);
    }

    [(ComponentSensorTemperature *)self systemClientRelease];
  }

  return v3;
}

@end