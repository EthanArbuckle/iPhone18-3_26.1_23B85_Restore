@interface ReservationTextTableViewCell
- (NSString)primaryButtonText;
- (NSString)secondaryButtonText;
- (NSString)text;
- (ReservationTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (ReservationTextTableViewCellDelegate)delegate;
- (void)primaryButtonSelected:(id)a3;
- (void)secondaryButtonSelected:(id)a3;
- (void)setPrimaryButtonText:(id)a3;
- (void)setSecondaryButtonText:(id)a3;
- (void)setText:(id)a3;
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
  v2 = [(ReservationTextTableViewCell *)self secondaryButton];
  v3 = [v2 titleForState:0];

  return v3;
}

- (NSString)primaryButtonText
{
  v2 = [(ReservationTextTableViewCell *)self primaryButton];
  v3 = [v2 titleForState:0];

  return v3;
}

- (void)setSecondaryButtonText:(id)a3
{
  v9 = a3;
  v4 = [(ReservationTextTableViewCell *)self secondaryButtonText];
  if (v4)
  {
    v5 = v4;
    v6 = [(ReservationTextTableViewCell *)self secondaryButtonText];
    v7 = [v9 isEqual:v6];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (([v9 isEqual:&stru_1016631F0] & 1) == 0)
  {
LABEL_3:
    v8 = [(ReservationTextTableViewCell *)self secondaryButton];
    [v8 setTitle:v9 forState:0];

    [(ReservationTextTableViewCell *)self setNeedsUpdateConstraints];
  }

LABEL_4:
}

- (void)setPrimaryButtonText:(id)a3
{
  v9 = a3;
  v4 = [(ReservationTextTableViewCell *)self primaryButtonText];
  if (v4)
  {
    v5 = v4;
    v6 = [(ReservationTextTableViewCell *)self primaryButtonText];
    v7 = [v9 isEqual:v6];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (([v9 isEqual:&stru_1016631F0] & 1) == 0)
  {
LABEL_3:
    v8 = [(ReservationTextTableViewCell *)self primaryButton];
    [v8 setTitle:v9 forState:0];

    [(ReservationTextTableViewCell *)self setNeedsUpdateConstraints];
  }

LABEL_4:
}

- (NSString)text
{
  v2 = [(ReservationTextTableViewCell *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(ReservationTextTableViewCell *)self label];
  [v5 setText:v4];
}

- (void)setupConstraints
{
  v3 = [(ReservationTextTableViewCell *)self label];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ReservationTextTableViewCell *)self primaryButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(ReservationTextTableViewCell *)self secondaryButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ReservationTextTableViewCell *)self label];
  v7 = [v6 leadingAnchor];
  v8 = [(ReservationTextTableViewCell *)self contentView];
  v9 = [v8 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];
  v89 = [v7 constraintEqualToAnchor:v10];

  v11 = [(ReservationTextTableViewCell *)self label];
  v12 = [v11 trailingAnchor];
  v13 = [(ReservationTextTableViewCell *)self contentView];
  v14 = [v13 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];
  v88 = [v12 constraintEqualToAnchor:v15];

  v16 = [(ReservationTextTableViewCell *)self label];
  v17 = [v16 topAnchor];
  v18 = [(ReservationTextTableViewCell *)self contentView];
  v19 = [v18 layoutMarginsGuide];
  v20 = [v19 topAnchor];
  v87 = [v17 constraintEqualToAnchor:v20];

  v21 = [(ReservationTextTableViewCell *)self primaryButton];
  v22 = [v21 leadingAnchor];
  v23 = [(ReservationTextTableViewCell *)self contentView];
  v24 = [v23 layoutMarginsGuide];
  v25 = [v24 leadingAnchor];
  v86 = [v22 constraintEqualToAnchor:v25];

  v26 = [(ReservationTextTableViewCell *)self primaryButton];
  v27 = [v26 trailingAnchor];
  v28 = [(ReservationTextTableViewCell *)self contentView];
  v29 = [v28 layoutMarginsGuide];
  v30 = [v29 trailingAnchor];
  v85 = [v27 constraintLessThanOrEqualToAnchor:v30];

  v31 = [(ReservationTextTableViewCell *)self secondaryButton];
  v32 = [v31 leadingAnchor];
  v33 = [(ReservationTextTableViewCell *)self contentView];
  v34 = [v33 layoutMarginsGuide];
  v35 = [v34 leadingAnchor];
  v84 = [v32 constraintEqualToAnchor:v35];

  v36 = [(ReservationTextTableViewCell *)self secondaryButton];
  v37 = [v36 trailingAnchor];
  v38 = [(ReservationTextTableViewCell *)self contentView];
  v39 = [v38 layoutMarginsGuide];
  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintLessThanOrEqualToAnchor:v40];

  v91[0] = v89;
  v91[1] = v88;
  v91[2] = v87;
  v91[3] = v86;
  v91[4] = v85;
  v91[5] = v84;
  v91[6] = v41;
  v42 = [NSArray arrayWithObjects:v91 count:7];
  [NSLayoutConstraint activateConstraints:v42];

  v43 = [(ReservationTextTableViewCell *)self contentView];
  v44 = [v43 bottomAnchor];
  v45 = [(ReservationTextTableViewCell *)self label];
  v46 = [v45 lastBaselineAnchor];
  v47 = [(ReservationTextTableViewCell *)self label];
  v48 = [v47 font];
  [v48 _scaledValueForValue:21.0];
  v49 = [v44 constraintEqualToAnchor:v46 constant:?];
  [(ReservationTextTableViewCell *)self setTextToBottomConstraint:v49];

  v50 = [(ReservationTextTableViewCell *)self primaryButton];
  v51 = [v50 firstBaselineAnchor];
  v52 = [(ReservationTextTableViewCell *)self label];
  v53 = [v52 lastBaselineAnchor];
  v54 = [(ReservationTextTableViewCell *)self primaryButton];
  v55 = [v54 titleLabel];
  v56 = [v55 font];
  [v56 _scaledValueForValue:28.0];
  v57 = [v51 constraintEqualToAnchor:v53 constant:?];
  [(ReservationTextTableViewCell *)self setTextToPrimaryButtonConstraint:v57];

  v58 = [(ReservationTextTableViewCell *)self secondaryButton];
  v59 = [v58 firstBaselineAnchor];
  v60 = [(ReservationTextTableViewCell *)self primaryButton];
  v61 = [v60 lastBaselineAnchor];
  v62 = [(ReservationTextTableViewCell *)self primaryButton];
  v63 = [v62 titleLabel];
  v64 = [v63 font];
  [v64 _scaledValueForValue:28.0];
  v65 = [v59 constraintEqualToAnchor:v61 constant:?];
  [(ReservationTextTableViewCell *)self setPrimaryButtonToSecondaryButtonConstraint:v65];

  v66 = [(ReservationTextTableViewCell *)self contentView];
  v67 = [v66 bottomAnchor];
  v68 = [(ReservationTextTableViewCell *)self primaryButton];
  v69 = [v68 lastBaselineAnchor];
  v70 = [(ReservationTextTableViewCell *)self primaryButton];
  v71 = [v70 titleLabel];
  v72 = [v71 font];
  [v72 _scaledValueForValue:17.0];
  v73 = [v67 constraintEqualToAnchor:v69 constant:?];
  [(ReservationTextTableViewCell *)self setPrimaryButtonToBottomConstraint:v73];

  v74 = [(ReservationTextTableViewCell *)self contentView];
  v75 = [v74 bottomAnchor];
  v76 = [(ReservationTextTableViewCell *)self secondaryButton];
  v77 = [v76 lastBaselineAnchor];
  v78 = [(ReservationTextTableViewCell *)self secondaryButton];
  v79 = [v78 titleLabel];
  v80 = [v79 font];
  [v80 _scaledValueForValue:17.0];
  v81 = [v75 constraintEqualToAnchor:v77 constant:?];
  [(ReservationTextTableViewCell *)self setSecondaryButtonToBottomConstraint:v81];

  v90[0] = v89;
  v90[1] = v88;
  v90[2] = v87;
  v90[3] = v86;
  v90[4] = v85;
  v90[5] = v84;
  v90[6] = v41;
  v82 = [(ReservationTextTableViewCell *)self textToBottomConstraint];
  v90[7] = v82;
  v83 = [NSArray arrayWithObjects:v90 count:8];
  [NSLayoutConstraint activateConstraints:v83];
}

- (void)updateConstraints
{
  v3 = [(ReservationTextTableViewCell *)self primaryButtonText];
  if ([v3 length])
  {
  }

  else
  {
    v4 = [(ReservationTextTableViewCell *)self secondaryButtonText];
    v5 = [v4 length];

    if (!v5)
    {
      v18 = [(ReservationTextTableViewCell *)self textToBottomConstraint];
      v26 = v18;
      v12 = [NSArray arrayWithObjects:&v26 count:1];

      v13 = [(ReservationTextTableViewCell *)self textToPrimaryButtonConstraint];
      v25[0] = v13;
      v14 = [(ReservationTextTableViewCell *)self primaryButtonToSecondaryButtonConstraint];
      v25[1] = v14;
      v17 = [(ReservationTextTableViewCell *)self primaryButtonToBottomConstraint];
      v25[2] = v17;
      v19 = [(ReservationTextTableViewCell *)self secondaryButtonToBottomConstraint];
      v25[3] = v19;
      v15 = [NSArray arrayWithObjects:v25 count:4];

      goto LABEL_8;
    }
  }

  v6 = [(ReservationTextTableViewCell *)self secondaryButtonText];
  v7 = [v6 length];

  v8 = [(ReservationTextTableViewCell *)self textToPrimaryButtonConstraint];
  v9 = v8;
  if (!v7)
  {
    v24[0] = v8;
    v16 = [(ReservationTextTableViewCell *)self primaryButtonToBottomConstraint];
    v24[1] = v16;
    v12 = [NSArray arrayWithObjects:v24 count:2];

    v13 = [(ReservationTextTableViewCell *)self textToBottomConstraint];
    v23[0] = v13;
    v14 = [(ReservationTextTableViewCell *)self primaryButtonToSecondaryButtonConstraint];
    v23[1] = v14;
    v17 = [(ReservationTextTableViewCell *)self secondaryButtonToBottomConstraint];
    v23[2] = v17;
    v15 = [NSArray arrayWithObjects:v23 count:3];
LABEL_8:

    goto LABEL_9;
  }

  v22[0] = v8;
  v10 = [(ReservationTextTableViewCell *)self primaryButtonToSecondaryButtonConstraint];
  v22[1] = v10;
  v11 = [(ReservationTextTableViewCell *)self secondaryButtonToBottomConstraint];
  v22[2] = v11;
  v12 = [NSArray arrayWithObjects:v22 count:3];

  v13 = [(ReservationTextTableViewCell *)self textToBottomConstraint];
  v21[0] = v13;
  v14 = [(ReservationTextTableViewCell *)self primaryButtonToBottomConstraint];
  v21[1] = v14;
  v15 = [NSArray arrayWithObjects:v21 count:2];
LABEL_9:

  [NSLayoutConstraint activateConstraints:v12];
  [NSLayoutConstraint deactivateConstraints:v15];
  v20.receiver = self;
  v20.super_class = ReservationTextTableViewCell;
  [(ReservationTextTableViewCell *)&v20 updateConstraints];
}

- (void)secondaryButtonSelected:(id)a3
{
  v4 = [(ReservationTextTableViewCell *)self delegate];
  [v4 reservationTableViewCellDidSelectSecondaryButton:self];
}

- (void)primaryButtonSelected:(id)a3
{
  v4 = [(ReservationTextTableViewCell *)self delegate];
  [v4 reservationTableViewCellDidSelectPrimaryButton:self];
}

- (ReservationTextTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v28.receiver = self;
  v28.super_class = ReservationTextTableViewCell;
  v4 = [(ReservationTextTableViewCell *)&v28 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(ReservationTextTableViewCell *)v4 setLabel:v5];

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v7 = [(ReservationTextTableViewCell *)v4 label];
    [v7 setFont:v6];

    v8 = [(ReservationTextTableViewCell *)v4 label];
    [v8 setNumberOfLines:0];

    v9 = +[UIColor labelColor];
    v10 = [(ReservationTextTableViewCell *)v4 label];
    [v10 setTextColor:v9];

    v11 = [UIButton buttonWithType:1];
    [(ReservationTextTableViewCell *)v4 setPrimaryButton:v11];

    v12 = [UIButton buttonWithType:1];
    [(ReservationTextTableViewCell *)v4 setSecondaryButton:v12];

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v14 = [(ReservationTextTableViewCell *)v4 primaryButton];
    v15 = [v14 titleLabel];
    [v15 setFont:v13];

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v17 = [(ReservationTextTableViewCell *)v4 secondaryButton];
    v18 = [v17 titleLabel];
    [v18 setFont:v16];

    v19 = [(ReservationTextTableViewCell *)v4 primaryButton];
    [v19 addTarget:v4 action:"primaryButtonSelected:" forControlEvents:64];

    v20 = [(ReservationTextTableViewCell *)v4 secondaryButton];
    [v20 addTarget:v4 action:"secondaryButtonSelected:" forControlEvents:64];

    v21 = [(ReservationTextTableViewCell *)v4 contentView];
    v22 = [(ReservationTextTableViewCell *)v4 label];
    [v21 addSubview:v22];

    v23 = [(ReservationTextTableViewCell *)v4 contentView];
    v24 = [(ReservationTextTableViewCell *)v4 primaryButton];
    [v23 addSubview:v24];

    v25 = [(ReservationTextTableViewCell *)v4 contentView];
    v26 = [(ReservationTextTableViewCell *)v4 secondaryButton];
    [v25 addSubview:v26];

    [(ReservationTextTableViewCell *)v4 setupConstraints];
  }

  return v4;
}

@end