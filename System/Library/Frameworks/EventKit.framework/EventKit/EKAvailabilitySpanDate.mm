@interface EKAvailabilitySpanDate
+ (unsigned)valueForSpanType:(int64_t)a3;
- (EKAvailabilitySpanDate)initWithDate:(id)a3 dateType:(int64_t)a4 spanType:(int64_t)a5;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation EKAvailabilitySpanDate

- (EKAvailabilitySpanDate)initWithDate:(id)a3 dateType:(int64_t)a4 spanType:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EKAvailabilitySpanDate;
  v10 = [(EKAvailabilitySpanDate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_spanDate, a3);
    v11->_dateType = a4;
    v11->_spanType = a5;
  }

  return v11;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(EKAvailabilitySpanDate *)self spanDate];
  v6 = [v4 spanDate];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [objc_opt_class() valueForSpanType:{-[EKAvailabilitySpanDate spanType](self, "spanType")}];
    if (v8 > [objc_opt_class() valueForSpanType:{objc_msgSend(v4, "spanType")}])
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
    v10 = [(EKAvailabilitySpanDate *)self spanDate];
    v11 = [v4 spanDate];
    v9 = [v10 compare:v11];
  }

  return v9;
}

+ (unsigned)valueForSpanType:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1A81C3C50[a3];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EKAvailabilitySpanDate *)self spanDate];
  v5 = EKAvailabilitySpanTypeAsString([(EKAvailabilitySpanDate *)self spanType]);
  v6 = [(EKAvailabilitySpanDate *)self dateType];
  v7 = @"end";
  if (!v6)
  {
    v7 = @"start";
  }

  v8 = [v3 stringWithFormat:@"%@ \t%@\t%@", v4, v5, v7];

  return v8;
}

@end