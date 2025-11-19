@interface MTATimerIntervalPickerView
- (BOOL)isSelectedDurationValid;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTATimerIntervalPickerView)initWithFrame:(CGRect)a3;
- (MTATimerIntervalPickerViewDelegate)delegate;
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (double)selectedDuration;
- (id)_hoursStringForHour:(int64_t)a3;
- (id)_labelForComponent:(int64_t)a3 createIfNecessary:(BOOL)a4;
- (id)_makeNewComponentLabel;
- (id)_minutesStringForMinutes:(int64_t)a3;
- (id)_secondsStringForSeconds:(int64_t)a3;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_fadeLabelForComponent:(int64_t)a3 toText:(id)a4 animated:(BOOL)a5;
- (void)_positionLabel:(id)a3 forComponent:(int64_t)a4;
- (void)_setLabel:(id)a3 forComponent:(int64_t)a4;
- (void)_updateLabels:(BOOL)a3;
- (void)layoutSubviews;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setDuration:(double)a3;
@end

@implementation MTATimerIntervalPickerView

- (MTATimerIntervalPickerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MTATimerIntervalPickerView;
  v3 = [(MTATimerIntervalPickerView *)&v7 initWithFrame:0.0, 0.0, 320.0, 216.0];
  if (v3)
  {
    v4 = [[UIPickerView alloc] initWithFrame:{0.0, 0.0, 320.0, 216.0}];
    timePicker = v3->_timePicker;
    v3->_timePicker = v4;

    [(UIPickerView *)v3->_timePicker setDataSource:v3];
    [(UIPickerView *)v3->_timePicker setDelegate:v3];
    [(MTATimerIntervalPickerView *)v3 addSubview:v3->_timePicker];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MTATimerIntervalPickerView;
  [(MTATimerIntervalPickerView *)&v6 layoutSubviews];
  [(MTATimerIntervalPickerView *)self frame];
  v4 = v3 * 0.5 + -160.0;
  [(MTATimerIntervalPickerView *)self frame];
  [(UIPickerView *)self->_timePicker setFrame:v4, v5 * 0.5 + -108.0, 320.0, 216.0];
  [(UIPickerView *)self->_timePicker setSemanticContentAttribute:3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 320.0;
  v4 = 216.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = 60;
  if (a4 >= 3)
  {
    v4 = 0;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return 24;
  }
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_alloc_init(MTATimerIntervalPickerCell);
  }

  v11 = v10;
  v12 = [(MTATimerIntervalPickerCell *)v10 textLabel];
  [v12 setTextAlignment:2];

  v13 = [UIFont systemFontOfSize:22.0];
  v14 = [(MTATimerIntervalPickerCell *)v11 textLabel];
  [v14 setFont:v13];

  [(MTATimerIntervalPickerView *)self pickerView:self->_timePicker widthForComponent:a5];
  v16 = v15;
  [(MTATimerIntervalPickerView *)self pickerView:self->_timePicker rowHeightForComponent:a5];
  [(MTATimerIntervalPickerCell *)v11 setFrame:0.0, 0.0, v16, v17];
  v18 = +[UIColor mtui_primaryTextColor];
  v19 = [NSNumber numberWithInteger:a4];
  v20 = [NSNumberFormatter localizedStringFromNumber:v19 numberStyle:0];

  v21 = [NSAttributedString alloc];
  v26 = NSForegroundColorAttributeName;
  v27 = v18;
  v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v23 = [v21 initWithString:v20 attributes:v22];

  v24 = [(MTATimerIntervalPickerCell *)v11 textLabel];
  [v24 setAttributedText:v23];

  return v11;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  [(MTATimerIntervalPickerView *)self _updateLabels:1, a4, a5];
  v6 = [(MTATimerIntervalPickerView *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(MTATimerIntervalPickerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(MTATimerIntervalPickerView *)self delegate];
      [(MTATimerIntervalPickerView *)self selectedDuration];
      [v10 pickerView:self didChangeSelectedDuration:?];
    }
  }
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  [(UIPickerView *)self->_timePicker bounds:a3];
  result = v4 / 3.0;
  if (v4 / 3.0 > 105.0)
  {
    return 105.0;
  }

  return result;
}

- (void)_updateLabels:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPickerView *)self->_timePicker selectedRowInComponent:0];
  v6 = [(UIPickerView *)self->_timePicker selectedRowInComponent:1];
  v7 = [(UIPickerView *)self->_timePicker selectedRowInComponent:2];
  v8 = [(MTATimerIntervalPickerView *)self _hoursStringForHour:v5];
  [(MTATimerIntervalPickerView *)self _fadeLabelForComponent:0 toText:v8 animated:v3];

  v9 = [(MTATimerIntervalPickerView *)self _minutesStringForMinutes:v6];
  [(MTATimerIntervalPickerView *)self _fadeLabelForComponent:1 toText:v9 animated:v3];

  v10 = [(MTATimerIntervalPickerView *)self _secondsStringForSeconds:v7];
  [(MTATimerIntervalPickerView *)self _fadeLabelForComponent:2 toText:v10 animated:v3];
}

- (id)_makeNewComponentLabel
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = [UIFont boldSystemFontOfSize:17.0];
  [v2 setFont:v3];

  v4 = +[UIColor mtui_primaryTextColor];
  [v2 setTextColor:v4];

  [v2 setTextAlignment:4];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (id)_labelForComponent:(int64_t)a3 createIfNecessary:(BOOL)a4
{
  switch(a3)
  {
    case 2:
      p_secondsLabel = &self->_secondsLabel;
      secondsLabel = self->_secondsLabel;
      if (secondsLabel)
      {
        v12 = 1;
      }

      else
      {
        v12 = !a4;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v8 = [(MTATimerIntervalPickerView *)self _secondsStringForSeconds:0, a4];
      v9 = self;
      v10 = 2;
      goto LABEL_19;
    case 1:
      p_secondsLabel = &self->_minutesLabel;
      secondsLabel = self->_minutesLabel;
      if (secondsLabel)
      {
        v11 = 1;
      }

      else
      {
        v11 = !a4;
      }

      if (v11)
      {
        goto LABEL_20;
      }

      v8 = [(MTATimerIntervalPickerView *)self _minutesStringForMinutes:0, a4];
      v9 = self;
      v10 = 1;
      goto LABEL_19;
    case 0:
      p_secondsLabel = &self->_hoursLabel;
      secondsLabel = self->_hoursLabel;
      if (secondsLabel)
      {
        v7 = 1;
      }

      else
      {
        v7 = !a4;
      }

      if (v7)
      {
        goto LABEL_20;
      }

      v8 = [(MTATimerIntervalPickerView *)self _hoursStringForHour:0, a4];
      v9 = self;
      v10 = 0;
LABEL_19:
      [(MTATimerIntervalPickerView *)v9 _fadeLabelForComponent:v10 toText:v8 animated:0];

      secondsLabel = *p_secondsLabel;
LABEL_20:
      v13 = secondsLabel;
      goto LABEL_22;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (void)_setLabel:(id)a3 forComponent:(int64_t)a4
{
  v7 = a3;
  if (a4 <= 2)
  {
    v8 = v7;
    objc_storeStrong((&self->super.super.super.super.isa + *(&off_1000AE8E8)[a4]), a3);
    v7 = v8;
  }
}

- (void)_positionLabel:(id)a3 forComponent:(int64_t)a4
{
  v6 = a3;
  v7 = [(MTATimerIntervalPickerView *)self mtui_isRTL];
  if (a4 == 2)
  {
    v10 = v7 == 0;
    v8 = 271.0;
    v11 = 69.0;
  }

  else if (a4 == 1)
  {
    v10 = v7 == 0;
    v8 = 161.0;
    v11 = 173.0;
  }

  else
  {
    v9 = 0.0;
    if (a4)
    {
      goto LABEL_10;
    }

    v10 = v7 == 0;
    v8 = 51.0;
    v11 = 283.0;
  }

  if (v10)
  {
    v9 = v8;
  }

  else
  {
    v9 = v11;
  }

LABEL_10:
  LODWORD(v8) = 1148846080;
  [v6 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v12) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v12];
  v13 = [v6 leadingAnchor];
  v14 = [(UIPickerView *)self->_timePicker leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:v9];
  v20[0] = v15;
  v16 = [v6 centerYAnchor];

  v17 = [(UIPickerView *)self->_timePicker centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:1.0];
  v20[1] = v18;
  v19 = [NSArray arrayWithObjects:v20 count:2];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)_fadeLabelForComponent:(int64_t)a3 toText:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(MTATimerIntervalPickerView *)self _labelForComponent:a3 createIfNecessary:0];
  v10 = [v9 text];
  v11 = [v10 isEqualToString:v8];

  v12 = v9;
  if ((v11 & 1) == 0)
  {
    if (v5)
    {
      v13 = [(MTATimerIntervalPickerView *)self _makeNewComponentLabel];

      [v13 setText:v8];
      [(MTATimerIntervalPickerView *)self addSubview:v13];
      [(MTATimerIntervalPickerView *)self _positionLabel:v13 forComponent:a3];
      [v13 setAlpha:0.0];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10005B650;
      v18[3] = &unk_1000AD9F0;
      v19 = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10005B65C;
      v16[3] = &unk_1000ADFF8;
      v17 = v19;
      [UIView animateWithDuration:0x10000 delay:v18 options:v16 animations:0.2 completion:0.0];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005B664;
      v14[3] = &unk_1000AD9F0;
      v12 = v13;
      v15 = v12;
      [UIView animateWithDuration:0x20000 delay:v14 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      v12 = v9;
      if (!v9)
      {
        v12 = [(MTATimerIntervalPickerView *)self _makeNewComponentLabel];
        [(MTATimerIntervalPickerView *)self addSubview:v12];
      }

      [v12 setText:v8];
      [(MTATimerIntervalPickerView *)self _positionLabel:v12 forComponent:a3];
    }
  }

  [(MTATimerIntervalPickerView *)self _setLabel:v12 forComponent:a3];
}

- (BOOL)isSelectedDurationValid
{
  v3 = [(UIPickerView *)self->_timePicker selectedRowInComponent:0];
  v4 = [(UIPickerView *)self->_timePicker selectedRowInComponent:1];
  return (v3 | v4 | [(UIPickerView *)self->_timePicker selectedRowInComponent:2]) != 0;
}

- (void)setDuration:(double)a3
{
  if (a3 < 0.0 || a3 > 86399.0)
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000743C4(self, v5, a3);
    }
  }

  else
  {
    [(UIPickerView *)self->_timePicker selectRow:(a3 / 3600.0) inComponent:0 animated:0];
    [(UIPickerView *)self->_timePicker selectRow:((((34953 * (a3 % 3600)) >> 16) >> 5) + (((a3 % 3600 + ((-30583 * (a3 % 3600)) >> 16)) & 0x8000) >> 15)) inComponent:1 animated:0];
    [(UIPickerView *)self->_timePicker selectRow:a3 % 60 inComponent:2 animated:0];

    [(MTATimerIntervalPickerView *)self _updateLabels:1];
  }
}

- (double)selectedDuration
{
  v3 = (3600 * [(UIPickerView *)self->_timePicker selectedRowInComponent:0]);
  v4 = v3 + (60 * [(UIPickerView *)self->_timePicker selectedRowInComponent:1]);
  return v4 + [(UIPickerView *)self->_timePicker selectedRowInComponent:2];
}

- (id)_hoursStringForHour:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"hour[plural]";
  if (a3 == 1)
  {
    v6 = @"hour[singular]";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"hour[zero]";
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_1000AEF10 table:0];

  return v8;
}

- (id)_minutesStringForMinutes:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"min[plural]";
  if (a3 == 1)
  {
    v6 = @"min[singular]";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"min[zero]";
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_1000AEF10 table:0];

  return v8;
}

- (id)_secondsStringForSeconds:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"sec[plural]";
  if (a3 == 1)
  {
    v6 = @"sec[singular]";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"sec[zero]";
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_1000AEF10 table:0];

  return v8;
}

- (MTATimerIntervalPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end