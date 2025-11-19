@interface AIAudiogramFrequencyInputCell
- (AIAudiogramFrequencyInputCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_symbolConfigurationForSymbolType:(int64_t)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)createImageViewWithImage:(id)a3 symbolType:(int64_t)a4;
- (id)createLabelWithText:(id)a3 textColor:(id)a4 font:(id)a5;
- (void)_setWidth:(id)a3 forEar:(int64_t)a4;
- (void)configureLayout;
- (void)setFrequency:(id)a3;
- (void)setLeftEarMasked:(BOOL)a3;
- (void)setLeftHearingLevel:(id)a3;
- (void)setRightEarMasked:(BOOL)a3;
- (void)setRightHearingLevel:(id)a3;
@end

@implementation AIAudiogramFrequencyInputCell

- (AIAudiogramFrequencyInputCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v87[2] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = AIAudiogramFrequencyInputCell;
  v4 = [(AIAudiogramFrequencyInputCell *)&v83 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] labelColor];
    v6 = *MEMORY[0x277D76918];
    v7 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
    v8 = [(AIAudiogramFrequencyInputCell *)v4 createLabelWithText:&stru_28535F0B0 textColor:v5 font:v7];
    [(AIAudiogramFrequencyInputCell *)v4 setFrequencyLabel:v8];

    v9 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
    v12 = [(AIAudiogramFrequencyInputCell *)v4 createLabelWithText:v9 textColor:v10 font:v11];
    [(AIAudiogramFrequencyInputCell *)v4 setLeftEarSensitivity:v12];

    v13 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    v14 = [MEMORY[0x277D75348] secondaryLabelColor];
    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
    v16 = [(AIAudiogramFrequencyInputCell *)v4 createLabelWithText:v13 textColor:v14 font:v15];
    [(AIAudiogramFrequencyInputCell *)v4 setRightEarSensitivity:v16];

    v82 = filledImageForSymbolType(11);
    v17 = [(AIAudiogramFrequencyInputCell *)v4 createImageViewWithImage:v82 symbolType:11];
    [(AIAudiogramFrequencyInputCell *)v4 setLeftEarSymbolImageView:v17];

    v18 = [MEMORY[0x277D75348] systemBlueColor];
    v19 = [(AIAudiogramFrequencyInputCell *)v4 leftEarSymbolImageView];
    [v19 setTintColor:v18];

    v20 = labelForSymbolType(11);
    v21 = [(AIAudiogramFrequencyInputCell *)v4 leftEarSymbolImageView];
    [v21 setAccessibilityLabel:v20];

    v81 = filledImageForSymbolType(4);
    v22 = [(AIAudiogramFrequencyInputCell *)v4 createImageViewWithImage:v81 symbolType:4];
    [(AIAudiogramFrequencyInputCell *)v4 setRightEarSymbolImageView:v22];

    v23 = [MEMORY[0x277D75348] systemPinkColor];
    v24 = [(AIAudiogramFrequencyInputCell *)v4 rightEarSymbolImageView];
    [v24 setTintColor:v23];

    v25 = labelForSymbolType(4);
    v26 = [(AIAudiogramFrequencyInputCell *)v4 rightEarSymbolImageView];
    [v26 setAccessibilityLabel:v25];

    v27 = objc_alloc(MEMORY[0x277D75A68]);
    v28 = [(AIAudiogramFrequencyInputCell *)v4 leftEarSymbolImageView];
    v87[0] = v28;
    v29 = [(AIAudiogramFrequencyInputCell *)v4 leftEarSensitivity];
    v87[1] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v31 = [v27 initWithArrangedSubviews:v30];
    [(AIAudiogramFrequencyInputCell *)v4 setLeftEarStackView:v31];

    v32 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [v32 setAxis:0];

    v33 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [v33 setDistribution:0];

    v34 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [v34 setSpacing:7.0];

    v35 = objc_alloc(MEMORY[0x277D75A68]);
    v36 = [(AIAudiogramFrequencyInputCell *)v4 rightEarSymbolImageView];
    v86[0] = v36;
    v37 = [(AIAudiogramFrequencyInputCell *)v4 rightEarSensitivity];
    v86[1] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
    v39 = [v35 initWithArrangedSubviews:v38];
    [(AIAudiogramFrequencyInputCell *)v4 setRightEarStackView:v39];

    v40 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    [v40 setAxis:0];

    v41 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    [v41 setDistribution:0];

    v42 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    [v42 setSpacing:7.0];

    v43 = objc_alloc(MEMORY[0x277D75A68]);
    v44 = [(AIAudiogramFrequencyInputCell *)v4 frequencyLabel];
    v85[0] = v44;
    v45 = objc_alloc_init(MEMORY[0x277D75D18]);
    v85[1] = v45;
    v46 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    v85[2] = v46;
    v47 = [(AIAudiogramFrequencyInputCell *)v4 rightEarStackView];
    v85[3] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:4];
    v49 = [v43 initWithArrangedSubviews:v48];
    [(AIAudiogramFrequencyInputCell *)v4 setContainerStackView:v49];

    v50 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [v50 setAxis:0];

    v51 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [v51 setDistribution:0];

    v52 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [v52 setSpacing:8.0];

    v53 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    v54 = [(AIAudiogramFrequencyInputCell *)v4 leftEarStackView];
    [v53 setCustomSpacing:v54 afterView:20.0];

    v55 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];

    v56 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    v57 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    [v56 addSubview:v57];

    v72 = MEMORY[0x277CCAAD0];
    v80 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    v78 = [v80 leadingAnchor];
    v79 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    v77 = [v79 leadingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77 constant:16.0];
    v84[0] = v76;
    v75 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    v73 = [v75 trailingAnchor];
    v74 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    v71 = [v74 trailingAnchor];
    v70 = [v73 constraintEqualToAnchor:v71 constant:-7.0];
    v84[1] = v70;
    v69 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    v68 = [v69 topAnchor];
    v58 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    v59 = [v58 topAnchor];
    v60 = [v68 constraintEqualToAnchor:v59 constant:12.0];
    v84[2] = v60;
    v61 = [(AIAudiogramFrequencyInputCell *)v4 containerStackView];
    v62 = [v61 bottomAnchor];
    v63 = [(AIAudiogramFrequencyInputCell *)v4 contentView];
    v64 = [v63 bottomAnchor];
    v65 = [v62 constraintEqualToAnchor:v64 constant:-12.0];
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
  v3 = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  v4 = [v3 text];
  [(AIAudiogramFrequencyInputCell *)self frame];
  v6 = v5;
  v8 = v7;
  v49 = *MEMORY[0x277D740A8];
  v9 = v49;
  v10 = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  v11 = [v10 font];
  v50[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  [v4 boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v51);

  v14 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  v15 = [v14 text];
  [(AIAudiogramFrequencyInputCell *)self frame];
  v17 = v16;
  v19 = v18;
  v47 = v9;
  v20 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  v21 = [v20 font];
  v48 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [v15 boundingRectWithSize:32 options:v22 attributes:0 context:{v17, v19}];
  v23 = CGRectGetWidth(v52);

  v24 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  v25 = [v24 text];
  [(AIAudiogramFrequencyInputCell *)self frame];
  v27 = v26;
  v29 = v28;
  v45 = v9;
  v30 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  v31 = [v30 font];
  v46 = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  [v25 boundingRectWithSize:32 options:v32 attributes:0 context:{v27, v29}];
  *&v27 = CGRectGetWidth(v53);

  v33 = ((Width + v23) + *&v27);
  [(AIAudiogramFrequencyInputCell *)self frame];
  v34 = CGRectGetWidth(v54) * 0.6;
  v35 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  v36 = v35;
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

  [v35 setAxis:v38];

  v41 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  [v41 setAlignment:v38];

  v42 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  [v42 setSpacing:v39];

  v43 = [(AIAudiogramFrequencyInputCell *)self containerStackView];
  v44 = [(AIAudiogramFrequencyInputCell *)self leftEarStackView];
  [v43 setCustomSpacing:v44 afterView:v40];
}

- (id)createLabelWithText:(id)a3 textColor:(id)a4 font:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setText:v9];

  [v10 setTextColor:v8];
  [v10 setFont:v7];

  LODWORD(v11) = 1144750080;
  [v10 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1144750080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v12];

  return v10;
}

- (id)createImageViewWithImage:(id)a3 symbolType:(int64_t)a4
{
  v6 = MEMORY[0x277D755E8];
  v7 = a3;
  v8 = [[v6 alloc] initWithImage:v7];
  [v8 setContentMode:1];
  v9 = [(AIAudiogramFrequencyInputCell *)self _symbolConfigurationForSymbolType:a4];
  [v8 setPreferredSymbolConfiguration:v9];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v8 widthAnchor];
  v11 = [v8 heightAnchor];
  [v7 size];
  v13 = v12;
  [v7 size];
  v15 = v14;

  v16 = [v10 constraintEqualToAnchor:v11 multiplier:v13 / v15];

  LODWORD(v17) = 1144750080;
  [v16 setPriority:v17];
  [v16 setActive:1];
  LODWORD(v18) = 1132068864;
  [v8 setContentCompressionResistancePriority:0 forAxis:v18];

  return v8;
}

- (id)_symbolConfigurationForSymbolType:(int64_t)a3
{
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0] scale:1];
  if (a3 == 11)
  {
    v5 = [MEMORY[0x277D755D0] configurationWithWeight:9];
    v6 = [v4 configurationByApplyingConfiguration:v5];

    v4 = v6;
  }

  return v4;
}

- (void)setFrequency:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_frequency, a3);
  v16 = v5;
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
  v15 = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  [v15 setText:v14];
}

- (void)setLeftHearingLevel:(id)a3
{
  v10 = a3;
  v4 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
  v5 = MEMORY[0x277CCACA8];
  v6 = aiLocString(@"AudiogramIngestionResultsFrequency");
  v7 = v10;
  if (!v10)
  {
    v7 = aiLocString(@"AudiogramIngestionResultsNoData");
  }

  v8 = [v5 stringWithFormat:v6, v7, v4];
  v9 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  [v9 setText:v8];

  if (!v10)
  {
  }
}

- (void)setRightHearingLevel:(id)a3
{
  v10 = a3;
  v4 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
  v5 = MEMORY[0x277CCACA8];
  v6 = aiLocString(@"AudiogramIngestionResultsFrequency");
  v7 = v10;
  if (!v10)
  {
    v7 = aiLocString(@"AudiogramIngestionResultsNoData");
  }

  v8 = [v5 stringWithFormat:v6, v7, v4];
  v9 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  [v9 setText:v8];

  if (!v10)
  {
  }
}

- (void)setLeftEarMasked:(BOOL)a3
{
  if (a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 11;
  }

  v12 = filledImageForSymbolType(v4);
  v5 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  [v5 setImage:v12];

  v6 = [MEMORY[0x277D75348] systemBlueColor];
  v7 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  [v7 setTintColor:v6];

  v8 = labelForSymbolType(v4);
  v9 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  [v9 setAccessibilityLabel:v8];

  v10 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
  v11 = [(AIAudiogramFrequencyInputCell *)self _symbolConfigurationForSymbolType:v4];
  [v10 setPreferredSymbolConfiguration:v11];
}

- (void)setRightEarMasked:(BOOL)a3
{
  if (a3)
  {
    v4 = 9;
  }

  else
  {
    v4 = 4;
  }

  v12 = filledImageForSymbolType(v4);
  v5 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  [v5 setImage:v12];

  v6 = [MEMORY[0x277D75348] systemPinkColor];
  v7 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  [v7 setTintColor:v6];

  v8 = labelForSymbolType(v4);
  v9 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  [v9 setAccessibilityLabel:v8];

  v10 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
  v11 = [(AIAudiogramFrequencyInputCell *)self _symbolConfigurationForSymbolType:v4];
  [v10 setPreferredSymbolConfiguration:v11];
}

- (void)_setWidth:(id)a3 forEar:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 == 1)
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
  v8 = [v7 constraints];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v8);
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
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    [v6 floatValue];
    [v14 setConstant:v15];
  }

  else
  {
LABEL_14:

LABEL_17:
    v16 = [v7 widthAnchor];
    [v6 floatValue];
    v14 = [v16 constraintEqualToConstant:v17];

    [v14 setActive:1];
  }
}

- (id)accessibilityLabel
{
  v2 = [(AIAudiogramFrequencyInputCell *)self frequencyLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = objc_opt_new();
  v4 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
  v5 = [v4 text];
  v6 = aiLocString(@"AudiogramIngestionResultsNoData");
  v7 = [v5 containsString:v6];

  if (v7)
  {
    v8 = aiLocString(@"AudiogramIngestionNoLeftSymbol");
    [v3 appendString:v8];
  }

  else
  {
    v8 = aiLocString(@"AudiogramIngestionSymbolAtLevelFormat");
    v9 = [(AIAudiogramFrequencyInputCell *)self leftEarSymbolImageView];
    v10 = [v9 accessibilityLabel];
    v11 = [(AIAudiogramFrequencyInputCell *)self leftEarSensitivity];
    v12 = [v11 accessibilityLabel];
    v13 = AXCFormattedString();
    [v3 appendString:{v13, v10, v12}];
  }

  [v3 appendString:{@", "}];
  v14 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
  v15 = [v14 text];
  v16 = aiLocString(@"AudiogramIngestionResultsNoData");
  v17 = [v15 containsString:v16];

  if (v17)
  {
    v18 = aiLocString(@"AudiogramIngestionNoRightSymbol");
    [v3 appendString:v18];
  }

  else
  {
    v18 = aiLocString(@"AudiogramIngestionSymbolAtLevelFormat");
    v19 = [(AIAudiogramFrequencyInputCell *)self rightEarSymbolImageView];
    v20 = [v19 accessibilityLabel];
    v21 = [(AIAudiogramFrequencyInputCell *)self rightEarSensitivity];
    v22 = [v21 accessibilityLabel];
    v23 = AXCFormattedString();
    [v3 appendString:{v23, v20, v22}];
  }

  return v3;
}

@end