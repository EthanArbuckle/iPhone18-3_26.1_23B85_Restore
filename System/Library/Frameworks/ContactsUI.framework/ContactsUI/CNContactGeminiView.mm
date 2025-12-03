@interface CNContactGeminiView
- (BOOL)_hasBaseline;
- (BOOL)doesLayoutRequireTwoLines;
- (BOOL)shouldDisplayBadge;
- (CGSize)sizeForSingleLineLayoutFittingSize:(CGSize)size;
- (CGSize)sizeForTwoLineLayoutFittingSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNContactGeminiView)initWithFrame:(CGRect)frame;
- (id)geminiViewChevronImage;
- (id)localizedChannelSubtitleForGeminiResult:(id)result;
- (id)localizedChannelUsageFromGeminiResult:(id)result;
- (id)localizedChannelUsageFromGeminiUsage:(int64_t)usage;
- (id)localizedLabelFromGeminiChannel:(id)channel;
- (id)localizedLabelFromGeminiResult:(id)result;
- (id)singleLineLayoutConstraints;
- (id)twoLineLayoutConstraints;
- (void)calculateLayoutIfNeeded;
- (void)layoutSubviews;
- (void)setAb_textAttributes:(id)attributes;
- (void)setBackgroundColor:(id)color;
- (void)setGeminiChannel:(id)channel;
- (void)setGeminiResult:(id)result;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateConstraints;
- (void)updateGeminiViewForChannel:(id)channel channelUsage:(int64_t)usage calculateLayout:(BOOL)layout;
@end

@implementation CNContactGeminiView

- (BOOL)shouldDisplayBadge
{
  geminiResult = [(CNContactGeminiView *)self geminiResult];
  channel = [geminiResult channel];
  isAvailable = [channel isAvailable];

  return isAvailable;
}

- (id)geminiViewChevronImage
{
  geminiResult = [(CNContactGeminiView *)self geminiResult];
  usage = [geminiResult usage];

  v5 = MEMORY[0x1E69DCAB8];
  backgroundColor = [(CNContactGeminiView *)self backgroundColor];
  if (usage == 4)
  {
    [v5 cnui_symbolImageForUnknownNumberContactCardChevronWithColor:backgroundColor];
  }

  else
  {
    [v5 cnui_symbolImageForDynamicallySizedContactCardChevronWithColor:backgroundColor];
  }
  v7 = ;

  return v7;
}

- (BOOL)_hasBaseline
{
  traitCollection = [(CNContactGeminiView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 3;

  return v3;
}

- (void)setGeminiChannel:(id)channel
{
  geminiResult = self->_geminiResult;
  channelCopy = channel;
  channel = [(CNGeminiResult *)geminiResult channel];
  [(CNContactGeminiView *)self updateGeminiViewForChannel:channelCopy channelUsage:3 calculateLayout:channel != channelCopy];
}

- (void)updateGeminiViewForChannel:(id)channel channelUsage:(int64_t)usage calculateLayout:(BOOL)layout
{
  layoutCopy = layout;
  channelCopy = channel;
  chevronView = [(CNContactGeminiView *)self chevronView];
  isHidden = [chevronView isHidden];

  geminiBadge = [(CNContactGeminiView *)self geminiBadge];
  isHidden2 = [geminiBadge isHidden];

  v12 = [(CNContactGeminiView *)self localizedChannelUsageFromGeminiUsage:usage];
  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    localizedBadgeLabel = [channelCopy localizedBadgeLabel];
  }

  else
  {
    localizedBadgeLabel = @"-";
  }

  v14 = [(CNContactGeminiView *)self localizedLabelFromGeminiChannel:channelCopy];
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  [typeLabel setText:v12];

  LODWORD(typeLabel) = [(CNContactGeminiView *)self shouldDisplayBadge];
  geminiBadge2 = [(CNContactGeminiView *)self geminiBadge];
  [geminiBadge2 setHidden:typeLabel ^ 1];

  geminiBadge3 = [(CNContactGeminiView *)self geminiBadge];
  [geminiBadge3 setText:localizedBadgeLabel];

  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  [geminiLabel setText:v14];

  backgroundColor = [(CNContactGeminiView *)self backgroundColor];
  geminiBadge4 = [(CNContactGeminiView *)self geminiBadge];
  [geminiBadge4 setTextColor:backgroundColor];

  geminiViewChevronImage = [(CNContactGeminiView *)self geminiViewChevronImage];
  chevronView2 = [(CNContactGeminiView *)self chevronView];
  [chevronView2 setImage:geminiViewChevronImage];

  LODWORD(geminiViewChevronImage) = [(CNContactGeminiView *)self shouldDisplayChevron];
  chevronView3 = [(CNContactGeminiView *)self chevronView];
  [chevronView3 setHidden:geminiViewChevronImage ^ 1];

  if (layoutCopy)
  {
    [(CNContactGeminiView *)self setNeedsCalculateLayout];
    [(CNContactGeminiView *)self bounds];
    if (v24 > 0.0)
    {
      [(CNContactGeminiView *)self calculateLayoutIfNeeded];
    }
  }

  chevronView4 = [(CNContactGeminiView *)self chevronView];
  if (isHidden == [chevronView4 isHidden])
  {
    geminiBadge5 = [(CNContactGeminiView *)self geminiBadge];
    isHidden3 = [geminiBadge5 isHidden];

    if (isHidden2 == isHidden3)
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

- (void)setGeminiResult:(id)result
{
  resultCopy = result;
  geminiResult = self->_geminiResult;
  self->_geminiResult = resultCopy;
  v9 = resultCopy;
  v6 = geminiResult;

  channel = [(CNGeminiResult *)v9 channel];
  usage = [(CNGeminiResult *)v9 usage];

  [(CNContactGeminiView *)self updateGeminiViewForChannel:channel channelUsage:usage calculateLayout:v6 != v9];
}

- (id)localizedLabelFromGeminiChannel:(id)channel
{
  channelCopy = channel;
  isAvailable = [channelCopy isAvailable];
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (isAvailable)
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_VALUE-%@";
  }

  else
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_VALUE_UNAVAILBLE-%@";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  v9 = MEMORY[0x1E696AEC0];
  localizedLabel = [channelCopy localizedLabel];

  v11 = [v9 stringWithFormat:v8, localizedLabel];

  return v11;
}

- (id)localizedLabelFromGeminiResult:(id)result
{
  channel = [result channel];
  v5 = [(CNContactGeminiView *)self localizedLabelFromGeminiChannel:channel];

  return v5;
}

- (id)localizedChannelSubtitleForGeminiResult:(id)result
{
  usage = [result usage];
  if (usage == 2)
  {
    v4 = @"PREFERRED_LINE_PICKER_SUBTITLE_LAST_USED";
    goto LABEL_5;
  }

  if (usage == 3)
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

- (id)localizedChannelUsageFromGeminiUsage:(int64_t)usage
{
  useDualSimParity = [(CNContactGeminiView *)self useDualSimParity];
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (useDualSimParity)
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_UNKNOWN_CONTACT_SIM_LINE";
  }

  else if ((usage - 1) > 3)
  {
    v7 = @"PREFERRED_LINE_CONTACT_HEADER_DEFAULT_LABEL";
  }

  else
  {
    v7 = off_1E74E4858[usage - 1];
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  return v8;
}

- (id)localizedChannelUsageFromGeminiResult:(id)result
{
  usage = [result usage];

  return [(CNContactGeminiView *)self localizedChannelUsageFromGeminiUsage:usage];
}

- (id)twoLineLayoutConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696ACD8];
  layoutGuide = [(CNContactGeminiView *)self layoutGuide];
  v6 = [v4 constraintWithItem:self attribute:8 relatedBy:0 toItem:layoutGuide attribute:8 multiplier:1.0 constant:0.0];
  [array addObject:v6];

  v7 = MEMORY[0x1E696ACD8];
  layoutGuide2 = [(CNContactGeminiView *)self layoutGuide];
  v9 = [v7 constraintWithItem:self attribute:9 relatedBy:0 toItem:layoutGuide2 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  geminiLabelLayoutGuide = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  v13 = [v10 constraintWithItem:geminiLabelLayoutGuide attribute:8 relatedBy:1 toItem:geminiLabel attribute:8 multiplier:1.0 constant:0.0];
  [array addObject:v13];

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v14 = MEMORY[0x1E696ACD8];
    geminiLabelLayoutGuide2 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
    geminiBadge = [(CNContactGeminiView *)self geminiBadge];
    v17 = [v14 constraintWithItem:geminiLabelLayoutGuide2 attribute:8 relatedBy:1 toItem:geminiBadge attribute:8 multiplier:1.0 constant:0.0];
    [array addObject:v17];
  }

  v18 = MEMORY[0x1E696ACD8];
  geminiLabelLayoutGuide3 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
  v20 = [v18 constraintWithItem:geminiLabelLayoutGuide3 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v20];

  v21 = MEMORY[0x1E696ACD8];
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  v23 = [v21 constraintWithItem:self attribute:3 relatedBy:0 toItem:typeLabel attribute:3 multiplier:1.0 constant:0.0];
  [array addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  geminiLabel2 = [(CNContactGeminiView *)self geminiLabel];
  typeLabel2 = [(CNContactGeminiView *)self typeLabel];
  v27 = [v24 constraintWithItem:geminiLabel2 attribute:3 relatedBy:0 toItem:typeLabel2 attribute:4 multiplier:1.0 constant:5.0];
  [array addObject:v27];

  v28 = MEMORY[0x1E696ACD8];
  geminiLabel3 = [(CNContactGeminiView *)self geminiLabel];
  v30 = [v28 constraintWithItem:geminiLabel3 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [array addObject:v30];

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v31 = MEMORY[0x1E696ACD8];
    chevronView = [(CNContactGeminiView *)self chevronView];
    v33 = [v31 constraintWithItem:self attribute:10 relatedBy:0 toItem:chevronView attribute:10 multiplier:1.0 constant:0.0];
    [array addObject:v33];
  }

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v34 = MEMORY[0x1E696ACD8];
    geminiBadge2 = [(CNContactGeminiView *)self geminiBadge];
    geminiLabel4 = [(CNContactGeminiView *)self geminiLabel];
    v37 = [v34 constraintWithItem:geminiBadge2 attribute:10 relatedBy:0 toItem:geminiLabel4 attribute:10 multiplier:1.0 constant:0.0];
    [array addObject:v37];
  }

  v38 = MEMORY[0x1E696ACD8];
  layoutGuide3 = [(CNContactGeminiView *)self layoutGuide];
  typeLabel3 = [(CNContactGeminiView *)self typeLabel];
  v41 = [v38 constraintWithItem:layoutGuide3 attribute:5 relatedBy:-1 toItem:typeLabel3 attribute:5 multiplier:1.0 constant:0.0];
  [array addObject:v41];

  v42 = MEMORY[0x1E696ACD8];
  typeLabel4 = [(CNContactGeminiView *)self typeLabel];
  v44 = [v42 constraintWithItem:self attribute:9 relatedBy:0 toItem:typeLabel4 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v44];

  LOBYTE(typeLabel3) = [(CNContactGeminiView *)self shouldDisplayChevron];
  v45 = MEMORY[0x1E696ACD8];
  layoutGuide4 = [(CNContactGeminiView *)self layoutGuide];
  if (typeLabel3)
  {
    [(CNContactGeminiView *)self chevronView];
  }

  else
  {
    [(CNContactGeminiView *)self typeLabel];
  }
  v47 = ;
  v48 = [v45 constraintWithItem:layoutGuide4 attribute:6 relatedBy:1 toItem:v47 attribute:6 multiplier:1.0 constant:0.0];
  [array addObject:v48];

  v49 = MEMORY[0x1E696ACD8];
  typeLabel5 = [(CNContactGeminiView *)self typeLabel];
  v51 = [v49 constraintWithItem:self attribute:5 relatedBy:-1 toItem:typeLabel5 attribute:5 multiplier:1.0 constant:0.0];
  [array addObject:v51];

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
  layoutGuide5 = [(CNContactGeminiView *)self layoutGuide];
  v55 = [v53 constraintWithItem:layoutGuide5 attribute:5 relatedBy:-1 toItem:v52 attribute:5 multiplier:1.0 constant:0.0];
  [array addObject:v55];

  if (![(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v56 = MEMORY[0x1E696ACD8];
    layoutGuide6 = [(CNContactGeminiView *)self layoutGuide];
    geminiLabel5 = [(CNContactGeminiView *)self geminiLabel];
    v59 = [v56 constraintWithItem:layoutGuide6 attribute:6 relatedBy:1 toItem:geminiLabel5 attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:v59];
  }

  shouldDisplayBadge = [(CNContactGeminiView *)self shouldDisplayBadge];
  v61 = MEMORY[0x1E696ACD8];
  if (shouldDisplayBadge)
  {
    geminiBadge3 = [(CNContactGeminiView *)self geminiBadge];
    v63 = [v61 constraintWithItem:self attribute:5 relatedBy:-1 toItem:geminiBadge3 attribute:5 multiplier:1.0 constant:0.0];
    [array addObject:v63];

    v64 = MEMORY[0x1E696ACD8];
    geminiBadge4 = [(CNContactGeminiView *)self geminiBadge];
    geminiLabel6 = [(CNContactGeminiView *)self geminiLabel];
    v67 = [v64 constraintWithItem:geminiBadge4 attribute:6 relatedBy:0 toItem:geminiLabel6 attribute:5 multiplier:1.0 constant:-6.0];
    [array addObject:v67];

    v68 = MEMORY[0x1E696ACD8];
    geminiLabelLayoutGuide4 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
    [(CNContactGeminiView *)self geminiBadge];
  }

  else
  {
    geminiLabel7 = [(CNContactGeminiView *)self geminiLabel];
    v71 = [v61 constraintWithItem:self attribute:5 relatedBy:-1 toItem:geminiLabel7 attribute:5 multiplier:1.0 constant:0.0];
    [array addObject:v71];

    v68 = MEMORY[0x1E696ACD8];
    geminiLabelLayoutGuide4 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
    [(CNContactGeminiView *)self geminiLabel];
  }
  v72 = ;
  v73 = [v68 constraintWithItem:geminiLabelLayoutGuide4 attribute:5 relatedBy:0 toItem:v72 attribute:5 multiplier:1.0 constant:0.0];
  [array addObject:v73];

  v74 = MEMORY[0x1E696ACD8];
  geminiLabelLayoutGuide5 = [(CNContactGeminiView *)self geminiLabelLayoutGuide];
  geminiLabel8 = [(CNContactGeminiView *)self geminiLabel];
  v77 = [v74 constraintWithItem:geminiLabelLayoutGuide5 attribute:6 relatedBy:0 toItem:geminiLabel8 attribute:6 multiplier:1.0 constant:0.0];
  [array addObject:v77];

  shouldDisplayChevron = [(CNContactGeminiView *)self shouldDisplayChevron];
  v79 = MEMORY[0x1E696ACD8];
  if (shouldDisplayChevron)
  {
    chevronView2 = [(CNContactGeminiView *)self chevronView];
    v81 = [v79 constraintWithItem:chevronView2 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:v81];

    v82 = MEMORY[0x1E696ACD8];
    typeLabel6 = [(CNContactGeminiView *)self typeLabel];
    chevronView3 = [(CNContactGeminiView *)self chevronView];
    v85 = [v82 constraintWithItem:typeLabel6 attribute:6 relatedBy:-1 toItem:chevronView3 attribute:5 multiplier:1.0 constant:-4.0];
    [array addObject:v85];

    v86 = MEMORY[0x1E696ACD8];
    geminiLabel9 = [(CNContactGeminiView *)self geminiLabel];
    chevronView4 = [(CNContactGeminiView *)self chevronView];
    v89 = [v86 constraintWithItem:geminiLabel9 attribute:6 relatedBy:-1 toItem:chevronView4 attribute:5 multiplier:1.0 constant:-4.0];
    [array addObject:v89];
  }

  else
  {
    typeLabel7 = [(CNContactGeminiView *)self typeLabel];
    v91 = [v79 constraintWithItem:typeLabel7 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:v91];

    v92 = MEMORY[0x1E696ACD8];
    geminiLabel9 = [(CNContactGeminiView *)self geminiLabel];
    chevronView4 = [v92 constraintWithItem:geminiLabel9 attribute:6 relatedBy:-1 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:chevronView4];
  }

  return array;
}

- (id)singleLineLayoutConstraints
{
  array = [MEMORY[0x1E695DF70] array];
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
  layoutGuide = [(CNContactGeminiView *)self layoutGuide];
  v7 = [v5 constraintWithItem:self attribute:8 relatedBy:0 toItem:layoutGuide attribute:8 multiplier:1.0 constant:0.0];
  [array addObject:v7];

  v8 = MEMORY[0x1E696ACD8];
  layoutGuide2 = [(CNContactGeminiView *)self layoutGuide];
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  v11 = [v8 constraintWithItem:layoutGuide2 attribute:5 relatedBy:0 toItem:typeLabel attribute:5 multiplier:1.0 constant:0.0];
  [array addObject:v11];

  v12 = MEMORY[0x1E696ACD8];
  layoutGuide3 = [(CNContactGeminiView *)self layoutGuide];
  v14 = [v12 constraintWithItem:layoutGuide3 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
  [array addObject:v14];

  v15 = MEMORY[0x1E696ACD8];
  layoutGuide4 = [(CNContactGeminiView *)self layoutGuide];
  v17 = [v15 constraintWithItem:self attribute:9 relatedBy:0 toItem:layoutGuide4 attribute:9 multiplier:1.0 constant:0.0];
  [array addObject:v17];

  v18 = MEMORY[0x1E696ACD8];
  typeLabel2 = [(CNContactGeminiView *)self typeLabel];
  v20 = [v18 constraintWithItem:self attribute:8 relatedBy:0 toItem:typeLabel2 attribute:8 multiplier:1.0 constant:0.0];
  [array addObject:v20];

  v21 = MEMORY[0x1E696ACD8];
  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  v23 = [v21 constraintWithItem:self attribute:8 relatedBy:0 toItem:geminiLabel attribute:8 multiplier:1.0 constant:0.0];
  [array addObject:v23];

  v24 = MEMORY[0x1E696ACD8];
  typeLabel3 = [(CNContactGeminiView *)self typeLabel];
  v26 = [v24 constraintWithItem:self attribute:10 relatedBy:0 toItem:typeLabel3 attribute:10 multiplier:1.0 constant:0.0];
  [array addObject:v26];

  v27 = MEMORY[0x1E696ACD8];
  geminiLabel2 = [(CNContactGeminiView *)self geminiLabel];
  v29 = [v27 constraintWithItem:self attribute:10 relatedBy:0 toItem:geminiLabel2 attribute:10 multiplier:1.0 constant:0.0];
  [array addObject:v29];

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v30 = MEMORY[0x1E696ACD8];
    chevronView = [(CNContactGeminiView *)self chevronView];
    v32 = [v30 constraintWithItem:self attribute:10 relatedBy:0 toItem:chevronView attribute:10 multiplier:1.0 constant:0.0];
    [array addObject:v32];
  }

  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    v33 = MEMORY[0x1E696ACD8];
    typeLabel4 = [(CNContactGeminiView *)self typeLabel];
    geminiBadge = [(CNContactGeminiView *)self geminiBadge];
    v36 = [v33 constraintWithItem:typeLabel4 attribute:10 relatedBy:0 toItem:geminiBadge attribute:10 multiplier:1.0 constant:0.0];
    [array addObject:v36];
  }

  v37 = MEMORY[0x1E696ACD8];
  typeLabel5 = [(CNContactGeminiView *)self typeLabel];
  v39 = [v37 constraintWithItem:self attribute:5 relatedBy:-1 toItem:typeLabel5 attribute:5 multiplier:1.0 constant:0.0];
  [array addObject:v39];

  LODWORD(typeLabel5) = [(CNContactGeminiView *)self shouldDisplayBadge];
  v40 = MEMORY[0x1E696ACD8];
  typeLabel6 = [(CNContactGeminiView *)self typeLabel];
  if (typeLabel5)
  {
    geminiBadge2 = [(CNContactGeminiView *)self geminiBadge];
    v43 = [v40 constraintWithItem:typeLabel6 attribute:6 relatedBy:0 toItem:geminiBadge2 attribute:5 multiplier:1.0 constant:-6.0];
    [array addObject:v43];

    v40 = MEMORY[0x1E696ACD8];
    typeLabel6 = [(CNContactGeminiView *)self geminiBadge];
  }

  geminiLabel3 = [(CNContactGeminiView *)self geminiLabel];
  v45 = [v40 constraintWithItem:typeLabel6 attribute:6 relatedBy:0 toItem:geminiLabel3 attribute:5 multiplier:1.0 constant:-6.0];
  [array addObject:v45];

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    v46 = MEMORY[0x1E696ACD8];
    chevronView2 = [(CNContactGeminiView *)self chevronView];
    geminiLabel4 = [(CNContactGeminiView *)self geminiLabel];
    v49 = [v46 constraintWithItem:chevronView2 attribute:5 relatedBy:0 toItem:geminiLabel4 attribute:6 multiplier:1.0 constant:4.0];
    [array addObject:v49];
  }

  v50 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:6 relatedBy:1 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
  [array addObject:v50];

  return array;
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = CNContactGeminiView;
  [(CNContactGeminiView *)&v6 updateConstraints];
  v3 = MEMORY[0x1E696ACD8];
  activatedConstraints = [(CNContactGeminiView *)self activatedConstraints];
  [v3 deactivateConstraints:activatedConstraints];

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
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  [(CNContactGeminiView *)self bounds];
  [typeLabel sizeThatFits:{v4, v5}];
  v7 = v6;

  geminiBadge = [(CNContactGeminiView *)self geminiBadge];
  [(CNContactGeminiView *)self bounds];
  [geminiBadge sizeThatFits:{v9, v10}];
  v12 = v11;

  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  [(CNContactGeminiView *)self bounds];
  [geminiLabel sizeThatFits:{v14, v15}];
  v17 = v16;

  v18 = v7 + 12.0 + v12 + v17;
  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    chevronView = [(CNContactGeminiView *)self chevronView];
    [(CNContactGeminiView *)self bounds];
    [chevronView sizeThatFits:{v20, v21}];
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
    geminiResult = [(CNContactGeminiView *)self geminiResult];
    if (geminiResult)
    {
      v4 = geminiResult;
      [(CNContactGeminiView *)self bounds];
      v6 = v5;

      if (v6 > 0.0)
      {
        isUsingTwoLineLayout = [(CNContactGeminiView *)self isUsingTwoLineLayout];
        [(CNContactGeminiView *)self setIsUsingTwoLineLayout:[(CNContactGeminiView *)self doesLayoutRequireTwoLines]];
        [(CNContactGeminiView *)self setDidCalculateLayout:1];
        if (isUsingTwoLineLayout != [(CNContactGeminiView *)self isUsingTwoLineLayout])
        {
          [(CNContactGeminiView *)self setNeedsUpdateConstraints];

          [(CNContactGeminiView *)self updateConstraintsIfNeeded];
        }
      }
    }
  }
}

- (void)setAb_textAttributes:(id)attributes
{
  objc_storeStrong(&self->_ab_textAttributes, attributes);
  attributesCopy = attributes;
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  [typeLabel setAb_textAttributes:attributesCopy];

  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  [geminiLabel setAb_textAttributes:attributesCopy];
}

- (CGSize)sizeForTwoLineLayoutFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  [typeLabel sizeThatFits:{width, height}];
  v8 = v7;
  v31 = v9;

  v10 = MEMORY[0x1E695F060];
  v11 = *MEMORY[0x1E695F060];
  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    geminiBadge = [(CNContactGeminiView *)self geminiBadge];
    [geminiBadge sizeThatFits:{width, height}];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v16 = *(v10 + 8);
    v14 = v11;
  }

  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  [geminiLabel sizeThatFits:{width, height}];
  v19 = v18;
  v21 = v20;

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    chevronView = [(CNContactGeminiView *)self chevronView];
    [chevronView sizeThatFits:{width, height}];
    v11 = v23;
  }

  shouldDisplayBadge = [(CNContactGeminiView *)self shouldDisplayBadge];
  v25 = v14 + 6.0 + v19;
  if (!shouldDisplayBadge)
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

  shouldDisplayChevron = [(CNContactGeminiView *)self shouldDisplayChevron];
  v28 = v11 + 4.0 + v26;
  if (!shouldDisplayChevron)
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

- (CGSize)sizeForSingleLineLayoutFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  [typeLabel sizeThatFits:{width, height}];
  v30 = v7;
  v9 = v8;

  v10 = MEMORY[0x1E695F060];
  v11 = *MEMORY[0x1E695F060];
  if ([(CNContactGeminiView *)self shouldDisplayBadge])
  {
    geminiBadge = [(CNContactGeminiView *)self geminiBadge];
    [geminiBadge sizeThatFits:{width, height}];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v16 = *(v10 + 8);
    v14 = v11;
  }

  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  [geminiLabel sizeThatFits:{width, height}];
  v19 = v18;
  v21 = v20;

  if ([(CNContactGeminiView *)self shouldDisplayChevron])
  {
    chevronView = [(CNContactGeminiView *)self chevronView];
    [chevronView sizeThatFits:{width, height}];
    v11 = v23;
  }

  shouldDisplayBadge = [(CNContactGeminiView *)self shouldDisplayBadge];
  v25 = 6.0;
  if (shouldDisplayBadge)
  {
    v25 = v14 + 6.0 + 6.0;
  }

  v26 = v30 + v19 + v25;
  shouldDisplayChevron = [(CNContactGeminiView *)self shouldDisplayChevron];
  v28 = v11 + 4.0 + v26;
  if (!shouldDisplayChevron)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_backgroundColor, color);
  colorCopy = color;
  geminiViewChevronImage = [(CNContactGeminiView *)self geminiViewChevronImage];
  geminiBadge = [(CNContactGeminiView *)self geminiBadge];
  _textEncapsulation = [geminiBadge _textEncapsulation];
  [_textEncapsulation setColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v14.receiver = self;
  v14.super_class = CNContactGeminiView;
  [(CNContactGeminiView *)&v14 setHighlighted:?];
  typeLabel = [(CNContactGeminiView *)self typeLabel];
  [typeLabel setHighlighted:highlightedCopy];

  geminiLabel = [(CNContactGeminiView *)self geminiLabel];
  [geminiLabel setHighlighted:highlightedCopy];

  chevronView = [(CNContactGeminiView *)self chevronView];
  [chevronView setHighlighted:highlightedCopy];

  typeLabel2 = [(CNContactGeminiView *)self typeLabel];
  v9 = typeLabel2;
  if (highlightedCopy)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = 1.0;
  }

  [typeLabel2 setAlpha:v10];

  geminiLabel2 = [(CNContactGeminiView *)self geminiLabel];
  [geminiLabel2 setAlpha:v10];

  geminiBadge = [(CNContactGeminiView *)self geminiBadge];
  [geminiBadge setAlpha:v10];

  chevronView2 = [(CNContactGeminiView *)self chevronView];
  [chevronView2 setAlpha:v10];
}

- (CNContactGeminiView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = CNContactGeminiView;
  v3 = [(CNContactGeminiView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    cnui_symbolImageForContactCardChevron = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
    v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:cnui_symbolImageForContactCardChevron];
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