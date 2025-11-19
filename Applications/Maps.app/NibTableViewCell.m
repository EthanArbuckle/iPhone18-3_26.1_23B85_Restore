@interface NibTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSBundle)bundle;
- (NSString)nibName;
- (NibTableViewCell)initWithNibName:(id)a3 bundle:(id)a4 reuseIdentifier:(id)a5;
- (void)setCellContentView:(id)a3;
@end

@implementation NibTableViewCell

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = [(NibTableViewCell *)self cellContentView:a3.width];
  LODWORD(v5) = 1144750080;
  LODWORD(v6) = 1112014848;
  [v4 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setCellContentView:(id)a3
{
  v5 = a3;
  cellContentView = self->_cellContentView;
  if (cellContentView != v5)
  {
    v23 = v5;
    v7 = [(UIView *)cellContentView superview];
    v8 = [(NibTableViewCell *)self contentView];

    if (v7 == v8)
    {
      [(UIView *)self->_cellContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_cellContentView, a3);
    v9 = [(NibTableViewCell *)self contentView];
    [v9 addSubview:self->_cellContentView];

    [(UIView *)self->_cellContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(UIView *)self->_cellContentView leftAnchor];
    v21 = [(NibTableViewCell *)self leftAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v19 = [(UIView *)self->_cellContentView topAnchor];
    v18 = [(NibTableViewCell *)self topAnchor];
    v10 = [v19 constraintEqualToAnchor:v18];
    v24[1] = v10;
    v11 = [(UIView *)self->_cellContentView rightAnchor];
    v12 = [(NibTableViewCell *)self rightAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v24[2] = v13;
    v14 = [(UIView *)self->_cellContentView bottomAnchor];
    v15 = [(NibTableViewCell *)self bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v24[3] = v16;
    v17 = [NSArray arrayWithObjects:v24 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    [(UIView *)self->_cellContentView setPreservesSuperviewLayoutMargins:1];
    v5 = v23;
  }
}

- (NSBundle)bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = self->_bundle;
    self->_bundle = v4;

    bundle = self->_bundle;
  }

  return bundle;
}

- (NSString)nibName
{
  nibName = self->_nibName;
  if (!nibName)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = self->_nibName;
    self->_nibName = v5;

    nibName = self->_nibName;
  }

  return nibName;
}

- (NibTableViewCell)initWithNibName:(id)a3 bundle:(id)a4 reuseIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = NibTableViewCell;
  v10 = [(NibTableViewCell *)&v17 initWithStyle:0 reuseIdentifier:a5];
  if (v10)
  {
    v11 = [v8 copy];
    nibName = v10->_nibName;
    v10->_nibName = v11;

    objc_storeStrong(&v10->_bundle, a4);
    v13 = [(NibTableViewCell *)v10 bundle];
    v14 = [(NibTableViewCell *)v10 nibName];
    v15 = [v13 loadNibNamed:v14 owner:v10 options:0];

    [(NibTableViewCell *)v10 cellContentViewDidLoad];
  }

  return v10;
}

@end