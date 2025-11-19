@interface EKRecurrenceMonthlyChooserController
- (BOOL)drawBackgroundForRow:(int64_t)a3;
- (EKRecurrenceMonthlyChooserController)initWithDate:(id)a3;
- (double)heightForRow:(int64_t)a3;
- (id)_currentChooser;
- (id)backgroundColor;
- (id)cellForRow:(int64_t)a3;
- (void)_selectRow:(int64_t)a3;
- (void)rowTapped:(int64_t)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateFromRecurrenceRule:(id)a3;
- (void)updateRecurrenceRuleBuilder:(id)a3;
@end

@implementation EKRecurrenceMonthlyChooserController

- (EKRecurrenceMonthlyChooserController)initWithDate:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EKRecurrenceMonthlyChooserController;
  v5 = [(EKRecurrenceChooserController *)&v21 initWithDate:v4];
  if (v5)
  {
    v6 = [[EKRecurrenceMonthDayChooserController alloc] initWithDate:v4];
    monthDayChooser = v5->_monthDayChooser;
    v5->_monthDayChooser = v6;

    v8 = [[EKRecurrenceOrdinalChooserController alloc] initWithDate:v4];
    ordinalChooser = v5->_ordinalChooser;
    v5->_ordinalChooser = v8;

    v10 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    onEachCell = v5->_onEachCell;
    v5->_onEachCell = &v10->super;

    v12 = EventKitUIBundle();
    v13 = [v12 localizedStringForKey:@"Each" value:&stru_1F4EF6790 table:0];
    v14 = [(UITableViewCell *)v5->_onEachCell textLabel];
    [v14 setText:v13];

    v15 = [(EKUITableViewCell *)[EKUIFullWidthDividerTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    onTheCell = v5->_onTheCell;
    v5->_onTheCell = &v15->super.super;

    v17 = EventKitUIBundle();
    v18 = [v17 localizedStringForKey:@"On the…" value:&stru_1F4EF6790 table:0];
    v19 = [(UITableViewCell *)v5->_onTheCell textLabel];
    [v19 setText:v18];
  }

  return v5;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  [(EKRecurrenceChooserController *)self->_monthDayChooser setDelegate:v4];
  [(EKRecurrenceChooserController *)self->_ordinalChooser setDelegate:v4];
}

- (void)updateRecurrenceRuleBuilder:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  [v5 updateRecurrenceRuleBuilder:v4];
}

- (void)updateFromRecurrenceRule:(id)a3
{
  monthDayChooser = self->_monthDayChooser;
  v5 = a3;
  [(EKRecurrenceMonthDayChooserController *)monthDayChooser updateFromRecurrenceRule:v5];
  [(EKRecurrenceOrdinalChooserController *)self->_ordinalChooser updateFromRecurrenceRule:v5];
  v6 = [EKUICustomRecurrenceViewController isRecurrenceRuleOrdinal:v5];

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

- (id)cellForRow:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = 72;
  }

  else
  {
    if (a3 == 2)
    {
      v3 = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
      v4 = [v3 cellForRow:0];

      goto LABEL_7;
    }

    v5 = 64;
  }

  v4 = *(&self->super.super.isa + v5);
LABEL_7:

  return v4;
}

- (double)heightForRow:(int64_t)a3
{
  if (a3 != 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v3 = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  [v3 heightForRow:0];
  v5 = v4;

  return v5;
}

- (void)rowTapped:(int64_t)a3
{
  [(EKRecurrenceMonthlyChooserController *)self _selectRow:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained recurrenceChooser:self wantsRowReload:2];

  v6 = objc_loadWeakRetained(&self->_delegate);
  v5 = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  [v6 recurrenceChooserUpdated:v5];
}

- (BOOL)drawBackgroundForRow:(int64_t)a3
{
  if (a3 != 2)
  {
    return 1;
  }

  v3 = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  v4 = [v3 drawBackgroundForRow:2];

  return v4;
}

- (void)_selectRow:(int64_t)a3
{
  self->_selectedRow = a3;
  if (a3)
  {
    if (a3 != 1)
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
  v2 = [(EKRecurrenceMonthlyChooserController *)self _currentChooser];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  monthDayChooser = self->_monthDayChooser;
  v5 = a3;
  [(EKRecurrenceChooserController *)monthDayChooser setBackgroundColor:v5];
  [(EKRecurrenceChooserController *)self->_ordinalChooser setBackgroundColor:v5];
}

@end