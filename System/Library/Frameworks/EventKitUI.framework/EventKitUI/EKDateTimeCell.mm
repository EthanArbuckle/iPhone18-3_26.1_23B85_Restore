@interface EKDateTimeCell
- (EKDateTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_datePicker:(id)picker didSelectComponent:(int64_t)component;
- (void)_updateConstraints;
- (void)contentSizeCategoryChanged;
- (void)datePickerBeganEditing:(id)editing;
- (void)datePickerChanged:(id)changed;
- (void)datePickerEndedEditing:(id)editing;
- (void)didMoveToWindow;
- (void)handleTap;
- (void)replaceControlsWithPicker:(id)picker;
- (void)updateWithDate:(id)date timeZone:(id)zone allDay:(BOOL)day needsStrikethrough:(BOOL)strikethrough;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation EKDateTimeCell

- (EKDateTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = EKDateTimeCell;
  v4 = [(EKDateTimeCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v6;

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v4->_titleLabel setFont:v8];

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:0 forAxis:v9];
    contentView = [(EKDateTimeCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    v11 = objc_alloc_init(MEMORY[0x1E69DC920]);
    datePicker = v4->_datePicker;
    v4->_datePicker = v11;

    [(UIDatePicker *)v4->_datePicker setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UIDatePicker *)v4->_datePicker setContentHuggingPriority:0 forAxis:v13];
    [(UIDatePicker *)v4->_datePicker setPreferredDatePickerStyle:2];
    [(UIDatePicker *)v4->_datePicker setDatePickerMode:2];
    [(UIDatePicker *)v4->_datePicker _setCompactStyleDelegate:v4];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel_datePickerChanged_ forControlEvents:4096];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel_datePickerBeganEditing_ forControlEvents:0x10000];
    [(UIDatePicker *)v4->_datePicker addTarget:v4 action:sel_datePickerEndedEditing_ forControlEvents:0x40000];
    contentView2 = [(EKDateTimeCell *)v4 contentView];
    [contentView2 addSubview:v4->_datePicker];

    [(EKDateTimeCell *)v4 _updateConstraints];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_handleTap];
    gestureRecognizer = v4->_gestureRecognizer;
    v4->_gestureRecognizer = v15;

    [(EKDateTimeCell *)v4 addGestureRecognizer:v4->_gestureRecognizer];
  }

  return v4;
}

- (void)contentSizeCategoryChanged
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_titleLabel setFont:v3];

  [(EKDateTimeCell *)self _updateConstraints];
}

- (void)willMoveToSuperview:(id)superview
{
  if (superview)
  {
    [(UIDatePicker *)self->_datePicker _compactStyleSetActiveComponent:self->_currentVisibleComponent];
  }
}

- (void)didMoveToWindow
{
  window = [(EKDateTimeCell *)self window];

  if (window)
  {

    [(EKDateTimeCell *)self _updateConstraints];
  }
}

- (void)_updateConstraints
{
  v37[6] = *MEMORY[0x1E69E9840];
  if (self->_currentConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  if ((EKUICatalyst() & 1) != 0 || !EKUIUsesLargeTextLayout(0) && EKUICurrentWindowWidthWithViewHierarchy(self) >= 375.0)
  {
    [(UIDatePicker *)self->_datePicker setContentHorizontalAlignment:5];
    v3 = MEMORY[0x1E696ACD8];
    titleLabel = self->_titleLabel;
    contentView = [(EKDateTimeCell *)self contentView];
    v34 = [v3 constraintWithItem:titleLabel attribute:5 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v36[0] = v34;
    v5 = MEMORY[0x1E696ACD8];
    v6 = self->_titleLabel;
    contentView2 = [(EKDateTimeCell *)self contentView];
    v32 = [v5 constraintWithItem:v6 attribute:10 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v36[1] = v32;
    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_datePicker attribute:5 relatedBy:1 toItem:self->_titleLabel attribute:6 multiplier:1.0 constant:8.0];
    v36[2] = v7;
    v8 = MEMORY[0x1E696ACD8];
    datePicker = self->_datePicker;
    contentView3 = [(EKDateTimeCell *)self contentView];
    v11 = [v8 constraintWithItem:datePicker attribute:10 relatedBy:0 toItem:contentView3 attribute:10 multiplier:1.0 constant:0.0];
    v36[3] = v11;
    v12 = MEMORY[0x1E696ACD8];
    v13 = self->_datePicker;
    contentView4 = [(EKDateTimeCell *)self contentView];
    v15 = [v12 constraintWithItem:v13 attribute:6 relatedBy:0 toItem:contentView4 attribute:18 multiplier:1.0 constant:0.0];
    v36[4] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
    v17 = 0;
    currentConstraints = self->_currentConstraints;
    self->_currentConstraints = v16;
  }

  else
  {
    [(UIDatePicker *)self->_datePicker setContentHorizontalAlignment:4];
    v19 = MEMORY[0x1E696ACD8];
    v20 = self->_titleLabel;
    contentView = [(EKDateTimeCell *)self contentView];
    v34 = [v19 constraintWithItem:v20 attribute:5 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v37[0] = v34;
    v21 = MEMORY[0x1E696ACD8];
    v22 = self->_titleLabel;
    contentView2 = [(EKDateTimeCell *)self contentView];
    v32 = [v21 constraintWithItem:v22 attribute:3 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v37[1] = v32;
    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_datePicker attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:0.0];
    v37[2] = v7;
    v23 = MEMORY[0x1E696ACD8];
    v24 = self->_datePicker;
    contentView3 = [(EKDateTimeCell *)self contentView];
    v11 = [v23 constraintWithItem:v24 attribute:5 relatedBy:0 toItem:contentView3 attribute:17 multiplier:1.0 constant:0.0];
    v37[3] = v11;
    v25 = MEMORY[0x1E696ACD8];
    v26 = self->_datePicker;
    contentView4 = [(EKDateTimeCell *)self contentView];
    v15 = [v25 constraintWithItem:v26 attribute:6 relatedBy:-1 toItem:contentView4 attribute:18 multiplier:1.0 constant:0.0];
    v37[4] = v15;
    v27 = MEMORY[0x1E696ACD8];
    v28 = self->_datePicker;
    currentConstraints = [(EKDateTimeCell *)self contentView];
    v29 = [v27 constraintWithItem:v28 attribute:4 relatedBy:0 toItem:currentConstraints attribute:16 multiplier:1.0 constant:0.0];
    v37[5] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
    v31 = self->_currentConstraints;
    self->_currentConstraints = v30;

    v17 = 1;
  }

  self->_usingMultiLineLayout = v17;
  [MEMORY[0x1E696ACD8] activateConstraints:self->_currentConstraints];
}

- (void)updateWithDate:(id)date timeZone:(id)zone allDay:(BOOL)day needsStrikethrough:(BOOL)strikethrough
{
  strikethroughCopy = strikethrough;
  v19[1] = *MEMORY[0x1E69E9840];
  if (day)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  datePicker = self->_datePicker;
  zoneCopy = zone;
  dateCopy = date;
  [(UIDatePicker *)datePicker setDatePickerMode:v9];
  v18 = *MEMORY[0x1E69DB6B8];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:strikethroughCopy];
  v19[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [(UIDatePicker *)self->_datePicker _setOverrideCompactTextAttributes:v14];

  v15 = [dateCopy copy];
  [v15 setTimeZone:zoneCopy];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [currentCalendar dateFromComponents:v15];

  [(UIDatePicker *)self->_datePicker setDate:v17 animated:0];
  [(UIDatePicker *)self->_datePicker _setDisplaysTimeZone:zoneCopy != 0];
  [(UIDatePicker *)self->_datePicker setTimeZone:zoneCopy];
}

- (void)replaceControlsWithPicker:(id)picker
{
  pickerCopy = picker;
  [(EKDateTimeCell *)self addSubview:pickerCopy];
  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:pickerCopy attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v5 setActive:1];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:pickerCopy attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];

  [v6 setActive:1];
  datePicker = self->_datePicker;

  [(UIDatePicker *)datePicker setHidden:1];
}

- (void)handleTap
{
  gestureRecognizer = self->_gestureRecognizer;
  contentView = [(EKDateTimeCell *)self contentView];
  [(UITapGestureRecognizer *)gestureRecognizer locationInView:contentView];
  v6 = v5;

  [(UIDatePicker *)self->_datePicker frame];
  MaxX = CGRectGetMaxX(v13);
  v8 = 2;
  if (v6 <= MaxX)
  {
    v8 = 1;
  }

  currentVisibleComponent = self->_currentVisibleComponent;
  if (v8 == currentVisibleComponent)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != currentVisibleComponent)
  {
    [(EKDateTimeCell *)self _datePicker:self->_datePicker didSelectComponent:v10];
    datePicker = self->_datePicker;

    [(UIDatePicker *)datePicker _compactStyleSetActiveComponent:v10];
  }
}

- (void)datePickerChanged:(id)changed
{
  v4 = MEMORY[0x1E695DEE8];
  changedCopy = changed;
  currentCalendar = [v4 currentCalendar];
  timeZone = [changedCopy timeZone];
  date = [changedCopy date];

  v12 = [currentCalendar componentsInTimeZone:timeZone fromDate:date];

  [v12 setTimeZone:0];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [currentCalendar2 dateFromComponents:v12];

  dateTimeDelegate = [(EKDateTimeCell *)self dateTimeDelegate];
  [dateTimeDelegate dateTimeCell:self dateChanged:v10];
}

- (void)datePickerBeganEditing:(id)editing
{
  self->_isEditing = 1;
  dateTimeDelegate = [(EKDateTimeCell *)self dateTimeDelegate];
  [dateTimeDelegate dateTimeCellBeganEditing:self];
}

- (void)datePickerEndedEditing:(id)editing
{
  self->_isEditing = 0;
  dateTimeDelegate = [(EKDateTimeCell *)self dateTimeDelegate];
  [dateTimeDelegate dateTimeCellEndedEditing:self];
}

- (void)_datePicker:(id)picker didSelectComponent:(int64_t)component
{
  pickerCopy = picker;
  v7 = pickerCopy;
  if (self->_currentVisibleComponent)
  {
    v8 = component == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    currentVisibleComponent = self->_currentVisibleComponent;
  }

  else
  {
    currentVisibleComponent = component;
  }

  if (!self->_isEditing)
  {
    v12 = pickerCopy;
    v10 = EKUICatalyst();
    v7 = v12;
    if ((v10 & 1) == 0)
    {
      if (currentVisibleComponent == 2)
      {
        dateTimeDelegate = [(EKDateTimeCell *)self dateTimeDelegate];
        [dateTimeDelegate dateTimeCellTimeTapped:self];
      }

      else
      {
        if (currentVisibleComponent != 1)
        {
          goto LABEL_14;
        }

        dateTimeDelegate = [(EKDateTimeCell *)self dateTimeDelegate];
        [dateTimeDelegate dateTimeCellDateTapped:self];
      }

      v7 = v12;
    }
  }

LABEL_14:
  self->_currentVisibleComponent = component;
}

@end