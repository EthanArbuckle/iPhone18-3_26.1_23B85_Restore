@interface ICNibView
- (ICNibView)init;
- (ICNibView)initWithCoder:(id)coder;
- (ICNibView)initWithFrame:(CGRect)frame;
- (void)commonInit;
@end

@implementation ICNibView

- (ICNibView)init
{
  v5.receiver = self;
  v5.super_class = ICNibView;
  v2 = [(ICNibView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICNibView *)v2 commonInit];
  }

  return v3;
}

- (ICNibView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICNibView;
  v3 = [(ICNibView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNibView *)v3 commonInit];
  }

  return v4;
}

- (ICNibView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICNibView;
  v3 = [(ICNibView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICNibView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v4 loadNibNamed:v20 owner:self options:0];

  firstObject = [v19 firstObject];
  [firstObject setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ICNibView *)self addSubview:firstObject];
  topAnchor = [firstObject topAnchor];
  topAnchor2 = [(ICNibView *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[0] = v16;
  rightAnchor = [firstObject rightAnchor];
  rightAnchor2 = [(ICNibView *)self rightAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v21[1] = v7;
  bottomAnchor = [firstObject bottomAnchor];
  bottomAnchor2 = [(ICNibView *)self bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[2] = v10;
  leftAnchor = [firstObject leftAnchor];
  leftAnchor2 = [(ICNibView *)self leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v21[3] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

@end