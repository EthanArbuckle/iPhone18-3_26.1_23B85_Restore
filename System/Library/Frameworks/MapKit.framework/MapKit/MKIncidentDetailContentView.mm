@interface MKIncidentDetailContentView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (MKIncidentDetailContentView)initWithFrame:(CGRect)frame;
- (MKIncidentDetailDelegate)delegate;
- (id)customBodyTextView;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_clearChildrenStackView;
- (void)_didTapActionButton;
- (void)_setConstraints;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAccessoryFooterView:(id)view;
- (void)configureWithAdvisories:(id)advisories artwork:(id)artwork;
- (void)configureWithAdvisoryItem:(id)item;
- (void)configureWithTitle:(id)title subtitle:(id)subtitle body:(id)body image:(id)image;
- (void)reset;
@end

@implementation MKIncidentDetailContentView

- (MKIncidentDetailDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAccessoryFooterView:(id)view
{
  viewCopy = view;
  accessoryFooterView = self->_accessoryFooterView;
  v7 = viewCopy;
  if (accessoryFooterView != viewCopy)
  {
    if (accessoryFooterView)
    {
      [(UIStackView *)self->_stackView removeArrangedSubview:?];
      [(UIView *)self->_accessoryFooterView removeFromSuperview];
    }

    objc_storeStrong(&self->_accessoryFooterView, view);
    if (self->_accessoryFooterView)
    {
      [(UIStackView *)self->_stackView addArrangedSubview:?];
    }
  }
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    v13 = _MKLocalizedStringFromThisBundle(@"Open Link in Safari Action");
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__8831;
    v24[4] = __Block_byref_object_dispose__8832;
    selfCopy = self;
    v25 = selfCopy;
    if (selfCopy->_advisoryNoticeItem)
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
      v15 = selfCopy;
      if (!selfCopy->_advisoryItem)
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
      v21 = itemCopy;
      self = [v16 actionWithTitle:v13 image:0 identifier:0 handler:v20];
      v17 = +[MKMapService sharedService];
      [v17 captureUserAction:249 onTarget:46 forAdvisoryItem:v15->_advisoryItem];
    }

    v18 = 0;
    goto LABEL_7;
  }

LABEL_8:
  self = actionCopy;
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  viewCopy = view;
  lCopy = l;
  if (self->_advisoryItem)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 5)
    {
LABEL_5:

      goto LABEL_6;
    }

    advisoryItem = self->_advisoryItem;

    if (advisoryItem)
    {
      currentDevice = +[MKMapService sharedService];
      [currentDevice captureUserAction:249 onTarget:46 forAdvisoryItem:self->_advisoryItem];
      goto LABEL_5;
    }
  }

LABEL_6:

  return 1;
}

- (void)_setConstraints
{
  v99[31] = *MEMORY[0x1E69E9840];
  heightAnchor = [(UITextView *)self->_attributionView heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:0.0];
  attributionViewEmptyHeightConstraint = self->_attributionViewEmptyHeightConstraint;
  self->_attributionViewEmptyHeightConstraint = v4;

  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_backgroundView bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v8;

  v67 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)self->_backgroundView topAnchor];
  topAnchor2 = [(MKIncidentDetailContentView *)self topAnchor];
  v96 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v99[0] = v96;
  bottomAnchor3 = [(UIView *)self->_backgroundView bottomAnchor];
  bottomAnchor4 = [(MKIncidentDetailContentView *)self bottomAnchor];
  v93 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
  v99[1] = v93;
  trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor2 = [(MKIncidentDetailContentView *)self trailingAnchor];
  v90 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v99[2] = v90;
  leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
  leadingAnchor2 = [(MKIncidentDetailContentView *)self leadingAnchor];
  v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v99[3] = v87;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v85 = [widthAnchor constraintEqualToConstant:35.0];
  v99[4] = v85;
  heightAnchor2 = [(UIImageView *)self->_imageView heightAnchor];
  v83 = [heightAnchor2 constraintEqualToConstant:35.0];
  v99[5] = v83;
  leadingAnchor3 = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_backgroundView leadingAnchor];
  v80 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v99[6] = v80;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_titleView centerYAnchor];
  v77 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v99[7] = v77;
  topAnchor3 = [(UIImageView *)self->_imageView topAnchor];
  topAnchor4 = [(UIView *)self->_backgroundView topAnchor];
  v74 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:12.0];
  v99[8] = v74;
  topAnchor5 = [(UIView *)self->_titleView topAnchor];
  topAnchor6 = [(UIView *)self->_backgroundView topAnchor];
  v71 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:12.0];
  v99[9] = v71;
  bottomAnchor5 = [(UIView *)self->_titleView bottomAnchor];
  topAnchor7 = [(UIStackView *)self->_stackView topAnchor];
  v68 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:-12.0];
  v99[10] = v68;
  leadingAnchor5 = [(UIView *)self->_titleView leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_imageView trailingAnchor];
  v64 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
  v99[11] = v64;
  trailingAnchor4 = [(UIView *)self->_titleView trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_backgroundView trailingAnchor];
  v61 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
  v99[12] = v61;
  leadingAnchor6 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor7 = [(UIView *)self->_titleView leadingAnchor];
  v58 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v99[13] = v58;
  trailingAnchor6 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor7 = [(UIView *)self->_titleView trailingAnchor];
  v55 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v99[14] = v55;
  topAnchor8 = [(_MKUILabel *)self->_titleLabel topAnchor];
  topAnchor9 = [(UIView *)self->_titleView topAnchor];
  v52 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v99[15] = v52;
  bottomAnchor6 = [(_MKUILabel *)self->_titleLabel bottomAnchor];
  topAnchor10 = [(_MKUILabel *)self->_subtitleLabel topAnchor];
  v49 = [bottomAnchor6 constraintEqualToAnchor:topAnchor10];
  v99[16] = v49;
  leadingAnchor8 = [(_MKUILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor9 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v46 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v99[17] = v46;
  trailingAnchor8 = [(_MKUILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor9 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v43 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v99[18] = v43;
  bottomAnchor7 = [(_MKUILabel *)self->_subtitleLabel bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_titleView bottomAnchor];
  v40 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v99[19] = v40;
  leadingAnchor10 = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor11 = [(UIImageView *)self->_imageView leadingAnchor];
  v37 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v99[20] = v37;
  trailingAnchor10 = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor11 = [(UIView *)self->_backgroundView trailingAnchor];
  v34 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-16.0];
  v10 = self->_stackViewBottomConstraint;
  v99[21] = v34;
  v99[22] = v10;
  topAnchor11 = [(MKViewWithHairline *)self->_hairlineView topAnchor];
  bottomAnchor9 = [(UIStackView *)self->_stackView bottomAnchor];
  v31 = [topAnchor11 constraintEqualToAnchor:bottomAnchor9 constant:12.0];
  v99[23] = v31;
  trailingAnchor12 = [(MKViewWithHairline *)self->_hairlineView trailingAnchor];
  trailingAnchor13 = [(UIView *)self->_backgroundView trailingAnchor];
  v28 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  v99[24] = v28;
  leadingAnchor12 = [(MKViewWithHairline *)self->_hairlineView leadingAnchor];
  leadingAnchor13 = [(UIStackView *)self->_stackView leadingAnchor];
  v25 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  v99[25] = v25;
  topAnchor12 = [(UITextView *)self->_attributionView topAnchor];
  bottomAnchor10 = [(MKViewWithHairline *)self->_hairlineView bottomAnchor];
  v22 = [topAnchor12 constraintEqualToAnchor:bottomAnchor10 constant:12.0];
  v99[26] = v22;
  bottomAnchor11 = [(UITextView *)self->_attributionView bottomAnchor];
  bottomAnchor12 = [(UIView *)self->_backgroundView bottomAnchor];
  v13 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12 constant:-12.0];
  v99[27] = v13;
  trailingAnchor14 = [(UITextView *)self->_attributionView trailingAnchor];
  trailingAnchor15 = [(UIView *)self->_backgroundView trailingAnchor];
  v16 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:-16.0];
  v99[28] = v16;
  leadingAnchor14 = [(UITextView *)self->_attributionView leadingAnchor];
  leadingAnchor15 = [(UIImageView *)self->_imageView leadingAnchor];
  v19 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
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

  delegate = [(MKIncidentDetailContentView *)self delegate];
  cardAction = [(GEOComposedRouteAdvisoryItem *)self->_advisoryItem cardAction];
  location = [cardAction location];
  [delegate cellDidTapDownloadForLocation:location];
}

- (void)configureWithTitle:(id)title subtitle:(id)subtitle body:(id)body image:(id)image
{
  bodyCopy = body;
  titleLabel = self->_titleLabel;
  imageCopy = image;
  subtitleCopy = subtitle;
  [(_MKUILabel *)titleLabel setText:title];
  [(_MKUILabel *)self->_subtitleLabel setText:subtitleCopy];

  [(UIImageView *)self->_imageView setImage:imageCopy];
  if ([bodyCopy length])
  {
    [(UITextView *)self->_bodyTextView setText:bodyCopy];
    [(UIStackView *)self->_stackView addSubview:self->_bodyTextView];
    [(UIStackView *)self->_stackView addArrangedSubview:self->_bodyTextView];
  }

  else
  {
    arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
    v14 = [arrangedSubviews containsObject:self->_bodyTextView];

    if (v14)
    {
      [(UIStackView *)self->_stackView removeArrangedSubview:self->_bodyTextView];
      [(UITextView *)self->_bodyTextView removeFromSuperview];
    }
  }

  delegate = [(MKIncidentDetailContentView *)self delegate];
  accessoryFooterView = [delegate accessoryFooterView];

  [(MKIncidentDetailContentView *)self _updateAccessoryFooterView:accessoryFooterView];
}

- (void)configureWithAdvisories:(id)advisories artwork:(id)artwork
{
  v53[2] = *MEMORY[0x1E69E9840];
  advisoriesCopy = advisories;
  advisoryItem = self->_advisoryItem;
  self->_advisoryItem = 0;
  artworkCopy = artwork;

  array = [MEMORY[0x1E695DF70] array];
  objc_storeStrong(&self->_advisoryNoticeItem, advisories);
  traitCollection = [(UIImageView *)self->_imageView traitCollection];
  v12 = ImageForArtworkDataSource(artworkCopy, traitCollection);

  if (!v12)
  {
    v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:30.0];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"leaf.circle.fill" withConfiguration:v13];
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    v16 = [v14 _flatImageWithColor:systemGreenColor];
    v12 = [v16 imageWithRenderingMode:1];
  }

  v47 = v12;
  [(UIImageView *)self->_imageView setImage:v12];
  [array addObject:self->_imageView];
  [(MKIncidentDetailContentView *)self _clearChildrenStackView];
  selfCopy = self;
  customBodyTextView = [(MKIncidentDetailContentView *)selfCopy customBodyTextView];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(UITextView *)selfCopy->_attributionView setDelegate:0];
  }

  v48 = advisoriesCopy;
  advisoryCard = [advisoriesCopy advisoryCard];
  v21 = objc_alloc(MEMORY[0x1E69A1CA8]);
  title = [advisoryCard title];
  v23 = [v21 initWithGeoFormattedString:title];

  v46 = v23;
  stringWithDefaultOptions = [v23 stringWithDefaultOptions];
  [(_MKUILabel *)selfCopy->_titleLabel setText:stringWithDefaultOptions];

  [array addObject:selfCopy->_titleLabel];
  v25 = objc_alloc(MEMORY[0x1E69A1CA8]);
  details = [advisoryCard details];
  v27 = [v25 initWithGeoFormattedString:details];

  v45 = v27;
  v28 = [[MKServerFormattedString alloc] initWithComposedString:v27];
  v29 = *MEMORY[0x1E69DB650];
  v52[0] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v53[0] = labelColor;
  v31 = *MEMORY[0x1E69DB648];
  v52[1] = *MEMORY[0x1E69DB648];
  v53[1] = selfCopy->_bodyFont;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v44 = v28;
  v33 = [(MKServerFormattedString *)v28 multiPartAttributedStringWithAttributes:v32];
  attributedString = [v33 attributedString];

  v43 = attributedString;
  [customBodyTextView setAttributedText:attributedString];
  [(UIStackView *)selfCopy->_childrenStackViews addArrangedSubview:customBodyTextView];
  [(UIStackView *)selfCopy->_stackView addArrangedSubview:selfCopy->_childrenStackViews];
  [array addObject:selfCopy->_stackView];
  v35 = objc_alloc(MEMORY[0x1E69A1CA8]);
  metadata = [advisoryCard metadata];
  v37 = [v35 initWithGeoFormattedString:metadata];

  if (v37)
  {
    v38 = [[MKServerFormattedString alloc] initWithComposedString:v37];
    v50[0] = v29;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v50[1] = v31;
    v51[0] = labelColor2;
    v51[1] = selfCopy->_bodyFont;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v41 = [(MKServerFormattedString *)v38 multiPartAttributedStringWithAttributes:v40];
    attributedString2 = [v41 attributedString];

    [(UITextView *)selfCopy->_attributionView setAttributedText:attributedString2];
    [(NSLayoutConstraint *)selfCopy->_attributionViewEmptyHeightConstraint setActive:0];
    [(NSLayoutConstraint *)selfCopy->_stackViewBottomConstraint setActive:0];
    [(MKViewWithHairline *)selfCopy->_hairlineView setHidden:0];
    [array addObject:selfCopy->_attributionView];
  }

  [(MKIncidentDetailContentView *)selfCopy setAccessibilityElements:array];
}

- (void)configureWithAdvisoryItem:(id)item
{
  v58[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (self->_advisoryItem == itemCopy)
  {
    goto LABEL_29;
  }

  array = [MEMORY[0x1E695DF70] array];
  advisoryNoticeItem = self->_advisoryNoticeItem;
  self->_advisoryNoticeItem = 0;

  objc_storeStrong(&self->_advisoryItem, item);
  artwork = [(GEOComposedRouteAdvisoryItem *)itemCopy artwork];
  traitCollection = [(UIImageView *)self->_imageView traitCollection];
  v10 = ImageForArtworkDataSource(artwork, traitCollection);

  if (v10)
  {
    [(UIImageView *)self->_imageView setImage:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E69DCAB8] imageNamed:@"warning_badge"];
    [(UIImageView *)self->_imageView setImage:v11];
  }

  [array addObject:self->_imageView];
  titleString = [(GEOComposedRouteAdvisoryItem *)itemCopy titleString];
  stringWithDefaultOptions = [titleString stringWithDefaultOptions];
  if (stringWithDefaultOptions)
  {
    p_titleLabel = &self->_titleLabel;
    [(_MKUILabel *)self->_titleLabel setText:stringWithDefaultOptions];
  }

  else
  {
    v15 = _MKLocalizedStringFromThisBundle(@"MKIncidentExtendedDetailCell_Advisories_title");
    p_titleLabel = &self->_titleLabel;
    [(_MKUILabel *)self->_titleLabel setText:v15];
  }

  [array addObject:*p_titleLabel];
  dateOfLastUpdateString = [(GEOComposedRouteAdvisoryItem *)itemCopy dateOfLastUpdateString];
  if (dateOfLastUpdateString)
  {

LABEL_11:
    dateOfLastUpdateString2 = [(GEOComposedRouteAdvisoryItem *)itemCopy dateOfLastUpdateString];

    if (dateOfLastUpdateString2)
    {
      dateOfLastUpdateString3 = [(GEOComposedRouteAdvisoryItem *)itemCopy dateOfLastUpdateString];
      stringWithDefaultOptions2 = [dateOfLastUpdateString3 stringWithDefaultOptions];
    }

    else
    {
      if (configureWithAdvisoryItem__onceToken != -1)
      {
        dispatch_once(&configureWithAdvisoryItem__onceToken, &__block_literal_global_69);
      }

      v21 = MEMORY[0x1E696AB78];
      locale = [configureWithAdvisoryItem__formatter locale];
      v23 = [v21 dateFormatFromTemplate:@"YYYYMMddjma" options:0 locale:locale];
      [configureWithAdvisoryItem__formatter setDateFormat:v23];

      v24 = MEMORY[0x1E696AEC0];
      dateOfLastUpdateString3 = _MKLocalizedStringFromThisBundle(@"Placecard_TransitIncident_LastUpdated");
      v25 = configureWithAdvisoryItem__formatter;
      dateOfLastUpdate = [(GEOComposedRouteAdvisoryItem *)itemCopy dateOfLastUpdate];
      v27 = [v25 stringFromDate:dateOfLastUpdate];
      stringWithDefaultOptions2 = [v24 stringWithFormat:dateOfLastUpdateString3, v27];
    }

    [(_MKUILabel *)self->_subtitleLabel setText:stringWithDefaultOptions2];
    [array addObject:self->_subtitleLabel];

    goto LABEL_17;
  }

  dateOfLastUpdate2 = [(GEOComposedRouteAdvisoryItem *)itemCopy dateOfLastUpdate];

  if (dateOfLastUpdate2)
  {
    goto LABEL_11;
  }

LABEL_17:
  v28 = DetailTextsForAdvisoryItem(itemCopy);
  if (!v28)
  {
    subtitleString = [(GEOComposedRouteAdvisoryItem *)itemCopy subtitleString];
    stringWithDefaultOptions3 = [subtitleString stringWithDefaultOptions];

    if (stringWithDefaultOptions3)
    {
      v58[0] = stringWithDefaultOptions3;
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
  v31 = itemCopy;
  v54 = v31;
  v32 = v28;
  v55 = v32;
  [v32 enumerateObjectsUsingBlock:v53];
  arrangedSubviews = [(UIStackView *)self->_childrenStackViews arrangedSubviews];
  v34 = [arrangedSubviews count];

  if (v34)
  {
    [(UIStackView *)self->_stackView addArrangedSubview:self->_childrenStackViews];
  }

  cardAction = [(GEOComposedRouteAdvisoryItem *)v31 cardAction];
  type = [cardAction type];

  if (type == 1)
  {
    v37 = objc_alloc(MEMORY[0x1E69DC738]);
    v38 = [v37 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v38 setTitleColor:systemBlueColor forState:0];

    v40 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0];
    titleLabel = [v38 titleLabel];
    [titleLabel setFont:v40];

    titleLabel2 = [v38 titleLabel];
    [titleLabel2 setTextAlignment:4];

    v43 = _MKLocalizedStringFromThisBundle(@"Placecard_TransitIncident_actionButton");
    [v38 setTitle:v43 forState:0];

    [v38 addTarget:self action:sel__didTapActionButton forControlEvents:0x2000];
    [(UIStackView *)self->_stackView addArrangedSubview:v38];
  }

  [array addObject:self->_stackView];
  attributionString = [(GEOComposedRouteAdvisoryItem *)v31 attributionString];

  if (attributionString)
  {
    v45 = [MKServerFormattedString alloc];
    attributionString2 = [(GEOComposedRouteAdvisoryItem *)v31 attributionString];
    v47 = [(MKServerFormattedString *)v45 initWithComposedString:attributionString2];

    v56[0] = *MEMORY[0x1E69DB650];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v56[1] = *MEMORY[0x1E69DB648];
    v57[0] = labelColor;
    v57[1] = self->_bodyFont;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
    v50 = [(MKServerFormattedString *)v47 multiPartAttributedStringWithAttributes:v49];
    attributedString = [v50 attributedString];

    [(UITextView *)self->_attributionView setAttributedText:attributedString];
    [(UITextView *)self->_attributionView setDelegate:self];
    [(NSLayoutConstraint *)self->_attributionViewEmptyHeightConstraint setActive:0];
    [(NSLayoutConstraint *)self->_stackViewBottomConstraint setActive:0];
    [(MKViewWithHairline *)self->_hairlineView setHidden:0];
    [array addObject:self->_attributionView];
  }

  [(MKIncidentDetailContentView *)self setAccessibilityElements:array];

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
  arrangedSubviews = [(UIStackView *)self->_childrenStackViews arrangedSubviews];
  [arrangedSubviews enumerateObjectsUsingBlock:&__block_literal_global_8871];
}

- (id)customBodyTextView
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [v3 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  textContainer = [v3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v3 setDelegate:self];
  [v3 setEditable:0];
  [v3 setDataDetectorTypes:3];
  [v3 setScrollEnabled:0];
  [v3 setTextAlignment:4];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:clearColor];

  v13[0] = *MEMORY[0x1E69DB650];
  mk_theme = [(UIView *)self mk_theme];
  tintColor = [mk_theme tintColor];
  v14[0] = tintColor;
  v13[1] = *MEMORY[0x1E69DB648];
  v8 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v3 setLinkTextAttributes:v9];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  mk_theme2 = [(UIView *)self mk_theme];
  textColor = [mk_theme2 textColor];
  [v3 setTextColor:textColor];

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
  heightAnchor = [(UITextView *)self->_attributionView heightAnchor];
  v4 = 0.0;
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  attributionViewEmptyHeightConstraint = self->_attributionViewEmptyHeightConstraint;
  self->_attributionViewEmptyHeightConstraint = v5;

  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_backgroundView bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v9;

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 5)
  {
    v4 = 12.0;
  }

  v69 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)self->_backgroundView topAnchor];
  topAnchor2 = [(MKIncidentDetailContentView *)self topAnchor];
  v98 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v4];
  v101[0] = v98;
  bottomAnchor3 = [(UIView *)self->_backgroundView bottomAnchor];
  bottomAnchor4 = [(MKIncidentDetailContentView *)self bottomAnchor];
  v95 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
  v101[1] = v95;
  trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor2 = [(MKIncidentDetailContentView *)self trailingAnchor];
  v92 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v101[2] = v92;
  leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
  leadingAnchor2 = [(MKIncidentDetailContentView *)self leadingAnchor];
  v89 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v101[3] = v89;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v87 = [widthAnchor constraintEqualToConstant:35.0];
  v101[4] = v87;
  heightAnchor2 = [(UIImageView *)self->_imageView heightAnchor];
  v85 = [heightAnchor2 constraintEqualToConstant:35.0];
  v101[5] = v85;
  leadingAnchor3 = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_backgroundView leadingAnchor];
  v82 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v101[6] = v82;
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_titleView centerYAnchor];
  v79 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v101[7] = v79;
  topAnchor3 = [(UIImageView *)self->_imageView topAnchor];
  topAnchor4 = [(UIView *)self->_backgroundView topAnchor];
  v76 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:12.0];
  v101[8] = v76;
  topAnchor5 = [(UIView *)self->_titleView topAnchor];
  topAnchor6 = [(UIView *)self->_backgroundView topAnchor];
  v73 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:12.0];
  v101[9] = v73;
  bottomAnchor5 = [(UIView *)self->_titleView bottomAnchor];
  topAnchor7 = [(UIStackView *)self->_stackView topAnchor];
  v70 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7 constant:-12.0];
  v101[10] = v70;
  leadingAnchor5 = [(UIView *)self->_titleView leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_imageView trailingAnchor];
  v66 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
  v101[11] = v66;
  trailingAnchor4 = [(UIView *)self->_titleView trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_backgroundView trailingAnchor];
  v63 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
  v101[12] = v63;
  leadingAnchor6 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor7 = [(UIView *)self->_titleView leadingAnchor];
  v60 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v101[13] = v60;
  trailingAnchor6 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor7 = [(UIView *)self->_titleView trailingAnchor];
  v57 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v101[14] = v57;
  topAnchor8 = [(_MKUILabel *)self->_titleLabel topAnchor];
  topAnchor9 = [(UIView *)self->_titleView topAnchor];
  v54 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v101[15] = v54;
  bottomAnchor6 = [(_MKUILabel *)self->_titleLabel bottomAnchor];
  topAnchor10 = [(_MKUILabel *)self->_subtitleLabel topAnchor];
  v51 = [bottomAnchor6 constraintEqualToAnchor:topAnchor10];
  v101[16] = v51;
  leadingAnchor8 = [(_MKUILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor9 = [(_MKUILabel *)self->_titleLabel leadingAnchor];
  v48 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v101[17] = v48;
  trailingAnchor8 = [(_MKUILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor9 = [(_MKUILabel *)self->_titleLabel trailingAnchor];
  v45 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v101[18] = v45;
  bottomAnchor7 = [(_MKUILabel *)self->_subtitleLabel bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_titleView bottomAnchor];
  v42 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v101[19] = v42;
  leadingAnchor10 = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor11 = [(UIImageView *)self->_imageView leadingAnchor];
  v39 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v101[20] = v39;
  trailingAnchor10 = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor11 = [(UIView *)self->_backgroundView trailingAnchor];
  v36 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:-16.0];
  v12 = self->_stackViewBottomConstraint;
  v101[21] = v36;
  v101[22] = v12;
  topAnchor11 = [(MKViewWithHairline *)self->_hairlineView topAnchor];
  bottomAnchor9 = [(UIStackView *)self->_stackView bottomAnchor];
  v33 = [topAnchor11 constraintEqualToAnchor:bottomAnchor9 constant:12.0];
  v101[23] = v33;
  trailingAnchor12 = [(MKViewWithHairline *)self->_hairlineView trailingAnchor];
  trailingAnchor13 = [(UIView *)self->_backgroundView trailingAnchor];
  v30 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
  v101[24] = v30;
  leadingAnchor12 = [(MKViewWithHairline *)self->_hairlineView leadingAnchor];
  leadingAnchor13 = [(UIStackView *)self->_stackView leadingAnchor];
  v27 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  v101[25] = v27;
  topAnchor12 = [(UITextView *)self->_attributionView topAnchor];
  bottomAnchor10 = [(MKViewWithHairline *)self->_hairlineView bottomAnchor];
  v24 = [topAnchor12 constraintEqualToAnchor:bottomAnchor10 constant:12.0];
  v101[26] = v24;
  bottomAnchor11 = [(UITextView *)self->_attributionView bottomAnchor];
  bottomAnchor12 = [(UIView *)self->_backgroundView bottomAnchor];
  v15 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12 constant:-12.0];
  v101[27] = v15;
  trailingAnchor14 = [(UITextView *)self->_attributionView trailingAnchor];
  trailingAnchor15 = [(UIView *)self->_backgroundView trailingAnchor];
  v18 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:-16.0];
  v101[28] = v18;
  leadingAnchor14 = [(UITextView *)self->_attributionView leadingAnchor];
  leadingAnchor15 = [(UIImageView *)self->_imageView leadingAnchor];
  v21 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
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
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:10.0];

  layer2 = [(UIView *)self->_backgroundView layer];
  [layer2 setMasksToBounds:1];

  tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:tertiarySystemBackgroundColor];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIView *)self->_titleView setBackgroundColor:clearColor];

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
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(_MKUILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

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
  customBodyTextView = [(MKIncidentDetailContentView *)self customBodyTextView];
  attributionView = self->_attributionView;
  self->_attributionView = customBodyTextView;

  [(UITextView *)self->_attributionView setFont:self->_bodyFont];
  [(UITextView *)self->_attributionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_attributionView setAccessibilityIdentifier:@"AttributionView"];
  [(MKIncidentDetailContentView *)self addSubview:self->_attributionView];
  customBodyTextView2 = [(MKIncidentDetailContentView *)self customBodyTextView];
  bodyTextView = self->_bodyTextView;
  self->_bodyTextView = customBodyTextView2;
}

- (MKIncidentDetailContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKIncidentDetailContentView;
  v3 = [(MKIncidentDetailContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKIncidentDetailContentView *)v3 _setupSubviews];
    [(MKIncidentDetailContentView *)v4 _setupConstraints];
  }

  return v4;
}

@end