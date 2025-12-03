@interface MFCalendarCollectionViewCell
- (MFCalendarCollectionViewCell)initWithFrame:(CGRect)frame;
- (MFCalendarCollectionViewCellDelegate)delegate;
- (void)datePickerChanged:(id)changed;
- (void)updateCalendarDate:(id)date;
@end

@implementation MFCalendarCollectionViewCell

- (MFCalendarCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MFCalendarCollectionViewCell;
  v3 = [(MFCalendarCollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = v3->_datePicker;
    v3->_datePicker = v4;

    [(UIDatePicker *)v3->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(UIDatePicker *)v3->_datePicker setContentHuggingPriority:0 forAxis:v6];
    [(UIDatePicker *)v3->_datePicker setPreferredDatePickerStyle:3];
    [(UIDatePicker *)v3->_datePicker setDatePickerMode:1];
    [(UIDatePicker *)v3->_datePicker setContentHorizontalAlignment:5];
    [(UIDatePicker *)v3->_datePicker addTarget:v3 action:sel_datePickerChanged_ forControlEvents:4096];
    v7 = [MEMORY[0x1E695DF00] now];
    [(UIDatePicker *)v3->_datePicker setMinimumDate:v7];

    [(UIDatePicker *)v3->_datePicker setAccessibilityIdentifier:*MEMORY[0x1E69ADB40]];
    contentView = [(MFCalendarCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_datePicker];

    v9 = v3->_datePicker;
    contentView2 = [(MFCalendarCollectionViewCell *)v3 contentView];
    [(UIDatePicker *)v9 mf_pinToView:contentView2 usingLayoutMargins:0];
  }

  return v3;
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(MFCalendarCollectionViewCell *)self delegate];
  date = [changedCopy date];
  [delegate calendarCollectionViewCell:self didChangeDate:date];
}

- (void)updateCalendarDate:(id)date
{
  dateCopy = date;
  datePicker = [(MFCalendarCollectionViewCell *)self datePicker];
  [datePicker setDate:dateCopy];
}

- (MFCalendarCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end