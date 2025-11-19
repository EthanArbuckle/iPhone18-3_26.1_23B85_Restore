@interface AMSUIInlineDialogView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_contentView;
- (void)layoutSubviews;
@end

@implementation AMSUIInlineDialogView

- (id)_contentView
{
  v2 = [(AMSUIInlineDialogView *)self subviews];
  v3 = [v2 firstObject];

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AMSUIInlineDialogView;
  [(AMSUIInlineDialogView *)&v4 layoutSubviews];
  v3 = [(AMSUIInlineDialogView *)self _contentView];
  if (v3)
  {
    [(AMSUIInlineDialogView *)self bounds];
    [v3 setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(AMSUIInlineDialogView *)self _contentView];
  v6 = v5;
  if (v5)
  {
    [v5 sizeThatFits:{width, height}];
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