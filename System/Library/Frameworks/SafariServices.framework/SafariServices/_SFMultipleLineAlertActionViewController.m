@interface _SFMultipleLineAlertActionViewController
- (CGSize)preferredContentSize;
- (_SFMultipleLineAlertActionViewController)initWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5;
- (void)loadView;
@end

@implementation _SFMultipleLineAlertActionViewController

- (_SFMultipleLineAlertActionViewController)initWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_SFMultipleLineAlertActionViewController *)self initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v9 copy];
    detail = v10->_detail;
    v10->_detail = v13;

    v10->_style = a5;
    v15 = v10;
  }

  return v10;
}

- (void)loadView
{
  v8 = objc_alloc_init(_SFMultipleLineAlertActionView);
  if (self->_style == 2)
  {
    v3 = [MEMORY[0x1E69DC888] systemRedColor];
    [(_SFMultipleLineAlertActionView *)v8 setTintColor:v3];
  }

  title = self->_title;
  v5 = [(_SFMultipleLineAlertActionView *)v8 titleLabel];
  [v5 setText:title];

  detail = self->_detail;
  v7 = [(_SFMultipleLineAlertActionView *)v8 detailLabel];
  [v7 setText:detail];

  [(_SFMultipleLineAlertActionViewController *)self setView:v8];
}

- (CGSize)preferredContentSize
{
  v2 = [(_SFMultipleLineAlertActionViewController *)self view];
  [v2 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end