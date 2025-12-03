@interface THWConstants
+ (id)modeStringForMode:(int)mode;
@end

@implementation THWConstants

+ (id)modeStringForMode:(int)mode
{
  result = 0;
  if (mode > 1)
  {
    if (mode == 2)
    {
      return kTHWidgetModeGutterString;
    }

    else if (mode == 3)
    {
      return kTHWidgetModeFullScreenString;
    }
  }

  else if (mode)
  {
    if (mode == 1)
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