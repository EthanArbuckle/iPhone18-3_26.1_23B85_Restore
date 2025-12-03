@interface AIAudiogramResultDateCell
- (AIAudiogramResultDateCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AIAudiogramResultDateCellDelegate)delegate;
- (unint64_t)accessibilityTraits;
- (void)_datePickerValueChanged:(id)changed;
- (void)configureLayout;
- (void)setDate:(id)date;
- (void)showActive:(BOOL)active;
@end

@implementation AIAudiogramResultDateCell

- (AIAudiogramResultDateCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v88[2] = *MEMORY[0x277D85DE8];
  v85.receiver = self;
  v85.super_class = AIAudiogramResultDateCell;
  v4 = [(AIAudiogramResultDateCell *)&v85 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultDateCell semanticContentAttribute](v4, "semanticContentAttribute")}] != 1;
    v7 = objc_opt_new();
    [(AIAudiogramResultDateCell *)v5 setTitleLabel:v7];

    v8 = aiLocString(@"AudiogramIngestionResultsDate");
    titleLabel = [(AIAudiogramResultDateCell *)v5 titleLabel];
    [titleLabel setText:v8];

    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel2 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    [titleLabel2 setTextColor:labelColor];

    v12 = *MEMORY[0x277D76918];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel3 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    [titleLabel3 setFont:v13];

    v15 = objc_opt_new();
    [(AIAudiogramResultDateCell *)v5 setValueLabel:v15];

    valueLabel = [(AIAudiogramResultDateCell *)v5 valueLabel];
    [valueLabel setTextAlignment:2 * v6];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    valueLabel2 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    [valueLabel2 setTextColor:secondaryLabelColor];

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:v12];
    valueLabel3 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    [valueLabel3 setFont:v19];

    v21 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel4 = [(AIAudiogramResultDateCell *)v5 titleLabel];
    v88[0] = titleLabel4;
    valueLabel4 = [(AIAudiogramResultDateCell *)v5 valueLabel];
    v88[1] = valueLabel4;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v25 = [v21 initWithArrangedSubviews:v24];
    [(AIAudiogramResultDateCell *)v5 setLabelStackView:v25];

    labelStackView = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [labelStackView setAxis:0];

    labelStackView2 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [labelStackView2 setDistribution:0];

    labelStackView3 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [labelStackView3 setAlignment:0];

    labelStackView4 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [labelStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramResultDateCell *)v5 contentView];
    labelStackView5 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    [contentView addSubview:labelStackView5];

    v32 = objc_opt_new();
    [(AIAudiogramResultDateCell *)v5 setDatePicker:v32];

    datePicker = [(AIAudiogramResultDateCell *)v5 datePicker];
    [datePicker setDatePickerMode:1];

    datePicker2 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [datePicker2 setPreferredDatePickerStyle:3];

    datePicker3 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [datePicker3 setTranslatesAutoresizingMaskIntoConstraints:0];

    datePicker4 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [datePicker4 setHidden:1];

    datePicker5 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [datePicker5 addTarget:v5 action:sel__datePickerValueChanged_ forControlEvents:4096];

    contentView2 = [(AIAudiogramResultDateCell *)v5 contentView];
    datePicker6 = [(AIAudiogramResultDateCell *)v5 datePicker];
    [contentView2 addSubview:datePicker6];

    labelStackView6 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    bottomAnchor = [labelStackView6 bottomAnchor];
    contentView3 = [(AIAudiogramResultDateCell *)v5 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    [(AIAudiogramResultDateCell *)v5 setCollapsedConstraint:v44];

    labelStackView7 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    bottomAnchor3 = [labelStackView7 bottomAnchor];
    datePicker7 = [(AIAudiogramResultDateCell *)v5 datePicker];
    topAnchor = [datePicker7 topAnchor];
    v47 = [bottomAnchor3 constraintEqualToAnchor:topAnchor constant:-16.0];
    v87[0] = v47;
    datePicker8 = [(AIAudiogramResultDateCell *)v5 datePicker];
    bottomAnchor4 = [datePicker8 bottomAnchor];
    contentView4 = [(AIAudiogramResultDateCell *)v5 contentView];
    bottomAnchor5 = [contentView4 bottomAnchor];
    v52 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-16.0];
    v87[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    [(AIAudiogramResultDateCell *)v5 setExpandedConstraints:v53];

    v71 = MEMORY[0x277CCAAD0];
    labelStackView8 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    leadingAnchor = [labelStackView8 leadingAnchor];
    contentView5 = [(AIAudiogramResultDateCell *)v5 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v78 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v86[0] = v78;
    labelStackView9 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    trailingAnchor = [labelStackView9 trailingAnchor];
    contentView6 = [(AIAudiogramResultDateCell *)v5 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v73 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v86[1] = v73;
    labelStackView10 = [(AIAudiogramResultDateCell *)v5 labelStackView];
    topAnchor2 = [labelStackView10 topAnchor];
    contentView7 = [(AIAudiogramResultDateCell *)v5 contentView];
    topAnchor3 = [contentView7 topAnchor];
    v67 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:16.0];
    v86[2] = v67;
    collapsedConstraint = [(AIAudiogramResultDateCell *)v5 collapsedConstraint];
    v86[3] = collapsedConstraint;
    datePicker9 = [(AIAudiogramResultDateCell *)v5 datePicker];
    leadingAnchor3 = [datePicker9 leadingAnchor];
    contentView8 = [(AIAudiogramResultDateCell *)v5 contentView];
    leadingAnchor4 = [contentView8 leadingAnchor];
    v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v86[4] = v56;
    datePicker10 = [(AIAudiogramResultDateCell *)v5 datePicker];
    trailingAnchor3 = [datePicker10 trailingAnchor];
    contentView9 = [(AIAudiogramResultDateCell *)v5 contentView];
    trailingAnchor4 = [contentView9 trailingAnchor];
    v61 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v86[5] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:6];
    [v71 activateConstraints:v62];
  }

  return v5;
}

- (void)configureLayout
{
  v31[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(AIAudiogramResultDateCell *)self titleLabel];
  text = [titleLabel text];
  [(AIAudiogramResultDateCell *)self frame];
  v6 = v5;
  v8 = v7;
  v30 = *MEMORY[0x277D740A8];
  v9 = v30;
  titleLabel2 = [(AIAudiogramResultDateCell *)self titleLabel];
  font = [titleLabel2 font];
  v31[0] = font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [text boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v32);

  valueLabel = [(AIAudiogramResultDateCell *)self valueLabel];
  text2 = [valueLabel text];
  [(AIAudiogramResultDateCell *)self frame];
  v17 = v16;
  v19 = v18;
  v28 = v9;
  valueLabel2 = [(AIAudiogramResultDateCell *)self valueLabel];
  font2 = [valueLabel2 font];
  v29 = font2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [text2 boundingRectWithSize:32 options:v22 attributes:0 context:{v17, v19}];
  *&v17 = CGRectGetWidth(v33);

  [(AIAudiogramResultDateCell *)self frame];
  v23 = CGRectGetWidth(v34) * 0.9;
  labelStackView = [(AIAudiogramResultDateCell *)self labelStackView];
  v25 = labelStackView;
  if (v23 >= (Width + *&v17))
  {
    [labelStackView setAxis:0];

    v26 = 2 * ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[AIAudiogramResultDateCell semanticContentAttribute](self, "semanticContentAttribute")}] != 1);
  }

  else
  {
    [labelStackView setAxis:1];

    v26 = 4;
  }

  valueLabel3 = [(AIAudiogramResultDateCell *)self valueLabel];
  [valueLabel3 setTextAlignment:v26];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  datePicker = [(AIAudiogramResultDateCell *)self datePicker];
  [datePicker setDate:dateCopy];

  v6 = MEMORY[0x277CCA968];
  datePicker2 = [(AIAudiogramResultDateCell *)self datePicker];
  date = [datePicker2 date];
  v8 = [v6 localizedStringFromDate:date dateStyle:3 timeStyle:0];
  valueLabel = [(AIAudiogramResultDateCell *)self valueLabel];
  [valueLabel setText:v8];
}

- (void)showActive:(BOOL)active
{
  activeCopy = active;
  v19 = *MEMORY[0x277D85DE8];
  datePicker = [(AIAudiogramResultDateCell *)self datePicker];
  isHidden = [datePicker isHidden];

  if (isHidden == activeCopy)
  {
    datePicker2 = [(AIAudiogramResultDateCell *)self datePicker];
    [datePicker2 setHidden:activeCopy ^ 1];

    collapsedConstraint = [(AIAudiogramResultDateCell *)self collapsedConstraint];
    [collapsedConstraint setActive:activeCopy ^ 1];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    expandedConstraints = [(AIAudiogramResultDateCell *)self expandedConstraints];
    v10 = [expandedConstraints countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(expandedConstraints);
          }

          [*(*(&v14 + 1) + 8 * v13++) setActive:activeCopy];
        }

        while (v11 != v13);
        v11 = [expandedConstraints countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_datePickerValueChanged:(id)changed
{
  v4 = MEMORY[0x277CCA968];
  changedCopy = changed;
  date = [changedCopy date];
  v7 = [v4 localizedStringFromDate:date dateStyle:3 timeStyle:0];
  valueLabel = [(AIAudiogramResultDateCell *)self valueLabel];
  [valueLabel setText:v7];

  delegate = [(AIAudiogramResultDateCell *)self delegate];
  date2 = [changedCopy date];

  [delegate dateCellDidPickDate:date2];
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