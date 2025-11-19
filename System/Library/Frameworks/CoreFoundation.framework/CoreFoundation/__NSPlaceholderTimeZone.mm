@interface __NSPlaceholderTimeZone
- (BOOL)isDaylightSavingTimeForDate:(id)a3;
- (__NSPlaceholderTimeZone)initWithName:(id)a3;
- (__NSPlaceholderTimeZone)initWithName:(id)a3 data:(id)a4;
- (double)daylightSavingTimeOffsetForDate:(id)a3;
- (id)abbreviationForDate:(id)a3;
- (id)data;
- (id)name;
- (id)nextDaylightSavingTimeTransitionAfterDate:(id)a3;
- (int64_t)secondsFromGMTForDate:(id)a3;
@end

@implementation __NSPlaceholderTimeZone

- (__NSPlaceholderTimeZone)initWithName:(id)a3 data:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [NSTimeZone _timeZoneWithName:a3 data:a4];

  return v4;
}

- (__NSPlaceholderTimeZone)initWithName:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [NSTimeZone _timeZoneWithName:?];

  return v3;
}

- (id)name
{
  v4 = __CFLookUpClass("NSTimeZone");
  v5 = __CFFullMethodName(v4, self, a2);
  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v5);
  v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6), 0];
  objc_exception_throw(v7);
}

- (id)data
{
  v4 = __CFLookUpClass("NSTimeZone");
  v5 = __CFFullMethodName(v4, self, a2);
  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v5);
  v7 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v6), 0];
  objc_exception_throw(v7);
}

- (int64_t)secondsFromGMTForDate:(id)a3
{
  v5 = __CFLookUpClass("NSTimeZone");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

- (id)abbreviationForDate:(id)a3
{
  v5 = __CFLookUpClass("NSTimeZone");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

- (BOOL)isDaylightSavingTimeForDate:(id)a3
{
  v5 = __CFLookUpClass("NSTimeZone");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

- (double)daylightSavingTimeOffsetForDate:(id)a3
{
  v5 = __CFLookUpClass("NSTimeZone");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

- (id)nextDaylightSavingTimeTransitionAfterDate:(id)a3
{
  v5 = __CFLookUpClass("NSTimeZone");
  v6 = __CFFullMethodName(v5, self, a2);
  v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %@: method sent to an uninitialized time zone object", v6);
  v8 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
  objc_exception_throw(v8);
}

@end