@interface NSDate
+ (NSDate)allocWithZone:(_NSZone *)zone;
+ (NSDate)date;
+ (NSDate)dateWithDate:(id)date;
+ (NSDate)dateWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date;
+ (NSDate)dateWithTimeIntervalSince1970:(NSTimeInterval)secs;
+ (NSDate)dateWithTimeIntervalSinceNow:(NSTimeInterval)secs;
+ (NSDate)dateWithTimeIntervalSinceReferenceDate:(NSTimeInterval)ti;
+ (NSDate)now;
+ (NSTimeInterval)timeIntervalSinceReferenceDate;
+ (id)dateWithString:(NSString *)aString;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDate:(NSDate *)otherDate;
- (BOOL)isInSameDayAsDate:(id)date;
- (BOOL)isInToday;
- (BOOL)isInTomorrow;
- (BOOL)isInYesterday;
- (NSComparisonResult)compare:(NSDate *)other;
- (NSDate)dateByAddingTimeInterval:(NSTimeInterval)ti;
- (NSDate)earlierDate:(NSDate *)anotherDate;
- (NSDate)initWithDate:(id)date;
- (NSDate)initWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date;
- (NSDate)initWithTimeIntervalSinceNow:(NSTimeInterval)secs;
- (NSDate)laterDate:(NSDate *)anotherDate;
- (NSString)descriptionWithLocale:(id)locale;
- (NSTimeInterval)timeIntervalSinceDate:(NSDate *)anotherDate;
- (NSTimeInterval)timeIntervalSinceNow;
- (id)initWithString:(NSString *)description;
- (int64_t)compare:(id)compare toUnitGranularity:(unint64_t)granularity;
- (unint64_t)hash;
@end

@implementation NSDate

+ (NSDate)date
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [self alloc];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = [v2 initWithTimeIntervalSinceReferenceDate:__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSTimeInterval)timeIntervalSinceReferenceDate
{
  v5 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v2 = *MEMORY[0x1E69E9840];
  return __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
}

+ (NSDate)now
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [NSDate alloc];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = [(NSDate *)v2 initWithTimeIntervalSinceReferenceDate:__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSTimeInterval)timeIntervalSinceNow
{
  v7 = *MEMORY[0x1E69E9840];
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v3 = v2;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v4 = *MEMORY[0x1E69E9840];
  return v3 - (__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001);
}

- (unint64_t)hash
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  *v3.i64 = floor(v2 + 0.5);
  v5 = (v2 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v6), v4, v3).i64;
  if (v5 >= 0.0)
  {
    if (v5 > 0.0)
    {
      result += v5;
    }
  }

  else
  {
    result -= fabs(v5);
  }

  return result;
}

- (NSComparisonResult)compare:(NSDate *)other
{
  if (self == other)
  {
    return 0;
  }

  [(NSDate *)self timeIntervalSinceReferenceDate];
  v5 = v4;
  if (other)
  {
    [(NSDate *)other timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = NAN;
  }

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return (v5 > v6);
  }
}

- (NSDate)earlierDate:(NSDate *)anotherDate
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v6 = v5;
  if (anotherDate)
  {
    [(NSDate *)anotherDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v7 = NAN;
  }

  if (v6 <= v7)
  {
    return self;
  }

  else
  {
    return anotherDate;
  }
}

- (NSDate)laterDate:(NSDate *)anotherDate
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v6 = v5;
  if (anotherDate)
  {
    [(NSDate *)anotherDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v7 = NAN;
  }

  if (v6 >= v7)
  {
    return self;
  }

  else
  {
    return anotherDate;
  }
}

- (NSTimeInterval)timeIntervalSinceDate:(NSDate *)anotherDate
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v5 = v4;
  if (anotherDate)
  {
    [(NSDate *)anotherDate timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = NAN;
  }

  return v5 - v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal)
  {
    v5 = _NSIsNSDate(equal);
    if (v5)
    {

      LOBYTE(v5) = [(NSDate *)self isEqualToDate:equal];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEqualToDate:(NSDate *)otherDate
{
  if (!otherDate)
  {
    return 0;
  }

  [(NSDate *)self timeIntervalSinceReferenceDate];
  v5 = v4;
  [(NSDate *)otherDate timeIntervalSinceReferenceDate];
  return v5 == v6;
}

- (NSString)descriptionWithLocale:(id)locale
{
  if (!locale)
  {
    v6 = CFLocaleCopyCurrent();
    os_unfair_lock_lock_with_options();
    v9 = descriptionWithLocale__cached_loc != v6 || descriptionWithLocale__cached_df == 0;
    v10 = !v9;
    if (!v9)
    {
      v11 = CFRetain(descriptionWithLocale__cached_df);
      os_unfair_lock_unlock(&descriptionWithLocale__lock);
      if (!v11)
      {
        v8 = 0;
        goto LABEL_44;
      }

      v12 = 0;
      goto LABEL_25;
    }

    v12 = ++descriptionWithLocale__changeCounter;
    os_unfair_lock_unlock(&descriptionWithLocale__lock);
    v14 = CFTimeZoneCreateWithTimeIntervalFromGMT(&__kCFAllocatorSystemDefault, 0.0);
    v15 = v14;
    if (v14)
    {
      v16 = v6 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, v6, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
      if (v17)
      {
        v11 = v17;
        CFDateFormatterSetProperty(v17, @"kCFDateFormatterTimeZoneKey", v15);
        CFDateFormatterSetFormat(v11, @"uuuu-MM-dd HH:mm:ss '+0000'");
        CFRelease(v15);
LABEL_25:
        StringWithDate = CFDateFormatterCreateStringWithDate(&__kCFAllocatorSystemDefault, v11, self);
        v8 = _CFAutoreleasePoolAddObject(0, StringWithDate);
        if (v10)
        {
          goto LABEL_43;
        }

        v19 = 0;
LABEL_29:
        os_unfair_lock_lock_with_options();
        if (descriptionWithLocale__changeCounter == v12)
        {
          if (descriptionWithLocale__cached_loc)
          {
            CFRelease(descriptionWithLocale__cached_loc);
          }

          if (v6)
          {
            v20 = CFRetain(v6);
          }

          else
          {
            v20 = 0;
          }

          descriptionWithLocale__cached_loc = v20;
          if (descriptionWithLocale__cached_df)
          {
            CFRelease(descriptionWithLocale__cached_df);
          }

          if (v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = CFRetain(v11);
          }

          descriptionWithLocale__cached_df = v21;
        }

        os_unfair_lock_unlock(&descriptionWithLocale__lock);
        if (v19)
        {
LABEL_44:
          if (!v6)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_43:
        CFRelease(v11);
        goto LABEL_44;
      }
    }

    CFRelease(v15);
LABEL_28:
    v8 = 0;
    v11 = 0;
    v19 = 1;
    goto LABEL_29;
  }

  v5 = CFGetTypeID(locale);
  if (v5 != CFLocaleGetTypeID())
  {
    v13 = CFLocaleCopyCurrent();
    v6 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, v13, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
    CFRelease(v13);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_46;
  }

  v6 = CFDateFormatterCreate(&__kCFAllocatorSystemDefault, locale, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v7 = CFDateFormatterCreateStringWithDate(&__kCFAllocatorSystemDefault, v6, self);
  v8 = _CFAutoreleasePoolAddObject(0, v7);
LABEL_45:
  CFRelease(v6);
LABEL_46:
  if (v8)
  {
    return v8;
  }

  else
  {
    return @"<description unavailable>";
  }
}

+ (NSDate)allocWithZone:(_NSZone *)zone
{
  v6 = *MEMORY[0x1E69E9840];
  if (NSDate == self)
  {
    result = &___immutablePlaceholderDate;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___NSDate;
    result = objc_msgSendSuper2(&v5, sel_allocWithZone_, zone);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSDate)dateWithTimeIntervalSinceReferenceDate:(NSTimeInterval)ti
{
  v3 = [[self alloc] initWithTimeIntervalSinceReferenceDate:ti];

  return v3;
}

+ (NSDate)dateWithTimeIntervalSinceNow:(NSTimeInterval)secs
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [self alloc];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = [v4 initWithTimeIntervalSinceReferenceDate:__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001 + secs];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDate)initWithTimeIntervalSinceNow:(NSTimeInterval)secs
{
  v8 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = [(NSDate *)self initWithTimeIntervalSinceReferenceDate:__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001 + secs];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSDate)dateWithTimeIntervalSince1970:(NSTimeInterval)secs
{
  v3 = [[self alloc] initWithTimeIntervalSinceReferenceDate:secs + -978307200.0];

  return v3;
}

+ (NSDate)dateWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date
{
  if (date)
  {
    [(NSDate *)date timeIntervalSinceReferenceDate];
    v7 = v6;
  }

  else
  {
    v7 = NAN;
  }

  secsToBeAdded = [[self alloc] initWithTimeIntervalSinceReferenceDate:v7 + secsToBeAdded];

  return secsToBeAdded;
}

- (NSDate)initWithTimeInterval:(NSTimeInterval)secsToBeAdded sinceDate:(NSDate *)date
{
  if (date)
  {
    [(NSDate *)date timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = NAN;
  }

  v7 = v6 + secsToBeAdded;

  return [(NSDate *)self initWithTimeIntervalSinceReferenceDate:v7];
}

+ (NSDate)dateWithDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = NAN;
  }

  v6 = [[self alloc] initWithTimeIntervalSinceReferenceDate:v5];

  return v6;
}

- (NSDate)initWithDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
  }

  else
  {
    v4 = NAN;
  }

  return [(NSDate *)self initWithTimeIntervalSinceReferenceDate:v4];
}

+ (id)dateWithString:(NSString *)aString
{
  v3 = [[self alloc] initWithString:aString];

  return v3;
}

- (id)initWithString:(NSString *)description
{
  v5 = objc_opt_new();
  uTF8String = [(NSString *)description UTF8String];
  if (!uTF8String)
  {
    goto LABEL_66;
  }

  v7 = uTF8String;
  v8 = *uTF8String;
  if ((v8 - 48) > 9)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *++v7;
      v9 = 10 * v9 + (v8 - 48);
      LOBYTE(v8) = v10;
    }

    while ((v10 - 48) < 0xA);
  }

  [(NSDate *)v5 setYear:v9];
  if (!*v7)
  {
    goto LABEL_66;
  }

  v12 = v7 + 1;
  v11 = *(v7 + 1);
  if ((v11 - 48) > 9)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v13 = 10 * v13 + (v11 - 48);
      v14 = *++v12;
      LOBYTE(v11) = v14;
    }

    while ((v14 - 48) < 0xA);
    v7 = v12 - 1;
  }

  [(NSDate *)v5 setMonth:v13];
  if (!*v12)
  {
    goto LABEL_66;
  }

  v17 = *(v7 + 2);
  v16 = v7 + 2;
  v15 = v17;
  if ((v17 - 48) > 9)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *++v16;
      v18 = 10 * v18 + (v15 - 48);
      v15 = v19;
    }

    while ((v19 - 48) < 0xA);
  }

  [(NSDate *)v5 setDay:v18];
  if (!*v16)
  {
    goto LABEL_66;
  }

  v21 = v16 + 1;
  v20 = v16[1];
  if ((v20 - 48) > 9)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      v22 = 10 * v22 + (v20 - 48);
      v23 = *++v21;
      LOBYTE(v20) = v23;
    }

    while ((v23 - 48) < 0xA);
    v16 = v21 - 1;
  }

  [(NSDate *)v5 setHour:v22];
  if (!*v21)
  {
    goto LABEL_66;
  }

  v26 = v16[2];
  v25 = v16 + 2;
  v24 = v26;
  if ((v26 - 48) > 9)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = *++v25;
      v27 = 10 * v27 + (v24 - 48);
      v24 = v28;
    }

    while ((v28 - 48) < 0xA);
  }

  [(NSDate *)v5 setMinute:v27];
  if (!*v25)
  {
    goto LABEL_66;
  }

  v30 = v25 + 1;
  v29 = v25[1];
  if ((v29 - 48) > 9)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0;
    do
    {
      v31 = 10 * v31 + (v29 - 48);
      v32 = *++v30;
      LOBYTE(v29) = v32;
    }

    while ((v32 - 48) < 0xA);
    v25 = v30 - 1;
  }

  [(NSDate *)v5 setSecond:v31];
  if (!*v30 || _CFAppVersionCheck(@"com.apple.ist.Radar", 0) && [(NSString *)description hasSuffix:@"GMT"])
  {
    goto LABEL_66;
  }

  v33 = v25[2];
  if (v33 == 71)
  {
    v34 = v25[3];
    if (v34 == 77)
    {
      v34 = v25[4];
      v35 = 84;
    }

    else
    {
      v35 = 77;
    }

    v36 = v35 - v34;
  }

  else
  {
    v36 = 71 - v33;
  }

  if (v36)
  {
    v37 = 2;
  }

  else
  {
    v33 = v25[5];
    if (v33 <= 0x2A)
    {
      v39 = 0;
      if (v25[5] && v33 != 32)
      {
        goto LABEL_66;
      }

      goto LABEL_63;
    }

    v37 = 5;
    if (v33 != 45 && v33 != 43)
    {
      goto LABEL_66;
    }
  }

  if (v33 == 45)
  {
    v38 = -60;
  }

  else
  {
    if (v33 != 43)
    {
LABEL_66:

      v45 = 0;
      goto LABEL_67;
    }

    v38 = 60;
  }

  v40 = v25[v37 + 1];
  if ((v40 - 48) > 9)
  {
    v41 = 0;
  }

  else
  {
    v41 = 0;
    v42 = &v25[v37 + 2];
    do
    {
      v41 = 10 * v41 + (v40 - 48);
      v43 = *v42++;
      LOBYTE(v40) = v43;
    }

    while ((v43 - 48) < 0xA);
    if (v41 > 1600)
    {
      goto LABEL_66;
    }
  }

  v39 = v38 * (v41 % 100 + 60 * (v41 / 100));
LABEL_63:
  v44 = [[NSCalendar alloc] initWithCalendarIdentifier:@"gregorian"];
  [(NSCalendar *)v44 setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:v39]];
  [(NSDate *)[(NSCalendar *)v44 dateFromComponents:v5] timeIntervalSinceReferenceDate];
  v45 = [(NSDate *)self initWithTimeIntervalSinceReferenceDate:?];
  self = v5;
LABEL_67:

  return v45;
}

- (NSDate)dateByAddingTimeInterval:(NSTimeInterval)ti
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = objc_opt_class();

  return [v6 dateWithTimeIntervalSinceReferenceDate:v5 + ti];
}

- (BOOL)isInToday
{
  v3 = +[NSCalendar currentCalendar];

  return [(NSCalendar *)v3 isDateInToday:self];
}

- (BOOL)isInTomorrow
{
  v3 = +[NSCalendar currentCalendar];

  return [(NSCalendar *)v3 isDateInTomorrow:self];
}

- (BOOL)isInYesterday
{
  v3 = +[NSCalendar currentCalendar];

  return [(NSCalendar *)v3 isDateInYesterday:self];
}

- (BOOL)isInSameDayAsDate:(id)date
{
  v5 = +[NSCalendar currentCalendar];

  return [(NSCalendar *)v5 isDate:self inSameDayAsDate:date];
}

- (int64_t)compare:(id)compare toUnitGranularity:(unint64_t)granularity
{
  if (self == compare)
  {
    return 0;
  }

  v8 = +[NSCalendar currentCalendar];

  return [(NSCalendar *)v8 compareDate:self toDate:compare toUnitGranularity:granularity];
}

@end