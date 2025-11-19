@interface _HKDateIntervalCollection
- (BOOL)isEqual:(id)a3;
- (_HKDateIntervalCollection)initWithAnchorDate:(id)a3 intervalComponents:(id)a4;
- (_HKDateIntervalCollection)initWithCoder:(id)a3;
- (id)_dateByAddingInterval:(int64_t)a3 toDate:(id)a4 calendar:(id)a5 workComponents:(id)a6;
- (id)dateIntervalAtIndex:(int64_t)a3;
- (id)dateIntervalContainingDate:(id)a3 index:(int64_t *)a4;
- (id)dateIntervalForIntervalsContainingInterval:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKDateIntervalCollection

- (_HKDateIntervalCollection)initWithAnchorDate:(id)a3 intervalComponents:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [_HKDateIntervalCollection initWithAnchorDate:a2 intervalComponents:self];
  }

  v9 = [v8 calendar];

  if (!v9)
  {
    [_HKDateIntervalCollection initWithAnchorDate:a2 intervalComponents:self];
  }

  v21.receiver = self;
  v21.super_class = _HKDateIntervalCollection;
  v10 = [(_HKDateIntervalCollection *)&v21 init];
  if (v10)
  {
    v11 = [v7 copy];
    anchorDate = v10->_anchorDate;
    v10->_anchorDate = v11;

    v13 = [v8 copy];
    intervalComponents = v10->_intervalComponents;
    v10->_intervalComponents = v13;

    v10->_maxComponent = [v8 hk_maxComponentValue];
    [(NSDateComponents *)v10->_intervalComponents hk_approximateDuration];
    v10->_approximateIntervalDuration = v15;
    if ([(NSDateComponents *)v10->_intervalComponents year]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents month]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents weekOfYear]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents weekOfMonth]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents day]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(NSDateComponents *)v10->_intervalComponents hour];
      v10->_canonicalIntervalDuration = 0.0;
      v10->_canUseFastDateMath = v16 == 0x7FFFFFFFFFFFFFFFLL;
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [(NSDateComponents *)v10->_intervalComponents calendar];
        v18 = [v17 dateByAddingComponents:v10->_intervalComponents toDate:v10->_anchorDate options:0];

        [v18 timeIntervalSinceDate:v10->_anchorDate];
        v10->_canonicalIntervalDuration = v19;
      }
    }

    else
    {
      v10->_canUseFastDateMath = 0;
      v10->_canonicalIntervalDuration = 0.0;
    }
  }

  return v10;
}

- (id)dateIntervalAtIndex:(int64_t)a3
{
  if (self->_canUseFastDateMath && self->_enableRiskyFastMathOptimization)
  {
    v5 = [(NSDate *)self->_anchorDate dateByAddingTimeInterval:self->_canonicalIntervalDuration * a3];
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 duration:self->_canonicalIntervalDuration];
  }

  else
  {
    v7 = [(NSDateComponents *)self->_intervalComponents calendar];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    v5 = v9;

    v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v11 = [(_HKDateIntervalCollection *)self _dateByAddingInterval:a3 toDate:self->_anchorDate calendar:v5 workComponents:v10];
    v12 = [(_HKDateIntervalCollection *)self _dateByAddingInterval:a3 + 1 toDate:self->_anchorDate calendar:v5 workComponents:v10];
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v12];
  }

  return v6;
}

- (id)_dateByAddingInterval:(int64_t)a3 toDate:(id)a4 calendar:(id)a5 workComponents:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  v14 = v13;
  v15 = v13;
  if (a3)
  {
    maxComponent = self->_maxComponent;
    v15 = v13;
    if (maxComponent)
    {
      v17 = v13;
      v18 = 0x7FFFFFFF / maxComponent;
      do
      {
        if (a3 >= 0)
        {
          v19 = a3;
        }

        else
        {
          v19 = -a3;
        }

        if (v19 >= v18)
        {
          v19 = v18;
        }

        if (a3 >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = -v19;
        }

        if ([(NSDateComponents *)self->_intervalComponents year]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setYear:{-[NSDateComponents year](self->_intervalComponents, "year") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents month]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setMonth:{-[NSDateComponents month](self->_intervalComponents, "month") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents weekOfYear]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setWeekOfYear:{-[NSDateComponents weekOfYear](self->_intervalComponents, "weekOfYear") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents weekOfMonth]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setWeekOfMonth:{-[NSDateComponents weekOfMonth](self->_intervalComponents, "weekOfMonth") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents day]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setDay:{-[NSDateComponents day](self->_intervalComponents, "day") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents hour]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setHour:{-[NSDateComponents hour](self->_intervalComponents, "hour") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents minute]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setMinute:{-[NSDateComponents minute](self->_intervalComponents, "minute") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents second]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setSecond:{-[NSDateComponents second](self->_intervalComponents, "second") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents nanosecond]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v12 setNanosecond:{-[NSDateComponents nanosecond](self->_intervalComponents, "nanosecond") * v20}];
        }

        v15 = [v11 dateByAddingComponents:v12 toDate:v17 options:0];

        v17 = v15;
        a3 -= v20;
      }

      while (a3);
    }
  }

  v21 = v15;

  return v15;
}

- (id)dateIntervalContainingDate:(id)a3 index:(int64_t *)a4
{
  v6 = a3;
  [v6 timeIntervalSinceDate:self->_anchorDate];
  v8 = vcvtmd_s64_f64(v7 / self->_approximateIntervalDuration);
  v9 = [(_HKDateIntervalCollection *)self dateIntervalAtIndex:v8];
  v10 = [v9 endDate];
  v11 = [v10 hk_isBeforeOrEqualToDate:v6];

  if (v11)
  {
    do
    {
      v12 = [(_HKDateIntervalCollection *)self dateIntervalAtIndex:++v8];

      v13 = [v12 endDate];
      v14 = [v13 hk_isBeforeOrEqualToDate:v6];

      v9 = v12;
    }

    while ((v14 & 1) != 0);
  }

  else
  {
    v12 = v9;
  }

  v15 = [v12 startDate];
  v16 = [v15 hk_isAfterDate:v6];

  if (v16)
  {
    do
    {
      v17 = [(_HKDateIntervalCollection *)self dateIntervalAtIndex:--v8];

      v18 = [v17 startDate];
      v19 = [v18 hk_isAfterDate:v6];

      v12 = v17;
    }

    while ((v19 & 1) != 0);
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = v12;
  if (a4)
  {
LABEL_8:
    *a4 = v8;
  }

LABEL_9:

  return v17;
}

- (id)dateIntervalForIntervalsContainingInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [(_HKDateIntervalCollection *)self dateIntervalContainingDate:v5 index:0];

  v7 = [v4 endDate];

  v8 = [(_HKDateIntervalCollection *)self dateIntervalContainingDate:v7 index:0];

  v9 = objc_alloc(MEMORY[0x1E696AB80]);
  v10 = [v6 startDate];
  v11 = [v8 endDate];
  v12 = [v9 initWithStartDate:v10 endDate:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSDate *)self->_anchorDate isEqualToDate:v4->_anchorDate])
    {
      v5 = [(NSDateComponents *)self->_intervalComponents isEqual:v4->_intervalComponents];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (_HKDateIntervalCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor_date"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interval_components"];

  v7 = [(_HKDateIntervalCollection *)self initWithAnchorDate:v5 intervalComponents:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  anchorDate = self->_anchorDate;
  v5 = a3;
  [v5 encodeObject:anchorDate forKey:@"anchor_date"];
  [v5 encodeObject:self->_intervalComponents forKey:@"interval_components"];
}

- (void)initWithAnchorDate:(uint64_t)a1 intervalComponents:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKDateIntervalCollection.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"anchorDate != nil"}];
}

- (void)initWithAnchorDate:(uint64_t)a1 intervalComponents:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKDateIntervalCollection.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"intervalComponents.calendar != nil"}];
}

@end