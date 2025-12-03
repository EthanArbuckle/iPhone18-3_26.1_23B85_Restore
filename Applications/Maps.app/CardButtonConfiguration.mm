@interface CardButtonConfiguration
+ (CardButtonConfiguration)none;
+ (id)withType:(unint64_t)type;
- (CardButtonConfiguration)init;
- (UIEdgeInsets)insets;
- (id)withSystemImageNamed:(id)named;
- (id)withToolTip:(id)tip;
@end

@implementation CardButtonConfiguration

- (CardButtonConfiguration)init
{
  v8.receiver = self;
  v8.super_class = CardButtonConfiguration;
  result = [(CardButtonConfiguration *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #16.0 }

    *&result->_insets.top = _Q0;
    *&result->_insets.bottom = _Q0;
  }

  return result;
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)withToolTip:(id)tip
{
  v4 = [tip copy];
  [(CardButtonConfiguration *)self setToolTip:v4];

  return self;
}

- (id)withSystemImageNamed:(id)named
{
  v4 = [named copy];
  [(CardButtonConfiguration *)self setSystemImageName:v4];

  return self;
}

+ (id)withType:(unint64_t)type
{
  v4 = objc_opt_new();
  [v4 setType:type];

  return v4;
}

+ (CardButtonConfiguration)none
{
  v2 = [CardButtonConfiguration withType:0];
  [v2 setInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v2;
}

@end