@interface NibView
- (NSBundle)bundle;
- (NSString)nibName;
- (NibView)initWithCoder:(id)coder;
- (NibView)initWithFrame:(CGRect)frame;
- (NibView)initWithNibName:(id)name bundle:(id)bundle;
- (void)setContentView:(id)view;
@end

@implementation NibView

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v21 = viewCopy;
    superview = [(UIView *)contentView superview];

    if (superview == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    [(NibView *)self addSubview:self->_contentView];
    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [(UIView *)self->_contentView leftAnchor];
    leftAnchor2 = [(NibView *)self leftAnchor];
    v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v22[0] = v18;
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(NibView *)self topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[1] = v10;
    rightAnchor = [(UIView *)self->_contentView rightAnchor];
    rightAnchor2 = [(NibView *)self rightAnchor];
    v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v22[2] = v13;
    bottomAnchor = [(UIView *)self->_contentView bottomAnchor];
    bottomAnchor2 = [(NibView *)self bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[3] = v16;
    v17 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    viewCopy = v21;
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

- (NibView)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v19.receiver = self;
  v19.super_class = NibView;
  v8 = [(NibView *)&v19 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [nameCopy copy];
    nibName = v8->_nibName;
    v8->_nibName = v9;

    objc_storeStrong(&v8->_bundle, bundle);
    bundle = [(NibView *)v8 bundle];
    nibName = [(NibView *)v8 nibName];
    v13 = [bundle loadNibNamed:nibName owner:v8 options:0];

    [(NibView *)v8 contentViewDidLoad];
    y = CGPointZero.y;
    contentView = [(NibView *)v8 contentView];
    [contentView _mapkit_fittingSize];
    [(NibView *)v8 setFrame:CGPointZero.x, y, v16, v17];
  }

  return v8;
}

- (NibView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = NibView;
  return [(NibView *)&v4 initWithCoder:coder];
}

- (NibView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(NibView *)self initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    [(NibView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

@end