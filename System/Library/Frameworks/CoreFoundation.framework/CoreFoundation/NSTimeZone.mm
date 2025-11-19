@interface NSTimeZone
+ (NSTimeZone)allocWithZone:(_NSZone *)a3;
+ (NSTimeZone)localTimeZone;
+ (NSTimeZone)timeZoneWithAbbreviation:(NSString *)abbreviation;
+ (NSTimeZone)timeZoneWithName:(NSString *)tzName;
+ (NSTimeZone)timeZoneWithName:(NSString *)tzName data:(NSData *)aData;
+ (void)resetSystemTimeZone;
- (BOOL)isDaylightSavingTime;
- (BOOL)isDaylightSavingTimeForDate:(NSDate *)aDate;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimeZone:(NSTimeZone *)aTimeZone;
- (NSData)data;
- (NSDate)nextDaylightSavingTimeTransition;
- (NSInteger)secondsFromGMT;
- (NSInteger)secondsFromGMTForDate:(NSDate *)aDate;
- (NSString)abbreviation;
- (NSString)abbreviationForDate:(NSDate *)aDate;
- (NSString)description;
- (NSString)name;
- (NSTimeInterval)daylightSavingTimeOffset;
- (NSTimeZone)initWithName:(NSString *)tzName;
- (NSTimeZone)initWithName:(NSString *)tzName data:(NSData *)aData;
- (unint64_t)hash;
@end

@implementation NSTimeZone

+ (NSTimeZone)localTimeZone
{
  v2 = +[NSTimeZone _autoupdating];
  if (_CFAppVersionCheckLessThan(@"com.ea.simpsonssocial.inc2", -1, 4.7))
  {
    v3 = v2;
  }

  return v2;
}

- (unint64_t)hash
{
  v2 = [(NSTimeZone *)self name];

  return CFHash(v2);
}

+ (void)resetSystemTimeZone
{
  +[NSLocale _resetCurrent];

  +[NSTimeZone _resetSystemTimeZone];
}

- (NSString)description
{
  v3 = [(NSTimeZone *)self name];
  v4 = [(NSTimeZone *)self abbreviation];
  v5 = [(NSTimeZone *)self secondsFromGMT];
  v6 = [(NSTimeZone *)self isDaylightSavingTime];
  v7 = "";
  if (v6)
  {
    v7 = " (Daylight)";
  }

  v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@ (%@) offset %ld%s", v3, v4, v5, v7);

  return _CFAutoreleasePoolAddObject(0, v8);
}

- (NSInteger)secondsFromGMT
{
  v3 = +[NSDate date];

  return [(NSTimeZone *)self secondsFromGMTForDate:v3];
}

- (NSString)abbreviation
{
  v3 = +[NSDate date];

  return [(NSTimeZone *)self abbreviationForDate:v3];
}

- (BOOL)isDaylightSavingTime
{
  v3 = +[NSDate date];

  return [(NSTimeZone *)self isDaylightSavingTimeForDate:v3];
}

- (NSTimeInterval)daylightSavingTimeOffset
{
  v3 = +[NSDate date];

  [(NSTimeZone *)self daylightSavingTimeOffsetForDate:v3];
  return result;
}

- (NSDate)nextDaylightSavingTimeTransition
{
  v3 = +[NSDate date];

  return [(NSTimeZone *)self nextDaylightSavingTimeTransitionAfterDate:v3];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (a3)
  {
    v5 = _NSIsNSTimeZone(a3);
    if (v5)
    {

      LOBYTE(v5) = [(NSTimeZone *)self isEqualToTimeZone:a3];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEqualToTimeZone:(NSTimeZone *)aTimeZone
{
  if (!aTimeZone)
  {
    return 0;
  }

  if (aTimeZone == self)
  {
    return 1;
  }

  v4 = [(NSTimeZone *)self name];
  v5 = [(NSTimeZone *)aTimeZone name];
  result = 0;
  if (v4)
  {
    if (v5)
    {
      return CFEqual(v4, v5) != 0;
    }
  }

  return result;
}

+ (NSTimeZone)allocWithZone:(_NSZone *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (NSTimeZone == a1)
  {
    result = &___immutablePlaceholderTimeZone;
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___NSTimeZone;
    result = objc_msgSendSuper2(&v5, sel_allocWithZone_, a3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSTimeZone)timeZoneWithName:(NSString *)tzName data:(NSData *)aData
{
  v4 = [[a1 alloc] initWithName:tzName data:aData];

  return v4;
}

+ (NSTimeZone)timeZoneWithName:(NSString *)tzName
{
  v3 = [[a1 alloc] initWithName:tzName];

  return v3;
}

+ (NSTimeZone)timeZoneWithAbbreviation:(NSString *)abbreviation
{
  if (abbreviation)
  {
    return [NSTimeZone _timeZoneWithAbbreviation:?];
  }

  else
  {
    return 0;
  }
}

- (NSString)name
{
  OUTLINED_FUNCTION_0_19();
  v2 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v2);
}

- (NSData)data
{
  OUTLINED_FUNCTION_0_19();
  v2 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v2);
}

- (NSInteger)secondsFromGMTForDate:(NSDate *)aDate
{
  OUTLINED_FUNCTION_0_19();
  v3 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v3);
}

- (NSString)abbreviationForDate:(NSDate *)aDate
{
  OUTLINED_FUNCTION_0_19();
  v3 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v3);
}

- (BOOL)isDaylightSavingTimeForDate:(NSDate *)aDate
{
  OUTLINED_FUNCTION_0_19();
  v3 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v3);
}

- (NSTimeZone)initWithName:(NSString *)tzName data:(NSData *)aData
{
  OUTLINED_FUNCTION_0_19();
  v4 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v4);
}

- (NSTimeZone)initWithName:(NSString *)tzName
{
  OUTLINED_FUNCTION_0_19();
  v3 = __CFLookUpClass("NSTimeZone");
  OUTLINED_FUNCTION_1_14(v3);
}

@end