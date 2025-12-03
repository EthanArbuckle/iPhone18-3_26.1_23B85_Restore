@interface AIAudiogramFrequencyInputCell
- (AIAudiogramFrequencyInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_symbolConfigurationForSymbolType:(int64_t)type;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)createImageViewWithImage:(id)image symbolType:(int64_t)type;
- (id)createLabelWithText:(id)text textColor:(id)color font:(id)font;
- (void)_setWidth:(id)width forEar:(int64_t)ear;
- (void)configureLayout;
- (void)setFrequency:(id)frequency;
- (void)setLeftEarMasked:(BOOL)masked;
- (void)setLeftHearingLevel:(id)level;
- (void)setRightEarMasked:(BOOL)masked;
- (void)setRightHearingLevel:(id)level;
@end

@implementation AIAudiogramFrequencyInputCell

- (AIAudiogramFrequencyInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v87[2] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = AIAudiogramFrequencyInputCell;
  v4 = [(AIAudiogramFrequencyInputCell *)&v83 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v6 = *MEMORY[0x277D76918];
    v7 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
    v8 = [(AIAudiogramFrequencyInputCell *)v4 createLabelWithText:&stru_28535F0B0 textColor:labelColor font:v7];
    [(AIAudiogramFrequencyInputCell *)v4 setFrequencyLabel:v8];

    v9 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
    v12 = [(AIAudiogramFrequencyInputCell *)v4 createLabelWithText:v9 textColor:secondaryLabelColor font:v11];
    [(AIAudiogramFrequencyInputCell *)v4 setLeftEarSensitivity:v12];

    v13 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
    v16 = [(AIAudiogramFrequencyInputCell *)v4 createLabelWithText:v13 textColor:secondaryLabelColor2 font:v15];
    [(AIAudiogramFrequencyInputCell *)v4 setRightEarSensitivity:v16];

    v82 = filledImageForSymbolType(11);
    v17 = [(AIAudiogramFrequencyInputCell *)v4 createImageViewWithImage:v82 symbolType:11];
    [(AIAudiogramFrequencyInputCell *)v4 setLeftEarSymbolImageView:v17];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    leftEarSymbolImageView = [(AIAudiogramFrequencyInputCell *)v4 leftEarSymbolImageView];
    [leftEarSymbolImageView setTintColor:systemBlueColor];

    v20 = labelForSymbolType(11);
    leftEarSymbolImageView2 = [(AIAudiogramFrequencyInputCell *)v4 leftEarSymbolImageView];
    [leftEarSymbolImageView2 setAccessibilityLabel:v20];

    v81 = filledImageForSymbolType(4);
    v22 = [(AIAudiogramFrequencyInputCell *)v4 createImageViewWithImage:v81 symbolType:4];
    [(AIAudiogramFrequencyInputCell *)v4 setRightEarSymbolImageView:v22];

    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    rightEarSymbolImageView = [(AIAudiogramFrequencyInputCell *)v4 rightEarSymbolImageView];
    [rightEarSymbolImageView setTintColor:systemPinkColor];

    v25 = labelForSymbolType(4);
    rightEarSymbolImageView2 = [(AIAudiogramFrequencyInputCell *)v4 rightEarSymbolImageView];
    [rightEarSymbolImageView2 setAccessibilityLabel:v25];

    v27 = objc_alloc(MEMORY[0x277D75A68]);
    leftEarSymbolImageView3 = [(AIAudiogramFrequencyInputCell *)v4 leftEarSymbolImageView];
    v87[0] = leftEarSymbolImageView3;
    leftEarSensitivity = [(AIAudiogramFrequencyInputCell *)v4 leftEarSensitivity];
    v87[1] = leftEarSensitivity;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v31 = [v27 initWithArrangedSubviews:v30];
    [(AIAudiogramFrequencyInputCell *)v4 setLeftEarStackView:v31];

    leftEarStackView = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [leftEarStackView setAxis:0];

    leftEarStackView2 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [leftEarStackView2 setDistribution:0];

    leftEarStackView3 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [leftEarStackView3 setSpacing:7.0];

    v35 = objc_alloc(MEMORY[0x277D75A68]);
    rightEarSymbolImageView3 = [(AIAudiogramFrequencyInputCell *)v4 rightEarSymbolImageView];
    v86[0] = rightEarSymbolImageView3;
    rightEarSensitivity = [(AIAudiogramFrequencyInputCell *)v4 rightEarSensitivity];
    v86[1] = rightEarSensitivity;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v39 = [v35 initWithArrangedSubviews:v38];
    [(AIAudiogramFrequencyInputCell *)v4 setRightEarStackView:v39];

    rightEarStackView = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    [rightEarStackView setAxis:0];

    rightEarStackView2 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    [rightEarStackView2 setDistribution:0];

    rightEarStackView3 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    [rightEarStackView3 setSpacing:7.0];

    v43 = objc_alloc(MEMORY[0x277D75A68]);
    frequencyLabel = [(AIAudiogramFrequencyInputCell *)v4 frequencyLabel];
    v85[0] = frequencyLabel;
    v45 = objc_alloc_init(MEMORY[0x277D75D18]);
    v85[1] = v45;
    leftEarStackView4 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    v85[2] = leftEarStackView4;
    rightEarStackView4 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    v85[3] = rightEarStackView4;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:4];
    v49 = [v43 initWithArrangedSubviews:v48];
    [(AIAudiogramFrequencyInputCell *)v4 setContainerStackView:v49];

    containerStackView = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [containerStackView setAxis:0];

    containerStackView2 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [containerStackView2 setDistribution:0];

    containerStackView3 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [containerStackView3 setSpacing:8.0];

    containerStackView4 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    leftEarStackView5 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [containerStackView4 setCustomSpacing:leftEarStackView5 afterView:20.0];

    containerStackView5 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [containerStackView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    containerStackView6 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [contentView addSubview:containerStackView6];

    v72 = MEMORY[0x277CCAAD0];
    containerStackView7 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    leadingAnchor = [containerStackView7 leadingAnchor];
    contentView2 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v84[0] = v76;
    containerStackView8 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    trailingAnchor = [containerStackView8 trailingAnchor];
    contentView3 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-7.0];
    v84[1] = v70;
    containerStackView9 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    topAnchor = [containerStackView9 topAnchor];
    contentView4 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v60 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v84[2] = v60;
    containerStackView10 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    bottomAnchor = [containerStackView10 bottomAnchor];
    contentView5 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v65 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v84[3] = v65;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:4];
    [v72 activateConstraints:v66];

    [(AIAudiogramFrequencyInputCell *)v4 setHearingLevel:0];
  }

  return v4;
}

- (void)configureLayout
{
  v50[1] = *MEMORY[0x277D85DE8];
  frequencyLabel = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  text = [frequencyLabel text];
  [(AIAudiogramFrequencyInputCell *)self frame];
  v6 = v5;
  v8 = v7;
  v49 = *MEMORY[0x277D740A8];
  v9 = v49;
  frequencyLabel2 = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  font = [frequencyLabel2 font];
  v50[0] = font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  [text boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v51);

  leftEarSensitivity = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  text2 = [leftEarSensitivity text];
  [(AIAudiogramFrequencyInputCell *)self frame];
  v17 = v16;
  v19 = v18;
  v47 = v9;
  leftEarSensitivity2 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  font2 = [leftEarSensitivity2 font];
  v48 = font2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [text2 boundingRectWithSize:32 options:v22 attributes:0 context:{v17, v19}];
  v23 = CGRectGetWidth(v52);

  rightEarSensitivity = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  text3 = [rightEarSensitivity text];
  [(AIAudiogramFrequencyInputCell *)self frame];
  v27 = v26;
  v29 = v28;
  v45 = v9;
  rightEarSensitivity2 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  font3 = [rightEarSensitivity2 font];
  v46 = font3;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  [text3 boundingRectWithSize:32 options:v32 attributes:0 context:{v27, v29}];
  *&v27 = CGRectGetWidth(v53);

  v33 = ((Width + v23) + *&v27);
  [(AIAudiogramFrequencyInputCell *)self frame];
  v34 = CGRectGetWidth(v54) * 0.6;
  containerStackView = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  v36 = containerStackView;
  v37 = v34 < v33;
  v38 = v34 < v33;
  if (v34 >= v33)
  {
    v39 = 8.0;
  }

  else
  {
    v39 = 0.0;
  }

  if (v37)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 20.0;
  }

  [containerStackView setAxis:v38];

  containerStackView2 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  [containerStackView2 setAlignment:v38];

  containerStackView3 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  [containerStackView3 setSpacing:v39];

  containerStackView4 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  leftEarStackView = [(AIAudiogramFrequencyInputCell *)self leftEarStackView];
  [containerStackView4 setCustomSpacing:leftEarStackView afterView:v40];
}

- (id)createLabelWithText:(id)text textColor:(id)color font:(id)font
{
  fontCopy = font;
  colorCopy = color;
  textCopy = text;
  v10 = objc_opt_new();
  [v10 setText:textCopy];

  [v10 setTextColor:colorCopy];
  [v10 setFont:fontCopy];

  LODWORD(v11) = 1144750080;
  [v10 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1144750080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v12];

  return v10;
}

- (id)createImageViewWithImage:(id)image symbolType:(int64_t)type
{
  v6 = MEMORY[0x277D755E8];
  imageCopy = image;
  v8 = [[v6 alloc] initWithImage:imageCopy];
  [v8 setContentMode:1];
  v9 = [(AIAudiogramFrequencyInputCell *)self _symbolConfigurationForSymbolType:type];
  [v8 setPreferredSymbolConfiguration:v9];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v8 widthAnchor];
  heightAnchor = [v8 heightAnchor];
  [imageCopy size];
  v13 = v12;
  [imageCopy size];
  v15 = v14;

  v16 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v13 / v15];

  LODWORD(v17) = 1144750080;
  [v16 setPriority:v17];
  [v16 setActive:1];
  LODWORD(v18) = 1132068864;
  [v8 setContentCompressionResistancePriority:0 forAxis:v18];

  return v8;
}

- (id)_symbolConfigurationForSymbolType:(int64_t)type
{
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0] scale:1];
  if (type == 11)
  {
    v5 = [MEMORY[0x277D755D0] configurationWithWeight:9];
    v6 = [v4 configurationByApplyingConfiguration:v5];

    v4 = v6;
  }

  return v4;
}

- (void)setFrequency:(id)frequency
{
  frequencyCopy = frequency;
  objc_storeStrong(&self->_frequency, frequency);
  v16 = frequencyCopy;
  if ([v16 intValue] < 1000)
  {
    v9 = @"AudiogramIngestionHertzAbbreviation";
    v10 = v16;
  }

  else
  {
    HIDWORD(v6) = 652835029 * [v16 intValue] + 17179864;
    LODWORD(v6) = HIDWORD(v6);
    if ((v6 >> 3) <= 0x418936)
    {
      [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v16, "intValue") / 1000)}];
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      [v16 doubleValue];
      [v7 stringWithFormat:@"%.1f", v8 / 1000.0];
    }
    v10 = ;

    v9 = @"AudiogramIngestionKiloHertzAbbreviation";
  }

  v11 = aiLocString(v9);
  v12 = MEMORY[0x277CCACA8];
  v13 = aiLocString(@"AudiogramIngestionResultsFrequency");
  v14 = [v12 stringWithFormat:v13, v10, v11];
  frequencyLabel = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  [frequencyLabel setText:v14];
}

- (void)setLeftHearingLevel:(id)level
{
  levelCopy = level;
  v4 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
  v5 = MEMORY[0x277CCACA8];
  v6 = aiLocString(@"AudiogramIngestionResultsFrequency");
  v7 = levelCopy;
  if (!levelCopy)
  {
    v7 = aiLocString(@"AudiogramIngestionResultsNoData");
  }

  v8 = [v5 stringWithFormat:v6, v7, v4];
  leftEarSensitivity = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  [leftEarSensitivity setText:v8];

  if (!levelCopy)
  {
  }
}

- (void)setRightHearingLevel:(id)level
{
  levelCopy = level;
  v4 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
  v5 = MEMORY[0x277CCACA8];
  v6 = aiLocString(@"AudiogramIngestionResultsFrequency");
  v7 = levelCopy;
  if (!levelCopy)
  {
    v7 = aiLocString(@"AudiogramIngestionResultsNoData");
  }

  v8 = [v5 stringWithFormat:v6, v7, v4];
  rightEarSensitivity = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  [rightEarSensitivity setText:v8];

  if (!levelCopy)
  {
  }
}

- (void)setLeftEarMasked:(BOOL)masked
{
  if (masked)
  {
    v4 = 8;
  }

  else
  {
    v4 = 11;
  }

  v12 = filledImageForSymbolType(v4);
  leftEarSymbolImageView = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  [leftEarSymbolImageView setImage:v12];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  leftEarSymbolImageView2 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  [leftEarSymbolImageView2 setTintColor:systemBlueColor];

  v8 = labelForSymbolType(v4);
  leftEarSymbolImageView3 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  [leftEarSymbolImageView3 setAccessibilityLabel:v8];

  leftEarSymbolImageView4 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  v11 = [(AIAudiogramFrequencyInputCell *)self _symbolConfigurationForSymbolType:v4];
  [leftEarSymbolImageView4 setPreferredSymbolConfiguration:v11];
}

- (void)setRightEarMasked:(BOOL)masked
{
  if (masked)
  {
    v4 = 9;
  }

  else
  {
    v4 = 4;
  }

  v12 = filledImageForSymbolType(v4);
  rightEarSymbolImageView = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  [rightEarSymbolImageView setImage:v12];

  systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
  rightEarSymbolImageView2 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  [rightEarSymbolImageView2 setTintColor:systemPinkColor];

  v8 = labelForSymbolType(v4);
  rightEarSymbolImageView3 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  [rightEarSymbolImageView3 setAccessibilityLabel:v8];

  rightEarSymbolImageView4 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  v11 = [(AIAudiogramFrequencyInputCell *)self _symbolConfigurationForSymbolType:v4];
  [rightEarSymbolImageView4 setPreferredSymbolConfiguration:v11];
}

- (void)_setWidth:(id)width forEar:(int64_t)ear
{
  v23 = *MEMORY[0x277D85DE8];
  widthCopy = width;
  if (ear == 1)
  {
    [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  }

  else
  {
    [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  }
  v7 = ;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  constraints = [v7 constraints];
  v9 = [constraints countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(constraints);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      if ([v13 firstAttribute] == 7)
      {
        if ([v13 isActive])
        {
          NSClassFromString(&cfstr_Nscontentsizel.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }
        }
      }

      if (v10 == ++v12)
      {
        v10 = [constraints countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    v14 = v13;

    if (!v14)
    {
      goto LABEL_17;
    }

    [widthCopy floatValue];
    [v14 setConstant:v15];
  }

  else
  {
LABEL_14:

LABEL_17:
    widthAnchor = [v7 widthAnchor];
    [widthCopy floatValue];
    v14 = [widthAnchor constraintEqualToConstant:v17];

    [v14 setActive:1];
  }
}

- (id)accessibilityLabel
{
  frequencyLabel = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  accessibilityLabel = [frequencyLabel accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = objc_opt_new();
  leftEarSensitivity = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  text = [leftEarSensitivity text];
  v6 = aiLocString(@"AudiogramIngestionResultsNoData");
  v7 = [text containsString:v6];

  if (v7)
  {
    v8 = aiLocString(@"AudiogramIngestionNoLeftSymbol");
    [v3 appendString:v8];
  }

  else
  {
    v8 = aiLocString(@"AudiogramIngestionSymbolAtLevelFormat");
    leftEarSymbolImageView = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
    accessibilityLabel = [leftEarSymbolImageView accessibilityLabel];
    leftEarSensitivity2 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
    accessibilityLabel2 = [leftEarSensitivity2 accessibilityLabel];
    v13 = AXCFormattedString();
    [v3 appendString:{v13, accessibilityLabel, accessibilityLabel2}];
  }

  [v3 appendString:{@", "}];
  rightEarSensitivity = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  text2 = [rightEarSensitivity text];
  v16 = aiLocString(@"AudiogramIngestionResultsNoData");
  v17 = [text2 containsString:v16];

  if (v17)
  {
    v18 = aiLocString(@"AudiogramIngestionNoRightSymbol");
    [v3 appendString:v18];
  }

  else
  {
    v18 = aiLocString(@"AudiogramIngestionSymbolAtLevelFormat");
    rightEarSymbolImageView = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
    accessibilityLabel3 = [rightEarSymbolImageView accessibilityLabel];
    rightEarSensitivity2 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
    accessibilityLabel4 = [rightEarSensitivity2 accessibilityLabel];
    v23 = AXCFormattedString();
    [v3 appendString:{v23, accessibilityLabel3, accessibilityLabel4}];
  }

  return v3;
}

@end