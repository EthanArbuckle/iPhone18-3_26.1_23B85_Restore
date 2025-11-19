@interface EKDateTimeCell
- (EKDateTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_datePicker:(id)a3 didSelectComponent:(int64_t)a4;
- (void)_updateConstraints;
- (void)contentSizeCategoryChanged;
- (void)datePickerBeganEditing:(id)a3;
- (void)datePickerChanged:(id)a3;
- (void)datePickerEndedEditing:(id)a3;
- (void)didMoveToWindow;
- (void)handleTap;
- (void)replaceControlsWithPicker:(id)a3;
- (void)updateWithDate:(id)a3 timeZone:(id)a4 allDay:(BOOL)a5 needsStrikethrough:(BOOL)a6;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation EKDateTimeCell

- (EKDateTimeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = EKDateTimeCell;
  v4 = [(EKDateTimeCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
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
    v10 = [(EKDateTimeCell *)v4 contentView];
    [v10 addSubview:v4->_titleLabel];

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
    v14 = [(EKDateTimeCell *)v4 contentView];
    [v14 addSubview:v4->_datePicker];

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

- (void)willMoveToSuperview:(id)a3
{
  if (a3)
  {
    [(UIDatePicker *)self->_datePicker _compactStyleSetActiveComponent:self->_currentVisibleComponent];
  }
}

- (void)didMoveToWindow
{
  v3 = [(EKDateTimeCell *)self window];

  if (v3)
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
    v35 = [(EKDateTimeCell *)self contentView];
    v34 = [v3 constraintWithItem:titleLabel attribute:5 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v36[0] = v34;
    v5 = MEMORY[0x1E696ACD8];
    v6 = self->_titleLabel;
    v33 = [(EKDateTimeCell *)self contentView];
    v32 = [v5 constraintWithItem:v6 attribute:10 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v36[1] = v32;
    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_datePicker attribute:5 relatedBy:1 toItem:self->_titleLabel attribute:6 multiplier:1.0 constant:8.0];
    v36[2] = v7;
    v8 = MEMORY[0x1E696ACD8];
    datePicker = self->_datePicker;
    v10 = [(EKDateTimeCell *)self contentView];
    v11 = [v8 constraintWithItem:datePicker attribute:10 relatedBy:0 toItem:v10 attribute:10 multiplier:1.0 constant:0.0];
    v36[3] = v11;
    v12 = MEMORY[0x1E696ACD8];
    v13 = self->_datePicker;
    v14 = [(EKDateTimeCell *)self contentView];
    v15 = [v12 constraintWithItem:v13 attribute:6 relatedBy:0 toItem:v14 attribute:18 multiplier:1.0 constant:0.0];
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
    v35 = [(EKDateTimeCell *)self contentView];
    v34 = [v19 constraintWithItem:v20 attribute:5 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v37[0] = v34;
    v21 = MEMORY[0x1E696ACD8];
    v22 = self->_titleLabel;
    v33 = [(EKDateTimeCell *)self contentView];
    v32 = [v21 constraintWithItem:v22 attribute:3 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v37[1] = v32;
    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_datePicker attribute:3 relatedBy:0 toItem:self->_titleLabel attribute:4 multiplier:1.0 constant:0.0];
    v37[2] = v7;
    v23 = MEMORY[0x1E696ACD8];
    v24 = self->_datePicker;
    v10 = [(EKDateTimeCell *)self contentView];
    v11 = [v23 constraintWithItem:v24 attribute:5 relatedBy:0 toItem:v10 attribute:17 multiplier:1.0 constant:0.0];
    v37[3] = v11;
    v25 = MEMORY[0x1E696ACD8];
    v26 = self->_datePicker;
    v14 = [(EKDateTimeCell *)self contentView];
    v15 = [v25 constraintWithItem:v26 attribute:6 relatedBy:-1 toItem:v14 attribute:18 multiplier:1.0 constant:0.0];
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

- (void)updateWithDate:(id)a3 timeZone:(id)a4 allDay:(BOOL)a5 needsStrikethrough:(BOOL)a6
{
  v6 = a6;
  v19[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  datePicker = self->_datePicker;
  v11 = a4;
  v12 = a3;
  [(UIDatePicker *)datePicker setDatePickerMode:v9];
  v18 = *MEMORY[0x1E69DB6B8];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v19[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  [(UIDatePicker *)self->_datePicker _setOverrideCompactTextAttributes:v14];

  v15 = [v12 copy];
  [v15 setTimeZone:v11];
  v16 = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [v16 dateFromComponents:v15];

  [(UIDatePicker *)self->_datePicker setDate:v17 animated:0];
  [(UIDatePicker *)self->_datePicker _setDisplaysTimeZone:v11 != 0];
  [(UIDatePicker *)self->_datePicker setTimeZone:v11];
}

- (void)replaceControlsWithPicker:(id)a3
{
  v4 = a3;
  [(EKDateTimeCell *)self addSubview:v4];
  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
  [v5 setActive:1];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:v4 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];

  [v6 setActive:1];
  datePicker = self->_datePicker;

  [(UIDatePicker *)datePicker setHidden:1];
}

- (void)handleTap
{
  gestureRecognizer = self->_gestureRecognizer;
  v4 = [(EKDateTimeCell *)self contentView];
  [(UITapGestureRecognizer *)gestureRecognizer locationInView:v4];
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

- (void)datePickerChanged:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v5 timeZone];
  v8 = [v5 date];

  v12 = [v6 componentsInTimeZone:v7 fromDate:v8];

  [v12 setTimeZone:0];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v9 dateFromComponents:v12];

  v11 = [(EKDateTimeCell *)self dateTimeDelegate];
  [v11 dateTimeCell:self dateChanged:v10];
}

- (void)datePickerBeganEditing:(id)a3
{
  self->_isEditing = 1;
  v4 = [(EKDateTimeCell *)self dateTimeDelegate];
  [v4 dateTimeCellBeganEditing:self];
}

- (void)datePickerEndedEditing:(id)a3
{
  self->_isEditing = 0;
  v4 = [(EKDateTimeCell *)self dateTimeDelegate];
  [v4 dateTimeCellEndedEditing:self];
}

- (void)_datePicker:(id)a3 didSelectComponent:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_currentVisibleComponent)
  {
    v8 = a4 == 0;
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
    currentVisibleComponent = a4;
  }

  if (!self->_isEditing)
  {
    v12 = v6;
    v10 = EKUICatalyst();
    v7 = v12;
    if ((v10 & 1) == 0)
    {
      if (currentVisibleComponent == 2)
      {
        v11 = [(EKDateTimeCell *)self dateTimeDelegate];
        [v11 dateTimeCellTimeTapped:self];
      }

      else
      {
        if (currentVisibleComponent != 1)
        {
          goto LABEL_14;
        }

        v11 = [(EKDateTimeCell *)self dateTimeDelegate];
        [v11 dateTimeCellDateTapped:self];
      }

      v7 = v12;
    }
  }

LABEL_14:
  self->_currentVisibleComponent = a4;
}

@end