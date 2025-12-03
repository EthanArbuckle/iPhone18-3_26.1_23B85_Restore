@interface MFTimeWheelCollectionViewCell
- (MFTimeWheelCollectionViewCell)initWithFrame:(CGRect)frame;
- (MFTimeWheelCollectionViewCellDelegate)delegate;
- (NSDate)date;
- (NSDate)minimumDate;
- (void)datePickerChanged:(id)changed;
- (void)setDate:(id)date;
- (void)setMinimumDate:(id)date;
@end

@implementation MFTimeWheelCollectionViewCell

- (MFTimeWheelCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MFTimeWheelCollectionViewCell;
  v3 = [(MFTimeWheelCollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC920]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    [v4 setPreferredDatePickerStyle:1];
    [v4 setDatePickerMode:0];
    [v4 setContentHorizontalAlignment:5];
    v6 = [MEMORY[0x1E695DF00] now];
    [v4 setMinimumDate:v6];

    [v4 setAccessibilityIdentifier:*MEMORY[0x1E69ADBB0]];
    [v4 addTarget:v3 action:sel_datePickerChanged_ forControlEvents:4096];
    [(MFTimeWheelCollectionViewCell *)v3 setTimePicker:v4];
    contentView = [(MFTimeWheelCollectionViewCell *)v3 contentView];
    timePicker = [(MFTimeWheelCollectionViewCell *)v3 timePicker];
    [contentView addSubview:timePicker];

    timePicker2 = [(MFTimeWheelCollectionViewCell *)v3 timePicker];
    contentView2 = [(MFTimeWheelCollectionViewCell *)v3 contentView];
    [timePicker2 mf_pinToView:contentView2 usingLayoutMargins:0];
  }

  return v3;
}

- (void)datePickerChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(MFTimeWheelCollectionViewCell *)self delegate];
  date = [changedCopy date];
  [delegate timeCollectionViewCell:self didChangeDate:date];
}

- (void)setMinimumDate:(id)date
{
  dateCopy = date;
  timePicker = [(MFTimeWheelCollectionViewCell *)self timePicker];
  [timePicker setMinimumDate:dateCopy];
}

- (NSDate)minimumDate
{
  timePicker = [(MFTimeWheelCollectionViewCell *)self timePicker];
  minimumDate = [timePicker minimumDate];

  return minimumDate;
}

- (void)setDate:(id)date
{
  dateCopy = date;
  timePicker = [(MFTimeWheelCollectionViewCell *)self timePicker];
  [timePicker setDate:dateCopy];
}

- (NSDate)date
{
  timePicker = [(MFTimeWheelCollectionViewCell *)self timePicker];
  date = [timePicker date];

  return date;
}

- (MFTimeWheelCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end