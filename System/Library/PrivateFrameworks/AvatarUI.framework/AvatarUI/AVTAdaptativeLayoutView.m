@interface AVTAdaptativeLayoutView
- (AVTAdaptativeLayoutView)initWithFrame:(CGRect)a3 contentView:(id)a4;
- (void)layoutSubviews;
- (void)setLayout:(id)a3;
@end

@implementation AVTAdaptativeLayoutView

- (AVTAdaptativeLayoutView)initWithFrame:(CGRect)a3 contentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = AVTAdaptativeLayoutView;
  v11 = [(AVTAdaptativeLayoutView *)&v16 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentView, a4);
    [(AVTAdaptativeLayoutView *)v12 addSubview:v12->_contentView];
    v13 = objc_alloc_init(_AVTAdaptiveFullSizeLayout);
    layout = v12->_layout;
    v12->_layout = v13;
  }

  return v12;
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  if (self->_layout != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_layout, a3);
    [(AVTAdaptativeLayoutView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v3 = [(AVTAdaptativeLayoutView *)self layout];
  [(AVTAdaptativeLayoutView *)self bounds];
  [v3 contentViewSizeForSize:{v4, v5}];

  [(AVTAdaptativeLayoutView *)self bounds];
  UIRectGetCenter();
  v6 = [(AVTAdaptativeLayoutView *)self window];
  v7 = [v6 screen];
  [v7 scale];
  UIRectCenteredAboutPointScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(AVTAdaptativeLayoutView *)self contentView];
  [v16 frame];
  v24.origin.x = v17;
  v24.origin.y = v18;
  v24.size.width = v19;
  v24.size.height = v20;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  LOBYTE(v7) = CGRectEqualToRect(v23, v24);

  if ((v7 & 1) == 0)
  {
    v21 = [(AVTAdaptativeLayoutView *)self contentView];
    [v21 setFrame:{v9, v11, v13, v15}];
  }
}

@end