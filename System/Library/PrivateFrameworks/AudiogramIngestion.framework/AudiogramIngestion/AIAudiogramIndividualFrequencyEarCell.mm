@interface AIAudiogramIndividualFrequencyEarCell
- (AIAudiogramIndividualFrequencyEarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AIAudiogramIndividualFrequencyEarCellDelegate)delegate;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_configureForNoneSelected:(BOOL)selected;
- (void)_didSelectNoSymbol;
- (void)_didSelectSymbol:(id)symbol;
- (void)_minusButtonTapped:(id)tapped;
- (void)_plusButtonTapped:(id)tapped;
- (void)_textFieldEditingChanged:(id)changed;
- (void)configureLayout;
- (void)setHearingLevel:(id)level;
- (void)setKeyboardToolbar:(id)toolbar;
- (void)showActive:(BOOL)active;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateLeftEarSymbol:(BOOL)symbol;
- (void)updateRightEarSymbol:(BOOL)symbol;
- (void)updateSymbols:(id)symbols ear:(int64_t)ear masked:(BOOL)masked;
@end

@implementation AIAudiogramIndividualFrequencyEarCell

- (AIAudiogramIndividualFrequencyEarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v195[4] = *MEMORY[0x277D85DE8];
  v187.receiver = self;
  v187.super_class = AIAudiogramIndividualFrequencyEarCell;
  identifierCopy = identifier;
  v5 = [(AIAudiogramIndividualFrequencyEarCell *)&v187 initWithStyle:style reuseIdentifier:?];
  v6 = v5;
  if (v5)
  {
    v154 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramIndividualFrequencyEarCell semanticContentAttribute](v5, "semanticContentAttribute")}];
    v7 = [MEMORY[0x277D75220] buttonWithType:0];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSymbolSelectorButton:v7];

    borderedButtonConfiguration = [MEMORY[0x277D75230] borderedButtonConfiguration];
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    [borderedButtonConfiguration setBaseBackgroundColor:systemGray6Color];

    [borderedButtonConfiguration setCornerStyle:4];
    symbolSelectorButton = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    [symbolSelectorButton setConfiguration:borderedButtonConfiguration];

    symbolSelectorButton2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    [symbolSelectorButton2 setShowsMenuAsPrimaryAction:1];

    objc_initWeak(&location, v6);
    symbolSelectorButton3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 3221225472;
    v184[2] = __71__AIAudiogramIndividualFrequencyEarCell_initWithStyle_reuseIdentifier___block_invoke;
    v184[3] = &unk_278CECCC8;
    objc_copyWeak(&v185, &location);
    [symbolSelectorButton3 setAccessibilityLabelBlock:v184];

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSymbolImageView:v12];

    symbolImageView = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    [symbolImageView setContentMode:1];

    v14 = [MEMORY[0x277D755D0] configurationWithWeight:9];
    v15 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938]];
    v156 = [v14 configurationByApplyingConfiguration:v15];

    symbolImageView2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    [symbolImageView2 setPreferredSymbolConfiguration:v156];

    symbolImageView3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    LODWORD(v18) = 1144750080;
    [symbolImageView3 setContentHuggingPriority:0 forAxis:v18];

    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSymbolLabel:v19];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    symbolLabel = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [symbolLabel setTextColor:secondaryLabelColor];

    v22 = *MEMORY[0x277D769D0];
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    symbolLabel2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [symbolLabel2 setFont:v23];

    symbolLabel3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [symbolLabel3 setNumberOfLines:0];

    v26 = objc_alloc(MEMORY[0x277D755E8]);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.up.chevron.down"];
    v178 = [v26 initWithImage:v27];

    v28 = [MEMORY[0x277D755D0] configurationWithTextStyle:v22];
    [v178 setPreferredSymbolConfiguration:v28];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v178 setTintColor:secondaryLabelColor2];

    v30 = objc_alloc(MEMORY[0x277D75A68]);
    symbolImageView4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    v195[0] = symbolImageView4;
    symbolLabel4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    v195[1] = symbolLabel4;
    v33 = objc_opt_new();
    v195[2] = v33;
    v195[3] = v178;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:4];
    v35 = [v30 initWithArrangedSubviews:v34];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setButtonStackView:v35];

    buttonStackView = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [buttonStackView setAxis:0];

    buttonStackView2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [buttonStackView2 setDistribution:0];

    buttonStackView3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [buttonStackView3 setAlignment:3];

    buttonStackView4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [buttonStackView4 setSpacing:5.0];

    buttonStackView5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    symbolLabel5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [buttonStackView5 setCustomSpacing:symbolLabel5 afterView:10.0];

    buttonStackView6 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [buttonStackView6 setTranslatesAutoresizingMaskIntoConstraints:0];

    symbolSelectorButton4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    buttonStackView7 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [symbolSelectorButton4 addSubview:buttonStackView7];

    v152 = MEMORY[0x277CCAAD0];
    buttonStackView8 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    leadingAnchor = [buttonStackView8 leadingAnchor];
    symbolSelectorButton5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    leadingAnchor2 = [symbolSelectorButton5 leadingAnchor];
    v171 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v194[0] = v171;
    buttonStackView9 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    trailingAnchor = [buttonStackView9 trailingAnchor];
    symbolSelectorButton6 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    trailingAnchor2 = [symbolSelectorButton6 trailingAnchor];
    v161 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v194[1] = v161;
    buttonStackView10 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    topAnchor = [buttonStackView10 topAnchor];
    symbolSelectorButton7 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    topAnchor2 = [symbolSelectorButton7 topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v194[2] = v47;
    buttonStackView11 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    bottomAnchor = [buttonStackView11 bottomAnchor];
    symbolSelectorButton8 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    bottomAnchor2 = [symbolSelectorButton8 bottomAnchor];
    v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    v194[3] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:4];
    [v152 activateConstraints:v53];

    v54 = objc_opt_new();
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setValueUnitLabel:v54];

    if (v154 == 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = 2;
    }

    valueUnitLabel = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [valueUnitLabel setTextAlignment:v55];

    labelColor = [MEMORY[0x277D75348] labelColor];
    valueUnitLabel2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [valueUnitLabel2 setTextColor:labelColor];

    v59 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    valueUnitLabel3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [valueUnitLabel3 setText:v59];

    v61 = *MEMORY[0x277D76918];
    v62 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    valueUnitLabel4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [valueUnitLabel4 setFont:v62];

    valueUnitLabel5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    LODWORD(v65) = 1144750080;
    [valueUnitLabel5 setContentHuggingPriority:0 forAxis:v65];

    valueUnitLabel6 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    v67 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v6 action:sel_didTapUnitLabel];
    [valueUnitLabel6 addGestureRecognizer:v67];

    valueUnitLabel7 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [valueUnitLabel7 setUserInteractionEnabled:1];

    valueUnitLabel8 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [valueUnitLabel8 setIsAccessibilityElement:0];

    v70 = objc_opt_new();
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setValueTextField:v70];

    valueTextField = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField setTextAlignment:v55];

    labelColor2 = [MEMORY[0x277D75348] labelColor];
    valueTextField2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField2 setTextColor:labelColor2];

    v74 = [MEMORY[0x277D74300] preferredFontForTextStyle:v61];
    valueTextField3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField3 setFont:v74];

    valueTextField4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField4 setKeyboardType:4];

    valueTextField5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField5 setReturnKeyType:9];

    v78 = objc_alloc(MEMORY[0x277CCA898]);
    v79 = aiLocString(@"AudiogramIngestionResultsNoData");
    v192 = *MEMORY[0x277D740C0];
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    v193 = systemGray3Color;
    v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
    v82 = [v78 initWithString:v79 attributes:v81];
    valueTextField6 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField6 setAttributedPlaceholder:v82];

    valueTextField7 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    LODWORD(v85) = 1144750080;
    [valueTextField7 setContentCompressionResistancePriority:0 forAxis:v85];

    valueTextField8 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField8 addTarget:v6 action:sel__textFieldEditingChanged_ forControlEvents:0x20000];

    valueTextField9 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [valueTextField9 setDelegate:v6];

    v181 = [MEMORY[0x277D75220] buttonWithType:0];
    LODWORD(v88) = 1144750080;
    [v181 setContentHuggingPriority:0 forAxis:v88];
    LODWORD(v89) = 1144750080;
    [v181 setContentHuggingPriority:1 forAxis:v89];
    [v181 addTarget:v6 action:sel__plusButtonTapped_ forControlEvents:64];
    v90 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle.fill"];
    [v181 setImage:v90 forState:0];

    v91 = aiLocString(@"AudiogramIngestionButtonPlus");
    [v181 setAccessibilityLabel:v91];

    [(AIAudiogramIndividualFrequencyEarCell *)v6 setPlusButton:v181];
    v183 = [MEMORY[0x277D75220] buttonWithType:0];
    LODWORD(v92) = 1144750080;
    [v183 setContentHuggingPriority:0 forAxis:v92];
    LODWORD(v93) = 1144750080;
    [v183 setContentHuggingPriority:1 forAxis:v93];
    [v183 addTarget:v6 action:sel__minusButtonTapped_ forControlEvents:64];
    v94 = [MEMORY[0x277D755B8] systemImageNamed:@"minus.circle.fill"];
    [v183 setImage:v94 forState:0];

    v95 = aiLocString(@"AudiogramIngestionButtonMinus");
    [v183 setAccessibilityLabel:v95];

    [(AIAudiogramIndividualFrequencyEarCell *)v6 setMinusButton:v183];
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    v96 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v191[0] = systemBlueColor;
    systemGray6Color2 = [MEMORY[0x277D75348] systemGray6Color];
    v191[1] = systemGray6Color2;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:2];
    v100 = [v96 configurationWithPaletteColors:v99];
    v101 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
    v174 = [v100 configurationByApplyingConfiguration:v101];

    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v174];
    plusButton = [(AIAudiogramIndividualFrequencyEarCell *)v6 plusButton];
    [plusButton setConfiguration:plainButtonConfiguration];

    minusButton = [(AIAudiogramIndividualFrequencyEarCell *)v6 minusButton];
    [minusButton setConfiguration:plainButtonConfiguration];

    v104 = objc_alloc(MEMORY[0x277D75A68]);
    v105 = objc_opt_new();
    v190[0] = v105;
    valueTextField10 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    v190[1] = valueTextField10;
    valueUnitLabel9 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    v190[2] = valueUnitLabel9;
    v190[3] = v183;
    v190[4] = v181;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:5];
    v109 = [v104 initWithArrangedSubviews:v108];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setLabelStepperStackView:v109];

    labelStepperStackView = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    [labelStepperStackView setAxis:0];

    labelStepperStackView2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    [labelStepperStackView2 setSpacing:0.0];

    labelStepperStackView3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    valueTextField11 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [labelStepperStackView3 setCustomSpacing:valueTextField11 afterView:4.0];

    labelStepperStackView4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    valueUnitLabel10 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [labelStepperStackView4 setCustomSpacing:valueUnitLabel10 afterView:12.0];

    labelStepperStackView5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    [labelStepperStackView5 setCustomSpacing:v183 afterView:-2.0];

    v117 = objc_alloc(MEMORY[0x277D75A68]);
    symbolSelectorButton9 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v189[0] = symbolSelectorButton9;
    labelStepperStackView6 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    v189[1] = labelStepperStackView6;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
    v121 = [v117 initWithArrangedSubviews:v120];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setContainerStackView:v121];

    containerStackView = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [containerStackView setSpacing:16.0];

    containerStackView2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [containerStackView2 setAxis:0];

    containerStackView3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [containerStackView3 setAlignment:3];

    containerStackView4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [containerStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    containerStackView5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [contentView addSubview:containerStackView5];

    containerStackView6 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    topAnchor3 = [containerStackView6 topAnchor];
    contentView2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    topAnchor4 = [contentView2 topAnchor];
    v132 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:4.0];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setTopConstraint:v132];

    v143 = MEMORY[0x277CCAAD0];
    containerStackView7 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    leadingAnchor3 = [containerStackView7 leadingAnchor];
    contentView3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    leadingAnchor4 = [contentView3 leadingAnchor];
    v164 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
    v188[0] = v164;
    containerStackView8 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    trailingAnchor3 = [containerStackView8 trailingAnchor];
    contentView4 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    trailingAnchor4 = [contentView4 trailingAnchor];
    v153 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
    v188[1] = v153;
    topConstraint = [(AIAudiogramIndividualFrequencyEarCell *)v6 topConstraint];
    v188[2] = topConstraint;
    containerStackView9 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    bottomAnchor3 = [containerStackView9 bottomAnchor];
    contentView5 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    bottomAnchor4 = [contentView5 bottomAnchor];
    v146 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-4.0];
    v188[3] = v146;
    plusButton2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 plusButton];
    widthAnchor = [plusButton2 widthAnchor];
    plusButton3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 plusButton];
    heightAnchor = [plusButton3 heightAnchor];
    v135 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v188[4] = v135;
    minusButton2 = [(AIAudiogramIndividualFrequencyEarCell *)v6 minusButton];
    widthAnchor2 = [minusButton2 widthAnchor];
    minusButton3 = [(AIAudiogramIndividualFrequencyEarCell *)v6 minusButton];
    heightAnchor2 = [minusButton3 heightAnchor];
    v140 = [widthAnchor2 constraintEqualToAnchor:heightAnchor2];
    v188[5] = v140;
    v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:6];
    [v143 activateConstraints:v141];

    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSelectionStyle:0];
    objc_destroyWeak(&v185);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __71__AIAudiogramIndividualFrequencyEarCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained symbolLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)_plusButtonTapped:(id)tapped
{
  delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [delegate plusButtonTapped:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

- (void)_minusButtonTapped:(id)tapped
{
  delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [delegate minusButtonTapped:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

- (void)setHearingLevel:(id)level
{
  levelCopy = level;
  v11 = levelCopy;
  if (!levelCopy || (v5 = [(AIAudiogramIndividualFrequencyEarCell *)self noneSelected], levelCopy = v11, v5))
  {
    v6 = levelCopy == 0;
    [(AIAudiogramIndividualFrequencyEarCell *)self setNoneSelected:v6];
    [(AIAudiogramIndividualFrequencyEarCell *)self _configureForNoneSelected:v6];
    levelCopy = v11;
  }

  v7 = validateHearingLevel(levelCopy);
  hearingLevel = self->_hearingLevel;
  self->_hearingLevel = v7;

  stringValue = [(NSNumber *)self->_hearingLevel stringValue];
  valueTextField = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  [valueTextField setText:stringValue];
}

- (void)updateLeftEarSymbol:(BOOL)symbol
{
  if (symbol)
  {
    v4 = 8;
  }

  else
  {
    v4 = 11;
  }

  if (symbol)
  {
    v5 = 4;
  }

  else
  {
    v5 = 9;
  }

  v19 = filledImageForSymbolType(v4);
  v6 = labelForSymbolType(v4);
  v7 = [MEMORY[0x277D755D0] configurationWithWeight:v5];
  v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938]];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  symbolImageView = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [symbolImageView setPreferredSymbolConfiguration:v9];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  symbolImageView2 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [symbolImageView2 setTintColor:systemBlueColor];

  buttonStackView = [(AIAudiogramIndividualFrequencyEarCell *)self buttonStackView];
  if ([(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 5.0;
  }

  symbolImageView3 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [buttonStackView setCustomSpacing:symbolImageView3 afterView:v14];

  if (![(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    symbolImageView4 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
    [symbolImageView4 setImage:v19];

    symbolLabel = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v18 = aiLocString(v6);
    [symbolLabel setText:v18];

    [(AIAudiogramIndividualFrequencyEarCell *)self setCurrentlySelectedSymbolForLeftEar:v4];
  }
}

- (void)updateRightEarSymbol:(BOOL)symbol
{
  if (symbol)
  {
    v4 = 9;
  }

  else
  {
    v4 = 4;
  }

  v18 = filledImageForSymbolType(v4);
  v5 = labelForSymbolType(v4);
  v6 = [MEMORY[0x277D755D0] configurationWithWeight:4];
  v7 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938]];
  v8 = [v6 configurationByApplyingConfiguration:v7];

  symbolImageView = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [symbolImageView setPreferredSymbolConfiguration:v8];

  systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
  symbolImageView2 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [symbolImageView2 setTintColor:systemPinkColor];

  buttonStackView = [(AIAudiogramIndividualFrequencyEarCell *)self buttonStackView];
  if ([(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 5.0;
  }

  symbolImageView3 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [buttonStackView setCustomSpacing:symbolImageView3 afterView:v13];

  if (![(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    symbolImageView4 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
    [symbolImageView4 setImage:v18];

    symbolLabel = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v17 = aiLocString(v5);
    [symbolLabel setText:v17];

    [(AIAudiogramIndividualFrequencyEarCell *)self setCurrentlySelectedSymbolForRightEar:v4];
  }
}

- (void)updateSymbols:(id)symbols ear:(int64_t)ear masked:(BOOL)masked
{
  maskedCopy = masked;
  symbolsCopy = symbols;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (ear == 1)
  {
    if ([symbolsCopy containsObject:&unk_285365740] && objc_msgSend(symbolsCopy, "containsObject:", &unk_285365758))
    {
      v11 = labelForSymbolType(11);
      [array addObject:v11];

      [array2 addObject:&unk_285365758];
      v12 = labelForSymbolType(8);
      [array addObject:v12];

      [array2 addObject:&unk_285365740];
      selfCopy3 = self;
      v14 = maskedCopy;
LABEL_14:
      [(AIAudiogramIndividualFrequencyEarCell *)selfCopy3 updateLeftEarSymbol:v14];
      goto LABEL_18;
    }

    if ([symbolsCopy containsObject:&unk_285365740])
    {
      v17 = labelForSymbolType(8);
      [array addObject:v17];

      [array2 addObject:&unk_285365740];
      selfCopy3 = self;
      v14 = 1;
      goto LABEL_14;
    }

    if ([symbolsCopy containsObject:&unk_285365758])
    {
      v21 = labelForSymbolType(11);
      [array addObject:v21];

      [array2 addObject:&unk_285365758];
      selfCopy3 = self;
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (![symbolsCopy containsObject:&unk_285365770] || !objc_msgSend(symbolsCopy, "containsObject:", &unk_285365788))
    {
      if ([symbolsCopy containsObject:&unk_285365770])
      {
        v18 = labelForSymbolType(9);
        [array addObject:v18];

        [array2 addObject:&unk_285365770];
        selfCopy5 = self;
        v20 = 1;
      }

      else
      {
        if (![symbolsCopy containsObject:&unk_285365788])
        {
          goto LABEL_18;
        }

        v22 = labelForSymbolType(4);
        [array addObject:v22];

        [array2 addObject:&unk_285365788];
        selfCopy5 = self;
        v20 = 0;
      }

      [(AIAudiogramIndividualFrequencyEarCell *)selfCopy5 updateRightEarSymbol:v20];
      goto LABEL_18;
    }

    [(AIAudiogramIndividualFrequencyEarCell *)self updateRightEarSymbol:maskedCopy];
    v15 = labelForSymbolType(4);
    [array addObject:v15];

    [array2 addObject:&unk_285365788];
    v16 = labelForSymbolType(9);
    [array addObject:v16];

    [array2 addObject:&unk_285365770];
  }

LABEL_18:
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5;
  v39 = __Block_byref_object_dispose__5;
  array3 = [MEMORY[0x277CBEB18] array];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__AIAudiogramIndividualFrequencyEarCell_updateSymbols_ear_masked___block_invoke;
  v30[3] = &unk_278CECD18;
  v23 = array2;
  v31 = v23;
  selfCopy6 = self;
  v33 = &v35;
  earCopy = ear;
  [array enumerateObjectsUsingBlock:v30];
  v24 = MEMORY[0x277D750C8];
  v25 = aiLocString(@"AudiogramIngestionSymbolNone");
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__AIAudiogramIndividualFrequencyEarCell_updateSymbols_ear_masked___block_invoke_3;
  v29[3] = &unk_278CECD40;
  v29[4] = self;
  v26 = [v24 actionWithTitle:v25 image:0 identifier:0 handler:v29];

  [v36[5] addObject:v26];
  [v26 setState:{-[AIAudiogramIndividualFrequencyEarCell noneSelected](self, "noneSelected")}];
  v27 = [MEMORY[0x277D75710] menuWithChildren:v36[5]];
  symbolSelectorButton = [(AIAudiogramIndividualFrequencyEarCell *)self symbolSelectorButton];
  [symbolSelectorButton setMenu:v27];

  _Block_object_dispose(&v35, 8);
}

void __66__AIAudiogramIndividualFrequencyEarCell_updateSymbols_ear_masked___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  v8 = [v7 integerValue];

  v9 = unfilledImageForSymbolType(v8);
  v10 = [MEMORY[0x277D75348] systemGrayColor];
  v11 = [v9 imageWithTintColor:v10 renderingMode:1];

  v12 = MEMORY[0x277D750C8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__AIAudiogramIndividualFrequencyEarCell_updateSymbols_ear_masked___block_invoke_2;
  v20[3] = &unk_278CECCF0;
  v19 = *(a1 + 32);
  v13 = v19.i64[0];
  v21 = vextq_s8(v19, v19, 8uLL);
  v22 = a3;
  v14 = [v12 actionWithTitle:v6 image:v11 identifier:0 handler:v20];

  v15 = [*(a1 + 40) noneSelected];
  v16 = 0;
  if ((v15 & 1) == 0)
  {
    v17 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      v18 = [v17 currentlySelectedSymbolForLeftEar];
    }

    else
    {
      v18 = [v17 currentlySelectedSymbolForRightEar];
    }

    v16 = v18 == v8;
  }

  [v14 setState:{v16, *&v19}];
  [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
}

void __66__AIAudiogramIndividualFrequencyEarCell_updateSymbols_ear_masked___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
  [v1 _didSelectSymbol:v2];
}

- (void)_didSelectSymbol:(id)symbol
{
  symbolCopy = symbol;
  noneSelected = [(AIAudiogramIndividualFrequencyEarCell *)self noneSelected];
  [(AIAudiogramIndividualFrequencyEarCell *)self setNoneSelected:0];
  if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]== 1)
  {
    if ([symbolCopy isEqualToNumber:&unk_285365758])
    {
      [(AIAudiogramIndividualFrequencyEarCell *)self updateLeftEarSymbol:0];
      goto LABEL_7;
    }

    if ([symbolCopy isEqualToNumber:&unk_285365740])
    {
      if (noneSelected | ![(AIAudiogramIndividualFrequencyEarCell *)self masked])
      {
        [(AIAudiogramIndividualFrequencyEarCell *)self setMasked:1];
        delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
        [delegate symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{1, 0}];
      }

      [(AIAudiogramIndividualFrequencyEarCell *)self updateLeftEarSymbol:1];
    }
  }

  else
  {
    if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]!= 2)
    {
      goto LABEL_17;
    }

    if ([symbolCopy isEqualToNumber:&unk_285365788])
    {
      [(AIAudiogramIndividualFrequencyEarCell *)self updateRightEarSymbol:0];
LABEL_7:
      if ([(AIAudiogramIndividualFrequencyEarCell *)self masked]|| noneSelected)
      {
        [(AIAudiogramIndividualFrequencyEarCell *)self setMasked:0];
        delegate2 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
        [delegate2 symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{0, 0}];
      }

      goto LABEL_17;
    }

    if ([symbolCopy isEqualToNumber:&unk_285365770])
    {
      if (noneSelected | ![(AIAudiogramIndividualFrequencyEarCell *)self masked])
      {
        [(AIAudiogramIndividualFrequencyEarCell *)self setMasked:1];
        delegate3 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
        [delegate3 symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{1, 0}];
      }

      [(AIAudiogramIndividualFrequencyEarCell *)self updateRightEarSymbol:1];
    }
  }

LABEL_17:
  if (noneSelected)
  {
    [(AIAudiogramIndividualFrequencyEarCell *)self _configureForNoneSelected:0];
    hearingLevel = [(AIAudiogramIndividualFrequencyEarCell *)self hearingLevel];
    v9 = hearingLevel;
    if (hearingLevel)
    {
      v10 = hearingLevel;
    }

    else
    {
      v10 = &unk_2853657A0;
    }

    [(AIAudiogramIndividualFrequencyEarCell *)self setHearingLevel:v10];
  }
}

- (void)_didSelectNoSymbol
{
  [(AIAudiogramIndividualFrequencyEarCell *)self setNoneSelected:1];
  [(AIAudiogramIndividualFrequencyEarCell *)self _configureForNoneSelected:1];
  delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [delegate symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{-[AIAudiogramIndividualFrequencyEarCell masked](self, "masked"), 1}];
}

- (void)_configureForNoneSelected:(BOOL)selected
{
  selectedCopy = selected;
  labelColor = [MEMORY[0x277D75348] labelColor];
  systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
  valueTextField = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  v7 = !selectedCopy;
  [valueTextField setEnabled:!selectedCopy];

  valueUnitLabel = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  [valueUnitLabel setUserInteractionEnabled:!selectedCopy];

  plusButton = [(AIAudiogramIndividualFrequencyEarCell *)self plusButton];
  [plusButton setEnabled:!selectedCopy];

  minusButton = [(AIAudiogramIndividualFrequencyEarCell *)self minusButton];
  [minusButton setEnabled:!selectedCopy];

  if (selectedCopy)
  {
    v11 = systemGray3Color;
  }

  else
  {
    v11 = labelColor;
  }

  valueTextField2 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  [valueTextField2 setTextColor:v11];

  valueUnitLabel2 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  [valueUnitLabel2 setTextColor:v11];

  if (!v7)
  {
    symbolImageView = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
    [symbolImageView setImage:0];

    symbolLabel = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v16 = aiLocString(@"AudiogramIngestionSymbolNone");
    [symbolLabel setText:v16];

    valueTextField3 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
    [valueTextField3 setText:0];
  }
}

- (void)showActive:(BOOL)active
{
  activeCopy = active;
  v10 = *MEMORY[0x277D85DE8];
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v7 = activeCopy;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Ear cell will activate? %d %@", buf, 0x12u);
  }

  AXPerformBlockOnMainThread();
}

void __52__AIAudiogramIndividualFrequencyEarCell_showActive___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = AXLogAudiogram();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) valueTextField];
    v4 = [v3 isFirstResponder];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) valueTextField];
    v7 = [v6 canBecomeFirstResponder];
    v8 = [*(a1 + 32) valueTextField];
    v9 = [v8 canResignFirstResponder];
    v10 = *(a1 + 32);
    v16[0] = 67110146;
    v16[1] = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_24179B000, v2, OS_LOG_TYPE_INFO, "Ear cell is activating %d->%d %d? %d? %@", v16, 0x24u);
  }

  if (*(a1 + 40) == 1)
  {
    v11 = [*(a1 + 32) valueTextField];
    v12 = [v11 isFirstResponder];

    if (!v12)
    {
      v15 = [*(a1 + 32) valueTextField];
      [v15 becomeFirstResponder];
      goto LABEL_9;
    }

    if (*(a1 + 40))
    {
      return;
    }
  }

  v13 = [*(a1 + 32) valueTextField];
  v14 = [v13 isFirstResponder];

  if (!v14)
  {
    return;
  }

  v15 = [*(a1 + 32) valueTextField];
  [v15 resignFirstResponder];
LABEL_9:
}

- (void)setKeyboardToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  valueTextField = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  [valueTextField setInputAccessoryView:toolbarCopy];
}

- (void)_textFieldEditingChanged:(id)changed
{
  changedCopy = changed;
  v5 = objc_opt_new();
  text = [changedCopy text];

  v7 = [v5 numberFromString:text];
  hearingLevel = self->_hearingLevel;
  self->_hearingLevel = v7;

  delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  hearingLevel = [(AIAudiogramIndividualFrequencyEarCell *)self hearingLevel];
  [delegate earCellDidUpdateHearingLevel:hearingLevel forEar:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:{"ear"), -[AIAudiogramIndividualFrequencyEarCell masked](self, "masked")}];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v4 = editingCopy;
  AXPerformBlockOnMainThreadAfterDelay();
  delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [delegate earCellDidBeginEditingForEar:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

void __66__AIAudiogramIndividualFrequencyEarCell_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) endOfDocument];
  v2 = [*(a1 + 32) textRangeFromPosition:v3 toPosition:v3];
  [*(a1 + 32) setSelectedTextRange:v2];
}

- (void)textFieldDidEndEditing:(id)editing
{
  delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [delegate earCellDidEndEditingForEar:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v12 = [v11 hasPrefix:@"-"];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v15 = [v11 componentsSeparatedByCharactersInSet:invertedSet];
  v16 = [v15 componentsJoinedByString:&stru_28535F0B0];

  if (v12)
  {
    v17 = [@"-" stringByAppendingString:v16];

    v16 = v17;
  }

  v18 = objc_opt_new();
  v19 = [v18 numberFromString:v16];

  v20 = validateHearingLevel(v19);
  stringValue = [v20 stringValue];
  v22 = [v11 isEqualToString:stringValue];
  if ((v22 & 1) == 0)
  {
    if (v20)
    {
      [(AIAudiogramIndividualFrequencyEarCell *)self setHearingLevel:v20];
    }

    delegate = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
    [delegate earCellDidUpdateHearingLevel:v20 forEar:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:{"ear"), -[AIAudiogramIndividualFrequencyEarCell masked](self, "masked")}];
  }

  return v22;
}

- (void)configureLayout
{
  v52[1] = *MEMORY[0x277D85DE8];
  symbolLabel = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
  text = [symbolLabel text];
  [(AIAudiogramIndividualFrequencyEarCell *)self frame];
  v6 = v5;
  v8 = v7;
  v51 = *MEMORY[0x277D740A8];
  v9 = v51;
  symbolLabel2 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
  font = [symbolLabel2 font];
  v52[0] = font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  [text boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v53);

  valueUnitLabel = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  text2 = [valueUnitLabel text];
  [(AIAudiogramIndividualFrequencyEarCell *)self frame];
  v16 = v15;
  v18 = v17;
  v49 = v9;
  valueUnitLabel2 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  font2 = [valueUnitLabel2 font];
  v50 = font2;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [text2 boundingRectWithSize:32 options:v21 attributes:0 context:{v16, v18}];
  v22 = CGRectGetWidth(v54);
  valueTextField = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  text3 = [valueTextField text];
  [(AIAudiogramIndividualFrequencyEarCell *)self frame];
  v26 = v25;
  v28 = v27;
  v47 = v9;
  valueTextField2 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  font3 = [valueTextField2 font];
  v48 = font3;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [text3 boundingRectWithSize:32 options:v31 attributes:0 context:{v26, v28}];
  *&v22 = v22 + CGRectGetWidth(v55);

  v32 = (Width + *&v22);
  contentView = [(AIAudiogramIndividualFrequencyEarCell *)self contentView];
  [contentView frame];
  v35 = v34 * 0.4;

  containerStackView = [(AIAudiogramIndividualFrequencyEarCell *)self containerStackView];
  v37 = containerStackView;
  v38 = v35 < v32;
  v39 = v35 < v32;
  if (v35 >= v32)
  {
    v40 = 3;
  }

  else
  {
    v40 = 0;
  }

  if (v35 >= v32)
  {
    v41 = 16.0;
  }

  else
  {
    v41 = 8.0;
  }

  if (v38)
  {
    v42 = 8.0;
  }

  else
  {
    v42 = 4.0;
  }

  [containerStackView setAxis:v39];

  containerStackView2 = [(AIAudiogramIndividualFrequencyEarCell *)self containerStackView];
  [containerStackView2 setAlignment:v40];

  containerStackView3 = [(AIAudiogramIndividualFrequencyEarCell *)self containerStackView];
  [containerStackView3 setSpacing:v41];

  topConstraint = [(AIAudiogramIndividualFrequencyEarCell *)self topConstraint];
  [topConstraint setConstant:v42];
}

- (id)accessibilityLabel
{
  if (AXRequestingClient() == 3)
  {
    symbolLabel = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    accessibilityLabel = [symbolLabel accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AIAudiogramIndividualFrequencyEarCell;
    accessibilityLabel = [(AIAudiogramIndividualFrequencyEarCell *)&v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v10.receiver = self;
    v10.super_class = AIAudiogramIndividualFrequencyEarCell;
    accessibilityValue = [(AIAudiogramIndividualFrequencyEarCell *)&v10 accessibilityValue];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    valueTextField = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
    accessibilityValue2 = [valueTextField accessibilityValue];
    valueUnitLabel = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
    accessibilityLabel = [valueUnitLabel accessibilityLabel];
    accessibilityValue = [v4 localizedStringWithFormat:@"%@ %@", accessibilityValue2, accessibilityLabel];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]== 1)
  {
    v3 = @"AudiogramIngestionSymbolChangeHintLeft";
LABEL_5:
    accessibilityHint = aiLocString(v3);
    goto LABEL_7;
  }

  if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]== 2)
  {
    v3 = @"AudiogramIngestionSymbolChangeHintRight";
    goto LABEL_5;
  }

  v6.receiver = self;
  v6.super_class = AIAudiogramIndividualFrequencyEarCell;
  accessibilityHint = [(AIAudiogramIndividualFrequencyEarCell *)&v6 accessibilityHint];
LABEL_7:

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x277D76548];
  noneSelected = [(AIAudiogramIndividualFrequencyEarCell *)self noneSelected];
  v4 = *MEMORY[0x277D76538];
  if (noneSelected)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (CGPoint)accessibilityActivationPoint
{
  symbolSelectorButton = [(AIAudiogramIndividualFrequencyEarCell *)self symbolSelectorButton];
  [symbolSelectorButton accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (AIAudiogramIndividualFrequencyEarCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end