@interface EKRecurrenceMonthlyChooserController
- (BOOL)drawBackgroundForRow:(int64_t)row;
- (EKRecurrenceMonthlyChooserController)initWithDate:(id)date;
- (double)heightForRow:(int64_t)row;
- (id)_currentChooser;
- (id)backgroundColor;
- (id)cellForRow:(int64_t)row;
- (void)_selectRow:(int64_t)row;
- (void)rowTapped:(int64_t)tapped;
- (void)setBackgroundColor:(id)color;
- (void)setDelegate:(id)delegate;
- (void)updateFromRecurrenceRule:(id)rule;
- (void)updateRecurrenceRuleBuilder:(id)builder;
@end

@implementation EKRecurrenceMonthlyChooserController

- (EKRecurrenceMonthlyChooserController)initWithDate:(id)date
{
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = EKRecurrenceMonthlyChooserController;
  v5 = [(EKRecurrenceChooserController *)&v21 initWithDate:dateCopy];
  if (v5)
  {
    v6 = [[EKRecurrenceMonthDayChooserController alloc] initWithDate:dateCopy];
    monthDayChooser = v5->_monthDayChooser;
    v5->_monthDayChooser = v6;

    v8 = [[EKRecurrenceOrdinalChooserController alloc] initWithDate:dateCopy];
    ordinalChooser = v5->_ordinalChooser;
    v5->_ordinalChooser = v8;

    v10 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    onEachCell = v5->_onEachCell;
    v5->_onEachCell = &v10->super;

    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Each" value:&stru_1F4EF6790 table:0];
    textLabel = [(UITableViewCell *)v5->_onEachCell textLabel];
    [textLabel setText:v13];

    v15 = [(EKUITableViewCell *)[EKUIFullWidthDividerTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    onTheCell = v5->_onTheCell;
    v5->_onTheCell = &v15->super.super;

    v17 = EventKitUIBundle();
    v18 = [v17 localizedStringForKey:@"On the…" value:&stru_1F4EF6790 table:0];
    textLabel2 = [(UITableViewCell *)v5->_onTheCell textLabel];
    [textLabel2 setText:v18];
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  [(EKRecurrenceChooserController *)self->_monthDayChooser setDelegate:delegateCopy];
  [(EKRecurrenceChooserController *)self->_ordinalChooser setDelegate:delegateCopy];
}

- (void)updateRecurrenceRuleBuilder:(id)builder
{
  builderCopy = builder;
  _currentChooser = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  [_currentChooser updateRecurrenceRuleBuilder:builderCopy];
}

- (void)updateFromRecurrenceRule:(id)rule
{
  monthDayChooser = self->_monthDayChooser;
  ruleCopy = rule;
  [(EKRecurrenceMonthDayChooserController *)monthDayChooser updateFromRecurrenceRule:ruleCopy];
  [(EKRecurrenceOrdinalChooserController *)self->_ordinalChooser updateFromRecurrenceRule:ruleCopy];
  v6 = [EKUICustomRecurrenceViewController isRecurrenceRuleOrdinal:ruleCopy];

  [(EKRecurrenceMonthlyChooserController *)self _selectRow:v6];
}

- (id)_currentChooser
{
  if (self->_selectedRow)
  {
    v2 = &OBJC_IVAR___EKRecurrenceMonthlyChooserController__ordinalChooser;
  }

  else
  {
    v2 = &OBJC_IVAR___EKRecurrenceMonthlyChooserController__monthDayChooser;
  }

  return *(&self->super.super.isa + *v2);
}

- (id)cellForRow:(int64_t)row
{
  if (row == 1)
  {
    v5 = 72;
  }

  else
  {
    if (row == 2)
    {
      _currentChooser = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
      v4 = [_currentChooser cellForRow:0];

      goto LABEL_7;
    }

    v5 = 64;
  }

  v4 = *(&self->super.super.isa + v5);
LABEL_7:

  return v4;
}

- (double)heightForRow:(int64_t)row
{
  if (row != 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  _currentChooser = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  [_currentChooser heightForRow:0];
  v5 = v4;

  return v5;
}

- (void)rowTapped:(int64_t)tapped
{
  [(EKRecurrenceMonthlyChooserController *)self _selectRow:tapped];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained recurrenceChooser:self wantsRowReload:2];

  v6 = objc_loadWeakRetained(&self->_delegate);
  _currentChooser = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  [v6 recurrenceChooserUpdated:_currentChooser];
}

- (BOOL)drawBackgroundForRow:(int64_t)row
{
  if (row != 2)
  {
    return 1;
  }

  _currentChooser = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  v4 = [_currentChooser drawBackgroundForRow:2];

  return v4;
}

- (void)_selectRow:(int64_t)row
{
  self->_selectedRow = row;
  if (row)
  {
    if (row != 1)
    {
      return;
    }

    v4 = &OBJC_IVAR___EKRecurrenceMonthlyChooserController__onEachCell;
    v5 = &OBJC_IVAR___EKRecurrenceMonthlyChooserController__onTheCell;
  }

  else
  {
    v4 = &OBJC_IVAR___EKRecurrenceMonthlyChooserController__onTheCell;
    v5 = &OBJC_IVAR___EKRecurrenceMonthlyChooserController__onEachCell;
  }

  [*(&self->super.super.isa + *v5) setAccessoryType:3];
  v6 = *(&self->super.super.isa + *v4);

  [v6 setAccessoryType:0];
}

- (id)backgroundColor
{
  _currentChooser = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  backgroundColor = [_currentChooser backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  monthDayChooser = self->_monthDayChooser;
  colorCopy = color;
  [(EKRecurrenceChooserController *)monthDayChooser setBackgroundColor:colorCopy];
  [(EKRecurrenceChooserController *)self->_ordinalChooser setBackgroundColor:colorCopy];
}

@end