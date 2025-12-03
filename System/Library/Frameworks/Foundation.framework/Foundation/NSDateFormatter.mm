@interface NSDateFormatter
+ (NSString)localizedStringFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle;
+ (id)_componentsFromFormatString:(id)string;
+ (id)_formatStringFromComponents:(id)components;
+ (void)initialize;
+ (void)setDefaultFormatterBehavior:(NSDateFormatterBehavior)defaultFormatterBehavior;
- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)value;
- (BOOL)_usesCharacterDirection;
- (BOOL)doesRelativeDateFormatting;
- (BOOL)generatesCalendarDates;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isLenient;
- (NSArray)eraSymbols;
- (NSArray)longEraSymbols;
- (NSArray)monthSymbols;
- (NSArray)quarterSymbols;
- (NSArray)shortMonthSymbols;
- (NSArray)shortQuarterSymbols;
- (NSArray)shortStandaloneMonthSymbols;
- (NSArray)shortStandaloneQuarterSymbols;
- (NSArray)shortStandaloneWeekdaySymbols;
- (NSArray)shortWeekdaySymbols;
- (NSArray)standaloneMonthSymbols;
- (NSArray)standaloneQuarterSymbols;
- (NSArray)standaloneWeekdaySymbols;
- (NSArray)veryShortMonthSymbols;
- (NSArray)veryShortStandaloneMonthSymbols;
- (NSArray)veryShortStandaloneWeekdaySymbols;
- (NSArray)veryShortWeekdaySymbols;
- (NSArray)weekdaySymbols;
- (NSCalendar)calendar;
- (NSDate)dateFromString:(NSString *)string;
- (NSDate)defaultDate;
- (NSDate)gregorianStartDate;
- (NSDate)twoDigitStartDate;
- (NSDateFormatter)init;
- (NSDateFormatter)initWithCoder:(id)coder;
- (NSDateFormatterStyle)dateStyle;
- (NSDateFormatterStyle)timeStyle;
- (NSFormattingContext)formattingContext;
- (NSString)AMSymbol;
- (NSString)PMSymbol;
- (NSString)dateFormat;
- (NSString)stringFromDate:(NSDate *)date;
- (NSTimeZone)timeZone;
- (id)_attributedStringWithFieldsFromDate:(id)date;
- (id)_dateFormat;
- (id)_getLocaleAlreadyLocked:(BOOL)locked;
- (id)_locale_forOldMethods;
- (id)_nextChangeDateAfterDate:(id)date;
- (id)_timeZone_forOldMethods;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
- (int64_t)_cacheGenerationCount;
- (void)_clearFormatter;
- (void)_regenerateFormatter;
- (void)_regenerateFormatterIfAbsent;
- (void)_reset;
- (void)_setDateFormat:(id)format;
- (void)_setDateFormat:(id)format alreadyLocked:(BOOL)locked;
- (void)_setIsLenient:(BOOL)lenient;
- (void)_setUsesCharacterDirection:(BOOL)direction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)receiveObservedValue:(id)value;
- (void)setAMSymbol:(NSString *)AMSymbol;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setDateStyle:(NSDateFormatterStyle)dateStyle;
- (void)setDefaultDate:(NSDate *)defaultDate;
- (void)setDoesRelativeDateFormatting:(BOOL)doesRelativeDateFormatting;
- (void)setEraSymbols:(NSArray *)eraSymbols;
- (void)setFormattingContext:(NSFormattingContext)formattingContext;
- (void)setGeneratesCalendarDates:(BOOL)generatesCalendarDates;
- (void)setGregorianStartDate:(NSDate *)gregorianStartDate;
- (void)setLenient:(BOOL)lenient;
- (void)setLocale:(NSLocale *)locale;
- (void)setLocalizedDateFormatFromTemplate:(NSString *)dateFormatTemplate;
- (void)setLongEraSymbols:(NSArray *)longEraSymbols;
- (void)setMonthSymbols:(NSArray *)monthSymbols;
- (void)setPMSymbol:(NSString *)PMSymbol;
- (void)setQuarterSymbols:(NSArray *)quarterSymbols;
- (void)setShortMonthSymbols:(NSArray *)shortMonthSymbols;
- (void)setShortQuarterSymbols:(NSArray *)shortQuarterSymbols;
- (void)setShortStandaloneMonthSymbols:(NSArray *)shortStandaloneMonthSymbols;
- (void)setShortStandaloneQuarterSymbols:(NSArray *)shortStandaloneQuarterSymbols;
- (void)setShortStandaloneWeekdaySymbols:(NSArray *)shortStandaloneWeekdaySymbols;
- (void)setShortWeekdaySymbols:(NSArray *)shortWeekdaySymbols;
- (void)setStandaloneMonthSymbols:(NSArray *)standaloneMonthSymbols;
- (void)setStandaloneQuarterSymbols:(NSArray *)standaloneQuarterSymbols;
- (void)setStandaloneWeekdaySymbols:(NSArray *)standaloneWeekdaySymbols;
- (void)setTimeStyle:(NSDateFormatterStyle)timeStyle;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)setTwoDigitStartDate:(NSDate *)twoDigitStartDate;
- (void)setVeryShortMonthSymbols:(NSArray *)veryShortMonthSymbols;
- (void)setVeryShortStandaloneMonthSymbols:(NSArray *)veryShortStandaloneMonthSymbols;
- (void)setVeryShortStandaloneWeekdaySymbols:(NSArray *)veryShortStandaloneWeekdaySymbols;
- (void)setVeryShortWeekdaySymbols:(NSArray *)veryShortWeekdaySymbols;
- (void)setWeekdaySymbols:(NSArray *)weekdaySymbols;
@end

@implementation NSDateFormatter

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  [(NSDateFormatter *)self _clearFormatter];
  v3.receiver = self;
  v3.super_class = NSDateFormatter;
  [(NSDateFormatter *)&v3 dealloc];
}

- (void)_regenerateFormatter
{
  [(NSDateFormatter *)self _clearFormatter];
  self->_counter = _localeNotificationCount();
  currentLocale = [(NSMutableDictionary *)self->_attributes objectForKey:@"locale"];
  integerValue = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateStyle"];
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"timeStyle"];
  v6 = MEMORY[0x1E695E4A8];
  if (!currentLocale)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  v7 = *v6;
  if (integerValue)
  {
    integerValue = [integerValue integerValue];
  }

  if (v5)
  {
    integerValue2 = [v5 integerValue];
  }

  else
  {
    integerValue2 = kCFDateFormatterNoStyle;
  }

  v9 = CFDateFormatterCreate(v7, currentLocale, integerValue, integerValue2);
  self->_formatter = v9;
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateFormat"];
    if (v10)
    {
      CFDateFormatterSetFormat(self->_formatter, v10);
    }

    v11 = [(NSMutableDictionary *)self->_attributes objectForKey:@"timeZone"];
    if (v11)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5D8], v11);
    }

    v12 = [(NSMutableDictionary *)self->_attributes objectForKey:@"calendar"];
    if (v12)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E540], v12);
    }

    v13 = [(NSMutableDictionary *)self->_attributes objectForKey:@"lenient"];
    if (v13)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E568], v13);
    }

    v14 = [(NSMutableDictionary *)self->_attributes objectForKey:@"twoDigitStartDate"];
    if (v14)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5E0], v14);
    }

    v15 = [(NSMutableDictionary *)self->_attributes objectForKey:@"defaultDate"];
    if (v15)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E548], v15);
    }

    v16 = [(NSMutableDictionary *)self->_attributes objectForKey:@"eraSymbols"];
    if (v16)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E558], v16);
    }

    v17 = [(NSMutableDictionary *)self->_attributes objectForKey:@"monthSymbols"];
    if (v17)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E578], v17);
    }

    v18 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortMonthSymbols"];
    if (v18)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E590], v18);
    }

    v19 = [(NSMutableDictionary *)self->_attributes objectForKey:@"weekdaySymbols"];
    if (v19)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E610], v19);
    }

    v20 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortWeekdaySymbols"];
    if (v20)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5B8], v20);
    }

    v21 = [(NSMutableDictionary *)self->_attributes objectForKey:@"AMSymbol"];
    if (v21)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E538], v21);
    }

    v22 = [(NSMutableDictionary *)self->_attributes objectForKey:@"PMSymbol"];
    if (v22)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E580], v22);
    }

    v23 = [(NSMutableDictionary *)self->_attributes objectForKey:@"longEraSymbols"];
    if (v23)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E570], v23);
    }

    v24 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortMonthSymbols"];
    if (v24)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5F0], v24);
    }

    v25 = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneMonthSymbols"];
    if (v25)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5C0], v25);
    }

    v26 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneMonthSymbols"];
    if (v26)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5A0], v26);
    }

    v27 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortStandaloneMonthSymbols"];
    if (v27)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5F8], v27);
    }

    v28 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortWeekdaySymbols"];
    if (v28)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E608], v28);
    }

    v29 = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneWeekdaySymbols"];
    if (v29)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5D0], v29);
    }

    v30 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneWeekdaySymbols"];
    if (v30)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5B0], v30);
    }

    v31 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortStandaloneWeekdaySymbols"];
    if (v31)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E600], v31);
    }

    v32 = [(NSMutableDictionary *)self->_attributes objectForKey:@"quarterSymbols"];
    if (v32)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E588], v32);
    }

    v33 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortQuarterSymbols"];
    if (v33)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E598], v33);
    }

    v34 = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneQuarterSymbols"];
    if (v34)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5C8], v34);
    }

    v35 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneQuarterSymbols"];
    if (v35)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5A8], v35);
    }

    v36 = [(NSMutableDictionary *)self->_attributes objectForKey:@"gregorianStartDate"];
    if (v36)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E560], v36);
    }

    v37 = [(NSMutableDictionary *)self->_attributes objectForKey:@"doesRelativeDateFormatting"];
    if (v37)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E550], v37);
    }

    v38 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesCharacterDirection"];
    if (v38)
    {
      CFDateFormatterSetProperty(self->_formatter, *MEMORY[0x1E695E5E8], v38);
    }

    v39 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formattingContext"];
    if (v39)
    {
      v40 = v39;
      if ([v39 intValue] != -1)
      {
        formatter = self->_formatter;

        CFDateFormatterSetProperty(formatter, @"kCFDateFormatterFormattingContextKey", v40);
      }
    }
  }
}

- (void)_clearFormatter
{
  formatter = self->_formatter;
  if (formatter)
  {
    CFRelease(formatter);
  }

  self->_formatter = 0;
  ++self->_cacheGeneration;
}

- (NSDateFormatter)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSDateFormatter;
  v2 = [(NSDateFormatter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity:20];
    v3->_attributes = v4;
    -[NSMutableDictionary setValue:forKey:](v4, "setValue:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() defaultFormatterBehavior]), @"formatterBehavior");
  }

  return v3;
}

- (void)_regenerateFormatterIfAbsent
{
  if (!self->_formatter)
  {
    [(NSDateFormatter *)self _regenerateFormatter];
  }
}

+ (void)initialize
{
  if (!__NSDateFormatterDefaultBehavior)
  {
    [self setDefaultFormatterBehavior:0];
  }
}

- (BOOL)generatesCalendarDates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"generatesCalendarDates"];
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (NSArray)shortStandaloneWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneWeekdaySymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5B0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSString)dateFormat
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  Format = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateFormat"];
  if (!Format)
  {
    formatter = self->_formatter;
    if (formatter)
    {
      Format = CFDateFormatterGetFormat(formatter);
    }

    else
    {
      Format = 0;
    }
  }

  v5 = Format;
  os_unfair_lock_unlock(&self->_lock);

  return Format;
}

- (NSString)AMSymbol
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"AMSymbol"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E538];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSString)PMSymbol
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"PMSymbol"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E580];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSFormattingContext)formattingContext
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"formattingContext"];
  if (!formatter)
  {
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSDateFormatter *)self _clearFormatter];
    }

    formatter = self->_formatter;
    if (formatter || ([(NSDateFormatter *)self _regenerateFormatter], (formatter = self->_formatter) != 0))
    {
      formatter = CFDateFormatterCopyProperty(formatter, @"kCFDateFormatterFormattingContextKey");
    }
  }

  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);
  v5 = v4;
  intValue = [(__CFDateFormatter *)v5 intValue];
  if (!v5)
  {
    if (self->_formatter)
    {
      intValue = [CFDateFormatterCopyProperty(self->_formatter @"kCFDateFormatterFormattingContextKey")];
    }
  }

  if (intValue > 257)
  {
    switch(intValue)
    {
      case 258:
        return 4;
      case 259:
        return 3;
      case 260:
        return 2;
      default:
        return 0;
    }
  }

  else
  {
    if (intValue != -1)
    {
      if (intValue == 257)
      {
        return 5;
      }

      return 0;
    }

    return 1;
  }
}

+ (void)setDefaultFormatterBehavior:(NSDateFormatterBehavior)defaultFormatterBehavior
{
  v3 = NSDateFormatterBehavior10_4;
  if (defaultFormatterBehavior)
  {
    v3 = defaultFormatterBehavior;
  }

  __NSDateFormatterDefaultBehavior = v3;
}

- (void)_reset
{
  os_unfair_lock_lock(&self->_lock);

  v3 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity:20];
  self->_attributes = v3;
  -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() defaultFormatterBehavior]), @"formatterBehavior");
  [(NSDateFormatter *)self _clearFormatter];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5[1] setDictionary:self->_attributes];
  os_unfair_lock_unlock(&self->_lock);
  [v5 _clearFormatter];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDateFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:?];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateFormatters cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  os_unfair_lock_lock(&self->_lock);
  [coder encodeObject:self->_attributes forKey:@"NS.attributes"];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateFormatter)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSDateFormatter;
  v4 = [(NSFormatter *)&v11 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    if (([coder allowsKeyedCoding] & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateFormatters cannot be decoded by non-keyed archivers" userInfo:0]);
    }

    v6 = [coder decodeObjectForKey:@"NS.attributes"];
    v5->_attributes = v6;
    v7 = [-[NSMutableDictionary objectForKey:](v6 objectForKey:{@"formatterBehavior", "integerValue"}];
    if (v7 != 1040)
    {
      attributes = v5->_attributes;
      if (v7)
      {
        defaultFormatterBehavior = 1040;
      }

      else
      {
        defaultFormatterBehavior = [objc_opt_class() defaultFormatterBehavior];
      }

      [(NSMutableDictionary *)attributes setValue:[NSNumber forKey:"numberWithInteger:" numberWithInteger:defaultFormatterBehavior], @"formatterBehavior"];
    }

    [(NSDateFormatter *)v5 _clearFormatter];
  }

  return v5;
}

- (id)_timeZone_forOldMethods
{
  v3 = objc_opt_class();
  if (([(NSDateFormatter *)self isMemberOfClass:v3]& 1) != 0 || (v4 = objc_opt_class(), MethodImplementation = class_getMethodImplementation(v4, sel_timeZone), MethodImplementation == class_getMethodImplementation(v3, sel_timeZone)))
  {
    v7 = MEMORY[0x1E695DFE8];

    return [v7 localTimeZone];
  }

  else
  {

    return [(NSDateFormatter *)self timeZone];
  }
}

- (id)_locale_forOldMethods
{
  if (_CFExecutableLinkedOnOrAfter())
  {
    v2 = MEMORY[0x1E695DF58];

    return [v2 currentLocale];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

    return [standardUserDefaults dictionaryRepresentation];
  }
}

- (id)stringForObjectValue:(id)value
{
  if (!value || !_NSIsNSDate())
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  formatter = self->_formatter;
  if (formatter && (StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x1E695E4A8], formatter, value)) != 0)
  {
    v7 = StringWithDate;
  }

  else
  {
    v7 = 0;
  }

  if ([-[NSMutableDictionary objectForKey:](self->_attributes objectForKey:{@"formattingContext", "intValue"}] == -1)
  {
    v8 = objc_alloc_init(_NSStringProxyForContext);
    [(_NSStringProxyForContext *)v8 setString:v7];
    [(_NSStringProxyForContext *)v8 setItem:value];
    v9 = [objc_allocWithZone(objc_opt_class()) init];
    [v9[1] setDictionary:self->_attributes];
    [(_NSStringProxyForContext *)v8 _retainFormatter:v9];

    v7 = v8;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  if (!getObjectValue_forString_errorDescription__baseIMP)
  {
    v9 = objc_lookUpClass("NSDateFormatter");
    getObjectValue_forString_errorDescription__baseIMP = class_getMethodImplementation(v9, sel_getObjectValue_forString_range_error_);
  }

  v10 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v10, sel_getObjectValue_forString_range_error_);
  if (description)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (MethodImplementation == getObjectValue_forString_errorDescription__baseIMP)
  {
    ObjectValue = getObjectValue(self, value, string, 0, 1, v12);
  }

  else
  {
    ObjectValue = [(NSDateFormatter *)self getObjectValue:value forString:string range:0 error:v12];
  }

  v14 = ObjectValue;
  if (description)
  {
    *description = [v16[0] localizedDescription];
  }

  return v14;
}

- (NSString)stringFromDate:(NSDate *)date
{
  if (date)
  {
    return [(NSDateFormatter *)self stringForObjectValue:?];
  }

  else
  {
    return 0;
  }
}

- (NSDate)dateFromString:(NSString *)string
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!string)
  {
    return 0;
  }

  v4[0] = 0;
  if ([(NSDateFormatter *)self getObjectValue:v4 forString:string errorDescription:0])
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

+ (NSString)localizedStringFromDate:(NSDate *)date dateStyle:(NSDateFormatterStyle)dstyle timeStyle:(NSDateFormatterStyle)tstyle
{
  if (!date)
  {
    return 0;
  }

  v8 = objc_opt_new();
  [v8 setFormatterBehavior:1040];
  [v8 setDateStyle:dstyle];
  [v8 setTimeStyle:tstyle];
  v9 = [v8 stringForObjectValue:date];

  return v9;
}

- (void)setLocalizedDateFormatFromTemplate:(NSString *)dateFormatTemplate
{
  os_unfair_lock_lock(&self->_lock);
  [(NSDateFormatter *)self _setDateFormat:_dateFormatFromTemplate(dateFormatTemplate alreadyLocked:0, [(NSDateFormatter *)self _getLocaleAlreadyLocked:1]), 1];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateFormatterStyle)dateStyle
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateStyle"];
  if (v3)
  {
    DateStyle = [v3 integerValue];
  }

  else
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v6 = NSDateFormatterNoStyle;
      goto LABEL_8;
    }

    DateStyle = CFDateFormatterGetDateStyle(formatter);
  }

  v6 = DateStyle;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)setDateStyle:(NSDateFormatterStyle)dateStyle
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateStyle"];
  v6 = [NSNumber numberWithInteger:dateStyle];
  if (!v5 || ![v5 isEqualToNumber:v6] || -[NSMutableDictionary objectForKey:](self->_attributes, "objectForKey:", @"dateFormat"))
  {
    [(NSMutableDictionary *)self->_attributes setValue:v6 forKey:@"dateStyle"];
    [(NSMutableDictionary *)self->_attributes setValue:0 forKey:@"dateFormat"];
    [(NSDateFormatter *)self _clearFormatter];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateFormatterStyle)timeStyle
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"timeStyle"];
  if (v3)
  {
    TimeStyle = [v3 integerValue];
  }

  else
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      v6 = NSDateFormatterNoStyle;
      goto LABEL_8;
    }

    TimeStyle = CFDateFormatterGetTimeStyle(formatter);
  }

  v6 = TimeStyle;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)setTimeStyle:(NSDateFormatterStyle)timeStyle
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"timeStyle"];
  v6 = [NSNumber numberWithInteger:timeStyle];
  if (!v5 || ![v5 isEqualToNumber:v6] || -[NSMutableDictionary objectForKey:](self->_attributes, "objectForKey:", @"dateFormat"))
  {
    [(NSMutableDictionary *)self->_attributes setValue:v6 forKey:@"timeStyle"];
    [(NSMutableDictionary *)self->_attributes setValue:0 forKey:@"dateFormat"];
    [(NSDateFormatter *)self _clearFormatter];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_getLocaleAlreadyLocked:(BOOL)locked
{
  if (!locked)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  Locale = [(NSMutableDictionary *)self->_attributes objectForKey:@"locale"];
  if (!Locale)
  {
    formatter = self->_formatter;
    if (formatter)
    {
      Locale = CFDateFormatterGetLocale(formatter);
    }

    else
    {
      Locale = 0;
    }
  }

  v7 = Locale;
  if (!locked)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return Locale;
}

- (void)setLocale:(NSLocale *)locale
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"locale"];
  if (locale && !v5 || ([v5 isEqual:locale] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_attributes setValue:[(NSLocale *)locale copyWithZone:0] forKey:@"locale"];
    [(NSDateFormatter *)self _clearFormatter];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGeneratesCalendarDates:(BOOL)generatesCalendarDates
{
  v3 = generatesCalendarDates;
  os_unfair_lock_lock(&self->_lock);
  ++self->_cacheGeneration;
  v5 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(NSMutableDictionary *)self->_attributes setValue:*v5 forKey:@"generatesCalendarDates"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setDateFormat:(id)format alreadyLocked:(BOOL)locked
{
  if (!locked)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  v7 = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateFormat"];
  if (!format || v7) && ([v7 isEqualToString:format])
  {
LABEL_11:
    if (locked)
    {
      return;
    }

    goto LABEL_14;
  }

  ++self->_cacheGeneration;
  v8 = [format copyWithZone:0];
  [(NSMutableDictionary *)self->_attributes setValue:v8 forKey:@"dateFormat"];
  if (!v8 || (formatter = self->_formatter) == 0)
  {
    if (!v8)
    {
      [(NSDateFormatter *)self _clearFormatter];
      if (locked)
      {
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  CFDateFormatterSetFormat(formatter, v8);
  if (locked)
  {
    return;
  }

LABEL_14:

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_dateFormat
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"dateFormat"];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_setDateFormat:(id)format
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_cacheGeneration;
  v5 = [format copyWithZone:0];
  [(NSMutableDictionary *)self->_attributes setValue:v5 forKey:@"dateFormat"];
  formatter = self->_formatter;
  if (formatter)
  {
    CFDateFormatterSetFormat(formatter, v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setIsLenient:(BOOL)lenient
{
  lenientCopy = lenient;
  os_unfair_lock_lock(&self->_lock);
  ++self->_cacheGeneration;
  v5 = MEMORY[0x1E695E4D0];
  if (!lenientCopy)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *v5;
  [(NSMutableDictionary *)self->_attributes setValue:*v5 forKey:@"lenient"];
  formatter = self->_formatter;
  if (formatter)
  {
    CFDateFormatterSetProperty(formatter, *MEMORY[0x1E695E568], v6);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSTimeZone)timeZone
{
  [MEMORY[0x1E695DFE8] localTimeZone];
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"timeZone"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5D8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"timeZone"];
  if ((timeZone != 0) == (v5 == 0) || ([v5 isEqual:timeZone] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5D8];
    ++self->_cacheGeneration;
    v7 = [(NSTimeZone *)timeZone copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"timeZone"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSCalendar)calendar
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"calendar"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E540];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setCalendar:(NSCalendar *)calendar
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"calendar"];
  if ((calendar != 0) == (v5 == 0) || ([v5 isEqual:calendar] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E540];
    ++self->_cacheGeneration;
    v7 = [(NSCalendar *)calendar copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"calendar"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isLenient
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"lenient"];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      bOOLValue = 0;
      goto LABEL_7;
    }

    v3 = CFDateFormatterCopyProperty(formatter, *MEMORY[0x1E695E568]);
  }

  bOOLValue = [v3 BOOLValue];
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (void)setLenient:(BOOL)lenient
{
  v4 = MEMORY[0x1E695E4D0];
  if (!lenient)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_attributes objectForKey:@"lenient"];
  if ((v5 != 0) == (v6 == 0) || ([v6 isEqual:v5] & 1) == 0)
  {
    v7 = *MEMORY[0x1E695E568];
    ++self->_cacheGeneration;
    v8 = [v5 copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v8 forKey:@"lenient"];
    if (v7)
    {
      formatter = self->_formatter;
      if (v8)
      {
        v10 = formatter == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (!v8)
        {
          [(NSDateFormatter *)self _clearFormatter];
        }
      }

      else
      {
        CFDateFormatterSetProperty(formatter, v7, v8);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)twoDigitStartDate
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"twoDigitStartDate"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5E0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setTwoDigitStartDate:(NSDate *)twoDigitStartDate
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"twoDigitStartDate"];
  if ((twoDigitStartDate != 0) == (v5 == 0) || ([v5 isEqual:twoDigitStartDate] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5E0];
    ++self->_cacheGeneration;
    v7 = [(NSDate *)twoDigitStartDate copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"twoDigitStartDate"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)defaultDate
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"defaultDate"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E548];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setDefaultDate:(NSDate *)defaultDate
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"defaultDate"];
  if ((defaultDate != 0) == (v5 == 0) || ([v5 isEqual:defaultDate] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E548];
    ++self->_cacheGeneration;
    v7 = [(NSDate *)defaultDate copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"defaultDate"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)eraSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"eraSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E558];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setEraSymbols:(NSArray *)eraSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"eraSymbols"];
  if ((eraSymbols != 0) == (v5 == 0) || ([v5 isEqual:eraSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E558];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)eraSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"eraSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)monthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"monthSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E578];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setMonthSymbols:(NSArray *)monthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"monthSymbols"];
  if ((monthSymbols != 0) == (v5 == 0) || ([v5 isEqual:monthSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E578];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)monthSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"monthSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)shortMonthSymbols
{
  if (!self->_attributes && _CFAppVersionCheckLessThan())
  {
    [(NSDateFormatter *)self init];
    _NSDateFormatterNoInit();
  }

  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortMonthSymbols"];
  if (!formatter)
  {
    v6 = MEMORY[0x1E695E590];
    if (_localeNotificationCount() != self->_counter)
    {
      [(NSDateFormatter *)self _clearFormatter];
    }

    v7 = *v6;
    if (self->_formatter)
    {
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [(NSDateFormatter *)self _regenerateFormatter];
      if (v7)
      {
LABEL_12:
        formatter = self->_formatter;
        if (formatter)
        {
          formatter = CFDateFormatterCopyProperty(formatter, v7);
        }

        goto LABEL_5;
      }
    }

    formatter = 0;
  }

LABEL_5:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setShortMonthSymbols:(NSArray *)shortMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortMonthSymbols"];
  if ((shortMonthSymbols != 0) == (v5 == 0) || ([v5 isEqual:shortMonthSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E590];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)shortMonthSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"shortMonthSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)weekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"weekdaySymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E610];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setWeekdaySymbols:(NSArray *)weekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"weekdaySymbols"];
  if ((weekdaySymbols != 0) == (v5 == 0) || ([v5 isEqual:weekdaySymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E610];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)weekdaySymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"weekdaySymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)shortWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortWeekdaySymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5B8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setShortWeekdaySymbols:(NSArray *)shortWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortWeekdaySymbols"];
  if ((shortWeekdaySymbols != 0) == (v5 == 0) || ([v5 isEqual:shortWeekdaySymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5B8];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)shortWeekdaySymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"shortWeekdaySymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAMSymbol:(NSString *)AMSymbol
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"AMSymbol"];
  if ((AMSymbol != 0) == (v5 == 0) || ([v5 isEqual:AMSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E538];
    ++self->_cacheGeneration;
    v7 = [(NSString *)AMSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"AMSymbol"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPMSymbol:(NSString *)PMSymbol
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"PMSymbol"];
  if ((PMSymbol != 0) == (v5 == 0) || ([v5 isEqual:PMSymbol] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E580];
    ++self->_cacheGeneration;
    v7 = [(NSString *)PMSymbol copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"PMSymbol"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)longEraSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"longEraSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E570];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setLongEraSymbols:(NSArray *)longEraSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"longEraSymbols"];
  if ((longEraSymbols != 0) == (v5 == 0) || ([v5 isEqual:longEraSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E570];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)longEraSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"longEraSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)veryShortMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortMonthSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5F0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setVeryShortMonthSymbols:(NSArray *)veryShortMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortMonthSymbols"];
  if ((veryShortMonthSymbols != 0) == (v5 == 0) || ([v5 isEqual:veryShortMonthSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5F0];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)veryShortMonthSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"veryShortMonthSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)standaloneMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneMonthSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5C0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setStandaloneMonthSymbols:(NSArray *)standaloneMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneMonthSymbols"];
  if ((standaloneMonthSymbols != 0) == (v5 == 0) || ([v5 isEqual:standaloneMonthSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5C0];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)standaloneMonthSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"standaloneMonthSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)shortStandaloneMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneMonthSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5A0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setShortStandaloneMonthSymbols:(NSArray *)shortStandaloneMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneMonthSymbols"];
  if ((shortStandaloneMonthSymbols != 0) == (v5 == 0) || ([v5 isEqual:shortStandaloneMonthSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5A0];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)shortStandaloneMonthSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"shortStandaloneMonthSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)veryShortStandaloneMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortStandaloneMonthSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5F8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setVeryShortStandaloneMonthSymbols:(NSArray *)veryShortStandaloneMonthSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortStandaloneMonthSymbols"];
  if ((veryShortStandaloneMonthSymbols != 0) == (v5 == 0) || ([v5 isEqual:veryShortStandaloneMonthSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5F8];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)veryShortStandaloneMonthSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"veryShortStandaloneMonthSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)veryShortWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortWeekdaySymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E608];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setVeryShortWeekdaySymbols:(NSArray *)veryShortWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortWeekdaySymbols"];
  if ((veryShortWeekdaySymbols != 0) == (v5 == 0) || ([v5 isEqual:veryShortWeekdaySymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E608];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)veryShortWeekdaySymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"veryShortWeekdaySymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)standaloneWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneWeekdaySymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5D0];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setStandaloneWeekdaySymbols:(NSArray *)standaloneWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneWeekdaySymbols"];
  if ((standaloneWeekdaySymbols != 0) == (v5 == 0) || ([v5 isEqual:standaloneWeekdaySymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5D0];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)standaloneWeekdaySymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"standaloneWeekdaySymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setShortStandaloneWeekdaySymbols:(NSArray *)shortStandaloneWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneWeekdaySymbols"];
  if ((shortStandaloneWeekdaySymbols != 0) == (v5 == 0) || ([v5 isEqual:shortStandaloneWeekdaySymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5B0];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)shortStandaloneWeekdaySymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"shortStandaloneWeekdaySymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)veryShortStandaloneWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortStandaloneWeekdaySymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E600];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setVeryShortStandaloneWeekdaySymbols:(NSArray *)veryShortStandaloneWeekdaySymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"veryShortStandaloneWeekdaySymbols"];
  if ((veryShortStandaloneWeekdaySymbols != 0) == (v5 == 0) || ([v5 isEqual:veryShortStandaloneWeekdaySymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E600];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)veryShortStandaloneWeekdaySymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"veryShortStandaloneWeekdaySymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)quarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"quarterSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E588];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setQuarterSymbols:(NSArray *)quarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"quarterSymbols"];
  if ((quarterSymbols != 0) == (v5 == 0) || ([v5 isEqual:quarterSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E588];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)quarterSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"quarterSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)shortQuarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortQuarterSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E598];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setShortQuarterSymbols:(NSArray *)shortQuarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortQuarterSymbols"];
  if ((shortQuarterSymbols != 0) == (v5 == 0) || ([v5 isEqual:shortQuarterSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E598];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)shortQuarterSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"shortQuarterSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)standaloneQuarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneQuarterSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5C8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setStandaloneQuarterSymbols:(NSArray *)standaloneQuarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"standaloneQuarterSymbols"];
  if ((standaloneQuarterSymbols != 0) == (v5 == 0) || ([v5 isEqual:standaloneQuarterSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5C8];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)standaloneQuarterSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"standaloneQuarterSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)shortStandaloneQuarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneQuarterSymbols"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E5A8];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setShortStandaloneQuarterSymbols:(NSArray *)shortStandaloneQuarterSymbols
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"shortStandaloneQuarterSymbols"];
  if ((shortStandaloneQuarterSymbols != 0) == (v5 == 0) || ([v5 isEqual:shortStandaloneQuarterSymbols] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E5A8];
    ++self->_cacheGeneration;
    v7 = [(NSArray *)shortStandaloneQuarterSymbols copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"shortStandaloneQuarterSymbols"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)gregorianStartDate
{
  os_unfair_lock_lock(&self->_lock);
  formatter = [(NSMutableDictionary *)self->_attributes objectForKey:@"gregorianStartDate"];
  if (formatter)
  {
    goto LABEL_2;
  }

  v6 = MEMORY[0x1E695E560];
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  v7 = *v6;
  if (self->_formatter)
  {
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_12:
    formatter = 0;
    goto LABEL_2;
  }

  [(NSDateFormatter *)self _regenerateFormatter];
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_9:
  formatter = self->_formatter;
  if (formatter)
  {
    formatter = CFDateFormatterCopyProperty(formatter, v7);
  }

LABEL_2:
  v4 = formatter;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setGregorianStartDate:(NSDate *)gregorianStartDate
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_attributes objectForKey:@"gregorianStartDate"];
  if ((gregorianStartDate != 0) == (v5 == 0) || ([v5 isEqual:gregorianStartDate] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695E560];
    ++self->_cacheGeneration;
    v7 = [(NSDate *)gregorianStartDate copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v7 forKey:@"gregorianStartDate"];
    if (v6)
    {
      if (v7 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v6, v7);
      }

      else if (!v7)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFormattingContext:(NSFormattingContext)formattingContext
{
  v4 = @"kCFDateFormatterFormattingContextKey";
  if (formattingContext > NSFormattingContextStandalone)
  {
    if (formattingContext == NSFormattingContextMiddleOfSentence)
    {
      v10 = 257;
    }

    else
    {
      v10 = 0;
    }

    if (formattingContext == NSFormattingContextBeginningOfSentence)
    {
      v11 = 258;
    }

    else
    {
      v11 = v10;
    }

    v7 = 0;
    v8 = @"kCFDateFormatterFormattingContextKey";
    if (formattingContext == NSFormattingContextListItem)
    {
      v9 = 259;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    if (formattingContext == NSFormattingContextStandalone)
    {
      v4 = @"kCFDateFormatterFormattingContextKey";
      v5 = 260;
    }

    else
    {
      v5 = 0;
    }

    if (formattingContext == NSFormattingContextDynamic)
    {
      v4 = 0;
      v6 = -1;
    }

    else
    {
      v6 = v5;
    }

    if (formattingContext)
    {
      v7 = formattingContext == NSFormattingContextDynamic;
    }

    else
    {
      v7 = 0;
    }

    if (formattingContext)
    {
      v8 = v4;
    }

    else
    {
      v8 = @"kCFDateFormatterFormattingContextKey";
    }

    if (formattingContext)
    {
      v9 = v6;
    }

    else
    {
      v9 = 256;
    }
  }

  v12 = [NSNumber numberWithInt:v9];
  os_unfair_lock_lock(&self->_lock);
  v13 = [(NSMutableDictionary *)self->_attributes objectForKey:@"formattingContext"];
  if ((v12 != 0) == (v13 == 0) || ([v13 isEqual:v12] & 1) == 0)
  {
    ++self->_cacheGeneration;
    v14 = [(NSNumber *)v12 copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v14 forKey:@"formattingContext"];
    if (!v7)
    {
      if (v14 && (formatter = self->_formatter) != 0)
      {
        CFDateFormatterSetProperty(formatter, v8, v14);
      }

      else if (!v14)
      {
        [(NSDateFormatter *)self _clearFormatter];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)doesRelativeDateFormatting
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"doesRelativeDateFormatting"];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      bOOLValue = 0;
      goto LABEL_7;
    }

    v3 = CFDateFormatterCopyProperty(formatter, *MEMORY[0x1E695E550]);
  }

  bOOLValue = [v3 BOOLValue];
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (void)setDoesRelativeDateFormatting:(BOOL)doesRelativeDateFormatting
{
  v4 = MEMORY[0x1E695E4D0];
  if (!doesRelativeDateFormatting)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_attributes objectForKey:@"doesRelativeDateFormatting"];
  if ((v5 != 0) == (v6 == 0) || ([v6 isEqual:v5] & 1) == 0)
  {
    v7 = *MEMORY[0x1E695E550];
    ++self->_cacheGeneration;
    v8 = [v5 copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v8 forKey:@"doesRelativeDateFormatting"];
    if (v7)
    {
      formatter = self->_formatter;
      if (v8)
      {
        v10 = formatter == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (!v8)
        {
          [(NSDateFormatter *)self _clearFormatter];
        }
      }

      else
      {
        CFDateFormatterSetProperty(formatter, v7, v8);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_usesCharacterDirection
{
  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  v3 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesCharacterDirection"];
  if (!v3)
  {
    formatter = self->_formatter;
    if (!formatter)
    {
      bOOLValue = 0;
      goto LABEL_7;
    }

    v3 = CFDateFormatterCopyProperty(formatter, *MEMORY[0x1E695E5E8]);
  }

  bOOLValue = [v3 BOOLValue];
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return bOOLValue;
}

- (void)_setUsesCharacterDirection:(BOOL)direction
{
  v4 = MEMORY[0x1E695E4D0];
  if (!direction)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_attributes objectForKey:@"usesCharacterDirection"];
  if ((v5 != 0) == (v6 == 0) || ([v6 isEqual:v5] & 1) == 0)
  {
    v7 = *MEMORY[0x1E695E5E8];
    ++self->_cacheGeneration;
    v8 = [v5 copyWithZone:0];
    [(NSMutableDictionary *)self->_attributes setValue:v8 forKey:@"usesCharacterDirection"];
    if (v7)
    {
      formatter = self->_formatter;
      if (v8)
      {
        v10 = formatter == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (!v8)
        {
          [(NSDateFormatter *)self _clearFormatter];
        }
      }

      else
      {
        CFDateFormatterSetProperty(formatter, v7, v8);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)_cacheGenerationCount
{
  if (![(NSDateFormatter *)self _tracksCacheGenerationCount])
  {
    return -1;
  }

  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  return self->_cacheGeneration;
}

- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  if (value && (_NSIsNSDate() & 1) != 0)
  {
    v5 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v5, sel_attributedStringForObjectValue_withDefaultAttributes_);
    v7 = objc_opt_class();
    return MethodImplementation != class_getMethodImplementation(v7, sel_attributedStringForObjectValue_withDefaultAttributes_);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSDateFormatter;
    return [(NSFormatter *)&v9 _mayDecorateAttributedStringForObjectValue:value];
  }
}

- (id)_attributedStringWithFieldsFromDate:(id)date
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (!date || !_NSIsNSDate())
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (_localeNotificationCount() != self->_counter)
  {
    [(NSDateFormatter *)self _clearFormatter];
  }

  [(NSDateFormatter *)self _regenerateFormatterIfAbsent];
  if (self->_formatter)
  {
    [date timeIntervalSinceReferenceDate];
    AttributedStringAndFieldsWithAbsoluteTime = _CFDateFormatterCreateAttributedStringAndFieldsWithAbsoluteTime();
  }

  else
  {
    AttributedStringAndFieldsWithAbsoluteTime = 0;
  }

  v6 = AttributedStringAndFieldsWithAbsoluteTime;
  if ([-[NSMutableDictionary objectForKey:](self->_attributes objectForKey:{@"formattingContext", "intValue"}] == -1)
  {
    v7 = objc_alloc_init(_NSStringProxyForContext);
    [(_NSStringProxyForContext *)v7 setString:[(NSAttributedString *)v6 string]];
    [(_NSStringProxyForContext *)v7 setItem:date];
    v8 = [objc_allocWithZone(objc_opt_class()) init];
    [v8[1] setDictionary:self->_attributes];
    [(_NSStringProxyForContext *)v7 _retainFormatter:v8];

    v9 = [[NSMutableAttributedString alloc] initWithString:v7];
    v10 = [(NSAttributedString *)v6 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__NSDateFormatter_Private___attributedStringWithFieldsFromDate___block_invoke;
    v12[3] = &unk_1E69F2DF0;
    v12[4] = v9;
    [(NSAttributedString *)v6 enumerateAttributesInRange:0 options:v10 usingBlock:0, v12];
    v6 = v9;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

+ (id)_componentsFromFormatString:(id)string
{
  v48 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [string length];
  if (qword_1ED43F148 != -1)
  {
    dispatch_once(&qword_1ED43F148, &__block_literal_global_7);
  }

  v30 = _MergedGlobals_5;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *buffer = 0u;
  v34 = 0u;
  theString = string;
  v44 = 0;
  v45 = v4;
  CharactersPtr = CFStringGetCharactersPtr(string);
  CStringPtr = 0;
  v42 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(string, 0x600u);
  }

  v46 = 0;
  v47 = 0;
  v43 = CStringPtr;
  v7 = +[(NSString *)NSMutableString];
  if (v4 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 64;
    v32 = v4;
    while (1)
    {
      if (v12 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v12;
      }

      v16 = v45;
      if (v45 <= v12)
      {
        v18 = 0;
        if (v10)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v42)
        {
          v17 = &v42[v44];
          goto LABEL_13;
        }

        if (!v43)
        {
          v22 = v46;
          if (v47 <= v12 || v46 > v12)
          {
            v24 = v15 + v8;
            v25 = v14 - v15;
            v26 = v12 - v15;
            v27 = v26 + 64;
            if (v26 + 64 >= v45)
            {
              v27 = v45;
            }

            v46 = v26;
            v47 = v27;
            if (v45 >= v25)
            {
              v16 = v25;
            }

            v49.location = v26 + v44;
            v49.length = v16 + v24;
            CFStringGetCharacters(theString, v49, buffer);
            v22 = v46;
          }

          v17 = &buffer[-v22];
LABEL_13:
          v18 = v17[v12];
          if (v10)
          {
            goto LABEL_16;
          }

          goto LABEL_19;
        }

        v18 = v43[v44 + v12];
        if (v10)
        {
LABEL_16:
          v19 = 0;
          goto LABEL_20;
        }
      }

LABEL_19:
      v19 = [v30 characterIsMember:v18];
LABEL_20:
      if ((v19 & 1) == 0 && ((v13 ^ 1) & 1) == 0 || (v18 != v9 ? (v20 = v19) : (v20 = 0), v20 == 1))
      {
        if (v12 > v11)
        {
          [array addObject:{_CreateComponent(v7, v11, v12 - v11, (v13 ^ 1) & 1)}];
          v7 = +[(NSString *)NSMutableString];
          v11 = v12;
        }
      }

      if (v18 == 39)
      {
        if (v9 == 39)
        {
          [(NSString *)v7 appendString:@"'"];
        }

        v10 ^= 1u;
      }

      else
      {
        [(NSString *)v7 appendFormat:@"%C", v18];
      }

      ++v12;
      --v8;
      ++v14;
      v9 = v18;
      v13 = v19;
      v21 = v32;
      if (v32 == v12)
      {
        v28 = v19 ^ 1u;
        goto LABEL_46;
      }
    }
  }

  v21 = 0;
  v11 = 0;
  v28 = 0;
LABEL_46:
  if ([(NSString *)v7 length])
  {
    [array addObject:{_CreateComponent(v7, v11, v21 - v11, v28)}];
  }

  return array;
}

+ (id)_formatStringFromComponents:(id)components
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = +[(NSString *)NSMutableString];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [components countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E695D910];
    v9 = *MEMORY[0x1E695D900];
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(components);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [v11 valueForKey:v8];
        if ([objc_msgSend(v11 valueForKey:{v9), "BOOLValue"}])
        {
          goto LABEL_10;
        }

        if (qword_1ED43F158 != -1)
        {
          dispatch_once(&qword_1ED43F158, &__block_literal_global_351);
        }

        if ([(NSString *)v12 rangeOfCharacterFromSet:qword_1ED43F150]!= 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_10:
          v12 = [(NSString *)v12 stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
          if (qword_1ED43F148 != -1)
          {
            dispatch_once(&qword_1ED43F148, &__block_literal_global_7);
          }

          if ([(NSString *)v12 rangeOfCharacterFromSet:_MergedGlobals_5]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [NSString stringWithFormat:@"'%@'", v12];
          }
        }

        [(NSString *)v4 appendString:v12];
        ++v10;
      }

      while (v6 != v10);
      v6 = [components countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_nextChangeDateAfterDate:(id)date
{
  dateCopy = date;
  v18 = *MEMORY[0x1E69E9840];
  if (!date)
  {
    return dateCopy;
  }

  dateFormat = [(NSDateFormatter *)self dateFormat];
  if (![(NSString *)dateFormat length])
  {
    return 0;
  }

  [(NSDateFormatter *)self locale];
  SkeletonFromTemplate = _CFDateFormatterCreateSkeletonFromTemplate();
  if (!SkeletonFromTemplate)
  {
    return 0;
  }

  v7 = SkeletonFromTemplate;
  UnitsFromDateFormat = _CFCalendarGetUnitsFromDateFormat();
  if (!UnitsFromDateFormat)
  {
    v11 = _NSOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = dateFormat;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_18075C000, v11, OS_LOG_TYPE_ERROR, "Fail to get calendar units from date format %@; skeleton: %@", buf, 0x16u);
    }

    CFRelease(v7);
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = qword_1813443E8[v9];
    if ((v10 & UnitsFromDateFormat) != 0)
    {
      break;
    }

    if (++v9 == 14)
    {
      dateCopy = 0;
      goto LABEL_15;
    }
  }

  calendar = [(NSDateFormatter *)self calendar];
  dateCopy = [(NSCalendar *)calendar nextDateAfterDate:dateCopy matchingUnit:v10 value:[(NSCalendar *)calendar component:v10 fromDate:dateCopy]+ 1 options:1024];
LABEL_15:
  CFRelease(v7);
  return dateCopy;
}

- (void)receiveObservedValue:(id)value
{
  v8 = *MEMORY[0x1E69E9840];
  if (value)
  {
    if ((_NSIsNSDate() & 1) == 0)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:16, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSDate(value)"];
    }

    v6.receiver = self;
    v6.super_class = NSDateFormatter;
    [(NSDateFormatter *)&v6 receiveObservedValue:[(NSDateFormatter *)self stringFromDate:value]];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NSDateFormatter;
    [(NSDateFormatter *)&v7 receiveObservedValue:0];
  }
}

@end