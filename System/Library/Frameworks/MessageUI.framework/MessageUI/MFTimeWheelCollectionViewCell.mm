@interface MFTimeWheelCollectionViewCell
- (MFTimeWheelCollectionViewCell)initWithFrame:(CGRect)a3;
- (MFTimeWheelCollectionViewCellDelegate)delegate;
- (NSDate)date;
- (NSDate)minimumDate;
- (void)datePickerChanged:(id)a3;
- (void)setDate:(id)a3;
- (void)setMinimumDate:(id)a3;
@end

@implementation MFTimeWheelCollectionViewCell

- (MFTimeWheelCollectionViewCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MFTimeWheelCollectionViewCell;
  v3 = [(MFTimeWheelCollectionViewCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v7 = [(MFTimeWheelCollectionViewCell *)v3 contentView];
    v8 = [(MFTimeWheelCollectionViewCell *)v3 timePicker];
    [v7 addSubview:v8];

    v9 = [(MFTimeWheelCollectionViewCell *)v3 timePicker];
    v10 = [(MFTimeWheelCollectionViewCell *)v3 contentView];
    [v9 mf_pinToView:v10 usingLayoutMargins:0];
  }

  return v3;
}

- (void)datePickerChanged:(id)a3
{
  v6 = a3;
  v4 = [(MFTimeWheelCollectionViewCell *)self delegate];
  v5 = [v6 date];
  [v4 timeCollectionViewCell:self didChangeDate:v5];
}

- (void)setMinimumDate:(id)a3
{
  v5 = a3;
  v4 = [(MFTimeWheelCollectionViewCell *)self timePicker];
  [v4 setMinimumDate:v5];
}

- (NSDate)minimumDate
{
  v2 = [(MFTimeWheelCollectionViewCell *)self timePicker];
  v3 = [v2 minimumDate];

  return v3;
}

- (void)setDate:(id)a3
{
  v5 = a3;
  v4 = [(MFTimeWheelCollectionViewCell *)self timePicker];
  [v4 setDate:v5];
}

- (NSDate)date
{
  v2 = [(MFTimeWheelCollectionViewCell *)self timePicker];
  v3 = [v2 date];

  return v3;
}

- (MFTimeWheelCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end