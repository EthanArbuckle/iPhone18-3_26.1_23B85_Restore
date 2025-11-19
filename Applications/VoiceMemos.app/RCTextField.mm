@interface RCTextField
- (BOOL)canBecomeFocused;
- (RCTextField)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_scribbleInteraction:(id)a3 hitToleranceInsetsForElement:(id)a4 defaultInsets:(UIEdgeInsets)result;
@end

@implementation RCTextField

- (RCTextField)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RCTextField;
  v3 = [(RCTextField *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (UIEdgeInsets)_scribbleInteraction:(id)a3 hitToleranceInsetsForElement:(id)a4 defaultInsets:(UIEdgeInsets)result
{
  v5 = -200.0;
  v6 = -200.0;
  result.right = v6;
  result.left = v5;
  return result;
}

@end