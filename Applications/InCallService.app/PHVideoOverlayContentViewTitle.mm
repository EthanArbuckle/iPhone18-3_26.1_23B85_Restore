@interface PHVideoOverlayContentViewTitle
- (PHVideoOverlayContentViewTitle)initWithTitle:(id)title;
- (void)resetView;
- (void)setupViewWithTitle:(id)title;
- (void)updateConstraints;
@end

@implementation PHVideoOverlayContentViewTitle

- (PHVideoOverlayContentViewTitle)initWithTitle:(id)title
{
  titleCopy = title;
  v8.receiver = self;
  v8.super_class = PHVideoOverlayContentViewTitle;
  v5 = [(PHVideoOverlayContentViewTitle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHVideoOverlayContentViewTitle *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHVideoOverlayContentViewTitle *)v6 setupViewWithTitle:titleCopy];
  }

  return v6;
}

- (void)setupViewWithTitle:(id)title
{
  titleCopy = title;
  v5 = objc_alloc_init(UILabel);
  [(PHVideoOverlayContentViewTitle *)self setTitleLabel:v5];

  titleLabel = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [titleLabel setText:titleCopy];

  titleLabel2 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v8 = +[UIColor whiteColor];
  [titleLabel2 setTextColor:v8];

  titleLabel3 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [(PHVideoOverlayContentView *)self titleFontSize];
  v10 = [UIFont systemFontOfSize:?];
  [titleLabel3 setFont:v10];

  titleLabel4 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [titleLabel4 setTextAlignment:1];

  titleLabel5 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [titleLabel5 setNumberOfLines:3];

  titleLabel6 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [titleLabel6 setAdjustsFontSizeToFitWidth:1];

  titleLabel7 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [titleLabel7 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel8 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  [(PHVideoOverlayContentViewTitle *)self addSubview:titleLabel8];
}

- (void)updateConstraints
{
  v12.receiver = self;
  v12.super_class = PHVideoOverlayContentViewTitle;
  [(PHVideoOverlayContentViewTitle *)&v12 updateConstraints];
  titleLabel = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v4 = [NSLayoutConstraint constraintWithItem:titleLabel attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v4];

  titleLabel2 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v6 = [NSLayoutConstraint constraintWithItem:titleLabel2 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v6];

  titleLabel3 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v8 = [NSLayoutConstraint constraintWithItem:titleLabel3 attribute:7 relatedBy:0 toItem:self attribute:7 multiplier:1.0 constant:0.0];

  LODWORD(v9) = 1144995840;
  [v8 setPriority:v9];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v8];
  titleLabel4 = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  v11 = [NSLayoutConstraint constraintWithItem:titleLabel4 attribute:8 relatedBy:0 toItem:self attribute:8 multiplier:1.0 constant:0.0];
  [(PHVideoOverlayContentViewTitle *)self addConstraint:v11];
}

- (void)resetView
{
  titleLabel = [(PHVideoOverlayContentViewTitle *)self titleLabel];
  text = [titleLabel text];

  v5.receiver = self;
  v5.super_class = PHVideoOverlayContentViewTitle;
  [(PHVideoOverlayContentView *)&v5 resetView];
  [(PHVideoOverlayContentViewTitle *)self setupViewWithTitle:text];
}

@end