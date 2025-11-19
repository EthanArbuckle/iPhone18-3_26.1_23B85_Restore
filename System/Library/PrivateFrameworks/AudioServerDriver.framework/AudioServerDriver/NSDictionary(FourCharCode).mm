@interface NSDictionary(FourCharCode)
- (uint64_t)fourCharCode:()FourCharCode forKey:;
@end

@implementation NSDictionary(FourCharCode)

- (uint64_t)fourCharCode:()FourCharCode forKey:
{
  v5 = [a1 objectForKeyedSubscript:a4];
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v6 unsignedIntegerValue];
      v7 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
        if ([v8 length] == 4)
        {
          v7 = [v8 getCString:&v10 maxLength:5 encoding:1];
          if (v7)
          {
            *a3 = bswap32(v10);
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end