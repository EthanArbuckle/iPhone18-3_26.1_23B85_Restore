@interface BatteryUtils
+ (id)batteryInfoWithError:(id *)a3;
+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5;
@end

@implementation BatteryUtils

+ (id)batteryInfoWithError:(id *)a3
{
  os_unfair_lock_lock(&unk_1002D85C0);
  v4 = qword_1002D85C8;
  os_unfair_lock_unlock(&unk_1002D85C0);
  if (v4)
  {
    v5 = v4;
  }

  else if (IOPSCopyPowerSourcesByTypePrecise())
  {
    [BatteryUtils setError:a3 code:0 message:@"Failed to retrieve power sources"];
    v5 = 0;
  }

  else
  {
    v6 = IOPSCopyPowerSourcesList(0);
    if (v6 && [(__CFArray *)v6 count])
    {
      v7 = [(__CFArray *)v6 objectAtIndexedSubscript:0];
      v8 = IOPSGetPowerSourceDescription(v6, v7);

      if (v8)
      {
        v9 = [NSString stringWithUTF8String:"Date of manufacture"];
        v10 = [v8 objectForKey:v9];

        if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v11 = [NSString stringWithUTF8String:"Date of first use"];
          v12 = [v8 objectForKey:v11];

          if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v13 = [[BatteryInfo alloc] initWithManufactureDate:v10 andFirstUseDate:v12];
            os_unfair_lock_lock(&unk_1002D85C0);
            objc_storeStrong(&qword_1002D85C8, v13);
            os_unfair_lock_unlock(&unk_1002D85C0);
            v5 = v13;
          }

          else
          {
            [BatteryUtils setError:a3 code:0 message:@"Failed to retrieve battery date of first use"];
            v5 = 0;
          }
        }

        else
        {
          [BatteryUtils setError:a3 code:0 message:@"Failed to retrieve battery date of manufacture"];
          v5 = 0;
        }
      }

      else
      {
        [BatteryUtils setError:a3 code:0 message:@"Failed to retrieve power source description"];
        v5 = 0;
      }
    }

    else
    {
      [BatteryUtils setError:a3 code:0 message:@"Failed to retrieve power sources list"];
      v5 = 0;
    }
  }

  return v5;
}

+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5
{
  v7 = a5;
  v9 = NSLocalizedDescriptionKey;
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  *a3 = [NSError errorWithDomain:@"WISBatteryUtils" code:a4 userInfo:v8];
}

@end