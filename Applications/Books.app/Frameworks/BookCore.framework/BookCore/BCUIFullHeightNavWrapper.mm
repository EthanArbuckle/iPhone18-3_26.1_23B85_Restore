@interface BCUIFullHeightNavWrapper
- (BCUIFullHeightNavWrapper)initWithView:(id)view;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)cursorInsets;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didMoveToSuperview;
- (void)setCursorInsets:(UIEdgeInsets)insets;
- (void)setLift:(BOOL)lift;
@end

@implementation BCUIFullHeightNavWrapper

- (BCUIFullHeightNavWrapper)initWithView:(id)view
{
  viewCopy = view;
  v22.receiver = self;
  v22.super_class = BCUIFullHeightNavWrapper;
  v5 = [(BCUIFullHeightNavWrapper *)&v22 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [[UIPointerInteraction alloc] initWithDelegate:v5];
    pointerInteraction = v5->_pointerInteraction;
    v5->_pointerInteraction = v6;

    [(BCUIFullHeightNavWrapper *)v5 addInteraction:v5->_pointerInteraction];
    [(BCUIFullHeightNavWrapper *)v5 addSubview:viewCopy];
    heightAnchor = [(BCUIFullHeightNavWrapper *)v5 heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:44.0];
    heightConstraint = v5->_heightConstraint;
    v5->_heightConstraint = v9;

    widthAnchor = [(BCUIFullHeightNavWrapper *)v5 widthAnchor];
    widthAnchor2 = [viewCopy widthAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0 constant:0.0];
    v23[0] = v11;
    v23[1] = v5->_heightConstraint;
    centerYAnchor = [viewCopy centerYAnchor];
    centerYAnchor2 = [(BCUIFullHeightNavWrapper *)v5 centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v23[2] = v14;
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(BCUIFullHeightNavWrapper *)v5 leadingAnchor];
    v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[3] = v17;
    v18 = [NSArray arrayWithObjects:v23 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v5;
}

- (void)didMoveToSuperview
{
  if (self->_heightConstraint)
  {
    [(BCUIFullHeightNavWrapper *)self removeConstraint:?];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = 0;
  }

  superview = [(BCUIFullHeightNavWrapper *)self superview];
  v5 = superview;
  if (superview)
  {
    heightAnchor = [superview heightAnchor];
    heightAnchor2 = [(BCUIFullHeightNavWrapper *)self heightAnchor];
    v8 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    v9 = self->_heightConstraint;
    self->_heightConstraint = v8;

    v11 = self->_heightConstraint;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [NSLayoutConstraint activateConstraints:v10];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [[UITargetedPreview alloc] initWithView:self];
  if (self->_lift)
  {
    v6 = UIPointerLiftEffect_ptr;
  }

  else
  {
    v6 = UIPointerHighlightEffect_ptr;
  }

  v7 = [*v6 effectWithPreview:v5];
  if (self->_lift)
  {
    p_cursorInsets = &UIEdgeInsetsZero;
  }

  else
  {
    p_cursorInsets = &self->_cursorInsets;
  }

  top = p_cursorInsets->top;
  left = p_cursorInsets->left;
  bottom = p_cursorInsets->bottom;
  right = p_cursorInsets->right;
  [(BCUIFullHeightNavWrapper *)self bounds];
  v14 = left + v13;
  v16 = top + v15;
  v18 = v17 - (left + right);
  v20 = v19 - (top + bottom);
  superview = [(BCUIFullHeightNavWrapper *)self superview];
  [(BCUIFullHeightNavWrapper *)self convertRect:superview toView:v14, v16, v18, v20];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (self->_lift)
  {
    v30 = 0;
  }

  else
  {
    v30 = [UIPointerShape shapeWithRoundedRect:v23, v25, v27, v29];
  }

  v31 = [UIPointerStyle styleWithEffect:v7 shape:v30];

  return v31;
}

- (void)setCursorInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_cursorInsets.top), vceqq_f64(v4, *&self->_cursorInsets.bottom)))) & 1) == 0)
  {
    self->_cursorInsets = insets;
    [(UIPointerInteraction *)self->_pointerInteraction invalidate];
  }
}

- (void)setLift:(BOOL)lift
{
  if (self->_lift != lift)
  {
    self->_lift = lift;
    [(UIPointerInteraction *)self->_pointerInteraction invalidate];
  }
}

- (CGSize)intrinsicContentSize
{
  specifiedWidth = self->_specifiedWidth;
  v5 = -1.0;
  if (vabdd_f64(0.0, specifiedWidth) < 0.00999999978)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = BCUIFullHeightNavWrapper;
    [(BCUIFullHeightNavWrapper *)&v6 intrinsicContentSize];
  }

  result.height = v5;
  result.width = specifiedWidth;
  return result;
}

- (UIEdgeInsets)cursorInsets
{
  top = self->_cursorInsets.top;
  left = self->_cursorInsets.left;
  bottom = self->_cursorInsets.bottom;
  right = self->_cursorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end