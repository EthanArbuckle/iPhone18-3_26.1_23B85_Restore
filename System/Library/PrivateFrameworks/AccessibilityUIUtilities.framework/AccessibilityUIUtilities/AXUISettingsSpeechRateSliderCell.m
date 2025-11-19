@interface AXUISettingsSpeechRateSliderCell
- (AXUISettingsSpeechRateSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (CGPoint)accessibilityActivationPoint;
- (double)displayValue;
- (id)accessibilityLabel;
- (id)labelColor;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_changeSpeechRateFromButton:(BOOL)a3;
- (void)_changeValueBySpeechRateIncrementWithSnapToDefault:(double)a3 snapThreshold:(double)a4;
- (void)_updateAccessibilityValueBlock;
- (void)_updateButtonShapes;
- (void)_updateTextSizeLayout;
- (void)applyHapticIfNecessary:(id)a3;
- (void)handleSliderBeingDragged:(id)a3;
- (void)handleSliderDidFinishDrag:(id)a3;
- (void)layoutSubviews;
- (void)updateValue;
- (void)userSelectedValue;
@end

@implementation AXUISettingsSpeechRateSliderCell

- (AXUISettingsSpeechRateSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v167[1] = *MEMORY[0x1E69E9840];
  v162.receiver = self;
  v162.super_class = AXUISettingsSpeechRateSliderCell;
  v149 = a4;
  v151 = a5;
  v7 = [(PSTableCell *)&v162 initWithStyle:a3 reuseIdentifier:v149 specifier:?];
  v8 = v7;
  if (v7)
  {
    v9 = objc_alloc([(AXUISettingsSpeechRateSliderCell *)v7 sliderCellClass]);
    v152 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v10 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v152 setPostTickColor:v10];

    v11 = [MEMORY[0x1E69DC888] systemLightGrayColor];
    [v152 setTrackFillColor:v11];

    [v152 setTickHeight:16.0];
    [(AXUISettingsSpeechRateSliderCell *)v8 setSliderView:v152];
    [v152 setContinuous:1];
    v12 = [v151 propertyForKey:*MEMORY[0x1E69C58B0]];
    [(AXUISettingsSpeechRateSliderCell *)v8 setDefaultValue:v12];

    v13 = [(AXUISettingsSpeechRateSliderCell *)v8 defaultValue];
    v167[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:1];
    [v152 setTicks:v14];

    [v152 setSnappingDistance:0.03];
    [v152 addTarget:v8 action:sel_handleSliderBeingDragged_ forControlEvents:4096];
    [v152 addTarget:v8 action:sel_handleSliderDidFinishDrag_ forControlEvents:192];
    [v152 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [v152 setContentCompressionResistancePriority:1 forAxis:v15];
    v16 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [v16 addSubview:v152];

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
    v150 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v19 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    [v150 setPreferredSymbolConfigurationForImage:v19];

    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"tortoise.fill"];
    v21 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v138 = [v20 imageWithTintColor:v21 renderingMode:1];

    v22 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v150 primaryAction:v140];
    slowButton = v8->_slowButton;
    v8->_slowButton = v22;

    [(UIButton *)v8->_slowButton _setWantsAccessibilityUnderline:0];
    LODWORD(v24) = 1144750080;
    [(UIButton *)v8->_slowButton setContentHuggingPriority:0 forAxis:v24];
    [(UIButton *)v8->_slowButton setImage:v138 forState:0];
    v25 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [v25 addSubview:v8->_slowButton];

    v26 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v150 primaryAction:v139];
    fastButton = v8->_fastButton;
    v8->_fastButton = v26;

    v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hare.fill"];
    v29 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v137 = [v28 imageWithTintColor:v29 renderingMode:1];

    [(UIButton *)v8->_fastButton setImage:v137 forState:0];
    [(UIButton *)v8->_fastButton _setWantsAccessibilityUnderline:0];
    LODWORD(v30) = 1144750080;
    [(UIButton *)v8->_fastButton setContentHuggingPriority:0 forAxis:v30];
    [(UIButton *)v8->_fastButton setContentHorizontalAlignment:3];
    [(UIButton *)v8->_fastButton setContentVerticalAlignment:3];
    v31 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [v31 addSubview:v8->_fastButton];

    v32 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v8->_valueLabel;
    v8->_valueLabel = v32;

    [(UILabel *)v8->_valueLabel setAdjustsFontForContentSizeCategory:1];
    v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v8->_valueLabel setFont:v34];

    LODWORD(v35) = 1144750080;
    [(UILabel *)v8->_valueLabel setContentHuggingPriority:0 forAxis:v35];
    v36 = [(AXUISettingsSpeechRateSliderCell *)v8 labelColor];
    [(UILabel *)v8->_valueLabel setTextColor:v36];

    v37 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    [v37 addSubview:v8->_valueLabel];

    [(UIButton *)v8->_fastButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v8->_slowButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    v39 = [MEMORY[0x1E696ADC8] mainQueue];
    v155[0] = MEMORY[0x1E69E9820];
    v155[1] = 3221225472;
    v155[2] = __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_3;
    v155[3] = &unk_1E812DF80;
    objc_copyWeak(&v156, &location);
    v40 = [v38 addObserverForName:*MEMORY[0x1E69DD8A8] object:0 queue:v39 usingBlock:v155];

    [(AXUISettingsSpeechRateSliderCell *)v8 _updateButtonShapes];
    v41 = [MEMORY[0x1E696AD88] defaultCenter];
    v42 = [MEMORY[0x1E696ADC8] mainQueue];
    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 3221225472;
    v153[2] = __76__AXUISettingsSpeechRateSliderCell_initWithStyle_reuseIdentifier_specifier___block_invoke_4;
    v153[3] = &unk_1E812DF80;
    objc_copyWeak(&v154, &location);
    v43 = [v41 addObserverForName:*MEMORY[0x1E69DDC48] object:0 queue:v42 usingBlock:v153];

    v91 = [v151 propertyForKey:@"SpeechRateProperty"];
    v44 = v91[2]();
    v45 = [(AXUISettingsSpeechRateSliderCell *)v8 sliderView];
    *&v46 = v44;
    [v45 setValue:v46];

    [(AXUISettingsSpeechRateSliderCell *)v8 _updateAccessibilityValueBlock];
    v145 = [(UILabel *)v8->_valueLabel topAnchor];
    v141 = [v152 bottomAnchor];
    v47 = [v145 constraintEqualToAnchor:v141 constant:5.0];
    v166[0] = v47;
    v48 = [(UILabel *)v8->_valueLabel bottomAnchor];
    v49 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v50 = [v49 bottomAnchor];
    v51 = [v48 constraintEqualToAnchor:v50 constant:-5.0];
    v166[1] = v51;
    v52 = [(UILabel *)v8->_valueLabel centerXAnchor];
    v53 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v54 = [v53 centerXAnchor];
    v55 = [v52 constraintEqualToAnchor:v54 constant:0.0];
    v166[2] = v55;
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:3];

    v146 = [v152 leadingAnchor];
    v142 = [(UIButton *)v8->_slowButton trailingAnchor];
    v134 = [v146 constraintEqualToAnchor:v142 constant:10.0];
    v165[0] = v134;
    v131 = [v152 trailingAnchor];
    v128 = [(UIButton *)v8->_fastButton leadingAnchor];
    v125 = [v131 constraintEqualToAnchor:v128 constant:-10.0];
    v165[1] = v125;
    v122 = [v152 centerYAnchor];
    v119 = [(UIButton *)v8->_fastButton centerYAnchor];
    v116 = [v122 constraintEqualToAnchor:v119 constant:0.0];
    v165[2] = v116;
    v110 = [(UIButton *)v8->_slowButton topAnchor];
    v113 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v107 = [v113 topAnchor];
    v104 = [v110 constraintEqualToAnchor:v107 constant:5.0];
    v165[3] = v104;
    v98 = [(UIButton *)v8->_fastButton topAnchor];
    v101 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v95 = [v101 topAnchor];
    v92 = [v98 constraintEqualToAnchor:v95 constant:5.0];
    v165[4] = v92;
    v56 = [(UIButton *)v8->_slowButton leadingAnchor];
    v57 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v58 = [v57 leadingAnchor];
    v59 = [v56 constraintEqualToAnchor:v58 constant:0.0];
    v165[5] = v59;
    v60 = [(UIButton *)v8->_fastButton trailingAnchor];
    v61 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v62 = [v61 trailingAnchor];
    v63 = [v60 constraintEqualToAnchor:v62 constant:0.0];
    v165[6] = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:7];
    [(AXUISettingsSpeechRateSliderCell *)v8 setButtonConstraints:v64];

    v143 = [v152 leadingAnchor];
    v147 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v135 = [v147 leadingAnchor];
    v132 = [v143 constraintEqualToAnchor:v135 constant:15.0];
    v164[0] = v132;
    v126 = [v152 trailingAnchor];
    v129 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v123 = [v129 trailingAnchor];
    v120 = [v126 constraintEqualToAnchor:v123 constant:-15.0];
    v164[1] = v120;
    v114 = [v152 topAnchor];
    v117 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v111 = [v117 topAnchor];
    v108 = [v114 constraintEqualToAnchor:v111 constant:5.0];
    v164[2] = v108;
    v102 = [(UIButton *)v8->_slowButton bottomAnchor];
    v105 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v99 = [v105 bottomAnchor];
    v96 = [v102 constraintEqualToAnchor:v99 constant:-5.0];
    v164[3] = v96;
    v89 = [(UIButton *)v8->_fastButton bottomAnchor];
    v93 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v87 = [v93 bottomAnchor];
    v85 = [v89 constraintEqualToAnchor:v87 constant:-5.0];
    v164[4] = v85;
    v65 = [(UIButton *)v8->_slowButton leadingAnchor];
    v66 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v67 = [v66 leadingAnchor];
    v68 = [v65 constraintEqualToAnchor:v67 constant:0.0];
    v164[5] = v68;
    v69 = [(UIButton *)v8->_fastButton trailingAnchor];
    v70 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v71 = [v70 trailingAnchor];
    v72 = [v69 constraintEqualToAnchor:v71 constant:0.0];
    v164[6] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v164 count:7];
    [(AXUISettingsSpeechRateSliderCell *)v8 setLargeTextButtonConstraints:v73];

    v144 = [v152 leadingAnchor];
    v148 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v136 = [v148 leadingAnchor];
    v133 = [v144 constraintEqualToAnchor:v136 constant:15.0];
    v163[0] = v133;
    v127 = [v152 trailingAnchor];
    v130 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v124 = [v130 trailingAnchor];
    v121 = [v127 constraintEqualToAnchor:v124 constant:-15.0];
    v163[1] = v121;
    v115 = [v152 topAnchor];
    v118 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v112 = [v118 topAnchor];
    v109 = [v115 constraintEqualToAnchor:v112 constant:5.0];
    v163[2] = v109;
    v103 = [(UIButton *)v8->_slowButton bottomAnchor];
    v106 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v100 = [v106 bottomAnchor];
    v97 = [v103 constraintEqualToAnchor:v100 constant:-5.0];
    v163[3] = v97;
    v90 = [(UIButton *)v8->_fastButton bottomAnchor];
    v94 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v88 = [v94 bottomAnchor];
    v86 = [v90 constraintEqualToAnchor:v88 constant:-5.0];
    v163[4] = v86;
    v74 = [(UIButton *)v8->_slowButton leadingAnchor];
    v75 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v76 = [v75 leadingAnchor];
    v77 = [v74 constraintEqualToAnchor:v76 constant:-20.0];
    v163[5] = v77;
    v78 = [(UIButton *)v8->_fastButton trailingAnchor];
    v79 = [(AXUISettingsSpeechRateSliderCell *)v8 contentView];
    v80 = [v79 trailingAnchor];
    v81 = [v78 constraintEqualToAnchor:v80 constant:20.0];
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
  v3 = [(AXUISettingsSpeechRateSliderCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    v6 = [(AXUISettingsSpeechRateSliderCell *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69DDC20]];

    v9 = MEMORY[0x1E696ACD8];
    if (v8)
    {
      v10 = [(AXUISettingsSpeechRateSliderCell *)self largeTextButtonConstraints];
      [v9 deactivateConstraints:v10];

      v11 = MEMORY[0x1E696ACD8];
      v12 = [(AXUISettingsSpeechRateSliderCell *)self buttonConstraints];
      [v11 deactivateConstraints:v12];

      v13 = MEMORY[0x1E696ACD8];
      [(AXUISettingsSpeechRateSliderCell *)self extraLargeTextButtonConstraints];
    }

    else
    {
      v19 = [(AXUISettingsSpeechRateSliderCell *)self buttonConstraints];
      [v9 deactivateConstraints:v19];

      v20 = MEMORY[0x1E696ACD8];
      v21 = [(AXUISettingsSpeechRateSliderCell *)self extraLargeTextButtonConstraints];
      [v20 deactivateConstraints:v21];

      v13 = MEMORY[0x1E696ACD8];
      [(AXUISettingsSpeechRateSliderCell *)self largeTextButtonConstraints];
    }
    v14 = ;
  }

  else
  {
    v15 = MEMORY[0x1E696ACD8];
    v16 = [(AXUISettingsSpeechRateSliderCell *)self extraLargeTextButtonConstraints];
    [v15 deactivateConstraints:v16];

    v17 = MEMORY[0x1E696ACD8];
    v18 = [(AXUISettingsSpeechRateSliderCell *)self largeTextButtonConstraints];
    [v17 deactivateConstraints:v18];

    v13 = MEMORY[0x1E696ACD8];
    v14 = [(AXUISettingsSpeechRateSliderCell *)self buttonConstraints];
  }

  v22 = v14;
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
    v3 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__AXUISettingsSpeechRateSliderCell__updateAccessibilityValueBlock__block_invoke_2;
    v4[3] = &unk_1E812E120;
    objc_copyWeak(&v5, &location);
    [v3 _setAccessibilityValueBlock:v4];

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
          v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
          [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
          v13 = [v12 layer];
          [v13 setCornerRadius:8.0];

          v14 = [(AXUISettingsSpeechRateSliderCell *)self traitCollection];
          v15 = [v14 userInterfaceStyle];

          if (v15 == 2)
          {
            [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
          }
          v17 = ;
          [v12 setBackgroundColor:{v17, v25}];

          [v12 setTag:123456];
          [v12 setUserInteractionEnabled:0];
          [v11 addSubview:v12];
          v30 = MEMORY[0x1E696ACD8];
          v16 = [v12 centerXAnchor];
          v34 = [v11 centerXAnchor];
          v33 = [v16 constraintEqualToAnchor:v34];
          v39[0] = v33;
          v32 = [v12 centerYAnchor];
          v31 = [v11 centerYAnchor];
          v29 = [v32 constraintEqualToAnchor:v31];
          v39[1] = v29;
          v18 = [v12 widthAnchor];
          v19 = [v11 widthAnchor];
          v20 = [v18 constraintEqualToAnchor:v19 multiplier:0.8];
          v39[2] = v20;
          v21 = [v12 heightAnchor];
          v22 = [v11 heightAnchor];
          v23 = [v21 constraintEqualToAnchor:v22 multiplier:0.8];
          v39[3] = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
          [v30 activateConstraints:v24];

          v5 = v25;
          v4 = v27;
        }

        else
        {
          v12 = [v11 subviews];
          v16 = [v12 copy];
          [v16 enumerateObjectsUsingBlock:&__block_literal_global_4];
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

- (void)applyHapticIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(PSTableCell *)self specifier];
  v14 = [v5 propertyForKey:@"SpeechShouldPlayHapticDistance"];

  [v4 doubleValue];
  v7 = v6;

  v8 = [(AXUISettingsSpeechRateSliderCell *)self defaultValue];
  [v8 doubleValue];
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

- (void)_changeValueBySpeechRateIncrementWithSnapToDefault:(double)a3 snapThreshold:(double)a4
{
  v7 = [(PSTableCell *)self specifier];
  v22 = [v7 propertyForKey:@"SpeechRateFormatterProperty"];

  v8 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v8 value];
  v10 = v22[2](v9) / 100.0;

  v11 = (v22[2])(v22, 1.0) / 100.0;
  v12 = fmax(v10 + a3, 0.0);
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = [(AXUISettingsSpeechRateSliderCell *)self defaultValue];
  [v14 doubleValue];
  v15 = vabdd_f64(v13, (v22[2])(v22) / 100.0);

  if (v15 < a4)
  {
    v16 = [(AXUISettingsSpeechRateSliderCell *)self defaultValue];
    [v16 doubleValue];
    v13 = (v22[2])() / 100.0;
  }

  v17 = [(PSTableCell *)self specifier];
  v18 = [v17 propertyForKey:@"SpeechRateForSliderValueProperty"];

  v19 = v18[2](v18, v13);
  v20 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  *&v21 = v19;
  [v20 setValue:v21];
}

- (void)handleSliderBeingDragged:(id)a3
{
  v4 = a3;
  [(AXUISettingsSpeechRateSliderCell *)self _changeValueBySpeechRateIncrementWithSnapToDefault:0.0 snapThreshold:0.03];
  v5 = MEMORY[0x1E696AD98];
  [v4 value];
  v7 = v6;

  LODWORD(v8) = v7;
  v9 = [v5 numberWithFloat:v8];
  [(AXUISettingsSpeechRateSliderCell *)self applyHapticIfNecessary:v9];

  [(AXUISettingsSpeechRateSliderCell *)self updateValue];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)handleSliderDidFinishDrag:(id)a3
{
  [(AXUISettingsSpeechRateSliderCell *)self updateValue];

  [(AXUISettingsSpeechRateSliderCell *)self userSelectedValue];
}

- (void)_changeSpeechRateFromButton:(BOOL)a3
{
  v4 = -0.1;
  if (a3)
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
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 propertyForKey:@"SpeechRateFormatterProperty"];

  if (v4)
  {
    v5 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
    [v5 value];
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

  v6 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v6 setNeedsDisplay];

  v7 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v7 value];
  v9 = v8;
  v10 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v10 minimumValue];
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

  v13 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v13 value];
  v15 = v14;
  v16 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
  [v16 maximumValue];
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
    v21 = [*(&self->super.super.super.super.super.isa + v20) imageView];
    v22 = [MEMORY[0x1E6982248] effect];
    [v21 addSymbolEffect:v22];

    *(&self->super.super.super.super.super.isa + v19) = 1;
  }

LABEL_9:
  v23 = [(PSTableCell *)self specifier];
  v27 = [v23 propertyForKey:@"SpeechRateChangedProperty"];

  if (v27)
  {
    v24 = [(AXUISettingsSpeechRateSliderCell *)self sliderView];
    [v24 value];
    v27[2](v25);
  }
}

- (void)userSelectedValue
{
  v2 = [(PSTableCell *)self specifier];
  v4 = [v2 propertyForKey:@"SpeechRateSelectedProperty"];

  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (id)accessibilityLabel
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)labelColor
{
  v2 = [MEMORY[0x1E69C5710] appearance];
  v3 = [v2 usesDarkTheme];

  if (v3)
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