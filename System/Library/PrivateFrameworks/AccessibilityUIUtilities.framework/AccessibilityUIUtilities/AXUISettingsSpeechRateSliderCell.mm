@interface AXUISettingsSpeechRateSliderCell
- (AXUISettingsSpeechRateSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (CGPoint)accessibilityActivationPoint;
- (double)displayValue;
- (id)accessibilityLabel;
- (id)labelColor;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_changeSpeechRateFromButton:(BOOL)button;
- (void)_changeValueBySpeechRateIncrementWithSnapToDefault:(double)default snapThreshold:(double)threshold;
- (void)_updateAccessibilityValueBlock;
- (void)_updateButtonShapes;
- (void)_updateTextSizeLayout;
- (void)applyHapticIfNecessary:(id)necessary;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)layoutSubviews;
- (void)updateValue;
- (void)userSelectedValue;
@end

@implementation AXUISettingsSpeechRateSliderCell

- (AXUISettingsSpeechRateSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v167[1] = *MEMORY[0x1E69E9840];
  v162.receiver = self;
  v162.super_class = AXUISettingsSpeechRateSliderCell;
  identifierCopy = identifier;
  specifierCopy = specifier;
  v7 = [(PSTableCell *)&v162 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  v8 = v7;
  if (v7)
  {
    v9 = objc_alloc([(AXUISettingsSpeechRateSliderCell *)v7 sliderCellClass]);
    v152 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [v152 setPostTickColor:systemBlueColor];

    systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [v152 setTrackFillColor:systemLightGrayColor];

    [v152 setTickHeight:16.0];
    [(AXUISettingsSpeechRateSliderCell *)v8 setSliderView:v152];
    [v152 setContinuous:1];
    v12 = [specifierCopy propertyForKey:*MEMORY[0x1E69C58B0]];
    [(AXUISettingsSpeechRateSliderCell *)v8 setDefaultValue:v12];

    defaultValue = [(AXUISettingsSpeechRateSliderCell *)v8 defaultValue];
    v167[0] = defaultValue;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:1];
    [v152 setTicks:v14];

    [v152 setSnappingDistance:0.03];
    [v152 addTarget:v8 action:sel_handleSliderBeingDragged_ forControlEvents:4096];
    [v152 addTarget:v8 action:sel_handleSliderDidFinishDrag_ forControlEvents:192];
    [v152 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [v152 setContentCompressionResistancePriority:1 forAxis:v15];
    contentView = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [contentView addSubview:v152];

    objc_initWeak(&location, v8);
    v17 = MEMORY[0x1E69DC628];
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke;
    v159[3] = &unk_1E812E0F8;
    objc_copyWeak(&v160, &location);
    v140 = [v17 actionWithTitle:&stru_1F4041FC0 image:0 identifier:0 handler:v159];
    v18 = MEMORY[0x1E69DC628];
    v157[0] = MEMORY[0x1E69E9820];
    v157[1] = 3221225472;
    v157[2] = __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_2;
    v157[3] = &unk_1E812E0F8;
    objc_copyWeak(&v158, &location);
    v139 = [v18 actionWithTitle:&stru_1F4041FC0 image:0 identifier:0 handler:v157];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v19 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v19];

    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"tortoise.fill"];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v138 = [v20 imageWithTintColor:tertiaryLabelColor renderingMode:1];

    v22 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v140];
    slowButton = v8->_slowButton;
    v8->_slowButton = v22;

    [(UIButton *)v8->_slowButton _setWantsAccessibilityUnderline:0];
    LODWORD(v24) = 1144750080;
    [(UIButton *)v8->_slowButton setContentHuggingPriority:0 forAxis:v24];
    [(UIButton *)v8->_slowButton setImage:v138 forState:0];
    contentView2 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [contentView2 addSubview:v8->_slowButton];

    v26 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v139];
    fastButton = v8->_fastButton;
    v8->_fastButton = v26;

    v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hare.fill"];
    tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v137 = [v28 imageWithTintColor:tertiaryLabelColor2 renderingMode:1];

    [(UIButton *)v8->_fastButton setImage:v137 forState:0];
    [(UIButton *)v8->_fastButton _setWantsAccessibilityUnderline:0];
    LODWORD(v30) = 1144750080;
    [(UIButton *)v8->_fastButton setContentHuggingPriority:0 forAxis:v30];
    [(UIButton *)v8->_fastButton setContentHorizontalAlignment:3];
    [(UIButton *)v8->_fastButton setContentVerticalAlignment:3];
    contentView3 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [contentView3 addSubview:v8->_fastButton];

    v32 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v8->_valueLabel;
    v8->_valueLabel = v32;

    [(UILabel *)v8->_valueLabel setAdjustsFontForContentSizeCategory:1];
    v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v8->_valueLabel setFont:v34];

    LODWORD(v35) = 1144750080;
    [(UILabel *)v8->_valueLabel setContentHuggingPriority:0 forAxis:v35];
    labelColor = [(AXUISettingsSpeechRateSliderCell *)v8 labelColor];
    [(UILabel *)v8->_valueLabel setTextColor:labelColor];

    contentView4 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [contentView4 addSubview:v8->_valueLabel];

    [(UIButton *)v8->_fastButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v8->_slowButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_3;
    v155[3] = &unk_1E812DF80;
    objc_copyWeak(&v156, &location);
    v40 = [defaultCenter addObserverForName:*MEMORY[0x1E69DD8A8] object:0 queue:mainQueue usingBlock:v155];

    [(AXUISettingsSpeechRateSliderCell *)v8 _updateButtonShapes];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_4;
    v153[3] = &unk_1E812DF80;
    objc_copyWeak(&v154, &location);
    v43 = [defaultCenter2 addObserverForName:*MEMORY[0x1E69DDC48] object:0 queue:mainQueue2 usingBlock:v153];

    v91 = [specifierCopy propertyForKey:@"SpeechRateProperty"];
    v44 = v91[2]();
    sliderView = [(AXUISettingsSpeechRateSliderCell *)v8 sliderView];
    *&v46 = v44;
    [sliderView setValue:v46];

    [(AXUISettingsSpeechRateSliderCell *)v8 _updateAccessibilityValueBlock];
    topAnchor = [(UILabel *)v8->_valueLabel topAnchor];
    bottomAnchor = [v152 bottomAnchor];
    v47 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:5.0];
    v166[0] = v47;
    bottomAnchor2 = [(UILabel *)v8->_valueLabel bottomAnchor];
    contentView5 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    bottomAnchor3 = [contentView5 bottomAnchor];
    v51 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-5.0];
    v166[1] = v51;
    centerXAnchor = [(UILabel *)v8->_valueLabel centerXAnchor];
    contentView6 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    centerXAnchor2 = [contentView6 centerXAnchor];
    v55 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
    v166[2] = v55;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:3];

    leadingAnchor = [v152 leadingAnchor];
    trailingAnchor = [(UIButton *)v8->_slowButton trailingAnchor];
    v134 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:10.0];
    v165[0] = v134;
    trailingAnchor2 = [v152 trailingAnchor];
    leadingAnchor2 = [(UIButton *)v8->_fastButton leadingAnchor];
    v125 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2 constant:-10.0];
    v165[1] = v125;
    centerYAnchor = [v152 centerYAnchor];
    centerYAnchor2 = [(UIButton *)v8->_fastButton centerYAnchor];
    v116 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    v165[2] = v116;
    topAnchor2 = [(UIButton *)v8->_slowButton topAnchor];
    contentView7 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    topAnchor3 = [contentView7 topAnchor];
    v104 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:5.0];
    v165[3] = v104;
    topAnchor4 = [(UIButton *)v8->_fastButton topAnchor];
    contentView8 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    topAnchor5 = [contentView8 topAnchor];
    v92 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:5.0];
    v165[4] = v92;
    leadingAnchor3 = [(UIButton *)v8->_slowButton leadingAnchor];
    contentView9 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    leadingAnchor4 = [contentView9 leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
    v165[5] = v59;
    trailingAnchor3 = [(UIButton *)v8->_fastButton trailingAnchor];
    contentView10 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    trailingAnchor4 = [contentView10 trailingAnchor];
    v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
    v165[6] = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:7];
    [(AXUISettingsSpeechRateSliderCell *)v8 setButtonConstraints:v64];

    leadingAnchor5 = [v152 leadingAnchor];
    contentView11 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    leadingAnchor6 = [contentView11 leadingAnchor];
    v132 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:15.0];
    v164[0] = v132;
    trailingAnchor5 = [v152 trailingAnchor];
    contentView12 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    trailingAnchor6 = [contentView12 trailingAnchor];
    v120 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-15.0];
    v164[1] = v120;
    topAnchor6 = [v152 topAnchor];
    contentView13 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    topAnchor7 = [contentView13 topAnchor];
    v108 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:5.0];
    v164[2] = v108;
    bottomAnchor4 = [(UIButton *)v8->_slowButton bottomAnchor];
    contentView14 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    bottomAnchor5 = [contentView14 bottomAnchor];
    v96 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-5.0];
    v164[3] = v96;
    bottomAnchor6 = [(UIButton *)v8->_fastButton bottomAnchor];
    contentView15 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    bottomAnchor7 = [contentView15 bottomAnchor];
    v85 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-5.0];
    v164[4] = v85;
    leadingAnchor7 = [(UIButton *)v8->_slowButton leadingAnchor];
    contentView16 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    leadingAnchor8 = [contentView16 leadingAnchor];
    v68 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:0.0];
    v164[5] = v68;
    trailingAnchor7 = [(UIButton *)v8->_fastButton trailingAnchor];
    contentView17 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    trailingAnchor8 = [contentView17 trailingAnchor];
    v72 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:0.0];
    v164[6] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:7];
    [(AXUISettingsSpeechRateSliderCell *)v8 setLargeTextButtonConstraints:v73];

    leadingAnchor9 = [v152 leadingAnchor];
    contentView18 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    leadingAnchor10 = [contentView18 leadingAnchor];
    v133 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:15.0];
    v163[0] = v133;
    trailingAnchor9 = [v152 trailingAnchor];
    contentView19 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    trailingAnchor10 = [contentView19 trailingAnchor];
    v121 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-15.0];
    v163[1] = v121;
    topAnchor8 = [v152 topAnchor];
    contentView20 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    topAnchor9 = [contentView20 topAnchor];
    v109 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:5.0];
    v163[2] = v109;
    bottomAnchor8 = [(UIButton *)v8->_slowButton bottomAnchor];
    contentView21 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    bottomAnchor9 = [contentView21 bottomAnchor];
    v97 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-5.0];
    v163[3] = v97;
    bottomAnchor10 = [(UIButton *)v8->_fastButton bottomAnchor];
    contentView22 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    bottomAnchor11 = [contentView22 bottomAnchor];
    v86 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:-5.0];
    v163[4] = v86;
    leadingAnchor11 = [(UIButton *)v8->_slowButton leadingAnchor];
    contentView23 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    leadingAnchor12 = [contentView23 leadingAnchor];
    v77 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:-20.0];
    v163[5] = v77;
    trailingAnchor11 = [(UIButton *)v8->_fastButton trailingAnchor];
    contentView24 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    trailingAnchor12 = [contentView24 trailingAnchor];
    v81 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:20.0];
    v163[6] = v81;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:7];
    [(AXUISettingsSpeechRateSliderCell *)v8 setExtraLargeTextButtonConstraints:v82];

    [MEMORY[0x1E696ACD8] activateConstraints:v84];
    [(AXUISettingsSpeechRateSliderCell *)v8 _updateTextSizeLayout];
    [(AXUISettingsSpeechRateSliderCell *)v8 setNeedsLayout];
    [(AXUISettingsSpeechRateSliderCell *)v8 layoutIfNeeded];

    objc_destroyWeak(&v154);
    objc_destroyWeak(&v156);

    objc_destroyWeak(&v158);
    objc_destroyWeak(&v160);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeSpeechRateFromButton:0];
}

void __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeSpeechRateFromButton:1];
}

void __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateButtonShapes];
}

void __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTextSizeLayout];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = AXUISettingsSpeechRateSliderCell;
  [(AXUISettingsSpeechRateSliderCell *)&v3 _accessibilityLoadAccessibilityInformation];
  [(AXUISettingsSpeechRateSliderCell *)self _updateAccessibilityValueBlock];
}

- (void)_updateTextSizeLayout
{
  traitCollection = [(AXUISettingsSpeechRateSliderCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    traitCollection2 = [(AXUISettingsSpeechRateSliderCell *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory2 isEqualToString:*MEMORY[0x1E69DDC20]];

    v9 = MEMORY[0x1E696ACD8];
    if (v8)
    {
      largeTextButtonConstraints = [(AXUISettingsSpeechRateSliderCell *)self largeTextButtonConstraints];
      [v9 deactivateConstraints:largeTextButtonConstraints];

      v11 = MEMORY[0x1E696ACD8];
      buttonConstraints = [(AXUISettingsSpeechRateSliderCell *)self buttonConstraints];
      [v11 deactivateConstraints:buttonConstraints];

      v13 = MEMORY[0x1E696ACD8];
      [(AXUISettingsSpeechRateSliderCell *)self extraLargeTextButtonConstraints];
    }

    else
    {
      buttonConstraints2 = [(AXUISettingsSpeechRateSliderCell *)self buttonConstraints];
      [v9 deactivateConstraints:buttonConstraints2];

      v20 = MEMORY[0x1E696ACD8];
      extraLargeTextButtonConstraints = [(AXUISettingsSpeechRateSliderCell *)self extraLargeTextButtonConstraints];
      [v20 deactivateConstraints:extraLargeTextButtonConstraints];

      v13 = MEMORY[0x1E696ACD8];
      [(AXUISettingsSpeechRateSliderCell *)self largeTextButtonConstraints];
    }
    buttonConstraints3 = ;
  }

  else
  {
    v15 = MEMORY[0x1E696ACD8];
    extraLargeTextButtonConstraints2 = [(AXUISettingsSpeechRateSliderCell *)self extraLargeTextButtonConstraints];
    [v15 deactivateConstraints:extraLargeTextButtonConstraints2];

    v17 = MEMORY[0x1E696ACD8];
    largeTextButtonConstraints2 = [(AXUISettingsSpeechRateSliderCell *)self largeTextButtonConstraints];
    [v17 deactivateConstraints:largeTextButtonConstraints2];

    v13 = MEMORY[0x1E696ACD8];
    buttonConstraints3 = [(AXUISettingsSpeechRateSliderCell *)self buttonConstraints];
  }

  v22 = buttonConstraints3;
  [v13 activateConstraints:?];
}

- (void)_updateAccessibilityValueBlock
{
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__AXUISettingsSpeechRateSliderCell__updateAccessibilityValueBlock__block_invoke;
    v6[3] = &unk_1E812E120;
    objc_copyWeak(&v7, &location);
    [(AXUISettingsSpeechRateSliderCell *)self _setAccessibilityValueBlock:v6];
    sliderView = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__AXUISettingsSpeechRateSliderCell__updateAccessibilityValueBlock__block_invoke_2;
    v4[3] = &unk_1E812E120;
    objc_copyWeak(&v5, &location);
    [sliderView _setAccessibilityValueBlock:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

id __66__AXUISettingsSpeechRateSliderCell__updateAccessibilityValueBlock__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[156] text];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __66__AXUISettingsSpeechRateSliderCell__updateAccessibilityValueBlock__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[156] text];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateButtonShapes
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  slowButton = self->_slowButton;
  v40[0] = self->_fastButton;
  v40[1] = slowButton;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v25 = *v36;
    do
    {
      v10 = 0;
      v27 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        if (UIAccessibilityButtonShapesEnabled())
        {
          subviews = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
          [subviews setTranslatesAutoresizingMaskIntoConstraints:0];
          layer = [subviews layer];
          [layer setCornerRadius:8.0];

          traitCollection = [(AXUISettingsSpeechRateSliderCell *)self traitCollection];
          userInterfaceStyle = [traitCollection userInterfaceStyle];

          if (userInterfaceStyle == 2)
          {
            [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
          }
          v17 = ;
          [subviews setBackgroundColor:{v17, v25}];

          [subviews setTag:123456];
          [subviews setUserInteractionEnabled:0];
          [v11 addSubview:subviews];
          v30 = MEMORY[0x1E696ACD8];
          centerXAnchor = [subviews centerXAnchor];
          centerXAnchor2 = [v11 centerXAnchor];
          v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          v39[0] = v33;
          centerYAnchor = [subviews centerYAnchor];
          centerYAnchor2 = [v11 centerYAnchor];
          v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v39[1] = v29;
          widthAnchor = [subviews widthAnchor];
          widthAnchor2 = [v11 widthAnchor];
          v20 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.8];
          v39[2] = v20;
          heightAnchor = [subviews heightAnchor];
          heightAnchor2 = [v11 heightAnchor];
          v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.8];
          v39[3] = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
          [v30 activateConstraints:v24];

          v5 = v25;
          v4 = v27;
        }

        else
        {
          subviews = [v11 subviews];
          centerXAnchor = [subviews copy];
          [centerXAnchor enumerateObjectsUsingBlock:&__block_literal_global_4];
        }

        ++v10;
      }

      while (v4 != v10);
      v4 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v4);
  }
}

void __55__AXUISettingsSpeechRateSliderCell__updateButtonShapes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 tag] == 123456)
  {
    [v2 removeFromSuperview];
  }
}

- (void)applyHapticIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  specifier = [(PSTableCell *)self specifier];
  v14 = [specifier propertyForKey:@"SpeechShouldPlayHapticDistance"];

  [necessaryCopy doubleValue];
  v7 = v6;

  defaultValue = [(AXUISettingsSpeechRateSliderCell *)self defaultValue];
  [defaultValue doubleValue];
  v10 = v14[2](v7, v9);

  if (v10 >= 0.01 || self->_hapticPlayedValue)
  {
    if (v10 > 0.02)
    {
      self->_hapticPlayedValue = 0;
    }
  }

  else
  {
    hapticGenerator = self->_hapticGenerator;
    if (!hapticGenerator)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
      v13 = self->_hapticGenerator;
      self->_hapticGenerator = v12;

      hapticGenerator = self->_hapticGenerator;
    }

    [(UIImpactFeedbackGenerator *)hapticGenerator impactOccurred];
    self->_hapticPlayedValue = 1;
  }
}

- (void)_changeValueBySpeechRateIncrementWithSnapToDefault:(double)default snapThreshold:(double)threshold
{
  specifier = [(PSTableCell *)self specifier];
  v22 = [specifier propertyForKey:@"SpeechRateFormatterProperty"];

  sliderView = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView value];
  v10 = v22[2](v9) / 100.0;

  v11 = (v22[2])(v22, 1.0) / 100.0;
  v12 = fmax(v10 + default, 0.0);
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  defaultValue = [(AXUISettingsSpeechRateSliderCell *)self defaultValue];
  [defaultValue doubleValue];
  v15 = vabdd_f64(v13, (v22[2])(v22) / 100.0);

  if (v15 < threshold)
  {
    defaultValue2 = [(AXUISettingsSpeechRateSliderCell *)self defaultValue];
    [defaultValue2 doubleValue];
    v13 = (v22[2])() / 100.0;
  }

  specifier2 = [(PSTableCell *)self specifier];
  v18 = [specifier2 propertyForKey:@"SpeechRateForSliderValueProperty"];

  v19 = v18[2](v18, v13);
  sliderView2 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  *&v21 = v19;
  [sliderView2 setValue:v21];
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [(AXUISettingsSpeechRateSliderCell *)self _changeValueBySpeechRateIncrementWithSnapToDefault:0.0 snapThreshold:0.03];
  v5 = MEMORY[0x1E696AD98];
  [draggedCopy value];
  v7 = v6;

  LODWORD(v8) = v7;
  v9 = [v5 numberWithFloat:v8];
  [(AXUISettingsSpeechRateSliderCell *)self applyHapticIfNecessary:v9];

  [(AXUISettingsSpeechRateSliderCell *)self updateValue];
}

- (CGPoint)accessibilityActivationPoint
{
  sliderView = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [(AXUISettingsSpeechRateSliderCell *)self updateValue];

  [(AXUISettingsSpeechRateSliderCell *)self userSelectedValue];
}

- (void)_changeSpeechRateFromButton:(BOOL)button
{
  v4 = -0.1;
  if (button)
  {
    v4 = 0.1;
  }

  [(AXUISettingsSpeechRateSliderCell *)self _changeValueBySpeechRateIncrementWithSnapToDefault:v4 snapThreshold:0.05];
  [(AXUISettingsSpeechRateSliderCell *)self updateValue];

  [(AXUISettingsSpeechRateSliderCell *)self userSelectedValue];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AXUISettingsSpeechRateSliderCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(AXUISettingsSpeechRateSliderCell *)self updateValue];
}

- (double)displayValue
{
  specifier = [(PSTableCell *)self specifier];
  v4 = [specifier propertyForKey:@"SpeechRateFormatterProperty"];

  if (v4)
  {
    sliderView = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
    [sliderView value];
    v7 = v4[2](v4, v6);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)updateValue
{
  v3 = AXUILocalizedStringForKey(@"SPEECH_RATE_PERCENTAGE");
  [(AXUISettingsSpeechRateSliderCell *)self displayValue];
  v26 = v4;
  v5 = AXCFormattedString();
  [(UILabel *)self->_valueLabel setText:v5, v26];

  sliderView = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView setNeedsDisplay];

  sliderView2 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView2 value];
  v9 = v8;
  sliderView3 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView3 minimumValue];
  v12 = v11;

  if (v9 <= v12)
  {
    v19 = 1217;
    if (self->_playedSlowBounce)
    {
      goto LABEL_9;
    }

    v20 = 1240;
    goto LABEL_8;
  }

  sliderView4 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView4 value];
  v15 = v14;
  sliderView5 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [sliderView5 maximumValue];
  v18 = v17;

  v19 = 1218;
  if (v15 < v18)
  {
    self->_playedFastBounce = 0;
    self->_playedSlowBounce = 0;
    goto LABEL_9;
  }

  if (!self->_playedFastBounce)
  {
    v20 = 1232;
LABEL_8:
    imageView = [*(&self->super.super.super.super.super.isa + v20) imageView];
    effect = [MEMORY[0x1E6982248] effect];
    [imageView addSymbolEffect:effect];

    *(&self->super.super.super.super.super.isa + v19) = 1;
  }

LABEL_9:
  specifier = [(PSTableCell *)self specifier];
  v27 = [specifier propertyForKey:@"SpeechRateChangedProperty"];

  if (v27)
  {
    sliderView6 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
    [sliderView6 value];
    v27[2](v25);
  }
}

- (void)userSelectedValue
{
  specifier = [(PSTableCell *)self specifier];
  v4 = [specifier propertyForKey:@"SpeechRateSelectedProperty"];

  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (id)accessibilityLabel
{
  specifier = [(PSTableCell *)self specifier];
  accessibilityLabel = [specifier accessibilityLabel];

  return accessibilityLabel;
}

- (id)labelColor
{
  appearance = [MEMORY[0x1E69C5710] appearance];
  usesDarkTheme = [appearance usesDarkTheme];

  if (usesDarkTheme)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v4 = ;

  return v4;
}

@end