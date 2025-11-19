@interface EKUIPasteboardResultsTableViewCell
+ (double)cellHeightForResult:(id)a3 forWidth:(double)a4;
+ (id)_aggregateTitleStringForAggregateResult:(id)a3;
+ (id)_titleStringForResult:(id)a3;
+ (id)reuseIdentifier;
- (EKUIPasteboardResultsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setLabelFonts;
- (void)setupConstraints;
- (void)updateWithResult:(id)a3;
@end

@implementation EKUIPasteboardResultsTableViewCell

+ (id)reuseIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EKUIPasteboardResultsTableViewCell_reuseIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EKUIPasteboardResultsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = EKUIPasteboardResultsTableViewCell;
  v4 = [(EKUIAutocompleteSearchResultBaseCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(EKUITableViewCell *)v4 setDrawsOwnRowSeparators:1];
      v5 = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [(EKUITableViewCell *)v4 setRowSeparatorColor:v5];

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
      v11 = [MEMORY[0x1E69DC888] clearColor];
      [(NSMutableArray *)v10 addObject:v11];

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
    v17 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
    aggregateTextLabel = v4->_aggregateTextLabel;
    v4->_aggregateTextLabel = v17;

    v19 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_aggregateTextLabel];

    v20 = 4;
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    colorDotViews = v4->_colorDotViews;
    v4->_colorDotViews = v21;

    do
    {
      v23 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
      [v24 addSubview:v23];

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
      v28 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
      v29 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
      [v29 addSubview:v28];

      [(NSMutableArray *)v4->_titleTextLabels addObject:v28];
      --v25;
    }

    while (v25);
    v30 = [(EKUIAutocompleteSearchResultBaseCell *)v4 createPrimaryLabel];
    xMoreLabel = v4->_xMoreLabel;
    v4->_xMoreLabel = v30;

    v32 = [(EKUIPasteboardResultsTableViewCell *)v4 contentView];
    [v32 addSubview:v4->_xMoreLabel];

    [(EKUIPasteboardResultsTableViewCell *)v4 setLabelFonts];
    [(EKUIPasteboardResultsTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

- (void)setLabelFonts
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(EKUITableViewCellWithPrimaryAndSecondaryFonts *)self primaryTextLabelFont];
  v4 = [objc_opt_class() secondaryTextLabelFont];
  [(UILabel *)self->_aggregateTextLabel setFont:v3];
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

        [*(*(&v10 + 1) + 8 * v9++) setFont:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(UILabel *)self->_xMoreLabel setFont:v4];
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
  v5 = [(UILabel *)self->_aggregateTextLabel leadingAnchor];
  v6 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
  v7 = [v6 layoutMarginsGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  [v4 addObject:v9];

  v10 = [(UILabel *)self->_aggregateTextLabel trailingAnchor];
  v11 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v4 addObject:v14];

  v15 = [(UILabel *)self->_aggregateTextLabel firstBaselineAnchor];
  v16 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
  v17 = [v16 topAnchor];
  [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForTopLabel];
  v18 = [v15 constraintEqualToAnchor:v17 constant:?];
  [v4 addObject:v18];

  v19 = [(UILabel *)self->_xMoreLabel leadingAnchor];
  v20 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:3];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v4 addObject:v22];

  v23 = [(UILabel *)self->_xMoreLabel trailingAnchor];
  v24 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:3];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v4 addObject:v26];

  v27 = [(UILabel *)self->_xMoreLabel firstBaselineAnchor];
  v28 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:3];
  v29 = [v28 firstBaselineAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v4 addObject:v30];

  for (i = 0; i != 4; ++i)
  {
    v32 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:i, v71];
    v33 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i];
    v34 = [v32 leadingAnchor];
    v35 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
    v36 = [v35 layoutMarginsGuide];
    v37 = v36;
    if (i)
    {
      v38 = [v36 centerXAnchor];
      [v34 constraintEqualToAnchor:v38 constant:4.0];
    }

    else
    {
      v38 = [v36 leadingAnchor];
      [v34 constraintEqualToAnchor:v38];
    }
    v39 = ;
    [v4 addObject:v39];

    v40 = [v32 centerYAnchor];
    v41 = [v33 centerYAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v4 addObject:v42];

    v43 = [v32 widthAnchor];
    v44 = [v32 image];
    [v44 size];
    v45 = [v43 constraintEqualToConstant:?];
    [v4 addObject:v45];

    v46 = [v32 heightAnchor];
    v47 = [v32 image];
    [v47 size];
    v49 = [v46 constraintEqualToConstant:v48];
    [v4 addObject:v49];

    v50 = [v33 trailingAnchor];
    v51 = [(EKUIPasteboardResultsTableViewCell *)self contentView];
    v52 = [v51 layoutMarginsGuide];
    v53 = v52;
    if (i)
    {
      v64 = [v52 trailingAnchor];
      v65 = [v50 constraintEqualToAnchor:v64];
      [v4 addObject:v65];

      v66 = [v33 leadingAnchor];
      v67 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:1];
      v68 = [v67 trailingAnchor];
      v69 = [v66 constraintEqualToAnchor:v68 constant:12.0];
      [v4 addObject:v69];

      v60 = [v33 firstBaselineAnchor];
      if (i != 1)
      {
LABEL_9:
        v61 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i - 2];
        v62 = [v61 lastBaselineAnchor];
        [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForBottomLabel];
        v63 = [v60 constraintEqualToAnchor:v62 constant:?];
        [v4 addObject:v63];

        goto LABEL_12;
      }
    }

    else
    {
      v54 = [v52 centerXAnchor];
      v55 = [v50 constraintEqualToAnchor:v54 constant:-4.0];
      [v4 addObject:v55];

      v56 = [v33 leadingAnchor];
      v57 = [(NSMutableArray *)self->_colorDotViews objectAtIndexedSubscript:0];
      v58 = [v57 trailingAnchor];
      v59 = [v56 constraintEqualToAnchor:v58 constant:12.0];
      [v4 addObject:v59];

      v60 = [v33 firstBaselineAnchor];
      if (i)
      {
        goto LABEL_9;
      }
    }

    v61 = [(UILabel *)self->_aggregateTextLabel lastBaselineAnchor];
    [(EKUIAutocompleteSearchResultBaseCell *)self verticalSpacingTopToBaselineForBottomLabel];
    v62 = [v60 constraintEqualToAnchor:v61 constant:?];
    [v4 addObject:v62];
LABEL_12:
  }

  v70 = *(&self->super.super.super.super.super.super.super.isa + v71);
  *(&self->super.super.super.super.super.super.super.isa + v71) = v4;
  v72 = v4;

  [MEMORY[0x1E696ACD8] activateConstraints:*(&self->super.super.super.super.super.super.super.isa + v71)];
}

+ (id)_aggregateTitleStringForAggregateResult:(id)a3
{
  v3 = MEMORY[0x1E69DB7F0];
  v4 = MEMORY[0x1E69DCAB8];
  v5 = a3;
  v6 = [v4 systemImageNamed:@"doc.on.clipboard"];
  v7 = [v3 textAttachmentWithImage:v6];

  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
  v9 = MEMORY[0x1E696AEC0];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"multiple_events_from_pasteboard" value:&stru_1F4EF6790 table:0];
  v12 = [v5 pasteboardResults];

  v13 = [v9 localizedStringWithFormat:v11, objc_msgSend(v12, "count")];

  v14 = MEMORY[0x1E696AAB0];
  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@"];
  v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
  v17 = [v14 localizedAttributedStringWithFormat:v15, v8, v16];

  return v17;
}

+ (id)_titleStringForResult:(id)a3
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 title];

  v7 = [v5 initWithString:v6];

  return v7;
}

- (void)updateWithResult:(id)a3
{
  v37 = a3;
  v4 = [v37 pasteboardResults];
  v5 = [v4 count];

  v34 = v5;
  if (v5 <= 4)
  {
    v7 = [v37 pasteboardResults];
    v8 = [v7 count];

    v36 = v8;
    v6 = 4 - v8;
  }

  else
  {
    v6 = 0;
    v36 = 3;
  }

  v9 = [objc_opt_class() _aggregateTitleStringForAggregateResult:v37];
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
      v14 = [v37 pasteboardResults];
      v15 = [v14 objectAtIndexedSubscript:i];

      v16 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v15, "calendarColor")}];
      v17 = [(NSMutableArray *)self->_eventCalendarColors objectAtIndexedSubscript:i];

      if (v17 != v16)
      {
        [(NSMutableArray *)self->_eventCalendarColors setObject:v16 atIndexedSubscript:i];
        v18 = [(NSMutableArray *)self->_eventCalendarColors objectAtIndexedSubscript:i];
        v19 = [(NSMutableArray *)self->_titleTextLabels objectAtIndexedSubscript:i];
        v20 = [v19 font];
        v21 = ScaledCalendarColorDotImageForColor_SuggestedEvent(v18, v20);
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
    v32 = [v37 pasteboardResults];
    v33 = [v29 localizedStringWithFormat:v31, objc_msgSend(v32, "count") - v36];
    [(UILabel *)self->_xMoreLabel setText:v33];
  }

  [(EKUIPasteboardResultsTableViewCell *)self setupConstraints];
}

+ (double)cellHeightForResult:(id)a3 forWidth:(double)a4
{
  v6 = a3;
  v7 = [a1 primaryTextLabelFontForWidth:a4];
  v8 = [a1 secondaryTextLabelFont];
  v9 = [v6 pasteboardResults];

  v10 = [v9 count];
  v11 = 4;
  if (v10 < 4)
  {
    v11 = v10;
  }

  v12 = ceil(vcvtd_n_f64_u64(v11, 1uLL));
  [a1 verticalSpacingTopToBaselineForTopLabelWithPrimaryFont:v7];
  v14 = v13;
  [a1 verticalSpacingBottomToBaselineForBottomLabelWithPrimaryFont:v7];
  v16 = v14 + v15;
  [a1 verticalSpacingTopToBaselineForBottomLabelWithSecondaryFont:v8];
  v18 = v16 + v12 * v17;
  [a1 rowSeparatorThickness];
  CalRoundToScreenScale(v19 + v18);
  v21 = v20;

  return v21;
}

@end