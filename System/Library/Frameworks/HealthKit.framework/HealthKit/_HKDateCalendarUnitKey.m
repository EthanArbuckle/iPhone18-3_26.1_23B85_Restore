@interface _HKDateCalendarUnitKey
- (BOOL)isEqual:(id)a3;
- (_HKDateCalendarUnitKey)initWithDate:(id)a3 calendar:(id)a4 unit:(unint64_t)a5;
- (unint64_t)hash;
@end

@implementation _HKDateCalendarUnitKey

- (_HKDateCalendarUnitKey)initWithDate:(id)a3 calendar:(id)a4 unit:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_HKDateCalendarUnitKey initWithDate:a2 calendar:self unit:?];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [_HKDateCalendarUnitKey initWithDate:a2 calendar:self unit:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = _HKDateCalendarUnitKey;
  v12 = [(_HKDateCalendarUnitKey *)&v16 init];
  if (v12)
  {
    v13 = [v9 copy];
    date = v12->_date;
    v12->_date = v13;

    objc_storeStrong(&v12->_calendar, a4);
    v12->_calendarUnit = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(_HKDateCalendarUnitKey *)self date];
    v10 = [v8 date];
    if (v9 != v10)
    {
      v11 = [v8 date];
      if (!v11)
      {
        v12 = 0;
        goto LABEL_19;
      }

      v3 = v11;
      v4 = [(_HKDateCalendarUnitKey *)self date];
      v5 = [v8 date];
      if (![v4 isEqualToDate:v5])
      {
        v12 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v18 = v5;
      v19 = v4;
      v20 = v3;
    }

    v13 = [(_HKDateCalendarUnitKey *)self calendar];
    v14 = [v8 calendar];
    if (v13 == v14)
    {
      goto LABEL_12;
    }

    v15 = [v8 calendar];
    if (!v15)
    {

      v12 = 0;
LABEL_17:
      v4 = v19;
      v3 = v20;
      v5 = v18;
      if (v9 != v10)
      {
        goto LABEL_18;
      }

LABEL_19:

      goto LABEL_20;
    }

    v4 = v15;
    v5 = [(_HKDateCalendarUnitKey *)self calendar];
    v3 = [v8 calendar];
    if ([v5 isEqual:v3])
    {
LABEL_12:
      v16 = [(_HKDateCalendarUnitKey *)self calendarUnit];
      v12 = v16 == [v8 calendarUnit];
      if (v13 == v14)
      {
LABEL_14:

        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_HKDateCalendarUnitKey *)self date];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_HKDateCalendarUnitKey calendarUnit](self, "calendarUnit")}];
  v6 = [v5 hash];
  v7 = [(_HKDateCalendarUnitKey *)self calendar];
  v8 = [v7 calendarIdentifier];
  v9 = v4 ^ [v8 hash];
  v10 = [(_HKDateCalendarUnitKey *)self calendar];
  v11 = [v10 timeZone];
  v12 = v9 ^ [v11 hash];

  return v6 ^ v12;
}

- (void)initWithDate:(uint64_t)a1 calendar:(uint64_t)a2 unit:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSCalendar+HKCalendar.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"date != nil"}];
}

- (void)initWithDate:(uint64_t)a1 calendar:(uint64_t)a2 unit:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSCalendar+HKCalendar.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"calendar != nil"}];
}

@end