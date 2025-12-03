@interface RCTextField
- (BOOL)canBecomeFocused;
- (RCTextField)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_scribbleInteraction:(id)interaction hitToleranceInsetsForElement:(id)element defaultInsets:(UIEdgeInsets)result;
@end

@implementation RCTextField

- (RCTextField)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RCTextField;
  v3 = [(RCTextField *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKScribbleInteraction);
    scribbleInteraction = v3->_scribbleInteraction;
    v3->_scribbleInteraction = v4;

    [(PKScribbleInteraction *)v3->_scribbleInteraction setDelegate:v3];
    [(RCTextField *)v3 addInteraction:v3->_scribbleInteraction];
  }

  return v3;
}

- (BOOL)canBecomeFocused
{
  if (self->_focusDisabled)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = RCTextField;
  return [(RCTextField *)&v5 canBecomeFocused];
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