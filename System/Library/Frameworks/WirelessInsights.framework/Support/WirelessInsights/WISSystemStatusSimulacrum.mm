@interface WISSystemStatusSimulacrum
+ (id)WISSSDataConnectionTypeToString:(unint64_t)string;
+ (unint64_t)deriveConnectionTypeForDataStatus:(id)status;
+ (unint64_t)deriveWISSSDataConnectionTypeForIndicator:(int)indicator andRadioTechnology:(int)technology;
@end

@implementation WISSystemStatusSimulacrum

+ (unint64_t)deriveWISSSDataConnectionTypeForIndicator:(int)indicator andRadioTechnology:(int)technology
{
  if (indicator > 12)
  {
    if (indicator > 15)
    {
      switch(indicator)
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

    if (indicator == 13)
    {
      return 10;
    }

    else if (indicator == 14)
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
    if (indicator > 3)
    {
      if ((indicator - 4) < 2)
      {
        return 5;
      }

      if (indicator == 7)
      {
        return 7;
      }

      if (indicator == 8)
      {
        return 11;
      }

      return 0;
    }

    if (indicator != 1)
    {
      if (indicator == 2)
      {
        return 3;
      }

      if (indicator == 3)
      {
        return 4;
      }

      return 0;
    }

    if ((technology - 3) < 3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

+ (unint64_t)deriveConnectionTypeForDataStatus:(id)status
{
  statusCopy = status;
  v4 = +[WISSystemStatusSimulacrum deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:](WISSystemStatusSimulacrum, "deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:", [statusCopy indicator], objc_msgSend(statusCopy, "radioTechnology"));
  v5 = +[WISSystemStatusSimulacrum deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:](WISSystemStatusSimulacrum, "deriveWISSSDataConnectionTypeForIndicator:andRadioTechnology:", [statusCopy indicatorOverride], objc_msgSend(statusCopy, "radioTechnology"));
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
        if ([statusCopy indicatorOverride] == 7)
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

+ (id)WISSSDataConnectionTypeToString:(unint64_t)string
{
  if (string > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_1002AF0D0[string];
  }
}

@end