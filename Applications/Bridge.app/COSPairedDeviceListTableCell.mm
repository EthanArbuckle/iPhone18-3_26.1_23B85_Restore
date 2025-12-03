@interface COSPairedDeviceListTableCell
- (BOOL)_shouldUseSpaceConstrainedLayout;
- (COSPairedDeviceListTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_addProgressBar;
- (void)_configureWatchMessage;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)dimCellUI:(BOOL)i;
- (void)displaySoftwareUpdatePane;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)updateCellLayout;
- (void)updateCellState:(unint64_t)state percentageComplete:(double)complete migratingDevice:(id)device;
@end

@implementation COSPairedDeviceListTableCell

- (COSPairedDeviceListTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v122.receiver = self;
  v122.super_class = COSPairedDeviceListTableCell;
  v9 = [(COSPairedDeviceListTableCell *)&v122 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = objc_opt_new();
    horizontalStack = v9->_horizontalStack;
    v9->_horizontalStack = v10;

    [(UIStackView *)v9->_horizontalStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_horizontalStack setAlignment:3];
    contentView = [(COSPairedDeviceListTableCell *)v9 contentView];
    [contentView addSubview:v9->_horizontalStack];

    v13 = objc_opt_new();
    leadingAnchor = [(UIStackView *)v9->_horizontalStack leadingAnchor];
    contentView2 = [(COSPairedDeviceListTableCell *)v9 contentView];
    [contentView2 leadingAnchor];
    v16 = v121 = specifierCopy;
    v17 = [leadingAnchor constraintEqualToAnchor:v16 constant:18.0];
    leadingSpaceConstraint = v9->_leadingSpaceConstraint;
    v9->_leadingSpaceConstraint = v17;

    LODWORD(v19) = 1148829696;
    [(NSLayoutConstraint *)v9->_leadingSpaceConstraint setPriority:v19];
    [v13 addObject:v9->_leadingSpaceConstraint];
    trailingAnchor = [(UIStackView *)v9->_horizontalStack trailingAnchor];
    contentView3 = [(COSPairedDeviceListTableCell *)v9 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v13 addObject:v23];

    topAnchor = [(UIStackView *)v9->_horizontalStack topAnchor];
    contentView4 = [(COSPairedDeviceListTableCell *)v9 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v13 addObject:v27];

    contentView5 = [(COSPairedDeviceListTableCell *)v9 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v9->_horizontalStack bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    horizontalStackBottomConstraint = v9->_horizontalStackBottomConstraint;
    v9->_horizontalStackBottomConstraint = v31;

    [v13 addObject:v9->_horizontalStackBottomConstraint];
    v33 = objc_alloc_init(COSPairedDeviceListCheckmark);
    checkmark = v9->_checkmark;
    v9->_checkmark = v33;

    [(COSPairedDeviceListCheckmark *)v9->_checkmark setContentMode:1];
    LODWORD(v35) = 1148764160;
    [(COSPairedDeviceListCheckmark *)v9->_checkmark setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148829696;
    [(COSPairedDeviceListCheckmark *)v9->_checkmark setContentCompressionResistancePriority:0 forAxis:v36];
    [(UIStackView *)v9->_horizontalStack addArrangedSubview:v9->_checkmark];
    v37 = [[COSWatchView alloc] initWithStyle:7];
    watchView = v9->_watchView;
    v9->_watchView = v37;

    LODWORD(v39) = 1148682240;
    [(COSWatchView *)v9->_watchView setContentHuggingPriority:0 forAxis:v39];
    LODWORD(v40) = 1148829696;
    [(COSWatchView *)v9->_watchView setContentCompressionResistancePriority:0 forAxis:v40];
    widthAnchor = [(COSWatchView *)v9->_watchView widthAnchor];
    v42 = [widthAnchor constraintLessThanOrEqualToConstant:0.0];
    watchViewWidthConstraint = v9->_watchViewWidthConstraint;
    v9->_watchViewWidthConstraint = v42;

    heightAnchor = [(COSWatchView *)v9->_watchView heightAnchor];
    v45 = [heightAnchor constraintLessThanOrEqualToConstant:0.0];
    watchViewHeightConstraint = v9->_watchViewHeightConstraint;
    v9->_watchViewHeightConstraint = v45;

    v124[0] = v9->_watchViewWidthConstraint;
    v124[1] = v9->_watchViewHeightConstraint;
    v47 = [NSArray arrayWithObjects:v124 count:2];
    v118 = v13;
    [v13 addObjectsFromArray:v47];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v9, sub_1000D3E30, @"com.apple.screenshotter.watchface-changed", 0, 1024);
    v49 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v50 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v51 = [v50 _fontScaledByScaleFactor:0.933333333];

    v52 = objc_opt_new();
    labelStack = v9->_labelStack;
    v9->_labelStack = v52;

    [(UIStackView *)v9->_labelStack setAxis:1];
    [(UIStackView *)v9->_labelStack setBaselineRelativeArrangement:1];
    [(UIStackView *)v9->_horizontalStack addArrangedSubview:v9->_labelStack];
    v54 = objc_alloc_init(UILabel);
    watchName = v9->_watchName;
    v9->_watchName = v54;

    [(UILabel *)v9->_watchName setNumberOfLines:2];
    [(UILabel *)v9->_watchName setFont:v49];
    v56 = v9->_watchName;
    v57 = BPSTextColor();
    [(UILabel *)v56 setTextColor:v57];

    LODWORD(v58) = 1045220557;
    [(UILabel *)v9->_watchName _setHyphenationFactor:v58];
    [(UILabel *)v9->_watchName setAdjustsFontForContentSizeCategory:1];
    [(UIStackView *)v9->_labelStack addArrangedSubview:v9->_watchName];
    v59 = objc_alloc_init(UILabel);
    watchSubtitle = v9->_watchSubtitle;
    v9->_watchSubtitle = v59;

    [(UILabel *)v9->_watchSubtitle setFont:v51];
    [(UILabel *)v9->_watchSubtitle setNumberOfLines:0];
    v61 = v9->_watchSubtitle;
    v62 = BPSTextColor();
    [(UILabel *)v61 setTextColor:v62];

    LODWORD(v63) = 1045220557;
    [(UILabel *)v9->_watchSubtitle _setHyphenationFactor:v63];
    [(UILabel *)v9->_watchSubtitle setLineBreakMode:0];
    [(UIStackView *)v9->_labelStack addArrangedSubview:v9->_watchSubtitle];
    [(UILabel *)v9->_watchSubtitle setHidden:1];
    v64 = v51;
    v65 = objc_alloc_init(UILabel);
    [(UILabel *)v65 setFont:v64];

    [(UILabel *)v65 setNumberOfLines:0];
    v66 = +[UIColor systemMidGrayColor];
    [(UILabel *)v65 setTextColor:v66];

    LODWORD(v67) = 1045220557;
    [(UILabel *)v65 _setHyphenationFactor:v67];
    [(UILabel *)v65 setLineBreakMode:0];
    watchMaterial = v9->_watchMaterial;
    v9->_watchMaterial = v65;

    [(UIStackView *)v9->_labelStack addArrangedSubview:v9->_watchMaterial];
    v69 = v64;
    v70 = objc_alloc_init(UILabel);
    [(UILabel *)v70 setFont:v69];

    [(UILabel *)v70 setNumberOfLines:0];
    v71 = +[UIColor systemMidGrayColor];
    [(UILabel *)v70 setTextColor:v71];

    LODWORD(v72) = 1045220557;
    [(UILabel *)v70 _setHyphenationFactor:v72];
    [(UILabel *)v70 setLineBreakMode:0];
    watchBehavior = v9->_watchBehavior;
    v9->_watchBehavior = v70;

    [(UIStackView *)v9->_labelStack addArrangedSubview:v9->_watchBehavior];
    v120 = v69;
    v74 = objc_alloc_init(UILabel);
    [(UILabel *)v74 setFont:v120];

    [(UILabel *)v74 setNumberOfLines:0];
    v75 = +[UIColor systemMidGrayColor];
    [(UILabel *)v74 setTextColor:v75];

    LODWORD(v76) = 1045220557;
    [(UILabel *)v74 _setHyphenationFactor:v76];
    [(UILabel *)v74 setLineBreakMode:0];
    watchSize = v9->_watchSize;
    v9->_watchSize = v74;

    [(UIStackView *)v9->_labelStack addArrangedSubview:v9->_watchSize];
    v119 = v49;
    v78 = objc_alloc_init(UILabel);
    [(UILabel *)v78 setFont:v119];

    [(UILabel *)v78 setNumberOfLines:0];
    v79 = +[UIColor systemMidGrayColor];
    [(UILabel *)v78 setTextColor:v79];

    LODWORD(v80) = 1045220557;
    [(UILabel *)v78 _setHyphenationFactor:v80];
    [(UILabel *)v78 setLineBreakMode:0];
    watchMessage = v9->_watchMessage;
    v9->_watchMessage = v78;

    v82 = v9->_watchMessage;
    v83 = +[UIColor systemRedColor];
    [(UILabel *)v82 setTextColor:v83];

    [(UILabel *)v9->_watchMessage _setHyphenationFactor:0.0];
    [(UIStackView *)v9->_labelStack addArrangedSubview:v9->_watchMessage];
    [NSLayoutConstraint activateConstraints:v13];
    [(COSPairedDeviceListTableCell *)v9 updateCellLayout];
    v84 = objc_alloc_init(UIImageView);
    profileImageView = v9->_profileImageView;
    v9->_profileImageView = v84;

    layer = [(UIImageView *)v9->_profileImageView layer];
    v87 = BPSTinkerSupportProfilePictureDiameter;
    [layer setCornerRadius:BPSTinkerSupportProfilePictureDiameter * 0.5];

    layer2 = [(UIImageView *)v9->_profileImageView layer];
    v89 = +[UIColor blackColor];
    [layer2 setBorderColor:{objc_msgSend(v89, "cgColor")}];

    layer3 = [(UIImageView *)v9->_profileImageView layer];
    [layer3 setBorderWidth:2.0];

    layer4 = [(UIImageView *)v9->_profileImageView layer];
    v92 = +[UIColor blackColor];
    [layer4 setShadowColor:{objc_msgSend(v92, "cgColor")}];

    layer5 = [(UIImageView *)v9->_profileImageView layer];
    [layer5 setShadowOffset:{CGSizeZero.width, CGSizeZero.height}];

    layer6 = [(UIImageView *)v9->_profileImageView layer];
    [layer6 setShadowRadius:4.0];

    layer7 = [(UIImageView *)v9->_profileImageView layer];
    LODWORD(v96) = 0.5;
    [layer7 setShadowOpacity:v96];

    v97 = v9->_profileImageView;
    v98 = +[UIColor blackColor];
    [(UIImageView *)v97 setBackgroundColor:v98];

    [(UIImageView *)v9->_profileImageView setContentMode:2];
    contentView6 = [(COSPairedDeviceListTableCell *)v9 contentView];
    [contentView6 addSubview:v9->_profileImageView];

    [(UIImageView *)v9->_profileImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    bottomAnchor3 = [(UIImageView *)v9->_profileImageView bottomAnchor];
    bottomAnchor4 = [(COSWatchView *)v9->_watchView bottomAnchor];
    v115 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:6.0];
    v123[0] = v115;
    rightAnchor = [(UIImageView *)v9->_profileImageView rightAnchor];
    rightAnchor2 = [(COSWatchView *)v9->_watchView rightAnchor];
    v112 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:6.0];
    v123[1] = v112;
    heightAnchor2 = [(UIImageView *)v9->_profileImageView heightAnchor];
    v101 = [heightAnchor2 constraintEqualToConstant:v87];
    v123[2] = v101;
    widthAnchor2 = [(UIImageView *)v9->_profileImageView widthAnchor];
    v103 = [widthAnchor2 constraintEqualToConstant:v87];
    v123[3] = v103;
    trailingAnchor3 = [(UILabel *)v9->_watchMessage trailingAnchor];
    trailingAnchor4 = [(COSPairedDeviceListTableCell *)v9 trailingAnchor];
    v106 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-14.0];
    v123[4] = v106;
    v107 = [NSArray arrayWithObjects:v123 count:5];
    [NSLayoutConstraint activateConstraints:v107];

    specifierCopy = v121;
    [(UIImageView *)v9->_profileImageView setHidden:1];
    v108 = +[NSNotificationCenter defaultCenter];
    [v108 addObserver:v9 selector:"contentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  v109 = [specifierCopy propertyForKey:@"COSPairedDeviceListTableCellEnabled"];
  v9->_enabled = [v109 BOOLValue];

  cellSpecifier = v9->_cellSpecifier;
  v9->_cellSpecifier = specifierCopy;

  return v9;
}

- (void)_addProgressBar
{
  [(UILabel *)self->_watchMessage setHidden:1];
  if (self->_progressView)
  {
    v3 = [(PSSpecifier *)self->_cellSpecifier propertyForKey:@"COSMigrationManager"];
    progressView = self->_progressView;
    v33 = v3;
    currentSession = [v3 currentSession];
    [currentSession sessionProgress];
    *&v6 = v6;
    [(UIProgressView *)progressView setProgress:1 animated:v6];

    [(UIProgressView *)self->_progressView setHidden:0];
  }

  else
  {
    v7 = [[UIProgressView alloc] initWithProgressViewStyle:1];
    v8 = self->_progressView;
    self->_progressView = v7;

    v9 = objc_alloc_init(UILabel);
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"SYNCING_YOUR_DATA" value:&stru_10026E598 table:@"Pairing"];
    [v9 setText:v11];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v9 setFont:v12];

    [v9 setAdjustsFontForContentSizeCategory:1];
    v13 = BPSTextColor();
    [v9 setTextColor:v13];

    [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIProgressView *)self->_progressView addSubview:v9];
    contentView = [(COSPairedDeviceListTableCell *)self contentView];
    [contentView addSubview:self->_progressView];

    topAnchor = [v9 topAnchor];
    bottomAnchor = [(UIProgressView *)self->_progressView bottomAnchor];
    v31 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
    v35[0] = v31;
    leadingAnchor = [v9 leadingAnchor];
    leadingAnchor2 = [(UIProgressView *)self->_progressView leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[1] = v28;
    trailingAnchor = [v9 trailingAnchor];
    trailingAnchor2 = [(UIProgressView *)self->_progressView trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[2] = v25;
    topAnchor2 = [(UIProgressView *)self->_progressView topAnchor];
    bottomAnchor2 = [(UIStackView *)self->_labelStack bottomAnchor];
    v16 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:6.0];
    v35[3] = v16;
    leadingAnchor3 = [(UIProgressView *)self->_progressView leadingAnchor];
    leadingAnchor4 = [(UIStackView *)self->_labelStack leadingAnchor];
    v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v35[4] = v19;
    trailingAnchor3 = [(UIProgressView *)self->_progressView trailingAnchor];
    trailingAnchor4 = [(COSPairedDeviceListTableCell *)self trailingAnchor];
    v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-14.0];
    v35[5] = v22;
    v23 = [NSArray arrayWithObjects:v35 count:6];
    [NSLayoutConstraint activateConstraints:v23];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  [(COSPairedDeviceListTableCell *)self layoutSubviews];

  [(COSPairedDeviceListTableCell *)self updateCellLayout];
}

- (BOOL)_shouldUseSpaceConstrainedLayout
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  if (v3 <= 320.0 && ([v2 scale], v4 >= 3.0))
  {
    v5 = &UIContentSizeCategoryExtraLarge;
  }

  else
  {
    v5 = &UIContentSizeCategoryAccessibilityMedium;
  }

  v6 = *v5;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v8 = _UIContentSizeCategoryCompareToContentSizeCategory() != 1;

  return v8;
}

- (void)updateCellLayout
{
  p_labelStack = &self->_labelStack;
  if (self->_labelStack)
  {
    p_horizontalStack = &self->_horizontalStack;
    if (self->_horizontalStack)
    {
      v34 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      [(UILabel *)self->_watchMessage setFont:v34];
      v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v6 = [v5 _fontScaledByScaleFactor:0.933333333];

      [(UILabel *)self->_watchMaterial setFont:v6];
      [(UILabel *)self->_watchBehavior setFont:v6];
      [(UILabel *)self->_watchSize setFont:v6];
      [v6 _bodyLeading];
      [(UIStackView *)*p_labelStack setSpacing:?];
      v7 = *p_labelStack;
      [v34 _scaledValueForValue:23.0];
      [(UIStackView *)v7 setCustomSpacing:self->_watchSubtitle afterView:?];
      isHidden = [(UILabel *)self->_watchSubtitle isHidden];
      v9 = *p_labelStack;
      if (isHidden)
      {
        [v34 _scaledValueForValue:23.0];
      }

      else
      {
        [(UIStackView *)*p_labelStack spacing];
      }

      [(UIStackView *)v9 setCustomSpacing:self->_watchName afterView:?];
      if (([(UILabel *)self->_watchMessage isHidden]& 1) == 0)
      {
        v10 = *p_labelStack;
        [v34 _scaledValueForValue:23.0];
        [(UIStackView *)v10 setCustomSpacing:self->_watchSize afterView:?];
      }

      _shouldUseSpaceConstrainedLayout = [(COSPairedDeviceListTableCell *)self _shouldUseSpaceConstrainedLayout];
      if (_shouldUseSpaceConstrainedLayout)
      {
        v12 = p_labelStack;
      }

      else
      {
        v12 = p_horizontalStack;
      }

      v13 = *v12;
      superview = [(COSWatchView *)self->_watchView superview];

      if (superview != v13)
      {
        [(UIStackView *)*p_horizontalStack setSpacing:14.0];
        [(COSWatchView *)self->_watchView removeFromSuperview];
        [v13 insertArrangedSubview:self->_watchView atIndex:0];
        v15 = _NSDictionaryOfVariableBindings(@"_watchView", self->_watchView, 0);
        v16 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=WATCH_NAME_TO_MATERIAL_VERTICAL_SPACING)-[_watchView]-(>=WATCH_NAME_TO_MATERIAL_VERTICAL_SPACING)-|", 0, &off_100281F88, v15);
        [NSLayoutConstraint activateConstraints:v16];

        [(COSPairedDeviceListCheckmark *)self->_checkmark removeFromSuperview];
        if (_shouldUseSpaceConstrainedLayout)
        {
          contentView = [(COSPairedDeviceListTableCell *)self contentView];
          [contentView addSubview:self->_checkmark];

          v18 = _NSDictionaryOfVariableBindings(@"_checkmark, _horizontalStack", self->_checkmark, *p_horizontalStack, 0);
          v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_checkmark]-[_horizontalStack]", 0, 0, v18);
          [NSLayoutConstraint activateConstraints:v19];

          centerYAnchor = [(COSPairedDeviceListCheckmark *)self->_checkmark centerYAnchor];
          contentView2 = [(COSPairedDeviceListTableCell *)self contentView];
          centerYAnchor2 = [contentView2 centerYAnchor];
          v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          [v23 setActive:1];

          v24 = 16.0;
        }

        else
        {
          [(UIStackView *)*p_horizontalStack insertArrangedSubview:self->_checkmark atIndex:0];
          [(UIStackView *)*p_horizontalStack setCustomSpacing:self->_watchView afterView:24.0];
          v24 = 0.0;
        }

        [(NSLayoutConstraint *)self->_horizontalStackBottomConstraint setConstant:v24];
      }

      v25 = [(PSSpecifier *)self->_cellSpecifier propertyForKey:@"COSMigrationManager"];
      v26 = [(PSSpecifier *)self->_cellSpecifier propertyForKey:@"COSAssociatedDevice"];
      v27 = [v26 valueForProperty:NRDevicePropertyIsAltAccount];
      bOOLValue = [v27 BOOLValue];

      -[COSPairedDeviceListTableCell dimCellUI:](self, "dimCellUI:", [v25 isDeviceWaitingToMigrate:v26] & (bOOLValue ^ 1));
      [(COSPairedDeviceListTableCell *)self setEnabled:self->_enabled];
      watchView = self->_watchView;
      [(COSWatchView *)watchView bounds];
      [(COSWatchView *)watchView sizeThatFits:v30, v31];
      v33 = v32;
      [(NSLayoutConstraint *)self->_watchViewWidthConstraint setConstant:?];
      [(NSLayoutConstraint *)self->_watchViewHeightConstraint setConstant:v33];
    }
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.screenshotter.watchface-changed", 0);
  v4.receiver = self;
  v4.super_class = COSPairedDeviceListTableCell;
  [(COSPairedDeviceListTableCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = COSPairedDeviceListTableCell;
  [(COSPairedDeviceListTableCell *)&v4 layoutSubviews];
  textLabel = [(COSPairedDeviceListTableCell *)self textLabel];
  [textLabel setHidden:1];

  [(NSLayoutConstraint *)self->_leadingSpaceConstraint setConstant:16.0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_storeStrong(&self->_cellSpecifier, specifier);
  v104.receiver = self;
  v104.super_class = COSPairedDeviceListTableCell;
  [(COSPairedDeviceListTableCell *)&v104 refreshCellContentsWithSpecifier:specifierCopy];
  v6 = [specifierCopy propertyForKey:@"COSAssociatedDevice"];
  [(COSWatchView *)self->_watchView setAssociatedDevice:v6];
  v97 = specifierCopy;
  v7 = [specifierCopy propertyForKey:@"COSDeviceState"];
  self->_deviceState = [v7 integerValue];

  v8 = [v6 valueForProperty:NRDevicePropertyProductType];
  v9 = [v6 valueForProperty:NRDevicePropertyArtworkTraits];
  v10 = MGGetBoolAnswer();
  v11 = pbb_bridge_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  v99 = v6;
  v95 = v9;
  if (v10 && v9)
  {
    if (v12)
    {
      *buf = 136315138;
      v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyArtworkTraits to get PBBDeviceSize", buf, 0xCu);
    }

    v13 = [v9 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    [v13 unsignedIntegerValue];

    v14 = BPSVariantSizeForArtworkDeviceSubType();
  }

  else
  {
    if (v12)
    {
      *buf = 136315138;
      v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyProductType to get PBBDeviceSize", buf, 0xCu);
    }

    v14 = BPSVariantSizeForProductType();
  }

  v15 = v14;
  v106[0] = @"COMPACT_VARIANT_ACTIVE_DEVICE";
  v106[1] = @"REGULAR_VARIANT_ACTIVE_DEVICE";
  v106[2] = @"394H_VARIANT_ACTIVE_DEVICE";
  v106[3] = @"448H_VARIANT_ACTIVE_DEVICE";
  v106[4] = @"430H_VARIANT_ACTIVE_DEVICE";
  v106[5] = @"484H_VARIANT_ACTIVE_DEVICE";
  v106[6] = @"502H_VARIANT_ACTIVE_DEVICE";
  v106[7] = @"446H_VARIANT_ACTIVE_DEVICE";
  v106[8] = @"496H_VARIANT_ACTIVE_DEVICE";
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"514H_VARIANT_ACTIVE_DEVICE" value:&stru_10026E598 table:@"Pairing-N230"];
  v106[9] = v17;
  v18 = [NSArray arrayWithObjects:v106 count:10];
  v19 = [BPSScreenStringObj screenStringsWithArray:v18];
  v96 = v8;
  v20 = BPSGetRelevantScreenStringForProduct();

  v21 = +[NSBundle mainBundle];
  v94 = v20;
  v98 = [v21 localizedStringForKey:v20 value:&stru_10026E598 table:@"Pairing"];

  v22 = v6;
  v23 = [PBBridgeWatchAttributeController materialFromDevice:v6];
  v24 = BPSUnlocalizedNameForMaterial();
  v25 = [v24 stringByAppendingString:@"_ACTIVE_DEVICE"];

  v26 = +[NSBundle mainBundle];
  v93 = v25;
  v27 = [v26 localizedStringForKey:v25 value:&stru_10026E598 table:@"Pairing"];

  [(COSWatchView *)self->_watchView overrideMaterial:v23 size:v15];
  if (self->_deviceState == 1)
  {
    [(COSWatchView *)self->_watchView setAlpha:1.0];
  }

  v28 = [v99 valueForProperty:NRDevicePropertyDeviceBrand];
  integerValue = [v28 integerValue];
  watchBehavior = self->_watchBehavior;
  if (integerValue)
  {
    [v28 intValue];
    v31 = BPSLocalizedShortEdition();
    [(UILabel *)watchBehavior setText:v31];
  }

  else
  {
    [(UILabel *)self->_watchBehavior setText:&stru_10026E598];
  }

  v32 = v98;
  v33 = pbb_bridge_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    text = [(UILabel *)self->_watchBehavior text];
    *buf = 138412290;
    v108 = text;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "_watchBehavior: (%@)", buf, 0xCu);
  }

  watchName = self->_watchName;
  v36 = [UIApp cachedNameForDevice:v99];
  [(UILabel *)watchName setText:v36];

  [(UILabel *)self->_watchMaterial setText:v27];
  [(UILabel *)self->_watchSize setText:v98];
  [(COSPairedDeviceListTableCell *)self _configureWatchMessage];
  [(UILabel *)self->_watchSubtitle setHidden:1];
  [(UIImageView *)self->_profileImageView setHidden:1];
  v37 = v97;
  v38 = [v97 propertyForKey:@"COSMigrationManager"];
  v91 = v28;
  v92 = v27;
  v90 = v38;
  if ([v38 currentState] == 2 && objc_msgSend(v38, "isDeviceMigrating:", v99) && self->_deviceState != 6)
  {
    [(COSPairedDeviceListTableCell *)self _addProgressBar];
    progressView = self->_progressView;
    currentSession = [v38 currentSession];
    [currentSession sessionProgress];
    *&v66 = v66;
    [(UIProgressView *)progressView setProgress:0 animated:v66];
  }

  else
  {
    [(UIProgressView *)self->_progressView setHidden:1];
  }

  v39 = NRDevicePropertyIsAltAccount;
  v40 = [v99 valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v40 BOOLValue];

  if (bOOLValue)
  {
    v42 = [v99 valueForProperty:@"_altAccountIdentifier"];
    v43 = +[BPSTinkerSupport sharedInstance];
    cachedFamilyCircle = [v43 cachedFamilyCircle];

    if (v42 && cachedFamilyCircle)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      members = [cachedFamilyCircle members];
      v46 = [members countByEnumeratingWithState:&v100 objects:v105 count:16];
      if (v46)
      {
        v47 = v46;
        v88 = 200;
        v89 = cachedFamilyCircle;
        v48 = v39;
        v49 = *v101;
LABEL_25:
        v50 = 0;
        while (1)
        {
          if (*v101 != v49)
          {
            objc_enumerationMutation(members);
          }

          v51 = *(*(&v100 + 1) + 8 * v50);
          appleID = [v51 appleID];
          v53 = [v42 isEqualToString:appleID];

          if (v53)
          {
            break;
          }

          if (v47 == ++v50)
          {
            v47 = [members countByEnumeratingWithState:&v100 objects:v105 count:16];
            if (v47)
            {
              goto LABEL_25;
            }

            v37 = v97;
            v39 = v48;
            cachedFamilyCircle = v89;
            goto LABEL_47;
          }
        }

        v56 = v51;

        v37 = v97;
        v39 = v48;
        cachedFamilyCircle = v89;
        if (!v56)
        {
          goto LABEL_48;
        }

        v57 = pbb_bridge_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s: tinker device found family member", buf, 0xCu);
        }

        [*&self->PSTableCell_opaque[v88] setHidden:0];
        appleID2 = [v56 appleID];
        v59 = [appleID2 stringByReplacingOccurrencesOfString:@"@" withString:@"​@"];

        [*&self->PSTableCell_opaque[v88] setText:v59];
        v60 = +[BPSTinkerSupport sharedInstance];
        v61 = [v60 cachedProfilePictureForFamilyMember:v56];

        v62 = pbb_bridge_log();
        v63 = v62;
        if (v61)
        {
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: tinker device found profile picture", buf, 0xCu);
          }

          [(UIImageView *)self->_profileImageView setHidden:0];
          [(UIImageView *)self->_profileImageView setImage:v61];
        }

        else
        {
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%s: tinker device, but did not find profile picture", buf, 0xCu);
          }
        }

        goto LABEL_52;
      }

LABEL_47:

LABEL_48:
      v59 = pbb_bridge_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%s: tinker device, but no tinker family member found!", buf, 0xCu);
      }

      v56 = 0;
LABEL_52:

      text2 = [(UILabel *)self->_watchMessage text];

      if (text2)
      {
        [(UIStackView *)self->_labelStack spacing];
        v69 = v68;
        [(UIStackView *)self->_labelStack spacing];
        [(UIStackView *)self->_labelStack setLayoutMargins:v69, 0.0, v70, 0.0];
        [(UIStackView *)self->_labelStack setLayoutMarginsRelativeArrangement:1];
      }

      v32 = v98;
      v22 = v99;
      goto LABEL_55;
    }

    v54 = pbb_bridge_log();
    members = v54;
    if (cachedFamilyCircle)
    {
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(members, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      *buf = 136315138;
      v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
      v55 = "%s: tinker device, but no alt account identifier found!";
    }

    else
    {
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      *buf = 136315138;
      v108 = "[COSPairedDeviceListTableCell refreshCellContentsWithSpecifier:]";
      v55 = "%s: tinker device, but family circle is not loaded yet, waiting...";
    }

    _os_log_impl(&_mh_execute_header, members, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);
    goto LABEL_47;
  }

LABEL_55:
  [(COSPairedDeviceListTableCell *)self updateCellLayout];
  identifier = [v37 identifier];
  v72 = [identifier isEqualToString:@"LOADING_WATCH_ITEM"];

  if (v72)
  {
    [(COSPairedDeviceListTableCell *)self setLoading:1];
LABEL_61:
    v80 = v95;
    v79 = v96;
    v82 = v93;
    v81 = v94;
    v84 = v91;
    v83 = v92;
    goto LABEL_66;
  }

  [(COSPairedDeviceListTableCell *)self setLoading:0];
  v73 = [v22 valueForProperty:v39];
  bOOLValue2 = [v73 BOOLValue];

  v75 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v76 = [v22 isEqual:v75];

  deviceState = self->_deviceState;
  if (bOOLValue2 && v76 && deviceState == 1)
  {
    v78 = [v37 propertyForKey:@"COSPairedDeviceListTableCellEnabled"];
    self->_enabled = [v78 BOOLValue];

    [(COSPairedDeviceListCheckmark *)self->_checkmark setChecked:1];
    goto LABEL_61;
  }

  v84 = v91;
  v83 = v92;
  if (deviceState <= 7 && ((1 << deviceState) & 0xCA) != 0)
  {
    v85 = [v37 propertyForKey:@"COSPairedDeviceListTableCellEnabled"];
    self->_enabled = [v85 BOOLValue];

    checkmark = self->_checkmark;
    v87 = self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__checked];
  }

  else
  {
    checkmark = self->_checkmark;
    v87 = 0;
  }

  [(COSPairedDeviceListCheckmark *)checkmark setChecked:v87];
  v80 = v95;
  v79 = v96;
  v82 = v93;
  v81 = v94;
LABEL_66:
}

- (void)_configureWatchMessage
{
  v3 = [(PSSpecifier *)self->_cellSpecifier propertyForKey:@"COSMigrationManager"];
  v4 = [(PSSpecifier *)self->_cellSpecifier propertyForKey:@"COSAssociatedDevice"];
  [(UILabel *)self->_watchMessage setHidden:0];
  if ([v3 currentState] == 1 && objc_msgSend(v3, "isDeviceMigrating:", v4))
  {
    [(UILabel *)self->_watchMessage setAttributedText:0];
    watchMessage = self->_watchMessage;
    v6 = BPSTextColor();
    [(UILabel *)watchMessage setTextColor:v6];

    v7 = self->_watchMessage;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"MIGRATION_ESTABLISH_CONNECTION" value:&stru_10026E598 table:@"Pairing"];
    [(UILabel *)v7 setText:v9];
  }

  else
  {
    deviceState = self->_deviceState;
    if (deviceState - 6 < 2)
    {
      v25 = NSUnderlineStyleAttributeName;
      v26 = &off_100281D80;
      v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v15 = self->_deviceState;
      v16 = [NSAttributedString alloc];
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      if (v15 == 6)
      {
        v19 = [v17 localizedStringForKey:@"UPDATE_REQUIRED" value:&stru_10026E598 table:@"Pairing"];
        v20 = [v16 initWithString:v19 attributes:v8];
        [(UILabel *)self->_watchMessage setAttributedText:v20];

        v21 = self->_watchMessage;
        +[UIColor systemRedColor];
      }

      else
      {
        v22 = [v17 localizedStringForKey:@"SOFTWARE_UPDATING" value:&stru_10026E598 table:@"Pairing"];
        v23 = [v16 initWithString:v22 attributes:v8];
        [(UILabel *)self->_watchMessage setAttributedText:v23];

        v21 = self->_watchMessage;
        BPSBridgeTintColor();
      }
      v24 = ;
      [(UILabel *)v21 setTextColor:v24];

      v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"displaySoftwareUpdatePane"];
      [v9 setNumberOfTapsRequired:1];
      [(UILabel *)self->_watchMessage addGestureRecognizer:v9];
      [(UILabel *)self->_watchMessage setUserInteractionEnabled:1];
    }

    else
    {
      if (deviceState - 4 > 1)
      {
        [(UILabel *)self->_watchMessage setHidden:1];
        goto LABEL_12;
      }

      v11 = [NSMutableAttributedString alloc];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"REQUIRES_MIGRATION" value:&stru_10026E598 table:@"Pairing"];
      v8 = [v11 initWithString:v13];

      [(UILabel *)self->_watchMessage setAttributedText:v8];
      v14 = self->_watchMessage;
      v9 = +[UIColor systemRedColor];
      [(UILabel *)v14 setTextColor:v9];
    }
  }

LABEL_12:
}

- (void)displaySoftwareUpdatePane
{
  v3 = OBJC_IVAR___PSTableCell__specifier;
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v6 = [WeakRetained propertyForKey:@"COSDisplaySoftwareUpdate"];

  v5 = objc_loadWeakRetained(&self->PSTableCell_opaque[v3]);
  v6[2](v6, v5);
}

- (void)dimCellUI:(BOOL)i
{
  iCopy = i;
  [(UILabel *)self->_watchName setEnabled:!i];
  [(UILabel *)self->_watchSubtitle setEnabled:!iCopy];
  [(COSWatchView *)self->_watchView setUserInteractionEnabled:!iCopy];
  [(UILabel *)self->_watchBehavior setEnabled:!iCopy];
  [(UILabel *)self->_watchSize setEnabled:!iCopy];
  watchMaterial = self->_watchMaterial;

  [(UILabel *)watchMaterial setEnabled:!iCopy];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = COSPairedDeviceListTableCell;
  [(COSPairedDeviceListTableCell *)&v7 setHighlighted:highlighted animated:animated];
  if (highlightedCopy)
  {
    BPSDevicePickerCellHighlightColor();
  }

  else
  {
    BPSDevicePickerCellBackgroundColor();
  }
  v6 = ;
  [(COSPairedDeviceListTableCell *)self setBackgroundColor:v6];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = COSPairedDeviceListTableCell;
  [(COSPairedDeviceListTableCell *)&v3 prepareForReuse];
  [(COSPairedDeviceListTableCell *)self dimCellUI:0];
  [(UIProgressView *)self->_progressView setHidden:1];
  [(UILabel *)self->_watchMessage setHidden:1];
}

- (void)updateCellState:(unint64_t)state percentageComplete:(double)complete migratingDevice:(id)device
{
  deviceCopy = device;
  if (state != 2 || (v8 = 1.0, complete == 1.0) || (self->_deviceState & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v9 = 1.0;
    if (complete == 1.0)
    {
      LODWORD(v9) = 1.0;
      [(UIProgressView *)self->_progressView setProgress:1 animated:v9];
    }

    progressView = [(COSPairedDeviceListTableCell *)self progressView];
    [progressView setHidden:1];

    if (!state)
    {
      [(COSPairedDeviceListTableCell *)self _configureWatchMessage];
    }
  }

  else
  {
    progressView = self->_progressView;
    if (!progressView)
    {
      [(COSPairedDeviceListTableCell *)self _addProgressBar];
      progressView = self->_progressView;
    }

    *&v8 = complete;
    [(UIProgressView *)progressView setProgress:1 animated:v8];
  }

  if (self->_cellSpecifier)
  {
    [(COSPairedDeviceListTableCell *)self refreshCellContentsWithSpecifier:?];
  }
}

@end