@interface MFCalendarCollectionViewCell
- (MFCalendarCollectionViewCell)initWithFrame:(CGRect)a3;
- (MFCalendarCollectionViewCellDelegate)delegate;
- (void)datePickerChanged:(id)a3;
- (void)updateCalendarDate:(id)a3;
@end

@implementation MFCalendarCollectionViewCell

- (MFCalendarCollectionViewCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MFCalendarCollectionViewCell;
  v3 = [(MFCalendarCollectionViewCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(MFCalendarCollectionViewCell *)v3 contentView];
    [v8 addSubview:v3->_datePicker];

    v9 = v3->_datePicker;
    v10 = [(MFCalendarCollectionViewCell *)v3 contentView];
    [(UIDatePicker *)v9 mf_pinToView:v10 usingLayoutMargins:0];
  }

  return v3;
}

- (void)datePickerChanged:(id)a3
{
  v6 = a3;
  v4 = [(MFCalendarCollectionViewCell *)self delegate];
  v5 = [v6 date];
  [v4 calendarCollectionViewCell:self didChangeDate:v5];
}

- (void)updateCalendarDate:(id)a3
{
  v5 = a3;
  v4 = [(MFCalendarCollectionViewCell *)self datePicker];
  [v4 setDate:v5];
}

- (MFCalendarCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end