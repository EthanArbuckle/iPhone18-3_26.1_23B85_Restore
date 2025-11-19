@interface WKDateTimeInputControl
- (BOOL)dismissWithAnimationForTesting;
- (NSString)dateTimePickerCalendarType;
- (WKDateTimeInputControl)initWithView:(id)a3;
- (double)timePickerValueHour;
- (double)timePickerValueMinute;
- (void)setTimePickerHour:(int64_t)a3 minute:(int64_t)a4;
@end

@implementation WKDateTimeInputControl

- (WKDateTimeInputControl)initWithView:(id)a3
{
  v5 = *([a3 focusedElementInformation] + 185);
  if ((v5 - 11) > 4)
  {

    return 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WKDateTimeInputControl;
    v10 = [[WKDateTimePicker alloc] initWithView:a3 inputType:v5];
    v6 = [(WKFormPeripheralBase *)&v9 initWithView:a3 control:&v10];
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  return v6;
}

- (void)setTimePickerHour:(int64_t)a3 minute:(int64_t)a4
{
  v6 = WTF::dynamic_objc_cast<WKDateTimePicker>([(WKFormPeripheralBase *)self control]);
  if (v6)
  {

    [v6 setHour:a3 minute:a4];
  }
}

- (NSString)dateTimePickerCalendarType
{
  result = WTF::dynamic_objc_cast<WKDateTimePicker>([(WKFormPeripheralBase *)self control]);
  if (result)
  {

    return [(NSString *)result calendarType];
  }

  return result;
}

- (double)timePickerValueHour
{
  v2 = WTF::dynamic_objc_cast<WKDateTimePicker>([(WKFormPeripheralBase *)self control]);
  if (!v2)
  {
    return -1.0;
  }

  [v2 hour];
  return result;
}

- (double)timePickerValueMinute
{
  v2 = WTF::dynamic_objc_cast<WKDateTimePicker>([(WKFormPeripheralBase *)self control]);
  if (!v2)
  {
    return -1.0;
  }

  [v2 minute];
  return result;
}

- (BOOL)dismissWithAnimationForTesting
{
  v2 = WTF::dynamic_objc_cast<WKDateTimePicker>([(WKFormPeripheralBase *)self control]);
  v3 = v2;
  if (v2)
  {
    [objc_msgSend(v2 "datePickerController")];
    [objc_msgSend(v3 "datePickerController")];
  }

  return v3 != 0;
}

@end