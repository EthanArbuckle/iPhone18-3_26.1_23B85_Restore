@interface AIAudiogramIndividualFrequencyEarCell
- (AIAudiogramIndividualFrequencyEarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AIAudiogramIndividualFrequencyEarCellDelegate)delegate;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_configureForNoneSelected:(BOOL)a3;
- (void)_didSelectNoSymbol;
- (void)_didSelectSymbol:(id)a3;
- (void)_minusButtonTapped:(id)a3;
- (void)_plusButtonTapped:(id)a3;
- (void)_textFieldEditingChanged:(id)a3;
- (void)configureLayout;
- (void)setHearingLevel:(id)a3;
- (void)setKeyboardToolbar:(id)a3;
- (void)showActive:(BOOL)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateLeftEarSymbol:(BOOL)a3;
- (void)updateRightEarSymbol:(BOOL)a3;
- (void)updateSymbols:(id)a3 ear:(int64_t)a4 masked:(BOOL)a5;
@end

@implementation AIAudiogramIndividualFrequencyEarCell

- (AIAudiogramIndividualFrequencyEarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v195[4] = *MEMORY[0x277D85DE8];
  v187.receiver = self;
  v187.super_class = AIAudiogramIndividualFrequencyEarCell;
  v175 = a4;
  v5 = [(AIAudiogramIndividualFrequencyEarCell *)&v187 initWithStyle:a3 reuseIdentifier:?];
  v6 = v5;
  if (v5)
  {
    v154 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramIndividualFrequencyEarCell semanticContentAttribute](v5, "semanticContentAttribute")}];
    v7 = [MEMORY[0x277D75220] buttonWithType:0];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSymbolSelectorButton:v7];

    v179 = [MEMORY[0x277D75230] borderedButtonConfiguration];
    v8 = [MEMORY[0x277D75348] systemGray6Color];
    [v179 setBaseBackgroundColor:v8];

    [v179 setCornerStyle:4];
    v9 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    [v9 setConfiguration:v179];

    v10 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    [v10 setShowsMenuAsPrimaryAction:1];

    objc_initWeak(&location, v6);
    v11 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 3221225472;
    v184[2] = __71__AIAudiogramIndividualFrequencyEarCell_initWithStyle_reuseIdentifier___block_invoke;
    v184[3] = &unk_278CECCC8;
    objc_copyWeak(&v185, &location);
    [v11 setAccessibilityLabelBlock:v184];

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSymbolImageView:v12];

    v13 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    [v13 setContentMode:1];

    v14 = [MEMORY[0x277D755D0] configurationWithWeight:9];
    v15 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76938]];
    v156 = [v14 configurationByApplyingConfiguration:v15];

    v16 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    [v16 setPreferredSymbolConfiguration:v156];

    v17 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    LODWORD(v18) = 1144750080;
    [v17 setContentHuggingPriority:0 forAxis:v18];

    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setSymbolLabel:v19];

    v20 = [MEMORY[0x277D75348] secondaryLabelColor];
    v21 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [v21 setTextColor:v20];

    v22 = *MEMORY[0x277D769D0];
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v24 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [v24 setFont:v23];

    v25 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [v25 setNumberOfLines:0];

    v26 = objc_alloc(MEMORY[0x277D755E8]);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.up.chevron.down"];
    v178 = [v26 initWithImage:v27];

    v28 = [MEMORY[0x277D755D0] configurationWithTextStyle:v22];
    [v178 setPreferredSymbolConfiguration:v28];

    v29 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v178 setTintColor:v29];

    v30 = objc_alloc(MEMORY[0x277D75A68]);
    v31 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolImageView];
    v195[0] = v31;
    v32 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    v195[1] = v32;
    v33 = objc_opt_new();
    v195[2] = v33;
    v195[3] = v178;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v195 count:4];
    v35 = [v30 initWithArrangedSubviews:v34];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setButtonStackView:v35];

    v36 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [v36 setAxis:0];

    v37 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [v37 setDistribution:0];

    v38 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [v38 setAlignment:3];

    v39 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [v39 setSpacing:5.0];

    v40 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    v41 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolLabel];
    [v40 setCustomSpacing:v41 afterView:10.0];

    v42 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

    v43 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v44 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    [v43 addSubview:v44];

    v152 = MEMORY[0x277CCAAD0];
    v182 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    v176 = [v182 leadingAnchor];
    v180 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v173 = [v180 leadingAnchor];
    v171 = [v176 constraintEqualToAnchor:v173 constant:12.0];
    v194[0] = v171;
    v169 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    v165 = [v169 trailingAnchor];
    v167 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v163 = [v167 trailingAnchor];
    v161 = [v165 constraintEqualToAnchor:v163 constant:-12.0];
    v194[1] = v161;
    v159 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    v157 = [v159 topAnchor];
    v45 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v46 = [v45 topAnchor];
    v47 = [v157 constraintEqualToAnchor:v46 constant:8.0];
    v194[2] = v47;
    v48 = [(AIAudiogramIndividualFrequencyEarCell *)v6 buttonStackView];
    v49 = [v48 bottomAnchor];
    v50 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v51 = [v50 bottomAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:-8.0];
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

    v56 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v56 setTextAlignment:v55];

    v57 = [MEMORY[0x277D75348] labelColor];
    v58 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v58 setTextColor:v57];

    v59 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    v60 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v60 setText:v59];

    v61 = *MEMORY[0x277D76918];
    v62 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v63 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v63 setFont:v62];

    v64 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    LODWORD(v65) = 1144750080;
    [v64 setContentHuggingPriority:0 forAxis:v65];

    v66 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    v67 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v6 action:sel_didTapUnitLabel];
    [v66 addGestureRecognizer:v67];

    v68 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v68 setUserInteractionEnabled:1];

    v69 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v69 setIsAccessibilityElement:0];

    v70 = objc_opt_new();
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setValueTextField:v70];

    v71 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v71 setTextAlignment:v55];

    v72 = [MEMORY[0x277D75348] labelColor];
    v73 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v73 setTextColor:v72];

    v74 = [MEMORY[0x277D74300] preferredFontForTextStyle:v61];
    v75 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v75 setFont:v74];

    v76 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v76 setKeyboardType:4];

    v77 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v77 setReturnKeyType:9];

    v78 = objc_alloc(MEMORY[0x277CCA898]);
    v79 = aiLocString(@"AudiogramIngestionResultsNoData");
    v192 = *MEMORY[0x277D740C0];
    v80 = [MEMORY[0x277D75348] systemGray3Color];
    v193 = v80;
    v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
    v82 = [v78 initWithString:v79 attributes:v81];
    v83 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v83 setAttributedPlaceholder:v82];

    v84 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    LODWORD(v85) = 1144750080;
    [v84 setContentCompressionResistancePriority:0 forAxis:v85];

    v86 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v86 addTarget:v6 action:sel__textFieldEditingChanged_ forControlEvents:0x20000];

    v87 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v87 setDelegate:v6];

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
    v177 = [MEMORY[0x277D75230] plainButtonConfiguration];
    v96 = MEMORY[0x277D755D0];
    v97 = [MEMORY[0x277D75348] systemBlueColor];
    v191[0] = v97;
    v98 = [MEMORY[0x277D75348] systemGray6Color];
    v191[1] = v98;
    v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:2];
    v100 = [v96 configurationWithPaletteColors:v99];
    v101 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
    v174 = [v100 configurationByApplyingConfiguration:v101];

    [v177 setPreferredSymbolConfigurationForImage:v174];
    v102 = [(AIAudiogramIndividualFrequencyEarCell *)v6 plusButton];
    [v102 setConfiguration:v177];

    v103 = [(AIAudiogramIndividualFrequencyEarCell *)v6 minusButton];
    [v103 setConfiguration:v177];

    v104 = objc_alloc(MEMORY[0x277D75A68]);
    v105 = objc_opt_new();
    v190[0] = v105;
    v106 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    v190[1] = v106;
    v107 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    v190[2] = v107;
    v190[3] = v183;
    v190[4] = v181;
    v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:5];
    v109 = [v104 initWithArrangedSubviews:v108];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setLabelStepperStackView:v109];

    v110 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    [v110 setAxis:0];

    v111 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    [v111 setSpacing:0.0];

    v112 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    v113 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueTextField];
    [v112 setCustomSpacing:v113 afterView:4.0];

    v114 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    v115 = [(AIAudiogramIndividualFrequencyEarCell *)v6 valueUnitLabel];
    [v114 setCustomSpacing:v115 afterView:12.0];

    v116 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    [v116 setCustomSpacing:v183 afterView:-2.0];

    v117 = objc_alloc(MEMORY[0x277D75A68]);
    v118 = [(AIAudiogramIndividualFrequencyEarCell *)v6 symbolSelectorButton];
    v189[0] = v118;
    v119 = [(AIAudiogramIndividualFrequencyEarCell *)v6 labelStepperStackView];
    v189[1] = v119;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
    v121 = [v117 initWithArrangedSubviews:v120];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setContainerStackView:v121];

    v122 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [v122 setSpacing:16.0];

    v123 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [v123 setAxis:0];

    v124 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [v124 setAlignment:3];

    v125 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [v125 setTranslatesAutoresizingMaskIntoConstraints:0];

    v126 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    v127 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    [v126 addSubview:v127];

    v128 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    v129 = [v128 topAnchor];
    v130 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    v131 = [v130 topAnchor];
    v132 = [v129 constraintEqualToAnchor:v131 constant:4.0];
    [(AIAudiogramIndividualFrequencyEarCell *)v6 setTopConstraint:v132];

    v143 = MEMORY[0x277CCAAD0];
    v172 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    v168 = [v172 leadingAnchor];
    v170 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    v166 = [v170 leadingAnchor];
    v164 = [v168 constraintEqualToAnchor:v166 constant:12.0];
    v188[0] = v164;
    v162 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    v158 = [v162 trailingAnchor];
    v160 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    v155 = [v160 trailingAnchor];
    v153 = [v158 constraintEqualToAnchor:v155 constant:-10.0];
    v188[1] = v153;
    v151 = [(AIAudiogramIndividualFrequencyEarCell *)v6 topConstraint];
    v188[2] = v151;
    v150 = [(AIAudiogramIndividualFrequencyEarCell *)v6 containerStackView];
    v148 = [v150 bottomAnchor];
    v149 = [(AIAudiogramIndividualFrequencyEarCell *)v6 contentView];
    v147 = [v149 bottomAnchor];
    v146 = [v148 constraintEqualToAnchor:v147 constant:-4.0];
    v188[3] = v146;
    v145 = [(AIAudiogramIndividualFrequencyEarCell *)v6 plusButton];
    v144 = [v145 widthAnchor];
    v133 = [(AIAudiogramIndividualFrequencyEarCell *)v6 plusButton];
    v134 = [v133 heightAnchor];
    v135 = [v144 constraintEqualToAnchor:v134];
    v188[4] = v135;
    v136 = [(AIAudiogramIndividualFrequencyEarCell *)v6 minusButton];
    v137 = [v136 widthAnchor];
    v138 = [(AIAudiogramIndividualFrequencyEarCell *)v6 minusButton];
    v139 = [v138 heightAnchor];
    v140 = [v137 constraintEqualToAnchor:v139];
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

- (void)_plusButtonTapped:(id)a3
{
  v4 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [v4 plusButtonTapped:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

- (void)_minusButtonTapped:(id)a3
{
  v4 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [v4 minusButtonTapped:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

- (void)setHearingLevel:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (!v4 || (v5 = [(AIAudiogramIndividualFrequencyEarCell *)self noneSelected], v4 = v11, v5))
  {
    v6 = v4 == 0;
    [(AIAudiogramIndividualFrequencyEarCell *)self setNoneSelected:v6];
    [(AIAudiogramIndividualFrequencyEarCell *)self _configureForNoneSelected:v6];
    v4 = v11;
  }

  v7 = validateHearingLevel(v4);
  hearingLevel = self->_hearingLevel;
  self->_hearingLevel = v7;

  v9 = [(NSNumber *)self->_hearingLevel stringValue];
  v10 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  [v10 setText:v9];
}

- (void)updateLeftEarSymbol:(BOOL)a3
{
  if (a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 11;
  }

  if (a3)
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

  v10 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [v10 setPreferredSymbolConfiguration:v9];

  v11 = [MEMORY[0x277D75348] systemBlueColor];
  v12 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [v12 setTintColor:v11];

  v13 = [(AIAudiogramIndividualFrequencyEarCell *)self buttonStackView];
  if ([(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 5.0;
  }

  v15 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [v13 setCustomSpacing:v15 afterView:v14];

  if (![(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v16 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
    [v16 setImage:v19];

    v17 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v18 = aiLocString(v6);
    [v17 setText:v18];

    [(AIAudiogramIndividualFrequencyEarCell *)self setCurrentlySelectedSymbolForLeftEar:v4];
  }
}

- (void)updateRightEarSymbol:(BOOL)a3
{
  if (a3)
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

  v9 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [v9 setPreferredSymbolConfiguration:v8];

  v10 = [MEMORY[0x277D75348] systemPinkColor];
  v11 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [v11 setTintColor:v10];

  v12 = [(AIAudiogramIndividualFrequencyEarCell *)self buttonStackView];
  if ([(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 5.0;
  }

  v14 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
  [v12 setCustomSpacing:v14 afterView:v13];

  if (![(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v15 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
    [v15 setImage:v18];

    v16 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v17 = aiLocString(v5);
    [v16 setText:v17];

    [(AIAudiogramIndividualFrequencyEarCell *)self setCurrentlySelectedSymbolForRightEar:v4];
  }
}

- (void)updateSymbols:(id)a3 ear:(int64_t)a4 masked:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  if (a4 == 1)
  {
    if ([v8 containsObject:&unk_285365740] && objc_msgSend(v8, "containsObject:", &unk_285365758))
    {
      v11 = labelForSymbolType(11);
      [v9 addObject:v11];

      [v10 addObject:&unk_285365758];
      v12 = labelForSymbolType(8);
      [v9 addObject:v12];

      [v10 addObject:&unk_285365740];
      v13 = self;
      v14 = v5;
LABEL_14:
      [(AIAudiogramIndividualFrequencyEarCell *)v13 updateLeftEarSymbol:v14];
      goto LABEL_18;
    }

    if ([v8 containsObject:&unk_285365740])
    {
      v17 = labelForSymbolType(8);
      [v9 addObject:v17];

      [v10 addObject:&unk_285365740];
      v13 = self;
      v14 = 1;
      goto LABEL_14;
    }

    if ([v8 containsObject:&unk_285365758])
    {
      v21 = labelForSymbolType(11);
      [v9 addObject:v21];

      [v10 addObject:&unk_285365758];
      v13 = self;
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (![v8 containsObject:&unk_285365770] || !objc_msgSend(v8, "containsObject:", &unk_285365788))
    {
      if ([v8 containsObject:&unk_285365770])
      {
        v18 = labelForSymbolType(9);
        [v9 addObject:v18];

        [v10 addObject:&unk_285365770];
        v19 = self;
        v20 = 1;
      }

      else
      {
        if (![v8 containsObject:&unk_285365788])
        {
          goto LABEL_18;
        }

        v22 = labelForSymbolType(4);
        [v9 addObject:v22];

        [v10 addObject:&unk_285365788];
        v19 = self;
        v20 = 0;
      }

      [(AIAudiogramIndividualFrequencyEarCell *)v19 updateRightEarSymbol:v20];
      goto LABEL_18;
    }

    [(AIAudiogramIndividualFrequencyEarCell *)self updateRightEarSymbol:v5];
    v15 = labelForSymbolType(4);
    [v9 addObject:v15];

    [v10 addObject:&unk_285365788];
    v16 = labelForSymbolType(9);
    [v9 addObject:v16];

    [v10 addObject:&unk_285365770];
  }

LABEL_18:
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__5;
  v39 = __Block_byref_object_dispose__5;
  v40 = [MEMORY[0x277CBEB18] array];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__AIAudiogramIndividualFrequencyEarCell_updateSymbols_ear_masked___block_invoke;
  v30[3] = &unk_278CECD18;
  v23 = v10;
  v31 = v23;
  v32 = self;
  v33 = &v35;
  v34 = a4;
  [v9 enumerateObjectsUsingBlock:v30];
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
  v28 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolSelectorButton];
  [v28 setMenu:v27];

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

- (void)_didSelectSymbol:(id)a3
{
  v11 = a3;
  v4 = [(AIAudiogramIndividualFrequencyEarCell *)self noneSelected];
  [(AIAudiogramIndividualFrequencyEarCell *)self setNoneSelected:0];
  if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]== 1)
  {
    if ([v11 isEqualToNumber:&unk_285365758])
    {
      [(AIAudiogramIndividualFrequencyEarCell *)self updateLeftEarSymbol:0];
      goto LABEL_7;
    }

    if ([v11 isEqualToNumber:&unk_285365740])
    {
      if (v4 | ![(AIAudiogramIndividualFrequencyEarCell *)self masked])
      {
        [(AIAudiogramIndividualFrequencyEarCell *)self setMasked:1];
        v6 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
        [v6 symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{1, 0}];
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

    if ([v11 isEqualToNumber:&unk_285365788])
    {
      [(AIAudiogramIndividualFrequencyEarCell *)self updateRightEarSymbol:0];
LABEL_7:
      if ([(AIAudiogramIndividualFrequencyEarCell *)self masked]|| v4)
      {
        [(AIAudiogramIndividualFrequencyEarCell *)self setMasked:0];
        v5 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
        [v5 symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{0, 0}];
      }

      goto LABEL_17;
    }

    if ([v11 isEqualToNumber:&unk_285365770])
    {
      if (v4 | ![(AIAudiogramIndividualFrequencyEarCell *)self masked])
      {
        [(AIAudiogramIndividualFrequencyEarCell *)self setMasked:1];
        v7 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
        [v7 symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{1, 0}];
      }

      [(AIAudiogramIndividualFrequencyEarCell *)self updateRightEarSymbol:1];
    }
  }

LABEL_17:
  if (v4)
  {
    [(AIAudiogramIndividualFrequencyEarCell *)self _configureForNoneSelected:0];
    v8 = [(AIAudiogramIndividualFrequencyEarCell *)self hearingLevel];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
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
  v3 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [v3 symbolSelectionForFrequencyHasChanged:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:"ear") noneSelected:{-[AIAudiogramIndividualFrequencyEarCell masked](self, "masked"), 1}];
}

- (void)_configureForNoneSelected:(BOOL)a3
{
  v3 = a3;
  v18 = [MEMORY[0x277D75348] labelColor];
  v5 = [MEMORY[0x277D75348] systemGray3Color];
  v6 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  v7 = !v3;
  [v6 setEnabled:!v3];

  v8 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  [v8 setUserInteractionEnabled:!v3];

  v9 = [(AIAudiogramIndividualFrequencyEarCell *)self plusButton];
  [v9 setEnabled:!v3];

  v10 = [(AIAudiogramIndividualFrequencyEarCell *)self minusButton];
  [v10 setEnabled:!v3];

  if (v3)
  {
    v11 = v5;
  }

  else
  {
    v11 = v18;
  }

  v12 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  [v12 setTextColor:v11];

  v13 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  [v13 setTextColor:v11];

  if (!v7)
  {
    v14 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolImageView];
    [v14 setImage:0];

    v15 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v16 = aiLocString(@"AudiogramIngestionSymbolNone");
    [v15 setText:v16];

    v17 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
    [v17 setText:0];
  }
}

- (void)showActive:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v7 = v3;
    v8 = 2112;
    v9 = self;
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

- (void)setKeyboardToolbar:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  [v5 setInputAccessoryView:v4];
}

- (void)_textFieldEditingChanged:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 text];

  v7 = [v5 numberFromString:v6];
  hearingLevel = self->_hearingLevel;
  self->_hearingLevel = v7;

  v10 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  v9 = [(AIAudiogramIndividualFrequencyEarCell *)self hearingLevel];
  [v10 earCellDidUpdateHearingLevel:v9 forEar:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:{"ear"), -[AIAudiogramIndividualFrequencyEarCell masked](self, "masked")}];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v6 = a3;
  v4 = v6;
  AXPerformBlockOnMainThreadAfterDelay();
  v5 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [v5 earCellDidBeginEditingForEar:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

void __66__AIAudiogramIndividualFrequencyEarCell_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) endOfDocument];
  v2 = [*(a1 + 32) textRangeFromPosition:v3 toPosition:v3];
  [*(a1 + 32) setSelectedTextRange:v2];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
  [v4 earCellDidEndEditingForEar:{-[AIAudiogramIndividualFrequencyEarCell ear](self, "ear")}];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = [v11 hasPrefix:@"-"];
  v13 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v14 = [v13 invertedSet];
  v15 = [v11 componentsSeparatedByCharactersInSet:v14];
  v16 = [v15 componentsJoinedByString:&stru_28535F0B0];

  if (v12)
  {
    v17 = [@"-" stringByAppendingString:v16];

    v16 = v17;
  }

  v18 = objc_opt_new();
  v19 = [v18 numberFromString:v16];

  v20 = validateHearingLevel(v19);
  v21 = [v20 stringValue];
  v22 = [v11 isEqualToString:v21];
  if ((v22 & 1) == 0)
  {
    if (v20)
    {
      [(AIAudiogramIndividualFrequencyEarCell *)self setHearingLevel:v20];
    }

    v23 = [(AIAudiogramIndividualFrequencyEarCell *)self delegate];
    [v23 earCellDidUpdateHearingLevel:v20 forEar:-[AIAudiogramIndividualFrequencyEarCell ear](self masked:{"ear"), -[AIAudiogramIndividualFrequencyEarCell masked](self, "masked")}];
  }

  return v22;
}

- (void)configureLayout
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
  v4 = [v3 text];
  [(AIAudiogramIndividualFrequencyEarCell *)self frame];
  v6 = v5;
  v8 = v7;
  v51 = *MEMORY[0x277D740A8];
  v9 = v51;
  v10 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
  v11 = [v10 font];
  v52[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  [v4 boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v53);

  v46 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  v14 = [v46 text];
  [(AIAudiogramIndividualFrequencyEarCell *)self frame];
  v16 = v15;
  v18 = v17;
  v49 = v9;
  v19 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
  v20 = [v19 font];
  v50 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [v14 boundingRectWithSize:32 options:v21 attributes:0 context:{v16, v18}];
  v22 = CGRectGetWidth(v54);
  v23 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  v24 = [v23 text];
  [(AIAudiogramIndividualFrequencyEarCell *)self frame];
  v26 = v25;
  v28 = v27;
  v47 = v9;
  v29 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
  v30 = [v29 font];
  v48 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [v24 boundingRectWithSize:32 options:v31 attributes:0 context:{v26, v28}];
  *&v22 = v22 + CGRectGetWidth(v55);

  v32 = (Width + *&v22);
  v33 = [(AIAudiogramIndividualFrequencyEarCell *)self contentView];
  [v33 frame];
  v35 = v34 * 0.4;

  v36 = [(AIAudiogramIndividualFrequencyEarCell *)self containerStackView];
  v37 = v36;
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

  [v36 setAxis:v39];

  v43 = [(AIAudiogramIndividualFrequencyEarCell *)self containerStackView];
  [v43 setAlignment:v40];

  v44 = [(AIAudiogramIndividualFrequencyEarCell *)self containerStackView];
  [v44 setSpacing:v41];

  v45 = [(AIAudiogramIndividualFrequencyEarCell *)self topConstraint];
  [v45 setConstant:v42];
}

- (id)accessibilityLabel
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolLabel];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AIAudiogramIndividualFrequencyEarCell;
    v4 = [(AIAudiogramIndividualFrequencyEarCell *)&v6 accessibilityLabel];
  }

  return v4;
}

- (id)accessibilityValue
{
  if ([(AIAudiogramIndividualFrequencyEarCell *)self noneSelected])
  {
    v10.receiver = self;
    v10.super_class = AIAudiogramIndividualFrequencyEarCell;
    v3 = [(AIAudiogramIndividualFrequencyEarCell *)&v10 accessibilityValue];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(AIAudiogramIndividualFrequencyEarCell *)self valueTextField];
    v6 = [v5 accessibilityValue];
    v7 = [(AIAudiogramIndividualFrequencyEarCell *)self valueUnitLabel];
    v8 = [v7 accessibilityLabel];
    v3 = [v4 localizedStringWithFormat:@"%@ %@", v6, v8];
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]== 1)
  {
    v3 = @"AudiogramIngestionSymbolChangeHintLeft";
LABEL_5:
    v4 = aiLocString(v3);
    goto LABEL_7;
  }

  if ([(AIAudiogramIndividualFrequencyEarCell *)self ear]== 2)
  {
    v3 = @"AudiogramIngestionSymbolChangeHintRight";
    goto LABEL_5;
  }

  v6.receiver = self;
  v6.super_class = AIAudiogramIndividualFrequencyEarCell;
  v4 = [(AIAudiogramIndividualFrequencyEarCell *)&v6 accessibilityHint];
LABEL_7:

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x277D76548];
  v3 = [(AIAudiogramIndividualFrequencyEarCell *)self noneSelected];
  v4 = *MEMORY[0x277D76538];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(AIAudiogramIndividualFrequencyEarCell *)self symbolSelectorButton];
  [v2 accessibilityActivationPoint];
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