@interface BLSHWarningTimer
- (void)timerFired;
@end

@implementation BLSHWarningTimer

- (void)timerFired
{
  v3 = [(BLSHAssertionAttributeTimer *)self service];
  v4 = [(BLSHAssertionAttributeTimer *)self assertion];
  [v3 willCancelAssertion:v4];

  [(BLSHAssertionAttributeTimer *)self invalidate];
}

@end