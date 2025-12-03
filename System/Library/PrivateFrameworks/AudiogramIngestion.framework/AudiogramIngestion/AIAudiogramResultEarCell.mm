@interface AIAudiogramResultEarCell
- (AIAudiogramResultEarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AIAudiogramResultEarCellDelegate)delegate;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (id)accessibilityLabel;
- (void)_textFieldEditingChanged:(id)changed;
- (void)configureLayout;
- (void)setFrequency:(id)frequency;
- (void)setHearingLevel:(id)level;
- (void)setKeyboardToolbar:(id)toolbar;
- (void)showActive:(BOOL)active;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation AIAudiogramResultEarCell

- (AIAudiogramResultEarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v86[3] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = AIAudiogramResultEarCell;
  v4 = [(AIAudiogramResultEarCell *)&v83 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultEarCell semanticContentAttribute](v4, "semanticContentAttribute")}] != 1;
    v7 = objc_opt_new();
    [(AIAudiogramResultEarCell *)v5 setTitleLabel:v7];

    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel = [(AIAudiogramResultEarCell *)v5 titleLabel];
    [titleLabel setTextColor:labelColor];

    v10 = *MEMORY[0x277D76918];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel2 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    [titleLabel2 setFont:v11];

    titleLabel3 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    LODWORD(v14) = 1144750080;
    [titleLabel3 setContentHuggingPriority:0 forAxis:v14];

    v15 = objc_opt_new();
    [(AIAudiogramResultEarCell *)v5 setValueUnitLabel:v15];

    v16 = 2 * v6;
    valueUnitLabel = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [valueUnitLabel setTextAlignment:v16];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    valueUnitLabel2 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [valueUnitLabel2 setTextColor:secondaryLabelColor];

    v20 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    valueUnitLabel3 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [valueUnitLabel3 setText:v20];

    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    valueUnitLabel4 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [valueUnitLabel4 setFont:v22];

    valueUnitLabel5 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    LODWORD(v25) = 1144750080;
    [valueUnitLabel5 setContentHuggingPriority:0 forAxis:v25];

    v26 = objc_opt_new();
    [(AIAudiogramResultEarCell *)v5 setValueTextField:v26];

    valueTextField = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField setTextAlignment:v16];

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    valueTextField2 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField2 setTextColor:secondaryLabelColor2];

    v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    valueTextField3 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField3 setFont:v30];

    valueTextField4 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField4 setKeyboardType:4];

    valueTextField5 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField5 setReturnKeyType:9];

    v34 = aiLocString(@"AudiogramIngestionResultsNoData");
    valueTextField6 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField6 setPlaceholder:v34];

    valueTextField7 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    LODWORD(v37) = 1132068864;
    [valueTextField7 setContentCompressionResistancePriority:0 forAxis:v37];

    valueTextField8 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField8 addTarget:v5 action:sel__textFieldEditingChanged_ forControlEvents:0x20000];

    valueTextField9 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [valueTextField9 setDelegate:v5];

    v40 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel4 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    v86[0] = titleLabel4;
    valueTextField10 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    v86[1] = valueTextField10;
    valueUnitLabel6 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    v86[2] = valueUnitLabel6;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
    v45 = [v40 initWithArrangedSubviews:v44];
    [(AIAudiogramResultEarCell *)v5 setLabelStackView:v45];

    labelStackView = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [labelStackView setAxis:0];

    labelStackView2 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [labelStackView2 setDistribution:0];

    labelStackView3 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [labelStackView3 setAlignment:0];

    labelStackView4 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [labelStackView4 setSpacing:8.0];

    v50 = objc_alloc(MEMORY[0x277D75A68]);
    labelStackView5 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    v85 = labelStackView5;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v53 = [v50 initWithArrangedSubviews:v52];
    [(AIAudiogramResultEarCell *)v5 setVerticalStackView:v53];

    verticalStackView = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [verticalStackView setAxis:1];

    verticalStackView2 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [verticalStackView2 setDistribution:0];

    verticalStackView3 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [verticalStackView3 setAlignment:0];

    verticalStackView4 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [verticalStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramResultEarCell *)v5 contentView];
    verticalStackView5 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [contentView addSubview:verticalStackView5];

    v74 = MEMORY[0x277CCAAD0];
    verticalStackView6 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    leadingAnchor = [verticalStackView6 leadingAnchor];
    contentView2 = [(AIAudiogramResultEarCell *)v5 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v78 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v84[0] = v78;
    verticalStackView7 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    trailingAnchor = [verticalStackView7 trailingAnchor];
    contentView3 = [(AIAudiogramResultEarCell *)v5 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v72 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v84[1] = v72;
    verticalStackView8 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    topAnchor = [verticalStackView8 topAnchor];
    contentView4 = [(AIAudiogramResultEarCell *)v5 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v62 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v84[2] = v62;
    verticalStackView9 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    bottomAnchor = [verticalStackView9 bottomAnchor];
    contentView5 = [(AIAudiogramResultEarCell *)v5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v67 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v84[3] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:4];
    [v74 activateConstraints:v68];

    [(AIAudiogramResultEarCell *)v5 setHearingLevel:0];
  }

  return v5;
}

- (void)configureLayout
{
  v32[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(AIAudiogramResultEarCell *)self titleLabel];
  text = [titleLabel text];
  [(AIAudiogramResultEarCell *)self frame];
  v6 = v5;
  v8 = v7;
  v31 = *MEMORY[0x277D740A8];
  v9 = v31;
  titleLabel2 = [(AIAudiogramResultEarCell *)self titleLabel];
  font = [titleLabel2 font];
  v32[0] = font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [text boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v33);

  valueUnitLabel = [(AIAudiogramResultEarCell *)self valueUnitLabel];
  text2 = [valueUnitLabel text];
  [(AIAudiogramResultEarCell *)self frame];
  v17 = v16;
  v19 = v18;
  v29 = v9;
  valueUnitLabel2 = [(AIAudiogramResultEarCell *)self valueUnitLabel];
  font2 = [valueUnitLabel2 font];
  v30 = font2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [text2 boundingRectWithSize:32 options:v22 attributes:0 context:{v17, v19}];
  *&v17 = CGRectGetWidth(v34);

  titleLabel3 = [(AIAudiogramResultEarCell *)self titleLabel];
  [titleLabel3 removeFromSuperview];

  [(AIAudiogramResultEarCell *)self frame];
  if (CGRectGetWidth(v35) * 0.6 >= (Width + *&v17))
  {
    v25 = 2 * ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultEarCell semanticContentAttribute](self, "semanticContentAttribute")}] != 1);
    valueTextField = [(AIAudiogramResultEarCell *)self valueTextField];
    [valueTextField setTextAlignment:v25];

    [(AIAudiogramResultEarCell *)self labelStackView];
  }

  else
  {
    valueTextField2 = [(AIAudiogramResultEarCell *)self valueTextField];
    [valueTextField2 setTextAlignment:4];

    [(AIAudiogramResultEarCell *)self verticalStackView];
  }
  v27 = ;
  titleLabel4 = [(AIAudiogramResultEarCell *)self titleLabel];
  [v27 insertArrangedSubview:titleLabel4 atIndex:0];
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
  titleLabel = [(AIAudiogramResultEarCell *)self titleLabel];
  [titleLabel setText:v14];
}

- (void)setHearingLevel:(id)level
{
  v4 = validateHearingLevel(level);
  hearingLevel = self->_hearingLevel;
  self->_hearingLevel = v4;

  stringValue = [(NSNumber *)self->_hearingLevel stringValue];
  valueTextField = [(AIAudiogramResultEarCell *)self valueTextField];
  [valueTextField setText:stringValue];
}

- (void)showActive:(BOOL)active
{
  activeCopy = active;
  v13 = *MEMORY[0x277D85DE8];
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    frequency = [(AIAudiogramResultEarCell *)self frequency];
    *buf = 67109634;
    v8 = activeCopy;
    v9 = 2112;
    v10 = frequency;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Ear cell will activate? %d (%@) %@", buf, 0x1Cu);
  }

  AXPerformBlockOnMainThread();
}

void __39__AIAudiogramResultEarCell_showActive___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
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
    v10 = [*(a1 + 32) frequency];
    v11 = *(a1 + 32);
    v17[0] = 67110402;
    v17[1] = v4;
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_24179B000, v2, OS_LOG_TYPE_INFO, "Ear cell is activating %d->%d %d? %d? %@ %@", v17, 0x2Eu);
  }

  if (*(a1 + 40) == 1)
  {
    v12 = [*(a1 + 32) valueTextField];
    v13 = [v12 isFirstResponder];

    if (!v13)
    {
      v16 = [*(a1 + 32) valueTextField];
      [v16 becomeFirstResponder];
      goto LABEL_9;
    }

    if (*(a1 + 40))
    {
      return;
    }
  }

  v14 = [*(a1 + 32) valueTextField];
  v15 = [v14 isFirstResponder];

  if (!v15)
  {
    return;
  }

  v16 = [*(a1 + 32) valueTextField];
  [v16 resignFirstResponder];
LABEL_9:
}

- (void)setKeyboardToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  valueTextField = [(AIAudiogramResultEarCell *)self valueTextField];
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

  delegate = [(AIAudiogramResultEarCell *)self delegate];
  hearingLevel = [(AIAudiogramResultEarCell *)self hearingLevel];
  frequency = [(AIAudiogramResultEarCell *)self frequency];
  [delegate earCellDidUpdateHearingLevel:hearingLevel forFrequency:frequency forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v4 = editingCopy;
  AXPerformBlockOnMainThreadAfterDelay();
  delegate = [(AIAudiogramResultEarCell *)self delegate];
  frequency = [(AIAudiogramResultEarCell *)self frequency];
  [delegate earCellDidBeginEditingForFrequency:frequency forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
}

void __53__AIAudiogramResultEarCell_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) endOfDocument];
  v2 = [*(a1 + 32) textRangeFromPosition:v3 toPosition:v3];
  [*(a1 + 32) setSelectedTextRange:v2];
}

- (void)textFieldDidEndEditing:(id)editing
{
  delegate = [(AIAudiogramResultEarCell *)self delegate];
  frequency = [(AIAudiogramResultEarCell *)self frequency];
  [delegate earCellDidEndEditingForFrequency:frequency forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v12 = objc_opt_new();
  v13 = [v12 numberFromString:v11];

  v14 = validateHearingLevel(v13);
  stringValue = [v14 stringValue];
  v16 = [v11 isEqualToString:stringValue];
  if ((v16 & 1) == 0)
  {
    [(AIAudiogramResultEarCell *)self setHearingLevel:v14];
    delegate = [(AIAudiogramResultEarCell *)self delegate];
    hearingLevel = [(AIAudiogramResultEarCell *)self hearingLevel];
    frequency = [(AIAudiogramResultEarCell *)self frequency];
    [delegate earCellDidUpdateHearingLevel:hearingLevel forFrequency:frequency forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
  }

  return v16;
}

- (id)accessibilityLabel
{
  titleLabel = [(AIAudiogramResultEarCell *)self titleLabel];
  text = [titleLabel text];

  hearingLevel = [(AIAudiogramResultEarCell *)self hearingLevel];

  if (hearingLevel)
  {
    v6 = MEMORY[0x277CCACA8];
    valueTextField = [(AIAudiogramResultEarCell *)self valueTextField];
    text2 = [valueTextField text];
    valueUnitLabel = [(AIAudiogramResultEarCell *)self valueUnitLabel];
    text3 = [valueUnitLabel text];
    v11 = [v6 stringWithFormat:@" %@ %@", text2, text3];
    v12 = [text stringByAppendingString:v11];

    text = v12;
  }

  return text;
}

- (AIAudiogramResultEarCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end