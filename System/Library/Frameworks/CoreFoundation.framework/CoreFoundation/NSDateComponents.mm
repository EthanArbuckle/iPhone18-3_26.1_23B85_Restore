@interface NSDateComponents
- (BOOL)isEqual:(id)equal;
- (BOOL)isLeapMonth;
- (BOOL)isRepeatedDay;
- (BOOL)isValidDateInCalendar:(NSCalendar *)calendar;
- (NSCalendar)calendar;
- (NSDate)date;
- (NSDateComponents)init;
- (NSInteger)day;
- (NSInteger)era;
- (NSInteger)hour;
- (NSInteger)minute;
- (NSInteger)month;
- (NSInteger)nanosecond;
- (NSInteger)quarter;
- (NSInteger)second;
- (NSInteger)valueForComponent:(NSCalendarUnit)unit;
- (NSInteger)week;
- (NSInteger)weekOfMonth;
- (NSInteger)weekOfYear;
- (NSInteger)weekday;
- (NSInteger)weekdayOrdinal;
- (NSInteger)year;
- (NSInteger)yearForWeekOfYear;
- (NSTimeZone)timeZone;
- (id)_initWithCFDateComponents:(__CFDateComponents *)components;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)dayOfYear;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setDay:(NSInteger)day;
- (void)setDayOfYear:(int64_t)year;
- (void)setEra:(NSInteger)era;
- (void)setHour:(NSInteger)hour;
- (void)setLeapMonth:(BOOL)leapMonth;
- (void)setMinute:(NSInteger)minute;
- (void)setMonth:(NSInteger)month;
- (void)setNanosecond:(NSInteger)nanosecond;
- (void)setQuarter:(NSInteger)quarter;
- (void)setRepeatedDay:(BOOL)day;
- (void)setSecond:(NSInteger)second;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)setValue:(NSInteger)value forComponent:(NSCalendarUnit)unit;
- (void)setWeek:(NSInteger)v;
- (void)setWeekOfMonth:(NSInteger)weekOfMonth;
- (void)setWeekOfYear:(NSInteger)weekOfYear;
- (void)setWeekday:(NSInteger)weekday;
- (void)setWeekdayOrdinal:(NSInteger)weekdayOrdinal;
- (void)setYear:(NSInteger)year;
- (void)setYearForWeekOfYear:(NSInteger)yearForWeekOfYear;
@end

@implementation NSDateComponents

- (NSDateComponents)init
{
  IndexedIvars = object_getIndexedIvars(self);
  CFDateComponentsCreate(&__kCFAllocatorSystemDefault, v4, v5, v6, v7, v8, v9, v10);
  *IndexedIvars = v11;
  return self;
}

- (NSInteger)year
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 4);
}

- (NSInteger)month
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 8);
}

- (NSInteger)day
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 16);
}

- (NSInteger)hour
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 32);
}

- (NSInteger)minute
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 64);
}

- (NSInteger)second
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 128);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *object_getIndexedIvars(self);
  if (v3)
  {
    CFRelease(v3);
  }

  v5.receiver = self;
  v5.super_class = NSDateComponents;
  [(NSDateComponents *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (NSCalendar)calendar
{
  IndexedIvars = object_getIndexedIvars(self);
  v3 = CFDateComponentsCopyCalendar(*IndexedIvars);

  return v3;
}

- (NSTimeZone)timeZone
{
  IndexedIvars = object_getIndexedIvars(self);
  v3 = CFDateComponentsCopyTimeZone(*IndexedIvars);

  return v3;
}

- (NSInteger)era
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 2);
}

- (NSInteger)nanosecond
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 0x8000);
}

- (NSInteger)weekday
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 512);
}

- (NSInteger)weekdayOrdinal
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 1024);
}

- (NSInteger)quarter
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 2048);
}

- (NSInteger)weekOfMonth
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 4096);
}

- (NSInteger)weekOfYear
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 0x2000);
}

- (NSInteger)yearForWeekOfYear
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 0x4000);
}

- (int64_t)dayOfYear
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 0x10000);
}

- (NSInteger)week
{
  v2 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v2, 256);
}

- (BOOL)isLeapMonth
{
  IndexedIvars = object_getIndexedIvars(self);
  Value = CFDateComponentsGetValue(*IndexedIvars, 0x40000000);
  return Value != 0x7FFFFFFFFFFFFFFFLL && Value != 0;
}

- (NSDate)date
{
  timeZone = [(NSDateComponents *)self timeZone];
  if (timeZone)
  {
    [(NSCalendar *)[(NSDateComponents *)self calendar] setTimeZone:timeZone];
  }

  calendar = [(NSDateComponents *)self calendar];

  return [(NSCalendar *)calendar dateFromComponents:self];
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  IndexedIvars = object_getIndexedIvars(self);
  v4 = _CFDateComponentsCopyDescriptionInner(*IndexedIvars);
  v9.receiver = self;
  v9.super_class = NSDateComponents;
  v5 = [&v9 description];
  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@ %@", v5, v4);
  CFRelease(v4);
  result = v6;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_initWithCFDateComponents:(__CFDateComponents *)components
{
  IndexedIvars = object_getIndexedIvars(self);
  *IndexedIvars = CFDateComponentsCreateCopy(&__kCFAllocatorSystemDefault, components, v6, v7, v8, v9, v10, v11);
  return self;
}

- (unint64_t)hash
{
  v2 = *object_getIndexedIvars(self);

  return CFHash(v2);
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = *object_getIndexedIvars(self);
  IndexedIvars = object_getIndexedIvars(equal);
  return CFEqual(v5, *IndexedIvars) != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (v5 == NSDateComponents)
  {
    IndexedIvars = object_getIndexedIvars(self);
    v9 = [NSDateComponents allocWithZone:zone];
    v10 = *IndexedIvars;

    return [(NSDateComponents *)v9 _initWithCFDateComponents:v10];
  }

  else
  {
    v6 = [[(__objc2_class *)v5 allocWithZone:zone] init];
    [(__objc2_class *)v6 setCalendar:[(NSDateComponents *)self calendar]];
    [(__objc2_class *)v6 setTimeZone:[(NSDateComponents *)self timeZone]];
    [(__objc2_class *)v6 setEra:[(NSDateComponents *)self era]];
    [(__objc2_class *)v6 setYear:[(NSDateComponents *)self year]];
    [(__objc2_class *)v6 setQuarter:[(NSDateComponents *)self quarter]];
    [(__objc2_class *)v6 setMonth:[(NSDateComponents *)self month]];
    [(__objc2_class *)v6 setDay:[(NSDateComponents *)self day]];
    [(__objc2_class *)v6 setHour:[(NSDateComponents *)self hour]];
    [(__objc2_class *)v6 setMinute:[(NSDateComponents *)self minute]];
    [(__objc2_class *)v6 setSecond:[(NSDateComponents *)self second]];
    [(__objc2_class *)v6 setNanosecond:[(NSDateComponents *)self nanosecond]];
    [(__objc2_class *)v6 setWeek:[(NSDateComponents *)self week]];
    [(__objc2_class *)v6 setWeekOfYear:[(NSDateComponents *)self weekOfYear]];
    [(__objc2_class *)v6 setWeekOfMonth:[(NSDateComponents *)self weekOfMonth]];
    [(__objc2_class *)v6 setYearForWeekOfYear:[(NSDateComponents *)self yearForWeekOfYear]];
    [(__objc2_class *)v6 setWeekday:[(NSDateComponents *)self weekday]];
    [(__objc2_class *)v6 setWeekdayOrdinal:[(NSDateComponents *)self weekdayOrdinal]];
    [(__objc2_class *)v6 setDayOfYear:[(NSDateComponents *)self dayOfYear]];
    if ([(NSDateComponents *)self isLeapMonthSet])
    {
      [(__objc2_class *)v6 setLeapMonth:[(NSDateComponents *)self isLeapMonth]];
    }

    if ([(NSDateComponents *)self isRepeatedDaySet])
    {
      [(__objc2_class *)v6 setRepeatedDay:[(NSDateComponents *)self isRepeatedDay]];
    }

    return v6;
  }
}

- (BOOL)isRepeatedDay
{
  IndexedIvars = object_getIndexedIvars(self);
  Value = CFDateComponentsGetValue(*IndexedIvars, 0xFFFFFFFF80000000);
  return Value != 0x7FFFFFFFFFFFFFFFLL && Value != 0;
}

- (void)setCalendar:(NSCalendar *)calendar
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetCalendar(v4, calendar);
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetTimeZone(v4, timeZone);
}

- (void)setEra:(NSInteger)era
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 2, era);
}

- (void)setYear:(NSInteger)year
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 4, year);
}

- (void)setMonth:(NSInteger)month
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 8, month);
}

- (void)setDay:(NSInteger)day
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 16, day);
}

- (void)setHour:(NSInteger)hour
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 32, hour);
}

- (void)setMinute:(NSInteger)minute
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 64, minute);
}

- (void)setSecond:(NSInteger)second
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 128, second);
}

- (void)setWeek:(NSInteger)v
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 256, v);
}

- (void)setWeekday:(NSInteger)weekday
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 512, weekday);
}

- (void)setWeekdayOrdinal:(NSInteger)weekdayOrdinal
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 1024, weekdayOrdinal);
}

- (void)setQuarter:(NSInteger)quarter
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 2048, quarter);
}

- (void)setNanosecond:(NSInteger)nanosecond
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 0x8000, nanosecond);
}

- (void)setWeekOfYear:(NSInteger)weekOfYear
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 0x2000, weekOfYear);
}

- (void)setWeekOfMonth:(NSInteger)weekOfMonth
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 4096, weekOfMonth);
}

- (void)setYearForWeekOfYear:(NSInteger)yearForWeekOfYear
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 0x4000, yearForWeekOfYear);
}

- (void)setDayOfYear:(int64_t)year
{
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 0x10000, year);
}

- (void)setLeapMonth:(BOOL)leapMonth
{
  v3 = leapMonth;
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 0x40000000, v3);
}

- (void)setRepeatedDay:(BOOL)day
{
  dayCopy = day;
  v4 = *object_getIndexedIvars(self);

  CFDateComponentsSetValue(v4, 0xFFFFFFFF80000000, dayCopy);
}

- (void)setValue:(NSInteger)value forComponent:(NSCalendarUnit)unit
{
  if (unit != 0x200000 && unit != 0x40000000)
  {
    v6 = *object_getIndexedIvars(self);

    CFDateComponentsSetValue(v6, unit, value);
  }
}

- (NSInteger)valueForComponent:(NSCalendarUnit)unit
{
  v4 = *object_getIndexedIvars(self);

  return CFDateComponentsGetValue(v4, unit);
}

- (BOOL)isValidDateInCalendar:(NSCalendar *)calendar
{
  if (calendar || !_CFExecutableLinkedOnOrAfter(9uLL))
  {
    IndexedIvars = object_getIndexedIvars(self);
    return CFDateComponentsIsValidDateInCalendar(*IndexedIvars, calendar);
  }

  else
  {
    v7 = isValidDateInCalendar____count__;
    if (isValidDateInCalendar____count__ <= 13)
    {
      [-[objc_class callStackSymbols](__CFLookUpClass("NSThread") "callStackSymbols")];
      CFLog(3, @"*** %s: calendar cannot be nil\nFuture exception.\nA few of these errors are going to be reported with this complaint, then further violations will simply be ignored.\nHere is the backtrace where this occurred this time (some frames may be missing due to compiler optimizations):\n%@", v8, v9, v10, v11, v12, v13, "[NSDateComponents isValidDateInCalendar:]");
      v7 = isValidDateInCalendar____count__;
    }

    result = 0;
    isValidDateInCalendar____count__ = v7 + 1;
  }

  return result;
}

@end