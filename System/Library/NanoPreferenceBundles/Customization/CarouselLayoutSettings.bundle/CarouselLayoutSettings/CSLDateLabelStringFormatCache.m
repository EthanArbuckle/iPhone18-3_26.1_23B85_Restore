@interface CSLDateLabelStringFormatCache
+ (id)sharedInstance;
- (CSLDateLabelStringFormatCache)init;
- (NSDateFormatter)abbrevDayMonthFormatter;
- (NSDateFormatter)abbrevDayMonthTimeFormatter;
- (NSDateFormatter)abbreviatedTimerJustMinutesSecondsFormatter;
- (NSDateFormatter)abbreviatedTimerWithHoursFormatter;
- (NSDateFormatter)alarmSnoozeJustMinutesSecondsFormatter;
- (NSDateFormatter)alarmSnoozeWithHoursFormatter;
- (NSDateFormatter)dayMonthYearFormatter;
- (NSDateFormatter)dayOfWeekFormatter;
- (NSDateFormatter)dayOfWeekMonthDayFormatter;
- (NSDateFormatter)dayOfWeekWithTimeFormatter;
- (NSDateFormatter)longYMDHMSNoSpaceFormatter;
- (NSDateFormatter)longYMDHMSZFormatter;
- (NSDateFormatter)relativeDateFormatter;
- (NSDateFormatter)relativeDateTimeFormatter;
- (NSDateFormatter)shortDayMonthFormatter;
- (NSDateFormatter)shortDayMonthTimeFormatter;
- (NSDateFormatter)timeFormatter;
- (NSDateFormatter)timeNoAMPMFormatter;
- (NSNumberFormatter)decimalFormatter;
- (id)formatAbbreviatedTimerDuration:(double)a3;
- (id)formatAlarmSnoozeDuration:(double)a3;
- (id)formatDateAsAbbreviatedDayMonthStyle:(id)a3;
- (id)formatDateAsAbbreviatedDayMonthWithTimeStyle:(id)a3;
- (id)formatDateAsAbbreviatedDayOfWeekWithTime:(id)a3;
- (id)formatDateAsDayMonthYearStyle:(id)a3;
- (id)formatDateAsDayOfWeek:(id)a3;
- (id)formatDateAsDayOfWeekMonthDayStyle:(id)a3;
- (id)formatDateAsLongYMDHMSNoSpacesWithDate:(id)a3;
- (id)formatDateAsLongYMDHMSZWithDate:(id)a3;
- (id)formatDateAsRelativeDateAndTimeStyle:(id)a3;
- (id)formatDateAsRelativeDateStyle:(id)a3;
- (id)formatDateAsShortDayMonthWithTimeStyle:(id)a3;
- (id)formatDateAsTimeNoAMPM:(id)a3;
- (id)formatDateAsTimeStyle:(id)a3;
- (id)formatNumberAsDecimal:(id)a3;
- (void)_withLock:(id)a3;
- (void)dealloc;
@end

@implementation CSLDateLabelStringFormatCache

+ (id)sharedInstance
{
  if (qword_416D8 != -1)
  {
    sub_24388();
  }

  v3 = qword_416D0;

  return v3;
}

- (CSLDateLabelStringFormatCache)init
{
  v5.receiver = self;
  v5.super_class = CSLDateLabelStringFormatCache;
  v2 = [(CSLDateLabelStringFormatCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = CSLDateLabelStringFormatCache;
  [(CSLDateLabelStringFormatCache *)&v3 dealloc];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v4[2](v4);

  pthread_mutex_unlock(&self->_lock);
}

- (NSDateFormatter)dayOfWeekFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1B86C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)dayOfWeekWithTimeFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1BA8C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)dayMonthYearFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1BCAC;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)shortDayMonthFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1BECC;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)shortDayMonthTimeFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1C0EC;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)abbrevDayMonthFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1C30C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)abbrevDayMonthTimeFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1C52C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)dayOfWeekMonthDayFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1C74C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)timeNoAMPMFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1C96C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)timeFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1CB94;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)relativeDateTimeFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1CDA0;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)relativeDateFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1CFC0;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSNumberFormatter)decimalFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1D1E0;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)abbreviatedTimerWithHoursFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1D3D8;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)abbreviatedTimerJustMinutesSecondsFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1D60C;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)alarmSnoozeWithHoursFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1D840;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)alarmSnoozeJustMinutesSecondsFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1DA74;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)longYMDHMSZFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1DCA8;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDateFormatter)longYMDHMSNoSpaceFormatter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B854;
  v9 = sub_1B864;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1DEA4;
  v4[3] = &unk_38DA8;
  v4[4] = self;
  v4[5] = &v5;
  [(CSLDateLabelStringFormatCache *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)formatNumberAsDecimal:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self decimalFormatter];
  v6 = [v5 stringFromNumber:v4];

  return v6;
}

- (id)formatDateAsDayOfWeek:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self dayOfWeekFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsAbbreviatedDayOfWeekWithTime:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self dayOfWeekWithTimeFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsDayMonthYearStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self dayMonthYearFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsShortDayMonthWithTimeStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self shortDayMonthTimeFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsAbbreviatedDayMonthStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self abbrevDayMonthFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsAbbreviatedDayMonthWithTimeStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self abbrevDayMonthTimeFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsTimeStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self timeFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsRelativeDateAndTimeStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self relativeDateTimeFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsDayOfWeekMonthDayStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self dayOfWeekMonthDayFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsTimeNoAMPM:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self timeNoAMPMFormatter];
  v6 = [v5 stringFromDate:v4];

  v7 = +[NSCharacterSet whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  return v8;
}

- (id)formatDateAsLongYMDHMSZWithDate:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self longYMDHMSZFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsLongYMDHMSNoSpacesWithDate:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self longYMDHMSNoSpaceFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatDateAsRelativeDateStyle:(id)a3
{
  v4 = a3;
  v5 = [(CSLDateLabelStringFormatCache *)self relativeDateFormatter];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)formatAbbreviatedTimerDuration:(double)a3
{
  if ([(CSLDateLabelStringFormatCache *)self _shouldShowHoursForTimerDuration:?])
  {
    [(CSLDateLabelStringFormatCache *)self abbreviatedTimerWithHoursFormatter];
  }

  else
  {
    [(CSLDateLabelStringFormatCache *)self abbreviatedTimerJustMinutesSecondsFormatter];
  }
  v5 = ;
  v6 = [NSDate dateWithTimeInterval:self->_timerReferenceDate sinceDate:a3];
  v7 = [v5 stringFromDate:v6];

  return v7;
}

- (id)formatAlarmSnoozeDuration:(double)a3
{
  if ([(CSLDateLabelStringFormatCache *)self _shouldShowHoursForTimerDuration:?])
  {
    [(CSLDateLabelStringFormatCache *)self alarmSnoozeWithHoursFormatter];
  }

  else
  {
    [(CSLDateLabelStringFormatCache *)self alarmSnoozeJustMinutesSecondsFormatter];
  }
  v5 = ;
  v6 = [NSDate dateWithTimeInterval:self->_alarmReferenceDate sinceDate:a3];
  v7 = [v5 stringFromDate:v6];

  return v7;
}

@end