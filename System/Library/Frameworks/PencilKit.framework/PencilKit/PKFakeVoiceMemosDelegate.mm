@interface PKFakeVoiceMemosDelegate
- (PKFakeVoiceMemosDelegate)initWithView:(id)view;
- (UIEdgeInsets)_scribbleInteraction:(id)interaction hitToleranceInsetsForElement:(id)element defaultInsets:(UIEdgeInsets)result;
@end

@implementation PKFakeVoiceMemosDelegate

- (PKFakeVoiceMemosDelegate)initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = PKFakeVoiceMemosDelegate;
  v6 = [(PKFakeVoiceMemosDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (UIEdgeInsets)_scribbleInteraction:(id)interaction hitToleranceInsetsForElement:(id)element defaultInsets:(UIEdgeInsets)result
{
  v5 = -200.0;
  v6 = -200.0;
  result.right = v6;
  result.left = v5;
  return result;
}

@end