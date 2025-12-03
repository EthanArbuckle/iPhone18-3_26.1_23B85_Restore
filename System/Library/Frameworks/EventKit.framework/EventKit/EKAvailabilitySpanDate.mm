@interface EKAvailabilitySpanDate
+ (unsigned)valueForSpanType:(int64_t)type;
- (EKAvailabilitySpanDate)initWithDate:(id)date dateType:(int64_t)type spanType:(int64_t)spanType;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation EKAvailabilitySpanDate

- (EKAvailabilitySpanDate)initWithDate:(id)date dateType:(int64_t)type spanType:(int64_t)spanType
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = EKAvailabilitySpanDate;
  v10 = [(EKAvailabilitySpanDate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_spanDate, date);
    v11->_dateType = type;
    v11->_spanType = spanType;
  }

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  spanDate = [(EKAvailabilitySpanDate *)self spanDate];
  spanDate2 = [compareCopy spanDate];
  v7 = [spanDate isEqual:spanDate2];

  if (v7)
  {
    v8 = [objc_opt_class() valueForSpanType:{-[EKAvailabilitySpanDate spanType](self, "spanType")}];
    if (v8 > [objc_opt_class() valueForSpanType:{objc_msgSend(compareCopy, "spanType")}])
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    spanDate3 = [(EKAvailabilitySpanDate *)self spanDate];
    spanDate4 = [compareCopy spanDate];
    v9 = [spanDate3 compare:spanDate4];
  }

  return v9;
}

+ (unsigned)valueForSpanType:(int64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return dword_1A81C3C50[type];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  spanDate = [(EKAvailabilitySpanDate *)self spanDate];
  v5 = EKAvailabilitySpanTypeAsString([(EKAvailabilitySpanDate *)self spanType]);
  dateType = [(EKAvailabilitySpanDate *)self dateType];
  v7 = @"end";
  if (!dateType)
  {
    v7 = @"start";
  }

  v8 = [v3 stringWithFormat:@"%@ \t%@\t%@", spanDate, v5, v7];

  return v8;
}

@end