@interface AXAssistiveTouchSoundActionsController
- (BOOL)supportsIconType:(id)a3;
- (id)actionsBySoundAction;
- (void)updateSoundActionsWithDictionary:(id)a3;
@end

@implementation AXAssistiveTouchSoundActionsController

- (id)actionsBySoundAction
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchActionsBySoundAction];

  return v3;
}

- (void)updateSoundActionsWithDictionary:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchActionsBySoundAction:v3];
}

- (BOOL)supportsIconType:(id)a3
{
  v3 = a3;
  if (supportsIconType__onceToken != -1)
  {
    [AXAssistiveTouchSoundActionsController supportsIconType:];
  }

  if ([v3 isEqualToString:@"__NONE__"])
  {
    v4 = 1;
  }

  else
  {
    v5 = AXSystemActionIconTypes();
    if ([v5 containsObject:v3])
    {
      v4 = 1;
    }

    else
    {
      v6 = AXAssistiveTouchCustomGesturesIcons();
      if ([v6 containsObject:v3])
      {
        v4 = 1;
      }

      else
      {
        v7 = AXAssistiveTouchScrollIcons();
        if ([v7 containsObject:v3])
        {
          v4 = 1;
        }

        else
        {
          v8 = AXAssistiveTouchDwellIcons();
          if ([v8 containsObject:v3])
          {
            v4 = 1;
          }

          else
          {
            v4 = [supportsIconType__sOtherSupportedIconTypes containsObject:v3];
          }
        }
      }
    }
  }

  return v4;
}

void __59__AXAssistiveTouchSoundActionsController_supportsIconType___block_invoke(id a1)
{
  v3[0] = AXAssistiveTouchIconTypePinch;
  v3[1] = AXAssistiveTouchIconTypeRotate;
  v3[2] = AXAssistiveTouchIconTypePinchAndRotate;
  v3[3] = AXAssistiveTouchIconTypeForceTap;
  v3[4] = AXAssistiveTouchIconTypeTap;
  v3[5] = AXAssistiveTouchIconTypeDoubleTap;
  v3[6] = AXAssistiveTouchIconTypeLongPress;
  v1 = [NSArray arrayWithObjects:v3 count:7];
  v2 = supportsIconType__sOtherSupportedIconTypes;
  supportsIconType__sOtherSupportedIconTypes = v1;
}

@end