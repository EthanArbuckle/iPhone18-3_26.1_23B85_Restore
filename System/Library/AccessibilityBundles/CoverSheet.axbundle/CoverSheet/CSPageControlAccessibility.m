@interface CSPageControlAccessibility
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation CSPageControlAccessibility

- (void)accessibilityIncrement
{
  if ([(CSPageControlAccessibility *)self _accessibilityIsRTL])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(CSPageControlAccessibility *)self _accessibilityScrollPageInDirection:v3 shouldSendScrollFailed:0];
}

- (void)accessibilityDecrement
{
  if ([(CSPageControlAccessibility *)self _accessibilityIsRTL])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(CSPageControlAccessibility *)self _accessibilityScrollPageInDirection:v3 shouldSendScrollFailed:0];
}

@end