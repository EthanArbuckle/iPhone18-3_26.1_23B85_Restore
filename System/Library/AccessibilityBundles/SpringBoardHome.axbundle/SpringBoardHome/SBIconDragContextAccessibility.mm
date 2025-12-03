@interface SBIconDragContextAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)currentEnteredIconListViewDragDistance;
- (void)setRecipientIconView:(id)view;
@end

@implementation SBIconDragContextAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconDragContext" hasInstanceMethod:@"recipientIconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconDragContext" hasInstanceMethod:@"setRecipientIconView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isFolderIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isWidgetIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isWidgetStackIcon" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconDragContext" hasInstanceMethod:@"currentEnteredIconListViewDragDistance" withFullSignature:{"d", 0}];
}

- (double)currentEnteredIconListViewDragDistance
{
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return 1.79769313e308;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1.79769313e308;
  }

  server = [MEMORY[0x29EDBDFA8] server];
  isVoiceControlRunning = [server isVoiceControlRunning];

  if (isVoiceControlRunning)
  {
    return 1.79769313e308;
  }

  v6.receiver = self;
  v6.super_class = SBIconDragContextAccessibility;
  [(SBIconDragContextAccessibility *)&v6 currentEnteredIconListViewDragDistance];
  return result;
}

- (void)setRecipientIconView:(id)view
{
  viewCopy = view;
  v5 = [(SBIconDragContextAccessibility *)self safeValueForKey:@"recipientIconView"];
  v27.receiver = self;
  v27.super_class = SBIconDragContextAccessibility;
  [(SBIconDragContextAccessibility *)&v27 setRecipientIconView:viewCopy];
  if ((SBAXIconCreatingFolder & 1) == 0 && (SBAXPerformingAXDrag & 1) == 0)
  {
    v6 = AXSBIconControllerSharedInstance();
    _axDragManager = [v6 _axDragManager];
    _axIsIconDragging = [_axDragManager _axIsIconDragging];

    if (_axIsIconDragging)
    {
      if (v5 != viewCopy)
      {
        if (viewCopy || !v5)
        {
          if (!viewCopy)
          {
            goto LABEL_23;
          }

          v18 = [viewCopy safeValueForKey:@"icon"];
          if ([v18 safeBoolForKey:@"isWidgetStackIcon"])
          {
            v19 = accessibilityLocalizedString(@"will.add.to.stack");
          }

          else
          {
            if ([v18 safeBoolForKey:@"isWidgetIcon"])
            {
              v22 = MEMORY[0x29EDBA0F8];
              v23 = @"will.create.stack";
            }

            else
            {
              if ([v18 safeBoolForKey:@"isFolderIcon"])
              {
                v23 = @"will.open.folder";
              }

              else
              {
                v23 = @"will.create.folder";
              }

              v22 = MEMORY[0x29EDBA0F8];
            }

            v24 = accessibilityLocalizedString(v23);
            accessibilityLabel = [viewCopy accessibilityLabel];
            v19 = [v22 stringWithFormat:v24, accessibilityLabel];
          }

          v21 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v19];
          [v21 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
        }

        else
        {
          [SBAXIconFolderOpeningTimer invalidate];
          v9 = [v5 safeValueForKey:@"icon"];
          v10 = [v9 safeBoolForKey:@"isFolderIcon"];
          v11 = @"dragged.off.app";
          if (v10)
          {
            v11 = @"dragged.off.folder";
          }

          v12 = v11;

          v13 = MEMORY[0x29EDBA0F8];
          v14 = accessibilityLocalizedString(v12);

          accessibilityLabel2 = [v5 accessibilityLabel];
          v16 = [v13 stringWithFormat:v14, accessibilityLabel2];

          v17 = MEMORY[0x29EDBA0F8];
          v18 = accessibilityLocalizedString(@"finished.moving.app");
          v19 = MEMORY[0x29ED38790](SBAXIconMovedY);
          v20 = MEMORY[0x29ED38790](SBAXIconMovedX);
          v26 = [v17 stringWithFormat:v18, v19, v20];
          v21 = __UIAXStringForVariables();
        }

        if (v21)
        {
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v21);
        }
      }
    }
  }

LABEL_23:
  if (viewCopy)
  {
    SBHAXCancelSBAXIconMoveSpeakTimer();
  }
}

@end