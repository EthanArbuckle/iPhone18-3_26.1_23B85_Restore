@interface WISSystemStatusSimulacrum
+ (id)WISSSDataConnectionTypeToString:(unint64_t)a3;
+ (unint64_t)deriveConnectionTypeForDataStatus:(id)a3;
+ (unint64_t)deriveWISSSDataConnectionTypeForIndicator:(int)a3 andRadioTechnology:(int)a4;
@end

@implementation WISSystemStatusSimulacrum

+ (unint64_t)deriveWISSSDataConnectionTypeForIndicator:(int)a3 andRadioTechnology:(int)a4
{
  if (a3 > 12)
  {
    if (a3 > 15)
    {
      switch(a3)
      {
        case 16:
          return 12;
        case 17:
          return 13;
        case 18:
          return 14;
      }

      return 0;
    }

    if (a3 == 13)
    {
      return 10;
    }

    else if (a3 == 14)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    if (a3 > 3)
    {
      if ((a3 - 4) < 2)
      {
        return 5;
      }

      if (a3 == 7)
      {
        return 7;
      }

      if (a3 == 8)
      {
        return 11;
      }

      return 0;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 3;
      }

      if (a3 == 3)
      {
        return 4;
      }

      return 0;
    }

    if ((a4 - 3) < 3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

+ (unint64_t)deriveConnectionTypeForDataStatus:(id)a3
{
  v3 = a3;
  v4 = +[WISSystemStatusSimulacrum deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:](WISSystemStatusSimulacrum, "deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:", [v3 indicator], objc_msgSend(v3, "radioTechnology"));
  v5 = +[WISSystemStatusSimulacrum deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:](WISSystemStatusSimulacrum, "deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:", [v3 indicatorOverride], objc_msgSend(v3, "radioTechnology"));
  if (![WISSystemStatusSimulacrum WISSSDataConnectionTypeIs5G:v5])
  {
    if (v4 == 7)
    {
      if (![WISSystemStatusSimulacrum WISSSDataConnectionTypeIsLTE:v5])
      {
        v5 = 7;
      }
    }

    else
    {
      v5 = v4;
      if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        if ([v3 indicatorOverride] == 7)
        {
          v5 = 6;
        }

        else
        {
          v5 = v4;
        }
      }
    }
  }

  return v5;
}

+ (id)WISSSDataConnectionTypeToString:(unint64_t)a3
{
  if (a3 > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_1002AF0D0[a3];
  }
}

@end