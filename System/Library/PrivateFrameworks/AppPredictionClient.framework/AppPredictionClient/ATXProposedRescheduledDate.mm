@interface ATXProposedRescheduledDate
- (ATXProposedRescheduledDate)initWithCoder:(id)coder;
- (ATXProposedRescheduledDate)initWithDateTime:(id)time;
- (ATXProposedRescheduledDate)initWithDayComponents:(id)components;
- (ATXProposedRescheduledDate)initWithDayComponents:(id)components fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end;
- (ATXProposedRescheduledDate)initWithHourComponents:(id)components;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProposedRescheduledDate

- (ATXProposedRescheduledDate)initWithDateTime:(id)time
{
  timeCopy = time;
  v10.receiver = self;
  v10.super_class = ATXProposedRescheduledDate;
  v6 = [(ATXProposedRescheduledDate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateTime, time);
    v7->_type = 0;
    v8 = v7;
  }

  return v7;
}

- (ATXProposedRescheduledDate)initWithHourComponents:(id)components
{
  componentsCopy = components;
  v10.receiver = self;
  v10.super_class = ATXProposedRescheduledDate;
  v5 = [(ATXProposedRescheduledDate *)&v10 init];
  if (v5)
  {
    v6 = [componentsCopy copy];
    components = v5->_components;
    v5->_components = v6;

    v5->_type = 1;
    v8 = v5;
  }

  return v5;
}

- (ATXProposedRescheduledDate)initWithDayComponents:(id)components
{
  componentsCopy = components;
  v10.receiver = self;
  v10.super_class = ATXProposedRescheduledDate;
  v5 = [(ATXProposedRescheduledDate *)&v10 init];
  if (v5)
  {
    v6 = [componentsCopy copy];
    components = v5->_components;
    v5->_components = v6;

    v5->_type = 2;
    v8 = v5;
  }

  return v5;
}

- (ATXProposedRescheduledDate)initWithDayComponents:(id)components fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end
{
  componentsCopy = components;
  startCopy = start;
  endCopy = end;
  v16.receiver = self;
  v16.super_class = ATXProposedRescheduledDate;
  v11 = [(ATXProposedRescheduledDate *)&v16 init];
  if (v11)
  {
    v12 = [componentsCopy copy];
    components = v11->_components;
    v11->_components = v12;

    v11->_type = 3;
    objc_storeStrong(&v11->_fuzzyTimeRangeStart, start);
    objc_storeStrong(&v11->_fuzzyTimeRangeEnd, end);
    v14 = v11;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_dateTime forKey:@"dateTime"];
  [coderCopy encodeObject:self->_components forKey:@"components"];
  [coderCopy encodeObject:self->_fuzzyTimeRangeStart forKey:@"fuzzyTimeStart"];
  [coderCopy encodeObject:self->_fuzzyTimeRangeEnd forKey:@"fuzzyTimeEnd"];
}

- (ATXProposedRescheduledDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ATXProposedRescheduledDate;
  v5 = [(ATXProposedRescheduledDate *)&v16 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateTime"];
    dateTime = v5->_dateTime;
    v5->_dateTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"components"];
    components = v5->_components;
    v5->_components = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeStart"];
    fuzzyTimeRangeStart = v5->_fuzzyTimeRangeStart;
    v5->_fuzzyTimeRangeStart = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeEnd"];
    fuzzyTimeRangeEnd = v5->_fuzzyTimeRangeEnd;
    v5->_fuzzyTimeRangeEnd = v12;

    v14 = v5;
  }

  return v5;
}

@end