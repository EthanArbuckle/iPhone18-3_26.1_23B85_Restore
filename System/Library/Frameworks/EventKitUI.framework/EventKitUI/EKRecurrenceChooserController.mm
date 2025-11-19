@interface EKRecurrenceChooserController
+ (int)dayFromNumber:(int64_t)a3;
- (EKRecurrenceChooserController)initWithDate:(id)a3;
- (EKRecurrenceChooserControllerDelegate)delegate;
- (id)cellForRow:(int64_t)a3;
- (id)startDateComponents:(unint64_t)a3;
- (int64_t)frequency;
- (void)notifyDelegate;
@end

@implementation EKRecurrenceChooserController

- (EKRecurrenceChooserController)initWithDate:(id)a3
{
  v4 = a3;
  v5 = [(EKRecurrenceChooserController *)self init];
  v6 = v5;
  if (v5)
  {
    [(EKRecurrenceChooserController *)v5 setDate:v4];
  }

  return v6;
}

+ (int)dayFromNumber:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_1D36008B0[a3 - 1];
  }
}

- (id)startDateComponents:(unint64_t)a3
{
  v4 = [(EKRecurrenceChooserController *)self date];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [v5 components:a3 fromDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)notifyDelegate
{
  v3 = [(EKRecurrenceChooserController *)self delegate];
  [v3 recurrenceChooserUpdated:self];
}

- (EKRecurrenceChooserControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)frequency
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

- (id)cellForRow:(int64_t)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v3 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];

  return v3;
}

@end