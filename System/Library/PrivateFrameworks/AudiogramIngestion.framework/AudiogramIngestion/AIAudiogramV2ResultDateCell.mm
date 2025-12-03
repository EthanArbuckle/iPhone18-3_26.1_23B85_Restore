@interface AIAudiogramV2ResultDateCell
- (AIAudiogramResultDateCellDelegate)delegate;
- (AIAudiogramV2ResultDateCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_datePickerValueChanged:(id)changed;
- (void)configureLayout;
- (void)setDate:(id)date;
@end

@implementation AIAudiogramV2ResultDateCell

- (AIAudiogramV2ResultDateCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v55[3] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = AIAudiogramV2ResultDateCell;
  v4 = [(AIAudiogramV2ResultDateCell *)&v53 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    [(AIAudiogramV2ResultDateCell *)v4 setTitleLabel:v5];

    v6 = aiLocString(@"AudiogramIngestionResultsDateV2");
    titleLabel = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    [titleLabel setText:v6];

    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel2 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    [titleLabel2 setTextColor:labelColor];

    v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74420]];
    titleLabel3 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    [titleLabel3 setFont:v10];

    v12 = objc_opt_new();
    [(AIAudiogramV2ResultDateCell *)v4 setDatePicker:v12];

    datePicker = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [datePicker setDatePickerMode:1];

    datePicker2 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [datePicker2 setPreferredDatePickerStyle:2];

    v15 = [MEMORY[0x277CBEAA8] now];
    datePicker3 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [datePicker3 setMaximumDate:v15];

    datePicker4 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    [datePicker4 addTarget:v4 action:sel__datePickerValueChanged_ forControlEvents:4096];

    v18 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel4 = [(AIAudiogramV2ResultDateCell *)v4 titleLabel];
    v55[0] = titleLabel4;
    v20 = objc_opt_new();
    v55[1] = v20;
    datePicker5 = [(AIAudiogramV2ResultDateCell *)v4 datePicker];
    v55[2] = datePicker5;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
    v23 = [v18 initWithArrangedSubviews:v22];
    [(AIAudiogramV2ResultDateCell *)v4 setContentStackView:v23];

    contentStackView = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [contentStackView setAxis:0];

    contentStackView2 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [contentStackView2 setDistribution:0];

    contentStackView3 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [contentStackView3 setAlignment:0];

    contentStackView4 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [contentStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    contentStackView5 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    [contentView addSubview:contentStackView5];

    v44 = MEMORY[0x277CCAAD0];
    contentStackView6 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    leadingAnchor = [contentStackView6 leadingAnchor];
    contentView2 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v54[0] = v48;
    contentStackView7 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    trailingAnchor = [contentStackView7 trailingAnchor];
    contentView3 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v54[1] = v42;
    contentStackView8 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    topAnchor = [contentStackView8 topAnchor];
    contentView4 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v54[2] = v32;
    contentStackView9 = [(AIAudiogramV2ResultDateCell *)v4 contentStackView];
    bottomAnchor = [contentStackView9 bottomAnchor];
    contentView5 = [(AIAudiogramV2ResultDateCell *)v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v54[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
    [v44 activateConstraints:v38];
  }

  return v4;
}

- (void)setDate:(id)date
{
  dateCopy = date;
  datePicker = [(AIAudiogramV2ResultDateCell *)self datePicker];
  [datePicker setDate:dateCopy];
}

- (void)_datePickerValueChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(AIAudiogramV2ResultDateCell *)self delegate];
  date = [changedCopy date];

  [delegate dateCellDidPickDate:date];
}

- (void)configureLayout
{
  v18[1] = *MEMORY[0x277D85DE8];
  titleLabel = [(AIAudiogramV2ResultDateCell *)self titleLabel];
  text = [titleLabel text];
  [(AIAudiogramV2ResultDateCell *)self frame];
  v6 = v5;
  v8 = v7;
  v17 = *MEMORY[0x277D740A8];
  titleLabel2 = [(AIAudiogramV2ResultDateCell *)self titleLabel];
  font = [titleLabel2 font];
  v18[0] = font;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [text boundingRectWithSize:32 options:v11 attributes:0 context:{v6, v8}];
  *&v6 = CGRectGetWidth(v19);

  contentView = [(AIAudiogramV2ResultDateCell *)self contentView];
  [contentView frame];
  v14 = v13 * 0.4 < *&v6;

  contentStackView = [(AIAudiogramV2ResultDateCell *)self contentStackView];
  [contentStackView setAxis:v14];

  contentStackView2 = [(AIAudiogramV2ResultDateCell *)self contentStackView];
  [contentStackView2 setAlignment:v14];
}

- (id)accessibilityLabel
{
  titleLabel = [(AIAudiogramV2ResultDateCell *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = MEMORY[0x277CCA968];
  datePicker = [(AIAudiogramV2ResultDateCell *)self datePicker];
  date = [datePicker date];
  v5 = [v2 localizedStringFromDate:date dateStyle:3 timeStyle:0];

  return v5;
}

- (BOOL)accessibilityActivate
{
  datePicker = [(AIAudiogramV2ResultDateCell *)self datePicker];
  subviews = [datePicker subviews];
  firstObject = [subviews firstObject];
  accessibilityActivate = [firstObject accessibilityActivate];

  if (accessibilityActivate)
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