@interface EKRecurrenceOrdinalChooserController
- (EKRecurrenceOrdinalChooserController)initWithDate:(id)date;
- (double)heightForRow:(int64_t)row;
- (id)cellForRow:(int64_t)row;
@end

@implementation EKRecurrenceOrdinalChooserController

- (EKRecurrenceOrdinalChooserController)initWithDate:(id)date
{
  v7.receiver = self;
  v7.super_class = EKRecurrenceOrdinalChooserController;
  v3 = [(EKRecurrenceChooserController *)&v7 initWithDate:date];
  if (v3)
  {
    v4 = objc_opt_new();
    [(EKRecurrenceOrdinalPickerViewController *)v4 setDelegate:v3];
    pickerViewController = v3->_pickerViewController;
    v3->_pickerViewController = v4;
  }

  return v3;
}

- (double)heightForRow:(int64_t)row
{
  view = [(EKRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v5 = v4;

  return v5;
}

- (id)cellForRow:(int64_t)row
{
  v29[2] = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (!cell)
  {
    view = [(EKRecurrenceOrdinalPickerViewController *)self->_pickerViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundColor = [(EKRecurrenceChooserController *)self backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [(EKRecurrenceChooserController *)self backgroundColor];
      [view setBackgroundColor:backgroundColor2];
    }

    v8 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v9 = self->_cell;
    self->_cell = &v8->super;

    contentView = [(UITableViewCell *)self->_cell contentView];
    [contentView addSubview:view];

    contentView2 = [(UITableViewCell *)self->_cell contentView];
    v12 = MEMORY[0x1E696ACD8];
    contentView3 = [(UITableViewCell *)self->_cell contentView];
    v14 = [v12 constraintWithItem:contentView3 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
    [contentView2 addConstraint:v14];

    contentView4 = [(UITableViewCell *)self->_cell contentView];
    v16 = MEMORY[0x1E696ACD8];
    contentView5 = [(UITableViewCell *)self->_cell contentView];
    v18 = [v16 constraintWithItem:view attribute:7 relatedBy:0 toItem:contentView5 attribute:7 multiplier:1.0 constant:1.0];
    [contentView4 addConstraint:v18];

    v19 = MEMORY[0x1E696ACD8];
    contentView6 = [(UITableViewCell *)self->_cell contentView];
    v21 = [v19 constraintWithItem:contentView6 attribute:8 relatedBy:1 toItem:view attribute:8 multiplier:1.0 constant:0.0];

    LODWORD(v22) = 1148829696;
    [v21 setPriority:v22];
    v23 = MEMORY[0x1E696ACD8];
    contentView7 = [(UITableViewCell *)self->_cell contentView];
    v25 = [v23 constraintWithItem:contentView7 attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];

    contentView8 = [(UITableViewCell *)self->_cell contentView];
    v29[0] = v21;
    v29[1] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [contentView8 addConstraints:v27];

    cell = self->_cell;
  }

  return cell;
}

@end