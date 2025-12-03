@interface _HKDateIntervalCollection
- (BOOL)isEqual:(id)equal;
- (_HKDateIntervalCollection)initWithAnchorDate:(id)date intervalComponents:(id)components;
- (_HKDateIntervalCollection)initWithCoder:(id)coder;
- (id)_dateByAddingInterval:(int64_t)interval toDate:(id)date calendar:(id)calendar workComponents:(id)components;
- (id)dateIntervalAtIndex:(int64_t)index;
- (id)dateIntervalContainingDate:(id)date index:(int64_t *)index;
- (id)dateIntervalForIntervalsContainingInterval:(id)interval;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKDateIntervalCollection

- (_HKDateIntervalCollection)initWithAnchorDate:(id)date intervalComponents:(id)components
{
  dateCopy = date;
  componentsCopy = components;
  if (!dateCopy)
  {
    [_HKDateIntervalCollection initWithAnchorDate:a2 intervalComponents:self];
  }

  calendar = [componentsCopy calendar];

  if (!calendar)
  {
    [_HKDateIntervalCollection initWithAnchorDate:a2 intervalComponents:self];
  }

  v21.receiver = self;
  v21.super_class = _HKDateIntervalCollection;
  v10 = [(_HKDateIntervalCollection *)&v21 init];
  if (v10)
  {
    v11 = [dateCopy copy];
    anchorDate = v10->_anchorDate;
    v10->_anchorDate = v11;

    v13 = [componentsCopy copy];
    intervalComponents = v10->_intervalComponents;
    v10->_intervalComponents = v13;

    v10->_maxComponent = [componentsCopy hk_maxComponentValue];
    [(NSDateComponents *)v10->_intervalComponents hk_approximateDuration];
    v10->_approximateIntervalDuration = v15;
    if ([(NSDateComponents *)v10->_intervalComponents year]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents month]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents weekOfYear]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents weekOfMonth]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)v10->_intervalComponents day]== 0x7FFFFFFFFFFFFFFFLL)
    {
      hour = [(NSDateComponents *)v10->_intervalComponents hour];
      v10->_canonicalIntervalDuration = 0.0;
      v10->_canUseFastDateMath = hour == 0x7FFFFFFFFFFFFFFFLL;
      if (hour == 0x7FFFFFFFFFFFFFFFLL)
      {
        calendar2 = [(NSDateComponents *)v10->_intervalComponents calendar];
        v18 = [calendar2 dateByAddingComponents:v10->_intervalComponents toDate:v10->_anchorDate options:0];

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

- (id)dateIntervalAtIndex:(int64_t)index
{
  if (self->_canUseFastDateMath && self->_enableRiskyFastMathOptimization)
  {
    index = [(NSDate *)self->_anchorDate dateByAddingTimeInterval:self->_canonicalIntervalDuration * index];
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:index duration:self->_canonicalIntervalDuration];
  }

  else
  {
    calendar = [(NSDateComponents *)self->_intervalComponents calendar];
    v8 = calendar;
    if (calendar)
    {
      currentCalendar = calendar;
    }

    else
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    index = currentCalendar;

    v10 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v11 = [(_HKDateIntervalCollection *)self _dateByAddingInterval:index toDate:self->_anchorDate calendar:index workComponents:v10];
    v12 = [(_HKDateIntervalCollection *)self _dateByAddingInterval:index + 1 toDate:self->_anchorDate calendar:index workComponents:v10];
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v12];
  }

  return v6;
}

- (id)_dateByAddingInterval:(int64_t)interval toDate:(id)date calendar:(id)calendar workComponents:(id)components
{
  dateCopy = date;
  calendarCopy = calendar;
  componentsCopy = components;
  v13 = dateCopy;
  v14 = v13;
  v15 = v13;
  if (interval)
  {
    maxComponent = self->_maxComponent;
    v15 = v13;
    if (maxComponent)
    {
      v17 = v13;
      v18 = 0x7FFFFFFF / maxComponent;
      do
      {
        if (interval >= 0)
        {
          intervalCopy = interval;
        }

        else
        {
          intervalCopy = -interval;
        }

        if (intervalCopy >= v18)
        {
          intervalCopy = v18;
        }

        if (interval >= 0)
        {
          v20 = intervalCopy;
        }

        else
        {
          v20 = -intervalCopy;
        }

        if ([(NSDateComponents *)self->_intervalComponents year]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setYear:{-[NSDateComponents year](self->_intervalComponents, "year") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents month]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setMonth:{-[NSDateComponents month](self->_intervalComponents, "month") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents weekOfYear]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setWeekOfYear:{-[NSDateComponents weekOfYear](self->_intervalComponents, "weekOfYear") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents weekOfMonth]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setWeekOfMonth:{-[NSDateComponents weekOfMonth](self->_intervalComponents, "weekOfMonth") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents day]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setDay:{-[NSDateComponents day](self->_intervalComponents, "day") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents hour]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setHour:{-[NSDateComponents hour](self->_intervalComponents, "hour") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents minute]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setMinute:{-[NSDateComponents minute](self->_intervalComponents, "minute") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents second]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setSecond:{-[NSDateComponents second](self->_intervalComponents, "second") * v20}];
        }

        if ([(NSDateComponents *)self->_intervalComponents nanosecond]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [componentsCopy setNanosecond:{-[NSDateComponents nanosecond](self->_intervalComponents, "nanosecond") * v20}];
        }

        v15 = [calendarCopy dateByAddingComponents:componentsCopy toDate:v17 options:0];

        v17 = v15;
        interval -= v20;
      }

      while (interval);
    }
  }

  v21 = v15;

  return v15;
}

- (id)dateIntervalContainingDate:(id)date index:(int64_t *)index
{
  dateCopy = date;
  [dateCopy timeIntervalSinceDate:self->_anchorDate];
  v8 = vcvtmd_s64_f64(v7 / self->_approximateIntervalDuration);
  v9 = [(_HKDateIntervalCollection *)self dateIntervalAtIndex:v8];
  endDate = [v9 endDate];
  v11 = [endDate hk_isBeforeOrEqualToDate:dateCopy];

  if (v11)
  {
    do
    {
      v12 = [(_HKDateIntervalCollection *)self dateIntervalAtIndex:++v8];

      endDate2 = [v12 endDate];
      v14 = [endDate2 hk_isBeforeOrEqualToDate:dateCopy];

      v9 = v12;
    }

    while ((v14 & 1) != 0);
  }

  else
  {
    v12 = v9;
  }

  startDate = [v12 startDate];
  v16 = [startDate hk_isAfterDate:dateCopy];

  if (v16)
  {
    do
    {
      v17 = [(_HKDateIntervalCollection *)self dateIntervalAtIndex:--v8];

      startDate2 = [v17 startDate];
      v19 = [startDate2 hk_isAfterDate:dateCopy];

      v12 = v17;
    }

    while ((v19 & 1) != 0);
    if (!index)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = v12;
  if (index)
  {
LABEL_8:
    *index = v8;
  }

LABEL_9:

  return v17;
}

- (id)dateIntervalForIntervalsContainingInterval:(id)interval
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  v6 = [(_HKDateIntervalCollection *)self dateIntervalContainingDate:startDate index:0];

  endDate = [intervalCopy endDate];

  v8 = [(_HKDateIntervalCollection *)self dateIntervalContainingDate:endDate index:0];

  v9 = objc_alloc(MEMORY[0x1E696AB80]);
  startDate2 = [v6 startDate];
  endDate2 = [v8 endDate];
  v12 = [v9 initWithStartDate:startDate2 endDate:endDate2];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSDate *)self->_anchorDate isEqualToDate:equalCopy->_anchorDate])
    {
      v5 = [(NSDateComponents *)self->_intervalComponents isEqual:equalCopy->_intervalComponents];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (_HKDateIntervalCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor_date"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval_components"];

  v7 = [(_HKDateIntervalCollection *)self initWithAnchorDate:v5 intervalComponents:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  anchorDate = self->_anchorDate;
  coderCopy = coder;
  [coderCopy encodeObject:anchorDate forKey:@"anchor_date"];
  [coderCopy encodeObject:self->_intervalComponents forKey:@"interval_components"];
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