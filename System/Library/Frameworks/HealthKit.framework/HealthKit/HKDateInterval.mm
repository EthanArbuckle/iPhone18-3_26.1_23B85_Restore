@interface HKDateInterval
- (BOOL)isEqual:(id)a3;
- (HKDateInterval)init;
- (HKDateInterval)initWithCoder:(id)a3;
- (HKDateInterval)initWithStartDate:(id)a3 endDate:(id)a4;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDateInterval

- (HKDateInterval)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDateInterval)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 hk_isBeforeOrEqualToDate:v8] & 1) == 0)
  {
    [HKDateInterval initWithStartDate:a2 endDate:self];
  }

  v15.receiver = self;
  v15.super_class = HKDateInterval;
  v9 = [(HKDateInterval *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    startDate = v9->_startDate;
    v9->_startDate = v10;

    v12 = [v8 copy];
    endDate = v9->_endDate;
    v9->_endDate = v12;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F06AD0F0])
  {
    startDate = self->_startDate;
    v6 = [v4 startDate];
    if ([(NSDate *)startDate isEqualToDate:v6])
    {
      endDate = self->_endDate;
      v8 = [v4 endDate];
      v9 = [(NSDate *)endDate isEqualToDate:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  startDate = self->_startDate;
  v6 = [v4 startDate];
  v7 = [(NSDate *)startDate compare:v6];

  if (!v7)
  {
    endDate = self->_endDate;
    v9 = [v4 endDate];
    v7 = [(NSDate *)endDate compare:v9];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"start"];
  [v5 encodeObject:self->_endDate forKey:@"end"];
}

- (HKDateInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"end"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || ![v5 hk_isBeforeOrEqualToDate:v6])
  {
    v8 = 0;
  }

  else
  {
    self = [(HKDateInterval *)self initWithStartDate:v5 endDate:v6];
    v8 = self;
  }

  return v8;
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDateInterval.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"[startDate hk_isBeforeOrEqualToDate:endDate]"}];
}

@end