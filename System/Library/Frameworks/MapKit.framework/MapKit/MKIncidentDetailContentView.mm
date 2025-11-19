@interface MKIncidentDetailContentView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (MKIncidentDetailContentView)initWithFrame:(CGRect)a3;
- (MKIncidentDetailDelegate)delegate;
- (id)customBodyTextView;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_clearChildrenStackView;
- (void)_didTapActionButton;
- (void)_setConstraints;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAccessoryFooterView:(id)a3;
- (void)configureWithAdvisories:(id)a3 artwork:(id)a4;
- (void)configureWithAdvisoryItem:(id)a3;
- (void)configureWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 image:(id)a6;
- (void)reset;
@end

@implementation MKIncidentDetailContentView

- (MKIncidentDetailDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAccessoryFooterView:(id)a3
{
  v5 = a3;
  accessoryFooterView = self->_accessoryFooterView;
  v7 = v5;
  if (accessoryFooterView != v5)
  {
    if (accessoryFooterView)
    {
      [(UIStackView *)self->_stackView removeArrangedSubview:?];
      [(UIView *)self->_accessoryFooterView removeFromSuperview];
    }

    objc_storeStrong(&self->_accessoryFooterView, a3);
    if (self->_accessoryFooterView)
    {
      [(UIStackView *)self->_stackView addArrangedSubview:?];
    }
  }
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 != 5)
  {
    v13 = _MKLocalizedStringFromThisBundle(@"Open Link in Safari Action");
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__8831;
    v24[4] = __Block_byref_object_dispose__8832;
    v14 = self;
    v25 = v14;
    if (v14->_advisoryNoticeItem)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __79__MKIncidentDetailContentView_textView_primaryActionForTextItem_defaultAction___block_invoke;
      v23[3] = &unk_1E76C7A58;
      v23[4] = v24;
      self = [MEMORY[0x1E69DC628] actionWithTitle:v13 image:0 identifier:0 handler:v23];
    }

    else
    {
      v15 = v14;
      if (!v14->_advisoryItem)
      {
        v18 = 1;
LABEL_7:
        _Block_object_dispose(v24, 8);

        if ((v18 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v16 = MEMORY[0x1E69DC628];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __79__MKIncidentDetailContentView_textView_primaryActionForTextItem_defaultAction___block_invoke_2;
      v20[3] = &unk_1E76C7A80;
      v22 = v24;
      v21 = v9;
      self = [v16 actionWithTitle:v13 image:0 identifier:0 handler:v20];
      v17 = +[MKMapService sharedService];
      [v17 captureUserAction:249 onTarget:46 forAdvisoryItem:v15->_advisoryItem];
    }

    v18 = 0;
    goto LABEL_7;
  }

LABEL_8:
  self = v10;
LABEL_9:

  return self;
}

void __79__MKIncidentDetailContentView_textView_primaryActionForTextItem_defaultAction___block_invoke(uint64_t a1)
{
  v10 = [*(*(*(*(a1 + 32) + 8) + 40) + 544) advisoryCard];
  v2 = [v10 metadata];
  v3 = [v2 formatArguments];
  v4 = [v3 firstObject];
  v5 = [v4 urlData];

  if ([v5 hasUrl])
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(*(*(a1 + 32) + 8) + 40) delegate];
      v9 = [v5 url];
      [v8 openUrlForAdvisoryNotice:v9];
    }
  }
}

void __79__MKIncidentDetailContentView_textView_primaryActionForTextItem_defaultAction___block_invoke_2(uint64_t a1)
{
  v11 = [*(*(*(*(a1 + 40) + 8) + 40) + 536) attribution];
  if (v11 && ([v11 formatTokens], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3))
  {
    v4 = [v11 formatTokens];
    v5 = [v4 firstObject];

    v6 = [v5 urlValue];
    v7 = [v6 url];
  }

  else
  {
    v5 = [*(a1 + 32) link];
    v7 = [v5 absoluteString];
  }

  if (v7)
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      WeakRetained = objc_loadWeakRetained((*(*(*(a1 + 40) + 8) + 40) + 552));
      [WeakRetained openUrlForAdvisoryNotice:v7];
    }
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = a3;
  v9 = a4;
  if (self->_advisoryItem)
  {
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v10 userInterfaceIdiom] != 5)
    {
LABEL_5:

      goto LABEL_6;
    }

    advisoryItem = self->_advisoryItem;

    if (advisoryItem)
    {
      v10 = +[MKMapService sharedService];
      [v10 captureUserAction:249 onTarget:46 forAdvisoryItem:self->_advisoryItem];
      goto LABEL_5;
    }
  }

LABEL_6:

  return 1;
}

- (void)_setConstraints
{
  v99[31] = *MEMORY[0x1E69E9840];
  v3 = [(UITextView *)self->_attributionView heightAnchor];
  v4 = [v3 constraintEqualToConstant:0.0];
  attributionViewEmptyHeightConstraint = self->_attributionViewEmptyHeightConstraint;
  self->_attributionViewEmptyHeightConstraint = v4;

  v6 = [(UIStackView *)self->_stackView bottomAnchor];
  v7 = [(UIView *)self->_backgroundView bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-12.0];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v8;

  v67 = MEMORY[0x1E696ACD8];
  v98 = [(UIView *)self->_backgroundView topAnchor];
  v97 = [(MKIncidentDetailContentView *)self topAnchor];
  v96 = [v98 constraintEqualToAnchor:v97 constant:0.0];
  v99[0] = v96;
  v95 = [(UIView *)self->_backgroundView bottomAnchor];
  v94 = [(MKIncidentDetailContentView *)self bottomAnchor];
  v93 = [v95 constraintEqualToAnchor:v94 constant:-16.0];
  v99[1] = v93;
  v92 = [(UIView *)self->_backgroundView trailingAnchor];
  v91 = [(MKIncidentDetailContentView *)self trailingAnchor];
  v90 = [v92 constraintEqualToAnchor:v91 constant:-16.0];
  v99[2] = v90;
  v89 = [(UIView *)self->_backgroundView leadingAnchor];
  v88 = [(MKIncidentDetailContentView *)self leadingAnchor];
  v87 = [v89 constraintEqualToAnchor:v88 constant:16.0];
  v99[3] = v87;
  v86 = [(UIImageView *)self->_imageView widthAnchor];
  v85 = [v86 constraintEqualToConstant:35.0];
  v99[4] = v85;
  v84 = [(UIImageView *)self->_imageView heightAnchor];
  v83 = [v84 constraintEqualToConstant:35.0];
  v99[5] = v83;
  v82 = [(UIImageView *)self->_imageView leadingAnchor];
  v81 = [(UIView *)self->_backgroundView leadingAnchor];
  v80 = [v82 constraintEqualToAnchor:v81 constant:16.0];
  v99[6] = v80;
  v79 = [(UIImageView *)self->_imageView centerYAnchor];
  v78 = [(UIView *)self->_titleView centerYAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v99[7] = v77;
  v76 = [(UIImageView *)self->_imageView topAnchor];
  v75 = [(UIView *)self->_backgroundView topAnchor];
  v74 = [v76 constraintGreaterThanOrEqualToAnchor:v75 constant:12.0];
  v99[8] = v74;
  v73 = [(UIView *)self->_titleView topAnchor];
  v72 = [(UIView *)self->_backgroundView topAnchor];
  v71 = [v73 constraintGreaterThanOrEqualToAnchor:v72 constant:12.0];
  v99[9] = v71;
  v70 = [(UIView *)self->_titleView bottomAnchor];
  v69 = [(UIStackView *)self->_stackView topAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:-12.0];
  v99[10] = v68;
  v66 = [(UIView *)self->_titleView leadingAnchor];
  v65 = [(UIImageView *)self->_imageView trailingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65 constant:10.0];
  v99[11] = v64;
  v63 = [(UIView *)self->_titleView trailingAnchor];
  v62 = [(UIView *)self->_backgroundView trailingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:-16.0];
  v99[12] = v61;
  v60 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v59 = [(UIView *)self->_titleView leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v99[13] = v58;
  v57 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v56 = [(UIView *)self->_titleView trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v99[14] = v55;
  v54 = [(_MKUILabel *)self->_titleLabel topAnchor];
  v53 = [(UIView *)self->_titleView topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v99[15] = v52;
  v51 = [(_MKUILabel *)self->_titleLabel bottomAnchor];
  v50 = [(_MKUILabel *)self->_subtitleLabel topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v99[16] = v49;
  v48 = [(_MKUILabel *)self->_subtitleLabel leadingAnchor];
  v47 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v99[17] = v46;
  v45 = [(_MKUILabel *)self->_subtitleLabel trailingAnchor];
  v44 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v99[18] = v43;
  v42 = [(_MKUILabel *)self->_subtitleLabel bottomAnchor];
  v41 = [(UIView *)self->_titleView bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v99[19] = v40;
  v39 = [(UIStackView *)self->_stackView leadingAnchor];
  v38 = [(UIImageView *)self->_imageView leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v99[20] = v37;
  v36 = [(UIStackView *)self->_stackView trailingAnchor];
  v35 = [(UIView *)self->_backgroundView trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:-16.0];
  v10 = self->_stackViewBottomConstraint;
  v99[21] = v34;
  v99[22] = v10;
  v33 = [(MKViewWithHairline *)self->_hairlineView topAnchor];
  v32 = [(UIStackView *)self->_stackView bottomAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:12.0];
  v99[23] = v31;
  v30 = [(MKViewWithHairline *)self->_hairlineView trailingAnchor];
  v29 = [(UIView *)self->_backgroundView trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v99[24] = v28;
  v27 = [(MKViewWithHairline *)self->_hairlineView leadingAnchor];
  v26 = [(UIStackView *)self->_stackView leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v99[25] = v25;
  v24 = [(UITextView *)self->_attributionView topAnchor];
  v23 = [(MKViewWithHairline *)self->_hairlineView bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:12.0];
  v99[26] = v22;
  v11 = [(UITextView *)self->_attributionView bottomAnchor];
  v12 = [(UIView *)self->_backgroundView bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-12.0];
  v99[27] = v13;
  v14 = [(UITextView *)self->_attributionView trailingAnchor];
  v15 = [(UIView *)self->_backgroundView trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-16.0];
  v99[28] = v16;
  v17 = [(UITextView *)self->_attributionView leadingAnchor];
  v18 = [(UIImageView *)self->_imageView leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v20 = self->_attributionViewEmptyHeightConstraint;
  v99[29] = v19;
  v99[30] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:31];
  [v67 activateConstraints:v21];
}

- (void)_didTapActionButton
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:381 onTarget:46 forAdvisoryItem:self->_advisoryItem];

  v6 = [(MKIncidentDetailContentView *)self delegate];
  v4 = [(GEOComposedRouteAdvisoryItem *)self->_advisoryItem cardAction];
  v5 = [v4 location];
  [v6 cellDidTapDownloadForLocation:v5];
}

- (void)configureWithTitle:(id)a3 subtitle:(id)a4 body:(id)a5 image:(id)a6
{
  v17 = a5;
  titleLabel = self->_titleLabel;
  v11 = a6;
  v12 = a4;
  [(_MKUILabel *)titleLabel setText:a3];
  [(_MKUILabel *)self->_subtitleLabel setText:v12];

  [(UIImageView *)self->_imageView setImage:v11];
  if ([v17 length])
  {
    [(UITextView *)self->_bodyTextView setText:v17];
    [(UIStackView *)self->_stackView addSubview:self->_bodyTextView];
    [(UIStackView *)self->_stackView addArrangedSubview:self->_bodyTextView];
  }

  else
  {
    v13 = [(UIStackView *)self->_stackView arrangedSubviews];
    v14 = [v13 containsObject:self->_bodyTextView];

    if (v14)
    {
      [(UIStackView *)self->_stackView removeArrangedSubview:self->_bodyTextView];
      [(UITextView *)self->_bodyTextView removeFromSuperview];
    }
  }

  v15 = [(MKIncidentDetailContentView *)self delegate];
  v16 = [v15 accessoryFooterView];

  [(MKIncidentDetailContentView *)self _updateAccessoryFooterView:v16];
}

- (void)configureWithAdvisories:(id)a3 artwork:(id)a4
{
  v53[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  advisoryItem = self->_advisoryItem;
  self->_advisoryItem = 0;
  v9 = a4;

  v10 = [MEMORY[0x1E695DF70] array];
  objc_storeStrong(&self->_advisoryNoticeItem, a3);
  v11 = [(UIImageView *)self->_imageView traitCollection];
  v12 = ImageForArtworkDataSource(v9, v11);

  if (!v12)
  {
    v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:30.0];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"leaf.circle.fill" withConfiguration:v13];
    v15 = [MEMORY[0x1E69DC888] systemGreenColor];
    v16 = [v14 _flatImageWithColor:v15];
    v12 = [v16 imageWithRenderingMode:1];
  }

  v47 = v12;
  [(UIImageView *)self->_imageView setImage:v12];
  [v10 addObject:self->_imageView];
  [(MKIncidentDetailContentView *)self _clearChildrenStackView];
  v17 = self;
  v49 = [(MKIncidentDetailContentView *)v17 customBodyTextView];
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 5)
  {
    [(UITextView *)v17->_attributionView setDelegate:0];
  }

  v48 = v7;
  v20 = [v7 advisoryCard];
  v21 = objc_alloc(MEMORY[0x1E69A1CA8]);
  v22 = [v20 title];
  v23 = [v21 initWithGeoFormattedString:v22];

  v46 = v23;
  v24 = [v23 stringWithDefaultOptions];
  [(_MKUILabel *)v17->_titleLabel setText:v24];

  [v10 addObject:v17->_titleLabel];
  v25 = objc_alloc(MEMORY[0x1E69A1CA8]);
  v26 = [v20 details];
  v27 = [v25 initWithGeoFormattedString:v26];

  v45 = v27;
  v28 = [[MKServerFormattedString alloc] initWithComposedString:v27];
  v29 = *MEMORY[0x1E69DB650];
  v52[0] = *MEMORY[0x1E69DB650];
  v30 = [MEMORY[0x1E69DC888] labelColor];
  v53[0] = v30;
  v31 = *MEMORY[0x1E69DB648];
  v52[1] = *MEMORY[0x1E69DB648];
  v53[1] = v17->_bodyFont;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v44 = v28;
  v33 = [(MKServerFormattedString *)v28 multiPartAttributedStringWithAttributes:v32];
  v34 = [v33 attributedString];

  v43 = v34;
  [v49 setAttributedText:v34];
  [(UIStackView *)v17->_childrenStackViews addArrangedSubview:v49];
  [(UIStackView *)v17->_stackView addArrangedSubview:v17->_childrenStackViews];
  [v10 addObject:v17->_stackView];
  v35 = objc_alloc(MEMORY[0x1E69A1CA8]);
  v36 = [v20 metadata];
  v37 = [v35 initWithGeoFormattedString:v36];

  if (v37)
  {
    v38 = [[MKServerFormattedString alloc] initWithComposedString:v37];
    v50[0] = v29;
    v39 = [MEMORY[0x1E69DC888] labelColor];
    v50[1] = v31;
    v51[0] = v39;
    v51[1] = v17->_bodyFont;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v41 = [(MKServerFormattedString *)v38 multiPartAttributedStringWithAttributes:v40];
    v42 = [v41 attributedString];

    [(UITextView *)v17->_attributionView setAttributedText:v42];
    [(NSLayoutConstraint *)v17->_attributionViewEmptyHeightConstraint setActive:0];
    [(NSLayoutConstraint *)v17->_stackViewBottomConstraint setActive:0];
    [(MKViewWithHairline *)v17->_hairlineView setHidden:0];
    [v10 addObject:v17->_attributionView];
  }

  [(MKIncidentDetailContentView *)v17 setAccessibilityElements:v10];
}

- (void)configureWithAdvisoryItem:(id)a3
{
  v58[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_advisoryItem == v5)
  {
    goto LABEL_29;
  }

  v6 = [MEMORY[0x1E695DF70] array];
  advisoryNoticeItem = self->_advisoryNoticeItem;
  self->_advisoryNoticeItem = 0;

  objc_storeStrong(&self->_advisoryItem, a3);
  v8 = [(GEOComposedRouteAdvisoryItem *)v5 artwork];
  v9 = [(UIImageView *)self->_imageView traitCollection];
  v10 = ImageForArtworkDataSource(v8, v9);

  if (v10)
  {
    [(UIImageView *)self->_imageView setImage:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E69DCAB8] imageNamed:@"warning_badge"];
    [(UIImageView *)self->_imageView setImage:v11];
  }

  [v6 addObject:self->_imageView];
  v12 = [(GEOComposedRouteAdvisoryItem *)v5 titleString];
  v13 = [v12 stringWithDefaultOptions];
  if (v13)
  {
    p_titleLabel = &self->_titleLabel;
    [(_MKUILabel *)self->_titleLabel setText:v13];
  }

  else
  {
    v15 = _MKLocalizedStringFromThisBundle(@"MKIncidentExtendedDetailCell_Advisories_title");
    p_titleLabel = &self->_titleLabel;
    [(_MKUILabel *)self->_titleLabel setText:v15];
  }

  [v6 addObject:*p_titleLabel];
  v16 = [(GEOComposedRouteAdvisoryItem *)v5 dateOfLastUpdateString];
  if (v16)
  {

LABEL_11:
    v18 = [(GEOComposedRouteAdvisoryItem *)v5 dateOfLastUpdateString];

    if (v18)
    {
      v19 = [(GEOComposedRouteAdvisoryItem *)v5 dateOfLastUpdateString];
      v20 = [v19 stringWithDefaultOptions];
    }

    else
    {
      if (configureWithAdvisoryItem__onceToken != -1)
      {
        dispatch_once(&configureWithAdvisoryItem__onceToken, &__block_literal_global_69);
      }

      v21 = MEMORY[0x1E696AB78];
      v22 = [configureWithAdvisoryItem__formatter locale];
      v23 = [v21 dateFormatFromTemplate:@"YYYYMMddjma" options:0 locale:v22];
      [configureWithAdvisoryItem__formatter setDateFormat:v23];

      v24 = MEMORY[0x1E696AEC0];
      v19 = _MKLocalizedStringFromThisBundle(@"Placecard_TransitIncident_LastUpdated");
      v25 = configureWithAdvisoryItem__formatter;
      v26 = [(GEOComposedRouteAdvisoryItem *)v5 dateOfLastUpdate];
      v27 = [v25 stringFromDate:v26];
      v20 = [v24 stringWithFormat:v19, v27];
    }

    [(_MKUILabel *)self->_subtitleLabel setText:v20];
    [v6 addObject:self->_subtitleLabel];

    goto LABEL_17;
  }

  v17 = [(GEOComposedRouteAdvisoryItem *)v5 dateOfLastUpdate];

  if (v17)
  {
    goto LABEL_11;
  }

LABEL_17:
  v28 = DetailTextsForAdvisoryItem(v5);
  if (!v28)
  {
    v29 = [(GEOComposedRouteAdvisoryItem *)v5 subtitleString];
    v30 = [v29 stringWithDefaultOptions];

    if (v30)
    {
      v58[0] = v30;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    }

    else
    {
      v28 = 0;
    }
  }

  v52 = v10;
  [(MKIncidentDetailContentView *)self _clearChildrenStackView];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __57__MKIncidentDetailContentView_configureWithAdvisoryItem___block_invoke_2;
  v53[3] = &unk_1E76C7A30;
  v53[4] = self;
  v31 = v5;
  v54 = v31;
  v32 = v28;
  v55 = v32;
  [v32 enumerateObjectsUsingBlock:v53];
  v33 = [(UIStackView *)self->_childrenStackViews arrangedSubviews];
  v34 = [v33 count];

  if (v34)
  {
    [(UIStackView *)self->_stackView addArrangedSubview:self->_childrenStackViews];
  }

  v35 = [(GEOComposedRouteAdvisoryItem *)v31 cardAction];
  v36 = [v35 type];

  if (v36 == 1)
  {
    v37 = objc_alloc(MEMORY[0x1E69DC738]);
    v38 = [v37 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v38 setTitleColor:v39 forState:0];

    v40 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0];
    v41 = [v38 titleLabel];
    [v41 setFont:v40];

    v42 = [v38 titleLabel];
    [v42 setTextAlignment:4];

    v43 = _MKLocalizedStringFromThisBundle(@"Placecard_TransitIncident_actionButton");
    [v38 setTitle:v43 forState:0];

    [v38 addTarget:self action:sel__didTapActionButton forControlEvents:0x2000];
    [(UIStackView *)self->_stackView addArrangedSubview:v38];
  }

  [v6 addObject:self->_stackView];
  v44 = [(GEOComposedRouteAdvisoryItem *)v31 attributionString];

  if (v44)
  {
    v45 = [MKServerFormattedString alloc];
    v46 = [(GEOComposedRouteAdvisoryItem *)v31 attributionString];
    v47 = [(MKServerFormattedString *)v45 initWithComposedString:v46];

    v56[0] = *MEMORY[0x1E69DB650];
    v48 = [MEMORY[0x1E69DC888] labelColor];
    v56[1] = *MEMORY[0x1E69DB648];
    v57[0] = v48;
    v57[1] = self->_bodyFont;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v50 = [(MKServerFormattedString *)v47 multiPartAttributedStringWithAttributes:v49];
    v51 = [v50 attributedString];

    [(UITextView *)self->_attributionView setAttributedText:v51];
    [(UITextView *)self->_attributionView setDelegate:self];
    [(NSLayoutConstraint *)self->_attributionViewEmptyHeightConstraint setActive:0];
    [(NSLayoutConstraint *)self->_stackViewBottomConstraint setActive:0];
    [(MKViewWithHairline *)self->_hairlineView setHidden:0];
    [v6 addObject:self->_attributionView];
  }

  [(MKIncidentDetailContentView *)self setAccessibilityElements:v6];

LABEL_29:
}

void __57__MKIncidentDetailContentView_configureWithAdvisoryItem___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 customBodyTextView];
  if (a3 || ![*(a1 + 40) isNonTransitIncident] || objc_msgSend(*(a1 + 48), "count") <= 1)
  {
    v7 = &OBJC_IVAR___MKIncidentDetailContentView__bodyFont;
  }

  else
  {
    v7 = &OBJC_IVAR___MKIncidentDetailContentView__titleFont;
  }

  [v8 setFont:*(*(a1 + 32) + *v7)];
  [v8 setText:v6];

  [v8 setAccessibilityIdentifier:@"TextView"];
  [*(*(a1 + 32) + 448) addArrangedSubview:v8];
}

void __57__MKIncidentDetailContentView_configureWithAdvisoryItem___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = configureWithAdvisoryItem__formatter;
  configureWithAdvisoryItem__formatter = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [configureWithAdvisoryItem__formatter setLocale:v2];
}

- (void)_clearChildrenStackView
{
  v2 = [(UIStackView *)self->_childrenStackViews arrangedSubviews];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_8871];
}

- (id)customBodyTextView
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v4 = [v3 textContainer];
  [v4 setLineFragmentPadding:0.0];

  [v3 setDelegate:self];
  [v3 setEditable:0];
  [v3 setDataDetectorTypes:3];
  [v3 setScrollEnabled:0];
  [v3 setTextAlignment:4];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v5];

  v13[0] = *MEMORY[0x1E69DB650];
  v6 = [(UIView *)self mk_theme];
  v7 = [v6 tintColor];
  v14[0] = v7;
  v13[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v3 setLinkTextAttributes:v9];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(UIView *)self mk_theme];
  v11 = [v10 textColor];
  [v3 setTextColor:v11];

  [v3 setFont:self->_bodyFont];

  return v3;
}

- (void)reset
{
  [(UIStackView *)self->_stackView _mapkit_setArrangedSubviews:MEMORY[0x1E695E0F0]];
  [(_MKUILabel *)self->_titleLabel setAttributedText:0];
  [(_MKUILabel *)self->_subtitleLabel setAttributedText:0];
  advisoryItem = self->_advisoryItem;
  self->_advisoryItem = 0;

  [(MKViewWithHairline *)self->_hairlineView setHidden:1];
  [(UITextView *)self->_attributionView setAttributedText:0];
  [(NSLayoutConstraint *)self->_attributionViewEmptyHeightConstraint setActive:1];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;

  [(NSLayoutConstraint *)stackViewBottomConstraint setActive:1];
}

- (void)_setupConstraints
{
  v101[31] = *MEMORY[0x1E69E9840];
  v3 = [(UITextView *)self->_attributionView heightAnchor];
  v4 = 0.0;
  v5 = [v3 constraintEqualToConstant:0.0];
  attributionViewEmptyHeightConstraint = self->_attributionViewEmptyHeightConstraint;
  self->_attributionViewEmptyHeightConstraint = v5;

  v7 = [(UIStackView *)self->_stackView bottomAnchor];
  v8 = [(UIView *)self->_backgroundView bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-12.0];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v9;

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v11 userInterfaceIdiom] == 5)
  {
    v4 = 12.0;
  }

  v69 = MEMORY[0x1E696ACD8];
  v100 = [(UIView *)self->_backgroundView topAnchor];
  v99 = [(MKIncidentDetailContentView *)self topAnchor];
  v98 = [v100 constraintEqualToAnchor:v99 constant:v4];
  v101[0] = v98;
  v97 = [(UIView *)self->_backgroundView bottomAnchor];
  v96 = [(MKIncidentDetailContentView *)self bottomAnchor];
  v95 = [v97 constraintEqualToAnchor:v96 constant:-12.0];
  v101[1] = v95;
  v94 = [(UIView *)self->_backgroundView trailingAnchor];
  v93 = [(MKIncidentDetailContentView *)self trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93 constant:-16.0];
  v101[2] = v92;
  v91 = [(UIView *)self->_backgroundView leadingAnchor];
  v90 = [(MKIncidentDetailContentView *)self leadingAnchor];
  v89 = [v91 constraintEqualToAnchor:v90 constant:16.0];
  v101[3] = v89;
  v88 = [(UIImageView *)self->_imageView widthAnchor];
  v87 = [v88 constraintEqualToConstant:35.0];
  v101[4] = v87;
  v86 = [(UIImageView *)self->_imageView heightAnchor];
  v85 = [v86 constraintEqualToConstant:35.0];
  v101[5] = v85;
  v84 = [(UIImageView *)self->_imageView leadingAnchor];
  v83 = [(UIView *)self->_backgroundView leadingAnchor];
  v82 = [v84 constraintEqualToAnchor:v83 constant:16.0];
  v101[6] = v82;
  v81 = [(UIImageView *)self->_imageView centerYAnchor];
  v80 = [(UIView *)self->_titleView centerYAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v101[7] = v79;
  v78 = [(UIImageView *)self->_imageView topAnchor];
  v77 = [(UIView *)self->_backgroundView topAnchor];
  v76 = [v78 constraintGreaterThanOrEqualToAnchor:v77 constant:12.0];
  v101[8] = v76;
  v75 = [(UIView *)self->_titleView topAnchor];
  v74 = [(UIView *)self->_backgroundView topAnchor];
  v73 = [v75 constraintGreaterThanOrEqualToAnchor:v74 constant:12.0];
  v101[9] = v73;
  v72 = [(UIView *)self->_titleView bottomAnchor];
  v71 = [(UIStackView *)self->_stackView topAnchor];
  v70 = [v72 constraintEqualToAnchor:v71 constant:-12.0];
  v101[10] = v70;
  v68 = [(UIView *)self->_titleView leadingAnchor];
  v67 = [(UIImageView *)self->_imageView trailingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 constant:10.0];
  v101[11] = v66;
  v65 = [(UIView *)self->_titleView trailingAnchor];
  v64 = [(UIView *)self->_backgroundView trailingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:-16.0];
  v101[12] = v63;
  v62 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v61 = [(UIView *)self->_titleView leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v101[13] = v60;
  v59 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v58 = [(UIView *)self->_titleView trailingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v101[14] = v57;
  v56 = [(_MKUILabel *)self->_titleLabel topAnchor];
  v55 = [(UIView *)self->_titleView topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v101[15] = v54;
  v53 = [(_MKUILabel *)self->_titleLabel bottomAnchor];
  v52 = [(_MKUILabel *)self->_subtitleLabel topAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v101[16] = v51;
  v50 = [(_MKUILabel *)self->_subtitleLabel leadingAnchor];
  v49 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v101[17] = v48;
  v47 = [(_MKUILabel *)self->_subtitleLabel trailingAnchor];
  v46 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v101[18] = v45;
  v44 = [(_MKUILabel *)self->_subtitleLabel bottomAnchor];
  v43 = [(UIView *)self->_titleView bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v101[19] = v42;
  v41 = [(UIStackView *)self->_stackView leadingAnchor];
  v40 = [(UIImageView *)self->_imageView leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v101[20] = v39;
  v38 = [(UIStackView *)self->_stackView trailingAnchor];
  v37 = [(UIView *)self->_backgroundView trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:-16.0];
  v12 = self->_stackViewBottomConstraint;
  v101[21] = v36;
  v101[22] = v12;
  v35 = [(MKViewWithHairline *)self->_hairlineView topAnchor];
  v34 = [(UIStackView *)self->_stackView bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34 constant:12.0];
  v101[23] = v33;
  v32 = [(MKViewWithHairline *)self->_hairlineView trailingAnchor];
  v31 = [(UIView *)self->_backgroundView trailingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v101[24] = v30;
  v29 = [(MKViewWithHairline *)self->_hairlineView leadingAnchor];
  v28 = [(UIStackView *)self->_stackView leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v101[25] = v27;
  v26 = [(UITextView *)self->_attributionView topAnchor];
  v25 = [(MKViewWithHairline *)self->_hairlineView bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25 constant:12.0];
  v101[26] = v24;
  v13 = [(UITextView *)self->_attributionView bottomAnchor];
  v14 = [(UIView *)self->_backgroundView bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-12.0];
  v101[27] = v15;
  v16 = [(UITextView *)self->_attributionView trailingAnchor];
  v17 = [(UIView *)self->_backgroundView trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-16.0];
  v101[28] = v18;
  v19 = [(UITextView *)self->_attributionView leadingAnchor];
  v20 = [(UIImageView *)self->_imageView leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v22 = self->_attributionViewEmptyHeightConstraint;
  v101[29] = v21;
  v101[30] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:31];
  [v69 activateConstraints:v23];
}

- (void)_setupSubviews
{
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB980]];
  titleFont = self->_titleFont;
  self->_titleFont = v4;

  v6 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80]];
  subTitleFont = self->_subTitleFont;
  self->_subTitleFont = v6;

  v8 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v3];
  bodyFont = self->_bodyFont;
  self->_bodyFont = v8;

  v10 = objc_alloc(MEMORY[0x1E69DD250]);
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v15;

  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_backgroundView setAccessibilityIdentifier:@"BackgroundView"];
  v17 = [(UIView *)self->_backgroundView layer];
  [v17 setCornerRadius:10.0];

  v18 = [(UIView *)self->_backgroundView layer];
  [v18 setMasksToBounds:1];

  v19 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:v19];

  [(MKIncidentDetailContentView *)self addSubview:self->_backgroundView];
  v20 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v11, v12, v13, v14}];
  stackView = self->_stackView;
  self->_stackView = v20;

  [(UIStackView *)self->_stackView setPreservesSuperviewLayoutMargins:1];
  [(UIStackView *)self->_stackView setSpacing:10.0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setDistribution:0];
  [(UIStackView *)self->_stackView setAlignment:0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAccessibilityIdentifier:@"StackView"];
  [(MKIncidentDetailContentView *)self addSubview:self->_stackView];
  v22 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithFrame:{v11, v12, v13, v14}];
  childrenStackViews = self->_childrenStackViews;
  self->_childrenStackViews = v22;

  [(UIStackView *)self->_childrenStackViews setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v11, v12, v13, v14}];
  imageView = self->_imageView;
  self->_imageView = v24;

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setClipsToBounds:1];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"ImageView"];
  [(UIImageView *)self->_imageView setIsAccessibilityElement:1];
  [(MKIncidentDetailContentView *)self addSubview:self->_imageView];
  v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14}];
  titleView = self->_titleView;
  self->_titleView = v26;

  [(UIView *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_titleView setAccessibilityIdentifier:@"TitleView"];
  v28 = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_titleView setBackgroundColor:v28];

  [(MKIncidentDetailContentView *)self addSubview:self->_titleView];
  v29 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v29;

  [(_MKUILabel *)self->_titleLabel setNumberOfLines:0];
  [(_MKUILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_titleLabel setFont:self->_titleFont];
  [(_MKUILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleView"];
  [(UIView *)self->_titleView addSubview:self->_titleLabel];
  v31 = objc_opt_new();
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v31;

  [(_MKUILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(_MKUILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_subtitleLabel setFont:self->_subTitleFont];
  v33 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(_MKUILabel *)self->_subtitleLabel setTextColor:v33];

  [(_MKUILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"TimeDescriptionView"];
  [(UIView *)self->_titleView addSubview:self->_subtitleLabel];
  v34 = [[MKViewWithHairline alloc] initWithFrame:v11, v12, v13, v14];
  hairlineView = self->_hairlineView;
  self->_hairlineView = v34;

  [(MKViewWithHairline *)self->_hairlineView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewWithHairline *)self->_hairlineView setHidden:1];
  [(MKViewWithHairline *)self->_hairlineView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_hairlineView setBottomHairlineHidden:0];
  [(MKIncidentDetailContentView *)self addSubview:self->_hairlineView];
  v36 = [(MKIncidentDetailContentView *)self customBodyTextView];
  attributionView = self->_attributionView;
  self->_attributionView = v36;

  [(UITextView *)self->_attributionView setFont:self->_bodyFont];
  [(UITextView *)self->_attributionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_attributionView setAccessibilityIdentifier:@"AttributionView"];
  [(MKIncidentDetailContentView *)self addSubview:self->_attributionView];
  v38 = [(MKIncidentDetailContentView *)self customBodyTextView];
  bodyTextView = self->_bodyTextView;
  self->_bodyTextView = v38;
}

- (MKIncidentDetailContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKIncidentDetailContentView;
  v3 = [(MKIncidentDetailContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentDetailContentView *)v3 _setupSubviews];
    [(MKIncidentDetailContentView *)v4 _setupConstraints];
  }

  return v4;
}

@end