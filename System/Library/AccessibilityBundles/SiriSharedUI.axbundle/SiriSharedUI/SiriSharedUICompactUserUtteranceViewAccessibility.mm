@interface SiriSharedUICompactUserUtteranceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SiriSharedUICompactUserUtteranceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriSharedUICompactUserUtteranceView" hasInstanceMethod:@"_streamingTextView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUICStreamingTextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriSharedUICompactUserUtteranceView" hasInstanceMethod:@"_setStreamingText:carousel:showEditImage:" withFullSignature:{"v", "@", "B", "B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SiriSharedUICompactUserUtteranceViewAccessibility *)self safeValueForKey:@"_streamingTextView"];
  v3 = [v2 safeValueForKey:@"text"];

  return v3;
}

@end