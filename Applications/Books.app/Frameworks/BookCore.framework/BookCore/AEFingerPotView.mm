@interface AEFingerPotView
- (AEFingerPotView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation AEFingerPotView

- (AEFingerPotView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = AEFingerPotView;
  v3 = [(AEFingerPotView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AEFingerPotView *)v3 setAdjustsImageWhenHighlighted:0];
    [(AEFingerPotView *)v4 setShowsTouchWhenHighlighted:0];
    v5 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    pointerInteraction = v4->_pointerInteraction;
    v4->_pointerInteraction = v5;

    [(AEFingerPotView *)v4 addInteraction:v4->_pointerInteraction];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(AEFingerPotView *)self isSelected]!= selected)
  {
    v15.receiver = self;
    v15.super_class = AEFingerPotView;
    [(AEFingerPotView *)&v15 setSelected:selectedCopy];
    if (selectedCopy)
    {
      selectedOutline = [(AEFingerPotView *)self selectedOutline];

      if (!selectedOutline)
      {
        v6 = [UIImageView alloc];
        v7 = IMCommonCoreBundle();
        v8 = [UIImage imageNamed:@"ib_text_pop_icon_highlight_swatch_selection" inBundle:v7];
        v9 = [v6 initWithImage:v8];
        [(AEFingerPotView *)self setSelectedOutline:v9];

        selectedOutline2 = [(AEFingerPotView *)self selectedOutline];
        [selectedOutline2 setContentMode:4];

        selectedOutline3 = [(AEFingerPotView *)self selectedOutline];
        [(AEFingerPotView *)self addSubview:selectedOutline3];

        highlight = [(AEFingerPotView *)self highlight];

        if (highlight)
        {
          highlight2 = [(AEFingerPotView *)self highlight];
          [(AEFingerPotView *)self bringSubviewToFront:highlight2];
        }
      }
    }

    selectedOutline4 = [(AEFingerPotView *)self selectedOutline];
    [selectedOutline4 setHidden:selectedCopy ^ 1];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(AEFingerPotView *)self isHighlighted]!= highlighted)
  {
    v16.receiver = self;
    v16.super_class = AEFingerPotView;
    [(AEFingerPotView *)&v16 setHighlighted:highlightedCopy];
    highlight = [(AEFingerPotView *)self highlight];

    if (highlight)
    {
      if (highlightedCopy)
      {
LABEL_4:
        highlight2 = [(AEFingerPotView *)self highlight];
        [highlight2 setAlpha:1.0];

        return;
      }
    }

    else
    {
      v7 = [UIImageView alloc];
      v8 = IMCommonCoreBundle();
      traitCollection = [(AEFingerPotView *)self traitCollection];
      v10 = [UIImage imageNamed:@"FingerPot_Pressed" inBundle:v8 compatibleWithTraitCollection:traitCollection];
      v11 = [v7 initWithImage:v10];
      [(AEFingerPotView *)self setHighlight:v11];

      highlight3 = [(AEFingerPotView *)self highlight];
      [highlight3 setOpaque:0];

      highlight4 = [(AEFingerPotView *)self highlight];
      [highlight4 setAlpha:0.0];

      highlight5 = [(AEFingerPotView *)self highlight];
      [(AEFingerPotView *)self addSubview:highlight5];

      if (highlightedCopy)
      {
        goto LABEL_4;
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_138B7C;
    v15[3] = &unk_2C7D40;
    v15[4] = self;
    [UIView animateWithDuration:v15 animations:0.25];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = AEFingerPotView;
  [(AEFingerPotView *)&v26 layoutSubviews];
  v3 = [(AEFingerPotView *)self imageForState:1];

  [(AEFingerPotView *)self bounds];
  [(AEFingerPotView *)self contentRectForBounds:?];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (v3)
  {
    [(AEFingerPotView *)self imageRectForContentRect:v4, v5, v6, v7];
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
  }

  selectedOutline = [(AEFingerPotView *)self selectedOutline];
  [selectedOutline setFrame:{v8, v9, v10, v11}];

  v27.origin.x = v8;
  v27.origin.y = v9;
  v27.size.width = v10;
  v27.size.height = v11;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = v10;
  v28.size.height = v11;
  MidY = CGRectGetMidY(v28);
  highlight = [(AEFingerPotView *)self highlight];
  [highlight setCenter:{MidX, MidY}];

  highlight2 = [(AEFingerPotView *)self highlight];
  [highlight2 frame];
  v30 = CGRectIntegral(v29);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  highlight3 = [(AEFingerPotView *)self highlight];
  [highlight3 setFrame:{x, y, width, height}];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [[UITargetedPreview alloc] initWithView:self];
  v6 = [UIPointerHighlightEffect effectWithPreview:v5];
  [(AEFingerPotView *)self bounds];
  v8 = v7;
  v10 = v9 - 6.0;
  v12 = v11 + 0.0;
  v14 = v13 - (-6.0 - 6.0);
  superview = [(AEFingerPotView *)self superview];
  [(AEFingerPotView *)self convertRect:superview toView:v10, v12, v14, v8];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [UIPointerShape shapeWithRoundedRect:v17, v19, v21, v23];
  v25 = [UIPointerStyle styleWithEffect:v6 shape:v24];

  return v25;
}

@end