@interface SiriSharedUICompactServerUtteranceViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriSharedUICompactServerUtteranceViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SiriSharedUICompactServerUtteranceViewAccessibility *)self safeArrayForKey:@"_serverLabels"];
  v3 = MEMORY[0x29ED35E80]();

  return v3;
}

@end