@interface IMCalloutButton
- (IMCalloutBar)bar;
- (IMCalloutButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)pointerInsets;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation IMCalloutButton

- (IMCalloutButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = IMCalloutButton;
  v3 = [(IMCalloutButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(IMCalloutButton *)v3 setAdjustsImageWhenHighlighted:0];
    [(IMCalloutButton *)v4 setShowsTouchWhenHighlighted:0];
    v4->_position = -1;
    v4->_pointerInsets.top = 0.0;
    v4->_pointerInsets.left = -6.0;
    v4->_pointerInsets.bottom = 0.0;
    v4->_pointerInsets.right = -6.0;
    v5 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    pointerInteraction = v4->_pointerInteraction;
    v4->_pointerInteraction = v5;

    [(IMCalloutButton *)v4 addInteraction:v4->_pointerInteraction];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = IMCalloutButton;
  [(IMCalloutButton *)&v6 setHighlighted:?];
  v5 = [(IMCalloutButton *)self bar];
  [v5 setHighlighted:v3 forControl:self];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (self->_pointerInteraction == a3)
  {
    [(IMCalloutButton *)self bounds];
    v8 = [UIPointerRegion regionWithRect:0 identifier:v9 + self->_pointerInsets.left, v10 + self->_pointerInsets.top, v11 - (self->_pointerInsets.left + self->_pointerInsets.right), v12 - (self->_pointerInsets.top + self->_pointerInsets.bottom)];
  }

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [[UITargetedPreview alloc] initWithView:self];
  v6 = [UIPointerHighlightEffect effectWithPreview:v5];
  [(IMCalloutButton *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(IMCalloutButton *)self pointerInsets];
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 - (v15 + v19);
  v22 = v14 - (v17 + v21);
  v23 = [(IMCalloutButton *)self superview];
  [(IMCalloutButton *)self convertRect:v23 toView:v16, v18, v20, v22];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [UIPointerShape shapeWithRoundedRect:v25, v27, v29, v31];
  v33 = [UIPointerStyle styleWithEffect:v6 shape:v32];

  return v33;
}

- (IMCalloutBar)bar
{
  WeakRetained = objc_loadWeakRetained(&self->_bar);

  return WeakRetained;
}

- (UIEdgeInsets)pointerInsets
{
  top = self->_pointerInsets.top;
  left = self->_pointerInsets.left;
  bottom = self->_pointerInsets.bottom;
  right = self->_pointerInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end