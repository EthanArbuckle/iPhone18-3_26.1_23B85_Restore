@interface SBIconDragContextAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)currentEnteredIconListViewDragDistance;
- (void)setRecipientIconView:(id)a3;
@end

@implementation SBIconDragContextAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"recipientIconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"setRecipientIconView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isFolderIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isWidgetIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isWidgetStackIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"currentEnteredIconListViewDragDistance" withFullSignature:{"d", 0}];
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

  v3 = [MEMORY[0x29EDBDFA8] server];
  v4 = [v3 isVoiceControlRunning];

  if (v4)
  {
    return 1.79769313e308;
  }

  v6.receiver = self;
  v6.super_class = SBIconDragContextAccessibility;
  [(SBIconDragContextAccessibility *)&v6 currentEnteredIconListViewDragDistance];
  return result;
}

- (void)setRecipientIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBIconDragContextAccessibility *)self safeValueForKey:@"recipientIconView"];
  v27.receiver = self;
  v27.super_class = SBIconDragContextAccessibility;
  [(SBIconDragContextAccessibility *)&v27 setRecipientIconView:v4];
  if ((SBAXIconCreatingFolder & 1) == 0 && (SBAXPerformingAXDrag & 1) == 0)
  {
    v6 = AXSBIconControllerSharedInstance();
    v7 = [v6 _axDragManager];
    v8 = [v7 _axIsIconDragging];

    if (v8)
    {
      if (v5 != v4)
      {
        if (v4 || !v5)
        {
          if (!v4)
          {
            goto LABEL_23;
          }

          v18 = [v4 safeValueForKey:@"icon"];
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
            v25 = [v4 accessibilityLabel];
            v19 = [v22 stringWithFormat:v24, v25];
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

          v15 = [v5 accessibilityLabel];
          v16 = [v13 stringWithFormat:v14, v15];

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
  if (v4)
  {
    SBHAXCancelSBAXIconMoveSpeakTimer();
  }
}

@end