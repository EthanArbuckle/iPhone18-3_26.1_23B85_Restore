@interface NSString
+ (id)deviceSpecificString:(id)a3;
@end

@implementation NSString

+ (id)deviceSpecificString:(id)a3
{
  v3 = a3;
  v4 = MGGetSInt32Answer();
  v5 = MGGetSInt32Answer();
  if (v4 > 8)
  {
    if ((v4 - 9) < 2)
    {
      v6 = @"-414w-736h";
      goto LABEL_25;
    }

    if (v4 == 11)
    {
      v6 = @"-pro";
      goto LABEL_25;
    }

    if (v4 == 15)
    {
      v6 = @"-D22";
      goto LABEL_25;
    }
  }

  else
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        v6 = @"-163r";
      }

      else if (v4 == 7)
      {
        v6 = @"-mini";
      }

      else
      {
        v6 = @"-375w-667h";
      }

      goto LABEL_25;
    }

    if (v4 == 4)
    {
      if (MGGetBoolAnswer())
      {
        v6 = @"-air";
      }

      else
      {
        v6 = @"-ipad";
      }

      goto LABEL_25;
    }

    if (v4 == 5)
    {
      v6 = @"-568h";
      goto LABEL_25;
    }
  }

  v7 = &stru_4E3F0;
  if (v5 == 1)
  {
    v7 = @"-iphone";
  }

  if (v5 == 3)
  {
    v6 = @"-ipad";
  }

  else
  {
    v6 = v7;
  }

LABEL_25:
  v8 = [v3 stringByAppendingString:v6];

  return v8;
}

@end