@interface AVHomeLoadingButtonControlItem
- (AVHomeLoadingButtonControlItem)initWithTitle:(id)a3 type:(int64_t)a4;
- (BOOL)showsLoadingIndicator;
- (void)_buttonTouchUpInside:(id)a3;
- (void)_updateTintColor;
- (void)setShowsLoadingIndicator:(BOOL)a3;
- (void)setTitleFont:(id)a3;
@end

@implementation AVHomeLoadingButtonControlItem

- (void)_updateTintColor
{
  v5 = [(AVControlItem *)self tintColor];
  v3 = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
  v4 = [v3 button];
  [AVBackdropView applyGlyphTintColor:v5 toView:v4];
}

- (void)setTitleFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  }

  obj = v4;
  if (([(UIFont *)self->_titleFont isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, obj);
    v5 = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
    v6 = [v5 button];
    v7 = [v6 titleLabel];
    [v7 setFont:obj];
  }
}

- (BOOL)showsLoadingIndicator
{
  v2 = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
  v3 = [v2 showsLoadingIndicator];

  return v3;
}

- (void)setShowsLoadingIndicator:(BOOL)a3
{
  v3 = a3;
  v4 = [(AVHomeLoadingButtonControlItem *)self loadingButtonView];
  [v4 setShowsLoadingIndicator:v3];
}

- (void)_buttonTouchUpInside:(id)a3
{
  v4 = [(AVControlItem *)self action];

  if (v4)
  {
    v5 = [(AVControlItem *)self action];
    v5[2]();
  }
}

- (AVHomeLoadingButtonControlItem)initWithTitle:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AVHomeLoadingButtonControlItem;
  v7 = [(AVControlItem *)&v12 initWithTitle:v6 type:a4];
  if (v7)
  {
    v8 = [[AVLoadingButtonView alloc] initWithTitle:v6];
    loadingButtonView = v7->_loadingButtonView;
    v7->_loadingButtonView = v8;

    v10 = [(AVLoadingButtonView *)v7->_loadingButtonView button];
    [v10 addTarget:v7 action:sel__buttonTouchUpInside_ forControlEvents:64];
  }

  return v7;
}

@end