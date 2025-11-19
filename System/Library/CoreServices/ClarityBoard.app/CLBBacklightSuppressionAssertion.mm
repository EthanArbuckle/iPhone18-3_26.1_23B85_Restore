@interface CLBBacklightSuppressionAssertion
- (CLBBacklightSuppressionAssertion)initWithReason:(int64_t)a3;
- (void)invalidate;
@end

@implementation CLBBacklightSuppressionAssertion

- (CLBBacklightSuppressionAssertion)initWithReason:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CLBBacklightSuppressionAssertion;
  v4 = [(CLBBacklightSuppressionAssertion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_reason = a3;
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