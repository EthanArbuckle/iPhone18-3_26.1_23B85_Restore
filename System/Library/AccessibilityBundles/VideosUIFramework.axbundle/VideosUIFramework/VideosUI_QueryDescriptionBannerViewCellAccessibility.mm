@interface VideosUI_QueryDescriptionBannerViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VideosUI_QueryDescriptionBannerViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.QueryDescriptionBannerViewCell" hasSwiftField:@"textView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.QueryDescriptionBannerViewCell" hasSwiftField:@"additionalInfoView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VideosUI_QueryDescriptionBannerViewCellAccessibility *)self safeSwiftValueForKey:@"textView"];
  v5 = [v4 accessibilityLabel];
  [v3 axSafelyAddObject:v5];

  v16 = 0;
  objc_opt_class();
  v6 = [(VideosUI_QueryDescriptionBannerViewCellAccessibility *)self safeSwiftValueForKey:@"additionalInfoView"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 subviews];

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __74__VideosUI_QueryDescriptionBannerViewCellAccessibility_accessibilityLabel__block_invoke;
  v14[3] = &unk_29F31C4F8;
  v9 = v3;
  v15 = v9;
  [v8 enumerateObjectsUsingBlock:v14];
  if ([v9 count])
  {
    v10 = AXLabelForElements();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VideosUI_QueryDescriptionBannerViewCellAccessibility;
    v10 = [(VideosUI_QueryDescriptionBannerViewCellAccessibility *)&v13 accessibilityLabel];
  }

  v11 = v10;

  return v11;
}

@end