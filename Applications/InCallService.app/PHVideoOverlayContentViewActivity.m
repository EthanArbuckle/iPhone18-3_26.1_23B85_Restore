@interface PHVideoOverlayContentViewActivity
- (NSString)title;
- (PHVideoOverlayContentViewActivity)initWithTitle:(id)a3 indicatorStyle:(int64_t)a4;
- (void)resetView;
- (void)setupViewWithTitle:(id)a3 indicatorStyle:(int64_t)a4;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewActivity

- (PHVideoOverlayContentViewActivity)initWithTitle:(id)a3 indicatorStyle:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PHVideoOverlayContentViewActivity;
  v7 = [(PHVideoOverlayContentViewActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PHVideoOverlayContentViewActivity *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewActivity *)v8 setupViewWithTitle:v6 indicatorStyle:a4];
  }

  return v8;
}

- (void)setupViewWithTitle:(id)a3 indicatorStyle:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewActivity *)self setTitleLabel:v7];

  v8 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [v8 setText:v6];

  v9 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v10 = +[UIColor whiteColor];
  [v9 setTextColor:v10];

  v11 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [(PHVideoOverlayContentView *)self titleFontSize];
  v12 = [UIFont systemFontOfSize:?];
  [v11 setFont:v12];

  v13 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [v13 setTextAlignment:1];

  v14 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [v14 setAdjustsFontSizeToFitWidth:1];

  v15 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  LODWORD(v17) = 1132068864;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:a4];
  [(PHVideoOverlayContentViewActivity *)self setActivityIndicator:v18];

  v19 = +[UIColor whiteColor];
  v20 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [v20 setColor:v19];

  v21 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [v21 startAnimating];

  v22 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [(PHVideoOverlayContentViewActivity *)self addSubview:v23];

  v24 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [(PHVideoOverlayContentViewActivity *)self addSubview:v24];
}

- (void)updateConstraints
{
  v31.receiver = self;
  v31.super_class = PHVideoOverlayContentViewActivity;
  [(PHVideoOverlayContentViewActivity *)&v31 updateConstraints];
  v3 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v4 = [NSLayoutConstraint constraintWithItem:v3 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v4];

  v5 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v6 = [NSLayoutConstraint constraintWithItem:v5 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v6];

  v7 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  v8 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v9 = [NSLayoutConstraint constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];

  LODWORD(v10) = 1148846080;
  [v9 setPriority:v10];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v9];
  v11 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v12 = [v11 text];
  v13 = [v12 length];

  v14 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  v15 = v14;
  if (v13)
  {
    v16 = [v14 leftAnchor];
    v17 = [(PHVideoOverlayContentViewActivity *)self leftAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
    v20 = [v19 rightAnchor];
    v21 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
    v22 = [v21 leftAnchor];
    v15 = [v20 constraintEqualToAnchor:v22 constant:-10.0];

    LODWORD(v23) = 1148846080;
    [v15 setPriority:v23];
    [(PHVideoOverlayContentViewActivity *)self addConstraint:v15];
  }

  else
  {
    v24 = [v14 centerXAnchor];
    v25 = [(PHVideoOverlayContentViewActivity *)self centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];
  }

  v27 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v28 = [NSLayoutConstraint constraintWithItem:v27 attribute:3 relatedBy:-1 toItem:self attribute:3 multiplier:1.0 constant:-5.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v28];

  v29 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v30 = [NSLayoutConstraint constraintWithItem:v29 attribute:4 relatedBy:1 toItem:self attribute:4 multiplier:1.0 constant:5.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v30];
}

- (void)resetView
{
  v6.receiver = self;
  v6.super_class = PHVideoOverlayContentViewActivity;
  [(PHVideoOverlayContentView *)&v6 resetView];
  v3 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v4 = [v3 text];
  v5 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  -[PHVideoOverlayContentViewActivity setupViewWithTitle:indicatorStyle:](self, "setupViewWithTitle:indicatorStyle:", v4, [v5 activityIndicatorViewStyle]);
}

- (NSString)title
{
  v2 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

@end