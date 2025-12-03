@interface VideosUI_InlinePlaybackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VideosUI_InlinePlaybackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.InlinePlaybackView" hasSwiftField:@"playbackView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.InlinePlaybackView" hasSwiftField:@"imageView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityLabel
{
  v3 = [(VideosUI_InlinePlaybackViewAccessibility *)self safeSwiftValueForKey:@"playbackView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(VideosUI_InlinePlaybackViewAccessibility *)self safeSwiftValueForKey:@"imageView"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end