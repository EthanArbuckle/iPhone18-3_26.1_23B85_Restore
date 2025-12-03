@interface SearchNoResultsTableViewCell
+ (id)identifier;
- (SearchNoResultsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SearchNoResultsTableViewCellDelegate)delegate;
- (void)_didTapOnRAPButton;
- (void)_removeRAPButton;
- (void)clearHeightConstraint;
- (void)layoutSubviews;
- (void)setEnableStructuredRAPAffordance:(BOOL)affordance;
- (void)setHeightConstraint:(double)constraint withPriority:(float)priority;
- (void)setupSubviews;
@end

@implementation SearchNoResultsTableViewCell

- (SearchNoResultsTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SearchNoResultsTableViewCell;
  [(SearchNoResultsTableViewCell *)&v4 layoutSubviews];
  keyboardAvoidingView = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  [keyboardAvoidingView updateForKeyboardFrame];
}

- (void)_didTapOnRAPButton
{
  delegate = [(SearchNoResultsTableViewCell *)self delegate];
  [delegate didTapOnReportAnIssue];
}

- (void)_removeRAPButton
{
  [(UIStackView *)self->_stackView removeArrangedSubview:self->_rapButton];
  rapButton = self->_rapButton;

  [(UIButton *)rapButton removeFromSuperview];
}

- (void)setEnableStructuredRAPAffordance:(BOOL)affordance
{
  enableStructuredRAPAffordance = self->_enableStructuredRAPAffordance;
  if (!enableStructuredRAPAffordance || affordance)
  {
    if (!enableStructuredRAPAffordance && affordance)
    {
      [(SearchNoResultsTableViewCell *)self _addRAPButton];
    }
  }

  else
  {
    [(SearchNoResultsTableViewCell *)self _removeRAPButton];
  }

  self->_enableStructuredRAPAffordance = affordance;
}

- (void)setHeightConstraint:(double)constraint withPriority:(float)priority
{
  heightConstraint = [(SearchNoResultsTableViewCell *)self heightConstraint];
  if (heightConstraint)
  {
    v8 = heightConstraint;
    heightConstraint2 = [(SearchNoResultsTableViewCell *)self heightConstraint];
    [heightConstraint2 priority];
    if (v10 == priority)
    {
    }

    else
    {
      heightConstraint3 = [(SearchNoResultsTableViewCell *)self heightConstraint];
      [heightConstraint3 priority];
      v13 = v12;

      if (v13 == 1000.0 || priority == 1000.0)
      {
        [(SearchNoResultsTableViewCell *)self clearHeightConstraint];
      }
    }
  }

  heightConstraint4 = [(SearchNoResultsTableViewCell *)self heightConstraint];

  if (heightConstraint4)
  {
    heightConstraint5 = [(SearchNoResultsTableViewCell *)self heightConstraint];
    [heightConstraint5 setConstant:constraint];

    heightConstraint6 = [(SearchNoResultsTableViewCell *)self heightConstraint];
    [heightConstraint6 priority];
    v18 = v17;

    if (v18 == priority)
    {
      return;
    }

    heightConstraint7 = [(SearchNoResultsTableViewCell *)self heightConstraint];
    *&v19 = priority;
    [heightConstraint7 setPriority:v19];
  }

  else
  {
    contentView = [(SearchNoResultsTableViewCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v22 = [heightAnchor constraintEqualToConstant:constraint];
    [(SearchNoResultsTableViewCell *)self setHeightConstraint:v22];

    heightConstraint8 = [(SearchNoResultsTableViewCell *)self heightConstraint];
    *&v24 = priority;
    [heightConstraint8 setPriority:v24];

    heightConstraint7 = [(SearchNoResultsTableViewCell *)self heightConstraint];
    [heightConstraint7 setActive:1];
  }
}

- (void)clearHeightConstraint
{
  heightConstraint = [(SearchNoResultsTableViewCell *)self heightConstraint];
  [heightConstraint setActive:0];

  [(SearchNoResultsTableViewCell *)self setHeightConstraint:0];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setDistribution:0];
  [(UIStackView *)self->_stackView setAlignment:3];
  [v3 addSubview:self->_stackView];
  v6 = objc_alloc_init(MapsThemeLabel);
  [(MapsThemeLabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"No results [autocomplete]" value:@"localized string not found" table:0];
  [(MapsThemeLabel *)v6 setText:v8];

  v48 = v6;
  [DynamicTypeWizard autorefreshLabel:v6 withFontProvider:&stru_10165D908];
  v9 = +[UIColor secondaryLabelColor];
  [(MapsThemeLabel *)v6 setTextColor:v9];

  [(MapsThemeLabel *)v6 setTextAlignment:1];
  [(MapsThemeLabel *)v6 setAllowsDefaultTighteningForTruncation:1];
  [(MapsThemeLabel *)v6 setAdjustsFontSizeToFitWidth:1];
  [(MapsThemeLabel *)v6 setMinimumScaleFactor:0.699999988];
  [(UIStackView *)self->_stackView addArrangedSubview:v6];
  v10 = [[KeyboardAvoidingView alloc] initWithContentView:v3];
  [(SearchNoResultsTableViewCell *)self setKeyboardAvoidingView:v10];

  keyboardAvoidingView = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  [keyboardAvoidingView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(SearchNoResultsTableViewCell *)self contentView];
  keyboardAvoidingView2 = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  [contentView addSubview:keyboardAvoidingView2];

  v14 = +[UIButtonConfiguration plainButtonConfiguration];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Add a Missing Place" value:@"localized string not found" table:0];
  [v14 setTitle:v16];

  v47 = v14;
  [v14 setTitleTextAttributesTransformer:&stru_101628860];
  v17 = [UIButton buttonWithType:1];
  rapButton = self->_rapButton;
  self->_rapButton = v17;

  [(UIButton *)self->_rapButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_rapButton addTarget:self action:"_didTapOnRAPButton" forControlEvents:64];
  [(UIButton *)self->_rapButton setConfiguration:v14];
  [(UIStackView *)self->_stackView centerXAnchor];
  v46 = v45 = v3;
  centerXAnchor = [v3 centerXAnchor];
  v43 = [v46 constraintEqualToAnchor:centerXAnchor];
  v49[0] = v43;
  centerYAnchor = [(UIStackView *)self->_stackView centerYAnchor];
  centerYAnchor2 = [v3 centerYAnchor];
  v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[1] = v40;
  keyboardAvoidingView3 = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  leadingAnchor = [keyboardAvoidingView3 leadingAnchor];
  contentView2 = [(SearchNoResultsTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[2] = v35;
  keyboardAvoidingView4 = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  trailingAnchor = [keyboardAvoidingView4 trailingAnchor];
  contentView3 = [(SearchNoResultsTableViewCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[3] = v30;
  keyboardAvoidingView5 = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  topAnchor = [keyboardAvoidingView5 topAnchor];
  contentView4 = [(SearchNoResultsTableViewCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[4] = v22;
  keyboardAvoidingView6 = [(SearchNoResultsTableViewCell *)self keyboardAvoidingView];
  bottomAnchor = [keyboardAvoidingView6 bottomAnchor];
  contentView5 = [(SearchNoResultsTableViewCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[5] = v27;
  v28 = [NSArray arrayWithObjects:v49 count:6];
  [NSLayoutConstraint activateConstraints:v28];
}

- (SearchNoResultsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = SearchNoResultsTableViewCell;
  v4 = [(SearchNoResultsTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(SearchNoResultsTableViewCell *)v4 setBackgroundColor:v5];

    [(SearchNoResultsTableViewCell *)v4 setupSubviews];
  }

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end