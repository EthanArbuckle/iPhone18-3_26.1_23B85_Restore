@interface ExtensionFlowHeaderView
- (ExtensionFlowHeaderView)initWithFrame:(CGRect)a3;
- (ExtensionFlowHeaderViewDelegate)delegate;
- (NSString)detailText;
- (NSString)titleText;
- (UIImage)bannerImage;
- (UIImage)iconImage;
- (void)configureDismissButton;
- (void)configureImages;
- (void)dismissButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setBannerImage:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setDismissButtonType:(unint64_t)a3;
- (void)setIconImage:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setupConstraints;
@end

@implementation ExtensionFlowHeaderView

- (ExtensionFlowHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDismissButtonType:(unint64_t)a3
{
  if (self->_dismissButtonType != a3)
  {
    self->_dismissButtonType = a3;
    [(ExtensionFlowHeaderView *)self configureDismissButton];
  }
}

- (NSString)detailText
{
  v2 = [(ExtensionFlowHeaderView *)self detailLabel];
  v3 = [v2 text];

  return v3;
}

- (NSString)titleText
{
  v2 = [(ExtensionFlowHeaderView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v5 = [(ExtensionFlowHeaderView *)self detailLabel];
  [v5 setText:v4];

  v6 = [v4 length];
  if (v6)
  {
    v7 = [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailPresent];
    [v7 setActive:1];

    [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailNotPresent];
  }

  else
  {
    v8 = [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailNotPresent];
    [v8 setActive:1];

    [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailPresent];
  }
  v9 = ;
  [v9 setActive:0];
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(ExtensionFlowHeaderView *)self titleLabel];
  [v5 setText:v4];
}

- (UIImage)bannerImage
{
  v2 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setBannerImage:(id)a3
{
  v4 = a3;
  v5 = [(ExtensionFlowHeaderView *)self bannerImageView];
  [v5 setImage:v4];

  [(ExtensionFlowHeaderView *)self configureImages];
}

- (UIImage)iconImage
{
  v2 = [(ExtensionFlowHeaderView *)self iconImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setIconImage:(id)a3
{
  v4 = a3;
  v5 = [(ExtensionFlowHeaderView *)self iconImageView];
  [v5 setImage:v4];

  [(ExtensionFlowHeaderView *)self configureImages];
}

- (void)dismissButtonTapped:(id)a3
{
  v4 = [(ExtensionFlowHeaderView *)self delegate];
  [v4 extensionFlowHeaderViewDidTapDismiss:self];
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
  v3 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v4 = [v3 image];

  v5 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v6 = v5;
  if (v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (v4)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [v5 setAlpha:v7];

  v9 = [(ExtensionFlowHeaderView *)self iconImageView];
  [v9 setAlpha:v8];

  v10 = [(ExtensionFlowHeaderView *)self titleLabel];
  [v10 setAlpha:v8];

  v11 = [(ExtensionFlowHeaderView *)self detailLabel];
  [v11 setAlpha:v8];

  v15 = [(ExtensionFlowHeaderView *)self iconImageView];
  v12 = [v15 image];
  if (v12)
  {
    v13 = 15.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [(ExtensionFlowHeaderView *)self iconImageViewLeadingConstraint];
  [v14 setConstant:v13];
}

- (void)configureDismissButton
{
  v3 = [(ExtensionFlowHeaderView *)self dismissButtonType];
  if (v3 == 1)
  {
    v9 = 0;
    v8 = 1;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"extension_flow_done_key" value:@"localized string not found" table:0];
    [v4 setTitle:v6 forState:0];

    v7 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
    [v7 setImage:0 forState:0];

    v8 = 0;
    v9 = 1;
  }

  v10 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  [v10 setHidden:v9];

  v11 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  [v11 setHidden:v8];
}

- (void)setupConstraints
{
  v3 = [(ExtensionFlowHeaderView *)self titleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ExtensionFlowHeaderView *)self detailLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(ExtensionFlowHeaderView *)self iconImageView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(ExtensionFlowHeaderView *)self bannerImageView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(ExtensionFlowHeaderView *)self iconImageView];
  v10 = [v9 leadingAnchor];
  v11 = [(ExtensionFlowHeaderView *)self leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:15.0];
  [(ExtensionFlowHeaderView *)self setIconImageViewLeadingConstraint:v12];

  v13 = [(ExtensionFlowHeaderView *)self titleLabel];
  v14 = [v13 lastBaselineAnchor];
  v15 = [(ExtensionFlowHeaderView *)self topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:28.5];
  [(ExtensionFlowHeaderView *)self setTitleVerticalConstraintDetailPresent:v16];

  v17 = [(ExtensionFlowHeaderView *)self titleLabel];
  v18 = [v17 centerYAnchor];
  v19 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [(ExtensionFlowHeaderView *)self setTitleVerticalConstraintDetailNotPresent:v20];

  v83 = [(ExtensionFlowHeaderView *)self iconImageViewLeadingConstraint];
  v84[0] = v83;
  v82 = [(ExtensionFlowHeaderView *)self iconImageView];
  v81 = [v82 centerYAnchor];
  v80 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v84[1] = v79;
  v78 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v76 = [v78 leadingAnchor];
  v77 = [(ExtensionFlowHeaderView *)self iconImageView];
  v75 = [v77 leadingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v84[2] = v74;
  v73 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v72 = [v73 centerYAnchor];
  v71 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v84[3] = v70;
  v69 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v68 = [v69 widthAnchor];
  v67 = [v68 constraintLessThanOrEqualToConstant:125.0];
  v84[4] = v67;
  v66 = [(ExtensionFlowHeaderView *)self bannerImageView];
  v65 = [v66 heightAnchor];
  v64 = [v65 constraintLessThanOrEqualToConstant:46.0];
  v84[5] = v64;
  v63 = [(ExtensionFlowHeaderView *)self titleLabel];
  v61 = [v63 leadingAnchor];
  v62 = [(ExtensionFlowHeaderView *)self iconImageView];
  v60 = [v62 trailingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60 constant:15.0];
  v84[6] = v59;
  v58 = [(ExtensionFlowHeaderView *)self titleLabel];
  v56 = [v58 trailingAnchor];
  v57 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  v55 = [v57 leadingAnchor];
  v54 = [v56 constraintLessThanOrEqualToAnchor:v55 constant:-15.0];
  v84[7] = v54;
  v53 = [(ExtensionFlowHeaderView *)self titleVerticalConstraintDetailPresent];
  v84[8] = v53;
  v52 = [(ExtensionFlowHeaderView *)self detailLabel];
  v50 = [v52 leadingAnchor];
  v51 = [(ExtensionFlowHeaderView *)self titleLabel];
  v49 = [v51 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v84[9] = v48;
  v47 = [(ExtensionFlowHeaderView *)self detailLabel];
  v45 = [v47 trailingAnchor];
  v46 = [(ExtensionFlowHeaderView *)self titleLabel];
  v44 = [v46 trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v84[10] = v43;
  v42 = [(ExtensionFlowHeaderView *)self detailLabel];
  v40 = [v42 lastBaselineAnchor];
  v41 = [(ExtensionFlowHeaderView *)self titleLabel];
  v39 = [v41 lastBaselineAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:17.5];
  v84[11] = v38;
  v37 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  v36 = [v37 centerYAnchor];
  v35 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v84[12] = v34;
  v33 = [(ExtensionFlowHeaderView *)self dismissButtonX];
  v32 = [v33 trailingAnchor];
  v31 = [(ExtensionFlowHeaderView *)self trailingAnchor];
  v21 = [v32 constraintEqualToAnchor:v31 constant:-15.0];
  v84[13] = v21;
  v22 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  v23 = [v22 centerYAnchor];
  v24 = [(ExtensionFlowHeaderView *)self centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v84[14] = v25;
  v26 = [(ExtensionFlowHeaderView *)self dismissButtonDone];
  v27 = [v26 trailingAnchor];
  v28 = [(ExtensionFlowHeaderView *)self trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-15.0];
  v84[15] = v29;
  v30 = [NSArray arrayWithObjects:v84 count:16];
  [NSLayoutConstraint activateConstraints:v30];
}

- (ExtensionFlowHeaderView)initWithFrame:(CGRect)a3
{
  v42.receiver = self;
  v42.super_class = ExtensionFlowHeaderView;
  v3 = [(ExtensionFlowHeaderView *)&v42 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v29 = [(ExtensionFlowHeaderView *)v4 dismissButtonDone];
    [v29 addTarget:v4 action:"dismissButtonTapped:" forControlEvents:64];

    v30 = [(ExtensionFlowHeaderView *)v4 dismissButtonX];
    [v30 addTarget:v4 action:"dismissButtonTapped:" forControlEvents:64];

    v31 = [(ExtensionFlowHeaderView *)v4 bannerImageView];
    [(ExtensionFlowHeaderView *)v4 addSubview:v31];

    v32 = [(ExtensionFlowHeaderView *)v4 iconImageView];
    [(ExtensionFlowHeaderView *)v4 addSubview:v32];

    v33 = [(ExtensionFlowHeaderView *)v4 titleLabel];
    [(ExtensionFlowHeaderView *)v4 addSubview:v33];

    v34 = [(ExtensionFlowHeaderView *)v4 detailLabel];
    [(ExtensionFlowHeaderView *)v4 addSubview:v34];

    v35 = [(ExtensionFlowHeaderView *)v4 dismissButtonX];
    [(ExtensionFlowHeaderView *)v4 addSubview:v35];

    v36 = [(ExtensionFlowHeaderView *)v4 dismissButtonDone];
    [(ExtensionFlowHeaderView *)v4 addSubview:v36];

    [(ExtensionFlowHeaderView *)v4 setupConstraints];
    [(ExtensionFlowHeaderView *)v4 configureDismissButton];
  }

  return v4;
}

@end