@interface AXAssistiveTouchSoundActionsController
- (BOOL)supportsIconType:(id)type;
- (id)actionsBySoundAction;
- (void)updateSoundActionsWithDictionary:(id)dictionary;
@end

@implementation AXAssistiveTouchSoundActionsController

- (id)actionsBySoundAction
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchActionsBySoundAction = [v2 assistiveTouchActionsBySoundAction];

  return assistiveTouchActionsBySoundAction;
}

- (void)updateSoundActionsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[AXSettings sharedInstance];
  [v4 setAssistiveTouchActionsBySoundAction:dictionaryCopy];
}

- (BOOL)supportsIconType:(id)type
{
  typeCopy = type;
  if (supportsIconType__onceToken != -1)
  {
    [AXAssistiveTouchSoundActionsController supportsIconType:];
  }

  if ([typeCopy isEqualToString:@"__NONE__"])
  {
    v4 = 1;
  }

  else
  {
    v5 = AXSystemActionIconTypes();
    if ([v5 containsObject:typeCopy])
    {
      v4 = 1;
    }

    else
    {
      v6 = AXAssistiveTouchCustomGesturesIcons();
      if ([v6 containsObject:typeCopy])
      {
        v4 = 1;
      }

      else
      {
        v7 = AXAssistiveTouchScrollIcons();
        if ([v7 containsObject:typeCopy])
        {
          v4 = 1;
        }

        else
        {
          v8 = AXAssistiveTouchDwellIcons();
          if ([v8 containsObject:typeCopy])
          {
            v4 = 1;
          }

          else
          {
            v4 = [supportsIconType__sOtherSupportedIconTypes containsObject:typeCopy];
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