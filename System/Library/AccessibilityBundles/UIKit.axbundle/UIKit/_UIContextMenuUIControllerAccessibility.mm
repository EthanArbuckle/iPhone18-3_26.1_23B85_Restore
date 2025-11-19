@interface _UIContextMenuUIControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)platterContainerView;
- (uint64_t)_axPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_createMenuViewIfNecessaryForMenu:(id)a3;
- (void)contextMenuView:(id)a3 didSelectElement:(id)a4;
- (void)dismissalTransitionDidEnd;
- (void)presentationTransitionDidEnd;
@end

@implementation _UIContextMenuUIControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = @"_UIContextMenuUIController";
  v4 = @"platterContainerView";
  v5 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v7 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"presentationTransitionDidEnd" withFullSignature:0];
  v3 = @"delegate";
  [location[0] validateClass:v6 hasProperty:? withType:?];
  [location[0] validateClass:@"_UIContextMenuPresentation" hasProperty:v3 withType:v5];
  [location[0] validateClass:@"UIContextMenuInteraction" hasProperty:v3 withType:v5];
  [location[0] validateClass:v6 hasInstanceMethod:@"dismissalTransitionDidEnd" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"_createMenuViewIfNecessaryForMenu:" withFullSignature:{v7, v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"menuConfiguration" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIFulfilledContextMenuConfiguration" hasInstanceMethod:@"menu" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:v4 withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"menuView" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIContextMenuView" hasInstanceMethod:@"currentListView" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"contextMenuView:didSelectElement:" withFullSignature:{v7, v5, v5, 0}];
  [location[0] validateClass:@"UIMenuElement" hasInstanceMethod:@"_isLeaf" withFullSignature:{"B", 0}];
  objc_storeStrong(v9, v8);
}

- (uint64_t)_axPerformEscape
{
  v3 = a1;
  if (a1)
  {
    v2 = MEMORY[0x29EDC9748](v3);
    AXPerformSafeBlock();
    v4 = 1;
    objc_storeStrong(&v2, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)platterContainerView
{
  v14 = self;
  v13[1] = a2;
  v12.receiver = self;
  v12.super_class = _UIContextMenuUIControllerAccessibility;
  v13[0] = [(_UIContextMenuUIControllerAccessibility *)&v12 platterContainerView];
  [v13[0] setAccessibilityViewIsModal:1];
  objc_initWeak(&location, v14);
  v4 = v13[0];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __63___UIContextMenuUIControllerAccessibility_platterContainerView__block_invoke;
  v9 = &unk_29F30C7F0;
  objc_copyWeak(&v10, &location);
  [v4 _setAccessibilityPerformEscapeBlock:&v5];
  v3 = MEMORY[0x29EDC9748](v13[0]);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  objc_storeStrong(v13, 0);

  return v3;
}

- (void)presentationTransitionDidEnd
{
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = _UIContextMenuUIControllerAccessibility;
  [(_UIContextMenuUIControllerAccessibility *)&v9 presentationTransitionDidEnd];
  v2 = [(_UIContextMenuUIControllerAccessibility *)v11 safeValueForKey:@"platterContainerView"];
  [*MEMORY[0x29EDC8008] _accessibilitySetContainerToStopVisibilityCheck:?];
  MEMORY[0x29EDC9740](v2);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __71___UIContextMenuUIControllerAccessibility_presentationTransitionDidEnd__block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v11);
  AXPerformBlockOnMainThreadAfterDelay();
  MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC7F10]);
  objc_storeStrong(&v8, 0);
}

- (void)dismissalTransitionDidEnd
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIContextMenuUIControllerAccessibility;
  [(_UIContextMenuUIControllerAccessibility *)&v2 dismissalTransitionDidEnd];
  [*MEMORY[0x29EDC8008] _accessibilitySetContainerToStopVisibilityCheck:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v32[1] = *MEMORY[0x29EDCA608];
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = _UIContextMenuUIControllerAccessibility;
  [(_UIContextMenuUIControllerAccessibility *)&v29 _accessibilityLoadAccessibilityInformation];
  v11 = [(_UIContextMenuUIControllerAccessibility *)v31 safeValueForKey:@"menuConfiguration"];
  v28 = [v11 safeValueForKey:@"menu"];
  *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  v27 = [(_UIContextMenuUIControllerAccessibility *)v31 safeValueForKey:@"platterContainerView", v2];
  if (v27)
  {
    v10 = [v28 accessibilityIdentifier];
    [v27 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v10);
    v26 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v27];
    objc_initWeak(&location, v27);
    v9 = v26;
    v19 = MEMORY[0x29EDCA5F8];
    v20 = -1073741824;
    v21 = 0;
    v22 = __85___UIContextMenuUIControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v23 = &unk_29F30CAE8;
    objc_copyWeak(&v24, &location);
    [v9 _setAccessibilityFrameBlock:&v19];
    [v26 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v8 = accessibilityLocalizedString(@"context.menu.dismiss");
    [v26 setAccessibilityLabel:?];
    *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    [v26 _accessibilitySetAdditionalElementOrderedLast:{1, v3}];
    v7 = v27;
    v32[0] = v26;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v32 count:1];
    [v7 _accessibilitySetAdditionalElements:?];
    *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    [v26 _accessibilitySetSortPriority:{-1, v4}];
    objc_initWeak(&from, v31);
    v5 = v26;
    v12 = MEMORY[0x29EDCA5F8];
    v13 = -1073741824;
    v14 = 0;
    v15 = __85___UIContextMenuUIControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v16 = &unk_29F30C7F0;
    objc_copyWeak(&v17, &from);
    [v5 _setAccessibilityActivateBlock:&v12];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
}

- (void)_createMenuViewIfNecessaryForMenu:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIContextMenuUIControllerAccessibility;
  [(_UIContextMenuUIControllerAccessibility *)&v3 _createMenuViewIfNecessaryForMenu:location[0]];
  [(_UIContextMenuUIControllerAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

- (void)contextMenuView:(id)a3 didSelectElement:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = _UIContextMenuUIControllerAccessibility;
  [(_UIContextMenuUIControllerAccessibility *)&v5 contextMenuView:location[0] didSelectElement:v6];
  if (([v6 safeBoolForKey:@"_isLeaf"] & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], location[0]);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end