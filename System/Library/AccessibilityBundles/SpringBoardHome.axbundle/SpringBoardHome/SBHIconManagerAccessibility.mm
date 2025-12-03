@interface SBHIconManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axSetCurrentFolderScrollEnabled:(BOOL)enabled;
- (void)closeFolderAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)pushExpandedIcon:(id)icon location:(id)location context:(id)context animated:(BOOL)animated completionHandler:(id)handler;
- (void)setEditing:(BOOL)editing withFeedbackBehavior:(id)behavior location:(CGPoint)location;
- (void)setMainDisplayLibraryViewVisible:(BOOL)visible;
@end

@implementation SBHIconManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"openedFolder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"iconDragManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"setMainDisplayLibraryViewVisible:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"pushExpandedIcon:location:context:animated:completionHandler:" withFullSignature:{"v", "@", "@", "@", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"setEditing:withFeedbackBehavior:location:" withFullSignature:{"v", "B", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"closeFolderAnimated:withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBIconDragManager"];
  [validationsCopy validateClass:@"SBIconDragManager" hasInstanceMethod:@"cancelAllDrags" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBFolder" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (void)pushExpandedIcon:(id)icon location:(id)location context:(id)context animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  iconCopy = icon;
  contextCopy = context;
  locationCopy = location;
  v15 = [handler copy];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __92__SBHIconManagerAccessibility_pushExpandedIcon_location_context_animated_completionHandler___block_invoke;
  v20[3] = &unk_29F3003C8;
  v23 = animatedCopy;
  v20[4] = self;
  v21 = iconCopy;
  v22 = v15;
  v16 = v15;
  v17 = iconCopy;
  v18 = MEMORY[0x29ED38BB0](v20);
  v19.receiver = self;
  v19.super_class = SBHIconManagerAccessibility;
  [(SBHIconManagerAccessibility *)&v19 pushExpandedIcon:v17 location:locationCopy context:contextCopy animated:animatedCopy completionHandler:v18];
}

uint64_t __92__SBHIconManagerAccessibility_pushExpandedIcon_location_context_animated_completionHandler___block_invoke(uint64_t a1)
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v2 = *(a1 + 32);
    v3 = AXSBIconControllerSharedInstance();
    v4 = [v3 _axIconScrollView];
    [v2 _axSetCurrentFolderScrollEnabled:{objc_msgSend(v4, "isScrollEnabled")}];
  }

  v5 = [*(a1 + 32) safeBoolForKey:@"hasOpenFolder"];
  if (*(a1 + 56) == 1 && v5 != 0)
  {
    NSClassFromString(&cfstr_Sbfoldericon.isa);
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
      v8 = [MEMORY[0x29EDBA070] numberWithInt:1];
      v9 = [v7 initWithObjectsAndKeys:{v8, *MEMORY[0x29EDBD860], *MEMORY[0x29EDB8F00], *MEMORY[0x29EDBD8E8], 0}];

      v10 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"opening.folder");
      v13 = [*(a1 + 40) safeValueForKey:@"displayName"];
      v14 = [v11 stringWithFormat:v12, v13];
      v15 = [v10 initWithString:v14 attributes:v9];

      LODWORD(v14) = *MEMORY[0x29EDC7EA8];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v15);
      SBAXIconOpenedFolderWhileJiggling = 1;
      UIAccessibilityPostNotification(v14, *MEMORY[0x29EDBDA70]);
    }
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  result = *(a1 + 48);
  if (result)
  {
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

- (void)setEditing:(BOOL)editing withFeedbackBehavior:(id)behavior location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  editingCopy = editing;
  behaviorCopy = behavior;
  v10 = [(SBHIconManagerAccessibility *)self safeBoolForKey:@"isEditing"];
  v16.receiver = self;
  v16.super_class = SBHIconManagerAccessibility;
  [(SBHIconManagerAccessibility *)&v16 setEditing:editingCopy withFeedbackBehavior:behaviorCopy location:x, y];

  if (v10 != [(SBHIconManagerAccessibility *)self safeBoolForKey:@"isEditing"])
  {
    if (v10)
    {
      SBHAXCancelSBAXIconMoveSpeakTimer();
      v11 = *MEMORY[0x29EDC7EA8];
      v12 = accessibilityLocalizedString(@"homescreen.editing.ended");
      UIAccessibilityPostNotification(v11, v12);

      if (!AXDeviceIsPad())
      {
LABEL_7:
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
        goto LABEL_8;
      }

      v15 = [(SBHIconManagerAccessibility *)self safeValueForKey:@"iconDragManager"];
      v13 = v15;
      AXPerformSafeBlock();
    }

    else
    {
      v14 = *MEMORY[0x29EDC7EA8];
      v13 = accessibilityLocalizedString(@"homescreen.editing.started");
      UIAccessibilityPostNotification(v14, v13);
    }

    goto LABEL_7;
  }

LABEL_8:
  SBAXIconOpenedFolderWhileJiggling = 0;
}

- (void)closeFolderAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(SBHIconManagerAccessibility *)self _axSetCurrentFolderScrollEnabled:1];
  v7 = [(SBHIconManagerAccessibility *)self safeValueForKey:@"openedFolder"];
  v8 = [v7 safeValueForKey:@"displayName"];
  v9 = [completionCopy copy];

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __66__SBHIconManagerAccessibility_closeFolderAnimated_withCompletion___block_invoke;
  v14[3] = &unk_29F3003F0;
  v15 = v8;
  v16 = v9;
  v17 = v7 != 0;
  v18 = animatedCopy;
  v14[4] = self;
  v10 = v8;
  v11 = v9;
  v12 = MEMORY[0x29ED38BB0](v14);
  v13.receiver = self;
  v13.super_class = SBHIconManagerAccessibility;
  [(SBHIconManagerAccessibility *)&v13 closeFolderAnimated:animatedCopy withCompletion:v12];
}

void __66__SBHIconManagerAccessibility_closeFolderAnimated_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) safeBoolForKey:@"hasOpenFolder"];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (!(v4 & 1 | ((*(a1 + 56) & 1) == 0)) && *(a1 + 57) == 1)
  {
    v6 = *MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA68]);
    v7 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
    v8 = [MEMORY[0x29EDBA070] numberWithInt:1];
    v9 = [v7 initWithObjectsAndKeys:{v8, *MEMORY[0x29EDBD860], *MEMORY[0x29EDB8F00], *MEMORY[0x29EDBD8E8], 0}];

    v10 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"closing.folder");
    v13 = [v11 stringWithFormat:v12, *(a1 + 40)];
    v14 = [v10 initWithString:v13 attributes:v9];

    UIAccessibilityPostNotification(v6, v14);
  }

  v15 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v15, 0);
}

- (void)setMainDisplayLibraryViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  v9.receiver = self;
  v9.super_class = SBHIconManagerAccessibility;
  [(SBHIconManagerAccessibility *)&v9 setMainDisplayLibraryViewVisible:?];
  if (visibleCopy)
  {
    v4 = AXSBIconControllerSharedInstance();
    _axDragManager = [v4 _axDragManager];
    _axGrabbedIcons = [_axDragManager _axGrabbedIcons];
    v7 = [_axGrabbedIcons count];

    if (v7)
    {
      if ((SBAXPerformingAXDrag & 1) == 0)
      {
        v8 = accessibilityLocalizedString(@"icon.finished.scroll.for.app.library");
        UIAccessibilitySpeakAndDoNotBeInterrupted();
      }
    }
  }
}

- (void)_axSetCurrentFolderScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  objc_opt_class();
  v5 = [(SBHIconManagerAccessibility *)self safeValueForKey:@"_currentFolderController"];
  v6 = __UIAccessibilityCastAsClass();

  view = [v6 view];
  v8 = [view _accessibilityDescendantOfType:objc_opt_class()];

  [v8 setScrollEnabled:enabledCopy];
}

@end