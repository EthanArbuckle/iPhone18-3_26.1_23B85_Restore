@interface AIAudiogramResultDateCell
- (AIAudiogramResultDateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (AIAudiogramResultDateCellDelegate)delegate;
- (unint64_t)accessibilityTraits;
- (void)_datePickerValueChanged:(id)a3;
- (void)configureLayout;
- (void)setDate:(id)a3;
- (void)showActive:(BOOL)a3;
@end

@implementation AIAudiogramResultDateCell

- (AIAudiogramResultDateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v88[2] = *MEMORY[0x277D85DE8];
  v85.receiver = self;
  v85.super_class = AIAudiogramResultDateCell;
  v4 = [(AIAudiogramResultDateCell *)&v85 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultDateCell semanticContentAttribute](v4, "semanticContentAttribute")}] != 1;
    v7 = objc_opt_new();
    [(AIAudiogramResultDateCell *)v5 setTitleLabel:v7];

    v8 = aiLocString(@"AudiogramIngestionResultsDate");
    v9 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    [v9 setText:v8];

    v10 = [MEMORY[0x277D75348] labelColor];
    v11 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    [v11 setTextColor:v10];

    v12 = *MEMORY[0x277D76918];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v14 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    [v14 setFont:v13];

    v15 = objc_opt_new();
    [(AIAudiogramResultDateCell *)v5 setValueLabel:v15];

    v16 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    [v16 setTextAlignment:2 * v6];

    v17 = [MEMORY[0x277D75348] secondaryLabelColor];
    v18 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    [v18 setTextColor:v17];

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:v12];
    v20 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    [v20 setFont:v19];

    v21 = objc_alloc(MEMORY[0x277D75A68]);
    v22 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    v88[0] = v22;
    v23 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    v88[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v25 = [v21 initWithArrangedSubviews:v24];
    [(AIAudiogramResultDateCell *)v5 setLabelStackView:v25];

    v26 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [v26 setAxis:0];

    v27 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [v27 setDistribution:0];

    v28 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [v28 setAlignment:0];

    v29 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(AIAudiogramResultDateCell *)v5 contentView];
    v31 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [v30 addSubview:v31];

    v32 = objc_opt_new();
    [(AIAudiogramResultDateCell *)v5 setDatePicker:v32];

    v33 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [v33 setDatePickerMode:1];

    v34 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [v34 setPreferredDatePickerStyle:3];

    v35 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

    v36 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [v36 setHidden:1];

    v37 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [v37 addTarget:v5 action:sel__datePickerValueChanged_ forControlEvents:4096];

    v38 = [(AIAudiogramResultDateCell *)v5 contentView];
    v39 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [v38 addSubview:v39];

    v40 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    v41 = [v40 bottomAnchor];
    v42 = [(AIAudiogramResultDateCell *)v5 contentView];
    v43 = [v42 bottomAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:-16.0];
    [(AIAudiogramResultDateCell *)v5 setCollapsedConstraint:v44];

    v83 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    v81 = [v83 bottomAnchor];
    v45 = [(AIAudiogramResultDateCell *)v5 datePicker];
    v46 = [v45 topAnchor];
    v47 = [v81 constraintEqualToAnchor:v46 constant:-16.0];
    v87[0] = v47;
    v48 = [(AIAudiogramResultDateCell *)v5 datePicker];
    v49 = [v48 bottomAnchor];
    v50 = [(AIAudiogramResultDateCell *)v5 contentView];
    v51 = [v50 bottomAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:-16.0];
    v87[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    [(AIAudiogramResultDateCell *)v5 setExpandedConstraints:v53];

    v71 = MEMORY[0x277CCAAD0];
    v84 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    v80 = [v84 leadingAnchor];
    v82 = [(AIAudiogramResultDateCell *)v5 contentView];
    v79 = [v82 leadingAnchor];
    v78 = [v80 constraintEqualToAnchor:v79 constant:16.0];
    v86[0] = v78;
    v77 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    v75 = [v77 trailingAnchor];
    v76 = [(AIAudiogramResultDateCell *)v5 contentView];
    v74 = [v76 trailingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74 constant:-16.0];
    v86[1] = v73;
    v72 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    v69 = [v72 topAnchor];
    v70 = [(AIAudiogramResultDateCell *)v5 contentView];
    v68 = [v70 topAnchor];
    v67 = [v69 constraintEqualToAnchor:v68 constant:16.0];
    v86[2] = v67;
    v66 = [(AIAudiogramResultDateCell *)v5 collapsedConstraint];
    v86[3] = v66;
    v65 = [(AIAudiogramResultDateCell *)v5 datePicker];
    v64 = [v65 leadingAnchor];
    v54 = [(AIAudiogramResultDateCell *)v5 contentView];
    v55 = [v54 leadingAnchor];
    v56 = [v64 constraintEqualToAnchor:v55 constant:16.0];
    v86[4] = v56;
    v57 = [(AIAudiogramResultDateCell *)v5 datePicker];
    v58 = [v57 trailingAnchor];
    v59 = [(AIAudiogramResultDateCell *)v5 contentView];
    v60 = [v59 trailingAnchor];
    v61 = [v58 constraintEqualToAnchor:v60 constant:-16.0];
    v86[5] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:6];
    [v71 activateConstraints:v62];
  }

  return v5;
}

- (void)configureLayout
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = [(AIAudiogramResultDateCell *)self titleLabel];
  v4 = [v3 text];
  [(AIAudiogramResultDateCell *)self frame];
  v6 = v5;
  v8 = v7;
  v30 = *MEMORY[0x277D740A8];
  v9 = v30;
  v10 = [(AIAudiogramResultDateCell *)self titleLabel];
  v11 = [v10 font];
  v31[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v4 boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v32);

  v14 = [(AIAudiogramResultDateCell *)self valueLabel];
  v15 = [v14 text];
  [(AIAudiogramResultDateCell *)self frame];
  v17 = v16;
  v19 = v18;
  v28 = v9;
  v20 = [(AIAudiogramResultDateCell *)self valueLabel];
  v21 = [v20 font];
  v29 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v15 boundingRectWithSize:32 options:v22 attributes:0 context:{v17, v19}];
  *&v17 = CGRectGetWidth(v33);

  [(AIAudiogramResultDateCell *)self frame];
  v23 = CGRectGetWidth(v34) * 0.9;
  v24 = [(AIAudiogramResultDateCell *)self labelStackView];
  v25 = v24;
  if (v23 >= (Width + *&v17))
  {
    [v24 setAxis:0];

    v26 = 2 * ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultDateCell semanticContentAttribute](self, "semanticContentAttribute")}] != 1);
  }

  else
  {
    [v24 setAxis:1];

    v26 = 4;
  }

  v27 = [(AIAudiogramResultDateCell *)self valueLabel];
  [v27 setTextAlignment:v26];
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramResultDateCell *)self datePicker];
  [v5 setDate:v4];

  v6 = MEMORY[0x277CCA968];
  v10 = [(AIAudiogramResultDateCell *)self datePicker];
  v7 = [v10 date];
  v8 = [v6 localizedStringFromDate:v7 dateStyle:3 timeStyle:0];
  v9 = [(AIAudiogramResultDateCell *)self valueLabel];
  [v9 setText:v8];
}

- (void)showActive:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(AIAudiogramResultDateCell *)self datePicker];
  v6 = [v5 isHidden];

  if (v6 == v3)
  {
    v7 = [(AIAudiogramResultDateCell *)self datePicker];
    [v7 setHidden:v3 ^ 1];

    v8 = [(AIAudiogramResultDateCell *)self collapsedConstraint];
    [v8 setActive:v3 ^ 1];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(AIAudiogramResultDateCell *)self expandedConstraints];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) setActive:v3];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_datePickerValueChanged:(id)a3
{
  v4 = MEMORY[0x277CCA968];
  v5 = a3;
  v6 = [v5 date];
  v7 = [v4 localizedStringFromDate:v6 dateStyle:3 timeStyle:0];
  v8 = [(AIAudiogramResultDateCell *)self valueLabel];
  [v8 setText:v7];

  v10 = [(AIAudiogramResultDateCell *)self delegate];
  v9 = [v5 date];

  [v10 dateCellDidPickDate:v9];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AIAudiogramResultDateCell;
  return *MEMORY[0x277D76548] | [(AIAudiogramResultDateCell *)&v3 accessibilityTraits];
}

- (AIAudiogramResultDateCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end