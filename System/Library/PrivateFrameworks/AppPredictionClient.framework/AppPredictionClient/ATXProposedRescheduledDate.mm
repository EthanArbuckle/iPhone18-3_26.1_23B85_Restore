@interface ATXProposedRescheduledDate
- (ATXProposedRescheduledDate)initWithCoder:(id)a3;
- (ATXProposedRescheduledDate)initWithDateTime:(id)a3;
- (ATXProposedRescheduledDate)initWithDayComponents:(id)a3;
- (ATXProposedRescheduledDate)initWithDayComponents:(id)a3 fuzzyTimeRangeStart:(id)a4 fuzzyTimeRangeEnd:(id)a5;
- (ATXProposedRescheduledDate)initWithHourComponents:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProposedRescheduledDate

- (ATXProposedRescheduledDate)initWithDateTime:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXProposedRescheduledDate;
  v6 = [(ATXProposedRescheduledDate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateTime, a3);
    v7->_type = 0;
    v8 = v7;
  }

  return v7;
}

- (ATXProposedRescheduledDate)initWithHourComponents:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXProposedRescheduledDate;
  v5 = [(ATXProposedRescheduledDate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    components = v5->_components;
    v5->_components = v6;

    v5->_type = 1;
    v8 = v5;
  }

  return v5;
}

- (ATXProposedRescheduledDate)initWithDayComponents:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXProposedRescheduledDate;
  v5 = [(ATXProposedRescheduledDate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    components = v5->_components;
    v5->_components = v6;

    v5->_type = 2;
    v8 = v5;
  }

  return v5;
}

- (ATXProposedRescheduledDate)initWithDayComponents:(id)a3 fuzzyTimeRangeStart:(id)a4 fuzzyTimeRangeEnd:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ATXProposedRescheduledDate;
  v11 = [(ATXProposedRescheduledDate *)&v16 init];
  if (v11)
  {
    v12 = [v8 copy];
    components = v11->_components;
    v11->_components = v12;

    v11->_type = 3;
    objc_storeStrong(&v11->_fuzzyTimeRangeStart, a4);
    objc_storeStrong(&v11->_fuzzyTimeRangeEnd, a5);
    v14 = v11;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_dateTime forKey:@"dateTime"];
  [v5 encodeObject:self->_components forKey:@"components"];
  [v5 encodeObject:self->_fuzzyTimeRangeStart forKey:@"fuzzyTimeStart"];
  [v5 encodeObject:self->_fuzzyTimeRangeEnd forKey:@"fuzzyTimeEnd"];
}

- (ATXProposedRescheduledDate)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ATXProposedRescheduledDate;
  v5 = [(ATXProposedRescheduledDate *)&v16 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateTime"];
    dateTime = v5->_dateTime;
    v5->_dateTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"components"];
    components = v5->_components;
    v5->_components = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeStart"];
    fuzzyTimeRangeStart = v5->_fuzzyTimeRangeStart;
    v5->_fuzzyTimeRangeStart = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeEnd"];
    fuzzyTimeRangeEnd = v5->_fuzzyTimeRangeEnd;
    v5->_fuzzyTimeRangeEnd = v12;

    v14 = v5;
  }

  return v5;
}

@end