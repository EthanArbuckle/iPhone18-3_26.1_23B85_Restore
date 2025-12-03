@interface MTATimerPickerCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (MTATimerPickerCell)initWithPicker:(id)picker timeView:(id)view expectedTimeView:(id)timeView countdownView:(id)countdownView reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setState:(unint64_t)state animated:(BOOL)animated;
@end

@implementation MTATimerPickerCell

- (MTATimerPickerCell)initWithPicker:(id)picker timeView:(id)view expectedTimeView:(id)timeView countdownView:(id)countdownView reuseIdentifier:(id)identifier
{
  pickerCopy = picker;
  viewCopy = view;
  timeViewCopy = timeView;
  countdownViewCopy = countdownView;
  v26.receiver = self;
  v26.super_class = MTATimerPickerCell;
  v17 = [(MTATimerPickerCell *)&v26 initWithStyle:0 reuseIdentifier:identifier];
  v18 = v17;
  if (v17)
  {
    [(MTATimerPickerCell *)v17 setSelectionStyle:0];
    contentView = [(MTATimerPickerCell *)v18 contentView];
    objc_storeStrong(&v18->_picker, picker);
    objc_storeStrong(&v18->_timeView, view);
    objc_storeStrong(&v18->_countdownView, countdownView);
    objc_storeStrong(&v18->_expectedTimeView, timeView);
    v20 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    pickerBackgroundView = v18->_pickerBackgroundView;
    v18->_pickerBackgroundView = v20;

    v22 = v18->_pickerBackgroundView;
    v23 = +[UIColor clearColor];
    [(UIView *)v22 setBackgroundColor:v23];

    [contentView addSubview:v18->_pickerBackgroundView];
    v24 = +[UIColor mtui_foregroundColor];
    [(MTATimerPickerCell *)v18 setBackgroundColor:v24];
  }

  return v18;
}

- (void)setState:(unint64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_state = state;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000538E4;
  v7[3] = &unk_1000AE6A0;
  v7[4] = self;
  v7[5] = state;
  v5 = objc_retainBlock(v7);
  v6 = v5;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v5 animations:0.2];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  [UIPickerView defaultSizeForCurrentOrientation:size.width];
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = MTATimerPickerCell;
  [(MTATimerPickerCell *)&v30 layoutSubviews];
  contentView = [(MTATimerPickerCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_pickerBackgroundView setFrame:v5, v7, v9, v11];
  superview = [(MTATimerIntervalPickerView *)self->_picker superview];
  contentView2 = [(MTATimerPickerCell *)self contentView];

  if (superview == contentView2)
  {
    [(MTATimerIntervalPickerView *)self->_picker frame];
    [(UIView *)self->_pickerBackgroundView bounds];
    UIRectCenteredIntegralRect();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    UIRoundToViewScale();
    [(MTATimerIntervalPickerView *)self->_picker setFrame:v15, v22 + v17, v19, v21];
  }

  superview2 = [(UILabel *)self->_timeView superview];
  contentView3 = [(MTATimerPickerCell *)self contentView];

  if (superview2 == contentView3)
  {
    [(UILabel *)self->_timeView sizeToFit];
    [(UILabel *)self->_timeView frame];
    v26 = v25;
    v28 = v27;
    v31.origin.x = v5;
    v31.origin.y = v7;
    v31.size.width = v9;
    v31.size.height = v11;
    CGRectGetHeight(v31);
    v32.origin.x = 16.0;
    v32.origin.y = v26;
    v32.size.width = v9 + -32.0;
    v32.size.height = v28;
    CGRectGetHeight(v32);
    UIRoundToViewScale();
    [(UILabel *)self->_timeView setFrame:16.0, v29, v9 + -32.0, v28];
  }
}

@end