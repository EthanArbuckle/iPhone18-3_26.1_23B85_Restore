@interface NibTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSBundle)bundle;
- (NSString)nibName;
- (NibTableViewCell)initWithNibName:(id)name bundle:(id)bundle reuseIdentifier:(id)identifier;
- (void)setCellContentView:(id)view;
@end

@implementation NibTableViewCell

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(NibTableViewCell *)self cellContentView:fits.width];
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

- (void)setCellContentView:(id)view
{
  viewCopy = view;
  cellContentView = self->_cellContentView;
  if (cellContentView != viewCopy)
  {
    v23 = viewCopy;
    superview = [(UIView *)cellContentView superview];
    contentView = [(NibTableViewCell *)self contentView];

    if (superview == contentView)
    {
      [(UIView *)self->_cellContentView removeFromSuperview];
    }

    objc_storeStrong(&self->_cellContentView, view);
    contentView2 = [(NibTableViewCell *)self contentView];
    [contentView2 addSubview:self->_cellContentView];

    [(UIView *)self->_cellContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [(UIView *)self->_cellContentView leftAnchor];
    leftAnchor2 = [(NibTableViewCell *)self leftAnchor];
    v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[0] = v20;
    topAnchor = [(UIView *)self->_cellContentView topAnchor];
    topAnchor2 = [(NibTableViewCell *)self topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[1] = v10;
    rightAnchor = [(UIView *)self->_cellContentView rightAnchor];
    rightAnchor2 = [(NibTableViewCell *)self rightAnchor];
    v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[2] = v13;
    bottomAnchor = [(UIView *)self->_cellContentView bottomAnchor];
    bottomAnchor2 = [(NibTableViewCell *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v16;
    v17 = [NSArray arrayWithObjects:v24 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    [(UIView *)self->_cellContentView setPreservesSuperviewLayoutMargins:1];
    viewCopy = v23;
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

- (NibTableViewCell)initWithNibName:(id)name bundle:(id)bundle reuseIdentifier:(id)identifier
{
  nameCopy = name;
  bundleCopy = bundle;
  v17.receiver = self;
  v17.super_class = NibTableViewCell;
  v10 = [(NibTableViewCell *)&v17 initWithStyle:0 reuseIdentifier:identifier];
  if (v10)
  {
    v11 = [nameCopy copy];
    nibName = v10->_nibName;
    v10->_nibName = v11;

    objc_storeStrong(&v10->_bundle, bundle);
    bundle = [(NibTableViewCell *)v10 bundle];
    nibName = [(NibTableViewCell *)v10 nibName];
    v15 = [bundle loadNibNamed:nibName owner:v10 options:0];

    [(NibTableViewCell *)v10 cellContentViewDidLoad];
  }

  return v10;
}

@end