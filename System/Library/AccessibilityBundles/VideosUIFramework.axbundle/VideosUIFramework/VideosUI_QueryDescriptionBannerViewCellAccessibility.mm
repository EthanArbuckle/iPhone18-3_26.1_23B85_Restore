@interface VideosUI_QueryDescriptionBannerViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VideosUI_QueryDescriptionBannerViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.QueryDescriptionBannerViewCell" hasSwiftField:@"textView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.QueryDescriptionBannerViewCell" hasSwiftField:@"additionalInfoView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VideosUI_QueryDescriptionBannerViewCellAccessibility *)self safeSwiftValueForKey:@"textView"];
  accessibilityLabel = [v4 accessibilityLabel];
  [array axSafelyAddObject:accessibilityLabel];

  v16 = 0;
  objc_opt_class();
  v6 = [(VideosUI_QueryDescriptionBannerViewCellAccessibility *)self safeSwiftValueForKey:@"additionalInfoView"];
  v7 = __UIAccessibilityCastAsClass();

  subviews = [v7 subviews];

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __74__VideosUI_QueryDescriptionBannerViewCellAccessibility_accessibilityLabel__block_invoke;
  v14[3] = &unk_29F31C4F8;
  v9 = array;
  v15 = v9;
  [subviews enumerateObjectsUsingBlock:v14];
  if ([v9 count])
  {
    accessibilityLabel2 = AXLabelForElements();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VideosUI_QueryDescriptionBannerViewCellAccessibility;
    accessibilityLabel2 = [(VideosUI_QueryDescriptionBannerViewCellAccessibility *)&v13 accessibilityLabel];
  }

  v11 = accessibilityLabel2;

  return v11;
}

@end