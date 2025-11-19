@interface EKUIInviteesViewConflictSearchCell
+ (id)_showMoreLocalizedString;
- (EKUIInviteesViewConflictSearchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setText:(id)a3 textColor:(id)a4 spinnerEnabled:(BOOL)a5;
- (void)setAvailabilityRequestInProgressState;
- (void)setInitialSearchInProgressState;
- (void)setNoAvailableTimesStateWithNumberOfExistingTimes:(unint64_t)a3 hasError:(BOOL)a4;
- (void)setShowMoreState;
- (void)updateConstraints;
@end

@implementation EKUIInviteesViewConflictSearchCell

- (EKUIInviteesViewConflictSearchCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = EKUIInviteesViewConflictSearchCell;
  v4 = [(EKUIInviteesViewConflictSearchCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKUIInviteesViewConflictSearchCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v8 = [v7 textColor];
    [(EKUIInviteesViewConflictSearchCell *)v5 setOriginalLabelFontColor:v8];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [objc_opt_class() _labelFont];
    [v7 setFont:v9];

    v10 = [objc_opt_class() _showMoreLocalizedString];
    [v7 setText:v10];

    [v6 addSubview:v7];
    [(EKUIInviteesViewConflictSearchCell *)v5 setLabel:v7];
    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v11 setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v11 setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [v11 setContentCompressionResistancePriority:1 forAxis:v15];
    [v11 setHidden:1];
    [v6 addSubview:v11];
    [(EKUIInviteesViewConflictSearchCell *)v5 setSpinner:v11];
    [(EKUIInviteesViewConflictSearchCell *)v5 setLeftInset:66.0];
    [(EKUIInviteesViewConflictSearchCell *)v5 leftInset];
    [(EKUIInviteesViewConflictSearchCell *)v5 setSeparatorInset:0.0, v16, 0.0, 0.0];
    [(EKUIInviteesViewConflictSearchCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)updateConstraints
{
  v3 = [(EKUIInviteesViewConflictSearchCell *)self persistentConstraints];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(EKUIInviteesViewConflictSearchCell *)self label];
    v7 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    [(EKUIInviteesViewConflictSearchCell *)self leftInset];
    v9 = [v5 constraintWithItem:v6 attribute:5 relatedBy:0 toItem:v7 attribute:5 multiplier:1.0 constant:v8];
    [v4 addObject:v9];

    v10 = MEMORY[0x1E696ACD8];
    v11 = [(EKUIInviteesViewConflictSearchCell *)self label];
    v12 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v13 = [v10 constraintWithItem:v11 attribute:6 relatedBy:0 toItem:v12 attribute:6 multiplier:1.0 constant:-47.0];
    [v4 addObject:v13];

    v14 = MEMORY[0x1E696ACD8];
    v15 = [(EKUIInviteesViewConflictSearchCell *)self label];
    v16 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v17 = [objc_opt_class() _labelFont];
    [v17 _scaledValueForValue:28.0];
    v19 = [v14 constraintWithItem:v15 attribute:12 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:v18];
    [v4 addObject:v19];

    v20 = MEMORY[0x1E696ACD8];
    v21 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v22 = [(EKUIInviteesViewConflictSearchCell *)self label];
    v23 = [objc_opt_class() _labelFont];
    [v23 _scaledValueForValue:16.0];
    v25 = [v20 constraintWithItem:v21 attribute:4 relatedBy:0 toItem:v22 attribute:11 multiplier:1.0 constant:v24];
    [v4 addObject:v25];

    v26 = MEMORY[0x1E696ACD8];
    v27 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    v28 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v29 = [v26 constraintWithItem:v27 attribute:2 relatedBy:0 toItem:v28 attribute:2 multiplier:1.0 constant:-16.0];
    [v4 addObject:v29];

    v30 = MEMORY[0x1E696ACD8];
    v31 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    v32 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v33 = [v30 constraintWithItem:v31 attribute:10 relatedBy:0 toItem:v32 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v33];

    v34 = MEMORY[0x1E696ACD8];
    v35 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v36 = [v34 constraintWithItem:v35 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:EKUITableRowHeightDefault()];
    [v4 addObject:v36];

    v37 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    [v37 addConstraints:v4];

    [(EKUIInviteesViewConflictSearchCell *)self setPersistentConstraints:v4];
  }

  v38.receiver = self;
  v38.super_class = EKUIInviteesViewConflictSearchCell;
  [(EKUIInviteesViewConflictSearchCell *)&v38 updateConstraints];
}

- (void)setInitialSearchInProgressState
{
  v5 = EventKitUIBundle();
  v3 = [v5 localizedStringForKey:@"Searching available times…" value:&stru_1F4EF6790 table:0];
  v4 = [(EKUIInviteesViewConflictSearchCell *)self originalLabelFontColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:v3 textColor:v4 spinnerEnabled:1];
}

- (void)setNoAvailableTimesStateWithNumberOfExistingTimes:(unint64_t)a3 hasError:(BOOL)a4
{
  if (a4)
  {
    v5 = EventKitUIBundle();
    v6 = v5;
    v7 = @"Connection error";
  }

  else
  {
    v5 = EventKitUIBundle();
    v6 = v5;
    if (a3)
    {
      v7 = @"No more available times";
    }

    else
    {
      v7 = @"No available times";
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:&stru_1F4EF6790 table:0];

  v9 = [objc_opt_class() _grayTextColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:v10 textColor:v9 spinnerEnabled:0];
}

- (void)setShowMoreState
{
  v4 = [objc_opt_class() _showMoreLocalizedString];
  v3 = [(EKUIInviteesViewConflictSearchCell *)self originalLabelFontColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:v4 textColor:v3 spinnerEnabled:0];
}

- (void)setAvailabilityRequestInProgressState
{
  v4 = [objc_opt_class() _showMoreLocalizedString];
  v3 = [(EKUIInviteesViewConflictSearchCell *)self originalLabelFontColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:v4 textColor:v3 spinnerEnabled:1];
}

- (void)_setText:(id)a3 textColor:(id)a4 spinnerEnabled:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v13 = [(EKUIInviteesViewConflictSearchCell *)self label];
  [v13 setText:v9];

  [v13 setTextColor:v8];
  [v13 setLineBreakMode:0];
  [v13 setNumberOfLines:0];
  v10 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
  v11 = v10;
  if (v5)
  {
    [v10 setHidden:0];

    v12 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    [v12 startAnimating];
  }

  else
  {
    [v10 stopAnimating];

    v12 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    [v12 setHidden:1];
  }
}

+ (id)_showMoreLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Show More…" value:&stru_1F4EF6790 table:0];

  return v3;
}

@end