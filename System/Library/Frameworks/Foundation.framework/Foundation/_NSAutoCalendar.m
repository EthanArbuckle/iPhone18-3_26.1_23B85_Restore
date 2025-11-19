@interface _NSAutoCalendar
- (_NSAutoCalendar)initWithCoder:(id)a3;
@end

@implementation _NSAutoCalendar

- (_NSAutoCalendar)initWithCoder:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSCalendars cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  if ([a3 containsValueForKey:@"NS.locale"])
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.locale"];
    if (!v5)
    {

      v21 = @"NSLocalizedDescription";
      v22[0] = @"Locale has been corrupted!";
      v6 = MEMORY[0x1E695DF20];
      v7 = v22;
      v8 = &v21;
LABEL_14:
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v6, "dictionaryWithObjects:forKeys:count:", v7, v8, 1))}];
      return 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([a3 containsValueForKey:@"NS.timezone"])
  {
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.timezone"];
    if (!v9)
    {

      v19 = @"NSLocalizedDescription";
      v20 = @"Time zone has been corrupted!";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v20;
      v8 = &v19;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
  }

  if ([a3 containsValueForKey:@"NS.gstartdate"])
  {
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.gstartdate"];
    if (!v10 || (v11 = v10, (_NSIsNSDate() & 1) == 0))
    {

      v17 = @"NSLocalizedDescription";
      v18 = @"Gregorian start date has been corrupted!";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v18;
      v8 = &v17;
      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

  if ([a3 containsValueForKey:@"NS.firstwkdy"])
  {
    v13 = [a3 decodeIntForKey:@"NS.firstwkdy"];
  }

  else
  {
    v13 = -1;
  }

  if ([a3 containsValueForKey:@"NS.mindays"])
  {
    v14 = [a3 decodeIntForKey:@"NS.mindays"];
  }

  else
  {
    v14 = -1;
  }

  if (v11 || v5 || v9 || v13 != -1 || v14 != -1)
  {
    v15 = [MEMORY[0x1E695DEE8] currentCalendar];
    v16 = v15;
    if (v5)
    {
      [v15 setLocale:v5];
      v15 = v16;
    }

    if (v9)
    {
      [v16 setTimeZone:v9];
      v15 = v16;
    }

    if (v13 != -1)
    {
      [v16 setFirstWeekday:v13];
      v15 = v16;
    }

    if (v14)
    {
      [v16 setMinimumDaysInFirstWeek:v14];
      v15 = v16;
    }

    if (v11)
    {
      [v16 setGregorianStartDate:v11];
      v15 = v16;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  }

  return v15;
}

@end