@interface PHCarPlayNoContentBannerView
- (NSString)subtitleString;
- (NSString)titleString;
- (PHCarPlayNoContentBannerView)initWithFrame:(CGRect)frame;
- (void)setSubtitleString:(id)string;
- (void)setTitleString:(id)string;
@end

@implementation PHCarPlayNoContentBannerView

- (PHCarPlayNoContentBannerView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = PHCarPlayNoContentBannerView;
  v3 = [(PHCarPlayNoContentBannerView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [UIFont systemFontOfSize:28.0];
    [(UILabel *)v3->_titleLabel setFont:v6];

    v7 = +[UIColor dynamicLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v7];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(PHCarPlayNoContentBannerView *)v3 addSubview:v3->_titleLabel];
    v8 = objc_alloc_init(UILabel);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v8;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [UIFont systemFontOfSize:16.0];
    [(UILabel *)v3->_subtitleLabel setFont:v10];

    v11 = +[UIColor dynamicLabelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v11];

    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    [(PHCarPlayNoContentBannerView *)v3 addSubview:v3->_subtitleLabel];
    v27[0] = @"titleLabel";
    v12 = v3->_titleLabel;
    v27[1] = @"subtitleLabel";
    v28[0] = v12;
    v28[1] = v3->_subtitleLabel;
    v13 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    titleLabel = [(PHCarPlayNoContentBannerView *)v3 titleLabel];
    v15 = [NSLayoutConstraint constraintWithItem:titleLabel attribute:11 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v15];

    v16 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[titleLabel]-[subtitleLabel]", 0, 0, v13);
    [(PHCarPlayNoContentBannerView *)v3 addConstraints:v16];

    titleLabel2 = [(PHCarPlayNoContentBannerView *)v3 titleLabel];
    v18 = [NSLayoutConstraint constraintWithItem:titleLabel2 attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v18];

    titleLabel3 = [(PHCarPlayNoContentBannerView *)v3 titleLabel];
    v20 = [NSLayoutConstraint constraintWithItem:titleLabel3 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v20];

    subtitleLabel = [(PHCarPlayNoContentBannerView *)v3 subtitleLabel];
    v22 = [NSLayoutConstraint constraintWithItem:subtitleLabel attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v22];

    subtitleLabel2 = [(PHCarPlayNoContentBannerView *)v3 subtitleLabel];
    v24 = [NSLayoutConstraint constraintWithItem:subtitleLabel2 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v24];
  }

  return v3;
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  titleLabel = [(PHCarPlayNoContentBannerView *)self titleLabel];
  [titleLabel setText:stringCopy];
}

- (void)setSubtitleString:(id)string
{
  stringCopy = string;
  subtitleLabel = [(PHCarPlayNoContentBannerView *)self subtitleLabel];
  [subtitleLabel setText:stringCopy];
}

- (NSString)titleString
{
  titleLabel = [(PHCarPlayNoContentBannerView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (NSString)subtitleString
{
  subtitleLabel = [(PHCarPlayNoContentBannerView *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

@end