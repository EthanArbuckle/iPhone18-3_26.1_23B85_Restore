@interface NTKCrosswindColorSequencer
+ (double)initialAngleProgressesForReferenceDate:withCalendar:;
+ (id)_defaultReferenceDateWithCalendar:(id)calendar;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)colorCompositionForDate:(id)date;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)referenceComposition;
- (NTKCrosswindColorSequencer)initWithCalendar:(id)calendar gradientCount:(unint64_t)count;
- (NTKCrosswindColorSequencer)initWithCalendar:(id)calendar gradientCount:(unint64_t)count referenceDate:(id)date referenceComposition:(id)composition;
- (int64_t)_numberOfHandCrossingsInTimeInterval:(double)interval betweenHandsWithCrossInterval:(double)crossInterval initialProgress:(double)progress forHandAtAngle:(double)angle crossingHandAtAngle:(double)atAngle;
- (void)_didConfigureReferenceTimeForReason:(id)reason;
- (void)_handleReferenceTimeChange:(id)change;
- (void)_updateReferenceTimeForReason:(id)reason;
@end

@implementation NTKCrosswindColorSequencer

- (NTKCrosswindColorSequencer)initWithCalendar:(id)calendar gradientCount:(unint64_t)count
{
  calendarCopy = calendar;
  v7 = [objc_opt_class() _defaultReferenceDateWithCalendar:calendarCopy];
  _defaultReferenceComposition = [objc_opt_class() _defaultReferenceComposition];
  v10 = [(NTKCrosswindColorSequencer *)self initWithCalendar:calendarCopy gradientCount:count referenceDate:v7 referenceComposition:_defaultReferenceComposition, v9];

  if (v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v10 selector:"_handleReferenceTimeChange:" name:NSCalendarDayChangedNotification object:0];
    [v11 addObserver:v10 selector:"_handleReferenceTimeChange:" name:NSCurrentLocaleDidChangeNotification object:0];
    [v11 addObserver:v10 selector:"_handleReferenceTimeChange:" name:NSSystemTimeZoneDidChangeNotification object:0];
    [v11 addObserver:v10 selector:"_handleReferenceTimeChange:" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  return v10;
}

- (NTKCrosswindColorSequencer)initWithCalendar:(id)calendar gradientCount:(unint64_t)count referenceDate:(id)date referenceComposition:(id)composition
{
  var1 = composition.var1;
  var0 = composition.var0;
  calendarCopy = calendar;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = NTKCrosswindColorSequencer;
  v14 = [(NTKCrosswindColorSequencer *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_calendar, calendar);
    v15->_gradientCount = count;
    objc_storeStrong(&v15->_referenceDate, date);
    v15->_referenceComposition.innerSecondGradientIndex = var0;
    v15->_referenceComposition.outerSecondGradientIndex = var1;
    [objc_opt_class() initialAngleProgressesForReferenceDate:dateCopy withCalendar:calendarCopy];
    *v15->_initialReferenceAngleProgresses = v16;
    [(NTKCrosswindColorSequencer *)v15 _didConfigureReferenceTimeForReason:@"Initialization"];
  }

  return v15;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)colorCompositionForDate:(id)date
{
  calendar = self->_calendar;
  dateCopy = date;
  NTKHourMinuteSecondAnglesForTime();
  [dateCopy timeIntervalSinceDate:self->_referenceDate];
  v7 = v6;

  v8 = [(NTKCrosswindColorSequencer *)self _numberOfHandCrossingsInTimeInterval:v7 betweenHandsWithCrossInterval:61.0169492 initialProgress:COERCE_FLOAT(*self->_initialReferenceAngleProgresses) forHandAtAngle:0.0 crossingHandAtAngle:0.0];
  v9 = [(NTKCrosswindColorSequencer *)self _numberOfHandCrossingsInTimeInterval:v7 betweenHandsWithCrossInterval:60.0834492 initialProgress:*&self->_initialReferenceAngleProgresses[4] forHandAtAngle:0.0 crossingHandAtAngle:0.0];
  innerSecondGradientIndex = self->_referenceComposition.innerSecondGradientIndex;
  outerSecondGradientIndex = self->_referenceComposition.outerSecondGradientIndex;
  gradientCount = self->_gradientCount;
  v13 = NTKCrosswindOffsetIndexWrapped(innerSecondGradientIndex, v9 + v8, gradientCount);
  v14 = NTKCrosswindOffsetIndexWrapped(outerSecondGradientIndex, v8, gradientCount);
  v15 = v13;
  result.var1 = v14;
  result.var0 = v15;
  return result;
}

- (int64_t)_numberOfHandCrossingsInTimeInterval:(double)interval betweenHandsWithCrossInterval:(double)crossInterval initialProgress:(double)progress forHandAtAngle:(double)angle crossingHandAtAngle:(double)atAngle
{
  v7 = interval / crossInterval + progress;
  v8 = floor(v7);
  v9 = vcvtmd_s64_f64(v7);
  angleCopy = angle + 6.28318531;
  if (angle >= atAngle)
  {
    angleCopy = angle;
  }

  v11 = fmod(angleCopy - atAngle, 6.28318531) / 6.28318531;
  v12 = v7 - v8;
  if (v12 > 0.9 && v11 < 0.1)
  {
    return v9 + 1;
  }

  v14 = v11 > 0.9 && v12 < 0.1;
  return v9 - v14;
}

- (void)_handleReferenceTimeChange:(id)change
{
  name = [change name];
  v4 = [name copy];

  v5 = v4;
  BSDispatchMain();
}

- (void)_updateReferenceTimeForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [objc_opt_class() _defaultReferenceDateWithCalendar:self->_calendar];
  referenceDate = self->_referenceDate;
  self->_referenceDate = v4;

  [objc_opt_class() initialAngleProgressesForReferenceDate:self->_referenceDate withCalendar:self->_calendar];
  *self->_initialReferenceAngleProgresses = v6;
  [(NTKCrosswindColorSequencer *)self _didConfigureReferenceTimeForReason:reasonCopy];
}

- (void)_didConfigureReferenceTimeForReason:(id)reason
{
  reasonCopy = reason;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    referenceDate = self->_referenceDate;
    v9 = 138413058;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = referenceDate;
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> set reference date to '%@'; reason: '%@'", &v9, 0x2Au);
  }
}

+ (id)_defaultReferenceDateWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v4 = NTKIdealizedDate();
  timeZone = [calendarCopy timeZone];
  v6 = [calendarCopy componentsInTimeZone:timeZone fromDate:v4];

  [v6 setDay:1];
  v7 = [calendarCopy dateFromComponents:v6];

  return v7;
}

+ (double)initialAngleProgressesForReferenceDate:withCalendar:
{
  NTKHourMinuteSecondAnglesForTime();
  v0 = fmod(0.0 - 0.0, 6.28318531) / 6.28318531;
  v3 = v0;
  *&v1 = fmod(0.0 - 0.0, 6.28318531) / 6.28318531;
  return COERCE_DOUBLE(__PAIR64__(v1, LODWORD(v3)));
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)referenceComposition
{
  outerSecondGradientIndex = self->_referenceComposition.outerSecondGradientIndex;
  innerSecondGradientIndex = self->_referenceComposition.innerSecondGradientIndex;
  result.var1 = outerSecondGradientIndex;
  result.var0 = innerSecondGradientIndex;
  return result;
}

@end