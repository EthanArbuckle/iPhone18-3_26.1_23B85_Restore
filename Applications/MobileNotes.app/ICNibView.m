@interface ICNibView
- (ICNibView)init;
- (ICNibView)initWithCoder:(id)a3;
- (ICNibView)initWithFrame:(CGRect)a3;
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

- (ICNibView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICNibView;
  v3 = [(ICNibView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNibView *)v3 commonInit];
  }

  return v4;
}

- (ICNibView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNibView;
  v3 = [(ICNibView *)&v6 initWithCoder:a3];
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

  v5 = [v19 firstObject];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ICNibView *)self addSubview:v5];
  v18 = [v5 topAnchor];
  v17 = [(ICNibView *)self topAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v21[0] = v16;
  v15 = [v5 rightAnchor];
  v6 = [(ICNibView *)self rightAnchor];
  v7 = [v15 constraintEqualToAnchor:v6];
  v21[1] = v7;
  v8 = [v5 bottomAnchor];
  v9 = [(ICNibView *)self bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v21[2] = v10;
  v11 = [v5 leftAnchor];
  v12 = [(ICNibView *)self leftAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v21[3] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

@end