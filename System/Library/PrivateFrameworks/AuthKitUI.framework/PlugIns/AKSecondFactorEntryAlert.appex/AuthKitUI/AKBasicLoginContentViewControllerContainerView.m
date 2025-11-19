@interface AKBasicLoginContentViewControllerContainerView
- (AKBasicLoginContentViewControllerContainerView)initWithFrame:(CGRect)a3;
- (NSString)messageText;
- (NSString)titleText;
- (id)viewForLastBaselineLayout;
- (void)_configureBannerImage;
- (void)_configureMessageLabel;
- (void)setBannerImage:(id)a3;
- (void)setMessageText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
@end

@implementation AKBasicLoginContentViewControllerContainerView

- (AKBasicLoginContentViewControllerContainerView)initWithFrame:(CGRect)a3
{
  v17 = a3;
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = AKBasicLoginContentViewControllerContainerView;
  v12 = [(AKBasicLoginContentViewControllerContainerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v16 = v12;
  objc_storeStrong(&v16, v12);
  if (v12)
  {
    v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v16->_titleLabel;
    v16->_titleLabel = v3;

    v13 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0 options:2];
    v9 = [UIFont fontWithDescriptor:v13 size:0.0];
    [(UILabel *)v16->_titleLabel setFont:?];

    [(UILabel *)v16->_titleLabel setNumberOfLines:0];
    v10 = +[AKFeatureManager sharedManager];
    v11 = [v10 isAuthKitSolariumFeatureEnabled];

    if (v11)
    {
      [(UILabel *)v16->_titleLabel setTextAlignment:4];
    }

    else
    {
      [(UILabel *)v16->_titleLabel setTextAlignment:1];
    }

    v8 = [(AKBasicLoginContentViewControllerContainerView *)v16 titleText];
    [(UILabel *)v16->_titleLabel setText:?];

    [(UILabel *)v16->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1055286886;
    [(UILabel *)v16->_titleLabel _setHyphenationFactor:v5];
    [(UILabel *)v16->_titleLabel setPreferredMaxLayoutWidth:238.0];
    [(AKBasicLoginContentViewControllerContainerView *)v16 _configureMessageLabel];
    [(AKBasicLoginContentViewControllerContainerView *)v16 addSubview:v16->_titleLabel];
    objc_storeStrong(&v13, 0);
  }

  v7 = v16;
  objc_storeStrong(&v16, 0);
  return v7;
}

- (id)viewForLastBaselineLayout
{
  if (self->_messageLabel)
  {
    return self->_messageLabel;
  }

  else
  {
    return self->_titleLabel;
  }
}

- (void)updateConstraints
{
  v50 = self;
  v49 = a2;
  [NSLayoutConstraint deactivateConstraints:self->_activeConstraints];
  v29 = 0;
  if (v50->_messageText)
  {
    v29 = [(NSString *)v50->_messageText length]!= 0;
  }

  v48 = v29;
  v47 = +[NSMutableArray array];
  v44 = 0;
  v42 = 0;
  if (v29)
  {
    v45 = _NSDictionaryOfVariableBindings(@"_titleLabel,_messageLabel", v50->_titleLabel, v50->_messageLabel, 0);
    v44 = 1;
    v28 = v45;
  }

  else
  {
    v43 = _NSDictionaryOfVariableBindings(@"_titleLabel", v50->_titleLabel, 0);
    v42 = 1;
    v28 = v43;
  }

  v46 = v28;
  if (v42)
  {
  }

  if (v44)
  {
  }

  v41 = &off_10000C780;
  v40 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  if (v50->_bannerView)
  {
    v39 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v50->_bannerView relatedBy:3 toItem:? attribute:? multiplier:? constant:?];
    bannerView = v50->_bannerView;
    titleLabel = v50->_titleLabel;
    [v40 scaledValueForValue:-36.0];
    v25 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v38 = [NSLayoutConstraint constraintWithItem:bannerView attribute:11 relatedBy:0 toItem:titleLabel attribute:12 multiplier:1.0 constant:v2];

    v37 = [NSLayoutConstraint constraintWithItem:v50->_bannerView attribute:9 relatedBy:0 toItem:v50 attribute:1.0 multiplier:0.0 constant:?];
    v26 = v47;
    v52[0] = v37;
    v52[1] = v39;
    v52[2] = v38;
    v27 = [NSArray arrayWithObjects:v52 count:3];
    [v26 addObjectsFromArray:?];

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v20 = v50->_titleLabel;
    v21 = v50;
    [v40 scaledValueForValue:36.0];
    v22 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v36 = [NSLayoutConstraint constraintWithItem:v20 attribute:12 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:v3];

    [v47 addObject:v36];
    objc_storeStrong(&v36, 0);
  }

  if (v48)
  {
    v12 = v50->_titleLabel;
    messageLabel = v50->_messageLabel;
    [v40 scaledValueForValue:-20.0];
    v14 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v35 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:? toItem:? attribute:? multiplier:? constant:?];

    v15 = v50->_messageLabel;
    v16 = v50;
    [v40 scaledValueForValue:-24.0];
    v17 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v34 = [NSLayoutConstraint constraintWithItem:v15 attribute:11 relatedBy:0 toItem:v16 attribute:4 multiplier:1.0 constant:v4];

    v18 = v47;
    v51[0] = v35;
    v51[1] = v34;
    v19 = [NSArray arrayWithObjects:v51 count:2];
    [v18 addObjectsFromArray:?];

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v9 = v50->_titleLabel;
    v10 = v50;
    [v40 scaledValueForValue:-24.0];
    v11 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v33 = [NSLayoutConstraint constraintWithItem:v9 attribute:11 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:v5];

    [v47 addObject:v33];
    objc_storeStrong(&v33, 0);
  }

  v32 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(H_MARGIN)-[_titleLabel]-(H_MARGIN)-|", 0, v41, v46);
  [v47 addObjectsFromArray:v32];
  if (v48)
  {
    v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(H_MARGIN)-[_messageLabel]-(H_MARGIN)-|", 0, v41, v46);
    [v47 addObjectsFromArray:v31];
    objc_storeStrong(&v31, 0);
  }

  [v47 addObjectsFromArray:v32];
  [NSLayoutConstraint activateConstraints:v47];
  [(AKBasicLoginContentViewControllerContainerView *)v50 setContentCompressionResistancePriority:1 forAxis:?];
  LODWORD(v6) = 1144750080;
  [(AKBasicLoginContentViewControllerContainerView *)v50 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [v47 copy];
  activeConstraints = v50->_activeConstraints;
  v50->_activeConstraints = v7;

  v30.receiver = v50;
  v30.super_class = AKBasicLoginContentViewControllerContainerView;
  [(AKBasicLoginContentViewControllerContainerView *)&v30 updateConstraints];
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
}

- (void)_configureBannerImage
{
  if (self->_bannerImage)
  {
    v5 = [UIImageView alloc];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = +[UIScreen mainScreen];
    v7 = [(UIScreen *)v8 _defaultTraitCollection];
    v6 = [UIImage imageNamed:@"AppleID" inBundle:v9 compatibleWithTraitCollection:?];
    v2 = [v5 initWithImage:?];
    bannerView = self->_bannerView;
    self->_bannerView = v2;

    [(UIImageView *)self->_bannerView setContentMode:4];
    [(UIImageView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [UIImageView setContentHuggingPriority:"setContentHuggingPriority:forAxis:" forAxis:?];
    LODWORD(v4) = 1144750080;
    [(UIImageView *)self->_bannerView setContentCompressionResistancePriority:1 forAxis:v4];
    [(AKBasicLoginContentViewControllerContainerView *)self addSubview:self->_bannerView];
  }

  else
  {
    if (self->_bannerView)
    {
      [(UIImageView *)self->_bannerView removeFromSuperview];
    }

    objc_storeStrong(&self->_bannerView, 0);
  }

  [(AKBasicLoginContentViewControllerContainerView *)self setNeedsUpdateConstraints];
}

- (void)_configureMessageLabel
{
  v13 = self;
  v12 = a2;
  v9 = 0;
  if (self->_messageText)
  {
    v9 = [(NSString *)v13->_messageText length]!= 0;
  }

  v11 = v9;
  if (v9)
  {
    if (!v13->_messageLabel)
    {
      v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      messageLabel = v13->_messageLabel;
      v13->_messageLabel = v2;

      location = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
      v6 = [UIFont fontWithDescriptor:location size:0.0];
      [(UILabel *)v13->_messageLabel setFont:?];

      v7 = +[AKFeatureManager sharedManager];
      v8 = [v7 isAuthKitSolariumFeatureEnabled];

      if (v8)
      {
        [(UILabel *)v13->_messageLabel setTextAlignment:4];
      }

      else
      {
        [(UILabel *)v13->_messageLabel setTextAlignment:1];
      }

      [(UILabel *)v13->_messageLabel setNumberOfLines:0];
      [(UILabel *)v13->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v4) = 1055286886;
      [(UILabel *)v13->_messageLabel _setHyphenationFactor:v4];
      [(UILabel *)v13->_messageLabel setPreferredMaxLayoutWidth:238.0];
      [(AKBasicLoginContentViewControllerContainerView *)v13 addSubview:v13->_messageLabel];
      objc_storeStrong(&location, 0);
    }

    v5 = [(AKBasicLoginContentViewControllerContainerView *)v13 messageText];
    [(UILabel *)v13->_messageLabel setText:?];
  }

  else
  {
    if (v13->_messageLabel)
    {
      [(UILabel *)v13->_messageLabel removeFromSuperview];
    }

    objc_storeStrong(&v13->_messageLabel, 0);
  }

  [(AKBasicLoginContentViewControllerContainerView *)v13 setNeedsUpdateConstraints];
}

- (void)setTitleText:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  titleText = v6->_titleText;
  v6->_titleText = v3;

  [(UILabel *)v6->_titleLabel setText:v6->_titleText];
  [(AKBasicLoginContentViewControllerContainerView *)v6 setNeedsUpdateConstraints];
  objc_storeStrong(location, 0);
}

- (NSString)titleText
{
  v2 = [(NSString *)self->_titleText copy:a2];

  return v2;
}

- (void)setMessageText:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  messageText = v6->_messageText;
  v6->_messageText = v3;

  [(AKBasicLoginContentViewControllerContainerView *)v6 _configureMessageLabel];
  objc_storeStrong(location, 0);
}

- (NSString)messageText
{
  v2 = [(NSString *)self->_messageText copy:a2];

  return v2;
}

- (void)setBannerImage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_bannerImage, location[0]);
  [(AKBasicLoginContentViewControllerContainerView *)v4 _configureBannerImage];
  objc_storeStrong(location, 0);
}

@end