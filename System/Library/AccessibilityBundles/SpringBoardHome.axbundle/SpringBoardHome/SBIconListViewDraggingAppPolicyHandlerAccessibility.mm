@interface SBIconListViewDraggingAppPolicyHandlerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (Class)_accessibilityIconViewclass;
- (id)_accessibilityFindIconIntersectingDraggedIconForDropSession:(id)session;
- (id)_axCurrentIconListView;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)handleSpringLoadOnIconView:(id)view;
@end

@implementation SBIconListViewDraggingAppPolicyHandlerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconListViewDraggingAppPolicyHandler" hasInstanceMethod:@"draggingDestinationDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListViewDraggingDestinationDelegate" hasInstanceMethod:@"iconListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListViewDraggingAppPolicyHandler" hasInstanceMethod:@"handleSpringLoadOnIconView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBIconListViewDraggingDestinationDelegate" hasInstanceMethod:@"targetItemForSpringLoadingInteractionInView:atLocation:forDropSession:" withFullSignature:{"@", "@", "{CGPoint=dd}", "@", 0}];
  [validationsCopy validateClass:@"SBIconListViewDraggingAppPolicyHandler" hasInstanceMethod:@"dropInteraction:sessionDidEnd:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"SBIconListViewDraggingAppPolicyHandler" hasInstanceMethod:@"dropInteraction:performDrop:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView"];
  [validationsCopy validateClass:@"SBIconView" hasClassMethod:@"defaultIconImageSize" withFullSignature:{"{CGSize=dd}", 0}];
}

- (void)handleSpringLoadOnIconView:(id)view
{
  viewCopy = view;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [SBAXIconFolderOpeningTimer invalidate];
    objc_initWeak(&location, viewCopy);
    v5 = MEMORY[0x29EDB8E68];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __82__SBIconListViewDraggingAppPolicyHandlerAccessibility_handleSpringLoadOnIconView___block_invoke;
    v9[3] = &unk_29F300688;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:3.0];
    v7 = SBAXIconFolderOpeningTimer;
    SBAXIconFolderOpeningTimer = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBIconListViewDraggingAppPolicyHandlerAccessibility;
    [(SBIconListViewDraggingAppPolicyHandlerAccessibility *)&v8 handleSpringLoadOnIconView:viewCopy];
  }
}

void __82__SBIconListViewDraggingAppPolicyHandlerAccessibility_handleSpringLoadOnIconView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3.receiver = *(a1 + 32);
    v3.super_class = SBIconListViewDraggingAppPolicyHandlerAccessibility;
    objc_msgSendSuper2(&v3, sel_handleSpringLoadOnIconView_, WeakRetained);
  }
}

- (id)_axCurrentIconListView
{
  v2 = [(SBIconListViewDraggingAppPolicyHandlerAccessibility *)self safeValueForKey:@"draggingDestinationDelegate"];
  v3 = [v2 safeUIViewForKey:@"iconListView"];

  return v3;
}

- (id)_accessibilityFindIconIntersectingDraggedIconForDropSession:(id)session
{
  sessionCopy = session;
  v5 = [(SBIconListViewDraggingAppPolicyHandlerAccessibility *)self safeValueForKey:@"draggingDestinationDelegate"];
  _axCurrentIconListView = [(SBIconListViewDraggingAppPolicyHandlerAccessibility *)self _axCurrentIconListView];
  [sessionCopy locationInView:_axCurrentIconListView];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v10 = MEMORY[0x29EDCA5F8];
  v11 = v5;
  v12 = _axCurrentIconListView;
  v13 = sessionCopy;
  AXPerformSafeBlock();
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);
  v8 = [v7 safeValueForKey:{@"icon", v10, 3221225472, __115__SBIconListViewDraggingAppPolicyHandlerAccessibility__accessibilityFindIconIntersectingDraggedIconForDropSession___block_invoke, &unk_29F3006B0}];

  return v8;
}

uint64_t __115__SBIconListViewDraggingAppPolicyHandlerAccessibility__accessibilityFindIconIntersectingDraggedIconForDropSession___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) targetItemForSpringLoadingInteractionInView:*(a1 + 40) atLocation:*(a1 + 48) forDropSession:{*(a1 + 64), *(a1 + 72)}];

  return MEMORY[0x2A1C71028]();
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  v4.receiver = self;
  v4.super_class = SBIconListViewDraggingAppPolicyHandlerAccessibility;
  [(SBIconListViewDraggingAppPolicyHandlerAccessibility *)&v4 dropInteraction:interaction sessionDidEnd:end];
  SBAXPerformingAXDrag = 0;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v4.receiver = self;
  v4.super_class = SBIconListViewDraggingAppPolicyHandlerAccessibility;
  [(SBIconListViewDraggingAppPolicyHandlerAccessibility *)&v4 dropInteraction:interaction performDrop:drop];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (Class)_accessibilityIconViewclass
{
  if (_accessibilityIconViewclass_onceToken != -1)
  {
    [SBIconListViewDraggingAppPolicyHandlerAccessibility _accessibilityIconViewclass];
  }

  v3 = _accessibilityIconViewclass_sSBIconViewClass;

  return v3;
}

Class __82__SBIconListViewDraggingAppPolicyHandlerAccessibility__accessibilityIconViewclass__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbiconview.isa);
  _accessibilityIconViewclass_sSBIconViewClass = result;
  return result;
}

@end