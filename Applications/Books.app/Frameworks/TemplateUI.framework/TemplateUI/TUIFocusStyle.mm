@interface TUIFocusStyle
+ (id)defaultFocusStyle;
- (CGRect)erasableBoundsWithBounds:(CGRect)bounds;
- (TUIFocusStyle)focusStyleWithColor:(id)color;
- (TUIFocusStyle)focusStyleWithContinuousCurve:(BOOL)curve;
- (TUIFocusStyle)focusStyleWithCornerRadius:(double)radius;
- (TUIFocusStyle)focusStyleWithEffect:(int64_t)effect;
- (TUIFocusStyle)focusStyleWithGroupIdentifier:(id)identifier;
- (TUIFocusStyle)focusStyleWithInsets:(UIEdgeInsets)insets;
- (TUIFocusStyle)init;
- (TUIFocusStyle)initWithOther:(id)other;
- (UIEdgeInsets)insets;
@end

@implementation TUIFocusStyle

+ (id)defaultFocusStyle
{
  v2 = objc_alloc_init(self);

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

- (TUIFocusStyle)initWithOther:(id)other
{
  otherCopy = other;
  v9.receiver = self;
  v9.super_class = TUIFocusStyle;
  v5 = [(TUIFocusStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_effect = *(otherCopy + 2);
    v7 = *(otherCopy + 4);
    *&v5->_insets.top = *(otherCopy + 3);
    *&v5->_insets.bottom = v7;
    v5->_cornerRadius = *(otherCopy + 3);
    v5->_continuousCurve = *(otherCopy + 8);
    objc_storeStrong(&v5->_color, *(otherCopy + 4));
    objc_storeStrong(&v6->_groupIdentifier, *(otherCopy + 5));
  }

  return v6;
}

- (TUIFocusStyle)focusStyleWithEffect:(int64_t)effect
{
  selfCopy = self;
  if (selfCopy->_effect != effect)
  {
    v5 = [[TUIFocusStyle alloc] initWithOther:selfCopy];

    v5->_effect = effect;
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIFocusStyle)focusStyleWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  bottom = insets.bottom;
  top = insets.top;
  selfCopy = self;
  v4.f64[0] = top;
  v4.f64[1] = left;
  v5.f64[0] = bottom;
  v5.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&selfCopy->_insets.top, v4), vceqq_f64(*&selfCopy->_insets.bottom, v5)))) & 1) == 0)
  {
    v6 = [[TUIFocusStyle alloc] initWithOther:selfCopy];

    v6->_insets.top = top;
    v6->_insets.left = left;
    selfCopy = v6;
    v6->_insets.bottom = bottom;
    v6->_insets.right = right;
  }

  return selfCopy;
}

- (TUIFocusStyle)focusStyleWithCornerRadius:(double)radius
{
  selfCopy = self;
  if (selfCopy->_cornerRadius != radius)
  {
    v5 = [[TUIFocusStyle alloc] initWithOther:selfCopy];

    v5->_cornerRadius = radius;
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIFocusStyle)focusStyleWithContinuousCurve:(BOOL)curve
{
  curveCopy = curve;
  selfCopy = self;
  if (selfCopy->_continuousCurve != curveCopy)
  {
    v5 = [[TUIFocusStyle alloc] initWithOther:selfCopy];

    v5->_continuousCurve = curveCopy;
    selfCopy = v5;
  }

  return selfCopy;
}

- (TUIFocusStyle)focusStyleWithColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  color = selfCopy->_color;
  if (color != colorCopy && ([(UIColor *)color isEqual:colorCopy]& 1) == 0)
  {
    v8 = [[TUIFocusStyle alloc] initWithOther:selfCopy];

    objc_storeStrong(&v8->_color, color);
    selfCopy = v8;
  }

  return selfCopy;
}

- (TUIFocusStyle)focusStyleWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  groupIdentifier = selfCopy->_groupIdentifier;
  if (groupIdentifier != identifierCopy && ![(NSString *)groupIdentifier isEqualToString:identifierCopy])
  {
    v8 = [[TUIFocusStyle alloc] initWithOther:selfCopy];

    objc_storeStrong(&v8->_groupIdentifier, identifier);
    selfCopy = v8;
  }

  return selfCopy;
}

- (CGRect)erasableBoundsWithBounds:(CGRect)bounds
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
  v9.origin.x = bounds.origin.x + *p_left;
  v9.origin.y = bounds.origin.y + p_insets->top;
  v9.size.width = bounds.size.width - (*p_right + *p_left);
  v9.size.height = bounds.size.height - (*p_bottom + p_insets->top);
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