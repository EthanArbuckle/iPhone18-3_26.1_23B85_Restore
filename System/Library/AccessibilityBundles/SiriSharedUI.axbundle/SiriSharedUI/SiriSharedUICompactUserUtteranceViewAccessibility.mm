@interface SiriSharedUICompactUserUtteranceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SiriSharedUICompactUserUtteranceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriSharedUICompactUserUtteranceView" hasInstanceMethod:@"_streamingTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUICStreamingTextView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriSharedUICompactUserUtteranceView" hasInstanceMethod:@"_setStreamingText:carousel:showEditImage:" withFullSignature:{"v", "@", "B", "B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SiriSharedUICompactUserUtteranceViewAccessibility *)self safeValueForKey:@"_streamingTextView"];
  v3 = [v2 safeValueForKey:@"text"];

  return v3;
}

@end