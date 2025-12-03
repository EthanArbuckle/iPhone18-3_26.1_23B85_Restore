@interface EKUIInviteesViewConflictSearchCell
+ (id)_showMoreLocalizedString;
- (EKUIInviteesViewConflictSearchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setText:(id)text textColor:(id)color spinnerEnabled:(BOOL)enabled;
- (void)setAvailabilityRequestInProgressState;
- (void)setInitialSearchInProgressState;
- (void)setNoAvailableTimesStateWithNumberOfExistingTimes:(unint64_t)times hasError:(BOOL)error;
- (void)setShowMoreState;
- (void)updateConstraints;
@end

@implementation EKUIInviteesViewConflictSearchCell

- (EKUIInviteesViewConflictSearchCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = EKUIInviteesViewConflictSearchCell;
  v4 = [(EKUIInviteesViewConflictSearchCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(EKUIInviteesViewConflictSearchCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textColor = [v7 textColor];
    [(EKUIInviteesViewConflictSearchCell *)v5 setOriginalLabelFontColor:textColor];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    _labelFont = [objc_opt_class() _labelFont];
    [v7 setFont:_labelFont];

    _showMoreLocalizedString = [objc_opt_class() _showMoreLocalizedString];
    [v7 setText:_showMoreLocalizedString];

    [contentView addSubview:v7];
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
    [contentView addSubview:v11];
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
  persistentConstraints = [(EKUIInviteesViewConflictSearchCell *)self persistentConstraints];

  if (!persistentConstraints)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E696ACD8];
    label = [(EKUIInviteesViewConflictSearchCell *)self label];
    contentView = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    [(EKUIInviteesViewConflictSearchCell *)self leftInset];
    v9 = [v5 constraintWithItem:label attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:v8];
    [v4 addObject:v9];

    v10 = MEMORY[0x1E696ACD8];
    label2 = [(EKUIInviteesViewConflictSearchCell *)self label];
    contentView2 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v13 = [v10 constraintWithItem:label2 attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:-47.0];
    [v4 addObject:v13];

    v14 = MEMORY[0x1E696ACD8];
    label3 = [(EKUIInviteesViewConflictSearchCell *)self label];
    contentView3 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    _labelFont = [objc_opt_class() _labelFont];
    [_labelFont _scaledValueForValue:28.0];
    v19 = [v14 constraintWithItem:label3 attribute:12 relatedBy:0 toItem:contentView3 attribute:3 multiplier:1.0 constant:v18];
    [v4 addObject:v19];

    v20 = MEMORY[0x1E696ACD8];
    contentView4 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    label4 = [(EKUIInviteesViewConflictSearchCell *)self label];
    _labelFont2 = [objc_opt_class() _labelFont];
    [_labelFont2 _scaledValueForValue:16.0];
    v25 = [v20 constraintWithItem:contentView4 attribute:4 relatedBy:0 toItem:label4 attribute:11 multiplier:1.0 constant:v24];
    [v4 addObject:v25];

    v26 = MEMORY[0x1E696ACD8];
    spinner = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    contentView5 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v29 = [v26 constraintWithItem:spinner attribute:2 relatedBy:0 toItem:contentView5 attribute:2 multiplier:1.0 constant:-16.0];
    [v4 addObject:v29];

    v30 = MEMORY[0x1E696ACD8];
    spinner2 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    contentView6 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v33 = [v30 constraintWithItem:spinner2 attribute:10 relatedBy:0 toItem:contentView6 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v33];

    v34 = MEMORY[0x1E696ACD8];
    contentView7 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    v36 = [v34 constraintWithItem:contentView7 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:EKUITableRowHeightDefault()];
    [v4 addObject:v36];

    contentView8 = [(EKUIInviteesViewConflictSearchCell *)self contentView];
    [contentView8 addConstraints:v4];

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
  originalLabelFontColor = [(EKUIInviteesViewConflictSearchCell *)self originalLabelFontColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:v3 textColor:originalLabelFontColor spinnerEnabled:1];
}

- (void)setNoAvailableTimesStateWithNumberOfExistingTimes:(unint64_t)times hasError:(BOOL)error
{
  if (error)
  {
    v5 = EventKitUIBundle();
    v6 = v5;
    v7 = @"Connection error";
  }

  else
  {
    v5 = EventKitUIBundle();
    v6 = v5;
    if (times)
    {
      v7 = @"No more available times";
    }

    else
    {
      v7 = @"No available times";
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:&stru_1F4EF6790 table:0];

  _grayTextColor = [objc_opt_class() _grayTextColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:v10 textColor:_grayTextColor spinnerEnabled:0];
}

- (void)setShowMoreState
{
  _showMoreLocalizedString = [objc_opt_class() _showMoreLocalizedString];
  originalLabelFontColor = [(EKUIInviteesViewConflictSearchCell *)self originalLabelFontColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:_showMoreLocalizedString textColor:originalLabelFontColor spinnerEnabled:0];
}

- (void)setAvailabilityRequestInProgressState
{
  _showMoreLocalizedString = [objc_opt_class() _showMoreLocalizedString];
  originalLabelFontColor = [(EKUIInviteesViewConflictSearchCell *)self originalLabelFontColor];
  [(EKUIInviteesViewConflictSearchCell *)self _setText:_showMoreLocalizedString textColor:originalLabelFontColor spinnerEnabled:1];
}

- (void)_setText:(id)text textColor:(id)color spinnerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  colorCopy = color;
  textCopy = text;
  label = [(EKUIInviteesViewConflictSearchCell *)self label];
  [label setText:textCopy];

  [label setTextColor:colorCopy];
  [label setLineBreakMode:0];
  [label setNumberOfLines:0];
  spinner = [(EKUIInviteesViewConflictSearchCell *)self spinner];
  v11 = spinner;
  if (enabledCopy)
  {
    [spinner setHidden:0];

    spinner2 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    [spinner2 startAnimating];
  }

  else
  {
    [spinner stopAnimating];

    spinner2 = [(EKUIInviteesViewConflictSearchCell *)self spinner];
    [spinner2 setHidden:1];
  }
}

+ (id)_showMoreLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Show More…" value:&stru_1F4EF6790 table:0];

  return v3;
}

@end