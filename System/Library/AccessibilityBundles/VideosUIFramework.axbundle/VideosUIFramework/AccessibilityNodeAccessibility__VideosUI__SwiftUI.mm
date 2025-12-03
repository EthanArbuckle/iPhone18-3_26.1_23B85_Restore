@interface AccessibilityNodeAccessibility__VideosUI__SwiftUI
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)_axEpisodeViewController;
- (id)accessibilityAttributedLabel;
- (id)accessibilityCustomContent;
- (int64_t)_axSeasonIndexForCurrentEpisodeInViewController:(id)controller;
- (unint64_t)accessibilityTraits;
- (void)_axTriggerSeasonUpdateForFocusedEpisodeInViewController:(id)controller;
- (void)accessibilityElementDidBecomeFocused;
@end

@implementation AccessibilityNodeAccessibility__VideosUI__SwiftUI

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SwiftUI.AccessibilityNode" hasSwiftField:@"viewRendererHost" withSwiftType:"Optional<ViewRendererHost>"];
  [validationsCopy validateClass:@"SwiftUI.AccessibilityNode" hasSwiftField:@"children" withSwiftType:"Array<AccessibilityNode>"];
  [validationsCopy validateClass:@"VideosUI.SportsFavoritesTemplateController"];
  [validationsCopy validateClass:@"_TtGC8VideosUI23PlatformHostingCellViewVS_12UpNextLockup_"];
  [validationsCopy validateClass:@"_TtGC8VideosUI23PlatformHostingCellViewVS_20StandardExtrasLockup_"];
  [validationsCopy validateClass:@"VideosUI.EpisodeCollectionViewController"];
  [validationsCopy validateClass:@"VideosUI.EpisodeCollectionViewController" hasSwiftField:@"viewModel" withSwiftType:"EpisodeCollectionViewModel"];
  [validationsCopy validateClass:@"EpisodeCollectionViewModel" hasSwiftField:@"seasonTitles" withSwiftType:"Array<String>"];
  [validationsCopy validateClass:@"EpisodeCollectionViewModel" hasSwiftField:@"seasonTitleToEpStartIndex" withSwiftType:"NSDictionary *"];
  [validationsCopy validateClass:@"VideosUI.EpisodeSectionHeaderView"];
  [validationsCopy validateClass:@"VideosUI.EpisodeContainerView" hasSwiftField:@"headerView" withSwiftType:"Optional<PlatformView>"];
}

- (id)accessibilityAttributedLabel
{
  v20.receiver = self;
  v20.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  accessibilityAttributedLabel = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v20 accessibilityAttributedLabel];
  v4 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self safeSwiftValueForKey:@"viewRendererHost"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v6 axContainsString:@"AVInfoTabView"];

  if (v7)
  {
    v8 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self safeSwiftArrayForKey:@"children"];
    v9 = [v8 ax_mappedArrayUsingBlock:&__block_literal_global_7];
    v10 = AXLabelForElements();

    if ([v10 length])
    {
      v11 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v10];

      accessibilityAttributedLabel = v11;
    }
  }

  if (accessibilityAttributedLabel)
  {
    preferredLanguages = [MEMORY[0x29EDB8DE0] preferredLanguages];
    firstObject = [preferredLanguages firstObject];
    v14 = [firstObject hasPrefix:@"en"];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:accessibilityAttributedLabel];
      [v15 setAttribute:&unk_2A23AB150 forKey:*MEMORY[0x29EDBD7E0]];
      attributedString = [v15 attributedString];
LABEL_10:
      v18 = attributedString;

      goto LABEL_12;
    }

    string = [accessibilityAttributedLabel string];
    v15 = accessibilityMLBScores(string);

    if (v15)
    {
      attributedString = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v15];
      goto LABEL_10;
    }
  }

  v18 = accessibilityAttributedLabel;
LABEL_12:

  return v18;
}

- (unint64_t)accessibilityTraits
{
  v15.receiver = self;
  v15.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  accessibilityTraits = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v15 accessibilityTraits];
  v4 = *MEMORY[0x29EDC7F70];
  if ((*MEMORY[0x29EDC7F70] & accessibilityTraits) != 0)
  {
    v5 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self safeSwiftValueForKey:@"viewRendererHost"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 axContainsString:@"RichHeaderContainerView"];

    if (v8)
    {
      v9 = MEMORY[0x29ED3FF70](@"VideosUI.SportsFavoritesTemplateController");
      v10 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self safeSwiftValueForKey:@"viewRendererHost"];
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = __72__AccessibilityNodeAccessibility__VideosUI__SwiftUI_accessibilityTraits__block_invoke;
      v14[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
      v14[4] = v9;
      v11 = [v10 _accessibilityFindViewAncestor:v14 startWithSelf:0];

      v12 = -1;
      if (v11)
      {
        v12 = ~v4;
      }

      accessibilityTraits &= v12;
    }
  }

  return accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  v11.receiver = self;
  v11.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  accessibilityLabel = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v11 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    goto LABEL_4;
  }

  v10.receiver = self;
  v10.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  accessibilityAttributedLabel = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v10 accessibilityAttributedLabel];
  if ([accessibilityAttributedLabel length])
  {

LABEL_4:
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  accessibilityTraits = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v9 accessibilityTraits];
  v7 = *MEMORY[0x29EDC7FA0];

  if (accessibilityTraits == v7)
  {
    return 0;
  }

LABEL_5:
  v8.receiver = self;
  v8.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  return [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v8 isAccessibilityElement];
}

- (BOOL)accessibilityActivate
{
  v22[2] = *MEMORY[0x29EDCA608];
  _accessibilityParentView = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _accessibilityParentView];
  v22[0] = MEMORY[0x29ED3FF70](@"_TtGC8VideosUI23PlatformHostingCellViewVS_12UpNextLockup_");
  v22[1] = MEMORY[0x29ED3FF70](@"_TtGC8VideosUI23PlatformHostingCellViewVS_20StandardExtrasLockup_");
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v22 count:2];
  if (!_accessibilityParentView)
  {
    goto LABEL_6;
  }

  superview = [_accessibilityParentView superview];
  v6 = [v4 containsObject:objc_opt_class()];

  if (!v6)
  {
    goto LABEL_6;
  }

  [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self accessibilityFrame];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MidY = CGRectGetMidY(v24);
  window = [_accessibilityParentView window];
  [window convertPoint:0 fromWindow:{MidX, MidY}];
  [window convertPoint:_accessibilityParentView toView:?];
  v14 = AXUIMakeTouchForTouchesBeganAtLocation();
  if (!v14)
  {

LABEL_6:
    v21.receiver = self;
    v21.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
    accessibilityActivate = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v21 accessibilityActivate];
    goto LABEL_7;
  }

  v15 = v14;
  v16 = [MEMORY[0x29EDB8E50] setWithObject:v14];
  [_accessibilityParentView touchesBegan:v16 withEvent:0];

  v17 = [MEMORY[0x29EDB8E50] setWithObject:v15];
  [_accessibilityParentView touchesEnded:v17 withEvent:0];

  accessibilityActivate = 1;
LABEL_7:

  v19 = *MEMORY[0x29EDCA608];
  return accessibilityActivate;
}

- (void)accessibilityElementDidBecomeFocused
{
  v4.receiver = self;
  v4.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v4 accessibilityElementDidBecomeFocused];
  _axEpisodeViewController = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _axEpisodeViewController];
  if (_axEpisodeViewController)
  {
    [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _axTriggerSeasonUpdateForFocusedEpisodeInViewController:_axEpisodeViewController];
  }
}

- (id)_axEpisodeViewController
{
  if (_axEpisodeViewController_onceToken_targetClass != -1)
  {
    [AccessibilityNodeAccessibility__VideosUI__SwiftUI _axEpisodeViewController];
  }

  return [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _accessibilityFindViewControllerAncestor:&__block_literal_global_374];
}

- (int64_t)_axSeasonIndexForCurrentEpisodeInViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _accessibilityFindAncestor:&__block_literal_global_377 startWithSelf:0];
  v6 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _accessibilityFindAncestor:&__block_literal_global_380 startWithSelf:0];
  v7 = v6;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 && v6)
  {
    v9 = [v5 indexPathForCell:v6];
    if (v9)
    {
      v10 = [controllerCopy safeSwiftValueForKey:@"viewModel"];
      v11 = [v10 safeSwiftArrayForKey:@"seasonTitles"];
      v12 = [v10 safeSwiftValueForKey:@"seasonTitleToEpStartIndex"];
      if (v11 && [v11 count] >= 2 && v12)
      {
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 3221225472;
        v14[2] = __101__AccessibilityNodeAccessibility__VideosUI__SwiftUI__axSeasonIndexForCurrentEpisodeInViewController___block_invoke_3;
        v14[3] = &unk_29F31C300;
        v15 = v12;
        v16 = v9;
        v17 = &v18;
        [v11 enumerateObjectsWithOptions:2 usingBlock:v14];
        v8 = v19[3];

        _Block_object_dispose(&v18, 8);
      }
    }
  }

  return v8;
}

- (void)_axTriggerSeasonUpdateForFocusedEpisodeInViewController:(id)controller
{
  controllerCopy = controller;
  if ([(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _axSeasonIndexForCurrentEpisodeInViewController:controllerCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    view = [controllerCopy view];
    v6 = [view safeSwiftValueForKey:@"headerView"];

    if (v6)
    {
      MEMORY[0x29ED3FF70](@"VideosUI.EpisodeSectionHeaderView");
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        AXPerformSafeBlock();
      }
    }
  }
}

- (id)accessibilityCustomContent
{
  v3 = objc_opt_new();
  v15.receiver = self;
  v15.super_class = AccessibilityNodeAccessibility__VideosUI__SwiftUI;
  accessibilityCustomContent = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)&v15 accessibilityCustomContent];
  [v3 axSafelyAddObjectsFromArray:accessibilityCustomContent];

  _axEpisodeViewController = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _axEpisodeViewController];
  if (_axEpisodeViewController)
  {
    v6 = [(AccessibilityNodeAccessibility__VideosUI__SwiftUI *)self _axSeasonIndexForCurrentEpisodeInViewController:_axEpisodeViewController];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      v8 = objc_alloc_init(MEMORY[0x29EDBA078]);
      [v8 setNumberStyle:6];
      v9 = [MEMORY[0x29EDBA070] numberWithInteger:v7 + 1];
      v10 = [v8 stringFromNumber:v9];

      if (v10)
      {
        v11 = MEMORY[0x29EDB8058];
        v12 = accessibilityLocalizedString(@"tv.show.season");
        v13 = [v11 customContentWithLabel:v12 value:v10];

        [v3 axSafelyAddObject:v13];
      }
    }
  }

  return v3;
}

@end