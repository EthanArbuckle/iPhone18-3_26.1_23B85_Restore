@interface VideosUI_InlinePlaybackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VideosUI_InlinePlaybackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.InlinePlaybackView" hasSwiftField:@"playbackView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.InlinePlaybackView" hasSwiftField:@"imageView" withSwiftType:"Optional<UIView>"];
}

- (id)accessibilityLabel
{
  v3 = [(VideosUI_InlinePlaybackViewAccessibility *)self safeSwiftValueForKey:@"playbackView"];
  v4 = [v3 accessibilityLabel];
  v5 = [(VideosUI_InlinePlaybackViewAccessibility *)self safeSwiftValueForKey:@"imageView"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end