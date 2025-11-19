@interface MultiTouchHelper
- (id)celsiusTemperatureFromService:(__IOHIDServiceClient *)a3;
- (id)parseHIDLocationID:(int)a3;
- (id)temperatureData;
@end

@implementation MultiTouchHelper

- (id)temperatureData
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = IOHIDEventSystemClientCreate();
  if (v4)
  {
    v5 = v4;
    v18[0] = @"PrimaryUsagePage";
    v18[1] = @"PrimaryUsage";
    v19[0] = &off_100008740;
    v19[1] = &off_100008758;
    v6 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    IOHIDEventSystemClientSetMatching();
    v7 = IOHIDEventSystemClientCopyServices(v5);
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
          v11 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"LocationID");
          if (v11)
          {
            v12 = v11;
            valuePtr = 0;
            Value = CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
            CFRelease(v12);
            if (Value)
            {
              if (valuePtr != -1)
              {
                v14 = [(MultiTouchHelper *)self parseHIDLocationID:?];
                v15 = [(MultiTouchHelper *)self celsiusTemperatureFromService:ValueAtIndex];
                [v3 setObject:v15 forKeyedSubscript:v14];
              }
            }
          }

          ++v9;
        }

        while (CFArrayGetCount(v8) > v9);
      }

      CFRelease(v8);
    }

    CFRelease(v5);
  }

  return v3;
}

- (id)parseHIDLocationID:(int)a3
{
  if ((a3 >> 24) > 0x7F || (_DefaultRuneLocale.__runetype[a3 >> 24] & 0x200) != 0)
  {
    [NSString stringWithFormat:@"%3ld ", a3, v5, v6, v7];
  }

  else
  {
    [NSString stringWithFormat:@"%c%c%c%c", (a3 >> 24), BYTE2(a3), BYTE1(a3), a3];
  }
  v3 = ;

  return v3;
}

- (id)celsiusTemperatureFromService:(__IOHIDServiceClient *)a3
{
  v3 = IOHIDServiceClientCopyEvent();
  if (v3)
  {
    v4 = v3;
    IOHIDEventGetFloatValue();
    v6 = v5;
    CFRelease(v4);
    [NSNumber numberWithDouble:v6];
  }

  else
  {
    +[NSNull null];
  }
  v7 = ;

  return v7;
}

@end