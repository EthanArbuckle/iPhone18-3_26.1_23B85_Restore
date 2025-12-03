@interface VideosUI_SportsFavoritesSplitTemplateControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHeaderElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosUI_SportsFavoritesSplitTemplateControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.ErrorContentView"];
  [validationsCopy validateClass:@"VideosUI.ErrorContentView" hasSwiftField:@"titleView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.ErrorContentView" hasSwiftField:@"descriptionView" withSwiftType:"Optional<UIView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = VideosUI_SportsFavoritesSplitTemplateControllerAccessibility;
  [(VideosUI_SportsFavoritesSplitTemplateControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityHeaderElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  v4 = [view _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"VideosUI.ErrorContentView")];

  v5 = MEMORY[0x29EDB8D80];
  v6 = [v4 safeSwiftValueForKey:@"titleView"];
  v7 = [v4 safeSwiftValueForKey:@"descriptionView"];
  v8 = [v5 axArrayByIgnoringNilElementsWithCount:{2, v6, v7}];

  return v8;
}

@end