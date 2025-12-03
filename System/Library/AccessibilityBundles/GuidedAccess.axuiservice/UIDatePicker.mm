@interface UIDatePicker
- (void)setGaxDatePickerEnabled:(BOOL)enabled;
@end

@implementation UIDatePicker

- (void)setGaxDatePickerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C3DC;
  block[3] = &unk_5CD48;
  block[4] = self;
  if (qword_6D9C8 != -1)
  {
    dispatch_once(&qword_6D9C8, block);
  }

  [(UIDatePicker *)self setEnabled:enabledCopy];
  [(UIDatePicker *)self setUserInteractionEnabled:enabledCopy];
  objc_opt_class();
  v5 = [(UIDatePicker *)self safeValueForKey:@"_pickerView"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [v6 safeValueForKey:@"_hourLabel"];
  v8 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v9 = [v6 safeValueForKey:@"_minuteLabel"];
  v10 = __UIAccessibilityCastAsClass();

  if (enabledCopy)
  {
    [(UIDatePicker *)self _setTextColor:qword_6D9C0];
    [v8 setTextColor:qword_6D9C0];
    [v10 setTextColor:qword_6D9C0];
  }

  else
  {
    v11 = [UIColor colorWithRed:0.75 green:0.75 blue:0.75 alpha:0.9];
    [(UIDatePicker *)self _setTextColor:v11];
    [v8 setTextColor:v11];
    [v10 setTextColor:v11];
  }

  [v6 reloadAllComponents];
}

@end