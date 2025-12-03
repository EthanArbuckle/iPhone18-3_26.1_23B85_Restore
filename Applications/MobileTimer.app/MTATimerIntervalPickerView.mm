@interface MTATimerIntervalPickerView
- (BOOL)isSelectedDurationValid;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTATimerIntervalPickerView)initWithFrame:(CGRect)frame;
- (MTATimerIntervalPickerViewDelegate)delegate;
- (double)pickerView:(id)view widthForComponent:(int64_t)component;
- (double)selectedDuration;
- (id)_hoursStringForHour:(int64_t)hour;
- (id)_labelForComponent:(int64_t)component createIfNecessary:(BOOL)necessary;
- (id)_makeNewComponentLabel;
- (id)_minutesStringForMinutes:(int64_t)minutes;
- (id)_secondsStringForSeconds:(int64_t)seconds;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_fadeLabelForComponent:(int64_t)component toText:(id)text animated:(BOOL)animated;
- (void)_positionLabel:(id)label forComponent:(int64_t)component;
- (void)_setLabel:(id)label forComponent:(int64_t)component;
- (void)_updateLabels:(BOOL)labels;
- (void)layoutSubviews;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setDuration:(double)duration;
@end

@implementation MTATimerIntervalPickerView

- (MTATimerIntervalPickerView)initWithFrame:(CGRect)frame
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 320.0;
  v4 = 216.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = 60;
  if (component >= 3)
  {
    v4 = 0;
  }

  if (component)
  {
    return v4;
  }

  else
  {
    return 24;
  }
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  reusingViewCopy = reusingView;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = reusingViewCopy;
  }

  else
  {
    v10 = objc_alloc_init(MTATimerIntervalPickerCell);
  }

  v11 = v10;
  textLabel = [(MTATimerIntervalPickerCell *)v10 textLabel];
  [textLabel setTextAlignment:2];

  v13 = [UIFont systemFontOfSize:22.0];
  textLabel2 = [(MTATimerIntervalPickerCell *)v11 textLabel];
  [textLabel2 setFont:v13];

  [(MTATimerIntervalPickerView *)self pickerView:self->_timePicker widthForComponent:component];
  v16 = v15;
  [(MTATimerIntervalPickerView *)self pickerView:self->_timePicker rowHeightForComponent:component];
  [(MTATimerIntervalPickerCell *)v11 setFrame:0.0, 0.0, v16, v17];
  v18 = +[UIColor mtui_primaryTextColor];
  v19 = [NSNumber numberWithInteger:row];
  v20 = [NSNumberFormatter localizedStringFromNumber:v19 numberStyle:0];

  v21 = [NSAttributedString alloc];
  v26 = NSForegroundColorAttributeName;
  v27 = v18;
  v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v23 = [v21 initWithString:v20 attributes:v22];

  textLabel3 = [(MTATimerIntervalPickerCell *)v11 textLabel];
  [textLabel3 setAttributedText:v23];

  return v11;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  [(MTATimerIntervalPickerView *)self _updateLabels:1, row, component];
  delegate = [(MTATimerIntervalPickerView *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(MTATimerIntervalPickerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(MTATimerIntervalPickerView *)self delegate];
      [(MTATimerIntervalPickerView *)self selectedDuration];
      [delegate3 pickerView:self didChangeSelectedDuration:?];
    }
  }
}

- (double)pickerView:(id)view widthForComponent:(int64_t)component
{
  [(UIPickerView *)self->_timePicker bounds:view];
  result = v4 / 3.0;
  if (v4 / 3.0 > 105.0)
  {
    return 105.0;
  }

  return result;
}

- (void)_updateLabels:(BOOL)labels
{
  labelsCopy = labels;
  v5 = [(UIPickerView *)self->_timePicker selectedRowInComponent:0];
  v6 = [(UIPickerView *)self->_timePicker selectedRowInComponent:1];
  v7 = [(UIPickerView *)self->_timePicker selectedRowInComponent:2];
  v8 = [(MTATimerIntervalPickerView *)self _hoursStringForHour:v5];
  [(MTATimerIntervalPickerView *)self _fadeLabelForComponent:0 toText:v8 animated:labelsCopy];

  v9 = [(MTATimerIntervalPickerView *)self _minutesStringForMinutes:v6];
  [(MTATimerIntervalPickerView *)self _fadeLabelForComponent:1 toText:v9 animated:labelsCopy];

  v10 = [(MTATimerIntervalPickerView *)self _secondsStringForSeconds:v7];
  [(MTATimerIntervalPickerView *)self _fadeLabelForComponent:2 toText:v10 animated:labelsCopy];
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

- (id)_labelForComponent:(int64_t)component createIfNecessary:(BOOL)necessary
{
  switch(component)
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
        v12 = !necessary;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      necessary = [(MTATimerIntervalPickerView *)self _secondsStringForSeconds:0, necessary];
      selfCopy3 = self;
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
        v11 = !necessary;
      }

      if (v11)
      {
        goto LABEL_20;
      }

      necessary = [(MTATimerIntervalPickerView *)self _minutesStringForMinutes:0, necessary];
      selfCopy3 = self;
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
        v7 = !necessary;
      }

      if (v7)
      {
        goto LABEL_20;
      }

      necessary = [(MTATimerIntervalPickerView *)self _hoursStringForHour:0, necessary];
      selfCopy3 = self;
      v10 = 0;
LABEL_19:
      [(MTATimerIntervalPickerView *)selfCopy3 _fadeLabelForComponent:v10 toText:necessary animated:0];

      secondsLabel = *p_secondsLabel;
LABEL_20:
      v13 = secondsLabel;
      goto LABEL_22;
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (void)_setLabel:(id)label forComponent:(int64_t)component
{
  labelCopy = label;
  if (component <= 2)
  {
    v8 = labelCopy;
    objc_storeStrong((&self->super.super.super.super.isa + *(&off_1000AE8E8)[component]), label);
    labelCopy = v8;
  }
}

- (void)_positionLabel:(id)label forComponent:(int64_t)component
{
  labelCopy = label;
  mtui_isRTL = [(MTATimerIntervalPickerView *)self mtui_isRTL];
  if (component == 2)
  {
    v10 = mtui_isRTL == 0;
    v8 = 271.0;
    v11 = 69.0;
  }

  else if (component == 1)
  {
    v10 = mtui_isRTL == 0;
    v8 = 161.0;
    v11 = 173.0;
  }

  else
  {
    v9 = 0.0;
    if (component)
    {
      goto LABEL_10;
    }

    v10 = mtui_isRTL == 0;
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
  [labelCopy setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v12) = 1148846080;
  [labelCopy setContentCompressionResistancePriority:0 forAxis:v12];
  leadingAnchor = [labelCopy leadingAnchor];
  leadingAnchor2 = [(UIPickerView *)self->_timePicker leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
  v20[0] = v15;
  centerYAnchor = [labelCopy centerYAnchor];

  centerYAnchor2 = [(UIPickerView *)self->_timePicker centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:1.0];
  v20[1] = v18;
  v19 = [NSArray arrayWithObjects:v20 count:2];
  [NSLayoutConstraint activateConstraints:v19];
}

- (void)_fadeLabelForComponent:(int64_t)component toText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  v9 = [(MTATimerIntervalPickerView *)self _labelForComponent:component createIfNecessary:0];
  text = [v9 text];
  v11 = [text isEqualToString:textCopy];

  _makeNewComponentLabel2 = v9;
  if ((v11 & 1) == 0)
  {
    if (animatedCopy)
    {
      _makeNewComponentLabel = [(MTATimerIntervalPickerView *)self _makeNewComponentLabel];

      [_makeNewComponentLabel setText:textCopy];
      [(MTATimerIntervalPickerView *)self addSubview:_makeNewComponentLabel];
      [(MTATimerIntervalPickerView *)self _positionLabel:_makeNewComponentLabel forComponent:component];
      [_makeNewComponentLabel setAlpha:0.0];
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
      _makeNewComponentLabel2 = _makeNewComponentLabel;
      v15 = _makeNewComponentLabel2;
      [UIView animateWithDuration:0x20000 delay:v14 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      _makeNewComponentLabel2 = v9;
      if (!v9)
      {
        _makeNewComponentLabel2 = [(MTATimerIntervalPickerView *)self _makeNewComponentLabel];
        [(MTATimerIntervalPickerView *)self addSubview:_makeNewComponentLabel2];
      }

      [_makeNewComponentLabel2 setText:textCopy];
      [(MTATimerIntervalPickerView *)self _positionLabel:_makeNewComponentLabel2 forComponent:component];
    }
  }

  [(MTATimerIntervalPickerView *)self _setLabel:_makeNewComponentLabel2 forComponent:component];
}

- (BOOL)isSelectedDurationValid
{
  v3 = [(UIPickerView *)self->_timePicker selectedRowInComponent:0];
  v4 = [(UIPickerView *)self->_timePicker selectedRowInComponent:1];
  return (v3 | v4 | [(UIPickerView *)self->_timePicker selectedRowInComponent:2]) != 0;
}

- (void)setDuration:(double)duration
{
  if (duration < 0.0 || duration > 86399.0)
  {
    v5 = MTLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000743C4(self, v5, duration);
    }
  }

  else
  {
    [(UIPickerView *)self->_timePicker selectRow:(duration / 3600.0) inComponent:0 animated:0];
    [(UIPickerView *)self->_timePicker selectRow:((((34953 * (duration % 3600)) >> 16) >> 5) + (((duration % 3600 + ((-30583 * (duration % 3600)) >> 16)) & 0x8000) >> 15)) inComponent:1 animated:0];
    [(UIPickerView *)self->_timePicker selectRow:duration % 60 inComponent:2 animated:0];

    [(MTATimerIntervalPickerView *)self _updateLabels:1];
  }
}

- (double)selectedDuration
{
  v3 = (3600 * [(UIPickerView *)self->_timePicker selectedRowInComponent:0]);
  v4 = v3 + (60 * [(UIPickerView *)self->_timePicker selectedRowInComponent:1]);
  return v4 + [(UIPickerView *)self->_timePicker selectedRowInComponent:2];
}

- (id)_hoursStringForHour:(int64_t)hour
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"hour[plural]";
  if (hour == 1)
  {
    v6 = @"hour[singular]";
  }

  if (hour)
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

- (id)_minutesStringForMinutes:(int64_t)minutes
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"min[plural]";
  if (minutes == 1)
  {
    v6 = @"min[singular]";
  }

  if (minutes)
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

- (id)_secondsStringForSeconds:(int64_t)seconds
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"sec[plural]";
  if (seconds == 1)
  {
    v6 = @"sec[singular]";
  }

  if (seconds)
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