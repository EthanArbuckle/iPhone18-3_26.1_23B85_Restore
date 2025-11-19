@interface PHVideoOverlayContentViewTitle
- (PHVideoOverlayContentViewTitle)initWithTitle:(id)a3;
- (void)resetView;
- (void)setupViewWithTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewTitle

- (PHVideoOverlayContentViewTitle)initWithTitle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHVideoOverlayContentViewTitle;
  v5 = [(PHVideoOverlayContentViewTitle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHVideoOverlayContentViewTitle *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewTitle *)v6 setupViewWithTitle:v4];
  }

  return v6;
}

- (void)setupViewWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewTitle *)self setTitleLabel:v5];

  v6 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [v6 setText:v4];

  v7 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v8 = +[UIColor whiteColor];
  [v7 setTextColor:v8];

  v9 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [(PHVideoOverlayContentView *)self titleFontSize];
  v10 = [UIFont systemFontOfSize:?];
  [v9 setFont:v10];

  v11 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [v11 setTextAlignment:1];

  v12 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [v12 setNumberOfLines:3];

  v13 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [v13 setAdjustsFontSizeToFitWidth:1];

  v14 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [(PHVideoOverlayContentViewTitle *)self addSubview:v15];
}

- (void)updateConstraints
{
  v12.receiver = self;
  v12.super_class = PHVideoOverlayContentViewTitle;
  [(PHVideoOverlayContentViewTitle *)&v12 updateConstraints];
  v3 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v4 = [NSLayoutConstraint constraintWithItem:v3 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v4];

  v5 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v6 = [NSLayoutConstraint constraintWithItem:v5 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v6];

  v7 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v8 = [NSLayoutConstraint constraintWithItem:v7 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];

  LODWORD(v9) = 1144995840;
  [v8 setPriority:v9];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v8];
  v10 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v11 = [NSLayoutConstraint constraintWithItem:v10 attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v11];
}

- (void)resetView
{
  v3 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v4 = [v3 text];

  v5.receiver = self;
  v5.super_class = PHVideoOverlayContentViewTitle;
  [(PHVideoOverlayContentView *)&v5 resetView];
  [(PHVideoOverlayContentViewTitle *)self setupViewWithTitle:v4];
}

@end