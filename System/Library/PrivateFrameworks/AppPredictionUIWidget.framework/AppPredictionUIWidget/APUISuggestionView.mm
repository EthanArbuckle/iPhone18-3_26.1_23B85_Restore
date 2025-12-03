@interface APUISuggestionView
- (APUISuggestionsWidgetViewDelegate)delegate;
- (id)iconForSuggestionIconView:(id)view;
- (int)_subtitleNumberOfLines;
- (int)_titleNumberOfLines;
- (void)_setAppImageViewWithBundleIdentifier:(id)identifier;
- (void)_setAppImageViewWithImage:(id)image;
- (void)_setINImage:(id)image withBundleID:(id)d;
- (void)_updateLabelColors;
- (void)_updateMaximumNumberOfLines;
- (void)createViewsIfNeeded;
- (void)installReasonLabelIfNecessary;
- (void)layoutSuggestion:(id)suggestion;
- (void)setINImage:(id)image withBundleID:(id)d;
- (void)setLNImage:(id)image withBundleID:(id)d;
@end

@implementation APUISuggestionView

- (void)layoutSuggestion:(id)suggestion
{
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [APUISuggestionView layoutSuggestion:v5];
  }

  [(APUISuggestionView *)self doesNotRecognizeSelector:a2];
}

- (void)createViewsIfNeeded
{
  v121[1] = *MEMORY[0x277D85DE8];
  stackView = [(APUISuggestionView *)self stackView];

  if (!stackView)
  {
    v4 = objc_alloc_init(APUISuggestionIconView);
    [(APUISuggestionView *)self setIconView:v4];

    iconView = [(APUISuggestionView *)self iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

    iconView2 = [(APUISuggestionView *)self iconView];
    [iconView2 setDelegate:self];

    v7 = [(APUISuggestionView *)self platterSize]== 2;
    v8 = *MEMORY[0x277D76968];
    v9 = *MEMORY[0x277D76820];
    if (self->_platterSize == 2)
    {
      v10 = *MEMORY[0x277D76820];
    }

    else
    {
      v10 = *MEMORY[0x277D76808];
    }

    v106 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v8 maximumContentSizeCategory:v10];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(APUISuggestionView *)self setTitleLabel:v11];

    titleLabel = [(APUISuggestionView *)self titleLabel];
    [titleLabel setOverrideUserInterfaceStyle:2];

    v107 = [MEMORY[0x277D75520] metricsForTextStyle:v8];
    v13 = *MEMORY[0x277D74420];
    v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
    [v106 pointSize];
    v15 = [v107 scaledFontForFont:v14 maximumPointSize:?];
    titleLabel2 = [(APUISuggestionView *)self titleLabel];
    [titleLabel2 setFont:v15];

    titleLabel3 = [(APUISuggestionView *)self titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:0];

    titleLabel4 = [(APUISuggestionView *)self titleLabel];
    LODWORD(v19) = 1132068864;
    [titleLabel4 setContentCompressionResistancePriority:1 forAxis:v19];

    subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel setLineBreakMode:4];

    titleLabel5 = [(APUISuggestionView *)self titleLabel];
    [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(APUISuggestionView *)self setSubtitleLabel:v22];

    v23 = *MEMORY[0x277D76940];
    v24 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76940] maximumContentSizeCategory:v9];
    subtitleLabel2 = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel2 setFont:v24];

    subtitleLabel3 = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel3 setOverrideUserInterfaceStyle:2];

    subtitleLabel4 = [(APUISuggestionView *)self subtitleLabel];
    LODWORD(v28) = 1132003328;
    [subtitleLabel4 setContentCompressionResistancePriority:1 forAxis:v28];

    subtitleLabel5 = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel5 setLineBreakMode:4];

    subtitleLabel6 = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v105 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v23 maximumContentSizeCategory:v9];
    v31 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(APUISuggestionView *)self setReasonLabel:v31];

    v32 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:v13];
    [v105 pointSize];
    v33 = [v107 scaledFontForFont:v32 maximumPointSize:?];
    reasonLabel = [(APUISuggestionView *)self reasonLabel];
    [reasonLabel setFont:v33];

    reasonLabel2 = [(APUISuggestionView *)self reasonLabel];
    [reasonLabel2 setLineBreakMode:4];

    reasonLabel3 = [(APUISuggestionView *)self reasonLabel];
    [reasonLabel3 setOverrideUserInterfaceStyle:2];

    reasonLabel4 = [(APUISuggestionView *)self reasonLabel];
    [reasonLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v110 = 0;
    v111 = &v110;
    v112 = 0x2050000000;
    v38 = getSBHTraitIconTintClass_softClass;
    v113 = getSBHTraitIconTintClass_softClass;
    if (!getSBHTraitIconTintClass_softClass)
    {
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __getSBHTraitIconTintClass_block_invoke;
      v109[3] = &unk_278C90BC0;
      v109[4] = &v110;
      __getSBHTraitIconTintClass_block_invoke(v109);
      v38 = v111[3];
    }

    v39 = v38;
    _Block_object_dispose(&v110, 8);
    v121[0] = v38;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:1];
    v41 = [(APUISuggestionView *)self registerForTraitChanges:v40 withAction:sel__updateLabelColors];

    v42 = objc_opt_self();
    v120 = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
    v44 = [(APUISuggestionView *)self registerForTraitChanges:v43 withAction:sel__updateMaximumNumberOfLines];

    [(APUISuggestionView *)self _updateLabelColors];
    [(APUISuggestionView *)self _updateMaximumNumberOfLines];
    titleLabel6 = [(APUISuggestionView *)self titleLabel];
    v119[0] = titleLabel6;
    subtitleLabel7 = [(APUISuggestionView *)self subtitleLabel];
    v119[1] = subtitleLabel7;
    reasonLabel5 = [(APUISuggestionView *)self reasonLabel];
    v119[2] = reasonLabel5;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:3];
    [(APUISuggestionView *)self setLabels:v48];

    v49 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel7 = [(APUISuggestionView *)self titleLabel];
    v118[0] = titleLabel7;
    subtitleLabel8 = [(APUISuggestionView *)self subtitleLabel];
    v118[1] = subtitleLabel8;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
    v108 = [v49 initWithArrangedSubviews:v52];

    [v108 setAxis:1];
    [v108 setAlignment:1];
    [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v108 setSpacing:3.0];
    v53 = objc_alloc(MEMORY[0x277D75A68]);
    iconView3 = [(APUISuggestionView *)self iconView];
    v117[0] = iconView3;
    v117[1] = v108;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
    v56 = [v53 initWithArrangedSubviews:v55];
    [(APUISuggestionView *)self setStackView:v56];

    LODWORD(v55) = self->_platterSize == 2;
    stackView2 = [(APUISuggestionView *)self stackView];
    stackView3 = stackView2;
    if (v55)
    {
      [stackView2 setAxis:0];
      v59 = 8.0;
      v60 = 3;
    }

    else
    {
      [stackView2 setDistribution:0];

      stackView3 = [(APUISuggestionView *)self stackView];
      [stackView3 setAxis:1];
      v59 = 5.5;
      v60 = 1;
    }

    stackView4 = [(APUISuggestionView *)self stackView];
    [stackView4 setAlignment:v60];

    stackView5 = [(APUISuggestionView *)self stackView];
    [stackView5 setSpacing:v59];

    stackView6 = [(APUISuggestionView *)self stackView];
    [stackView6 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView7 = [(APUISuggestionView *)self stackView];
    [(APUISuggestionView *)self addSubview:stackView7];

    v85 = MEMORY[0x277CCAAD0];
    iconView4 = [(APUISuggestionView *)self iconView];
    heightAnchor = [iconView4 heightAnchor];
    heightAnchor2 = [(APUISuggestionView *)self heightAnchor];
    v96 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:dbl_24004F6D0[v7]];
    v116[0] = v96;
    iconView5 = [(APUISuggestionView *)self iconView];
    widthAnchor = [iconView5 widthAnchor];
    iconView6 = [(APUISuggestionView *)self iconView];
    heightAnchor3 = [iconView6 heightAnchor];
    v86 = [widthAnchor constraintEqualToAnchor:heightAnchor3 multiplier:1.0];
    v116[1] = v86;
    stackView8 = [(APUISuggestionView *)self stackView];
    leadingAnchor = [stackView8 leadingAnchor];
    leadingAnchor2 = [(APUISuggestionView *)self leadingAnchor];
    v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v116[2] = v68;
    trailingAnchor = [(APUISuggestionView *)self trailingAnchor];
    stackView9 = [(APUISuggestionView *)self stackView];
    trailingAnchor2 = [stackView9 trailingAnchor];
    v72 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:16.0];
    v116[3] = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:4];
    [v85 activateConstraints:v73];

    LODWORD(stackView9) = self->_platterSize == 2;
    v99 = MEMORY[0x277CCAAD0];
    stackView10 = [(APUISuggestionView *)self stackView];
    if (stackView9)
    {
      centerYAnchor = [stackView10 centerYAnchor];
      centerYAnchor2 = [(APUISuggestionView *)self centerYAnchor];
      v74 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v115 = v74;
      bottomAnchor = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
      [v99 activateConstraints:bottomAnchor];
    }

    else
    {
      centerYAnchor = [stackView10 topAnchor];
      centerYAnchor2 = [(APUISuggestionView *)self topAnchor];
      v74 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:16.0];
      v114[0] = v74;
      bottomAnchor = [(APUISuggestionView *)self bottomAnchor];
      stackView11 = [(APUISuggestionView *)self stackView];
      bottomAnchor2 = [stackView11 bottomAnchor];
      v93 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
      v114[1] = v93;
      titleLabel8 = [(APUISuggestionView *)self titleLabel];
      trailingAnchor3 = [titleLabel8 trailingAnchor];
      stackView12 = [(APUISuggestionView *)self stackView];
      trailingAnchor4 = [stackView12 trailingAnchor];
      v77 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v114[2] = v77;
      subtitleLabel9 = [(APUISuggestionView *)self subtitleLabel];
      trailingAnchor5 = [subtitleLabel9 trailingAnchor];
      stackView13 = [(APUISuggestionView *)self stackView];
      trailingAnchor6 = [stackView13 trailingAnchor];
      v82 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v114[3] = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:4];
      [v99 activateConstraints:v83];
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)_updateLabelColors
{
  traitCollection = [(APUISuggestionView *)self traitCollection];
  sbh_iconTintColor = [traitCollection sbh_iconTintColor];

  traitCollection2 = [(APUISuggestionView *)self traitCollection];
  sbh_iconImageAppearance = [traitCollection2 sbh_iconImageAppearance];

  if ([sbh_iconImageAppearance appearanceType] == 5)
  {
    titleLabel = [(APUISuggestionView *)self titleLabel];
    [titleLabel setTextColor:sbh_iconTintColor];

    subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel setTextColor:sbh_iconTintColor];

    reasonLabel = [(APUISuggestionView *)self reasonLabel];
    [reasonLabel setTextColor:sbh_iconTintColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel2 = [(APUISuggestionView *)self titleLabel];
    [titleLabel2 setTextColor:labelColor];

    labelColor2 = [MEMORY[0x277D75348] labelColor];
    subtitleLabel2 = [(APUISuggestionView *)self subtitleLabel];
    [subtitleLabel2 setTextColor:labelColor2];

    reasonLabel = [MEMORY[0x277D75348] secondaryLabelColor];
    reasonLabel2 = [(APUISuggestionView *)self reasonLabel];
    [reasonLabel2 setTextColor:reasonLabel];
  }
}

- (id)iconForSuggestionIconView:(id)view
{
  viewCopy = view;
  delegate = [(APUISuggestionView *)self delegate];
  appBundleIdentifier = [viewCopy appBundleIdentifier];

  v7 = [delegate view:self iconForBundleIdentifier:appBundleIdentifier];

  return v7;
}

- (void)_updateMaximumNumberOfLines
{
  _titleNumberOfLines = [(APUISuggestionView *)self _titleNumberOfLines];
  titleLabel = [(APUISuggestionView *)self titleLabel];
  [titleLabel setNumberOfLines:_titleNumberOfLines];

  _subtitleNumberOfLines = [(APUISuggestionView *)self _subtitleNumberOfLines];
  subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:_subtitleNumberOfLines];

  reasonLabel = [(APUISuggestionView *)self reasonLabel];
  [reasonLabel setNumberOfLines:1];
}

- (int)_titleNumberOfLines
{
  traitCollection = [(APUISuggestionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (self->_platterSize == 2)
  {
    v5 = MEMORY[0x277D76808];
LABEL_5:
    v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *v5) == NSOrderedDescending;
    v10 = 1;
    goto LABEL_6;
  }

  reasonLabel = [(APUISuggestionView *)self reasonLabel];
  attributedText = [reasonLabel attributedText];
  v8 = [attributedText length];

  if (v8)
  {
    v5 = MEMORY[0x277D76828];
    goto LABEL_5;
  }

  v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76820]) == NSOrderedDescending;
  v10 = 2;
LABEL_6:
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  return v11;
}

- (int)_subtitleNumberOfLines
{
  traitCollection = [(APUISuggestionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (self->_platterSize == 2)
  {
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76828]) == NSOrderedDescending)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)installReasonLabelIfNecessary
{
  v34[4] = *MEMORY[0x277D85DE8];
  reasonLabel = [(APUISuggestionView *)self reasonLabel];
  [reasonLabel removeFromSuperview];

  reasonLabel2 = [(APUISuggestionView *)self reasonLabel];
  attributedText = [reasonLabel2 attributedText];
  v6 = [attributedText length];

  if (v6)
  {
    [(APUISuggestionView *)self _updateMaximumNumberOfLines];
    reasonLabel3 = [(APUISuggestionView *)self reasonLabel];
    [(APUISuggestionView *)self addSubview:reasonLabel3];

    v28 = MEMORY[0x277CCAAD0];
    if (self->_platterSize == 2)
    {
      stackView = [(APUISuggestionView *)self stackView];
      trailingAnchor = [stackView trailingAnchor];
      reasonLabel4 = [(APUISuggestionView *)self reasonLabel];
      [reasonLabel4 leadingAnchor];
      v29 = v31 = trailingAnchor;
      v27 = [trailingAnchor constraintLessThanOrEqualToAnchor:-8.0 constant:?];
      v34[0] = v27;
      trailingAnchor2 = [(APUISuggestionView *)self trailingAnchor];
      reasonLabel5 = [(APUISuggestionView *)self reasonLabel];
      [reasonLabel5 trailingAnchor];
      v24 = v26 = trailingAnchor2;
      v10 = [trailingAnchor2 constraintEqualToAnchor:16.0 constant:?];
      v34[1] = v10;
      reasonLabel6 = [(APUISuggestionView *)self reasonLabel];
      topAnchor = [reasonLabel6 topAnchor];
      topAnchor2 = [(APUISuggestionView *)self topAnchor];
      v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
      v34[2] = v14;
      reasonLabel7 = [(APUISuggestionView *)self reasonLabel];
      bottomAnchor = [reasonLabel7 bottomAnchor];
      bottomAnchor2 = [(APUISuggestionView *)self bottomAnchor];
      v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
      v34[3] = v18;
      v19 = v34;
    }

    else
    {
      stackView = [(APUISuggestionView *)self reasonLabel];
      topAnchor3 = [stackView topAnchor];
      reasonLabel4 = [(APUISuggestionView *)self stackView];
      [reasonLabel4 bottomAnchor];
      v29 = v31 = topAnchor3;
      v27 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:5.5 constant:?];
      v33[0] = v27;
      bottomAnchor3 = [(APUISuggestionView *)self bottomAnchor];
      reasonLabel5 = [(APUISuggestionView *)self reasonLabel];
      [reasonLabel5 bottomAnchor];
      v24 = v26 = bottomAnchor3;
      v10 = [bottomAnchor3 constraintEqualToAnchor:16.0 constant:?];
      v33[1] = v10;
      reasonLabel6 = [(APUISuggestionView *)self reasonLabel];
      topAnchor = [reasonLabel6 leadingAnchor];
      topAnchor2 = [(APUISuggestionView *)self leadingAnchor];
      v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
      v33[2] = v14;
      reasonLabel7 = [(APUISuggestionView *)self reasonLabel];
      bottomAnchor = [reasonLabel7 trailingAnchor];
      bottomAnchor2 = [(APUISuggestionView *)self trailingAnchor];
      v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-16.0];
      v33[3] = v18;
      v19 = v33;
    }

    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    [v28 activateConstraints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setINImage:(id)image withBundleID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277CD3D20] = [MEMORY[0x277CD3D20] sharedConnection];
    v9 = __atxlog_handle_ui();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = mEMORY[0x277CD3D20];
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent: INRemoteImageProxy image using connection %@", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke;
    v16[3] = &unk_278C90CD0;
    v17 = mEMORY[0x277CD3D20];
    v18 = imageCopy;
    selfCopy = self;
    v20 = dCopy;
    v10 = dCopy;
    v11 = mEMORY[0x277CD3D20];
    [v11 loadImageDataAndSizeForImage:v18 reply:v16];
  }

  else
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = imageCopy;
      _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent: using fetchUIImageWithCompletion %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke_26;
    v14[3] = &unk_278C90D20;
    v14[4] = self;
    v15 = dCopy;
    v11 = dCopy;
    [imageCopy fetchUIImageWithCompletion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __47__APUISuggestionView__setINImage_withBundleID___block_invoke(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__APUISuggestionView__setINImage_withBundleID___block_invoke_cold_1(a1, v6, v7);
    }
  }

  v8 = __atxlog_handle_ui();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent:connection %@ reply loadedImage=%@", buf, 0x16u);
  }

  v10 = [v5 _imageData];
  if (v10)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v10];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke_23;
    block[3] = &unk_278C909F0;
    block[4] = a1[6];
    v18 = v11;
    v12 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke_2;
    v15[3] = &unk_278C909F0;
    v13 = a1[7];
    v15[4] = a1[6];
    v16 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __47__APUISuggestionView__setINImage_withBundleID___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke_2_27;
  block[3] = &unk_278C90CF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __47__APUISuggestionView__setINImage_withBundleID___block_invoke_2_27(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    return [v2 _setAppImageViewWithImage:?];
  }

  else
  {
    return [v2 _setAppImageViewWithBundleIdentifier:a1[6]];
  }
}

- (void)setINImage:(id)image withBundleID:(id)d
{
  if (image)
  {
    [(APUISuggestionView *)self _setINImage:image withBundleID:d];
  }

  else
  {
    [(APUISuggestionView *)self _setAppImageViewWithBundleIdentifier:d];
  }
}

- (void)setLNImage:(id)image withBundleID:(id)d
{
  dCopy = d;
  v9 = dCopy;
  if (image)
  {
    inImage = [image inImage];
    [(APUISuggestionView *)self setINImage:inImage withBundleID:v9];

    v8 = inImage;
  }

  else
  {
    [(APUISuggestionView *)self _setAppImageViewWithBundleIdentifier:dCopy];
    v8 = v9;
  }
}

- (void)_setAppImageViewWithImage:(id)image
{
  v12 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[APUISuggestionView _setAppImageViewWithImage:]";
    v10 = 2112;
    v11 = imageCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent %s:  image: %@", &v8, 0x16u);
  }

  iconView = [(APUISuggestionView *)self iconView];
  [iconView setImage:imageCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setAppImageViewWithBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[APUISuggestionView _setAppImageViewWithBundleIdentifier:]";
    v10 = 2112;
    v11 = identifierCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent %s:  bundleId: %@", &v8, 0x16u);
  }

  iconView = [(APUISuggestionView *)self iconView];
  [iconView setAppBundleIdentifier:identifierCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (APUISuggestionsWidgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__APUISuggestionView__setINImage_withBundleID___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [a2 localizedDescription];
  v8 = 134218754;
  v9 = 5517;
  v10 = 2112;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = v6;
  _os_log_error_impl(&dword_240036000, a3, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: Error with connection %@ loadImageDataAndSizeForImage %@: %@", &v8, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

@end