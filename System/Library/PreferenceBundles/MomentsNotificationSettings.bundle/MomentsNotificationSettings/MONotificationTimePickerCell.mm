@interface MONotificationTimePickerCell
- (MONotificationTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIDatePicker)datePicker;
- (id)controlValue;
- (id)newControl;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation MONotificationTimePickerCell

- (MONotificationTimePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = MONotificationTimePickerCell;
  v4 = [(MONotificationTimePickerCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UIStackView);
    mainStack = v4->_mainStack;
    v4->_mainStack = v5;

    v7 = [UIListContentView alloc];
    v8 = +[UIListContentConfiguration cellConfiguration];
    v9 = [v7 initWithConfiguration:v8];
    listContentView = v4->_listContentView;
    v4->_listContentView = v9;

    control = [(MONotificationTimePickerCell *)v4 control];
    datePicker = v4->_datePicker;
    v4->_datePicker = control;

    [(UIStackView *)v4->_mainStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_mainStack setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_listContentView];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_datePicker];
    contentView = [(MONotificationTimePickerCell *)v4 contentView];
    [contentView addSubview:v4->_mainStack];

    topAnchor = [(UIStackView *)v4->_mainStack topAnchor];
    contentView2 = [(MONotificationTimePickerCell *)v4 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[0] = v30;
    leadingAnchor = [(UIStackView *)v4->_mainStack leadingAnchor];
    contentView3 = [(MONotificationTimePickerCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[1] = v25;
    bottomAnchor = [(UIStackView *)v4->_mainStack bottomAnchor];
    contentView4 = [(MONotificationTimePickerCell *)v4 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[2] = v16;
    trailingAnchor = [(UIStackView *)v4->_mainStack trailingAnchor];
    contentView5 = [(MONotificationTimePickerCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[3] = v21;
    v22 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  return v4;
}

- (UIDatePicker)datePicker
{
  datePicker = self->_datePicker;
  if (!datePicker)
  {
    control = [(MONotificationTimePickerCell *)self control];
    v5 = self->_datePicker;
    self->_datePicker = control;

    datePicker = self->_datePicker;
  }

  return datePicker;
}

- (id)newControl
{
  v2 = objc_alloc_init(UIDatePicker);
  [v2 setDatePickerMode:0];
  [v2 setPreferredDatePickerStyle:2];
  return v2;
}

- (id)controlValue
{
  datePicker = [(MONotificationTimePickerCell *)self datePicker];
  date = [datePicker date];

  return date;
}

- (void)setValue:(id)value
{
  v4.receiver = self;
  v4.super_class = MONotificationTimePickerCell;
  [(MONotificationTimePickerCell *)&v4 setValue:value];
  [(MONotificationTimePickerCell *)self setNeedsUpdateConfiguration];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = MONotificationTimePickerCell;
  [(MONotificationTimePickerCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(MONotificationTimePickerCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  defaultContentConfiguration = [(MONotificationTimePickerCell *)self defaultContentConfiguration];
  v5 = [defaultContentConfiguration updatedConfigurationForState:stateCopy];

  WeakRetained = objc_loadWeakRetained(&self->PSControlTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  name = [WeakRetained name];
  [v5 setText:name];

  traitCollection = [stateCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  mainStack = self->_mainStack;
  if (IsAccessibilityCategory)
  {
    [(UIStackView *)mainStack setAxis:1];
    [(UIStackView *)self->_mainStack setDistribution:0];
    [(UIStackView *)self->_mainStack setAlignment:1];
    [v5 textToSecondaryTextVerticalPadding];
    [(UIStackView *)self->_mainStack setSpacing:?];
    [v5 directionalLayoutMargins];
    [(UIStackView *)self->_mainStack setDirectionalLayoutMargins:?];
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  else
  {
    [(UIStackView *)mainStack setAxis:0];
    [(UIStackView *)self->_mainStack setAlignment:3];
    [(UIStackView *)self->_mainStack setDistribution:3];
    [v5 textToSecondaryTextHorizontalPadding];
    [(UIStackView *)self->_mainStack setSpacing:?];
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    [(UIStackView *)self->_mainStack setDirectionalLayoutMargins:NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing];
  }

  [v5 setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
  [v5 setAxesPreservingSuperviewLayoutMargins:0];
  [(UIListContentView *)self->_listContentView setConfiguration:v5];
  v16 = *&self->PSControlTableCell_opaque[OBJC_IVAR___PSTableCell__value];
  date = [(UIDatePicker *)self->_datePicker date];

  if (date != v16)
  {
    [(UIDatePicker *)self->_datePicker setDate:v16];
  }

  -[UIDatePicker setEnabled:](self->_datePicker, "setEnabled:", [stateCopy isDisabled] ^ 1);
}

@end