@interface AIAudiogramV2ResultDateCell
- (AIAudiogramResultDateCellDelegate)delegate;
- (AIAudiogramV2ResultDateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_datePickerValueChanged:(id)a3;
- (void)configureLayout;
- (void)setDate:(id)a3;
@end

@implementation AIAudiogramV2ResultDateCell

- (AIAudiogramV2ResultDateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v55[3] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = AIAudiogramV2ResultDateCell;
  v4 = [(AIAudiogramV2ResultDateCell *)&v53 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    [(AIAudiogramV2ResultDateCell *)v4 setTitleLabel:v5];

    v6 = aiLocString(@"AudiogramIngestionResultsDateV2");
    v7 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    [v7 setText:v6];

    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
    v11 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    [v11 setFont:v10];

    v12 = objc_opt_new();
    [(AIAudiogramV2ResultDateCell *)v4 setDatePicker:v12];

    v13 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [v13 setDatePickerMode:1];

    v14 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [v14 setPreferredDatePickerStyle:2];

    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [v16 setMaximumDate:v15];

    v17 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [v17 addTarget:v4 action:sel__datePickerValueChanged_ forControlEvents:4096];

    v18 = objc_alloc(MEMORY[0x277D75A68]);
    v19 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    v55[0] = v19;
    v20 = objc_opt_new();
    v55[1] = v20;
    v21 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    v55[2] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
    v23 = [v18 initWithArrangedSubviews:v22];
    [(AIAudiogramV2ResultDateCell *)v4 setContentStackView:v23];

    v24 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [v24 setAxis:0];

    v25 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [v25 setDistribution:0];

    v26 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [v26 setAlignment:0];

    v27 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    v29 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [v28 addSubview:v29];

    v44 = MEMORY[0x277CCAAD0];
    v52 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    v50 = [v52 leadingAnchor];
    v51 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    v49 = [v51 leadingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:16.0];
    v54[0] = v48;
    v47 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    v45 = [v47 trailingAnchor];
    v46 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    v43 = [v46 trailingAnchor];
    v42 = [v45 constraintEqualToAnchor:v43 constant:-10.0];
    v54[1] = v42;
    v41 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    v40 = [v41 topAnchor];
    v30 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    v31 = [v30 topAnchor];
    v32 = [v40 constraintEqualToAnchor:v31 constant:5.0];
    v54[2] = v32;
    v33 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    v34 = [v33 bottomAnchor];
    v35 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    v36 = [v35 bottomAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:-5.0];
    v54[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    [v44 activateConstraints:v38];
  }

  return v4;
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramV2ResultDateCell *)self datePicker];
  [v5 setDate:v4];
}

- (void)_datePickerValueChanged:(id)a3
{
  v4 = a3;
  v6 = [(AIAudiogramV2ResultDateCell *)self delegate];
  v5 = [v4 date];

  [v6 dateCellDidPickDate:v5];
}

- (void)configureLayout
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [(AIAudiogramV2ResultDateCell *)self titleLabel];
  v4 = [v3 text];
  [(AIAudiogramV2ResultDateCell *)self frame];
  v6 = v5;
  v8 = v7;
  v17 = *MEMORY[0x277D740A8];
  v9 = [(AIAudiogramV2ResultDateCell *)self titleLabel];
  v10 = [v9 font];
  v18[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v4 boundingRectWithSize:32 options:v11 attributes:0 context:{v6, v8}];
  *&v6 = CGRectGetWidth(v19);

  v12 = [(AIAudiogramV2ResultDateCell *)self contentView];
  [v12 frame];
  v14 = v13 * 0.4 < *&v6;

  v15 = [(AIAudiogramV2ResultDateCell *)self contentStackView];
  [v15 setAxis:v14];

  v16 = [(AIAudiogramV2ResultDateCell *)self contentStackView];
  [v16 setAlignment:v14];
}

- (id)accessibilityLabel
{
  v2 = [(AIAudiogramV2ResultDateCell *)self titleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = MEMORY[0x277CCA968];
  v3 = [(AIAudiogramV2ResultDateCell *)self datePicker];
  v4 = [v3 date];
  v5 = [v2 localizedStringFromDate:v4 dateStyle:3 timeStyle:0];

  return v5;
}

- (BOOL)accessibilityActivate
{
  v3 = [(AIAudiogramV2ResultDateCell *)self datePicker];
  v4 = [v3 subviews];
  v5 = [v4 firstObject];
  v6 = [v5 accessibilityActivate];

  if (v6)
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = AIAudiogramV2ResultDateCell;
  return [(AIAudiogramV2ResultDateCell *)&v8 accessibilityActivate];
}

- (AIAudiogramResultDateCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end