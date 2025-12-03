@interface AIAudiogramResultTimeCell
- (AIAudiogramResultTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (AIAudiogramResultTimeCellDelegate)delegate;
- (unint64_t)accessibilityTraits;
- (void)_datePickerValueChanged:(id)changed;
- (void)configureLayout;
- (void)setDate:(id)date;
@end

@implementation AIAudiogramResultTimeCell

- (AIAudiogramResultTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v53[2] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = AIAudiogramResultTimeCell;
  v4 = [(AIAudiogramResultTimeCell *)&v51 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AIAudiogramResultTimeCell *)v4 setSelectionStyle:0];
    v6 = objc_opt_new();
    [(AIAudiogramResultTimeCell *)v5 setTitleLabel:v6];

    v7 = aiLocString(@"AudiogramIngestionResultsTime");
    titleLabel = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    [titleLabel setText:v7];

    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel2 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    [titleLabel2 setTextColor:labelColor];

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel3 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    [titleLabel3 setFont:v11];

    v13 = objc_opt_new();
    [(AIAudiogramResultTimeCell *)v5 setTimePicker:v13];

    timePicker = [(AIAudiogramResultTimeCell *)v5 timePicker];
    [timePicker setDatePickerMode:0];

    timePicker2 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    [timePicker2 setPreferredDatePickerStyle:2];

    timePicker3 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    [timePicker3 addTarget:v5 action:sel__datePickerValueChanged_ forControlEvents:4096];

    v17 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel4 = [(AIAudiogramResultTimeCell *)v5 titleLabel];
    v53[0] = titleLabel4;
    timePicker4 = [(AIAudiogramResultTimeCell *)v5 timePicker];
    v53[1] = timePicker4;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v21 = [v17 initWithArrangedSubviews:v20];
    [(AIAudiogramResultTimeCell *)v5 setLabelStackView:v21];

    labelStackView = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [labelStackView setAxis:0];

    labelStackView2 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [labelStackView2 setDistribution:0];

    labelStackView3 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [labelStackView3 setAlignment:0];

    labelStackView4 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [labelStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramResultTimeCell *)v5 contentView];
    labelStackView5 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    [contentView addSubview:labelStackView5];

    v42 = MEMORY[0x277CCAAD0];
    labelStackView6 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    leadingAnchor = [labelStackView6 leadingAnchor];
    contentView2 = [(AIAudiogramResultTimeCell *)v5 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v52[0] = v46;
    labelStackView7 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    trailingAnchor = [labelStackView7 trailingAnchor];
    contentView3 = [(AIAudiogramResultTimeCell *)v5 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v52[1] = v40;
    labelStackView8 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    topAnchor = [labelStackView8 topAnchor];
    contentView4 = [(AIAudiogramResultTimeCell *)v5 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v52[2] = v30;
    labelStackView9 = [(AIAudiogramResultTimeCell *)v5 labelStackView];
    bottomAnchor = [labelStackView9 bottomAnchor];
    contentView5 = [(AIAudiogramResultTimeCell *)v5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v52[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    [v42 activateConstraints:v36];
  }

  return v5;
}

- (void)configureLayout
{
  v34[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(AIAudiogramResultTimeCell *)self titleLabel];
  text = [titleLabel text];
  [(AIAudiogramResultTimeCell *)self frame];
  v6 = v5;
  v8 = v7;
  v33 = *MEMORY[0x277D740A8];
  v9 = v33;
  titleLabel2 = [(AIAudiogramResultTimeCell *)self titleLabel];
  font = [titleLabel2 font];
  v34[0] = font;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [text boundingRectWithSize:32 options:v12 attributes:0 context:{v6, v8}];
  Width = CGRectGetWidth(v35);

  v14 = MEMORY[0x277CCA968];
  timePicker = [(AIAudiogramResultTimeCell *)self timePicker];
  date = [timePicker date];
  v17 = [v14 localizedStringFromDate:date dateStyle:0 timeStyle:1];

  [(AIAudiogramResultTimeCell *)self frame];
  v19 = v18;
  v21 = v20;
  v31 = v9;
  titleLabel3 = [(AIAudiogramResultTimeCell *)self titleLabel];
  font2 = [titleLabel3 font];
  v32 = font2;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [v17 boundingRectWithSize:32 options:v24 attributes:0 context:{v19, v21}];
  *&v19 = CGRectGetWidth(v36);

  v25 = (Width + *&v19);
  [(AIAudiogramResultTimeCell *)self frame];
  v26 = CGRectGetWidth(v37) * 0.7;
  labelStackView = [(AIAudiogramResultTimeCell *)self labelStackView];
  v28 = labelStackView;
  if (v26 >= v25)
  {
    v29 = 5;
  }

  else
  {
    v29 = 4;
  }

  [labelStackView setAxis:v26 < v25];

  timePicker2 = [(AIAudiogramResultTimeCell *)self timePicker];
  [timePicker2 setContentHorizontalAlignment:v29];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  timePicker = [(AIAudiogramResultTimeCell *)self timePicker];
  [timePicker setDate:dateCopy];
}

- (void)_datePickerValueChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(AIAudiogramResultTimeCell *)self delegate];
  date = [changedCopy date];

  [delegate timeCellDidPickDate:date];
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