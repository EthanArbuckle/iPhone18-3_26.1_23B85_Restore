@interface HSPCRow
+ (CGSize)leftImageSize;
+ (double)leadingSeparatorMargin;
- (HSPCRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UITextField)textField;
- (UIView)leftView;
@end

@implementation HSPCRow

+ (CGSize)leftImageSize
{
  v2 = 24.0;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)leadingSeparatorMargin
{
  +[HSPCRow horizontalLeadingMargin];
  v3 = v2;
  +[HSPCRow leftImageSize];
  v5 = v3 + v4;
  +[HSPCRow horizontalSpacing];
  return v5 + v6;
}

- (HSPCRow)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = HSPCRow;
  v4 = [(HSPCRow *)&v16 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HSPCRow *)v4 setSelectionStyle:0];
    v6 = objc_opt_new();
    [(HSPCRow *)v5 setBackgroundView:v6];

    v7 = +[UIColor systemGroupedBackgroundColor];
    backgroundView = [(HSPCRow *)v5 backgroundView];
    [backgroundView setBackgroundColor:v7];

    v9 = +[UIColor systemGroupedBackgroundColor];
    contentView = [(HSPCRow *)v5 contentView];
    [contentView setBackgroundColor:v9];

    v11 = +[UIColor systemGroupedBackgroundColor];
    [(HSPCRow *)v5 setBackgroundColor:v11];

    v12 = [UITextField alloc];
    [(HSPCRow *)v5 bounds];
    v13 = [v12 initWithFrame:?];
    [v13 setClearButtonMode:3];
    [v13 setAutocapitalizationType:1];
    [v13 setReturnKeyType:9];
    contentView2 = [(HSPCRow *)v5 contentView];
    [contentView2 addSubview:v13];

    objc_storeWeak(&v5->_textField, v13);
  }

  return v5;
}

- (UIView)leftView
{
  WeakRetained = objc_loadWeakRetained(&self->_leftView);

  return WeakRetained;
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

@end