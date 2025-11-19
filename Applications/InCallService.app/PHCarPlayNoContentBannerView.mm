@interface PHCarPlayNoContentBannerView
- (NSString)subtitleString;
- (NSString)titleString;
- (PHCarPlayNoContentBannerView)initWithFrame:(CGRect)a3;
- (void)setSubtitleString:(id)a3;
- (void)setTitleString:(id)a3;
@end

@implementation PHCarPlayNoContentBannerView

- (PHCarPlayNoContentBannerView)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = PHCarPlayNoContentBannerView;
  v3 = [(PHCarPlayNoContentBannerView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v14 = [(PHCarPlayNoContentBannerView *)v3 titleLabel];
    v15 = [NSLayoutConstraint constraintWithItem:v14 attribute:11 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v15];

    v16 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[titleLabel]-[subtitleLabel]", 0, 0, v13);
    [(PHCarPlayNoContentBannerView *)v3 addConstraints:v16];

    v17 = [(PHCarPlayNoContentBannerView *)v3 titleLabel];
    v18 = [NSLayoutConstraint constraintWithItem:v17 attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v18];

    v19 = [(PHCarPlayNoContentBannerView *)v3 titleLabel];
    v20 = [NSLayoutConstraint constraintWithItem:v19 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v20];

    v21 = [(PHCarPlayNoContentBannerView *)v3 subtitleLabel];
    v22 = [NSLayoutConstraint constraintWithItem:v21 attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v22];

    v23 = [(PHCarPlayNoContentBannerView *)v3 subtitleLabel];
    v24 = [NSLayoutConstraint constraintWithItem:v23 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayNoContentBannerView *)v3 addConstraint:v24];
  }

  return v3;
}

- (void)setTitleString:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayNoContentBannerView *)self titleLabel];
  [v5 setText:v4];
}

- (void)setSubtitleString:(id)a3
{
  v4 = a3;
  v5 = [(PHCarPlayNoContentBannerView *)self subtitleLabel];
  [v5 setText:v4];
}

- (NSString)titleString
{
  v2 = [(PHCarPlayNoContentBannerView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (NSString)subtitleString
{
  v2 = [(PHCarPlayNoContentBannerView *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

@end