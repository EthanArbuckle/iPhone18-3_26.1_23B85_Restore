@interface ComponentProximitySensor
- (BOOL)isPresent;
- (id)supplyCurrent;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentProximitySensor

- (BOOL)isPresent
{
  if (findDeviceWithName("prox"))
  {
    return 1;
  }

  v3 = +[DAProximityManager sharedInstance];
  sensorRegion = [v3 sensorRegion];
  allKeys = [sensorRegion allKeys];
  v2 = [allKeys count] != 0;

  return v2;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  supplyCurrent = [(ComponentProximitySensor *)self supplyCurrent];
  if (supplyCurrent)
  {
    [attributesCopy setObject:supplyCurrent forKeyedSubscript:@"supplyCurrentReading"];
  }
}

- (id)supplyCurrent
{
  v2 = IOHIDEventSystemClientCreateWithType();
  if (v2)
  {
    v3 = v2;
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientScheduleWithRunLoop();
    v20 = 8;
    valuePtr = 65280;
    v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v20);
    *keys = *off_100090BE8;
    values[0] = v4;
    values[1] = v5;
    v6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, v6);
    IOHIDEventSystemClientSetMatchingMultiple();
    v8 = IOHIDEventSystemClientCopyServices(v3);
    v9 = v8;
    if (v8 && CFArrayGetCount(v8) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      v11 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"SupplyCurrentReading");
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v17 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Couldn't retrieve property from HID service...", v19, 2u);
        }
      }

      CFRelease(v3);
    }

    else
    {
      v14 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Couldn't find prox service\n", v19, 2u);
      }

      CFRelease(v3);
      v12 = 0;
      v15 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    CFRelease(v9);
    v15 = v12;
LABEL_18:
    CFRelease(Mutable);
    CFRelease(v6);
    CFRelease(v5);
    CFRelease(v4);
    goto LABEL_19;
  }

  v16 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(keys[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't open hid system", keys, 2u);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

@end