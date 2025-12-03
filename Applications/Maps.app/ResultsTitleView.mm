@interface ResultsTitleView
- (BOOL)editSearchButtonWillTruncate;
- (ResultsTitleView)initWithFrame:(CGRect)frame;
- (ResultsTitleViewDelegate)delegate;
- (void)didTapEditButton:(id)button;
- (void)setHeaderImage:(id)image;
- (void)updateEditSearchButtonConstraints;
- (void)updateHeaderContent;
- (void)updateLabelFonts;
- (void)updateTitleNumberOfLines;
@end

@implementation ResultsTitleView

- (ResultsTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapEditButton:(id)button
{
  delegate = [(ResultsTitleView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ResultsTitleView *)self delegate];
    currentUITargetForAnalytics = [delegate2 currentUITargetForAnalytics];
  }

  else
  {
    currentUITargetForAnalytics = 0;
  }

  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:2033 onTarget:currentUITargetForAnalytics eventValue:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editSearchButtonTapped];
}

- (void)updateTitleNumberOfLines
{
  if (+[UIFont accessibilityTextEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(MapsThemeLabel *)self->_titleLabel setNumberOfLines:v3];
  subtitleLabel = self->_subtitleLabel;

  [(MapsThemeLabel *)subtitleLabel setNumberOfLines:v3];
}

- (BOOL)editSearchButtonWillTruncate
{
  text = [(MapsThemeLabel *)self->_subtitleLabel text];
  titleLabel = [(MapsThemeButton *)self->_editSearchButton titleLabel];
  text2 = [titleLabel text];
  v6 = [NSString stringWithFormat:@"%@%@", text, text2];

  traitCollection = [(ResultsTitleView *)self traitCollection];
  v8 = [(ResultsTitleView *)self effectiveTraitCollectionWithTraitCollection:traitCollection];

  v26 = NSFontAttributeName;
  v9 = [(ResultsTitleView *)self subtitlefontWithTraitCollection:v8];
  v27 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v6 sizeWithAttributes:v10];
  v12 = v11;

  [(ResultsTitleView *)self frame];
  v14 = v13;
  [(ResultsTitleView *)self layoutMargins];
  v16 = v15;
  [(ResultsTitleView *)self layoutMargins];
  v18 = 0.0;
  if (v14 >= v17 + v16)
  {
    [(ResultsTitleView *)self frame];
    v20 = v19;
    [(ResultsTitleView *)self layoutMargins];
    v22 = v21;
    [(ResultsTitleView *)self layoutMargins];
    v18 = v20 - (v22 + v23);
  }

  v24 = ceil(v12) > v18;

  return v24;
}

- (void)updateEditSearchButtonConstraints
{
  if ([(ResultsTitleView *)self editSearchButtonWillTruncate]&& +[UIFont accessibilityTextEnabled])
  {
    v3 = &OBJC_IVAR___ResultsTitleView__singleLineEditSearchConstraints;
    v4 = &OBJC_IVAR___ResultsTitleView__multipleLineEditSearchConstraints;
  }

  else
  {
    v3 = &OBJC_IVAR___ResultsTitleView__multipleLineEditSearchConstraints;
    v4 = &OBJC_IVAR___ResultsTitleView__singleLineEditSearchConstraints;
  }

  [NSLayoutConstraint activateConstraints:*(&self->super.super.super.super.isa + *v4)];
  v5 = *(&self->super.super.super.super.isa + *v3);

  [NSLayoutConstraint deactivateConstraints:v5];
}

- (void)updateLabelFonts
{
  traitCollection = [(ResultsTitleView *)self traitCollection];
  v7 = [(ResultsTitleView *)self effectiveTraitCollectionWithTraitCollection:traitCollection];

  v4 = [(ResultsTitleView *)self titlefontWithTraitCollection:v7];
  v5 = [(ResultsTitleView *)self subtitlefontWithTraitCollection:v7];
  [(MapsThemeLabel *)self->_titleLabel setFont:v4];
  [(MapsThemeLabel *)self->_subtitleLabel setFont:v5];
  titleLabel = [(MapsThemeButton *)self->_editSearchButton titleLabel];
  [titleLabel setFont:v5];
}

- (void)updateHeaderContent
{
  [(ResultsTitleView *)self updateLabelFonts];
  [(ResultsTitleView *)self updateTitleNumberOfLines];
  headerImage = [(ResultsTitleView *)self headerImage];

  if (headerImage)
  {
    headerImage2 = [(ResultsTitleView *)self headerImage];
    p_headerImageView = &self->_headerImageView;
    [(UIImageView *)self->_headerImageView setImage:headerImage2];

    v6 = &OBJC_IVAR___ResultsTitleView__titleHeaderConstraints;
    v7 = &OBJC_IVAR___ResultsTitleView__imageHeaderConstraints;
  }

  else
  {
    p_headerImageView = &self->_headerImageView;
    v6 = &OBJC_IVAR___ResultsTitleView__imageHeaderConstraints;
    v7 = &OBJC_IVAR___ResultsTitleView__titleHeaderConstraints;
  }

  [(UIImageView *)*p_headerImageView setHidden:headerImage == 0];
  [NSLayoutConstraint activateConstraints:*(&self->super.super.super.super.isa + *v7)];
  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.super.isa + *v6)];
  [(MapsThemeButton *)self->_editSearchButton setHidden:self->_editButtonHidden];
  [(NSLayoutConstraint *)self->_subTitleTrailingConstraint setActive:self->_editButtonHidden];

  [(ResultsTitleView *)self updateEditSearchButtonConstraints];
}

- (void)setHeaderImage:(id)image
{
  objc_storeStrong(&self->_headerImage, image);

  [(ResultsTitleView *)self updateHeaderContent];
}

- (ResultsTitleView)initWithFrame:(CGRect)frame
{
  v124.receiver = self;
  v124.super_class = ResultsTitleView;
  v3 = [(ResultsTitleView *)&v124 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ResultsTitleView *)v3 setAccessibilityIdentifier:@"ResultsTitleView"];
    v5 = [[MapsThemeButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    editSearchButton = v4->_editSearchButton;
    v4->_editSearchButton = v5;

    [(MapsThemeButton *)v4->_editSearchButton setAccessibilityIdentifier:@"EditSearchButton"];
    [(MapsThemeButton *)v4->_editSearchButton setTitleColorProvider:&stru_1016309D0];
    [(MapsThemeButton *)v4->_editSearchButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeButton *)v4->_editSearchButton setContentHorizontalAlignment:4];
    v4->_editButtonHidden = 1;
    [(MapsThemeButton *)v4->_editSearchButton addTarget:v4 action:"didTapEditButton:" forControlEvents:64];
    v7 = v4->_editSearchButton;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Edit Search" value:@"localized string not found" table:0];
    [(MapsThemeButton *)v7 setTitle:v9 forState:0];

    v10 = objc_alloc_init(MapsThemeLabel);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(MapsThemeLabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(MapsThemeLabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[UIColor clearColor];
    [(MapsThemeLabel *)v4->_titleLabel setBackgroundColor:v12];

    v13 = +[UIColor labelColor];
    [(MapsThemeLabel *)v4->_titleLabel setTextColor:v13];

    v14 = objc_alloc_init(MapsThemeLabel);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v14;

    [(MapsThemeLabel *)v4->_subtitleLabel setAccessibilityIdentifier:@"SubtitleLabel"];
    [(MapsThemeLabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[UIColor clearColor];
    [(MapsThemeLabel *)v4->_subtitleLabel setBackgroundColor:v16];

    v17 = +[UIColor secondaryLabelColor];
    [(MapsThemeLabel *)v4->_subtitleLabel setTextColor:v17];

    v18 = objc_alloc_init(UIImageView);
    headerImageView = v4->_headerImageView;
    v4->_headerImageView = v18;

    [(UIImageView *)v4->_headerImageView setAccessibilityIdentifier:@"HeaderImageView"];
    [(UIImageView *)v4->_headerImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ResultsTitleView *)v4 updateLabelFonts];
    [(ResultsTitleView *)v4 updateTitleNumberOfLines];
    [(ResultsTitleView *)v4 addSubview:v4->_titleLabel];
    [(ResultsTitleView *)v4 addSubview:v4->_subtitleLabel];
    [(ResultsTitleView *)v4 addSubview:v4->_editSearchButton];
    [(ResultsTitleView *)v4 addSubview:v4->_headerImageView];
    leadingAnchor = [(MapsThemeButton *)v4->_editSearchButton leadingAnchor];
    trailingAnchor = [(MapsThemeLabel *)v4->_subtitleLabel trailingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
    v128[0] = v22;
    firstBaselineAnchor = [(MapsThemeButton *)v4->_editSearchButton firstBaselineAnchor];
    firstBaselineAnchor2 = [(MapsThemeLabel *)v4->_subtitleLabel firstBaselineAnchor];
    LODWORD(v25) = 1148846080;
    v26 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:0.0 priority:v25];
    v128[1] = v26;
    heightAnchor = [(ResultsTitleView *)v4 heightAnchor];
    v28 = [heightAnchor constraintGreaterThanOrEqualToConstant:82.0];
    v128[2] = v28;
    v29 = [NSArray arrayWithObjects:v128 count:3];
    singleLineEditSearchConstraints = v4->_singleLineEditSearchConstraints;
    v4->_singleLineEditSearchConstraints = v29;

    leadingAnchor2 = [(MapsThemeButton *)v4->_editSearchButton leadingAnchor];
    leadingAnchor3 = [(MapsThemeLabel *)v4->_subtitleLabel leadingAnchor];
    v31 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v127[0] = v31;
    topAnchor = [(MapsThemeButton *)v4->_editSearchButton topAnchor];
    bottomAnchor = [(MapsThemeLabel *)v4->_subtitleLabel bottomAnchor];
    v34 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:1.5];
    v127[1] = v34;
    trailingAnchor2 = [(MapsThemeLabel *)v4->_subtitleLabel trailingAnchor];
    trailingAnchor3 = [(ResultsTitleView *)v4 trailingAnchor];
    v37 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v127[2] = v37;
    heightAnchor2 = [(ResultsTitleView *)v4 heightAnchor];
    v39 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:170.0];
    v127[3] = v39;
    v40 = [NSArray arrayWithObjects:v127 count:4];
    multipleLineEditSearchConstraints = v4->_multipleLineEditSearchConstraints;
    v4->_multipleLineEditSearchConstraints = v40;

    centerYAnchor = [(MapsThemeLabel *)v4->_titleLabel centerYAnchor];
    centerYAnchor2 = [(ResultsTitleView *)v4 centerYAnchor];
    LODWORD(v44) = 1144750080;
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0 priority:v44];
    topLabelCenterYConstraint = v4->_topLabelCenterYConstraint;
    v4->_topLabelCenterYConstraint = v45;

    trailingAnchor4 = [(MapsThemeLabel *)v4->_subtitleLabel trailingAnchor];
    trailingAnchor5 = [(ResultsTitleView *)v4 trailingAnchor];
    v49 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    subTitleTrailingConstraint = v4->_subTitleTrailingConstraint;
    v4->_subTitleTrailingConstraint = v49;

    leadingAnchor4 = [(MapsThemeLabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor5 = [(ResultsTitleView *)v4 leadingAnchor];
    v115 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
    v126[0] = v115;
    trailingAnchor6 = [(MapsThemeLabel *)v4->_titleLabel trailingAnchor];
    trailingAnchor7 = [(ResultsTitleView *)v4 trailingAnchor];
    v109 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:0.0];
    v126[1] = v109;
    topAnchor2 = [(MapsThemeLabel *)v4->_titleLabel topAnchor];
    topAnchor3 = [(ResultsTitleView *)v4 topAnchor];
    v103 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:16.0];
    v126[2] = v103;
    leadingAnchor6 = [(MapsThemeLabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor7 = [(MapsThemeLabel *)v4->_titleLabel leadingAnchor];
    v97 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v126[3] = v97;
    topAnchor4 = [(MapsThemeLabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor2 = [(MapsThemeLabel *)v4->_titleLabel bottomAnchor];
    LODWORD(v53) = 1148846080;
    v54 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:1.5 priority:v53];
    v126[4] = v54;
    trailingAnchor8 = [(MapsThemeButton *)v4->_editSearchButton trailingAnchor];
    trailingAnchor9 = [(ResultsTitleView *)v4 trailingAnchor];
    v57 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:trailingAnchor9];
    v126[5] = v57;
    bottomAnchor3 = [(ResultsTitleView *)v4 bottomAnchor];
    lastBaselineAnchor = [(MapsThemeButton *)v4->_editSearchButton lastBaselineAnchor];
    v60 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:24.0];
    v126[6] = v60;
    v61 = [NSArray arrayWithObjects:v126 count:7];
    titleHeaderConstraints = v4->_titleHeaderConstraints;
    v4->_titleHeaderConstraints = v61;

    v63 = objc_alloc_init(UILayoutGuide);
    [(ResultsTitleView *)v4 addLayoutGuide:v63];
    topAnchor5 = [v63 topAnchor];
    topAnchor6 = [(MapsThemeLabel *)v4->_titleLabel topAnchor];
    v116 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v125[0] = v116;
    bottomAnchor4 = [v63 bottomAnchor];
    bottomAnchor5 = [(MapsThemeLabel *)v4->_subtitleLabel bottomAnchor];
    v108 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v110 = v63;
    v125[1] = v108;
    leadingAnchor8 = [v63 leadingAnchor];
    leadingAnchor9 = [(ResultsTitleView *)v4 leadingAnchor];
    v102 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:16.0];
    v125[2] = v102;
    leadingAnchor10 = [(UIImageView *)v4->_headerImageView leadingAnchor];
    leadingAnchor11 = [v63 leadingAnchor];
    v96 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
    v125[3] = v96;
    centerYAnchor3 = [(UIImageView *)v4->_headerImageView centerYAnchor];
    centerYAnchor4 = [v63 centerYAnchor];
    v93 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v125[4] = v93;
    widthAnchor = [(UIImageView *)v4->_headerImageView widthAnchor];
    v91 = [widthAnchor constraintEqualToConstant:30.0];
    v125[5] = v91;
    heightAnchor3 = [(UIImageView *)v4->_headerImageView heightAnchor];
    v89 = [heightAnchor3 constraintEqualToConstant:30.0];
    v125[6] = v89;
    leadingAnchor12 = [(MapsThemeLabel *)v4->_titleLabel leadingAnchor];
    trailingAnchor10 = [(UIImageView *)v4->_headerImageView trailingAnchor];
    v87 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor10 constant:10.0];
    v125[7] = v87;
    trailingAnchor11 = [(MapsThemeLabel *)v4->_titleLabel trailingAnchor];
    trailingAnchor12 = [(ResultsTitleView *)v4 trailingAnchor];
    v84 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v125[8] = v84;
    topAnchor7 = [(MapsThemeLabel *)v4->_titleLabel topAnchor];
    topAnchor8 = [(ResultsTitleView *)v4 topAnchor];
    v81 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:16.0];
    v125[9] = v81;
    leadingAnchor13 = [(MapsThemeLabel *)v4->_subtitleLabel leadingAnchor];
    leadingAnchor14 = [(MapsThemeLabel *)v4->_titleLabel leadingAnchor];
    v78 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v125[10] = v78;
    topAnchor9 = [(MapsThemeLabel *)v4->_subtitleLabel topAnchor];
    bottomAnchor6 = [(MapsThemeLabel *)v4->_titleLabel bottomAnchor];
    LODWORD(v66) = 1148846080;
    v67 = [topAnchor9 constraintEqualToAnchor:bottomAnchor6 constant:1.5 priority:v66];
    v125[11] = v67;
    trailingAnchor13 = [(MapsThemeButton *)v4->_editSearchButton trailingAnchor];
    trailingAnchor14 = [(ResultsTitleView *)v4 trailingAnchor];
    v70 = [trailingAnchor13 constraintLessThanOrEqualToAnchor:trailingAnchor14];
    v125[12] = v70;
    bottomAnchor7 = [(ResultsTitleView *)v4 bottomAnchor];
    lastBaselineAnchor2 = [(MapsThemeButton *)v4->_editSearchButton lastBaselineAnchor];
    v73 = [bottomAnchor7 constraintEqualToAnchor:lastBaselineAnchor2 constant:24.0];
    v125[13] = v73;
    v74 = [NSArray arrayWithObjects:v125 count:14];
    imageHeaderConstraints = v4->_imageHeaderConstraints;
    v4->_imageHeaderConstraints = v74;

    v76 = +[NSNotificationCenter defaultCenter];
    [v76 addObserver:v4 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  [(ResultsTitleView *)v4 updateHeaderContent];
  return v4;
}

@end