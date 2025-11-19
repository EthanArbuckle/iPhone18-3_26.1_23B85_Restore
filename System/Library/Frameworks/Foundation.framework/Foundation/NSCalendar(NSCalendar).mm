@interface NSCalendar(NSCalendar)
- (uint64_t)encodeWithCoder:()NSCalendar;
- (void)initWithCoder:()NSCalendar;
@end

@implementation NSCalendar(NSCalendar)

- (uint64_t)encodeWithCoder:()NSCalendar
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCalendars cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a1 calendarIdentifier];
  if (v5)
  {
    [a3 encodeObject:v5 forKey:@"NS.identifier"];
  }

  v6 = [a1 locale];
  if (v6)
  {
    [a3 encodeObject:v6 forKey:@"NS.locale"];
  }

  v7 = [a1 timeZone];
  if (v7)
  {
    [a3 encodeObject:v7 forKey:@"NS.timezone"];
  }

  v8 = [a1 gregorianStartDate];
  if (v8)
  {
    [a3 encodeObject:v8 forKey:@"NS.gstartdate"];
  }

  [a3 encodeInteger:objc_msgSend(a1 forKey:{"firstWeekday"), @"NS.firstwkdy"}];
  v9 = [a1 minimumDaysInFirstWeek];

  return [a3 encodeInteger:v9 forKey:@"NS.mindays"];
}

- (void)initWithCoder:()NSCalendar
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCalendars cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  if (![a3 containsValueForKey:@"NS.identifier"] || (v5 = objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"NS.identifier")) == 0)
  {

    v21 = @"NSLocalizedDescription";
    v22[0] = @"Time zone has been corrupted!";
    v9 = MEMORY[0x1E695DF20];
    v10 = v22;
    v11 = &v21;
    goto LABEL_9;
  }

  v6 = v5;
  if ([a3 containsValueForKey:@"NS.locale"])
  {
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.locale"];
    if (!v7 || (v8 = v7, (objc_opt_isKindOfClass() & 1) == 0))
    {

      v19 = @"NSLocalizedDescription";
      v20 = @"Locale has been corrupted!";
      v9 = MEMORY[0x1E695DF20];
      v10 = &v20;
      v11 = &v19;
LABEL_9:
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v9, "dictionaryWithObjects:forKeys:count:", v10, v11, 1))}];
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if ([a3 containsValueForKey:@"NS.timezone"])
  {
    v14 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.timezone"];
  }

  else
  {
    v14 = 0;
  }

  if ([a3 containsValueForKey:@"NS.gstartdate"])
  {
    v15 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.gstartdate"];
  }

  else
  {
    v15 = 0;
  }

  if ([a3 containsValueForKey:@"NS.firstwkdy"])
  {
    v16 = [a3 decodeIntegerForKey:@"NS.firstwkdy"];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 containsValueForKey:@"NS.mindays"])
  {
    v17 = [a3 decodeIntegerForKey:@"NS.mindays"];
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a3 error])
  {

    return 0;
  }

  v18 = [a1 initWithCalendarIdentifier:v6];
  v12 = v18;
  if (v18)
  {
    [v18 setLocale:v8];
    if (v14)
    {
      [v12 setTimeZone:v14];
    }

    if (v15)
    {
      [v12 setGregorianStartDate:v15];
    }

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setFirstWeekday:v16];
    }

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setMinimumDaysInFirstWeek:v17];
    }
  }

  return v12;
}

@end