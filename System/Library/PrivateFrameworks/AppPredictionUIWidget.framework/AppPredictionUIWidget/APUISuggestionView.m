@interface APUISuggestionView
- (APUISuggestionsWidgetViewDelegate)delegate;
- (id)iconForSuggestionIconView:(id)a3;
- (int)_subtitleNumberOfLines;
- (int)_titleNumberOfLines;
- (void)_setAppImageViewWithBundleIdentifier:(id)a3;
- (void)_setAppImageViewWithImage:(id)a3;
- (void)_setINImage:(id)a3 withBundleID:(id)a4;
- (void)_updateLabelColors;
- (void)_updateMaximumNumberOfLines;
- (void)createViewsIfNeeded;
- (void)installReasonLabelIfNecessary;
- (void)layoutSuggestion:(id)a3;
- (void)setINImage:(id)a3 withBundleID:(id)a4;
- (void)setLNImage:(id)a3 withBundleID:(id)a4;
@end

@implementation APUISuggestionView

- (void)layoutSuggestion:(id)a3
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
  v3 = [(APUISuggestionView *)self stackView];

  if (!v3)
  {
    v4 = objc_alloc_init(APUISuggestionIconView);
    [(APUISuggestionView *)self setIconView:v4];

    v5 = [(APUISuggestionView *)self iconView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(APUISuggestionView *)self iconView];
    [v6 setDelegate:self];

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

    v12 = [(APUISuggestionView *)self titleLabel];
    [v12 setOverrideUserInterfaceStyle:2];

    v107 = [MEMORY[0x277D75520] metricsForTextStyle:v8];
    v13 = *MEMORY[0x277D74420];
    v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
    [v106 pointSize];
    v15 = [v107 scaledFontForFont:v14 maximumPointSize:?];
    v16 = [(APUISuggestionView *)self titleLabel];
    [v16 setFont:v15];

    v17 = [(APUISuggestionView *)self titleLabel];
    [v17 setAdjustsFontSizeToFitWidth:0];

    v18 = [(APUISuggestionView *)self titleLabel];
    LODWORD(v19) = 1132068864;
    [v18 setContentCompressionResistancePriority:1 forAxis:v19];

    v20 = [(APUISuggestionView *)self subtitleLabel];
    [v20 setLineBreakMode:4];

    v21 = [(APUISuggestionView *)self titleLabel];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(APUISuggestionView *)self setSubtitleLabel:v22];

    v23 = *MEMORY[0x277D76940];
    v24 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76940] maximumContentSizeCategory:v9];
    v25 = [(APUISuggestionView *)self subtitleLabel];
    [v25 setFont:v24];

    v26 = [(APUISuggestionView *)self subtitleLabel];
    [v26 setOverrideUserInterfaceStyle:2];

    v27 = [(APUISuggestionView *)self subtitleLabel];
    LODWORD(v28) = 1132003328;
    [v27 setContentCompressionResistancePriority:1 forAxis:v28];

    v29 = [(APUISuggestionView *)self subtitleLabel];
    [v29 setLineBreakMode:4];

    v30 = [(APUISuggestionView *)self subtitleLabel];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v105 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v23 maximumContentSizeCategory:v9];
    v31 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(APUISuggestionView *)self setReasonLabel:v31];

    v32 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:v13];
    [v105 pointSize];
    v33 = [v107 scaledFontForFont:v32 maximumPointSize:?];
    v34 = [(APUISuggestionView *)self reasonLabel];
    [v34 setFont:v33];

    v35 = [(APUISuggestionView *)self reasonLabel];
    [v35 setLineBreakMode:4];

    v36 = [(APUISuggestionView *)self reasonLabel];
    [v36 setOverrideUserInterfaceStyle:2];

    v37 = [(APUISuggestionView *)self reasonLabel];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

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
    v45 = [(APUISuggestionView *)self titleLabel];
    v119[0] = v45;
    v46 = [(APUISuggestionView *)self subtitleLabel];
    v119[1] = v46;
    v47 = [(APUISuggestionView *)self reasonLabel];
    v119[2] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:3];
    [(APUISuggestionView *)self setLabels:v48];

    v49 = objc_alloc(MEMORY[0x277D75A68]);
    v50 = [(APUISuggestionView *)self titleLabel];
    v118[0] = v50;
    v51 = [(APUISuggestionView *)self subtitleLabel];
    v118[1] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
    v108 = [v49 initWithArrangedSubviews:v52];

    [v108 setAxis:1];
    [v108 setAlignment:1];
    [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v108 setSpacing:3.0];
    v53 = objc_alloc(MEMORY[0x277D75A68]);
    v54 = [(APUISuggestionView *)self iconView];
    v117[0] = v54;
    v117[1] = v108;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
    v56 = [v53 initWithArrangedSubviews:v55];
    [(APUISuggestionView *)self setStackView:v56];

    LODWORD(v55) = self->_platterSize == 2;
    v57 = [(APUISuggestionView *)self stackView];
    v58 = v57;
    if (v55)
    {
      [v57 setAxis:0];
      v59 = 8.0;
      v60 = 3;
    }

    else
    {
      [v57 setDistribution:0];

      v58 = [(APUISuggestionView *)self stackView];
      [v58 setAxis:1];
      v59 = 5.5;
      v60 = 1;
    }

    v61 = [(APUISuggestionView *)self stackView];
    [v61 setAlignment:v60];

    v62 = [(APUISuggestionView *)self stackView];
    [v62 setSpacing:v59];

    v63 = [(APUISuggestionView *)self stackView];
    [v63 setTranslatesAutoresizingMaskIntoConstraints:0];

    v64 = [(APUISuggestionView *)self stackView];
    [(APUISuggestionView *)self addSubview:v64];

    v85 = MEMORY[0x277CCAAD0];
    v102 = [(APUISuggestionView *)self iconView];
    v100 = [v102 heightAnchor];
    v98 = [(APUISuggestionView *)self heightAnchor];
    v96 = [v100 constraintEqualToAnchor:v98 multiplier:dbl_24004F6D0[v7]];
    v116[0] = v96;
    v94 = [(APUISuggestionView *)self iconView];
    v90 = [v94 widthAnchor];
    v92 = [(APUISuggestionView *)self iconView];
    v88 = [v92 heightAnchor];
    v86 = [v90 constraintEqualToAnchor:v88 multiplier:1.0];
    v116[1] = v86;
    v65 = [(APUISuggestionView *)self stackView];
    v66 = [v65 leadingAnchor];
    v67 = [(APUISuggestionView *)self leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:16.0];
    v116[2] = v68;
    v69 = [(APUISuggestionView *)self trailingAnchor];
    v70 = [(APUISuggestionView *)self stackView];
    v71 = [v70 trailingAnchor];
    v72 = [v69 constraintGreaterThanOrEqualToAnchor:v71 constant:16.0];
    v116[3] = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:4];
    [v85 activateConstraints:v73];

    LODWORD(v70) = self->_platterSize == 2;
    v99 = MEMORY[0x277CCAAD0];
    v104 = [(APUISuggestionView *)self stackView];
    if (v70)
    {
      v103 = [v104 centerYAnchor];
      v101 = [(APUISuggestionView *)self centerYAnchor];
      v74 = [v103 constraintEqualToAnchor:v101];
      v115 = v74;
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
      [v99 activateConstraints:v75];
    }

    else
    {
      v103 = [v104 topAnchor];
      v101 = [(APUISuggestionView *)self topAnchor];
      v74 = [v103 constraintEqualToAnchor:v101 constant:16.0];
      v114[0] = v74;
      v75 = [(APUISuggestionView *)self bottomAnchor];
      v97 = [(APUISuggestionView *)self stackView];
      v95 = [v97 bottomAnchor];
      v93 = [v75 constraintGreaterThanOrEqualToAnchor:v95 constant:16.0];
      v114[1] = v93;
      v91 = [(APUISuggestionView *)self titleLabel];
      v87 = [v91 trailingAnchor];
      v89 = [(APUISuggestionView *)self stackView];
      v76 = [v89 trailingAnchor];
      v77 = [v87 constraintEqualToAnchor:v76];
      v114[2] = v77;
      v78 = [(APUISuggestionView *)self subtitleLabel];
      v79 = [v78 trailingAnchor];
      v80 = [(APUISuggestionView *)self stackView];
      v81 = [v80 trailingAnchor];
      v82 = [v79 constraintEqualToAnchor:v81];
      v114[3] = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:4];
      [v99 activateConstraints:v83];
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)_updateLabelColors
{
  v3 = [(APUISuggestionView *)self traitCollection];
  v14 = [v3 sbh_iconTintColor];

  v4 = [(APUISuggestionView *)self traitCollection];
  v5 = [v4 sbh_iconImageAppearance];

  if ([v5 appearanceType] == 5)
  {
    v6 = [(APUISuggestionView *)self titleLabel];
    [v6 setTextColor:v14];

    v7 = [(APUISuggestionView *)self subtitleLabel];
    [v7 setTextColor:v14];

    v8 = [(APUISuggestionView *)self reasonLabel];
    [v8 setTextColor:v14];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] labelColor];
    v10 = [(APUISuggestionView *)self titleLabel];
    [v10 setTextColor:v9];

    v11 = [MEMORY[0x277D75348] labelColor];
    v12 = [(APUISuggestionView *)self subtitleLabel];
    [v12 setTextColor:v11];

    v8 = [MEMORY[0x277D75348] secondaryLabelColor];
    v13 = [(APUISuggestionView *)self reasonLabel];
    [v13 setTextColor:v8];
  }
}

- (id)iconForSuggestionIconView:(id)a3
{
  v4 = a3;
  v5 = [(APUISuggestionView *)self delegate];
  v6 = [v4 appBundleIdentifier];

  v7 = [v5 view:self iconForBundleIdentifier:v6];

  return v7;
}

- (void)_updateMaximumNumberOfLines
{
  v3 = [(APUISuggestionView *)self _titleNumberOfLines];
  v4 = [(APUISuggestionView *)self titleLabel];
  [v4 setNumberOfLines:v3];

  v5 = [(APUISuggestionView *)self _subtitleNumberOfLines];
  v6 = [(APUISuggestionView *)self subtitleLabel];
  [v6 setNumberOfLines:v5];

  v7 = [(APUISuggestionView *)self reasonLabel];
  [v7 setNumberOfLines:1];
}

- (int)_titleNumberOfLines
{
  v3 = [(APUISuggestionView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (self->_platterSize == 2)
  {
    v5 = MEMORY[0x277D76808];
LABEL_5:
    v9 = UIContentSizeCategoryCompareToCategory(v4, *v5) == NSOrderedDescending;
    v10 = 1;
    goto LABEL_6;
  }

  v6 = [(APUISuggestionView *)self reasonLabel];
  v7 = [v6 attributedText];
  v8 = [v7 length];

  if (v8)
  {
    v5 = MEMORY[0x277D76828];
    goto LABEL_5;
  }

  v9 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76820]) == NSOrderedDescending;
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
  v3 = [(APUISuggestionView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (self->_platterSize == 2)
  {
    if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76828]) == NSOrderedDescending)
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
  v3 = [(APUISuggestionView *)self reasonLabel];
  [v3 removeFromSuperview];

  v4 = [(APUISuggestionView *)self reasonLabel];
  v5 = [v4 attributedText];
  v6 = [v5 length];

  if (v6)
  {
    [(APUISuggestionView *)self _updateMaximumNumberOfLines];
    v7 = [(APUISuggestionView *)self reasonLabel];
    [(APUISuggestionView *)self addSubview:v7];

    v28 = MEMORY[0x277CCAAD0];
    if (self->_platterSize == 2)
    {
      v32 = [(APUISuggestionView *)self stackView];
      v8 = [v32 trailingAnchor];
      v30 = [(APUISuggestionView *)self reasonLabel];
      [v30 leadingAnchor];
      v29 = v31 = v8;
      v27 = [v8 constraintLessThanOrEqualToAnchor:-8.0 constant:?];
      v34[0] = v27;
      v9 = [(APUISuggestionView *)self trailingAnchor];
      v25 = [(APUISuggestionView *)self reasonLabel];
      [v25 trailingAnchor];
      v24 = v26 = v9;
      v10 = [v9 constraintEqualToAnchor:16.0 constant:?];
      v34[1] = v10;
      v11 = [(APUISuggestionView *)self reasonLabel];
      v12 = [v11 topAnchor];
      v13 = [(APUISuggestionView *)self topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:16.0];
      v34[2] = v14;
      v15 = [(APUISuggestionView *)self reasonLabel];
      v16 = [v15 bottomAnchor];
      v17 = [(APUISuggestionView *)self bottomAnchor];
      v18 = [v16 constraintLessThanOrEqualToAnchor:v17 constant:16.0];
      v34[3] = v18;
      v19 = v34;
    }

    else
    {
      v32 = [(APUISuggestionView *)self reasonLabel];
      v20 = [v32 topAnchor];
      v30 = [(APUISuggestionView *)self stackView];
      [v30 bottomAnchor];
      v29 = v31 = v20;
      v27 = [v20 constraintGreaterThanOrEqualToAnchor:5.5 constant:?];
      v33[0] = v27;
      v21 = [(APUISuggestionView *)self bottomAnchor];
      v25 = [(APUISuggestionView *)self reasonLabel];
      [v25 bottomAnchor];
      v24 = v26 = v21;
      v10 = [v21 constraintEqualToAnchor:16.0 constant:?];
      v33[1] = v10;
      v11 = [(APUISuggestionView *)self reasonLabel];
      v12 = [v11 leadingAnchor];
      v13 = [(APUISuggestionView *)self leadingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:16.0];
      v33[2] = v14;
      v15 = [(APUISuggestionView *)self reasonLabel];
      v16 = [v15 trailingAnchor];
      v17 = [(APUISuggestionView *)self trailingAnchor];
      v18 = [v16 constraintLessThanOrEqualToAnchor:v17 constant:-16.0];
      v33[3] = v18;
      v19 = v33;
    }

    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    [v28 activateConstraints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setINImage:(id)a3 withBundleID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CD3D20] sharedConnection];
    v9 = __atxlog_handle_ui();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent: INRemoteImageProxy image using connection %@", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke;
    v16[3] = &unk_278C90CD0;
    v17 = v8;
    v18 = v6;
    v19 = self;
    v20 = v7;
    v10 = v7;
    v11 = v8;
    [v11 loadImageDataAndSizeForImage:v18 reply:v16];
  }

  else
  {
    v12 = __atxlog_handle_ui();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent: using fetchUIImageWithCompletion %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__APUISuggestionView__setINImage_withBundleID___block_invoke_26;
    v14[3] = &unk_278C90D20;
    v14[4] = self;
    v15 = v7;
    v11 = v7;
    [v6 fetchUIImageWithCompletion:v14];
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

- (void)setINImage:(id)a3 withBundleID:(id)a4
{
  if (a3)
  {
    [(APUISuggestionView *)self _setINImage:a3 withBundleID:a4];
  }

  else
  {
    [(APUISuggestionView *)self _setAppImageViewWithBundleIdentifier:a4];
  }
}

- (void)setLNImage:(id)a3 withBundleID:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (a3)
  {
    v7 = [a3 inImage];
    [(APUISuggestionView *)self setINImage:v7 withBundleID:v9];

    v8 = v7;
  }

  else
  {
    [(APUISuggestionView *)self _setAppImageViewWithBundleIdentifier:v6];
    v8 = v9;
  }
}

- (void)_setAppImageViewWithImage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[APUISuggestionView _setAppImageViewWithImage:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent %s:  image: %@", &v8, 0x16u);
  }

  v6 = [(APUISuggestionView *)self iconView];
  [v6 setImage:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setAppImageViewWithBundleIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_ui();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[APUISuggestionView _setAppImageViewWithBundleIdentifier:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent %s:  bundleId: %@", &v8, 0x16u);
  }

  v6 = [(APUISuggestionView *)self iconView];
  [v6 setAppBundleIdentifier:v4];

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