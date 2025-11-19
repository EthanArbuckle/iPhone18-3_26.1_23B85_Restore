@interface NSCalendarDate
+ (NSCalendarDate)dateWithNaturalLanguageString:(id)a3 date:(id)a4 locale:(id)a5;
+ (NSCalendarDate)distantFuture;
+ (NSCalendarDate)distantPast;
+ (id)calendarDate;
+ (id)dateWithString:(NSString *)description calendarFormat:(NSString *)format;
+ (id)dateWithString:(NSString *)description calendarFormat:(NSString *)format locale:(id)locale;
+ (id)dateWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day hour:(NSUInteger)hour minute:(NSUInteger)minute second:(NSUInteger)second timeZone:(NSTimeZone *)aTimeZone;
- (NSCalendarDate)dateByAddingYears:(NSInteger)year months:(NSInteger)month days:(NSInteger)day hours:(NSInteger)hour minutes:(NSInteger)minute seconds:(NSInteger)second;
- (NSCalendarDate)init;
- (NSCalendarDate)initWithCoder:(id)a3;
- (NSCalendarDate)initWithTimeIntervalSinceReferenceDate:(double)a3;
- (NSInteger)hourOfDay;
- (NSInteger)minuteOfHour;
- (NSInteger)secondOfMinute;
- (NSString)descriptionWithCalendarFormat:(NSString *)format locale:(id)locale;
- (id)addTimeInterval:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithString:(NSString *)description;
- (id)initWithString:(NSString *)description calendarFormat:(NSString *)format locale:(id)locale;
- (id)initWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day hour:(NSUInteger)hour minute:(NSUInteger)minute second:(NSUInteger)second timeZone:(NSTimeZone *)aTimeZone;
- (id)replacementObjectForPortCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)release;
- (void)setCalendarFormat:(NSString *)format;
- (void)setTimeZone:(NSTimeZone *)aTimeZone;
- (void)years:(NSInteger *)yp months:(NSInteger *)mop days:(NSInteger *)dp hours:(NSInteger *)hp minutes:(NSInteger *)mip seconds:(NSInteger *)sp sinceDate:(NSCalendarDate *)date;
@end

@implementation NSCalendarDate

- (NSCalendarDate)init
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(NSCalendarDate *)self initWithTimeIntervalSinceReferenceDate:Current];
}

- (NSInteger)secondOfMinute
{
  timeIntervalSinceReferenceDate = self->_timeIntervalSinceReferenceDate;
  v3 = [(NSTimeZone *)self->_timeZone secondsFromGMTForDate:self];
  v4 = timeIntervalSinceReferenceDate + v3 - floor((timeIntervalSinceReferenceDate + v3) / 60.0) * 60.0;
  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v4 + 60;
  }
}

- (void)release
{
  v5 = *MEMORY[0x1E69E9840];
  if ((release_do_check & 1) == 0)
  {
    if (_CFAppVersionCheckLessThan() || _CFAppVersionCheckLessThan() || _CFAppVersionCheckLessThan())
    {
      v3 = self;
    }

    else
    {
      release_do_check = 1;
    }
  }

  v4.receiver = self;
  v4.super_class = NSCalendarDate;
  [(NSCalendarDate *)&v4 release];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSCalendarDate;
  [(NSCalendarDate *)&v3 dealloc];
}

- (id)initWithString:(NSString *)description
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSCalendarDate;
  return [(NSCalendarDate *)&v4 initWithString:description];
}

- (NSCalendarDate)initWithTimeIntervalSinceReferenceDate:(double)a3
{
  self->_timeIntervalSinceReferenceDate = a3;
  if (!self->_timeZone)
  {
    self->_timeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  if (!self->_formatString)
  {
    self->_formatString = @"%Y-%m-%d %H:%M:%S %z";
  }

  return self;
}

+ (NSCalendarDate)distantFuture
{
  v2 = objc_allocWithZone(a1);
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  v3 = [v2 initWithTimeIntervalSinceReferenceDate:?];

  return v3;
}

+ (NSCalendarDate)distantPast
{
  v2 = objc_allocWithZone(a1);
  [objc_msgSend(MEMORY[0x1E695DF00] "distantPast")];
  v3 = [v2 initWithTimeIntervalSinceReferenceDate:?];

  return v3;
}

- (id)initWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day hour:(NSUInteger)hour minute:(NSUInteger)minute second:(NSUInteger)second timeZone:(NSTimeZone *)aTimeZone
{
  v9 = minute;
  v10 = hour;
  v11 = day;
  v12 = month;
  v13 = year;
  v15 = aTimeZone;
  v16 = second;
  if (!aTimeZone)
  {
    v15 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v18.hour = v10;
  v18.minute = v9;
  v18.day = v11;
  v18.month = v12;
  v18.year = v13;
  v18.second = v16;
  self->_timeIntervalSinceReferenceDate = CFGregorianDateGetAbsoluteTime(v18, v15);
  self->_timeZone = v15;
  if (!self->_formatString)
  {
    self->_formatString = @"%Y-%m-%d %H:%M:%S %z";
  }

  return self;
}

+ (id)calendarDate
{
  v2 = [objc_allocWithZone(a1) init];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithTimeIntervalSinceReferenceDate:", self->_timeIntervalSinceReferenceDate}];
  [v4 setTimeZone:self->_timeZone];
  [v4 setCalendarFormat:self->_formatString];
  return v4;
}

- (void)setTimeZone:(NSTimeZone *)aTimeZone
{
  v3 = aTimeZone;
  if (!aTimeZone)
  {
    v3 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v5 = v3;

  self->_timeZone = v3;
}

- (void)setCalendarFormat:(NSString *)format
{
  v5 = self->_formatString;
  if (format)
  {
    v6 = [(NSString *)format copyWithZone:0];
  }

  else
  {
    v6 = @"%Y-%m-%d %H:%M:%S %z";
  }

  self->_formatString = v6;
}

- (NSInteger)hourOfDay
{
  timeIntervalSinceReferenceDate = self->_timeIntervalSinceReferenceDate;
  v3 = [(NSTimeZone *)self->_timeZone secondsFromGMTForDate:self];
  v4 = (timeIntervalSinceReferenceDate + v3) / 3600.0 - floor((timeIntervalSinceReferenceDate + v3) / 3600.0 / 24.0) * 24.0;
  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v4 + 24;
  }
}

- (NSInteger)minuteOfHour
{
  timeIntervalSinceReferenceDate = self->_timeIntervalSinceReferenceDate;
  v3 = [(NSTimeZone *)self->_timeZone secondsFromGMTForDate:self];
  v4 = (timeIntervalSinceReferenceDate + v3) / 60.0 - floor((timeIntervalSinceReferenceDate + v3) / 60.0 / 60.0) * 60.0;
  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return v4 + 60;
  }
}

+ (id)dateWithYear:(NSInteger)year month:(NSUInteger)month day:(NSUInteger)day hour:(NSUInteger)hour minute:(NSUInteger)minute second:(NSUInteger)second timeZone:(NSTimeZone *)aTimeZone
{
  v9 = [objc_allocWithZone(a1) initWithYear:year month:month day:day hour:hour minute:minute second:second timeZone:aTimeZone];

  return v9;
}

- (NSCalendarDate)dateByAddingYears:(NSInteger)year months:(NSInteger)month days:(NSInteger)day hours:(NSInteger)hour minutes:(NSInteger)minute seconds:(NSInteger)second
{
  v15 = *MEMORY[0x1E69E9840];
  timeIntervalSinceReferenceDate = self->_timeIntervalSinceReferenceDate;
  timeZone = self->_timeZone;
  units.years = year;
  units.months = month;
  units.days = day;
  units.hours = hour;
  units.minutes = minute;
  *(&units.minutes + 1) = 0;
  units.seconds = second;
  v11 = CFAbsoluteTimeAddGregorianUnits(timeIntervalSinceReferenceDate, timeZone, &units);
  v12 = [objc_allocWithZone(objc_opt_class()) initWithTimeIntervalSinceReferenceDate:v11];
  [v12 setTimeZone:self->_timeZone];
  [v12 setCalendarFormat:self->_formatString];
  return v12;
}

- (void)years:(NSInteger *)yp months:(NSInteger *)mop days:(NSInteger *)dp hours:(NSInteger *)hp minutes:(NSInteger *)mip seconds:(NSInteger *)sp sinceDate:(NSCalendarDate *)date
{
  v21 = *MEMORY[0x1E69E9840];
  if (!date)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: sinceDate: argument cannot be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v19);
  }

  v16 = (yp != 0) | (2 * (mop != 0)) | (4 * (dp != 0)) | (8 * (hp != 0)) | (16 * (mip != 0)) | (32 * (sp != 0));
  timeIntervalSinceReferenceDate = self->_timeIntervalSinceReferenceDate;
  [(NSCalendarDate *)date timeIntervalSinceReferenceDate];
  CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v20, timeIntervalSinceReferenceDate, v18, self->_timeZone, v16);
  if (yp)
  {
    *yp = v20.years;
  }

  if (mop)
  {
    *mop = v20.months;
  }

  if (dp)
  {
    *dp = v20.days;
  }

  if (hp)
  {
    *hp = v20.hours;
  }

  if (mip)
  {
    *mip = v20.minutes;
  }

  if (sp)
  {
    *sp = v20.seconds;
  }
}

- (id)addTimeInterval:(double)a3
{
  [(NSCalendarDate *)self timeIntervalSinceReferenceDate];
  v6 = [NSCalendarDate dateWithTimeIntervalSinceReferenceDate:v5 + a3];
  [(NSCalendarDate *)v6 setTimeZone:self->_timeZone];
  [(NSCalendarDate *)v6 setCalendarFormat:self->_formatString];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    [(NSCalendarDate *)self timeIntervalSinceReferenceDate];
    [a3 encodeDouble:@"NS.time" forKey:?];
    [a3 encodeObject:-[NSCalendarDate timeZone](self forKey:{"timeZone"), @"NS.timezone"}];
    v5 = [(NSCalendarDate *)self calendarFormat];

    [a3 encodeObject:v5 forKey:@"NS.format"];
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:&self->_timeIntervalSinceReferenceDate];
    [a3 encodeValueOfObjCType:"@" at:&self->_timeZone];

    [a3 encodeValueOfObjCType:"@" at:&self->_formatString];
  }
}

- (NSCalendarDate)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v5 = 0.0;
    if ([a3 containsValueForKey:@"NS.time"])
    {
      [a3 decodeDoubleForKey:@"NS.time"];
      v5 = v6;
    }

    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.timezone"];
    v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.format"];
    if ([a3 error])
    {
      return 0;
    }

    else
    {
      v10 = [(NSCalendarDate *)self initWithTimeIntervalSinceReferenceDate:v5];
      self = v10;
      if (v10)
      {
        [(NSCalendarDate *)v10 setTimeZone:v7];
        [(NSCalendarDate *)self setCalendarFormat:v8];
      }
    }
  }

  else
  {
    [a3 decodeValueOfObjCType:"d" at:&self->_timeIntervalSinceReferenceDate size:8];
    [a3 decodeValueOfObjCType:"@" at:&self->_timeZone size:8];
    [a3 decodeValueOfObjCType:"@" at:&self->_formatString size:8];
  }

  return self;
}

+ (id)dateWithString:(NSString *)description calendarFormat:(NSString *)format
{
  v4 = [objc_allocWithZone(a1) initWithString:description calendarFormat:format locale:0];

  return v4;
}

+ (id)dateWithString:(NSString *)description calendarFormat:(NSString *)format locale:(id)locale
{
  v5 = [objc_allocWithZone(a1) initWithString:description calendarFormat:format locale:locale];

  return v5;
}

- (NSString)descriptionWithCalendarFormat:(NSString *)format locale:(id)locale
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = [objc_allocWithZone(NSMutableString) init];
  v6 = [(NSString *)format length];
  v7 = +[NSCharacterSet decimalDigitCharacterSet];
  if (v6)
  {
    v8 = v7;
    v9 = 0;
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v10 = [(NSString *)format rangeOfString:@"%" options:0 range:v9, v6 - v9];
      v12 = v11;
      if (v11)
      {
        v13 = v10;
      }

      else
      {
        v13 = v6;
      }

      if (v13 > v9)
      {
        [(NSString *)v5 replaceCharactersInRange:[(NSString *)v5 length] withString:0, [(NSString *)format substringWithRange:v9, v13 - v9]];
      }

      v9 = v13 + v12;
      if (!v12)
      {
        goto LABEL_82;
      }

      v14 = v13 + v12;
      if (v9 < v6)
      {
        break;
      }

      __str[0] = 0;
LABEL_82:
      if (v9 >= v6)
      {
        return v5;
      }
    }

    while (1)
    {
      v15 = [(NSCharacterSet *)v8 characterIsMember:[(NSString *)format characterAtIndex:v14]];
      v16 = v15;
      if (!v15)
      {
        break;
      }

      if (++v14 >= v6)
      {
        v14 = v6;
        goto LABEL_15;
      }
    }

    if (v9 >= v14)
    {
      __str[0] = 0;
      goto LABEL_18;
    }

LABEL_15:
    snprintf(__str, 0x80uLL, "%%%sd", [[(NSString *)format substringWithRange:v9 UTF8String]);
    v9 = v14;
    if (v16)
    {
      goto LABEL_82;
    }

LABEL_18:
    v9 = v14 + 1;
    v17 = [(NSString *)format characterAtIndex:v14];
    if (v17 > 111)
    {
      if (v17 > 119)
      {
        v18 = self;
        if (v17 == 120)
        {
          v34 = locale;
          v35 = [locale objectForKey:@"NSTimeDateFormatString"];
          v36 = v35 == 0;
          v37 = @"%a %b %d %Y";
LABEL_70:
          if (v36)
          {
            v49 = v37;
          }

          else
          {
            v49 = v35;
          }

          v50 = [(NSString *)v5 length];
          v28 = [(NSCalendarDate *)v18 descriptionWithCalendarFormat:v49 locale:v34];
          v27 = v5;
          v26 = v50;
          goto LABEL_81;
        }

        if (v17 != 121)
        {
          if (v17 == 122)
          {
            if ([(NSCalendarDate *)self timeZone])
            {
              v22 = [(NSTimeZone *)[(NSCalendarDate *)self timeZone] secondsFromGMTForDate:self];
              if (v22 >= 0)
              {
                v23 = @"+";
              }

              else
              {
                v23 = @"-";
              }

              if (v22 >= 0)
              {
                v24 = v22;
              }

              else
              {
                v24 = -v22;
              }
            }

            else
            {
              v24 = 0;
              v23 = @"+";
            }

            [(NSString *)v5 replaceCharactersInRange:[(NSString *)v5 length] withString:0, v23];
            appendNumber(v5, v24 / 0xE10, "%02ld", "%02ld");
            appendNumber(v5, v24 / 0x3C - 60 * (((v24 / 0x3C * 0x888888888888889uLL) >> 64) >> 1), "%02ld", "%02ld");
            goto LABEL_82;
          }

LABEL_37:
          v26 = [(NSString *)v5 length];
          v27 = v5;
          v28 = @"?";
LABEL_81:
          [(NSString *)v27 replaceCharactersInRange:v26 withString:0, v28];
          goto LABEL_82;
        }

        v51 = [(NSCalendarDate *)self yearOfCommonEra];
        v52 = [locale objectForKey:@"AppleLocale"];
        if (v52)
        {
          v53 = v52;
          if ([v52 isEqualToString:@"ja_JP_TRADITIONAL"])
          {
LABEL_76:
            v54 = CFLocaleCreate(0, @"ja_JP_TRADITIONAL");
            v55 = CFDateFormatterCreate(allocator, v54, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
            CFDateFormatterSetFormat(v55, @"Gy");
            [(NSCalendarDate *)self timeIntervalSinceReferenceDate];
            StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(allocator, v55, v56);
            [(NSString *)v5 replaceCharactersInRange:[(NSString *)v5 length] withString:0, StringWithAbsoluteTime];
            CFRelease(v54);
            CFRelease(v55);
            CFRelease(StringWithAbsoluteTime);
            goto LABEL_82;
          }

          if ([v53 isEqualToString:@"th_TH_TRADITIONAL"])
          {
            v51 += 543;
          }
        }

        v29 = v51 % 100;
LABEL_67:
        v30 = v5;
        v39 = "%02ld";
        goto LABEL_68;
      }

      if (v17 == 112)
      {
        v19 = [(NSCalendarDate *)self hourOfDay]> 11;
        v20 = [locale objectForKey:@"NSAMPMDesignation"];
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AM", @"PM", 0, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69}];
LABEL_78:
        if (!v20)
        {
          v20 = v21;
        }

        v58 = [(NSString *)v5 length];
        v28 = [v20 objectAtIndex:v19];
        v27 = v5;
        v26 = v58;
        goto LABEL_81;
      }

      if (v17 != 119)
      {
        goto LABEL_37;
      }

      v25 = [(NSCalendarDate *)self dayOfWeek];
LABEL_41:
      v29 = v25;
      v30 = v5;
    }

    else
    {
      v18 = self;
      switch(v17)
      {
        case 'A':
          v19 = [(NSCalendarDate *)self dayOfWeek];
          v20 = [locale objectForKey:@"NSWeekDayNameArray"];
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0, v65, v66, v67, v68, v69}];
          goto LABEL_78;
        case 'B':
          v19 = [(NSCalendarDate *)self monthOfYear]- 1;
          v20 = [locale objectForKey:@"NSMonthNameArray"];
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", 0}];
          goto LABEL_78;
        case 'C':
        case 'D':
        case 'E':
        case 'G':
        case 'J':
        case 'K':
        case 'L':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
        case 'f':
        case 'g':
        case 'h':
        case 'k':
        case 'l':
          goto LABEL_37;
        case 'F':
          [(NSCalendarDate *)self timeIntervalSinceReferenceDate];
          v41 = v40;
          [(NSCalendarDate *)self timeIntervalSinceReferenceDate];
          v43 = vcvtmd_s64_f64((v41 - floor(v42)) * 1000.0);
          v44 = 5243 * (v43 - 1000 * ((((v43 * 0x20C49BA5E353F7CFLL) >> 64) >> 63) + (((v43 * 0x20C49BA5E353F7CFLL) >> 64) >> 7)));
          v73[0] = (v44 >> 19) + (v44 >> 31) + 48;
          v45 = ((v43 * 0xA3D70A3D70A3D70BLL) >> 64) + v43;
          LODWORD(v45) = 103 * (v43 - 100 * ((v45 < 0) + (v45 >> 6)));
          v73[1] = (((v45 & 0x8000) != 0) + (v45 >> 10) + 48);
          v73[2] = v43 - 10 * ((((v43 * 0x6666666666666667) >> 64) >> 63) + (((v43 * 0x6666666666666667) >> 64) >> 2)) + 48;
          [(NSString *)v5 replaceCharactersInRange:[(NSString *)v5 length] withCharacters:0 length:v73, 3];
          goto LABEL_82;
        case 'H':
          v33 = [(NSCalendarDate *)self hourOfDay];
          goto LABEL_66;
        case 'I':
          v38 = [(NSCalendarDate *)self hourOfDay];
          if (v38 % 12)
          {
            v29 = v38 % 12;
          }

          else
          {
            v29 = 12;
          }

          goto LABEL_67;
        case 'M':
          v33 = [(NSCalendarDate *)self minuteOfHour];
          goto LABEL_66;
        case 'S':
          v33 = [(NSCalendarDate *)self secondOfMinute];
          goto LABEL_66;
        case 'X':
          v34 = locale;
          v35 = [locale objectForKey:@"NSTimeDateFormatString"];
          v36 = v35 == 0;
          v37 = @"%H:%M:%S %Z";
          goto LABEL_70;
        case 'Y':
          v46 = [(NSCalendarDate *)self yearOfCommonEra];
          v47 = [locale objectForKey:@"AppleLocale"];
          if (!v47)
          {
            goto LABEL_63;
          }

          v48 = v47;
          if ([v47 isEqualToString:@"ja_JP_TRADITIONAL"])
          {
            goto LABEL_76;
          }

          if ([v48 isEqualToString:@"th_TH_TRADITIONAL"])
          {
            v46 += 543;
          }

LABEL_63:
          v30 = v5;
          v29 = v46;
          break;
        case 'Z':
          v31 = [(NSTimeZone *)[(NSCalendarDate *)self timeZone] name];
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = &stru_1EEEFDF90;
          }

          [(NSString *)v5 appendString:v32];
          goto LABEL_82;
        case 'a':
          v19 = [(NSCalendarDate *)self dayOfWeek];
          v20 = [locale objectForKey:@"NSShortWeekDayNameArray"];
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Sun", @"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", 0, v65, v66, v67, v68, v69}];
          goto LABEL_78;
        case 'b':
          v19 = [(NSCalendarDate *)self monthOfYear]- 1;
          v20 = [locale objectForKey:@"NSShortMonthNameArray"];
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", 0}];
          goto LABEL_78;
        case 'c':
          v34 = locale;
          v35 = [locale objectForKey:@"NSTimeDateFormatString"];
          v36 = v35 == 0;
          v37 = @"%a %b %d %H:%M:%S %Z %Y";
          goto LABEL_70;
        case 'd':
          v33 = [(NSCalendarDate *)self dayOfMonth];
          goto LABEL_66;
        case 'e':
          v25 = [(NSCalendarDate *)self dayOfMonth];
          goto LABEL_41;
        case 'i':
          v29 = [(NSCalendarDate *)self hourOfDay]% 12;
          goto LABEL_67;
        case 'j':
          v29 = [(NSCalendarDate *)self dayOfYear];
          v30 = v5;
          v39 = "%03ld";
          goto LABEL_68;
        case 'm':
          v33 = [(NSCalendarDate *)self monthOfYear];
LABEL_66:
          v29 = v33;
          goto LABEL_67;
        default:
          if (v17 != 37)
          {
            goto LABEL_37;
          }

          v26 = [(NSString *)v5 length];
          v27 = v5;
          v28 = @"%";
          goto LABEL_81;
      }
    }

    v39 = "%ld";
LABEL_68:
    appendNumber(v30, v29, __str, v39);
    goto LABEL_82;
  }

  return v5;
}

- (id)initWithString:(NSString *)description calendarFormat:(NSString *)format locale:(id)locale
{
  v86[1] = *MEMORY[0x1E69E9840];
  v7 = [NSScanner scannerWithString:?];
  v8 = [NSScanner scannerWithString:format];
  v79 = 0;
  v9 = +[NSCharacterSet decimalDigitCharacterSet];
  if (oldInitWithString_doExcelLittleY == -1)
  {
    if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      v10 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    else
    {
      v10 = 1;
    }

    oldInitWithString_doExcelLittleY = v10;
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v11 = -1;
  v86[0] = -1;
  v72 = format;
  if (![(NSScanner *)v8 isAtEnd])
  {
    v73 = 0;
    v14 = @"%";
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      if ([(NSScanner *)v7 isAtEnd])
      {
        goto LABEL_139;
      }

      skipWhitespace(v7);
      if ([(NSScanner *)v7 isAtEnd])
      {
        goto LABEL_139;
      }

      if (![(NSScanner *)v8 scanString:v14 intoString:0])
      {
        v18 = [(NSScanner *)v8 scanLocation];
        v19 = [(NSScanner *)v7 scanLocation];
        if ([(NSScanner *)v8 isAtEnd]&& ![(NSScanner *)v7 isAtEnd])
        {
          goto LABEL_139;
        }

        v20 = v14;
        v21 = [(NSString *)format characterAtIndex:v18];
        if ([(NSString *)description characterAtIndex:v19]!= v21)
        {
          goto LABEL_139;
        }

        v14 = v20;
        [(NSScanner *)v7 setScanLocation:v19 + 1];
        v22 = v18 + 1;
        goto LABEL_111;
      }

      if ([(NSScanner *)v8 isAtEnd])
      {
        goto LABEL_139;
      }

      [(NSScanner *)v8 scanCharactersFromSet:v9 intoString:0];
      v15 = [(NSString *)format characterAtIndex:[(NSScanner *)v8 scanLocation]];
      if (v15 <= 76)
      {
        if (v15 > 69)
        {
          if ((v15 - 72) >= 2)
          {
            if (v15 != 70)
            {
              goto LABEL_139;
            }

            v17 = &v80;
            v24 = v7;
            v25 = 3;
          }

          else
          {
            v17 = &v83;
LABEL_71:
            v24 = v7;
            v25 = 2;
          }

          if (![(NSScanner *)v24 _scanDecimal:v25 into:v17])
          {
            goto LABEL_139;
          }
        }

        else
        {
          switch(v15)
          {
            case '%':
              v27 = [(NSScanner *)v7 scanLocation];
              if ([(NSString *)[(NSScanner *)v7 string] characterAtIndex:v27]!= 37)
              {
                goto LABEL_139;
              }

LABEL_86:
              [(NSScanner *)v7 setScanLocation:v27 + 1];
              break;
            case 'A':
              v26 = [locale objectForKey:@"NSWeekDayNameArray"];
              if (!v26)
              {
                v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", 0}];
              }

LABEL_61:
              v42 = v26;
              v43 = 0;
              while (!-[NSScanner scanString:intoString:](v7, "scanString:intoString:", [v42 objectAtIndex:v43], 0))
              {
                if (++v43 == 7)
                {
                  goto LABEL_139;
                }
              }

              break;
            case 'B':
              v23 = [locale objectForKey:@"NSMonthNameArray"];
              if (!v23)
              {
                v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", 0}];
              }

LABEL_80:
              v45 = v23;
              v46 = 1;
              while (!-[NSScanner scanString:intoString:](v7, "scanString:intoString:", [v45 objectAtIndex:v46 - 1], 0))
              {
                if (++v46 == 13)
                {
                  goto LABEL_139;
                }
              }

              v85 = v46;
              break;
            default:
              goto LABEL_139;
          }
        }

        goto LABEL_110;
      }

      v16 = @"%a %b %d %H:%M:%S %Z %Y";
      switch(v15)
      {
        case 'S':
          v17 = &v81;
          goto LABEL_71;
        case 'T':
        case 'U':
        case 'V':
        case 'W':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
        case 'f':
        case 'g':
        case 'h':
        case 'i':
        case 'k':
        case 'l':
        case 'n':
        case 'o':
        case 'q':
        case 'r':
        case 's':
        case 't':
        case 'u':
        case 'v':
          goto LABEL_139;
        case 'X':
          v16 = @"%H:%M:%S %Z";
          goto LABEL_67;
        case 'Y':
          v36 = [locale objectForKey:@"AppleLocale"];
          if (v36)
          {
            v37 = v36;
            if ([v36 isEqualToString:@"ja_JP_TRADITIONAL"])
            {
              v38 = [(NSString *)description substringFromIndex:[(NSScanner *)v7 scanLocation]];
              v39 = CFLocaleCreate(0, @"ja_JP_TRADITIONAL");
              v33 = CFDateFormatterCreate(allocator, v39, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
              CFDateFormatterSetFormat(v33, @"Gy");
              CFRelease(v39);
              atp = 0.0;
              rangep.location = 0;
              rangep.length = 0;
              rangep.length = [(NSString *)v38 length];
              if (!CFDateFormatterGetAbsoluteTimeFromString(v33, v38, &rangep, &atp))
              {
LABEL_150:
                CFRelease(v33);
                goto LABEL_139;
              }

              [(NSScanner *)v7 setScanLocation:[(NSScanner *)v7 scanLocation]+ rangep.length];
              v40 = CFTimeZoneCopyDefault();
              year = CFAbsoluteTimeGetGregorianDate(atp, v40).year;
              CFRelease(v40);
              v86[0] = year;
              CFRelease(v33);
            }

            else
            {
              if (![(NSScanner *)v7 _scanDecimal:4 into:v86])
              {
                goto LABEL_139;
              }

              if ([v37 isEqualToString:@"th_TH_TRADITIONAL"])
              {
                v49 = v86[0] - 543;
                v86[0] -= 543;
                goto LABEL_106;
              }
            }
          }

          else if (![(NSScanner *)v7 _scanDecimal:4 into:v86])
          {
            goto LABEL_139;
          }

          v49 = v86[0];
LABEL_106:
          if (v49 < 1)
          {
            goto LABEL_139;
          }

LABEL_110:
          v22 = [(NSScanner *)v8 scanLocation]+ 1;
LABEL_111:
          [(NSScanner *)v8 setScanLocation:v22];
LABEL_112:
          if ([(NSScanner *)v8 isAtEnd])
          {
            goto LABEL_8;
          }

          break;
        case 'Z':
          skipWhitespace(v7);
          if (![(NSScanner *)v7 scanUpToCharactersFromSet:+[NSCharacterSet intoString:"whitespaceAndNewlineCharacterSet"], &v79])
          {
            goto LABEL_139;
          }

          goto LABEL_110;
        case 'a':
          v26 = [locale objectForKey:@"NSShortWeekDayNameArray"];
          if (!v26)
          {
            v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Sun", @"Mon", @"Tue", @"Wed", @"Thu", @"Fri", @"Sat", 0}];
          }

          goto LABEL_61;
        case 'b':
          v23 = [locale objectForKey:@"NSShortMonthNameArray"];
          if (!v23)
          {
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec", 0}];
          }

          goto LABEL_80;
        case 'c':
          goto LABEL_67;
        case 'd':
          v17 = &v84;
          goto LABEL_71;
        case 'e':
          v78 = 0;
          if (![(NSScanner *)v7 scanInt:&v78])
          {
            goto LABEL_139;
          }

          v84 = v78;
          goto LABEL_110;
        case 'j':
          if (![(NSScanner *)v7 scanInt:&v78])
          {
            goto LABEL_139;
          }

          v73 = v78;
          goto LABEL_110;
        case 'm':
          v17 = &v85;
          goto LABEL_71;
        case 'p':
          v28 = [locale objectForKey:@"NSAMPMDesignation"];
          if (!v28)
          {
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AM", @"PM", 0}];
          }

          if (-[NSScanner scanString:intoString:](v7, "scanString:intoString:", [v28 objectAtIndex:1], 0))
          {
            if (v83 <= 11)
            {
              v83 += 12;
            }
          }

          else
          {
            if (!-[NSScanner scanString:intoString:](v7, "scanString:intoString:", [v28 objectAtIndex:0], 0))
            {
              goto LABEL_139;
            }

            if (v83 == 12)
            {
              v83 = 0;
            }
          }

          goto LABEL_110;
        case 'w':
          v27 = [(NSScanner *)v7 scanLocation];
          if ([(NSString *)description characterAtIndex:v27]- 48 <= 6)
          {
            goto LABEL_86;
          }

          goto LABEL_139;
        case 'x':
          v16 = @"%a %b %d %Y";
LABEL_67:
          v44 = [locale objectForKey:@"NSTimeDateFormatString"];
          if (v44)
          {
            v16 = v44;
          }

          [(NSScanner *)v8 setScanLocation:[(NSScanner *)v8 scanLocation]+ 1];
          format = [(__CFString *)v16 stringByAppendingString:[(NSScanner *)v8 _remainingString]];
          v8 = [NSScanner scannerWithString:format];
          goto LABEL_112;
        case 'y':
          v29 = [locale objectForKey:@"AppleLocale"];
          if (!v29)
          {
            if (![(NSScanner *)v7 _scanDecimal:2 into:v86])
            {
              goto LABEL_139;
            }

            goto LABEL_98;
          }

          v30 = v29;
          if (![v29 isEqualToString:@"ja_JP_TRADITIONAL"])
          {
            if (![(NSScanner *)v7 _scanDecimal:2 into:v86])
            {
              goto LABEL_139;
            }

            if ([v30 isEqualToString:@"th_TH_TRADITIONAL"])
            {
              v47 = v86[0] + 1957;
LABEL_109:
              v86[0] = v47;
              goto LABEL_110;
            }

LABEL_98:
            if (oldInitWithString_doExcelLittleY)
            {
              v48 = 1900;
              if (v86[0] < 30)
              {
                v48 = 2000;
              }

              v47 = v48 + v86[0];
            }

            else
            {
              v47 = v86[0] + 1900;
            }

            goto LABEL_109;
          }

          v31 = [(NSString *)description substringFromIndex:[(NSScanner *)v7 scanLocation]];
          v32 = CFLocaleCreate(0, @"ja_JP_TRADITIONAL");
          v33 = CFDateFormatterCreate(allocator, v32, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
          CFDateFormatterSetFormat(v33, @"Gy");
          CFRelease(v32);
          atp = 0.0;
          rangep.location = 0;
          rangep.length = 0;
          rangep.length = [(NSString *)v31 length];
          if (!CFDateFormatterGetAbsoluteTimeFromString(v33, v31, &rangep, &atp))
          {
            goto LABEL_150;
          }

          [(NSScanner *)v7 setScanLocation:[(NSScanner *)v7 scanLocation]+ rangep.length];
          v34 = CFTimeZoneCopyDefault();
          v35 = CFAbsoluteTimeGetGregorianDate(atp, v34).year;
          CFRelease(v34);
          v86[0] = v35;
          CFRelease(v33);
          goto LABEL_110;
        case 'z':
          LODWORD(rangep.location) = 0;
          if (![(NSScanner *)v7 scanInt:&rangep])
          {
            goto LABEL_139;
          }

          if ((rangep.location & 0x80000000) != 0)
          {
            v11 = (-60 * (-LODWORD(rangep.location) % 0x64u) - 3600 * (-LODWORD(rangep.location) / 0x64u));
          }

          else
          {
            v11 = 60 * (LODWORD(rangep.location) % 0x64) + 3600 * (LODWORD(rangep.location) / 0x64);
          }

          goto LABEL_110;
        default:
          if (v15 != 77)
          {
            goto LABEL_139;
          }

          v17 = &v82;
          goto LABEL_71;
      }
    }
  }

  v73 = 0;
LABEL_8:
  if (![(NSScanner *)v8 isAtEnd])
  {
    goto LABEL_139;
  }

  if (v79)
  {
    v12 = [MEMORY[0x1E695DFE8] timeZoneWithName:?];
    if (v12)
    {
      goto LABEL_118;
    }

    v13 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:v79];
  }

  else if (v11 == -1)
  {
    v13 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  else
  {
    v13 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v11];
  }

  v12 = v13;
LABEL_118:
  v50 = v86[0];
  if (v86[0] == -1)
  {
    v50 = [+[NSCalendarDate calendarDate](NSCalendarDate "calendarDate")];
    v86[0] = v50;
  }

  if (v73)
  {
    v51 = v50 - 1;
    v52 = v50 + 2;
    if (v50 >= 1)
    {
      v52 = v50 - 1;
    }

    v53 = v73 + 365 * (v50 - 1) + (v52 >> 2);
    v54 = ((v51 * 0x5C28F5C28F5C28F5) >> 64) - v50 + 1;
    v55 = 0xA3D70A3D70A3D70BLL;
    v56 = v53 + v51 / 400 + (v54 >> 6) + (v54 >> 63);
    v57 = ((v56 / 366) << 16) + 0x10000;
    v58 = v56 / 366 - 1;
    v59 = ((v56 / 366) << 16) - 0x10000;
    do
    {
      v60 = absolute_from_gregorian(v57 & 0xFFFF0000 | 0x101);
      LODWORD(v57) = v57 + 0x10000;
      ++v58;
      v59 += 0x10000;
    }

    while (v60 <= v56);
    v61 = 0;
    v62 = v58 & 3;
    v63 = v58 % 400;
    v64 = 1;
    if (!v62)
    {
      goto LABEL_128;
    }

LABEL_133:
    for (i = days_per_month[v61] << 8; ; i = 7424)
    {
      v66 = v64;
      v55 = v55 & 0xFFFFFFFF00000000 | (v59 + v64 + i);
      if (absolute_from_gregorian(v55) >= v56)
      {
        break;
      }

      ++v61;
      v64 = v66 + 1;
      if (v62)
      {
        goto LABEL_133;
      }

LABEL_128:
      if (v61 != 1 || v63 == 100 || v63 == 300 || v63 == 200)
      {
        goto LABEL_133;
      }
    }

    v67 = (v61 + 1);
    v68 = absolute_from_gregorian(v66 + v59 + 256);
    if (v85 && v85 != v67 || (v85 = (v61 + 1), v84) && v84 != (v56 - v68 + 1))
    {
LABEL_139:

      return 0;
    }

    v84 = (v56 - v68 + 1);
    if (v61 == 0xFF)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v67 = v85;
    if (!v85)
    {
LABEL_142:
      v67 = 1;
      v85 = 1;
    }
  }

  if (!v84)
  {
    v84 = 1;
  }

  v69 = [NSCalendarDate initWithYear:"initWithYear:month:day:hour:minute:second:timeZone:" month:v50 day:v67 hour:v12 minute:? second:? timeZone:?];
  [(NSCalendarDate *)v69 setCalendarFormat:v72];
  if (v69 && v80)
  {
    v69->_timeIntervalSinceReferenceDate = v80 / 1000.0 + 0.0001 + v69->_timeIntervalSinceReferenceDate;
  }

  return v69;
}

+ (NSCalendarDate)dateWithNaturalLanguageString:(id)a3 date:(id)a4 locale:(id)a5
{
  v117 = a5;
  v124[1] = *MEMORY[0x1E69E9840];
  v8 = [a3 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
  if ([v8 isEqual:@"now"])
  {
    if (a4)
    {
      return a4;
    }

    return +[NSCalendarDate calendarDate];
  }

  if ([v8 isEqual:@"today"])
  {
    if (!a4)
    {
      a4 = +[NSCalendarDate calendarDate];
    }

    v10 = [a4 yearOfCommonEra];
    v11 = [a4 monthOfYear];
    v12 = [a4 dayOfMonth];
    return [a1 dateWithYear:v10 month:v11 day:v12 hour:0 minute:0 second:0 timeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "defaultTimeZone")}];
  }

  v124[0] = 0;
  v13 = [objc_msgSend(v117 objectForKey:{@"NSDateTimeOrdering", "uppercaseString"}];
  if (!v13)
  {
    v13 = @"MDYH";
  }

  [(__CFString *)v13 getCharacters:v124 range:0, 4];
  v14 = +[NSCharacterSet letterCharacterSet];
  v118 = +[NSCharacterSet decimalDigitCharacterSet];
  v113 = +[NSCharacterSet alphanumericCharacterSet];
  v15 = [+[NSMutableCharacterSet decimalDigitCharacterSet](NSMutableCharacterSet mutableCopyWithZone:"mutableCopyWithZone:", 0];
  v120 = 0;
  v16 = [NSScanner scannerWithString:a3];
  v17 = [MEMORY[0x1E695DF70] array];
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v121 = v18;
  v122 = v18;
  v115 = v15;
  [v15 addCharactersInString:@"-+"];
  if (dateWithNaturalLanguageString_date_locale__doExcelLittleY == -1)
  {
    if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      v19 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    else
    {
      v19 = 1;
    }

    dateWithNaturalLanguageString_date_locale__doExcelLittleY = v19;
  }

  memset(v123, 0, sizeof(v123));
  [(NSScanner *)v16 setCharactersToBeSkipped:0];
  if (![(NSScanner *)v16 isAtEnd])
  {
    do
    {
      v20 = [(NSScanner *)v16 scanCharactersFromSet:+[NSCharacterSet intoString:"whitespaceCharacterSet"], 0];
      if ([(NSScanner *)v16 isAtEnd])
      {
        break;
      }

      if (![(NSScanner *)v16 scanCharactersFromSet:v118 intoString:&v120]&& (!v20 || ![(NSScanner *)v16 scanCharactersFromSet:v115 intoString:&v120]) && ![(NSScanner *)v16 scanCharactersFromSet:v14 intoString:&v120]&& ![(NSScanner *)v16 scanUpToCharactersFromSet:v113 intoString:&v120])
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"format error" reason:@"internal error" userInfo:0]);
      }

      [v17 addObject:v120];
    }

    while (![(NSScanner *)v16 isAtEnd]);
  }

  v104 = a1;
  v119 = [v17 count];
  if (v119 <= 0)
  {
    v65 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v66 = -1;
    *&v121 = -1;
    v25 = -1;
    goto LABEL_122;
  }

  v105 = a4;
  v106 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v107 = -1;
  v108 = -1;
  v109 = -1;
  v25 = -1;
  v114 = -1;
  v112 = -1;
  v116 = v14;
  do
  {
    v120 = [v17 objectAtIndex:v21];
    v26 = [(__CFString *)v120 characterAtIndex:0];
    if ([(NSCharacterSet *)v14 characterIsMember:v26])
    {
      v27 = v120;
      v28 = buildTokenMapWithDictionary(v117);
      Value = CFDictionaryGetValue(v28, [(__CFString *)v27 lowercaseString]);
      if (Value && Value != 65)
      {
        v123[Value - 65] = 1;
        goto LABEL_31;
      }

      if ([(__CFString *)v120 isEqual:@"GMT"])
      {
        v33 = v21 + 1;
        v34 = [v17 count];
        v14 = v116;
        if (v21 + 1 < v34 && [v115 characterIsMember:{objc_msgSend(objc_msgSend(v17, "objectAtIndex:", v21 + 1), "characterAtIndex:", 0)}])
        {
          v21 += 2;
          v35 = [v17 count];
          v110 = MEMORY[0x1E695DFE8];
          v36 = [@"GMT" stringByAppendingString:{objc_msgSend(v17, "objectAtIndex:", v33)}];
          if (v21 >= v35)
          {
            v22 = [v110 timeZoneWithAbbreviation:v36];
            v21 = v33;
          }

          else
          {
            v22 = [v110 timeZoneWithAbbreviation:{objc_msgSend(v36, "stringByAppendingString:", objc_msgSend(v17, "objectAtIndex:", v21))}];
          }

          goto LABEL_31;
        }

        v44 = MEMORY[0x1E695DFE8];
        v45 = @"GMT";
      }

      else
      {
        v42 = [MEMORY[0x1E695DFE8] abbreviationDictionary];
        v43 = [v42 objectForKey:v120];
        v14 = v116;
        if (!v43)
        {
          goto LABEL_60;
        }

        v44 = MEMORY[0x1E695DFE8];
        v45 = v120;
      }

      v41 = [v44 timeZoneWithAbbreviation:v45];
LABEL_59:
      v22 = v41;
      goto LABEL_60;
    }

    if (![(NSCharacterSet *)v118 characterIsMember:v26])
    {
      if (![v115 characterIsMember:v26])
      {
        [(NSScanner *)v16 scanUpToCharactersFromSet:v113 intoString:0];
        goto LABEL_60;
      }

      v37 = [(__CFString *)v120 integerValue];
      if (v37 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = -v37;
      }

      v39 = -3600;
      if (v37 >= 0)
      {
        v39 = 3600;
      }

      v40 = -60;
      if (v37 >= 0)
      {
        v40 = 60;
      }

      v41 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v38 % 0x64 * v40 + v38 / 0x64 * v39];
      goto LABEL_59;
    }

    v30 = [(__CFString *)v120 integerValue];
    v31 = v30;
    if (v30 >= 32)
    {
      v32 = v30 + 1900;
      if (v30 >= 0x64)
      {
        v32 = v30;
      }

      v114 = v32;
      goto LABEL_60;
    }

    if (v30 >= 24 && v114 != -1)
    {
      v106 = v30;
      goto LABEL_60;
    }

    v111 = v22;
    v46 = v21 + 1;
    if (v21 + 1 < v119 && v30 < 24)
    {
      v120 = [v17 objectAtIndex:v21 + 1];
      v47 = [(__CFString *)v120 characterAtIndex:0];
      if (v47 == 58)
      {
        if (v21 + 2 >= v119)
        {
          goto LABEL_69;
        }

        v120 = [v17 objectAtIndex:?];
        v48 = [(__CFString *)v120 characterAtIndex:0];
        if ([(NSCharacterSet *)v118 characterIsMember:v48])
        {
          v49 = [(__CFString *)v120 integerValue];
          if (v49 > 59)
          {
            goto LABEL_68;
          }

          v46 = v21 + 3;
          if (v21 + 3 >= v119)
          {
            v25 = v31;
            v24 = v49;
            v21 += 2;
            goto LABEL_70;
          }

          v24 = v49;
          v120 = [v17 objectAtIndex:v21 + 3];
          v62 = [(__CFString *)v120 characterAtIndex:0];
          if (v62 == 58)
          {
            v21 += 4;
            if (v21 >= v119)
            {
LABEL_68:
              v25 = v31;
LABEL_69:
              v21 = v46;
LABEL_70:
              v22 = v111;
LABEL_31:
              v14 = v116;
              goto LABEL_60;
            }

            v120 = [v17 objectAtIndex:v21];
            v48 = [(__CFString *)v120 characterAtIndex:0];
            if ([(NSCharacterSet *)v118 characterIsMember:v48])
            {
              v63 = [(__CFString *)v120 integerValue];
              v25 = v31;
              if (v63 > 60)
              {
                goto LABEL_70;
              }

              v23 = v63;
            }

            else
            {
              v25 = v31;
              v21 = v46;
            }
          }

          else
          {
            v48 = v62;
            v25 = v31;
            v21 += 2;
          }

          v31 = -1;
        }

        else
        {
          ++v21;
        }
      }

      else
      {
        v48 = v47;
      }

      v22 = v111;
      if ([(NSCharacterSet *)v116 characterIsMember:v48])
      {
        v57 = v120;
        v58 = buildTokenMapWithDictionary(v117);
        v59 = CFDictionaryGetValue(v58, [(__CFString *)v57 lowercaseString]);
        v60 = v59;
        if (!v59)
        {
          v60 = 65;
        }

        if ((v60 & 0xFFFE) == 0x76)
        {
          v123[(v60 - 1) & 0x37] = 1;
          ++v21;
          v22 = v111;
          v14 = v116;
          if (v25 == -1 && v31 != -1)
          {
            v25 = v31;
            goto LABEL_60;
          }

          goto LABEL_98;
        }

        v22 = v111;
      }

      v14 = v116;
LABEL_98:
      if (v31 != -1)
      {
        if (v112 == -1)
        {
          v112 = v31;
        }

        else if (v109 == -1)
        {
          v109 = v31;
        }

        else if (v108 == -1)
        {
          v108 = v31;
        }

        else
        {
          v61 = v107;
          if (v107 == -1)
          {
            v61 = v31;
          }

          v107 = v61;
        }
      }

      goto LABEL_60;
    }

    v50 = v107;
    v51 = v108;
    if (v107 == -1)
    {
      v52 = v30;
    }

    else
    {
      v52 = v107;
    }

    if (v108 == -1)
    {
      v52 = v107;
      v53 = v30;
    }

    else
    {
      v53 = v108;
    }

    v54 = v109;
    v22 = v111;
    if (v109 == -1)
    {
      v52 = v107;
      v53 = v108;
      v55 = v30;
    }

    else
    {
      v55 = v109;
    }

    v56 = v112;
    if (v112 != -1)
    {
      v50 = v52;
      v51 = v53;
    }

    v107 = v50;
    v108 = v51;
    if (v112 != -1)
    {
      v54 = v55;
    }

    v109 = v54;
    if (v112 == -1)
    {
      v56 = v30;
    }

    v112 = v56;
LABEL_60:
    ++v21;
  }

  while (v21 < v119);
  *&v122 = v108;
  *(&v122 + 1) = v107;
  *&v121 = v112;
  *(&v121 + 1) = v109;
  if (v123[1])
  {
    v64 = 1;
    a4 = v105;
    v65 = v106;
    v66 = v114;
    goto LABEL_145;
  }

  a4 = v105;
  v65 = v106;
  v66 = v114;
  if (v123[2])
  {
    v64 = 2;
    goto LABEL_145;
  }

LABEL_122:
  if (v123[3])
  {
    v64 = 3;
  }

  else if (v123[4])
  {
    v64 = 4;
  }

  else if (v123[5])
  {
    v64 = 5;
  }

  else if (v123[6])
  {
    v64 = 6;
  }

  else if (v123[7])
  {
    v64 = 7;
  }

  else if (v123[8])
  {
    v64 = 8;
  }

  else if (v123[9])
  {
    v64 = 9;
  }

  else if (v123[10])
  {
    v64 = 10;
  }

  else if (v123[11])
  {
    v64 = 11;
  }

  else if (v123[12])
  {
    v64 = 12;
  }

  else
  {
    v64 = 0;
  }

LABEL_145:
  if (v123[15])
  {
    v67 = 1;
    goto LABEL_153;
  }

  if (v123[13])
  {
    v67 = 0;
    goto LABEL_153;
  }

  if (v123[16])
  {
    v67 = 2;
    goto LABEL_153;
  }

  if (v123[14])
  {
    v67 = -1;
LABEL_153:
    if (!a4)
    {
      a4 = +[NSCalendarDate calendarDate];
    }

    v68 = [a4 dateByAddingYears:0 months:0 days:v67 hours:0 minutes:0 seconds:0];
    v64 = [v68 monthOfYear];
    v65 = [v68 dayOfMonth];
    v66 = [v68 yearOfCommonEra];
  }

  if (v123[26])
  {
    if (v123[24])
    {
      if (!a4)
      {
        a4 = +[NSCalendarDate calendarDate];
      }

      v66 = [a4 yearOfCommonEra] + 1;
      v123[24] = 0;
    }

    else if (v123[25])
    {
      if (!a4)
      {
        a4 = +[NSCalendarDate calendarDate];
      }

      v66 = [a4 yearOfCommonEra] - 1;
      v123[25] = 0;
    }

    goto LABEL_171;
  }

  if (!v123[27])
  {
    goto LABEL_171;
  }

  if (v123[24])
  {
    v123[24] = 0;
    v69 = 1;
    if (!a4)
    {
      goto LABEL_164;
    }
  }

  else
  {
    v73 = v123[25];
    v123[25] = 0;
    if (!v73)
    {
      goto LABEL_171;
    }

    v69 = -1;
    if (!a4)
    {
LABEL_164:
      a4 = +[NSCalendarDate calendarDate];
    }
  }

  v70 = [a4 dateByAddingYears:0 months:v69 days:0 hours:0 minutes:0 seconds:0];
  v64 = [v70 monthOfYear];
  if (v66 == -1)
  {
    v66 = [v70 yearOfCommonEra];
  }

LABEL_171:
  if (!v65)
  {
    if (v123[17])
    {
      v72 = 0;
    }

    else if (v123[18])
    {
      v72 = 1;
    }

    else if (v123[19])
    {
      v72 = 2;
    }

    else if (v123[20])
    {
      v72 = 3;
    }

    else if (v123[21])
    {
      v72 = 4;
    }

    else if (v123[22])
    {
      v72 = 5;
    }

    else
    {
      if (!v123[23])
      {
        v71 = 0;
        goto LABEL_205;
      }

      v72 = 6;
    }

    if (v123[25])
    {
      v74 = &v123[25];
      if (!a4)
      {
        a4 = +[NSCalendarDate calendarDate];
      }

      v75 = [a4 dayOfWeek];
      if (v72 >= v75)
      {
        v76 = v72 - v75 - 7;
      }

      else
      {
        v76 = v72 - v75;
      }
    }

    else
    {
      if (!a4)
      {
        a4 = +[NSCalendarDate calendarDate];
      }

      v77 = [a4 dayOfWeek];
      if (v72 - v77 >= 1)
      {
        v76 = v72 - v77;
      }

      else
      {
        v76 = v72 - v77 + 7;
      }

      v74 = &v123[24];
    }

    *v74 = 0;
    if (v76)
    {
      v71 = [a4 dateByAddingYears:0 months:0 days:v76 hours:0 minutes:0 seconds:0];
    }

    else
    {
      v71 = a4;
    }

LABEL_205:
    if (!v123[28])
    {
      goto LABEL_210;
    }

    if (v123[24])
    {
      v123[24] = 0;
      v78 = 7;
      if (a4)
      {
LABEL_209:
        v71 = [a4 dateByAddingYears:0 months:0 days:v78 hours:0 minutes:0 seconds:0];
        goto LABEL_210;
      }
    }

    else
    {
      v103 = v123[25];
      v123[25] = 0;
      if (!v103)
      {
        goto LABEL_210;
      }

      v78 = -7;
      if (a4)
      {
        goto LABEL_209;
      }
    }

    a4 = +[NSCalendarDate calendarDate];
    goto LABEL_209;
  }

  v71 = 0;
LABEL_210:
  for (i = 0; i != 24; ++i)
  {
    if (v123[i + 29])
    {
      v25 = i;
      v24 = 0;
      v23 = 0;
    }
  }

  v80 = v25 == -1;
  v81 = 1;
  if (v25 == -1)
  {
    v81 = 2;
  }

  if (v66 == -1)
  {
    v80 = v81;
  }

  v82 = v64 == 0;
  if (!v65)
  {
    ++v82;
  }

  v83 = v82 + v80;
  if (!(v82 + v80))
  {
    goto LABEL_281;
  }

  v84 = v121 != -1;
  v85 = 1;
  if (v121 != -1)
  {
    v85 = 2;
  }

  if (*(&v121 + 1) != -1)
  {
    v84 = v85;
  }

  if (v122 != -1)
  {
    ++v84;
  }

  if (*(&v122 + 1) != -1)
  {
    ++v84;
  }

  v86 = v25 == -1 && v83 > v84;
  v87 = v86;
  v88 = v83 - v87;
  v89 = v66 == -1 && v88 > v84;
  v90 = v89;
  v91 = v88 - v90;
  v92 = !v64 && v91 > v84;
  v93 = v92;
  if (!v84)
  {
    goto LABEL_281;
  }

  v94 = 0;
  while (2)
  {
    v95 = 0;
    v96 = *(&v121 + v94);
    v97 = v25 != -1 || v87;
    while (2)
    {
      v98 = *(v124 + v95);
      if (v98 <= 0x4C)
      {
        if (v98 == 68)
        {
          if (!v65)
          {
            v65 = *(&v121 + v94);
            if (v96 > 31)
            {
              return 0;
            }

            goto LABEL_265;
          }
        }

        else
        {
          if (v98 != 72)
          {
            return 0;
          }

          if ((v97 & 1) == 0)
          {
            v25 = *(&v121 + v94);
            if (v96 > 23)
            {
              return 0;
            }

            goto LABEL_265;
          }
        }

        goto LABEL_264;
      }

      if (v98 != 77)
      {
        if (v98 != 89)
        {
          return 0;
        }

        if (v66 == -1 && !v90)
        {
          if (v96 > 99)
          {
            v66 = *(&v121 + v94);
          }

          else if (dateWithNaturalLanguageString_date_locale__doExcelLittleY)
          {
            if (v96 >= 30)
            {
              v99 = 1900;
            }

            else
            {
              v99 = 2000;
            }

            v66 = v99 + v96;
          }

          else
          {
            v66 = v96 + 1900;
          }

          goto LABEL_265;
        }

        goto LABEL_264;
      }

      if (v64 != 0 || v93)
      {
LABEL_264:
        v95 += 2;
        if (v95 == 8)
        {
          goto LABEL_265;
        }

        continue;
      }

      break;
    }

    v64 = *(&v121 + v94);
    if (v96 > 12)
    {
      return 0;
    }

LABEL_265:
    if (++v94 != v84)
    {
      continue;
    }

    break;
  }

LABEL_281:
  if (v25 != -1)
  {
    if (v123[53])
    {
      if (v25 == 12)
      {
        v100 = 0;
      }

      else
      {
        v100 = v25;
      }

      if (!v71)
      {
        goto LABEL_301;
      }
    }

    else
    {
      if (v123[54])
      {
        v101 = v25 < 12;
      }

      else
      {
        v101 = 0;
      }

      if (v101)
      {
        v100 = v25 + 12;
      }

      else
      {
        v100 = v25;
      }

      if (!v71)
      {
        goto LABEL_301;
      }
    }

LABEL_297:
    if (!v65 && !v64 && v66 == -1)
    {
      v65 = [v71 dayOfMonth];
      v64 = [v71 monthOfYear];
      v66 = [v71 yearOfCommonEra];
    }

    goto LABEL_301;
  }

  v100 = -1;
  if (v71)
  {
    goto LABEL_297;
  }

LABEL_301:
  if (!v65 && !v64 && v66 == -1 && v100 == -1)
  {
    return 0;
  }

  if (!v65)
  {
    if (!a4)
    {
      a4 = +[NSCalendarDate calendarDate];
    }

    v65 = [a4 dayOfMonth];
  }

  if (!v64)
  {
    if (!a4)
    {
      a4 = +[NSCalendarDate calendarDate];
    }

    v64 = [a4 monthOfYear];
  }

  if (v66 == -1)
  {
    if (!a4)
    {
      a4 = +[NSCalendarDate calendarDate];
    }

    v66 = [a4 yearOfCommonEra];
  }

  if (v100 == -1)
  {
    v102 = 12;
  }

  else
  {
    v102 = v100;
  }

  if (!v22)
  {
    v22 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  a4 = 0;
  if ((v66 - 4001) >= 0xFFFFFFFFFFFFF060 && (v64 - 13) >= 0xFFFFFFFFFFFFFFF4 && (v65 - 32) >= 0xFFFFFFFFFFFFFFE1)
  {
    return [v104 dateWithYear:v66 month:v64 day:v65 hour:v102 minute:v24 second:v23 timeZone:v22];
  }

  return a4;
}

- (id)replacementObjectForPortCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isByref])
  {
    v6.receiver = self;
    v6.super_class = NSCalendarDate;
    return [(NSDate *)&v6 replacementObjectForPortCoder:a3];
  }

  return self;
}

@end