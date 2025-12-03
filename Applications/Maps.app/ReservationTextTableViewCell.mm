@interface ReservationTextTableViewCell
- (NSString)primaryButtonText;
- (NSString)secondaryButtonText;
- (NSString)text;
- (ReservationTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (ReservationTextTableViewCellDelegate)delegate;
- (void)primaryButtonSelected:(id)selected;
- (void)secondaryButtonSelected:(id)selected;
- (void)setPrimaryButtonText:(id)text;
- (void)setSecondaryButtonText:(id)text;
- (void)setText:(id)text;
- (void)setupConstraints;
- (void)updateConstraints;
@end

@implementation ReservationTextTableViewCell

- (ReservationTextTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)secondaryButtonText
{
  secondaryButton = [(ReservationTextTableViewCell *)self secondaryButton];
  v3 = [secondaryButton titleForState:0];

  return v3;
}

- (NSString)primaryButtonText
{
  primaryButton = [(ReservationTextTableViewCell *)self primaryButton];
  v3 = [primaryButton titleForState:0];

  return v3;
}

- (void)setSecondaryButtonText:(id)text
{
  textCopy = text;
  secondaryButtonText = [(ReservationTextTableViewCell *)self secondaryButtonText];
  if (secondaryButtonText)
  {
    v5 = secondaryButtonText;
    secondaryButtonText2 = [(ReservationTextTableViewCell *)self secondaryButtonText];
    v7 = [textCopy isEqual:secondaryButtonText2];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (([textCopy isEqual:&stru_1016631F0] & 1) == 0)
  {
LABEL_3:
    secondaryButton = [(ReservationTextTableViewCell *)self secondaryButton];
    [secondaryButton setTitle:textCopy forState:0];

    [(ReservationTextTableViewCell *)self setNeedsUpdateConstraints];
  }

LABEL_4:
}

- (void)setPrimaryButtonText:(id)text
{
  textCopy = text;
  primaryButtonText = [(ReservationTextTableViewCell *)self primaryButtonText];
  if (primaryButtonText)
  {
    v5 = primaryButtonText;
    primaryButtonText2 = [(ReservationTextTableViewCell *)self primaryButtonText];
    v7 = [textCopy isEqual:primaryButtonText2];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (([textCopy isEqual:&stru_1016631F0] & 1) == 0)
  {
LABEL_3:
    primaryButton = [(ReservationTextTableViewCell *)self primaryButton];
    [primaryButton setTitle:textCopy forState:0];

    [(ReservationTextTableViewCell *)self setNeedsUpdateConstraints];
  }

LABEL_4:
}

- (NSString)text
{
  label = [(ReservationTextTableViewCell *)self label];
  text = [label text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(ReservationTextTableViewCell *)self label];
  [label setText:textCopy];
}

- (void)setupConstraints
{
  label = [(ReservationTextTableViewCell *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];

  primaryButton = [(ReservationTextTableViewCell *)self primaryButton];
  [primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];

  secondaryButton = [(ReservationTextTableViewCell *)self secondaryButton];
  [secondaryButton setTranslatesAutoresizingMaskIntoConstraints:0];

  label2 = [(ReservationTextTableViewCell *)self label];
  leadingAnchor = [label2 leadingAnchor];
  contentView = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v89 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  label3 = [(ReservationTextTableViewCell *)self label];
  trailingAnchor = [label3 trailingAnchor];
  contentView2 = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v88 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  label4 = [(ReservationTextTableViewCell *)self label];
  topAnchor = [label4 topAnchor];
  contentView3 = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v87 = [topAnchor constraintEqualToAnchor:topAnchor2];

  primaryButton2 = [(ReservationTextTableViewCell *)self primaryButton];
  leadingAnchor3 = [primaryButton2 leadingAnchor];
  contentView4 = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v86 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  primaryButton3 = [(ReservationTextTableViewCell *)self primaryButton];
  trailingAnchor3 = [primaryButton3 trailingAnchor];
  contentView5 = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v85 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];

  secondaryButton2 = [(ReservationTextTableViewCell *)self secondaryButton];
  leadingAnchor5 = [secondaryButton2 leadingAnchor];
  contentView6 = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide6 leadingAnchor];
  v84 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  secondaryButton3 = [(ReservationTextTableViewCell *)self secondaryButton];
  trailingAnchor5 = [secondaryButton3 trailingAnchor];
  contentView7 = [(ReservationTextTableViewCell *)self contentView];
  layoutMarginsGuide7 = [contentView7 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide7 trailingAnchor];
  v41 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];

  v91[0] = v89;
  v91[1] = v88;
  v91[2] = v87;
  v91[3] = v86;
  v91[4] = v85;
  v91[5] = v84;
  v91[6] = v41;
  v42 = [NSArray arrayWithObjects:v91 count:7];
  [NSLayoutConstraint activateConstraints:v42];

  contentView8 = [(ReservationTextTableViewCell *)self contentView];
  bottomAnchor = [contentView8 bottomAnchor];
  label5 = [(ReservationTextTableViewCell *)self label];
  lastBaselineAnchor = [label5 lastBaselineAnchor];
  label6 = [(ReservationTextTableViewCell *)self label];
  font = [label6 font];
  [font _scaledValueForValue:21.0];
  v49 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [(ReservationTextTableViewCell *)self setTextToBottomConstraint:v49];

  primaryButton4 = [(ReservationTextTableViewCell *)self primaryButton];
  firstBaselineAnchor = [primaryButton4 firstBaselineAnchor];
  label7 = [(ReservationTextTableViewCell *)self label];
  lastBaselineAnchor2 = [label7 lastBaselineAnchor];
  primaryButton5 = [(ReservationTextTableViewCell *)self primaryButton];
  titleLabel = [primaryButton5 titleLabel];
  font2 = [titleLabel font];
  [font2 _scaledValueForValue:28.0];
  v57 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [(ReservationTextTableViewCell *)self setTextToPrimaryButtonConstraint:v57];

  secondaryButton4 = [(ReservationTextTableViewCell *)self secondaryButton];
  firstBaselineAnchor2 = [secondaryButton4 firstBaselineAnchor];
  primaryButton6 = [(ReservationTextTableViewCell *)self primaryButton];
  lastBaselineAnchor3 = [primaryButton6 lastBaselineAnchor];
  primaryButton7 = [(ReservationTextTableViewCell *)self primaryButton];
  titleLabel2 = [primaryButton7 titleLabel];
  font3 = [titleLabel2 font];
  [font3 _scaledValueForValue:28.0];
  v65 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor3 constant:?];
  [(ReservationTextTableViewCell *)self setPrimaryButtonToSecondaryButtonConstraint:v65];

  contentView9 = [(ReservationTextTableViewCell *)self contentView];
  bottomAnchor2 = [contentView9 bottomAnchor];
  primaryButton8 = [(ReservationTextTableViewCell *)self primaryButton];
  lastBaselineAnchor4 = [primaryButton8 lastBaselineAnchor];
  primaryButton9 = [(ReservationTextTableViewCell *)self primaryButton];
  titleLabel3 = [primaryButton9 titleLabel];
  font4 = [titleLabel3 font];
  [font4 _scaledValueForValue:17.0];
  v73 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor4 constant:?];
  [(ReservationTextTableViewCell *)self setPrimaryButtonToBottomConstraint:v73];

  contentView10 = [(ReservationTextTableViewCell *)self contentView];
  bottomAnchor3 = [contentView10 bottomAnchor];
  secondaryButton5 = [(ReservationTextTableViewCell *)self secondaryButton];
  lastBaselineAnchor5 = [secondaryButton5 lastBaselineAnchor];
  secondaryButton6 = [(ReservationTextTableViewCell *)self secondaryButton];
  titleLabel4 = [secondaryButton6 titleLabel];
  font5 = [titleLabel4 font];
  [font5 _scaledValueForValue:17.0];
  v81 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor5 constant:?];
  [(ReservationTextTableViewCell *)self setSecondaryButtonToBottomConstraint:v81];

  v90[0] = v89;
  v90[1] = v88;
  v90[2] = v87;
  v90[3] = v86;
  v90[4] = v85;
  v90[5] = v84;
  v90[6] = v41;
  textToBottomConstraint = [(ReservationTextTableViewCell *)self textToBottomConstraint];
  v90[7] = textToBottomConstraint;
  v83 = [NSArray arrayWithObjects:v90 count:8];
  [NSLayoutConstraint activateConstraints:v83];
}

- (void)updateConstraints
{
  primaryButtonText = [(ReservationTextTableViewCell *)self primaryButtonText];
  if ([primaryButtonText length])
  {
  }

  else
  {
    secondaryButtonText = [(ReservationTextTableViewCell *)self secondaryButtonText];
    v5 = [secondaryButtonText length];

    if (!v5)
    {
      textToBottomConstraint = [(ReservationTextTableViewCell *)self textToBottomConstraint];
      v26 = textToBottomConstraint;
      v12 = [NSArray arrayWithObjects:&v26 count:1];

      textToPrimaryButtonConstraint = [(ReservationTextTableViewCell *)self textToPrimaryButtonConstraint];
      v25[0] = textToPrimaryButtonConstraint;
      primaryButtonToSecondaryButtonConstraint = [(ReservationTextTableViewCell *)self primaryButtonToSecondaryButtonConstraint];
      v25[1] = primaryButtonToSecondaryButtonConstraint;
      primaryButtonToBottomConstraint = [(ReservationTextTableViewCell *)self primaryButtonToBottomConstraint];
      v25[2] = primaryButtonToBottomConstraint;
      secondaryButtonToBottomConstraint = [(ReservationTextTableViewCell *)self secondaryButtonToBottomConstraint];
      v25[3] = secondaryButtonToBottomConstraint;
      v15 = [NSArray arrayWithObjects:v25 count:4];

      goto LABEL_8;
    }
  }

  secondaryButtonText2 = [(ReservationTextTableViewCell *)self secondaryButtonText];
  v7 = [secondaryButtonText2 length];

  textToPrimaryButtonConstraint2 = [(ReservationTextTableViewCell *)self textToPrimaryButtonConstraint];
  v9 = textToPrimaryButtonConstraint2;
  if (!v7)
  {
    v24[0] = textToPrimaryButtonConstraint2;
    primaryButtonToBottomConstraint2 = [(ReservationTextTableViewCell *)self primaryButtonToBottomConstraint];
    v24[1] = primaryButtonToBottomConstraint2;
    v12 = [NSArray arrayWithObjects:v24 count:2];

    textToPrimaryButtonConstraint = [(ReservationTextTableViewCell *)self textToBottomConstraint];
    v23[0] = textToPrimaryButtonConstraint;
    primaryButtonToSecondaryButtonConstraint = [(ReservationTextTableViewCell *)self primaryButtonToSecondaryButtonConstraint];
    v23[1] = primaryButtonToSecondaryButtonConstraint;
    primaryButtonToBottomConstraint = [(ReservationTextTableViewCell *)self secondaryButtonToBottomConstraint];
    v23[2] = primaryButtonToBottomConstraint;
    v15 = [NSArray arrayWithObjects:v23 count:3];
LABEL_8:

    goto LABEL_9;
  }

  v22[0] = textToPrimaryButtonConstraint2;
  primaryButtonToSecondaryButtonConstraint2 = [(ReservationTextTableViewCell *)self primaryButtonToSecondaryButtonConstraint];
  v22[1] = primaryButtonToSecondaryButtonConstraint2;
  secondaryButtonToBottomConstraint2 = [(ReservationTextTableViewCell *)self secondaryButtonToBottomConstraint];
  v22[2] = secondaryButtonToBottomConstraint2;
  v12 = [NSArray arrayWithObjects:v22 count:3];

  textToPrimaryButtonConstraint = [(ReservationTextTableViewCell *)self textToBottomConstraint];
  v21[0] = textToPrimaryButtonConstraint;
  primaryButtonToSecondaryButtonConstraint = [(ReservationTextTableViewCell *)self primaryButtonToBottomConstraint];
  v21[1] = primaryButtonToSecondaryButtonConstraint;
  v15 = [NSArray arrayWithObjects:v21 count:2];
LABEL_9:

  [NSLayoutConstraint activateConstraints:v12];
  [NSLayoutConstraint deactivateConstraints:v15];
  v20.receiver = self;
  v20.super_class = ReservationTextTableViewCell;
  [(ReservationTextTableViewCell *)&v20 updateConstraints];
}

- (void)secondaryButtonSelected:(id)selected
{
  delegate = [(ReservationTextTableViewCell *)self delegate];
  [delegate reservationTableViewCellDidSelectSecondaryButton:self];
}

- (void)primaryButtonSelected:(id)selected
{
  delegate = [(ReservationTextTableViewCell *)self delegate];
  [delegate reservationTableViewCellDidSelectPrimaryButton:self];
}

- (ReservationTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v28.receiver = self;
  v28.super_class = ReservationTextTableViewCell;
  v4 = [(ReservationTextTableViewCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(ReservationTextTableViewCell *)v4 setLabel:v5];

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    label = [(ReservationTextTableViewCell *)v4 label];
    [label setFont:v6];

    label2 = [(ReservationTextTableViewCell *)v4 label];
    [label2 setNumberOfLines:0];

    v9 = +[UIColor labelColor];
    label3 = [(ReservationTextTableViewCell *)v4 label];
    [label3 setTextColor:v9];

    v11 = [UIButton buttonWithType:1];
    [(ReservationTextTableViewCell *)v4 setPrimaryButton:v11];

    v12 = [UIButton buttonWithType:1];
    [(ReservationTextTableViewCell *)v4 setSecondaryButton:v12];

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    primaryButton = [(ReservationTextTableViewCell *)v4 primaryButton];
    titleLabel = [primaryButton titleLabel];
    [titleLabel setFont:v13];

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    secondaryButton = [(ReservationTextTableViewCell *)v4 secondaryButton];
    titleLabel2 = [secondaryButton titleLabel];
    [titleLabel2 setFont:v16];

    primaryButton2 = [(ReservationTextTableViewCell *)v4 primaryButton];
    [primaryButton2 addTarget:v4 action:"primaryButtonSelected:" forControlEvents:64];

    secondaryButton2 = [(ReservationTextTableViewCell *)v4 secondaryButton];
    [secondaryButton2 addTarget:v4 action:"secondaryButtonSelected:" forControlEvents:64];

    contentView = [(ReservationTextTableViewCell *)v4 contentView];
    label4 = [(ReservationTextTableViewCell *)v4 label];
    [contentView addSubview:label4];

    contentView2 = [(ReservationTextTableViewCell *)v4 contentView];
    primaryButton3 = [(ReservationTextTableViewCell *)v4 primaryButton];
    [contentView2 addSubview:primaryButton3];

    contentView3 = [(ReservationTextTableViewCell *)v4 contentView];
    secondaryButton3 = [(ReservationTextTableViewCell *)v4 secondaryButton];
    [contentView3 addSubview:secondaryButton3];

    [(ReservationTextTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end