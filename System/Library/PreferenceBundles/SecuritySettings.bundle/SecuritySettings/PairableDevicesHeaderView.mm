@interface PairableDevicesHeaderView
- (NSString)name;
- (PairableDevicesHeaderView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (void)layoutSubviews;
- (void)setName:(id)name;
@end

@implementation PairableDevicesHeaderView

- (PairableDevicesHeaderView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = PairableDevicesHeaderView;
  v5 = [(PairableDevicesHeaderView *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(PairableDevicesHeaderView *)v5 setAutoresizingMask:2];
    v7 = objc_alloc_init(UILabel);
    text = v6->_text;
    v6->_text = v7;

    v9 = [UITableViewHeaderFooterView _defaultFontForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v6->_text setFont:v9];

    v10 = [UITableViewHeaderFooterView _defaultTextColorForTableViewStyle:1 isSectionHeader:1];
    [(UILabel *)v6->_text setColor:v10];

    name = [specifierCopy name];
    [(UILabel *)v6->_text setText:name];

    v12 = v6->_text;
    v18.receiver = v6;
    v18.super_class = PairableDevicesHeaderView;
    [(PairableDevicesHeaderView *)&v18 addSubview:v12];
    v13 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v6->_spinner;
    v6->_spinner = v13;

    [(UIActivityIndicatorView *)v6->_spinner startAnimating];
    v15 = v6->_spinner;
    v17.receiver = v6;
    v17.super_class = PairableDevicesHeaderView;
    [(PairableDevicesHeaderView *)&v17 addSubview:v15];
  }

  return v6;
}

- (NSString)name
{
  text = [(PairableDevicesHeaderView *)self text];
  v2Text = [text text];

  return v2Text;
}

- (void)setName:(id)name
{
  nameCopy = name;
  text = [(PairableDevicesHeaderView *)self text];
  [text setText:nameCopy];

  [(PairableDevicesHeaderView *)self setNeedsLayout];
}

- (double)preferredHeightForWidth:(double)width
{
  spinner = [(PairableDevicesHeaderView *)self spinner];
  [spinner frame];
  v5 = v4 + 24.0;

  return v5;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PairableDevicesHeaderView;
  [(PairableDevicesHeaderView *)&v26 layoutSubviews];
  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  superview = [(PairableDevicesHeaderView *)self superview];
  text = [(PairableDevicesHeaderView *)self text];
  [text sizeToFit];

  text2 = [(PairableDevicesHeaderView *)self text];
  [text2 frame];
  v8 = v7;
  v10 = v9;

  spinner = [(PairableDevicesHeaderView *)self spinner];
  [spinner frame];
  v13 = v12;
  v15 = v14;

  if (userInterfaceLayoutDirection)
  {
    [(PairableDevicesHeaderView *)self bounds];
    v17 = v16;
    [superview separatorInset];
    v19 = v17 - v18 - v8;
  }

  else
  {
    [superview separatorInset];
    v19 = v20;
  }

  [(PairableDevicesHeaderView *)self frame];
  v22 = v21 - v10 + -6.0;
  text3 = [(PairableDevicesHeaderView *)self text];
  [text3 setFrame:{v19, v22, v8, v10}];

  if (userInterfaceLayoutDirection)
  {
    v24 = v19 - v13 + -10.0;
  }

  else
  {
    v24 = v8 + v19 + 10.0;
  }

  spinner2 = [(PairableDevicesHeaderView *)self spinner];
  [spinner2 setFrame:{v24, floor(v10 * 0.5 + v22 - v15 * 0.5), v13, v15}];
}

@end