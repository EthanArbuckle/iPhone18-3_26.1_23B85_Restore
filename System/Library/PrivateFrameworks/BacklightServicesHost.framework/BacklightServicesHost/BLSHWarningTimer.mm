@interface BLSHWarningTimer
- (void)timerFired;
@end

@implementation BLSHWarningTimer

- (void)timerFired
{
  service = [(BLSHAssertionAttributeTimer *)self service];
  assertion = [(BLSHAssertionAttributeTimer *)self assertion];
  [service willCancelAssertion:assertion];

  [(BLSHAssertionAttributeTimer *)self invalidate];
}

@end