@interface NSTimeZone
+ (NSTimeZone)allocWithZone:(_NSZone *)zone;
+ (NSTimeZone)localTimeZone;
+ (NSTimeZone)timeZoneWithAbbreviation:(NSString *)abbreviation;
+ (NSTimeZone)timeZoneWithName:(NSString *)tzName;
+ (NSTimeZone)timeZoneWithName:(NSString *)tzName data:(NSData *)aData;
+ (void)resetSystemTimeZone;
- (BOOL)isDaylightSavingTime;
- (BOOL)isDaylightSavingTimeForDate:(NSDate *)aDate;
- (BOOL)isEqual:(id)equal;
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
  name = [(NSTimeZone *)self name];

  return CFHash(name);
}

+ (void)resetSystemTimeZone
{
  +[NSLocale _resetCurrent];

  +[NSTimeZone _resetSystemTimeZone];
}

- (NSString)description
{
  name = [(NSTimeZone *)self name];
  abbreviation = [(NSTimeZone *)self abbreviation];
  secondsFromGMT = [(NSTimeZone *)self secondsFromGMT];
  isDaylightSavingTime = [(NSTimeZone *)self isDaylightSavingTime];
  v7 = "";
  if (isDaylightSavingTime)
  {
    v7 = " (Daylight)";
  }

  v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@ (%@) offset %ld%s", name, abbreviation, secondsFromGMT, v7);

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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal)
  {
    v5 = _NSIsNSTimeZone(equal);
    if (v5)
    {

      LOBYTE(v5) = [(NSTimeZone *)self isEqualToTimeZone:equal];
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

  name = [(NSTimeZone *)self name];
  name2 = [(NSTimeZone *)aTimeZone name];
  result = 0;
  if (name)
  {
    if (name2)
    {
      return CFEqual(name, name2) != 0;
    }
  }

  return result;
}

+ (NSTimeZone)allocWithZone:(_NSZone *)zone
{
  v6 = *MEMORY[0x1E69E9840];
  if (NSTimeZone == self)
  {
    result = &___immutablePlaceholderTimeZone;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___NSTimeZone;
    result = objc_msgSendSuper2(&v5, sel_allocWithZone_, zone);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSTimeZone)timeZoneWithName:(NSString *)tzName data:(NSData *)aData
{
  v4 = [[self alloc] initWithName:tzName data:aData];

  return v4;
}

+ (NSTimeZone)timeZoneWithName:(NSString *)tzName
{
  v3 = [[self alloc] initWithName:tzName];

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