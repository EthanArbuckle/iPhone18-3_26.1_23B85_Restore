@interface NSDateIntervalFormatter
- (NSCalendar)calendar;
- (NSDateIntervalFormatter)init;
- (NSDateIntervalFormatter)initWithCoder:(id)a3;
- (NSDateIntervalFormatterStyle)dateStyle;
- (NSDateIntervalFormatterStyle)timeStyle;
- (NSLocale)locale;
- (NSString)dateTemplate;
- (NSString)stringFromDate:(NSDate *)fromDate toDate:(NSDate *)toDate;
- (NSString)stringFromDateInterval:(NSDateInterval *)dateInterval;
- (NSTimeZone)timeZone;
- (id)_stringFromDate:(id)a3 toDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (unint64_t)boundaryStyle;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBoundaryStyle:(unint64_t)a3;
- (void)setCalendar:(NSCalendar *)calendar;
- (void)setDateStyle:(NSDateIntervalFormatterStyle)dateStyle;
- (void)setDateTemplate:(NSString *)dateTemplate;
- (void)setLocale:(NSLocale *)locale;
- (void)setTimeStyle:(NSDateIntervalFormatterStyle)timeStyle;
- (void)setTimeZone:(NSTimeZone *)timeZone;
@end

@implementation NSDateIntervalFormatter

- (NSDateIntervalFormatter)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSDateIntervalFormatter;
  v2 = [(NSDateIntervalFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_modified = 0;
    v2->_useTemplate = 0;
    v2->_locale = 0;
    v2->_calendar = 0;
    v2->_timeZone = 0;
    v2->_formatter = 0;
    v2->_dateTemplate = &stru_1EEEFDF90;
    v3->_dateTemplateFromStyles = 0;
    v3->_dateStyle = 1;
    v3->_timeStyle = 1;
    v3->_boundaryStyle = 0;
    updateDateTemplate(v3, v3->_dateStyle, v3->_timeStyle);
    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (NSString)dateTemplate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 7;
  if (self->_useTemplate)
  {
    v3 = 6;
  }

  v4 = *(&self->super.super.isa + OBJC_IVAR___NSDateIntervalFormatter__modified[v3]);
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (NSLocale)locale
{
  os_unfair_lock_lock(&self->_lock);
  locale = self->_locale;
  if (!locale)
  {
    locale = [MEMORY[0x1E695DF58] currentLocale];
  }

  v4 = locale;
  os_unfair_lock_unlock(&self->_lock);

  return locale;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  locale = self->_locale;
  if (locale)
  {

    self->_locale = 0;
  }

  calendar = self->_calendar;
  if (calendar)
  {

    self->_calendar = 0;
  }

  timeZone = self->_timeZone;
  if (timeZone)
  {

    self->_timeZone = 0;
  }

  if (self->_formatter)
  {
    udtitvfmt_close();
    self->_formatter = 0;
  }

  dateTemplate = self->_dateTemplate;
  if (dateTemplate)
  {

    self->_dateTemplate = 0;
  }

  dateTemplateFromStyles = self->_dateTemplateFromStyles;
  if (dateTemplateFromStyles)
  {

    self->_dateTemplateFromStyles = 0;
  }

  v8.receiver = self;
  v8.super_class = NSDateIntervalFormatter;
  [(NSDateIntervalFormatter *)&v8 dealloc];
}

- (void)setLocale:(NSLocale *)locale
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_locale;
  if (v5 != locale)
  {

    self->_locale = [(NSLocale *)locale copyWithZone:0];
    self->_modified = 1;
    updateDateTemplate(self, self->_dateStyle, self->_timeStyle);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSCalendar)calendar
{
  os_unfair_lock_lock(&self->_lock);
  calendar = self->_calendar;
  if (!calendar)
  {
    locale = self->_locale;
    if (!locale)
    {
      locale = [MEMORY[0x1E695DF58] currentLocale];
    }

    calendar = [(NSLocale *)locale objectForKey:*MEMORY[0x1E695D958]];
  }

  v5 = calendar;
  os_unfair_lock_unlock(&self->_lock);

  return calendar;
}

- (void)setCalendar:(NSCalendar *)calendar
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_calendar;
  if (v5 != calendar)
  {

    self->_calendar = [(NSCalendar *)calendar copyWithZone:0];
    self->_modified = 1;
    updateDateTemplate(self, self->_dateStyle, self->_timeStyle);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSTimeZone)timeZone
{
  os_unfair_lock_lock(&self->_lock);
  timeZone = self->_timeZone;
  if (!timeZone)
  {
    timeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  }

  v4 = timeZone;
  os_unfair_lock_unlock(&self->_lock);

  return timeZone;
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_timeZone;
  if (v5 != timeZone)
  {

    self->_timeZone = [(NSTimeZone *)timeZone copyWithZone:0];
    self->_modified = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDateTemplate:(NSString *)dateTemplate
{
  os_unfair_lock_lock(&self->_lock);
  if (![(NSString *)self->_dateTemplate isEqualToString:dateTemplate])
  {

    self->_dateTemplate = [(NSString *)dateTemplate copyWithZone:0];
    self->_modified = 1;
    self->_useTemplate = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateIntervalFormatterStyle)dateStyle
{
  os_unfair_lock_lock(&self->_lock);
  dateStyle = self->_dateStyle;
  os_unfair_lock_unlock(&self->_lock);
  return dateStyle;
}

- (void)setDateStyle:(NSDateIntervalFormatterStyle)dateStyle
{
  os_unfair_lock_lock(&self->_lock);
  self->_dateStyle = dateStyle;
  self->_modified = 1;
  self->_useTemplate = 0;
  updateDateTemplate(self, dateStyle, self->_timeStyle);

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateIntervalFormatterStyle)timeStyle
{
  os_unfair_lock_lock(&self->_lock);
  timeStyle = self->_timeStyle;
  os_unfair_lock_unlock(&self->_lock);
  return timeStyle;
}

- (void)setTimeStyle:(NSDateIntervalFormatterStyle)timeStyle
{
  os_unfair_lock_lock(&self->_lock);
  self->_timeStyle = timeStyle;
  self->_modified = 1;
  self->_useTemplate = 0;
  updateDateTemplate(self, self->_dateStyle, timeStyle);

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)boundaryStyle
{
  os_unfair_lock_lock(&self->_lock);
  boundaryStyle = self->_boundaryStyle;
  os_unfair_lock_unlock(&self->_lock);
  return boundaryStyle;
}

- (void)setBoundaryStyle:(unint64_t)a3
{
  if (a3 >= 3)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateIntervalFormatter.m" description:321, @"Invalid parameter not satisfying: %@", @"boundaryStyle == NSDateIntervalFormatterBoundaryStyleDefault || boundaryStyle == NSDateIntervalFormatterBoundaryStyleMinimizeAdjacentMonths || boundaryStyle == NSDateIntervalFormatterBoundaryStyleMinimizeAdjacentDays"];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_boundaryStyle = a3;
  self->_modified = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)stringFromDate:(NSDate *)fromDate toDate:(NSDate *)toDate
{
  if (fromDate)
  {
    if (toDate)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateIntervalFormatter.m" description:332, @"Invalid parameter not satisfying: %@", @"fromDate != nil"];
    if (toDate)
    {
      goto LABEL_3;
    }
  }

  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateIntervalFormatter.m" description:333, @"Invalid parameter not satisfying: %@", @"toDate != nil"];
LABEL_3:

  return [(NSDateIntervalFormatter *)self _stringFromDate:fromDate toDate:toDate];
}

- (NSString)stringFromDateInterval:(NSDateInterval *)dateInterval
{
  if (!dateInterval)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSDateIntervalFormatter.m" description:338, @"Invalid parameter not satisfying: %@", @"dateInterval != nil"];
  }

  return [(NSDateIntervalFormatter *)self stringForObjectValue:dateInterval];
}

- (id)stringForObjectValue:(id)a3
{
  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 startDate];
  v6 = [a3 endDate];

  return [(NSDateIntervalFormatter *)self _stringFromDate:v5 toDate:v6];
}

- (id)_stringFromDate:(id)a3 toDate:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_modified && self->_formatter)
  {
    udtitvfmt_close();
    self->_formatter = 0;
    self->_modified = 0;
  }

  if (!self->_formatter)
  {
    locale = self->_locale;
    if (!locale)
    {
      locale = [MEMORY[0x1E695DF58] currentLocale];
    }

    calendar = self->_calendar;
    v9 = *MEMORY[0x1E695D958];
    if (!calendar)
    {
      calendar = [(NSLocale *)locale objectForKey:*MEMORY[0x1E695D958]];
    }

    v10 = [(NSLocale *)locale _identifierCapturingPreferences];
    v11 = [objc_msgSend(MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:{v10), "mutableCopy"}];
    [v11 setObject:calendar forKey:v9];
    v12 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v11];

    v36 = 0;
    memset(v35, 0, sizeof(v35));
    [v12 getCString:v35 maxLength:100 encoding:4];
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    timeZone = self->_timeZone;
    if (!timeZone)
    {
      timeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    v14 = [(NSTimeZone *)timeZone name];
    [(NSString *)v14 getCharacters:v23];
    v15 = 7;
    if (self->_useTemplate)
    {
      v15 = 6;
    }

    v16 = *(&self->super.super.isa + OBJC_IVAR___NSDateIntervalFormatter__modified[v15]);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    [v16 getCharacters:v33];
    [v16 length];
    [(NSString *)v14 length];
    self->_formatter = udtitvfmt_open();
    if (!self->_formatter)
    {
      v17 = _NSOSLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = u_errorName(U_ZERO_ERROR);
        *buf = 136315906;
        v26 = v35;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v14;
        v31 = 2080;
        v32 = v22;
        _os_log_error_impl(&dword_18075C000, v17, OS_LOG_TYPE_ERROR, "udtitvfmt_open failed!  Formatter is NULL! -- locale: %s, template: %@, timezone: %@, status: %s", buf, 0x2Au);
      }
    }

    if (self->_formatter)
    {
      udtitvfmt_setAttribute();
    }
  }

  if (self->_formatter)
  {
    [a3 timeIntervalSince1970];
    [a4 timeIntervalSince1970];
    bzero(v23, 0x7D0uLL);
    v33[0] = 0;
    v18 = udtitvfmt_format();
    if (v18 < 1001)
    {
      v20 = [NSString stringWithCharacters:v23 length:v18];
    }

    else
    {
      v19 = malloc_type_calloc(v18, 2uLL, 0x1000040BDFB0063uLL);
      v33[0] = 0;
      v20 = [NSString stringWithCharacters:v19 length:udtitvfmt_format()];
      free(v19);
    }
  }

  else
  {
    v20 = &stru_1EEEFDF90;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(NSLocale *)self->_locale copyWithZone:a3];
  *(v5 + 16) = [(NSCalendar *)self->_calendar copyWithZone:a3];
  *(v5 + 24) = [(NSTimeZone *)self->_timeZone copyWithZone:a3];
  *(v5 + 32) = [(NSString *)self->_dateTemplate copyWithZone:a3];
  *(v5 + 40) = [(NSString *)self->_dateTemplateFromStyles copyWithZone:a3];
  *(v5 + 56) = self->_dateStyle;
  *(v5 + 64) = self->_timeStyle;
  *(v5 + 84) = self->_modified;
  *(v5 + 85) = self->_useTemplate;
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (NSDateIntervalFormatter)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateIntervalFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v8.receiver = self;
  v8.super_class = NSDateIntervalFormatter;
  v5 = [(NSFormatter *)&v8 initWithCoder:a3];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_dateStyle = [a3 decodeInt64ForKey:@"NS.dateStyle"];
    v6->_timeStyle = [a3 decodeInt64ForKey:@"NS.timeStyle"];
    v6->_dateTemplate = [a3 decodeObjectForKey:@"NS.dateTemplate"];
    v6->_dateTemplateFromStyles = [a3 decodeObjectForKey:@"NS.dateTemplateFromStyles"];
    v6->_modified = [a3 decodeBoolForKey:@"NS.modified"];
    v6->_useTemplate = [a3 decodeBoolForKey:@"NS.useTemplate"];
    v6->_locale = 0;
    v6->_calendar = 0;
    v6->_timeZone = 0;
    if ([a3 containsValueForKey:@"NS.locale"])
    {
      v6->_locale = [a3 decodeObjectForKey:@"NS.locale"];
    }

    if ([a3 containsValueForKey:@"NS.calendar"])
    {
      v6->_calendar = [a3 decodeObjectForKey:@"NS.calendar"];
    }

    if ([a3 containsValueForKey:@"NS.timeZone"])
    {
      v6->_timeZone = [a3 decodeObjectForKey:@"NS.timeZone"];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateIntervalFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  os_unfair_lock_lock(&self->_lock);
  [a3 encodeInt64:self->_dateStyle forKey:@"NS.dateStyle"];
  [a3 encodeInt64:self->_timeStyle forKey:@"NS.timeStyle"];
  [a3 encodeObject:self->_dateTemplate forKey:@"NS.dateTemplate"];
  [a3 encodeObject:self->_dateTemplateFromStyles forKey:@"NS.dateTemplateFromStyles"];
  [a3 encodeBool:self->_modified forKey:@"NS.modified"];
  [a3 encodeBool:self->_useTemplate forKey:@"NS.useTemplate"];
  locale = self->_locale;
  if (locale)
  {
    [a3 encodeObject:locale forKey:@"NS.locale"];
  }

  calendar = self->_calendar;
  if (calendar)
  {
    [a3 encodeObject:calendar forKey:@"NS.calendar"];
  }

  timeZone = self->_timeZone;
  if (timeZone)
  {
    [a3 encodeObject:timeZone forKey:@"NS.timeZone"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end