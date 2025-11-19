@interface VideosUI_SearchEntityCardCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation VideosUI_SearchEntityCardCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.SearchEntityCardCell" hasProperty:@"accessibilityTitleLabel" withType:"@"];
  [v3 validateClass:@"VideosUI.SearchEntityCardCell" hasProperty:@"accessibilitySubitleLabel" withType:"@"];
  [v3 validateClass:@"VideosUI.SearchEntityCardCell" hasProperty:@"accessibilityCaptionLabel" withType:"@"];
}

@end