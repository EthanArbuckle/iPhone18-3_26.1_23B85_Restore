@interface BlurDarkeningBackgroundView
- (BlurDarkeningBackgroundView)initWithFrame:(CGRect)frame;
- (id)_roundedCornersResizableImageWithColor:(id)color;
- (void)_applyAppearance;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAppearance:(int64_t)appearance;
- (void)setRoundedCornersStyle:(int64_t)style;
@end

@implementation BlurDarkeningBackgroundView

- (id)_roundedCornersResizableImageWithColor:(id)color
{
  scale = self->_scale;
  colorCopy = color;
  v10.width = 13.0;
  v10.height = 13.0;
  UIGraphicsBeginImageContextWithOptions(v10, 0, scale);
  [colorCopy setFill];

  v5 = [UIBezierPath bezierPathWithRoundedRect:CGPointZero.x cornerRadius:CGPointZero.y, 13.0, 13.0, 5.0];
  [v5 fill];

  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v7 = [v6 resizableImageWithCapInsets:{6.0, 6.0, 6.0, 6.0}];

  return v7;
}

- (void)_applyAppearance
{
  [(BlurDarkeningBackgroundView *)self _maps_setNeedsUpdate:0 withSelector:a2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A77864;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  if (+[UIView _maps_shouldAdoptImplicitAnimationParameters])
  {
    [UIView transitionWithView:self duration:0 options:v3 animations:0 completion:0.0];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = BlurDarkeningBackgroundView;
  [(BlurDarkeningBackgroundView *)&v3 didMoveToWindow];
  [(BlurDarkeningBackgroundView *)self _applyAppearance];
}

- (void)setAppearance:(int64_t)appearance
{
  if (self->_appearance != appearance)
  {
    self->_appearance = appearance;
    window = [(BlurDarkeningBackgroundView *)self window];

    if (window)
    {

      [(BlurDarkeningBackgroundView *)self _applyAppearance];
    }
  }
}

- (void)setRoundedCornersStyle:(int64_t)style
{
  if (self->_roundedCornersStyle != style)
  {
    self->_roundedCornersStyle = style;
    window = [(BlurDarkeningBackgroundView *)self window];

    if (window)
    {

      [(BlurDarkeningBackgroundView *)self _maps_setNeedsUpdateWithSelector:"_applyAppearance"];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BlurDarkeningBackgroundView;
  [(BlurDarkeningBackgroundView *)&v3 layoutSubviews];
  if (![(BlurDarkeningBackgroundView *)self animatingLayers])
  {
    [(BlurDarkeningBackgroundView *)self bounds];
    [(UIImageView *)self->_bottomFilterView setFrame:?];
    [(BlurDarkeningBackgroundView *)self bounds];
    [(UIImageView *)self->_topFilterView setFrame:?];
  }
}

- (BlurDarkeningBackgroundView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = BlurDarkeningBackgroundView;
  v3 = [(BlurDarkeningBackgroundView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BlurDarkeningBackgroundView *)v3 setUserInteractionEnabled:0];
    v5 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    bottomFilterView = v4->_bottomFilterView;
    v4->_bottomFilterView = v9;

    [(UIImageView *)v4->_bottomFilterView setOpaque:0];
    [(BlurDarkeningBackgroundView *)v4 addSubview:v4->_bottomFilterView];
    v11 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    topFilterView = v4->_topFilterView;
    v4->_topFilterView = v11;

    [(UIImageView *)v4->_topFilterView setOpaque:0];
    [(BlurDarkeningBackgroundView *)v4 addSubview:v4->_topFilterView];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    layer = [(BlurDarkeningBackgroundView *)v4 layer];
    v28[0] = layer;
    layer2 = [(UIImageView *)v4->_bottomFilterView layer];
    v28[1] = layer2;
    layer3 = [(UIImageView *)v4->_topFilterView layer];
    v28[2] = layer3;
    v16 = [NSArray arrayWithObjects:v28 count:3];

    v17 = [v16 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          [v21 setAllowsGroupOpacity:0];
          [v21 setAllowsGroupBlending:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v18);
    }

    [(BlurDarkeningBackgroundView *)v4 _applyAppearance];
  }

  return v4;
}

@end