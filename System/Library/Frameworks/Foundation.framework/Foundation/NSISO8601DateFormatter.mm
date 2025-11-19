@interface NSISO8601DateFormatter
+ (NSString)stringFromDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone formatOptions:(NSISO8601DateFormatOptions)formatOptions;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6;
- (NSDate)dateFromString:(NSString *)string;
- (NSISO8601DateFormatter)init;
- (NSISO8601DateFormatter)initWithCoder:(id)a3;
- (NSString)stringFromDate:(NSDate *)date;
- (NSTimeZone)timeZone;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFormatOptions:(NSISO8601DateFormatOptions)formatOptions;
- (void)setTimeZone:(NSTimeZone *)timeZone;
- (void)updateFormatter;
@end

@implementation NSISO8601DateFormatter

- (NSISO8601DateFormatter)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSISO8601DateFormatter;
  v2 = [(NSISO8601DateFormatter *)&v5 init];
  if (v2)
  {
    v2->_timeZone = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    v2->_formatOptions = 1907;
    ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E4A8], 0x773uLL);
    v2->_formatter = ISO8601Formatter;
    if (ISO8601Formatter)
    {
      CFDateFormatterSetProperty(ISO8601Formatter, *MEMORY[0x1E695E5D8], v2->_timeZone);
    }
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  formatter = self->_formatter;
  if (formatter)
  {
    CFRelease(formatter);
    self->_formatter = 0;
  }

  v4.receiver = self;
  v4.super_class = NSISO8601DateFormatter;
  [(NSISO8601DateFormatter *)&v4 dealloc];
}

- (void)updateFormatter
{
  formatter = self->_formatter;
  if (formatter)
  {
    CFRelease(formatter);
    self->_formatter = 0;
  }

  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E4A8], self->_formatOptions);
  self->_formatter = ISO8601Formatter;
  if (ISO8601Formatter)
  {
    v5 = *MEMORY[0x1E695E5D8];
    timeZone = self->_timeZone;

    CFDateFormatterSetProperty(ISO8601Formatter, v5, timeZone);
  }
}

- (NSTimeZone)timeZone
{
  v2 = self->_timeZone;

  return v2;
}

- (void)setTimeZone:(NSTimeZone *)timeZone
{
  v4 = self->_timeZone;
  if (timeZone)
  {
    if ([(NSTimeZone *)v4 isEqualToTimeZone:?])
    {
      return;
    }

    self->_timeZone = 0;
    v6 = [(NSTimeZone *)timeZone copy];
    goto LABEL_7;
  }

  if (![(NSString *)[(NSTimeZone *)v4 name] isEqualToString:@"GMT"])
  {

    self->_timeZone = 0;
    v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
LABEL_7:
    self->_timeZone = v6;
  }

  [(NSISO8601DateFormatter *)self updateFormatter];
}

- (void)setFormatOptions:(NSISO8601DateFormatOptions)formatOptions
{
  if ((formatOptions & 0xFFFFFFFFFFFFF008) != 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSISO8601DateFormatter.m" description:67, @"Invalid parameter not satisfying: %@", @"formatOptions == 0 || !(formatOptions & ~(NSISO8601DateFormatWithYear | NSISO8601DateFormatWithMonth | NSISO8601DateFormatWithWeekOfYear | NSISO8601DateFormatWithDay | NSISO8601DateFormatWithTime | NSISO8601DateFormatWithTimeZone | NSISO8601DateFormatWithSpaceBetweenDateAndTime | NSISO8601DateFormatWithDashSeparatorInDate | NSISO8601DateFormatWithColonSeparatorInTime | NSISO8601DateFormatWithColonSeparatorInTimeZone | NSISO8601DateFormatWithFractionalSeconds | NSISO8601DateFormatWithFullDate | NSISO8601DateFormatWithFullTime | NSISO8601DateFormatWithInternetDateTime))"];
  }

  if (self->_formatOptions != formatOptions)
  {
    self->_formatOptions = formatOptions;

    [(NSISO8601DateFormatter *)self updateFormatter];
  }
}

- (NSString)stringFromDate:(NSDate *)date
{
  if (date)
  {
    return [(NSISO8601DateFormatter *)self stringForObjectValue:?];
  }

  else
  {
    return 0;
  }
}

- (id)stringForObjectValue:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (!_NSIsNSDate())
  {
    return 0;
  }

  formatter = self->_formatter;
  if (!formatter)
  {
    return 0;
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(*MEMORY[0x1E695E4A8], formatter, a3);
  if (!StringWithDate)
  {
    return 0;
  }

  return StringWithDate;
}

- (NSDate)dateFromString:(NSString *)string
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!string)
  {
    return 0;
  }

  v4[0] = 0;
  if ([(NSISO8601DateFormatter *)self getObjectValue:v4 forString:string range:0 error:0])
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (a5)
  {
    v6 = &v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSISO8601DateFormatter *)self getObjectValue:a3 forString:a4 range:0 error:v6, v9, v10];
  if (v9)
  {
    *a5 = [v9 localizedDescription];
  }

  return v7;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a4 || [a4 isEqual:&stru_1EEEFDF90])
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

  if (a5)
  {
    location = a5->location;
    length = a5->length;
  }

  else
  {
    length = [a4 length];
    location = 0;
  }

  v18.location = location;
  v18.length = length;
  formatter = self->_formatter;
  if (formatter)
  {
    v15 = CFDateFormatterCreateDateFromString(*MEMORY[0x1E695E4A8], formatter, a4, &v18);
    if (v15)
    {
      v16 = v15;
      CFAutorelease(v15);
      if (a5)
      {
        *a5 = v18;
      }

      if (a3)
      {
        *a3 = v16;
      }

      return 1;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v19 = @"NSInvalidValue";
  v20[0] = a4;
  v17 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 2048, [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1]);
  result = 0;
  *a6 = v17;
  return result;
}

+ (NSString)stringFromDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone formatOptions:(NSISO8601DateFormatOptions)formatOptions
{
  v8 = objc_alloc_init(a1);
  [v8 setTimeZone:timeZone];
  [v8 setFormatOptions:formatOptions];
  v9 = [v8 stringFromDate:date];

  return v9;
}

- (NSISO8601DateFormatter)initWithCoder:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSISO8601DateFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a3 decodeIntegerForKey:@"NS.formatOptions"];
  if ([a3 containsValueForKey:@"NS.timeZone"])
  {
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.timeZone"];
    if (!v6)
    {

      v10 = @"NSLocalizedDescription";
      v11[0] = @"Timezone has been corrupted!";
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1))}];
      return 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [(NSISO8601DateFormatter *)self init];
  v7 = v8;
  if (v8)
  {
    [(NSISO8601DateFormatter *)v8 setFormatOptions:v5];
    [(NSISO8601DateFormatter *)v7 setTimeZone:v6];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encoder does not allow key encoding" userInfo:0]);
  }

  [a3 encodeInteger:self->_formatOptions forKey:@"NS.formatOptions"];
  if (self->_timeZone)
  {

    [a3 encodeObject:? forKey:?];
  }
}

@end