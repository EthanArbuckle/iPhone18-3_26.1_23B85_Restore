@interface TrafficFeatureTitleView
- (CGSize)intrinsicContentSize;
- (NSString)subtitle;
- (NSString)title;
- (TrafficFeatureTitleView)initWithFrame:(CGRect)frame;
- (UIImage)image;
- (void)setImage:(id)image;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation TrafficFeatureTitleView

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(TrafficFeatureTitleView *)self subtitleLabel];
  [subtitleLabel setText:subtitleCopy];
}

- (NSString)subtitle
{
  subtitleLabel = [(TrafficFeatureTitleView *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(TrafficFeatureTitleView *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (NSString)title
{
  titleLabel = [(TrafficFeatureTitleView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(TrafficFeatureTitleView *)self imageView];
  [imageView setImage:imageCopy];
}

- (UIImage)image
{
  imageView = [(TrafficFeatureTitleView *)self imageView];
  image = [imageView image];

  return image;
}

- (TrafficFeatureTitleView)initWithFrame:(CGRect)frame
{
  v94.receiver = self;
  v94.super_class = TrafficFeatureTitleView;
  v3 = [(TrafficFeatureTitleView *)&v94 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TrafficFeatureTitleView *)v3 setBackgroundColor:v4];

    v5 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageView = v3->_imageView;
    v3->_imageView = v9;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:1];
    LODWORD(v11) = 1148846080;
    [(UIImageView *)v3->_imageView setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIImageView *)v3->_imageView setContentHuggingPriority:0 forAxis:v12];
    [(TrafficFeatureTitleView *)v3 addSubview:v3->_imageView];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v13;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (sub_10000FA08(v3) == 5)
    {
      v15 = +[UIFont system20Bold];
      [(UILabel *)v3->_titleLabel setFont:v15];

      [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    }

    else
    {
      v16 = +[UIFont system22AdaptiveSemibold];
      [(UILabel *)v3->_titleLabel setFont:v16];
    }

    v17 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v17];

    [(TrafficFeatureTitleView *)v3 addSubview:v3->_titleLabel];
    height = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = &height->super;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = +[UIFont system15];
    [(UILabel *)v3->_subtitleLabel setFont:v20];

    v21 = +[UIColor labelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v21];

    [(TrafficFeatureTitleView *)v3 addSubview:v3->_subtitleLabel];
    v22 = objc_alloc_init(UILayoutGuide);
    [(TrafficFeatureTitleView *)v3 addLayoutGuide:v22];
    traitCollection = [(TrafficFeatureTitleView *)v3 traitCollection];
    if ([traitCollection userInterfaceIdiom] == 5)
    {
      v24 = 20.0;
    }

    else
    {
      v24 = 40.0;
    }

    traitCollection2 = [(TrafficFeatureTitleView *)v3 traitCollection];
    if ([traitCollection2 userInterfaceIdiom] == 5)
    {
      v26 = 5.0;
    }

    else
    {
      v26 = 10.0;
    }

    imageView = [(TrafficFeatureTitleView *)v3 imageView];
    leadingAnchor = [imageView leadingAnchor];
    leadingAnchor2 = [(TrafficFeatureTitleView *)v3 leadingAnchor];
    v90 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v96[0] = v90;
    imageView2 = [(TrafficFeatureTitleView *)v3 imageView];
    widthAnchor = [imageView2 widthAnchor];
    v87 = [widthAnchor constraintEqualToConstant:v24];
    v96[1] = v87;
    imageView3 = [(TrafficFeatureTitleView *)v3 imageView];
    heightAnchor = [imageView3 heightAnchor];
    v84 = [heightAnchor constraintEqualToConstant:v24];
    v96[2] = v84;
    imageView4 = [(TrafficFeatureTitleView *)v3 imageView];
    centerYAnchor = [imageView4 centerYAnchor];
    centerYAnchor2 = [(TrafficFeatureTitleView *)v3 centerYAnchor];
    v80 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v96[3] = v80;
    imageView5 = [(TrafficFeatureTitleView *)v3 imageView];
    topAnchor = [imageView5 topAnchor];
    topAnchor2 = [(TrafficFeatureTitleView *)v3 topAnchor];
    v76 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v96[4] = v76;
    titleLabel = [(TrafficFeatureTitleView *)v3 titleLabel];
    leadingAnchor3 = [titleLabel leadingAnchor];
    leadingAnchor4 = [v22 leadingAnchor];
    v72 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v96[5] = v72;
    titleLabel2 = [(TrafficFeatureTitleView *)v3 titleLabel];
    trailingAnchor = [titleLabel2 trailingAnchor];
    trailingAnchor2 = [v22 trailingAnchor];
    v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v96[6] = v68;
    titleLabel3 = [(TrafficFeatureTitleView *)v3 titleLabel];
    topAnchor3 = [titleLabel3 topAnchor];
    topAnchor4 = [v22 topAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v96[7] = v64;
    subtitleLabel = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    leadingAnchor5 = [subtitleLabel leadingAnchor];
    leadingAnchor6 = [v22 leadingAnchor];
    v60 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v96[8] = v60;
    subtitleLabel2 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    trailingAnchor3 = [subtitleLabel2 trailingAnchor];
    trailingAnchor4 = [v22 trailingAnchor];
    v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v96[9] = v56;
    subtitleLabel3 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    topAnchor5 = [subtitleLabel3 topAnchor];
    titleLabel4 = [(TrafficFeatureTitleView *)v3 titleLabel];
    bottomAnchor = [titleLabel4 bottomAnchor];
    v51 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
    v96[10] = v51;
    subtitleLabel4 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    bottomAnchor2 = [subtitleLabel4 bottomAnchor];
    bottomAnchor3 = [v22 bottomAnchor];
    v47 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v96[11] = v47;
    leadingAnchor7 = [v22 leadingAnchor];
    imageView6 = [(TrafficFeatureTitleView *)v3 imageView];
    trailingAnchor5 = [imageView6 trailingAnchor];
    v27 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:v26];
    v96[12] = v27;
    trailingAnchor6 = [v22 trailingAnchor];
    trailingAnchor7 = [(TrafficFeatureTitleView *)v3 trailingAnchor];
    v30 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-15.0];
    v96[13] = v30;
    centerYAnchor3 = [v22 centerYAnchor];
    centerYAnchor4 = [(TrafficFeatureTitleView *)v3 centerYAnchor];
    v33 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v96[14] = v33;
    v34 = [NSArray arrayWithObjects:v96 count:15];
    [NSLayoutConstraint activateConstraints:v34];

    v35 = v22;
    if (sub_10000FA08(v3) == 5)
    {
      topAnchor6 = [v22 topAnchor];
      topAnchor7 = [(TrafficFeatureTitleView *)v3 topAnchor];
      v38 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
      v95[0] = v38;
      bottomAnchor4 = [v35 bottomAnchor];
      bottomAnchor5 = [(TrafficFeatureTitleView *)v3 bottomAnchor];
      v41 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v95[1] = v41;
      v42 = [NSArray arrayWithObjects:v95 count:2];
      [NSLayoutConstraint activateConstraints:v42];
    }
  }

  return v3;
}

@end