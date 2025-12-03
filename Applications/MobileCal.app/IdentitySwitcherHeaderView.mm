@interface IdentitySwitcherHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (IdentitySwitcherHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation IdentitySwitcherHeaderView

- (IdentitySwitcherHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19.receiver = self;
  v19.super_class = IdentitySwitcherHeaderView;
  v7 = [(IdentitySwitcherHeaderView *)&v19 initWithFrame:?];
  if (v7)
  {
    v8 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:32770 options:0];
    v9 = [UIFont fontWithDescriptor:v8 size:0.0];
    font = v7->_font;
    v7->_font = v9;

    v11 = objc_alloc_init(UILabel);
    label = v7->_label;
    v7->_label = v11;

    [(UILabel *)v7->_label setFont:v7->_font];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Calendars" value:&stru_1002133B8 table:0];
    [(UILabel *)v7->_label setText:v14];

    [(UILabel *)v7->_label sizeToFit];
    [(IdentitySwitcherHeaderView *)v7 addSubview:v7->_label];
    v15 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    separator = v7->_separator;
    v7->_separator = v15;

    v17 = +[UIColor separatorColor];
    [(UIView *)v7->_separator setBackgroundColor:v17];

    [(IdentitySwitcherHeaderView *)v7 addSubview:v7->_separator];
  }

  return v7;
}

- (void)layoutSubviews
{
  [(IdentitySwitcherHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_label frame];
  v12 = v11;
  v14 = v13;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  [(IdentitySwitcherHeaderView *)self layoutMargins];
  v18 = v8 - v17 - v12;
  if (IsLeftToRight)
  {
    v18 = v16;
  }

  [(UILabel *)self->_label setFrame:v18, v10 * 0.5 - v14 * 0.5, v12, v14];
  EKUISeparatorLineThickness();
  v20 = v19;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  MaxY = CGRectGetMaxY(v24);
  separator = self->_separator;

  [(UIView *)separator setFrame:0.0, MaxY - v20, v8, v20];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIFont *)self->_font _scaledValueForValue:52.0, fits.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end