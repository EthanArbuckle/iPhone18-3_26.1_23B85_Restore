@interface PKFakeVoiceMemosDelegate
- (PKFakeVoiceMemosDelegate)initWithView:(id)a3;
- (UIEdgeInsets)_scribbleInteraction:(id)a3 hitToleranceInsetsForElement:(id)a4 defaultInsets:(UIEdgeInsets)result;
@end

@implementation PKFakeVoiceMemosDelegate

- (PKFakeVoiceMemosDelegate)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKFakeVoiceMemosDelegate;
  v6 = [(PKFakeVoiceMemosDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (UIEdgeInsets)_scribbleInteraction:(id)a3 hitToleranceInsetsForElement:(id)a4 defaultInsets:(UIEdgeInsets)result
{
  v5 = -200.0;
  v6 = -200.0;
  result.right = v6;
  result.left = v5;
  return result;
}

@end