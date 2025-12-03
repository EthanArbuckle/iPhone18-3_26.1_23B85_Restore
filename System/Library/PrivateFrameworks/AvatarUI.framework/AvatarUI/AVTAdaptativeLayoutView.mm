@interface AVTAdaptativeLayoutView
- (AVTAdaptativeLayoutView)initWithFrame:(CGRect)frame contentView:(id)view;
- (void)layoutSubviews;
- (void)setLayout:(id)layout;
@end

@implementation AVTAdaptativeLayoutView

- (AVTAdaptativeLayoutView)initWithFrame:(CGRect)frame contentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = AVTAdaptativeLayoutView;
  height = [(AVTAdaptativeLayoutView *)&v16 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_contentView, view);
    [(AVTAdaptativeLayoutView *)v12 addSubview:v12->_contentView];
    v13 = objc_alloc_init(_AVTAdaptiveFullSizeLayout);
    layout = v12->_layout;
    v12->_layout = v13;
  }

  return v12;
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_layout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_layout, layout);
    [(AVTAdaptativeLayoutView *)self setNeedsLayout];
    layoutCopy = v6;
  }
}

- (void)layoutSubviews
{
  layout = [(AVTAdaptativeLayoutView *)self layout];
  [(AVTAdaptativeLayoutView *)self bounds];
  [layout contentViewSizeForSize:{v4, v5}];

  [(AVTAdaptativeLayoutView *)self bounds];
  UIRectGetCenter();
  window = [(AVTAdaptativeLayoutView *)self window];
  screen = [window screen];
  [screen scale];
  UIRectCenteredAboutPointScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  contentView = [(AVTAdaptativeLayoutView *)self contentView];
  [contentView frame];
  v24.origin.x = v17;
  v24.origin.y = v18;
  v24.size.width = v19;
  v24.size.height = v20;
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  LOBYTE(screen) = CGRectEqualToRect(v23, v24);

  if ((screen & 1) == 0)
  {
    contentView2 = [(AVTAdaptativeLayoutView *)self contentView];
    [contentView2 setFrame:{v9, v11, v13, v15}];
  }
}

@end