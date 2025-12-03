@interface AVHomeLoadingButtonControlItem
- (AVHomeLoadingButtonControlItem)initWithTitle:(id)title type:(int64_t)type;
- (BOOL)showsLoadingIndicator;
- (void)_buttonTouchUpInside:(id)inside;
- (void)_updateTintColor;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
- (void)setTitleFont:(id)font;
@end

@implementation AVHomeLoadingButtonControlItem

- (void)_updateTintColor
{
  tintColor = [(AVControlItem *)self tintColor];
  loadingButtonView = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
  button = [loadingButtonView button];
  [AVBackdropView applyGlyphTintColor:tintColor toView:button];
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    fontCopy = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  }

  obj = fontCopy;
  if (([(UIFont *)self->_titleFont isEqual:fontCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, obj);
    loadingButtonView = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
    button = [loadingButtonView button];
    titleLabel = [button titleLabel];
    [titleLabel setFont:obj];
  }
}

- (BOOL)showsLoadingIndicator
{
  loadingButtonView = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
  showsLoadingIndicator = [loadingButtonView showsLoadingIndicator];

  return showsLoadingIndicator;
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  loadingButtonView = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
  [loadingButtonView setShowsLoadingIndicator:indicatorCopy];
}

- (void)_buttonTouchUpInside:(id)inside
{
  action = [(AVControlItem *)self action];

  if (action)
  {
    action2 = [(AVControlItem *)self action];
    action2[2]();
  }
}

- (AVHomeLoadingButtonControlItem)initWithTitle:(id)title type:(int64_t)type
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = AVHomeLoadingButtonControlItem;
  v7 = [(AVControlItem *)&v12 initWithTitle:titleCopy type:type];
  if (v7)
  {
    v8 = [[AVLoadingButtonView alloc] initWithTitle:titleCopy];
    loadingButtonView = v7->_loadingButtonView;
    v7->_loadingButtonView = v8;

    button = [(AVLoadingButtonView *)v7->_loadingButtonView button];
    [button addTarget:v7 action:sel__buttonTouchUpInside_ forControlEvents:64];
  }

  return v7;
}

@end