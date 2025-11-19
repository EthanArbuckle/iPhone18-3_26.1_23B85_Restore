@interface NibView
- (NSBundle)bundle;
- (NSString)nibName;
- (NibView)initWithCoder:(id)a3;
- (NibView)initWithFrame:(CGRect)a3;
- (NibView)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setContentView:(id)a3;
@end

@implementation NibView

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v21 = v5;
    v7 = [(UIView *)contentView superview];

    if (v7 == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    [(NibView *)self addSubview:self->_contentView];
    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(UIView *)self->_contentView leftAnchor];
    v19 = [(NibView *)self leftAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v8 = [(UIView *)self->_contentView topAnchor];
    v9 = [(NibView *)self topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v22[1] = v10;
    v11 = [(UIView *)self->_contentView rightAnchor];
    v12 = [(NibView *)self rightAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v22[2] = v13;
    v14 = [(UIView *)self->_contentView bottomAnchor];
    v15 = [(NibView *)self bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v22[3] = v16;
    v17 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    v5 = v21;
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

- (NibView)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = NibView;
  v8 = [(NibView *)&v19 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [v6 copy];
    nibName = v8->_nibName;
    v8->_nibName = v9;

    objc_storeStrong(&v8->_bundle, a4);
    v11 = [(NibView *)v8 bundle];
    v12 = [(NibView *)v8 nibName];
    v13 = [v11 loadNibNamed:v12 owner:v8 options:0];

    [(NibView *)v8 contentViewDidLoad];
    y = CGPointZero.y;
    v15 = [(NibView *)v8 contentView];
    [v15 _mapkit_fittingSize];
    [(NibView *)v8 setFrame:CGPointZero.x, y, v16, v17];
  }

  return v8;
}

- (NibView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = NibView;
  return [(NibView *)&v4 initWithCoder:a3];
}

- (NibView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(NibView *)self initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    [(NibView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

@end