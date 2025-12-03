@interface ExtensionFlowHeaderView
- (ExtensionFlowHeaderView)initWithFrame:(CGRect)frame;
- (ExtensionFlowHeaderViewDelegate)delegate;
- (NSString)detailText;
- (NSString)titleText;
- (UIImage)bannerImage;
- (UIImage)iconImage;
- (void)configureDismissButton;
- (void)configureImages;
- (void)dismissButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setBannerImage:(id)image;
- (void)setDetailText:(id)text;
- (void)setDismissButtonType:(unint64_t)type;
- (void)setIconImage:(id)image;
- (void)setTitleText:(id)text;
- (void)setupConstraints;
@end

@implementation ExtensionFlowHeaderView

- (ExtensionFlowHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDismissButtonType:(unint64_t)type
{
  if (self->_dismissButtonType != type)
  {
    self->_dismissButtonType = type;
    [(ExtensionFlowHeaderView *)self configureDismissButton];
  }
}

- (NSString)detailText
{
  detailLabel = [(ExtensionFlowHeaderView *)self detailLabel];
  text = [detailLabel text];

  return text;
}

- (NSString)titleText
{
  titleLabel = [(ExtensionFlowHeaderView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  detailLabel = [(ExtensionFlowHeaderView *)self detailLabel];
  [detailLabel setText:textCopy];

  v6 = [textCopy length];
  if (v6)
  {
    titleVerticalConstraintDetailPresent = [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailPresent];
    [titleVerticalConstraintDetailPresent setActive:1];

    [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailNotPresent];
  }

  else
  {
    titleVerticalConstraintDetailNotPresent = [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailNotPresent];
    [titleVerticalConstraintDetailNotPresent setActive:1];

    [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailPresent];
  }
  v9 = ;
  [v9 setActive:0];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(ExtensionFlowHeaderView *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (UIImage)bannerImage
{
  bannerImageView = [(ExtensionFlowHeaderView *)self bannerImageView];
  image = [bannerImageView image];

  return image;
}

- (void)setBannerImage:(id)image
{
  imageCopy = image;
  bannerImageView = [(ExtensionFlowHeaderView *)self bannerImageView];
  [bannerImageView setImage:imageCopy];

  [(ExtensionFlowHeaderView *)self configureImages];
}

- (UIImage)iconImage
{
  iconImageView = [(ExtensionFlowHeaderView *)self iconImageView];
  image = [iconImageView image];

  return image;
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  iconImageView = [(ExtensionFlowHeaderView *)self iconImageView];
  [iconImageView setImage:imageCopy];

  [(ExtensionFlowHeaderView *)self configureImages];
}

- (void)dismissButtonTapped:(id)tapped
{
  delegate = [(ExtensionFlowHeaderView *)self delegate];
  [delegate extensionFlowHeaderViewDidTapDismiss:self];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ExtensionFlowHeaderView;
  [(ExtensionFlowHeaderView *)&v4 layoutSubviews];
  v3 = +[UIColor systemBackgroundColor];
  [(ExtensionFlowHeaderView *)self setBackgroundColor:v3];
}

- (void)configureImages
{
  bannerImageView = [(ExtensionFlowHeaderView *)self bannerImageView];
  image = [bannerImageView image];

  bannerImageView2 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v6 = bannerImageView2;
  if (image)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (image)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [bannerImageView2 setAlpha:v7];

  iconImageView = [(ExtensionFlowHeaderView *)self iconImageView];
  [iconImageView setAlpha:v8];

  titleLabel = [(ExtensionFlowHeaderView *)self titleLabel];
  [titleLabel setAlpha:v8];

  detailLabel = [(ExtensionFlowHeaderView *)self detailLabel];
  [detailLabel setAlpha:v8];

  iconImageView2 = [(ExtensionFlowHeaderView *)self iconImageView];
  image2 = [iconImageView2 image];
  if (image2)
  {
    v13 = 15.0;
  }

  else
  {
    v13 = 0.0;
  }

  iconImageViewLeadingConstraint = [(ExtensionFlowHeaderView *)self iconImageViewLeadingConstraint];
  [iconImageViewLeadingConstraint setConstant:v13];
}

- (void)configureDismissButton
{
  dismissButtonType = [(ExtensionFlowHeaderView *)self dismissButtonType];
  if (dismissButtonType == 1)
  {
    v9 = 0;
    v8 = 1;
  }

  else
  {
    if (dismissButtonType)
    {
      return;
    }

    dismissButtonDone = [(ExtensionFlowHeaderView *)self dismissButtonDone];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"extension_flow_done_key" value:@"localized string not found" table:0];
    [dismissButtonDone setTitle:v6 forState:0];

    dismissButtonDone2 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
    [dismissButtonDone2 setImage:0 forState:0];

    v8 = 0;
    v9 = 1;
  }

  dismissButtonX = [(ExtensionFlowHeaderView *)self dismissButtonX];
  [dismissButtonX setHidden:v9];

  dismissButtonDone3 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  [dismissButtonDone3 setHidden:v8];
}

- (void)setupConstraints
{
  titleLabel = [(ExtensionFlowHeaderView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailLabel = [(ExtensionFlowHeaderView *)self detailLabel];
  [detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  dismissButtonX = [(ExtensionFlowHeaderView *)self dismissButtonX];
  [dismissButtonX setTranslatesAutoresizingMaskIntoConstraints:0];

  dismissButtonDone = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  [dismissButtonDone setTranslatesAutoresizingMaskIntoConstraints:0];

  iconImageView = [(ExtensionFlowHeaderView *)self iconImageView];
  [iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  bannerImageView = [(ExtensionFlowHeaderView *)self bannerImageView];
  [bannerImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  iconImageView2 = [(ExtensionFlowHeaderView *)self iconImageView];
  leadingAnchor = [iconImageView2 leadingAnchor];
  leadingAnchor2 = [(ExtensionFlowHeaderView *)self leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  [(ExtensionFlowHeaderView *)self setIconImageViewLeadingConstraint:v12];

  titleLabel2 = [(ExtensionFlowHeaderView *)self titleLabel];
  lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
  topAnchor = [(ExtensionFlowHeaderView *)self topAnchor];
  v16 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:28.5];
  [(ExtensionFlowHeaderView *)self setTitleVerticalConstraintDetailPresent:v16];

  titleLabel3 = [(ExtensionFlowHeaderView *)self titleLabel];
  centerYAnchor = [titleLabel3 centerYAnchor];
  centerYAnchor2 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(ExtensionFlowHeaderView *)self setTitleVerticalConstraintDetailNotPresent:v20];

  iconImageViewLeadingConstraint = [(ExtensionFlowHeaderView *)self iconImageViewLeadingConstraint];
  v84[0] = iconImageViewLeadingConstraint;
  iconImageView3 = [(ExtensionFlowHeaderView *)self iconImageView];
  centerYAnchor3 = [iconImageView3 centerYAnchor];
  centerYAnchor4 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v79 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v84[1] = v79;
  bannerImageView2 = [(ExtensionFlowHeaderView *)self bannerImageView];
  leadingAnchor3 = [bannerImageView2 leadingAnchor];
  iconImageView4 = [(ExtensionFlowHeaderView *)self iconImageView];
  leadingAnchor4 = [iconImageView4 leadingAnchor];
  v74 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v84[2] = v74;
  bannerImageView3 = [(ExtensionFlowHeaderView *)self bannerImageView];
  centerYAnchor5 = [bannerImageView3 centerYAnchor];
  centerYAnchor6 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v70 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v84[3] = v70;
  bannerImageView4 = [(ExtensionFlowHeaderView *)self bannerImageView];
  widthAnchor = [bannerImageView4 widthAnchor];
  v67 = [widthAnchor constraintLessThanOrEqualToConstant:125.0];
  v84[4] = v67;
  bannerImageView5 = [(ExtensionFlowHeaderView *)self bannerImageView];
  heightAnchor = [bannerImageView5 heightAnchor];
  v64 = [heightAnchor constraintLessThanOrEqualToConstant:46.0];
  v84[5] = v64;
  titleLabel4 = [(ExtensionFlowHeaderView *)self titleLabel];
  leadingAnchor5 = [titleLabel4 leadingAnchor];
  iconImageView5 = [(ExtensionFlowHeaderView *)self iconImageView];
  trailingAnchor = [iconImageView5 trailingAnchor];
  v59 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:15.0];
  v84[6] = v59;
  titleLabel5 = [(ExtensionFlowHeaderView *)self titleLabel];
  trailingAnchor2 = [titleLabel5 trailingAnchor];
  dismissButtonX2 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  leadingAnchor6 = [dismissButtonX2 leadingAnchor];
  v54 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor6 constant:-15.0];
  v84[7] = v54;
  titleVerticalConstraintDetailPresent = [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailPresent];
  v84[8] = titleVerticalConstraintDetailPresent;
  detailLabel2 = [(ExtensionFlowHeaderView *)self detailLabel];
  leadingAnchor7 = [detailLabel2 leadingAnchor];
  titleLabel6 = [(ExtensionFlowHeaderView *)self titleLabel];
  leadingAnchor8 = [titleLabel6 leadingAnchor];
  v48 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v84[9] = v48;
  detailLabel3 = [(ExtensionFlowHeaderView *)self detailLabel];
  trailingAnchor3 = [detailLabel3 trailingAnchor];
  titleLabel7 = [(ExtensionFlowHeaderView *)self titleLabel];
  trailingAnchor4 = [titleLabel7 trailingAnchor];
  v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v84[10] = v43;
  detailLabel4 = [(ExtensionFlowHeaderView *)self detailLabel];
  lastBaselineAnchor2 = [detailLabel4 lastBaselineAnchor];
  titleLabel8 = [(ExtensionFlowHeaderView *)self titleLabel];
  lastBaselineAnchor3 = [titleLabel8 lastBaselineAnchor];
  v38 = [lastBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor3 constant:17.5];
  v84[11] = v38;
  dismissButtonX3 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  centerYAnchor7 = [dismissButtonX3 centerYAnchor];
  centerYAnchor8 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v34 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v84[12] = v34;
  dismissButtonX4 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  trailingAnchor5 = [dismissButtonX4 trailingAnchor];
  trailingAnchor6 = [(ExtensionFlowHeaderView *)self trailingAnchor];
  v21 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-15.0];
  v84[13] = v21;
  dismissButtonDone2 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  centerYAnchor9 = [dismissButtonDone2 centerYAnchor];
  centerYAnchor10 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v25 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
  v84[14] = v25;
  dismissButtonDone3 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  trailingAnchor7 = [dismissButtonDone3 trailingAnchor];
  trailingAnchor8 = [(ExtensionFlowHeaderView *)self trailingAnchor];
  v29 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-15.0];
  v84[15] = v29;
  v30 = [NSArray arrayWithObjects:v84 count:16];
  [NSLayoutConstraint activateConstraints:v30];
}

- (ExtensionFlowHeaderView)initWithFrame:(CGRect)frame
{
  v42.receiver = self;
  v42.super_class = ExtensionFlowHeaderView;
  v3 = [(ExtensionFlowHeaderView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionFlowHeaderView *)v3 setAutoresizingMask:2];
    v4->_dismissButtonType = 0;
    v5 = objc_alloc_init(UIImageView);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v5;

    v7 = objc_alloc_init(UIImageView);
    bannerImageView = v4->_bannerImageView;
    v4->_bannerImageView = v7;

    [(UIImageView *)v4->_bannerImageView setContentMode:1];
    v9 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    v11 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
    [(UILabel *)v4->_titleLabel setFont:v11];

    v12 = +[UIColor labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:v12];

    v13 = objc_opt_new();
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v13;

    v15 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_detailLabel setFont:v15];

    v16 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_detailLabel setTextColor:v16];

    v17 = +[UIButton _maps_cardButtonCloseButton];
    dismissButtonX = v4->_dismissButtonX;
    v4->_dismissButtonX = v17;

    v19 = [UIButton buttonWithType:102];
    dismissButtonDone = v4->_dismissButtonDone;
    v4->_dismissButtonDone = v19;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v43[0] = v4->_dismissButtonX;
    v43[1] = v4->_dismissButtonDone;
    v21 = [NSArray arrayWithObjects:v43 count:2, 0];
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v22)
    {
      v24 = v22;
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          LODWORD(v23) = 1148846080;
          [v27 setContentCompressionResistancePriority:0 forAxis:v23];
          LODWORD(v28) = 1148846080;
          [v27 setContentHuggingPriority:0 forAxis:v28];
        }

        v24 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v24);
    }

    dismissButtonDone = [(ExtensionFlowHeaderView *)v4 dismissButtonDone];
    [dismissButtonDone addTarget:v4 action:"dismissButtonTapped:" forControlEvents:64];

    dismissButtonX = [(ExtensionFlowHeaderView *)v4 dismissButtonX];
    [dismissButtonX addTarget:v4 action:"dismissButtonTapped:" forControlEvents:64];

    bannerImageView = [(ExtensionFlowHeaderView *)v4 bannerImageView];
    [(ExtensionFlowHeaderView *)v4 addSubview:bannerImageView];

    iconImageView = [(ExtensionFlowHeaderView *)v4 iconImageView];
    [(ExtensionFlowHeaderView *)v4 addSubview:iconImageView];

    titleLabel = [(ExtensionFlowHeaderView *)v4 titleLabel];
    [(ExtensionFlowHeaderView *)v4 addSubview:titleLabel];

    detailLabel = [(ExtensionFlowHeaderView *)v4 detailLabel];
    [(ExtensionFlowHeaderView *)v4 addSubview:detailLabel];

    dismissButtonX2 = [(ExtensionFlowHeaderView *)v4 dismissButtonX];
    [(ExtensionFlowHeaderView *)v4 addSubview:dismissButtonX2];

    dismissButtonDone2 = [(ExtensionFlowHeaderView *)v4 dismissButtonDone];
    [(ExtensionFlowHeaderView *)v4 addSubview:dismissButtonDone2];

    [(ExtensionFlowHeaderView *)v4 setupConstraints];
    [(ExtensionFlowHeaderView *)v4 configureDismissButton];
  }

  return v4;
}

@end