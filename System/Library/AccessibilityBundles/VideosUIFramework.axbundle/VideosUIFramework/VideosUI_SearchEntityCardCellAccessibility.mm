@interface VideosUI_SearchEntityCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation VideosUI_SearchEntityCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.SearchEntityCardCell" hasProperty:@"accessibilityTitleLabel" withType:"@"];
  [validationsCopy validateClass:@"VideosUI.SearchEntityCardCell" hasProperty:@"accessibilitySubitleLabel" withType:"@"];
  [validationsCopy validateClass:@"VideosUI.SearchEntityCardCell" hasProperty:@"accessibilityCaptionLabel" withType:"@"];
}

@end