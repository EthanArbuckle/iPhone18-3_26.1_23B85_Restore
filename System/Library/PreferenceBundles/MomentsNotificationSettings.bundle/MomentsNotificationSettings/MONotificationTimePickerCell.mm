@interface MONotificationTimePickerCell
- (MONotificationTimePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIDatePicker)datePicker;
- (id)controlValue;
- (id)newControl;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation MONotificationTimePickerCell

- (MONotificationTimePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = MONotificationTimePickerCell;
  v4 = [(MONotificationTimePickerCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
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

    v11 = [(MONotificationTimePickerCell *)v4 control];
    datePicker = v4->_datePicker;
    v4->_datePicker = v11;

    [(UIStackView *)v4->_mainStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_mainStack setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_listContentView];
    [(UIStackView *)v4->_mainStack addArrangedSubview:v4->_datePicker];
    v13 = [(MONotificationTimePickerCell *)v4 contentView];
    [v13 addSubview:v4->_mainStack];

    v32 = [(UIStackView *)v4->_mainStack topAnchor];
    v33 = [(MONotificationTimePickerCell *)v4 contentView];
    v31 = [v33 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v35[0] = v30;
    v28 = [(UIStackView *)v4->_mainStack leadingAnchor];
    v29 = [(MONotificationTimePickerCell *)v4 contentView];
    v27 = [v29 layoutMarginsGuide];
    v26 = [v27 leadingAnchor];
    v25 = [v28 constraintEqualToAnchor:v26];
    v35[1] = v25;
    v24 = [(UIStackView *)v4->_mainStack bottomAnchor];
    v14 = [(MONotificationTimePickerCell *)v4 contentView];
    v15 = [v14 bottomAnchor];
    v16 = [v24 constraintEqualToAnchor:v15];
    v35[2] = v16;
    v17 = [(UIStackView *)v4->_mainStack trailingAnchor];
    v18 = [(MONotificationTimePickerCell *)v4 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 trailingAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
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
    v4 = [(MONotificationTimePickerCell *)self control];
    v5 = self->_datePicker;
    self->_datePicker = v4;

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
  v2 = [(MONotificationTimePickerCell *)self datePicker];
  v3 = [v2 date];

  return v3;
}

- (void)setValue:(id)a3
{
  v4.receiver = self;
  v4.super_class = MONotificationTimePickerCell;
  [(MONotificationTimePickerCell *)&v4 setValue:a3];
  [(MONotificationTimePickerCell *)self setNeedsUpdateConfiguration];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = MONotificationTimePickerCell;
  [(MONotificationTimePickerCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(MONotificationTimePickerCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v18 = a3;
  v4 = [(MONotificationTimePickerCell *)self defaultContentConfiguration];
  v5 = [v4 updatedConfigurationForState:v18];

  WeakRetained = objc_loadWeakRetained(&self->PSControlTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [WeakRetained name];
  [v5 setText:v7];

  v8 = [v18 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);
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
  v17 = [(UIDatePicker *)self->_datePicker date];

  if (v17 != v16)
  {
    [(UIDatePicker *)self->_datePicker setDate:v16];
  }

  -[UIDatePicker setEnabled:](self->_datePicker, "setEnabled:", [v18 isDisabled] ^ 1);
}

@end