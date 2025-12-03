@interface CLBBacklightSuppressionAssertion
- (CLBBacklightSuppressionAssertion)initWithReason:(int64_t)reason;
- (void)invalidate;
@end

@implementation CLBBacklightSuppressionAssertion

- (CLBBacklightSuppressionAssertion)initWithReason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = CLBBacklightSuppressionAssertion;
  v4 = [(CLBBacklightSuppressionAssertion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_reason = reason;
    v6 = +[CLBBacklightController sharedInstance];
    [v6 _addSuppressionAssertion:v5];
  }

  return v5;
}

- (void)invalidate
{
  v3 = +[CLBBacklightController sharedInstance];
  [v3 _removeSuppressionAssertion:self];
}

@end