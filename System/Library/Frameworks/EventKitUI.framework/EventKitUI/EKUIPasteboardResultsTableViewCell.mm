@interface EKUIPasteboardResultsTableViewCell
+ (double)cellHeightForResult:(id)result forWidth:(double)width;
+ (id)_aggregateTitleStringForAggregateResult:(id)result;
+ (id)_titleStringForResult:(id)result;
+ (id)reuseIdentifier;
- (EKUIPasteboardResultsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setLabelFonts;
- (void)setupConstraints;
- (void)updateWithResult:(id)result;
@end

@implementation EKUIPasteboardResultsTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EKUIPasteboardResultsTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (reuseIdentifier_onceToken_0 != -1)
  {
    dispatch_once(&reuseIdentifier_onceToken_0, block);
  }

  v2 = reuseIdentifier_reuseIdentifier_0;

  return v2;
}

void __53__EKUIPasteboardResultsTableViewCell_reuseIdentifier__block_invoke()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = reuseIdentifier_reuseIdentifier_0;
  reuseIdentifier_reuseIdentifier_0 = v1;
}

- (EKUIPasteboardResultsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = EKUIPasteboardResultsTableViewCell;
  v4 = [(EKUIAutocompleteSearchResultBaseCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(EKUITableViewCell *)v4 setDrawsOwnRowSeparators:1];
      systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [(EKUITableViewCell *)v4 setRowSeparatorColor:systemMidGrayColor];

      v6 = EKHalfSystemGroupedBackgroundColor();
      [(EKUIPasteboardResultsTableViewCell *)v4 setBackgroundColor:v6];

      [(EKUITableViewCell *)v4 setUsesInsetMargin:0];
    }

    v7 = 4;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    eventCalendarColors = v4->_eventCalendarColors;
    v4->_eventCalendarColors = v8;

    do
    {
      v10 = v4->_eventCalendarColors;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(NSMutableArray *)v10 addObject:clearColor];

      --v7;
    }

    while (v7);
    v12 = 4;
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    eventTitles = v4->_eventTitles;
    v4->_eventTitles = v13;

    do
    {
      v15 = v4->_eventTitles;
      v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4EF6790];
      [(NSMutableArray *)v15 addObject:v16];

      --v12;
    }

    while (v12);
    createPrimaryLabel = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
    aggregateTextLabel = v4->_aggregateTextLabel;
    v4->_aggregateTextLabel = createPrimaryLabel;

    contentView = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_aggregateTextLabel];

    v20 = 4;
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    colorDotViews = v4->_colorDotViews;
    v4->_colorDotViews = v21;

    do
    {
      v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView2 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
      [contentView2 addSubview:v23];

      [(NSMutableArray *)v4->_colorDotViews addObject:v23];
      --v20;
    }

    while (v20);
    v25 = 4;
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    titleTextLabels = v4->_titleTextLabels;
    v4->_titleTextLabels = v26;

    do
    {
      createPrimaryLabel2 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
      contentView3 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
      [contentView3 addSubview:createPrimaryLabel2];

      [(NSMutableArray *)v4->_titleTextLabels addObject:createPrimaryLabel2];
      --v25;
    }

    while (v25);
    createPrimaryLabel3 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
    xMoreLabel = v4->_xMoreLabel;
    v4->_xMoreLabel = createPrimaryLabel3;

    contentView4 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_xMoreLabel];

    [(EKUIPasteboardResultsTableViewCell *)v4 setLabelFonts];
    [(EKUIPasteboardResultsTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

- (void)setLabelFonts
{
  v15 = *MEMORY[0x1E69E9840];
  primaryTextLabelFont = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  secondaryTextLabelFont = [objc_opt_class() secondaryTextLabelFont];
  [(UILabel *)self->_aggregateTextLabel setFont:primaryTextLabelFont];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_titleTextLabels;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setFont:{secondaryTextLabelFont, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(UILabel *)self->_xMoreLabel setFont:secondaryTextLabelFont];
}

- (void)setupConstraints
{
  if (self->_cellConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    cellConstraints = self->_cellConstraints;
    self->_cellConstraints = 0;
  }

  v71 = 1144;
  v4 = objc_opt_new();
  leadingAnchor = [(UILabel *)self->_aggregateTextLabel leadingAnchor];
  contentView = [(EKUIPasteboardResultsTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v4 addObject:v9];

  trailingAnchor = [(UILabel *)self->_aggregateTextLabel trailingAnchor];
  contentView2 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v4 addObject:v14];

  firstBaselineAnchor = [(UILabel *)self->_aggregateTextLabel firstBaselineAnchor];
  contentView3 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForTopLabel];
  v18 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v4 addObject:v18];

  leadingAnchor3 = [(UILabel *)self->_xMoreLabel leadingAnchor];
  v20 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:3];
  leadingAnchor4 = [v20 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v4 addObject:v22];

  trailingAnchor3 = [(UILabel *)self->_xMoreLabel trailingAnchor];
  v24 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:3];
  trailingAnchor4 = [v24 trailingAnchor];
  v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v4 addObject:v26];

  firstBaselineAnchor2 = [(UILabel *)self->_xMoreLabel firstBaselineAnchor];
  v28 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:3];
  firstBaselineAnchor3 = [v28 firstBaselineAnchor];
  v30 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
  [v4 addObject:v30];

  for (i = 0; i != 4; ++i)
  {
    v32 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:i, v71];
    v33 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i];
    leadingAnchor5 = [v32 leadingAnchor];
    contentView4 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    v37 = layoutMarginsGuide3;
    if (i)
    {
      centerXAnchor = [layoutMarginsGuide3 centerXAnchor];
      [leadingAnchor5 constraintEqualToAnchor:centerXAnchor constant:4.0];
    }

    else
    {
      centerXAnchor = [layoutMarginsGuide3 leadingAnchor];
      [leadingAnchor5 constraintEqualToAnchor:centerXAnchor];
    }
    v39 = ;
    [v4 addObject:v39];

    centerYAnchor = [v32 centerYAnchor];
    centerYAnchor2 = [v33 centerYAnchor];
    v42 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v4 addObject:v42];

    widthAnchor = [v32 widthAnchor];
    image = [v32 image];
    [image size];
    v45 = [widthAnchor constraintEqualToConstant:?];
    [v4 addObject:v45];

    heightAnchor = [v32 heightAnchor];
    image2 = [v32 image];
    [image2 size];
    v49 = [heightAnchor constraintEqualToConstant:v48];
    [v4 addObject:v49];

    trailingAnchor5 = [v33 trailingAnchor];
    contentView5 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    v53 = layoutMarginsGuide4;
    if (i)
    {
      trailingAnchor6 = [layoutMarginsGuide4 trailingAnchor];
      v65 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      [v4 addObject:v65];

      leadingAnchor6 = [v33 leadingAnchor];
      v67 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:1];
      trailingAnchor7 = [v67 trailingAnchor];
      v69 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:12.0];
      [v4 addObject:v69];

      firstBaselineAnchor4 = [v33 firstBaselineAnchor];
      if (i != 1)
      {
LABEL_9:
        lastBaselineAnchor2 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i - 2];
        lastBaselineAnchor = [lastBaselineAnchor2 lastBaselineAnchor];
        [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForBottomLabel];
        v63 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor constant:?];
        [v4 addObject:v63];

        goto LABEL_12;
      }
    }

    else
    {
      centerXAnchor2 = [layoutMarginsGuide4 centerXAnchor];
      v55 = [trailingAnchor5 constraintEqualToAnchor:centerXAnchor2 constant:-4.0];
      [v4 addObject:v55];

      leadingAnchor7 = [v33 leadingAnchor];
      v57 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:0];
      trailingAnchor8 = [v57 trailingAnchor];
      v59 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:12.0];
      [v4 addObject:v59];

      firstBaselineAnchor4 = [v33 firstBaselineAnchor];
      if (i)
      {
        goto LABEL_9;
      }
    }

    lastBaselineAnchor2 = [(UILabel *)self->_aggregateTextLabel lastBaselineAnchor];
    [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForBottomLabel];
    lastBaselineAnchor = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
    [v4 addObject:lastBaselineAnchor];
LABEL_12:
  }

  v70 = *(&self->super.super.super.super.super.super.super.isa + v71);
  *(&self->super.super.super.super.super.super.super.isa + v71) = v4;
  v72 = v4;

  [MEMORY[0x1E696ACD8] activateConstraints:*(&self->super.super.super.super.super.super.super.isa + v71)];
}

+ (id)_aggregateTitleStringForAggregateResult:(id)result
{
  v3 = MEMORY[0x1E69DB7F0];
  v4 = MEMORY[0x1E69DCAB8];
  resultCopy = result;
  v6 = [v4 systemImageNamed:@"doc.on.clipboard"];
  v7 = [v3 textAttachmentWithImage:v6];

  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  v9 = MEMORY[0x1E696AEC0];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"multiple_events_from_pasteboard" value:&stru_1F4EF6790 table:0];
  pasteboardResults = [resultCopy pasteboardResults];

  v13 = [v9 localizedStringWithFormat:v11, objc_msgSend(pasteboardResults, "count")];

  v14 = MEMORY[0x1E696AAB0];
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@"];
  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
  v17 = [v14 localizedAttributedStringWithFormat:v15, v8, v16];

  return v17;
}

+ (id)_titleStringForResult:(id)result
{
  v3 = MEMORY[0x1E696AAB0];
  resultCopy = result;
  v5 = [v3 alloc];
  title = [resultCopy title];

  v7 = [v5 initWithString:title];

  return v7;
}

- (void)updateWithResult:(id)result
{
  resultCopy = result;
  pasteboardResults = [resultCopy pasteboardResults];
  v5 = [pasteboardResults count];

  v34 = v5;
  if (v5 <= 4)
  {
    pasteboardResults2 = [resultCopy pasteboardResults];
    v8 = [pasteboardResults2 count];

    v36 = v8;
    v6 = 4 - v8;
  }

  else
  {
    v6 = 0;
    v36 = 3;
  }

  v9 = [objc_opt_class() _aggregateTitleStringForAggregateResult:resultCopy];
  if (![(NSAttributedString *)self->_aggregateTitle isEqualToAttributedString:v9])
  {
    objc_storeStrong(&self->_aggregateTitle, v9);
    [(UILabel *)self->_aggregateTextLabel setAttributedText:self->_aggregateTitle];
  }

  v35 = v9;
  if (v6 >= 1)
  {
    v10 = 3;
    do
    {
      v11 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:v10];
      [v11 setHidden:1];

      v12 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:v10];
      [v12 setHidden:1];

      --v10;
      --v6;
    }

    while (v6);
  }

  if (v36 >= 1)
  {
    for (i = 0; i != v36; ++i)
    {
      pasteboardResults3 = [resultCopy pasteboardResults];
      v15 = [pasteboardResults3 objectAtIndexedSubscript:i];

      v16 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v15, "calendarColor")}];
      v17 = [(NSMutableArray *)self->_eventCalendarColors objectAtIndexedSubscript:i];

      if (v17 != v16)
      {
        [(NSMutableArray *)self->_eventCalendarColors setObject:v16 atIndexedSubscript:i];
        v18 = [(NSMutableArray *)self->_eventCalendarColors objectAtIndexedSubscript:i];
        v19 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i];
        font = [v19 font];
        v21 = ScaledCalendarColorDotImageForColor_SuggestedEvent(v18, font);
        v22 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:i];
        [v22 setImage:v21];
      }

      v23 = [objc_opt_class() _titleStringForResult:v15];
      v24 = [(NSMutableArray *)self->_eventTitles objectAtIndexedSubscript:i];
      v25 = [v24 isEqualToAttributedString:v23];

      if ((v25 & 1) == 0)
      {
        [(NSMutableArray *)self->_eventTitles setObject:v23 atIndexedSubscript:i];
        v26 = [(NSMutableArray *)self->_eventTitles objectAtIndexedSubscript:i];
        v27 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i];
        [v27 setAttributedText:v26];
      }
    }
  }

  xMoreLabel = self->_xMoreLabel;
  if (v34 <= 4)
  {
    [(UILabel *)xMoreLabel setHidden:1];
  }

  else
  {
    [(UILabel *)xMoreLabel setHidden:0];
    v29 = MEMORY[0x1E696AEC0];
    v30 = EventKitUIBundle();
    v31 = [v30 localizedStringForKey:@"and %d more" value:&stru_1F4EF6790 table:0];
    pasteboardResults4 = [resultCopy pasteboardResults];
    v33 = [v29 localizedStringWithFormat:v31, objc_msgSend(pasteboardResults4, "count") - v36];
    [(UILabel *)self->_xMoreLabel setText:v33];
  }

  [(EKUIPasteboardResultsTableViewCell *)self setupConstraints];
}

+ (double)cellHeightForResult:(id)result forWidth:(double)width
{
  resultCopy = result;
  v7 = [self primaryTextLabelFontForWidth:width];
  secondaryTextLabelFont = [self secondaryTextLabelFont];
  pasteboardResults = [resultCopy pasteboardResults];

  v10 = [pasteboardResults count];
  v11 = 4;
  if (v10 < 4)
  {
    v11 = v10;
  }

  v12 = ceil(vcvtd_n_f64_u64(v11, 1uLL));
  [self verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:v7];
  v14 = v13;
  [self verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:v7];
  v16 = v14 + v15;
  [self verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:secondaryTextLabelFont];
  v18 = v16 + v12 * v17;
  [self rowSeparatorThickness];
  CalRoundToScreenScale(v19 + v18);
  v21 = v20;

  return v21;
}

@end