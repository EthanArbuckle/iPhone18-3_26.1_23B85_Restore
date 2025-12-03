@interface HKDateInterval
- (BOOL)isEqual:(id)equal;
- (HKDateInterval)init;
- (HKDateInterval)initWithCoder:(id)coder;
- (HKDateInterval)initWithStartDate:(id)date endDate:(id)endDate;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
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

- (HKDateInterval)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (([dateCopy hk_isBeforeOrEqualToDate:endDateCopy] & 1) == 0)
  {
    [HKDateInterval initWithStartDate:a2 endDate:self];
  }

  v15.receiver = self;
  v15.super_class = HKDateInterval;
  v9 = [(HKDateInterval *)&v15 init];
  if (v9)
  {
    v10 = [dateCopy copy];
    startDate = v9->_startDate;
    v9->_startDate = v10;

    v12 = [endDateCopy copy];
    endDate = v9->_endDate;
    v9->_endDate = v12;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F06AD0F0])
  {
    startDate = self->_startDate;
    startDate = [equalCopy startDate];
    if ([(NSDate *)startDate isEqualToDate:startDate])
    {
      endDate = self->_endDate;
      endDate = [equalCopy endDate];
      v9 = [(NSDate *)endDate isEqualToDate:endDate];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  startDate = self->_startDate;
  startDate = [compareCopy startDate];
  v7 = [(NSDate *)startDate compare:startDate];

  if (!v7)
  {
    endDate = self->_endDate;
    endDate = [compareCopy endDate];
    v7 = [(NSDate *)endDate compare:endDate];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"start"];
  [coderCopy encodeObject:self->_endDate forKey:@"end"];
}

- (HKDateInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"end"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(HKDateInterval *)self initWithStartDate:v5 endDate:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initWithStartDate:(uint64_t)a1 endDate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDateInterval.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"[startDate hk_isBeforeOrEqualToDate:endDate]"}];
}

@end