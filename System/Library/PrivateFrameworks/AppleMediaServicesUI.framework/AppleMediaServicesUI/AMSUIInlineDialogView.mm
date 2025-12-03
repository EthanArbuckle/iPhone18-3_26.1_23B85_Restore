@interface AMSUIInlineDialogView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_contentView;
- (void)layoutSubviews;
@end

@implementation AMSUIInlineDialogView

- (id)_contentView
{
  subviews = [(AMSUIInlineDialogView *)self subviews];
  firstObject = [subviews firstObject];

  return firstObject;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AMSUIInlineDialogView;
  [(AMSUIInlineDialogView *)&v4 layoutSubviews];
  _contentView = [(AMSUIInlineDialogView *)self _contentView];
  if (_contentView)
  {
    [(AMSUIInlineDialogView *)self bounds];
    [_contentView setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _contentView = [(AMSUIInlineDialogView *)self _contentView];
  v6 = _contentView;
  if (_contentView)
  {
    [_contentView sizeThatFits:{width, height}];
    width = v7;
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end