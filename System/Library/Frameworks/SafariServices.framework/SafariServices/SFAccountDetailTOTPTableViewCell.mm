@interface SFAccountDetailTOTPTableViewCell
- (SFAccountDetailTOTPTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_attributedSubtitleString;
- (id)_attributedSubtitleStringWithRemainingSeconds:(unint64_t)seconds;
- (id)_formattedCode;
- (void)_startTOTPTimerIfNeeded;
- (void)_updateCodeAndLabels;
- (void)_updateTitleAndVerificationCodeStackView;
- (void)_updateVerificationCodeLabelTextColor;
- (void)configureWithGenerator:(id)generator;
- (void)dealloc;
- (void)setOverrideVerificationCodeLabelTextColor:(id)color;
@end

@implementation SFAccountDetailTOTPTableViewCell

- (SFAccountDetailTOTPTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52[2] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = SFAccountDetailTOTPTableViewCell;
  v4 = [(SFAccountDetailTOTPTableViewCell *)&v48 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v5 setFont:v6];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v5 setTextColor:labelColor];

    [v5 setNumberOfLines:0];
    [v5 setAdjustsFontForContentSizeCategory:1];
    v8 = _WBSLocalizedString();
    v47 = v5;
    [v5 setText:v8];

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v9;

    v11 = subtitleFont();
    [(UILabel *)v4->_subtitleLabel setFont:v11];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v13 = [(SFAccountDetailTOTPTableViewCell *)v4 _attributedSubtitleStringWithRemainingSeconds:0];
    [(UILabel *)v4->_subtitleLabel setAttributedText:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    verificationCodeLabel = v4->_verificationCodeLabel;
    v4->_verificationCodeLabel = v14;

    v16 = verificationCodeFont();
    [(UILabel *)v4->_verificationCodeLabel setFont:v16];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_verificationCodeLabel setTextColor:secondaryLabelColor2];

    [(UILabel *)v4->_verificationCodeLabel setTextAlignment:2];
    [(UILabel *)v4->_verificationCodeLabel setNumberOfLines:1];
    [(UILabel *)v4->_verificationCodeLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v4->_verificationCodeLabel setText:@" "];
    LODWORD(v18) = 1144766464;
    [(UILabel *)v4->_verificationCodeLabel setContentHuggingPriority:0 forAxis:v18];
    v19 = objc_alloc(MEMORY[0x1E69DCF90]);
    v52[0] = v5;
    v52[1] = v4->_verificationCodeLabel;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v21 = [v19 initWithArrangedSubviews:v20];
    titleAndVerificationCodeStackView = v4->_titleAndVerificationCodeStackView;
    v4->_titleAndVerificationCodeStackView = v21;

    v23 = objc_alloc(MEMORY[0x1E69DCF90]);
    v51[0] = v4->_titleAndVerificationCodeStackView;
    v51[1] = v4->_subtitleLabel;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v25 = [v23 initWithArrangedSubviews:v24];

    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAxis:1];
    [v25 setSpacing:6.0];
    contentView = [(SFAccountDetailTOTPTableViewCell *)v4 contentView];
    [contentView addSubview:v25];

    contentView2 = [(SFAccountDetailTOTPTableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v41 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v25 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[0] = v44;
    trailingAnchor = [v25 trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[1] = v40;
    topAnchor = [v25 topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[2] = v31;
    bottomAnchor = [v25 bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    [v41 activateConstraints:v35];

    [(SFAccountDetailTOTPTableViewCell *)v4 _updateTitleAndVerificationCodeStackView];
    [(SFAccountDetailTOTPTableViewCell *)v4 _updateVerificationCodeLabelTextColor];
    v49 = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v37 = [(SFAccountDetailTOTPTableViewCell *)v4 registerForTraitChanges:v36 withTarget:v4 action:sel__updateTitleAndVerificationCodeStackView];

    v38 = v4;
  }

  return v4;
}

- (void)dealloc
{
  [(NSTimer *)self->_codeUpdateTimer invalidate];
  v3.receiver = self;
  v3.super_class = SFAccountDetailTOTPTableViewCell;
  [(SFAccountDetailTOTPTableViewCell *)&v3 dealloc];
}

- (void)configureWithGenerator:(id)generator
{
  generatorCopy = generator;
  objc_storeStrong(&self->_generator, generator);
  if (self->_generator)
  {
    [(SFAccountDetailTOTPTableViewCell *)self _updateCodeAndLabels];
    [(SFAccountDetailTOTPTableViewCell *)self _startTOTPTimerIfNeeded];
  }

  else
  {
    [(NSTimer *)self->_codeUpdateTimer invalidate];
    codeUpdateTimer = self->_codeUpdateTimer;
    self->_codeUpdateTimer = 0;
  }
}

- (void)_updateCodeAndLabels
{
  _formattedCode = [(SFAccountDetailTOTPTableViewCell *)self _formattedCode];
  [(UILabel *)self->_verificationCodeLabel setAttributedText:_formattedCode];

  pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
  pm_passwordManagerIsInDemoMode = [pm_defaults pm_passwordManagerIsInDemoMode];

  if ((pm_passwordManagerIsInDemoMode & 1) == 0)
  {
    layer = [(UILabel *)self->_verificationCodeLabel layer];
    [layer setDisableUpdateMask:18];
  }

  _attributedSubtitleString = [(SFAccountDetailTOTPTableViewCell *)self _attributedSubtitleString];
  [(UILabel *)self->_subtitleLabel setAttributedText:_attributedSubtitleString];

  [(SFAccountDetailTOTPTableViewCell *)self setNeedsLayout];
}

- (id)_formattedCode
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  generator = self->_generator;
  date = [MEMORY[0x1E695DF00] date];
  v6 = [(WBSTOTPGenerator *)generator codeForDate:date];
  v7 = [v3 initWithString:v6];

  if ([v7 length] >= 5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v7 insertAttributedString:v8 atIndex:{-[WBSTOTPGenerator numberOfDigitsInCode](self->_generator, "numberOfDigitsInCode") >> 1}];
  }

  v9 = verificationCodeFont();
  v10 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
  v11 = [v10 scaledFontForFont:v9];

  v12 = *MEMORY[0x1E69DB748];
  v18[0] = *MEMORY[0x1E69DB648];
  v18[1] = v12;
  v19[0] = v9;
  v13 = MEMORY[0x1E696AD98];
  [v11 pointSize];
  v15 = [v13 numberWithDouble:v14 * 0.15];
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  [v7 addAttributes:v16 range:{0, objc_msgSend(v7, "length")}];

  return v7;
}

- (void)_startTOTPTimerIfNeeded
{
  if (!self->_codeUpdateTimer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __59__SFAccountDetailTOTPTableViewCell__startTOTPTimerIfNeeded__block_invoke;
    v10 = &unk_1E8490860;
    objc_copyWeak(&v11, &location);
    v4 = [v3 timerWithTimeInterval:1 repeats:&v7 block:0.25];
    codeUpdateTimer = self->_codeUpdateTimer;
    self->_codeUpdateTimer = v4;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_codeUpdateTimer forMode:*MEMORY[0x1E695DA28]];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __59__SFAccountDetailTOTPTableViewCell__startTOTPTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCodeAndLabels];
}

- (id)_attributedSubtitleString
{
  generator = self->_generator;
  date = [MEMORY[0x1E695DF00] date];
  v5 = [(WBSTOTPGenerator *)generator startDateOfIntervalContainingDate:date];

  [v5 timeIntervalSinceNow];
  v7 = [(SFAccountDetailTOTPTableViewCell *)self _attributedSubtitleStringWithRemainingSeconds:[(WBSTOTPGenerator *)self->_generator codeGenerationPeriod]- vcvtmd_u64_f64(-v6)];

  return v7;
}

- (id)_attributedSubtitleStringWithRemainingSeconds:(unint64_t)seconds
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [MEMORY[0x1E69C8A60] countdownStringForSecondsRemaining:seconds];
  v10 = *MEMORY[0x1E69DB648];
  v6 = subtitleFont();
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 initWithString:v5 attributes:v7];

  return v8;
}

- (void)_updateTitleAndVerificationCodeStackView
{
  traitCollection = [(SFAccountDetailTOTPTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(UIStackView *)self->_titleAndVerificationCodeStackView setAxis:IsAccessibilityCategory];
  [(UIStackView *)self->_titleAndVerificationCodeStackView setAlignment:v6];
  traitCollection2 = [(SFAccountDetailTOTPTableViewCell *)self traitCollection];
  layoutDirection = [traitCollection2 layoutDirection];

  if ((layoutDirection + 1) >= 2)
  {
    if (layoutDirection != 1)
    {
      return;
    }

    if (IsAccessibilityCategory)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (IsAccessibilityCategory)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  verificationCodeLabel = self->_verificationCodeLabel;

  [(UILabel *)verificationCodeLabel setTextAlignment:v9];
}

- (void)setOverrideVerificationCodeLabelTextColor:(id)color
{
  objc_storeStrong(&self->_overrideVerificationCodeLabelTextColor, color);

  [(SFAccountDetailTOTPTableViewCell *)self _updateVerificationCodeLabelTextColor];
}

- (void)_updateVerificationCodeLabelTextColor
{
  if (self->_overrideVerificationCodeLabelTextColor)
  {
    verificationCodeLabel = self->_verificationCodeLabel;

    [(UILabel *)verificationCodeLabel setTextColor:?];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)self->_verificationCodeLabel setTextColor:secondaryLabelColor];
  }
}

@end