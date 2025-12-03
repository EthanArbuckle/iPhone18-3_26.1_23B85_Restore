@interface PHVideoOverlayContentViewActivity
- (NSString)title;
- (PHVideoOverlayContentViewActivity)initWithTitle:(id)title indicatorStyle:(int64_t)style;
- (void)resetView;
- (void)setupViewWithTitle:(id)title indicatorStyle:(int64_t)style;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewActivity

- (PHVideoOverlayContentViewActivity)initWithTitle:(id)title indicatorStyle:(int64_t)style
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = PHVideoOverlayContentViewActivity;
  v7 = [(PHVideoOverlayContentViewActivity *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PHVideoOverlayContentViewActivity *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewActivity *)v8 setupViewWithTitle:titleCopy indicatorStyle:style];
  }

  return v8;
}

- (void)setupViewWithTitle:(id)title indicatorStyle:(int64_t)style
{
  titleCopy = title;
  v7 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewActivity *)self setTitleLabel:v7];

  titleLabel = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [titleLabel setText:titleCopy];

  titleLabel2 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v10 = +[UIColor whiteColor];
  [titleLabel2 setTextColor:v10];

  titleLabel3 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [(PHVideoOverlayContentView *)self titleFontSize];
  v12 = [UIFont systemFontOfSize:?];
  [titleLabel3 setFont:v12];

  titleLabel4 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [titleLabel4 setTextAlignment:1];

  titleLabel5 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [titleLabel5 setAdjustsFontSizeToFitWidth:1];

  titleLabel6 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [titleLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel7 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  LODWORD(v17) = 1132068864;
  [titleLabel7 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:style];
  [(PHVideoOverlayContentViewActivity *)self setActivityIndicator:v18];

  v19 = +[UIColor whiteColor];
  activityIndicator = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [activityIndicator setColor:v19];

  activityIndicator2 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [activityIndicator2 startAnimating];

  activityIndicator3 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [activityIndicator3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel8 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  [(PHVideoOverlayContentViewActivity *)self addSubview:titleLabel8];

  activityIndicator4 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  [(PHVideoOverlayContentViewActivity *)self addSubview:activityIndicator4];
}

- (void)updateConstraints
{
  v31.receiver = self;
  v31.super_class = PHVideoOverlayContentViewActivity;
  [(PHVideoOverlayContentViewActivity *)&v31 updateConstraints];
  titleLabel = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v4 = [NSLayoutConstraint constraintWithItem:titleLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v4];

  titleLabel2 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v6 = [NSLayoutConstraint constraintWithItem:titleLabel2 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v6];

  activityIndicator = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  titleLabel3 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v9 = [NSLayoutConstraint constraintWithItem:activityIndicator attribute:10 relatedBy:0 toItem:titleLabel3 attribute:10 multiplier:1.0 constant:0.0];

  LODWORD(v10) = 1148846080;
  [v9 setPriority:v10];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v9];
  titleLabel4 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  text = [titleLabel4 text];
  v13 = [text length];

  activityIndicator2 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  v15 = activityIndicator2;
  if (v13)
  {
    leftAnchor = [activityIndicator2 leftAnchor];
    leftAnchor2 = [(PHVideoOverlayContentViewActivity *)self leftAnchor];
    v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v18 setActive:1];

    activityIndicator3 = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
    rightAnchor = [activityIndicator3 rightAnchor];
    titleLabel5 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
    leftAnchor3 = [titleLabel5 leftAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:leftAnchor3 constant:-10.0];

    LODWORD(v23) = 1148846080;
    [v15 setPriority:v23];
    [(PHVideoOverlayContentViewActivity *)self addConstraint:v15];
  }

  else
  {
    centerXAnchor = [activityIndicator2 centerXAnchor];
    centerXAnchor2 = [(PHVideoOverlayContentViewActivity *)self centerXAnchor];
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v26 setActive:1];
  }

  titleLabel6 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v28 = [NSLayoutConstraint constraintWithItem:titleLabel6 attribute:3 relatedBy:-1 toItem:self attribute:3 multiplier:1.0 constant:-5.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v28];

  titleLabel7 = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  v30 = [NSLayoutConstraint constraintWithItem:titleLabel7 attribute:4 relatedBy:1 toItem:self attribute:4 multiplier:1.0 constant:5.0];
  [(PHVideoOverlayContentViewActivity *)self addConstraint:v30];
}

- (void)resetView
{
  v6.receiver = self;
  v6.super_class = PHVideoOverlayContentViewActivity;
  [(PHVideoOverlayContentView *)&v6 resetView];
  titleLabel = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  text = [titleLabel text];
  activityIndicator = [(PHVideoOverlayContentViewActivity *)self activityIndicator];
  -[PHVideoOverlayContentViewActivity setupViewWithTitle:indicatorStyle:](self, "setupViewWithTitle:indicatorStyle:", text, [activityIndicator activityIndicatorViewStyle]);
}

- (NSString)title
{
  titleLabel = [(PHVideoOverlayContentViewActivity *)self titleLabel];
  text = [titleLabel text];

  return text;
}

@end