@interface THWConstants
+ (id)modeStringForMode:(int)a3;
@end

@implementation THWConstants

+ (id)modeStringForMode:(int)a3
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return kTHWidgetModeGutterString;
    }

    else if (a3 == 3)
    {
      return kTHWidgetModeFullScreenString;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return kTHWidgetModeFixedString;
    }
  }

  else
  {
    return kTHWidgetModeUninitializedString;
  }

  return result;
}

@end