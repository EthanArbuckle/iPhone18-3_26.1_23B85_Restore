@interface TUIFocusStyle
+ (id)defaultFocusStyle;
- (CGRect)erasableBoundsWithBounds:(CGRect)a3;
- (TUIFocusStyle)focusStyleWithColor:(id)a3;
- (TUIFocusStyle)focusStyleWithContinuousCurve:(BOOL)a3;
- (TUIFocusStyle)focusStyleWithCornerRadius:(double)a3;
- (TUIFocusStyle)focusStyleWithEffect:(int64_t)a3;
- (TUIFocusStyle)focusStyleWithGroupIdentifier:(id)a3;
- (TUIFocusStyle)focusStyleWithInsets:(UIEdgeInsets)a3;
- (TUIFocusStyle)init;
- (TUIFocusStyle)initWithOther:(id)a3;
- (UIEdgeInsets)insets;
@end

@implementation TUIFocusStyle

+ (id)defaultFocusStyle
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TUIFocusStyle)init
{
  v8.receiver = self;
  v8.super_class = TUIFocusStyle;
  v2 = [(TUIFocusStyle *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = *&UIEdgeInsetsZero.bottom;
    *&v2->_insets.top = *&UIEdgeInsetsZero.top;
    *&v2->_insets.bottom = v4;
    v2->_effect = 1;
    v2->_cornerRadius = 0.0;
    color = v2->_color;
    v2->_color = 0;
    v2->_continuousCurve = 1;

    groupIdentifier = v3->_groupIdentifier;
    v3->_groupIdentifier = @"default";
  }

  return v3;
}

- (TUIFocusStyle)initWithOther:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIFocusStyle;
  v5 = [(TUIFocusStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_effect = *(v4 + 2);
    v7 = *(v4 + 4);
    *&v5->_insets.top = *(v4 + 3);
    *&v5->_insets.bottom = v7;
    v5->_cornerRadius = *(v4 + 3);
    v5->_continuousCurve = *(v4 + 8);
    objc_storeStrong(&v5->_color, *(v4 + 4));
    objc_storeStrong(&v6->_groupIdentifier, *(v4 + 5));
  }

  return v6;
}

- (TUIFocusStyle)focusStyleWithEffect:(int64_t)a3
{
  v4 = self;
  if (v4->_effect != a3)
  {
    v5 = [[TUIFocusStyle alloc] initWithOther:v4];

    v5->_effect = a3;
    v4 = v5;
  }

  return v4;
}

- (TUIFocusStyle)focusStyleWithInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  v3 = self;
  v4.f64[0] = top;
  v4.f64[1] = left;
  v5.f64[0] = bottom;
  v5.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v3->_insets.top, v4), vceqq_f64(*&v3->_insets.bottom, v5)))) & 1) == 0)
  {
    v6 = [[TUIFocusStyle alloc] initWithOther:v3];

    v6->_insets.top = top;
    v6->_insets.left = left;
    v3 = v6;
    v6->_insets.bottom = bottom;
    v6->_insets.right = right;
  }

  return v3;
}

- (TUIFocusStyle)focusStyleWithCornerRadius:(double)a3
{
  v4 = self;
  if (v4->_cornerRadius != a3)
  {
    v5 = [[TUIFocusStyle alloc] initWithOther:v4];

    v5->_cornerRadius = a3;
    v4 = v5;
  }

  return v4;
}

- (TUIFocusStyle)focusStyleWithContinuousCurve:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (v4->_continuousCurve != v3)
  {
    v5 = [[TUIFocusStyle alloc] initWithOther:v4];

    v5->_continuousCurve = v3;
    v4 = v5;
  }

  return v4;
}

- (TUIFocusStyle)focusStyleWithColor:(id)a3
{
  v5 = a3;
  v6 = self;
  color = v6->_color;
  if (color != v5 && ([(UIColor *)color isEqual:v5]& 1) == 0)
  {
    v8 = [[TUIFocusStyle alloc] initWithOther:v6];

    objc_storeStrong(&v8->_color, a3);
    v6 = v8;
  }

  return v6;
}

- (TUIFocusStyle)focusStyleWithGroupIdentifier:(id)a3
{
  v5 = a3;
  v6 = self;
  groupIdentifier = v6->_groupIdentifier;
  if (groupIdentifier != v5 && ![(NSString *)groupIdentifier isEqualToString:v5])
  {
    v8 = [[TUIFocusStyle alloc] initWithOther:v6];

    objc_storeStrong(&v8->_groupIdentifier, a3);
    v6 = v8;
  }

  return v6;
}

- (CGRect)erasableBoundsWithBounds:(CGRect)a3
{
  effect = self->_effect;
  p_insets = &UIEdgeInsetsZero;
  p_right = &UIEdgeInsetsZero.right;
  p_bottom = &UIEdgeInsetsZero.bottom;
  p_left = &UIEdgeInsetsZero.left;
  v8 = 0.0;
  if (effect <= 2)
  {
    if (effect != 1)
    {
      if (effect == 2)
      {
        p_insets = &self->_insets;
        p_left = &self->_insets.left;
        p_bottom = &self->_insets.bottom;
        p_right = &self->_insets.right;
      }

      goto LABEL_10;
    }

LABEL_9:
    p_insets = &self->_insets;
    p_left = &self->_insets.left;
    p_bottom = &self->_insets.bottom;
    p_right = &self->_insets.right;
    v8 = -3.0;
    goto LABEL_10;
  }

  if (effect == 3)
  {
    goto LABEL_9;
  }

  if (effect == 4)
  {
    p_insets = &self->_insets;
    p_left = &self->_insets.left;
    p_bottom = &self->_insets.bottom;
    p_right = &self->_insets.right;
  }

LABEL_10:
  v9.origin.x = a3.origin.x + *p_left;
  v9.origin.y = a3.origin.y + p_insets->top;
  v9.size.width = a3.size.width - (*p_right + *p_left);
  v9.size.height = a3.size.height - (*p_bottom + p_insets->top);
  return CGRectInset(v9, v8, v8);
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

@end