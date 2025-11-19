@interface TrafficFeatureTitleView
- (CGSize)intrinsicContentSize;
- (NSString)subtitle;
- (NSString)title;
- (TrafficFeatureTitleView)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (void)setImage:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
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

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(TrafficFeatureTitleView *)self subtitleLabel];
  [v5 setText:v4];
}

- (NSString)subtitle
{
  v2 = [(TrafficFeatureTitleView *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(TrafficFeatureTitleView *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)title
{
  v2 = [(TrafficFeatureTitleView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(TrafficFeatureTitleView *)self imageView];
  [v5 setImage:v4];
}

- (UIImage)image
{
  v2 = [(TrafficFeatureTitleView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (TrafficFeatureTitleView)initWithFrame:(CGRect)a3
{
  v94.receiver = self;
  v94.super_class = TrafficFeatureTitleView;
  v3 = [(TrafficFeatureTitleView *)&v94 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v18 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = &v18->super;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = +[UIFont system15];
    [(UILabel *)v3->_subtitleLabel setFont:v20];

    v21 = +[UIColor labelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v21];

    [(TrafficFeatureTitleView *)v3 addSubview:v3->_subtitleLabel];
    v22 = objc_alloc_init(UILayoutGuide);
    [(TrafficFeatureTitleView *)v3 addLayoutGuide:v22];
    v23 = [(TrafficFeatureTitleView *)v3 traitCollection];
    if ([v23 userInterfaceIdiom] == 5)
    {
      v24 = 20.0;
    }

    else
    {
      v24 = 40.0;
    }

    v25 = [(TrafficFeatureTitleView *)v3 traitCollection];
    if ([v25 userInterfaceIdiom] == 5)
    {
      v26 = 5.0;
    }

    else
    {
      v26 = 10.0;
    }

    v93 = [(TrafficFeatureTitleView *)v3 imageView];
    v92 = [v93 leadingAnchor];
    v91 = [(TrafficFeatureTitleView *)v3 leadingAnchor];
    v90 = [v92 constraintEqualToAnchor:v91 constant:15.0];
    v96[0] = v90;
    v89 = [(TrafficFeatureTitleView *)v3 imageView];
    v88 = [v89 widthAnchor];
    v87 = [v88 constraintEqualToConstant:v24];
    v96[1] = v87;
    v86 = [(TrafficFeatureTitleView *)v3 imageView];
    v85 = [v86 heightAnchor];
    v84 = [v85 constraintEqualToConstant:v24];
    v96[2] = v84;
    v83 = [(TrafficFeatureTitleView *)v3 imageView];
    v82 = [v83 centerYAnchor];
    v81 = [(TrafficFeatureTitleView *)v3 centerYAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v96[3] = v80;
    v79 = [(TrafficFeatureTitleView *)v3 imageView];
    v78 = [v79 topAnchor];
    v77 = [(TrafficFeatureTitleView *)v3 topAnchor];
    v76 = [v78 constraintGreaterThanOrEqualToAnchor:v77];
    v96[4] = v76;
    v75 = [(TrafficFeatureTitleView *)v3 titleLabel];
    v74 = [v75 leadingAnchor];
    v73 = [v22 leadingAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v96[5] = v72;
    v71 = [(TrafficFeatureTitleView *)v3 titleLabel];
    v70 = [v71 trailingAnchor];
    v69 = [v22 trailingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v96[6] = v68;
    v67 = [(TrafficFeatureTitleView *)v3 titleLabel];
    v66 = [v67 topAnchor];
    v65 = [v22 topAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v96[7] = v64;
    v63 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    v62 = [v63 leadingAnchor];
    v61 = [v22 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v96[8] = v60;
    v59 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    v58 = [v59 trailingAnchor];
    v57 = [v22 trailingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v96[9] = v56;
    v55 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    v53 = [v55 topAnchor];
    v54 = [(TrafficFeatureTitleView *)v3 titleLabel];
    v52 = [v54 bottomAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v96[10] = v51;
    v50 = [(TrafficFeatureTitleView *)v3 subtitleLabel];
    v49 = [v50 bottomAnchor];
    v48 = [v22 bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v96[11] = v47;
    v45 = [v22 leadingAnchor];
    v46 = [(TrafficFeatureTitleView *)v3 imageView];
    v44 = [v46 trailingAnchor];
    v27 = [v45 constraintEqualToAnchor:v44 constant:v26];
    v96[12] = v27;
    v28 = [v22 trailingAnchor];
    v29 = [(TrafficFeatureTitleView *)v3 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-15.0];
    v96[13] = v30;
    v31 = [v22 centerYAnchor];
    v32 = [(TrafficFeatureTitleView *)v3 centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v96[14] = v33;
    v34 = [NSArray arrayWithObjects:v96 count:15];
    [NSLayoutConstraint activateConstraints:v34];

    v35 = v22;
    if (sub_10000FA08(v3) == 5)
    {
      v36 = [v22 topAnchor];
      v37 = [(TrafficFeatureTitleView *)v3 topAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];
      v95[0] = v38;
      v39 = [v35 bottomAnchor];
      v40 = [(TrafficFeatureTitleView *)v3 bottomAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      v95[1] = v41;
      v42 = [NSArray arrayWithObjects:v95 count:2];
      [NSLayoutConstraint activateConstraints:v42];
    }
  }

  return v3;
}

@end