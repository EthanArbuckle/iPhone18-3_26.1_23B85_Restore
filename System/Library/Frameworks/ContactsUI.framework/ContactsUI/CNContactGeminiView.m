@interface CNContactGeminiView
- (BOOL)_hasBaseline;
- (BOOL)doesLayoutRequireTwoLines;
- (BOOL)shouldDisplayBadge;
- (CGSize)sizeForSingleLineLayoutFittingSize:(CGSize)a3;
- (CGSize)sizeForTwoLineLayoutFittingSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNContactGeminiView)initWithFrame:(CGRect)a3;
- (id)geminiViewChevronImage;
- (id)localizedChannelSubtitleForGeminiResult:(id)a3;
- (id)localizedChannelUsageFromGeminiResult:(id)a3;
- (id)localizedChannelUsageFromGeminiUsage:(int64_t)a3;
- (id)localizedLabelFromGeminiChannel:(id)a3;
- (id)localizedLabelFromGeminiResult:(id)a3;
- (id)singleLineLayoutConstraints;
- (id)twoLineLayoutConstraints;
- (void)calculateLayoutIfNeeded;
- (void)layoutSubviews;
- (void)setAb_textAttributes:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setGeminiChannel:(id)a3;
- (void)setGeminiResult:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)updateConstraints;
- (void)updateGeminiViewForChannel:(id)a3 channelUsage:(int64_t)a4 calculateLayout:(BOOL)a5;
@end

@implementation CNContactGeminiView

- (BOOL)shouldDisplayBadge
{
  v2 = [(CNContactGeminiView *)self geminiResult];
  v3 = [v2 channel];
  v4 = [v3 isAvailable];

  return v4;
}

- (id)geminiViewChevronImage
{
  v3 = [(CNContactGeminiView *)self geminiResult];
  v4 = [v3 usage];

  v5 = MEMORY[0x1E69DCAB8];
  v6 = [(CNContactGeminiView *)self backgroundColor];
  if (v4 == 4)
  {
    [v5 cnui_symbolImageForUnknownNumberContactCardChevronWithColor:v6];
  }

  else
  {
    [v5 cnui_symbolImageForDynamicallySizedContactCardChevronWithColor:v6];
  }
  v7 = ;

  return v7;
}

- (BOOL)_hasBaseline
{
  v2 = [(CNContactGeminiView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (void)setGeminiChannel:(id)a3
{
  geminiResult = self->_geminiResult;
  v5 = a3;
  v6 = [(CNGeminiResult *)geminiResult channel];
  [(CNContactGeminiView *)self updateGeminiViewForChannel:v5 channelUsage:3 calculateLayout:v6 != v5];
}

- (void)updateGeminiViewForChannel:(id)a3 channelUsage:(int64_t)a4 calculateLayout:(BOOL)a5
{
  v5 = a5;
  v28 = a3;
  v8 = [(CNContactGeminiView *)self chevronView];
  v9 = [v8 isHidden];

  v10 = [(CNContactGeminiView *)self geminiBadge];
  v11 = [v10 isHidden];

  v12 = [(CNContactGeminiView *)self localizedChannelUsageFromGeminiUsage:a4];
  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v13 = [v28 localizedBadgeLabel];
  }

  else
  {
    v13 = @"-";
  }

  v14 = [(CNContactGeminiView *)self localizedLabelFromGeminiChannel:v28];
  v15 = [(CNContactGeminiView *)self typeLabel];
  [v15 setText:v12];

  LODWORD(v15) = [(CNContactGeminiView *)self shouldDisplayBadge];
  v16 = [(CNContactGeminiView *)self geminiBadge];
  [v16 setHidden:v15 ^ 1];

  v17 = [(CNContactGeminiView *)self geminiBadge];
  [v17 setText:v13];

  v18 = [(CNContactGeminiView *)self geminiLabel];
  [v18 setText:v14];

  v19 = [(CNContactGeminiView *)self backgroundColor];
  v20 = [(CNContactGeminiView *)self geminiBadge];
  [v20 setTextColor:v19];

  v21 = [(CNContactGeminiView *)self geminiViewChevronImage];
  v22 = [(CNContactGeminiView *)self chevronView];
  [v22 setImage:v21];

  LODWORD(v21) = [(CNContactGeminiView *)self shouldDisplayChevron];
  v23 = [(CNContactGeminiView *)self chevronView];
  [v23 setHidden:v21 ^ 1];

  if (v5)
  {
    [(CNContactGeminiView *)self setNeedsCalculateLayout];
    [(CNContactGeminiView *)self bounds];
    if (v24 > 0.0)
    {
      [(CNContactGeminiView *)self calculateLayoutIfNeeded];
    }
  }

  v25 = [(CNContactGeminiView *)self chevronView];
  if (v9 == [v25 isHidden])
  {
    v26 = [(CNContactGeminiView *)self geminiBadge];
    v27 = [v26 isHidden];

    if (v11 == v27)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [(CNContactGeminiView *)self setNeedsUpdateConstraints];
LABEL_11:
}

- (void)setGeminiResult:(id)a3
{
  v4 = a3;
  geminiResult = self->_geminiResult;
  self->_geminiResult = v4;
  v9 = v4;
  v6 = geminiResult;

  v7 = [(CNGeminiResult *)v9 channel];
  v8 = [(CNGeminiResult *)v9 usage];

  [(CNContactGeminiView *)self updateGeminiViewForChannel:v7 channelUsage:v8 calculateLayout:v6 != v9];
}

- (id)localizedLabelFromGeminiChannel:(id)a3
{
  v3 = a3;
  v4 = [v3 isAvailable];
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (v4)
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_VALUE-%@";
  }

  else
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_VALUE_UNAVAILBLE-%@";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v3 localizedLabel];

  v11 = [v9 stringWithFormat:v8, v10];

  return v11;
}

- (id)localizedLabelFromGeminiResult:(id)a3
{
  v4 = [a3 channel];
  v5 = [(CNContactGeminiView *)self localizedLabelFromGeminiChannel:v4];

  return v5;
}

- (id)localizedChannelSubtitleForGeminiResult:(id)a3
{
  v3 = [a3 usage];
  if (v3 == 2)
  {
    v4 = @"PREFERRED_LINE_PICKER_SUBTITLE_LAST_USED";
    goto LABEL_5;
  }

  if (v3 == 3)
  {
    v4 = @"PREFERRED_LINE_PICKER_SUBTITLE_DEFAULT";
LABEL_5:
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

    goto LABEL_7;
  }

  v6 = &stru_1F0CE7398;
LABEL_7:

  return v6;
}

- (id)localizedChannelUsageFromGeminiUsage:(int64_t)a3
{
  v4 = [(CNContactGeminiView *)self useDualSimParity];
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (v4)
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_UNKNOWN_CONTACT_SIM_LINE";
  }

  else if ((a3 - 1) > 3)
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_DEFAULT_LABEL";
  }

  else
  {
    v7 = off_1E74E4858[a3 - 1];
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  return v8;
}

- (id)localizedChannelUsageFromGeminiResult:(id)a3
{
  v4 = [a3 usage];

  return [(CNContactGeminiView *)self localizedChannelUsageFromGeminiUsage:v4];
}

- (id)twoLineLayoutConstraints
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696ACD8];
  v5 = [(CNContactGeminiView *)self layoutGuide];
  v6 = [v4 constraintWithItem:self attribute:8 relatedBy:0 toItem:v5 attribute:8 multiplier:1.0 constant:0.0];
  [v3 addObject:v6];

  v7 = MEMORY[0x1E696ACD8];
  v8 = [(CNContactGeminiView *)self layoutGuide];
  v9 = [v7 constraintWithItem:self attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
  v12 = [(CNContactGeminiView *)self geminiLabel];
  v13 = [v10 constraintWithItem:v11 attribute:8 relatedBy:1 toItem:v12 attribute:8 multiplier:1.0 constant:0.0];
  [v3 addObject:v13];

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v14 = MEMORY[0x1E696ACD8];
    v15 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
    v16 = [(CNContactGeminiView *)self geminiBadge];
    v17 = [v14 constraintWithItem:v15 attribute:8 relatedBy:1 toItem:v16 attribute:8 multiplier:1.0 constant:0.0];
    [v3 addObject:v17];
  }

  v18 = MEMORY[0x1E696ACD8];
  v19 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
  v20 = [v18 constraintWithItem:v19 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696ACD8];
  v22 = [(CNContactGeminiView *)self typeLabel];
  v23 = [v21 constraintWithItem:self attribute:3 relatedBy:0 toItem:v22 attribute:3 multiplier:1.0 constant:0.0];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [(CNContactGeminiView *)self geminiLabel];
  v26 = [(CNContactGeminiView *)self typeLabel];
  v27 = [v24 constraintWithItem:v25 attribute:3 relatedBy:0 toItem:v26 attribute:4 multiplier:1.0 constant:5.0];
  [v3 addObject:v27];

  v28 = MEMORY[0x1E696ACD8];
  v29 = [(CNContactGeminiView *)self geminiLabel];
  v30 = [v28 constraintWithItem:v29 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [v3 addObject:v30];

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v31 = MEMORY[0x1E696ACD8];
    v32 = [(CNContactGeminiView *)self chevronView];
    v33 = [v31 constraintWithItem:self attribute:10 relatedBy:0 toItem:v32 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addObject:v33];
  }

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v34 = MEMORY[0x1E696ACD8];
    v35 = [(CNContactGeminiView *)self geminiBadge];
    v36 = [(CNContactGeminiView *)self geminiLabel];
    v37 = [v34 constraintWithItem:v35 attribute:10 relatedBy:0 toItem:v36 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addObject:v37];
  }

  v38 = MEMORY[0x1E696ACD8];
  v39 = [(CNContactGeminiView *)self layoutGuide];
  v40 = [(CNContactGeminiView *)self typeLabel];
  v41 = [v38 constraintWithItem:v39 attribute:5 relatedBy:-1 toItem:v40 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v41];

  v42 = MEMORY[0x1E696ACD8];
  v43 = [(CNContactGeminiView *)self typeLabel];
  v44 = [v42 constraintWithItem:self attribute:9 relatedBy:0 toItem:v43 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v44];

  LOBYTE(v40) = [(CNContactGeminiView *)self shouldDisplayChevron];
  v45 = MEMORY[0x1E696ACD8];
  v46 = [(CNContactGeminiView *)self layoutGuide];
  if (v40)
  {
    [(CNContactGeminiView *)self chevronView];
  }

  else
  {
    [(CNContactGeminiView *)self typeLabel];
  }
  v47 = ;
  v48 = [v45 constraintWithItem:v46 attribute:6 relatedBy:1 toItem:v47 attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v48];

  v49 = MEMORY[0x1E696ACD8];
  v50 = [(CNContactGeminiView *)self typeLabel];
  v51 = [v49 constraintWithItem:self attribute:5 relatedBy:-1 toItem:v50 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v51];

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    [(CNContactGeminiView *)self geminiBadge];
  }

  else
  {
    [(CNContactGeminiView *)self geminiLabel];
  }
  v52 = ;
  v53 = MEMORY[0x1E696ACD8];
  v54 = [(CNContactGeminiView *)self layoutGuide];
  v55 = [v53 constraintWithItem:v54 attribute:5 relatedBy:-1 toItem:v52 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v55];

  if (![(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v56 = MEMORY[0x1E696ACD8];
    v57 = [(CNContactGeminiView *)self layoutGuide];
    v58 = [(CNContactGeminiView *)self geminiLabel];
    v59 = [v56 constraintWithItem:v57 attribute:6 relatedBy:1 toItem:v58 attribute:6 multiplier:1.0 constant:0.0];
    [v3 addObject:v59];
  }

  v60 = [(CNContactGeminiView *)self shouldDisplayBadge];
  v61 = MEMORY[0x1E696ACD8];
  if (v60)
  {
    v62 = [(CNContactGeminiView *)self geminiBadge];
    v63 = [v61 constraintWithItem:self attribute:5 relatedBy:-1 toItem:v62 attribute:5 multiplier:1.0 constant:0.0];
    [v3 addObject:v63];

    v64 = MEMORY[0x1E696ACD8];
    v65 = [(CNContactGeminiView *)self geminiBadge];
    v66 = [(CNContactGeminiView *)self geminiLabel];
    v67 = [v64 constraintWithItem:v65 attribute:6 relatedBy:0 toItem:v66 attribute:5 multiplier:1.0 constant:-6.0];
    [v3 addObject:v67];

    v68 = MEMORY[0x1E696ACD8];
    v69 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
    [(CNContactGeminiView *)self geminiBadge];
  }

  else
  {
    v70 = [(CNContactGeminiView *)self geminiLabel];
    v71 = [v61 constraintWithItem:self attribute:5 relatedBy:-1 toItem:v70 attribute:5 multiplier:1.0 constant:0.0];
    [v3 addObject:v71];

    v68 = MEMORY[0x1E696ACD8];
    v69 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
    [(CNContactGeminiView *)self geminiLabel];
  }
  v72 = ;
  v73 = [v68 constraintWithItem:v69 attribute:5 relatedBy:0 toItem:v72 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v73];

  v74 = MEMORY[0x1E696ACD8];
  v75 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
  v76 = [(CNContactGeminiView *)self geminiLabel];
  v77 = [v74 constraintWithItem:v75 attribute:6 relatedBy:0 toItem:v76 attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v77];

  v78 = [(CNContactGeminiView *)self shouldDisplayChevron];
  v79 = MEMORY[0x1E696ACD8];
  if (v78)
  {
    v80 = [(CNContactGeminiView *)self chevronView];
    v81 = [v79 constraintWithItem:v80 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [v3 addObject:v81];

    v82 = MEMORY[0x1E696ACD8];
    v83 = [(CNContactGeminiView *)self typeLabel];
    v84 = [(CNContactGeminiView *)self chevronView];
    v85 = [v82 constraintWithItem:v83 attribute:6 relatedBy:-1 toItem:v84 attribute:5 multiplier:1.0 constant:-4.0];
    [v3 addObject:v85];

    v86 = MEMORY[0x1E696ACD8];
    v87 = [(CNContactGeminiView *)self geminiLabel];
    v88 = [(CNContactGeminiView *)self chevronView];
    v89 = [v86 constraintWithItem:v87 attribute:6 relatedBy:-1 toItem:v88 attribute:5 multiplier:1.0 constant:-4.0];
    [v3 addObject:v89];
  }

  else
  {
    v90 = [(CNContactGeminiView *)self typeLabel];
    v91 = [v79 constraintWithItem:v90 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [v3 addObject:v91];

    v92 = MEMORY[0x1E696ACD8];
    v87 = [(CNContactGeminiView *)self geminiLabel];
    v88 = [v92 constraintWithItem:v87 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [v3 addObject:v88];
  }

  return v3;
}

- (id)singleLineLayoutConstraints
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    [(CNContactGeminiView *)self chevronView];
  }

  else
  {
    [(CNContactGeminiView *)self geminiLabel];
  }
  v4 = ;
  v5 = MEMORY[0x1E696ACD8];
  v6 = [(CNContactGeminiView *)self layoutGuide];
  v7 = [v5 constraintWithItem:self attribute:8 relatedBy:0 toItem:v6 attribute:8 multiplier:1.0 constant:0.0];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696ACD8];
  v9 = [(CNContactGeminiView *)self layoutGuide];
  v10 = [(CNContactGeminiView *)self typeLabel];
  v11 = [v8 constraintWithItem:v9 attribute:5 relatedBy:0 toItem:v10 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696ACD8];
  v13 = [(CNContactGeminiView *)self layoutGuide];
  v14 = [v12 constraintWithItem:v13 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696ACD8];
  v16 = [(CNContactGeminiView *)self layoutGuide];
  v17 = [v15 constraintWithItem:self attribute:9 relatedBy:0 toItem:v16 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696ACD8];
  v19 = [(CNContactGeminiView *)self typeLabel];
  v20 = [v18 constraintWithItem:self attribute:8 relatedBy:0 toItem:v19 attribute:8 multiplier:1.0 constant:0.0];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696ACD8];
  v22 = [(CNContactGeminiView *)self geminiLabel];
  v23 = [v21 constraintWithItem:self attribute:8 relatedBy:0 toItem:v22 attribute:8 multiplier:1.0 constant:0.0];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [(CNContactGeminiView *)self typeLabel];
  v26 = [v24 constraintWithItem:self attribute:10 relatedBy:0 toItem:v25 attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696ACD8];
  v28 = [(CNContactGeminiView *)self geminiLabel];
  v29 = [v27 constraintWithItem:self attribute:10 relatedBy:0 toItem:v28 attribute:10 multiplier:1.0 constant:0.0];
  [v3 addObject:v29];

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v30 = MEMORY[0x1E696ACD8];
    v31 = [(CNContactGeminiView *)self chevronView];
    v32 = [v30 constraintWithItem:self attribute:10 relatedBy:0 toItem:v31 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addObject:v32];
  }

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v33 = MEMORY[0x1E696ACD8];
    v34 = [(CNContactGeminiView *)self typeLabel];
    v35 = [(CNContactGeminiView *)self geminiBadge];
    v36 = [v33 constraintWithItem:v34 attribute:10 relatedBy:0 toItem:v35 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addObject:v36];
  }

  v37 = MEMORY[0x1E696ACD8];
  v38 = [(CNContactGeminiView *)self typeLabel];
  v39 = [v37 constraintWithItem:self attribute:5 relatedBy:-1 toItem:v38 attribute:5 multiplier:1.0 constant:0.0];
  [v3 addObject:v39];

  LODWORD(v38) = [(CNContactGeminiView *)self shouldDisplayBadge];
  v40 = MEMORY[0x1E696ACD8];
  v41 = [(CNContactGeminiView *)self typeLabel];
  if (v38)
  {
    v42 = [(CNContactGeminiView *)self geminiBadge];
    v43 = [v40 constraintWithItem:v41 attribute:6 relatedBy:0 toItem:v42 attribute:5 multiplier:1.0 constant:-6.0];
    [v3 addObject:v43];

    v40 = MEMORY[0x1E696ACD8];
    v41 = [(CNContactGeminiView *)self geminiBadge];
  }

  v44 = [(CNContactGeminiView *)self geminiLabel];
  v45 = [v40 constraintWithItem:v41 attribute:6 relatedBy:0 toItem:v44 attribute:5 multiplier:1.0 constant:-6.0];
  [v3 addObject:v45];

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v46 = MEMORY[0x1E696ACD8];
    v47 = [(CNContactGeminiView *)self chevronView];
    v48 = [(CNContactGeminiView *)self geminiLabel];
    v49 = [v46 constraintWithItem:v47 attribute:5 relatedBy:0 toItem:v48 attribute:6 multiplier:1.0 constant:4.0];
    [v3 addObject:v49];
  }

  v50 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:6 relatedBy:1 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
  [v3 addObject:v50];

  return v3;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = CNContactGeminiView;
  [(CNContactGeminiView *)&v6 updateConstraints];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNContactGeminiView *)self activatedConstraints];
  [v3 deactivateConstraints:v4];

  if ([(CNContactGeminiView *)self isUsingTwoLineLayout])
  {
    [(CNContactGeminiView *)self twoLineLayoutConstraints];
  }

  else
  {
    [(CNContactGeminiView *)self singleLineLayoutConstraints];
  }
  v5 = ;
  [(CNContactGeminiView *)self setActivatedConstraints:v5];
  [MEMORY[0x1E696ACD8] activateConstraints:v5];
}

- (BOOL)doesLayoutRequireTwoLines
{
  v3 = [(CNContactGeminiView *)self typeLabel];
  [(CNContactGeminiView *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;

  v8 = [(CNContactGeminiView *)self geminiBadge];
  [(CNContactGeminiView *)self bounds];
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;

  v13 = [(CNContactGeminiView *)self geminiLabel];
  [(CNContactGeminiView *)self bounds];
  [v13 sizeThatFits:{v14, v15}];
  v17 = v16;

  v18 = v7 + 12.0 + v12 + v17;
  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v19 = [(CNContactGeminiView *)self chevronView];
    [(CNContactGeminiView *)self bounds];
    [v19 sizeThatFits:{v20, v21}];
    v18 = v18 + v22 + 4.0;
  }

  [(CNContactGeminiView *)self bounds];
  return v18 >= v23;
}

- (void)layoutSubviews
{
  [(CNContactGeminiView *)self calculateLayoutIfNeeded];
  v3.receiver = self;
  v3.super_class = CNContactGeminiView;
  [(CNContactGeminiView *)&v3 layoutSubviews];
}

- (void)calculateLayoutIfNeeded
{
  if (![(CNContactGeminiView *)self didCalculateLayout])
  {
    v3 = [(CNContactGeminiView *)self geminiResult];
    if (v3)
    {
      v4 = v3;
      [(CNContactGeminiView *)self bounds];
      v6 = v5;

      if (v6 > 0.0)
      {
        v7 = [(CNContactGeminiView *)self isUsingTwoLineLayout];
        [(CNContactGeminiView *)self setIsUsingTwoLineLayout:[(CNContactGeminiView *)self doesLayoutRequireTwoLines]];
        [(CNContactGeminiView *)self setDidCalculateLayout:1];
        if (v7 != [(CNContactGeminiView *)self isUsingTwoLineLayout])
        {
          [(CNContactGeminiView *)self setNeedsUpdateConstraints];

          [(CNContactGeminiView *)self updateConstraintsIfNeeded];
        }
      }
    }
  }
}

- (void)setAb_textAttributes:(id)a3
{
  objc_storeStrong(&self->_ab_textAttributes, a3);
  v5 = a3;
  v6 = [(CNContactGeminiView *)self typeLabel];
  [v6 setAb_textAttributes:v5];

  v7 = [(CNContactGeminiView *)self geminiLabel];
  [v7 setAb_textAttributes:v5];
}

- (CGSize)sizeForTwoLineLayoutFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CNContactGeminiView *)self typeLabel];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v31 = v9;

  v10 = MEMORY[0x1E695F060];
  v11 = *MEMORY[0x1E695F060];
  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v12 = [(CNContactGeminiView *)self geminiBadge];
    [v12 sizeThatFits:{width, height}];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v16 = *(v10 + 8);
    v14 = v11;
  }

  v17 = [(CNContactGeminiView *)self geminiLabel];
  [v17 sizeThatFits:{width, height}];
  v19 = v18;
  v21 = v20;

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v22 = [(CNContactGeminiView *)self chevronView];
    [v22 sizeThatFits:{width, height}];
    v11 = v23;
  }

  v24 = [(CNContactGeminiView *)self shouldDisplayBadge];
  v25 = v14 + 6.0 + v19;
  if (!v24)
  {
    v25 = v19;
  }

  if (v8 >= v25)
  {
    v26 = v8;
  }

  else
  {
    v26 = v25;
  }

  v27 = [(CNContactGeminiView *)self shouldDisplayChevron];
  v28 = v11 + 4.0 + v26;
  if (!v27)
  {
    v28 = v26;
  }

  if (v16 >= v21)
  {
    v29 = v16;
  }

  else
  {
    v29 = v21;
  }

  v30 = v31 + v29 + 5.0;
  if (width < v28)
  {
    v28 = width;
  }

  result.height = v30;
  result.width = v28;
  return result;
}

- (CGSize)sizeForSingleLineLayoutFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CNContactGeminiView *)self typeLabel];
  [v6 sizeThatFits:{width, height}];
  v30 = v7;
  v9 = v8;

  v10 = MEMORY[0x1E695F060];
  v11 = *MEMORY[0x1E695F060];
  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v12 = [(CNContactGeminiView *)self geminiBadge];
    [v12 sizeThatFits:{width, height}];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v16 = *(v10 + 8);
    v14 = v11;
  }

  v17 = [(CNContactGeminiView *)self geminiLabel];
  [v17 sizeThatFits:{width, height}];
  v19 = v18;
  v21 = v20;

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v22 = [(CNContactGeminiView *)self chevronView];
    [v22 sizeThatFits:{width, height}];
    v11 = v23;
  }

  v24 = [(CNContactGeminiView *)self shouldDisplayBadge];
  v25 = 6.0;
  if (v24)
  {
    v25 = v14 + 6.0 + 6.0;
  }

  v26 = v30 + v19 + v25;
  v27 = [(CNContactGeminiView *)self shouldDisplayChevron];
  v28 = v11 + 4.0 + v26;
  if (!v27)
  {
    v28 = v26;
  }

  if (v9 >= v21)
  {
    v29 = v9;
  }

  else
  {
    v29 = v21;
  }

  if (v16 >= v29)
  {
    v29 = v16;
  }

  if (width < v28)
  {
    v28 = width;
  }

  result.height = v29;
  result.width = v28;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(CNContactGeminiView *)self isUsingTwoLineLayout])
  {

    [(CNContactGeminiView *)self sizeForTwoLineLayoutFittingSize:width, height];
  }

  else
  {

    [(CNContactGeminiView *)self sizeForSingleLineLayoutFittingSize:width, height];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_backgroundColor, a3);
  v5 = a3;
  v6 = [(CNContactGeminiView *)self geminiViewChevronImage];
  v8 = [(CNContactGeminiView *)self geminiBadge];
  v7 = [v8 _textEncapsulation];
  [v7 setColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = CNContactGeminiView;
  [(CNContactGeminiView *)&v14 setHighlighted:?];
  v5 = [(CNContactGeminiView *)self typeLabel];
  [v5 setHighlighted:v3];

  v6 = [(CNContactGeminiView *)self geminiLabel];
  [v6 setHighlighted:v3];

  v7 = [(CNContactGeminiView *)self chevronView];
  [v7 setHighlighted:v3];

  v8 = [(CNContactGeminiView *)self typeLabel];
  v9 = v8;
  if (v3)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = 1.0;
  }

  [v8 setAlpha:v10];

  v11 = [(CNContactGeminiView *)self geminiLabel];
  [v11 setAlpha:v10];

  v12 = [(CNContactGeminiView *)self geminiBadge];
  [v12 setAlpha:v10];

  v13 = [(CNContactGeminiView *)self chevronView];
  [v13 setAlpha:v10];
}

- (CNContactGeminiView)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = CNContactGeminiView;
  v3 = [(CNContactGeminiView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    typeLabel = v3->_typeLabel;
    v3->_typeLabel = v9;

    [(UILabel *)v3->_typeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_typeLabel setTextAlignment:1];
    [(UILabel *)v3->_typeLabel setNumberOfLines:1];
    LODWORD(v11) = 1144750080;
    [(UILabel *)v3->_typeLabel setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v3->_typeLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(CNContactGeminiView *)v3 addSubview:v3->_typeLabel];
    v13 = [CNGeminiBadge geminiBadgeWithText:@"-"];
    geminiBadge = v3->_geminiBadge;
    v3->_geminiBadge = v13;

    [(CNContactGeminiView *)v3 addSubview:v3->_geminiBadge];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    geminiLabel = v3->_geminiLabel;
    v3->_geminiLabel = v15;

    [(UILabel *)v3->_geminiLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_geminiLabel setTextAlignment:1];
    [(UILabel *)v3->_geminiLabel setNumberOfLines:1];
    LODWORD(v17) = 1132068864;
    [(UILabel *)v3->_geminiLabel setContentCompressionResistancePriority:0 forAxis:v17];
    LODWORD(v18) = 1144750080;
    [(UILabel *)v3->_geminiLabel setContentHuggingPriority:0 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(UILabel *)v3->_geminiLabel setContentCompressionResistancePriority:1 forAxis:v19];
    [(CNContactGeminiView *)v3 addSubview:v3->_geminiLabel];
    v20 = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
    v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
    chevronView = v3->_chevronView;
    v3->_chevronView = v21;

    [(UIImageView *)v3->_chevronView setContentMode:4];
    [(UIImageView *)v3->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)v3->_chevronView setContentCompressionResistancePriority:0 forAxis:v23];
    LODWORD(v24) = 1144750080;
    [(UIImageView *)v3->_chevronView setContentHuggingPriority:0 forAxis:v24];
    [(CNContactGeminiView *)v3 addSubview:v3->_chevronView];
    v25 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    layoutGuide = v3->_layoutGuide;
    v3->_layoutGuide = v25;

    [(CNContactGeminiView *)v3 addLayoutGuide:v3->_layoutGuide];
    v27 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    geminiLabelLayoutGuide = v3->_geminiLabelLayoutGuide;
    v3->_geminiLabelLayoutGuide = v27;

    [(CNContactGeminiView *)v3 addLayoutGuide:v3->_geminiLabelLayoutGuide];
    v3->_useDualSimParity = 0;
    v29 = v3;
  }

  return v3;
}

@end