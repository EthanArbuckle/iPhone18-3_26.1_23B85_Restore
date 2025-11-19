@interface AIAudiogramResultEarCell
- (AIAudiogramResultEarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AIAudiogramResultEarCellDelegate)delegate;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (id)accessibilityLabel;
- (void)_textFieldEditingChanged:(id)a3;
- (void)configureLayout;
- (void)setFrequency:(id)a3;
- (void)setHearingLevel:(id)a3;
- (void)setKeyboardToolbar:(id)a3;
- (void)showActive:(BOOL)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation AIAudiogramResultEarCell

- (AIAudiogramResultEarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v86[3] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = AIAudiogramResultEarCell;
  v4 = [(AIAudiogramResultEarCell *)&v83 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultEarCell semanticContentAttribute](v4, "semanticContentAttribute")}] != 1;
    v7 = objc_opt_new();
    [(AIAudiogramResultEarCell *)v5 setTitleLabel:v7];

    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    [v9 setTextColor:v8];

    v10 = *MEMORY[0x277D76918];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v12 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    [v12 setFont:v11];

    v13 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    LODWORD(v14) = 1144750080;
    [v13 setContentHuggingPriority:0 forAxis:v14];

    v15 = objc_opt_new();
    [(AIAudiogramResultEarCell *)v5 setValueUnitLabel:v15];

    v16 = 2 * v6;
    v17 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [v17 setTextAlignment:v16];

    v18 = [MEMORY[0x277D75348] secondaryLabelColor];
    v19 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [v19 setTextColor:v18];

    v20 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
    v21 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [v21 setText:v20];

    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    v23 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    [v23 setFont:v22];

    v24 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    LODWORD(v25) = 1144750080;
    [v24 setContentHuggingPriority:0 forAxis:v25];

    v26 = objc_opt_new();
    [(AIAudiogramResultEarCell *)v5 setValueTextField:v26];

    v27 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v27 setTextAlignment:v16];

    v28 = [MEMORY[0x277D75348] secondaryLabelColor];
    v29 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v29 setTextColor:v28];

    v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    v31 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v31 setFont:v30];

    v32 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v32 setKeyboardType:4];

    v33 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v33 setReturnKeyType:9];

    v34 = aiLocString(@"AudiogramIngestionResultsNoData");
    v35 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v35 setPlaceholder:v34];

    v36 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    LODWORD(v37) = 1132068864;
    [v36 setContentCompressionResistancePriority:0 forAxis:v37];

    v38 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v38 addTarget:v5 action:sel__textFieldEditingChanged_ forControlEvents:0x20000];

    v39 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    [v39 setDelegate:v5];

    v40 = objc_alloc(MEMORY[0x277D75A68]);
    v41 = [(AIAudiogramResultEarCell *)v5 titleLabel];
    v86[0] = v41;
    v42 = [(AIAudiogramResultEarCell *)v5 valueTextField];
    v86[1] = v42;
    v43 = [(AIAudiogramResultEarCell *)v5 valueUnitLabel];
    v86[2] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
    v45 = [v40 initWithArrangedSubviews:v44];
    [(AIAudiogramResultEarCell *)v5 setLabelStackView:v45];

    v46 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [v46 setAxis:0];

    v47 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [v47 setDistribution:0];

    v48 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [v48 setAlignment:0];

    v49 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    [v49 setSpacing:8.0];

    v50 = objc_alloc(MEMORY[0x277D75A68]);
    v51 = [(AIAudiogramResultEarCell *)v5 labelStackView];
    v85 = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v53 = [v50 initWithArrangedSubviews:v52];
    [(AIAudiogramResultEarCell *)v5 setVerticalStackView:v53];

    v54 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [v54 setAxis:1];

    v55 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [v55 setDistribution:0];

    v56 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [v56 setAlignment:0];

    v57 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];

    v58 = [(AIAudiogramResultEarCell *)v5 contentView];
    v59 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    [v58 addSubview:v59];

    v74 = MEMORY[0x277CCAAD0];
    v82 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    v80 = [v82 leadingAnchor];
    v81 = [(AIAudiogramResultEarCell *)v5 contentView];
    v79 = [v81 leadingAnchor];
    v78 = [v80 constraintEqualToAnchor:v79 constant:16.0];
    v84[0] = v78;
    v77 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    v75 = [v77 trailingAnchor];
    v76 = [(AIAudiogramResultEarCell *)v5 contentView];
    v73 = [v76 trailingAnchor];
    v72 = [v75 constraintEqualToAnchor:v73 constant:-16.0];
    v84[1] = v72;
    v71 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    v70 = [v71 topAnchor];
    v60 = [(AIAudiogramResultEarCell *)v5 contentView];
    v61 = [v60 topAnchor];
    v62 = [v70 constraintEqualToAnchor:v61 constant:16.0];
    v84[2] = v62;
    v63 = [(AIAudiogramResultEarCell *)v5 verticalStackView];
    v64 = [v63 bottomAnchor];
    v65 = [(AIAudiogramResultEarCell *)v5 contentView];
    v66 = [v65 bottomAnchor];
    v67 = [v64 constraintEqualToAnchor:v66 constant:-16.0];
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
  v3 = [(AIAudiogramResultEarCell *)self titleLabel];
  v4 = [v3 text];
  [(AIAudiogramResultEarCell *)self frame];
  v6 = v5;
  v8 = v7;
  v31 = *MEMORY[0x277D740A8];
  v9 = v31;
  v10 = [(AIAudiogramResultEarCell *)self titleLabel];
  v11 = [v10 font];
  v32[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v4 boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v33);

  v14 = [(AIAudiogramResultEarCell *)self valueUnitLabel];
  v15 = [v14 text];
  [(AIAudiogramResultEarCell *)self frame];
  v17 = v16;
  v19 = v18;
  v29 = v9;
  v20 = [(AIAudiogramResultEarCell *)self valueUnitLabel];
  v21 = [v20 font];
  v30 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v15 boundingRectWithSize:32 options:v22 attributes:0 context:{v17, v19}];
  *&v17 = CGRectGetWidth(v34);

  v23 = [(AIAudiogramResultEarCell *)self titleLabel];
  [v23 removeFromSuperview];

  [(AIAudiogramResultEarCell *)self frame];
  if (CGRectGetWidth(v35) * 0.6 >= (Width + *&v17))
  {
    v25 = 2 * ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultEarCell semanticContentAttribute](self, "semanticContentAttribute")}] != 1);
    v26 = [(AIAudiogramResultEarCell *)self valueTextField];
    [v26 setTextAlignment:v25];

    [(AIAudiogramResultEarCell *)self labelStackView];
  }

  else
  {
    v24 = [(AIAudiogramResultEarCell *)self valueTextField];
    [v24 setTextAlignment:4];

    [(AIAudiogramResultEarCell *)self verticalStackView];
  }
  v27 = ;
  v28 = [(AIAudiogramResultEarCell *)self titleLabel];
  [v27 insertArrangedSubview:v28 atIndex:0];
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
  v15 = [(AIAudiogramResultEarCell *)self titleLabel];
  [v15 setText:v14];
}

- (void)setHearingLevel:(id)a3
{
  v4 = validateHearingLevel(a3);
  hearingLevel = self->_hearingLevel;
  self->_hearingLevel = v4;

  v7 = [(NSNumber *)self->_hearingLevel stringValue];
  v6 = [(AIAudiogramResultEarCell *)self valueTextField];
  [v6 setText:v7];
}

- (void)showActive:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = AXLogAudiogram();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AIAudiogramResultEarCell *)self frequency];
    *buf = 67109634;
    v8 = v3;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = self;
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

- (void)setKeyboardToolbar:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramResultEarCell *)self valueTextField];
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

  v11 = [(AIAudiogramResultEarCell *)self delegate];
  v9 = [(AIAudiogramResultEarCell *)self hearingLevel];
  v10 = [(AIAudiogramResultEarCell *)self frequency];
  [v11 earCellDidUpdateHearingLevel:v9 forFrequency:v10 forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  v4 = v7;
  AXPerformBlockOnMainThreadAfterDelay();
  v5 = [(AIAudiogramResultEarCell *)self delegate];
  v6 = [(AIAudiogramResultEarCell *)self frequency];
  [v5 earCellDidBeginEditingForFrequency:v6 forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
}

void __53__AIAudiogramResultEarCell_textFieldDidBeginEditing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) endOfDocument];
  v2 = [*(a1 + 32) textRangeFromPosition:v3 toPosition:v3];
  [*(a1 + 32) setSelectedTextRange:v2];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v5 = [(AIAudiogramResultEarCell *)self delegate];
  v4 = [(AIAudiogramResultEarCell *)self frequency];
  [v5 earCellDidEndEditingForFrequency:v4 forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  v12 = objc_opt_new();
  v13 = [v12 numberFromString:v11];

  v14 = validateHearingLevel(v13);
  v15 = [v14 stringValue];
  v16 = [v11 isEqualToString:v15];
  if ((v16 & 1) == 0)
  {
    [(AIAudiogramResultEarCell *)self setHearingLevel:v14];
    v17 = [(AIAudiogramResultEarCell *)self delegate];
    v18 = [(AIAudiogramResultEarCell *)self hearingLevel];
    v19 = [(AIAudiogramResultEarCell *)self frequency];
    [v17 earCellDidUpdateHearingLevel:v18 forFrequency:v19 forEar:{-[AIAudiogramResultEarCell ear](self, "ear")}];
  }

  return v16;
}

- (id)accessibilityLabel
{
  v3 = [(AIAudiogramResultEarCell *)self titleLabel];
  v4 = [v3 text];

  v5 = [(AIAudiogramResultEarCell *)self hearingLevel];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(AIAudiogramResultEarCell *)self valueTextField];
    v8 = [v7 text];
    v9 = [(AIAudiogramResultEarCell *)self valueUnitLabel];
    v10 = [v9 text];
    v11 = [v6 stringWithFormat:@" %@ %@", v8, v10];
    v12 = [v4 stringByAppendingString:v11];

    v4 = v12;
  }

  return v4;
}

- (AIAudiogramResultEarCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end