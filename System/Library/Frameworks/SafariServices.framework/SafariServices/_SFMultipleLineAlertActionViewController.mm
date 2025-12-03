@interface _SFMultipleLineAlertActionViewController
- (CGSize)preferredContentSize;
- (_SFMultipleLineAlertActionViewController)initWithTitle:(id)title detail:(id)detail style:(int64_t)style;
- (void)loadView;
@end

@implementation _SFMultipleLineAlertActionViewController

- (_SFMultipleLineAlertActionViewController)initWithTitle:(id)title detail:(id)detail style:(int64_t)style
{
  titleCopy = title;
  detailCopy = detail;
  v10 = [(_SFMultipleLineAlertActionViewController *)self initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [detailCopy copy];
    detail = v10->_detail;
    v10->_detail = v13;

    v10->_style = style;
    v15 = v10;
  }

  return v10;
}

- (void)loadView
{
  v8 = objc_alloc_init(_SFMultipleLineAlertActionView);
  if (self->_style == 2)
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(_SFMultipleLineAlertActionView *)v8 setTintColor:systemRedColor];
  }

  title = self->_title;
  titleLabel = [(_SFMultipleLineAlertActionView *)v8 titleLabel];
  [titleLabel setText:title];

  detail = self->_detail;
  detailLabel = [(_SFMultipleLineAlertActionView *)v8 detailLabel];
  [detailLabel setText:detail];

  [(_SFMultipleLineAlertActionViewController *)self setView:v8];
}

- (CGSize)preferredContentSize
{
  view = [(_SFMultipleLineAlertActionViewController *)self view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end