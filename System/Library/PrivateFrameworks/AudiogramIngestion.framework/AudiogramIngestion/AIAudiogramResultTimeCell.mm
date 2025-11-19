@interface AIAudiogramResultTimeCell
- (AIAudiogramResultTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AIAudiogramResultTimeCellDelegate)delegate;
- (unint64_t)accessibilityTraits;
- (void)_datePickerValueChanged:(id)a3;
- (void)configureLayout;
- (void)setDate:(id)a3;
@end

@implementation AIAudiogramResultTimeCell

- (AIAudiogramResultTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = AIAudiogramResultTimeCell;
  v4 = [(AIAudiogramResultTimeCell *)&v51 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AIAudiogramResultTimeCell *)v4 setSelectionStyle:0];
    v6 = objc_opt_new();
    [(AIAudiogramResultTimeCell *)v5 setTitleLabel:v6];

    v7 = aiLocString(@"AudiogramIngestionResultsTime");
    v8 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    [v8 setText:v7];

    v9 = [MEMORY[0x277D75348] labelColor];
    v10 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    [v10 setTextColor:v9];

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v12 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    [v12 setFont:v11];

    v13 = objc_opt_new();
    [(AIAudiogramResultTimeCell *)v5 setTimePicker:v13];

    v14 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    [v14 setDatePickerMode:0];

    v15 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    [v15 setPreferredDatePickerStyle:2];

    v16 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    [v16 addTarget:v5 action:sel__datePickerValueChanged_ forControlEvents:4096];

    v17 = objc_alloc(MEMORY[0x277D75A68]);
    v18 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    v53[0] = v18;
    v19 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    v53[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v21 = [v17 initWithArrangedSubviews:v20];
    [(AIAudiogramResultTimeCell *)v5 setLabelStackView:v21];

    v22 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [v22 setAxis:0];

    v23 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [v23 setDistribution:0];

    v24 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [v24 setAlignment:0];

    v25 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = [(AIAudiogramResultTimeCell *)v5 contentView];
    v27 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [v26 addSubview:v27];

    v42 = MEMORY[0x277CCAAD0];
    v50 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    v48 = [v50 leadingAnchor];
    v49 = [(AIAudiogramResultTimeCell *)v5 contentView];
    v47 = [v49 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:16.0];
    v52[0] = v46;
    v45 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    v43 = [v45 trailingAnchor];
    v44 = [(AIAudiogramResultTimeCell *)v5 contentView];
    v41 = [v44 trailingAnchor];
    v40 = [v43 constraintEqualToAnchor:v41 constant:-16.0];
    v52[1] = v40;
    v39 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    v38 = [v39 topAnchor];
    v28 = [(AIAudiogramResultTimeCell *)v5 contentView];
    v29 = [v28 topAnchor];
    v30 = [v38 constraintEqualToAnchor:v29 constant:16.0];
    v52[2] = v30;
    v31 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    v32 = [v31 bottomAnchor];
    v33 = [(AIAudiogramResultTimeCell *)v5 contentView];
    v34 = [v33 bottomAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:-16.0];
    v52[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    [v42 activateConstraints:v36];
  }

  return v5;
}

- (void)configureLayout
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = [(AIAudiogramResultTimeCell *)self titleLabel];
  v4 = [v3 text];
  [(AIAudiogramResultTimeCell *)self frame];
  v6 = v5;
  v8 = v7;
  v33 = *MEMORY[0x277D740A8];
  v9 = v33;
  v10 = [(AIAudiogramResultTimeCell *)self titleLabel];
  v11 = [v10 font];
  v34[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [v4 boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v35);

  v14 = MEMORY[0x277CCA968];
  v15 = [(AIAudiogramResultTimeCell *)self timePicker];
  v16 = [v15 date];
  v17 = [v14 localizedStringFromDate:v16 dateStyle:0 timeStyle:1];

  [(AIAudiogramResultTimeCell *)self frame];
  v19 = v18;
  v21 = v20;
  v31 = v9;
  v22 = [(AIAudiogramResultTimeCell *)self titleLabel];
  v23 = [v22 font];
  v32 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [v17 boundingRectWithSize:32 options:v24 attributes:0 context:{v19, v21}];
  *&v19 = CGRectGetWidth(v36);

  v25 = (Width + *&v19);
  [(AIAudiogramResultTimeCell *)self frame];
  v26 = CGRectGetWidth(v37) * 0.7;
  v27 = [(AIAudiogramResultTimeCell *)self labelStackView];
  v28 = v27;
  if (v26 >= v25)
  {
    v29 = 5;
  }

  else
  {
    v29 = 4;
  }

  [v27 setAxis:v26 < v25];

  v30 = [(AIAudiogramResultTimeCell *)self timePicker];
  [v30 setContentHorizontalAlignment:v29];
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramResultTimeCell *)self timePicker];
  [v5 setDate:v4];
}

- (void)_datePickerValueChanged:(id)a3
{
  v4 = a3;
  v6 = [(AIAudiogramResultTimeCell *)self delegate];
  v5 = [v4 date];

  [v6 timeCellDidPickDate:v5];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AIAudiogramResultTimeCell;
  return *MEMORY[0x277D76548] | [(AIAudiogramResultTimeCell *)&v3 accessibilityTraits];
}

- (AIAudiogramResultTimeCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end