@interface PairableDevicesHeaderView
- (NSString)name;
- (PairableDevicesHeaderView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
- (void)layoutSubviews;
- (void)setName:(id)a3;
@end

@implementation PairableDevicesHeaderView

- (PairableDevicesHeaderView)initWithSpecifier:(id)a3
{
  v4 = a3;
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

    v11 = [v4 name];
    [(UILabel *)v6->_text setText:v11];

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
  v2 = [(PairableDevicesHeaderView *)self text];
  v3 = [v2 text];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(PairableDevicesHeaderView *)self text];
  [v5 setText:v4];

  [(PairableDevicesHeaderView *)self setNeedsLayout];
}

- (double)preferredHeightForWidth:(double)a3
{
  v3 = [(PairableDevicesHeaderView *)self spinner];
  [v3 frame];
  v5 = v4 + 24.0;

  return v5;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PairableDevicesHeaderView;
  [(PairableDevicesHeaderView *)&v26 layoutSubviews];
  v3 = [UIApp userInterfaceLayoutDirection];
  v4 = [(PairableDevicesHeaderView *)self superview];
  v5 = [(PairableDevicesHeaderView *)self text];
  [v5 sizeToFit];

  v6 = [(PairableDevicesHeaderView *)self text];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = [(PairableDevicesHeaderView *)self spinner];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  if (v3)
  {
    [(PairableDevicesHeaderView *)self bounds];
    v17 = v16;
    [v4 separatorInset];
    v19 = v17 - v18 - v8;
  }

  else
  {
    [v4 separatorInset];
    v19 = v20;
  }

  [(PairableDevicesHeaderView *)self frame];
  v22 = v21 - v10 + -6.0;
  v23 = [(PairableDevicesHeaderView *)self text];
  [v23 setFrame:{v19, v22, v8, v10}];

  if (v3)
  {
    v24 = v19 - v13 + -10.0;
  }

  else
  {
    v24 = v8 + v19 + 10.0;
  }

  v25 = [(PairableDevicesHeaderView *)self spinner];
  [v25 setFrame:{v24, floor(v10 * 0.5 + v22 - v15 * 0.5), v13, v15}];
}

@end