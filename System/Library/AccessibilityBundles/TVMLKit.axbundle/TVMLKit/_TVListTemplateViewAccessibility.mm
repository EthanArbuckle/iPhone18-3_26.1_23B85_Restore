@interface _TVListTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setBannerView:(id)view;
- (void)setListView:(id)view;
- (void)setPreviewView:(id)view;
@end

@implementation _TVListTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVListTemplateView" hasInstanceMethod:@"setBannerView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_TVListTemplateView" hasInstanceMethod:@"setListView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_TVListTemplateView" hasInstanceMethod:@"setPreviewView:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v44 = *MEMORY[0x29EDCA608];
  v41.receiver = self;
  v41.super_class = _TVListTemplateViewAccessibility;
  [(_TVListTemplateViewAccessibility *)&v41 _accessibilityLoadAccessibilityInformation];
  v3 = NSClassFromString(&cfstr_Tvlabel_0.isa);
  NSClassFromString(&cfstr_Tvcollectionwr_0.isa);
  NSClassFromString(&cfstr_Tvlistview.isa);
  selfCopy = self;
  v4 = [(_TVListTemplateViewAccessibility *)self safeValueForKey:@"bannerView"];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __78___TVListTemplateViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v36[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
  v36[4] = v3;
  v30 = v4;
  v5 = [v4 _accessibilityFindSubviewDescendantsPassingTest:v36];
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = *MEMORY[0x29EDC7F80];
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v37 + 1) + 8 * v10) setAccessibilityTraits:{v9 | objc_msgSend(*(*(&v37 + 1) + 8 * v10), "accessibilityTraits")}];
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v7);
  }

  v11 = selfCopy;
  v12 = [(_TVListTemplateViewAccessibility *)selfCopy safeValueForKey:@"listView"];
  if (objc_opt_isKindOfClass())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v12;
    subviews = [v12 subviews];
    v14 = [subviews countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        v17 = 0;
        do
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(subviews);
          }

          v18 = *(*(&v32 + 1) + 8 * v17);
          if (objc_opt_isKindOfClass())
          {
            [v18 setAccessibilityContainerType:4];
            v19 = UIKitAccessibilityLocalizedString();
            accessibilityLabel = [v18 accessibilityLabel];
            if (([accessibilityLabel containsString:v19] & 1) == 0)
            {
              v21 = __UIAXStringForVariables();
              [v18 setAccessibilityLabel:{v21, accessibilityLabel, @"__AXStringForVariablesSentinel"}];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [subviews countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v15);
    }

    v11 = selfCopy;
    v12 = v29;
  }

  v22 = [(_TVListTemplateViewAccessibility *)v11 safeValueForKey:@"previewView"];
  if (v22)
  {
    defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [defaultVoiceOverOptions setLeafNodePredicate:&__block_literal_global_5];
    v24 = [v22 _accessibilityLeafDescendantsWithCount:1 options:defaultVoiceOverOptions];
    firstObject = [v24 firstObject];

    if (!firstObject)
    {
      [defaultVoiceOverOptions setLeafNodePredicate:&__block_literal_global_327];
      v26 = [v22 _accessibilityLeafDescendantsWithCount:1 options:defaultVoiceOverOptions];
      firstObject2 = [v26 firstObject];

      [firstObject2 _accessibilitySetUserDefinedIsGuideElement:1];
    }
  }

  v28 = *MEMORY[0x29EDCA608];
}

- (void)setBannerView:(id)view
{
  v4.receiver = self;
  v4.super_class = _TVListTemplateViewAccessibility;
  [(_TVListTemplateViewAccessibility *)&v4 setBannerView:view];
  [(_TVListTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setListView:(id)view
{
  v4.receiver = self;
  v4.super_class = _TVListTemplateViewAccessibility;
  [(_TVListTemplateViewAccessibility *)&v4 setListView:view];
  [(_TVListTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setPreviewView:(id)view
{
  v4.receiver = self;
  v4.super_class = _TVListTemplateViewAccessibility;
  [(_TVListTemplateViewAccessibility *)&v4 setPreviewView:view];
  [(_TVListTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end