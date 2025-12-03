@interface RKDateRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKDateRelevantContext)initWithCoder:(id)coder;
- (RKDateRelevantContext)initWithStartDate:(id)date endDate:(id)endDate priority:(int64_t)priority;
- (id)analyticsDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RKDateRelevantContext

- (RKDateRelevantContext)initWithStartDate:(id)date endDate:(id)endDate priority:(int64_t)priority
{
  dateCopy = date;
  endDateCopy = endDate;
  v16.receiver = self;
  v16.super_class = RKDateRelevantContext;
  _init = [(RKRelevantContext *)&v16 _init];
  v12 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, date);
    objc_storeStrong(&v12->_endDate, endDate);
    priorityCopy = 2;
    if ((priority - 1) < 5)
    {
      priorityCopy = priority;
    }

    v12->_priority = priorityCopy;
    v14 = v12;
  }

  return v12;
}

- (RKDateRelevantContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];

  integerValue = [v7 integerValue];
  if (v5)
  {
    self = [(RKDateRelevantContext *)self initWithStartDate:v5 endDate:v6 priority:integerValue];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_priority];
  [coderCopy encodeObject:v6 forKey:@"priority"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startDate = self->_startDate;
      v8 = (startDate == v5->_startDate || [(NSDate *)startDate isEqual:?]) && ((endDate = self->_endDate, endDate == v5->_endDate) || [(NSDate *)endDate isEqual:?]) && self->_priority == v5->_priority;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  priority = [(RKDateRelevantContext *)self priority];
  if ((priority - 1) > 4)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278B613B8[priority - 1];
  }

  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  endDate = [(RKDateRelevantContext *)self endDate];

  startDate = [(RKDateRelevantContext *)self startDate];
  v8 = startDate;
  if (endDate)
  {
    endDate2 = [(RKDateRelevantContext *)self endDate];
    [v5 appendFormat:@"<date range: %@ to %@", v8, endDate2];
  }

  else
  {
    [v5 appendFormat:@"<date: %@", startDate];
  }

  [v5 appendFormat:@", priority: %@>", v4];
  v10 = [v5 copy];

  return v10;
}

- (id)analyticsDescription
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @".date(");
  endDate = [(RKDateRelevantContext *)self endDate];

  if (endDate)
  {
    v5 = @"interval:";
  }

  else
  {
    v5 = @"_:";
  }

  [v3 appendString:v5];
  if ([(RKDateRelevantContext *)self priority]== 2)
  {
    v6 = @"");
  }

  else
  {
    v6 = @"dateKind:");
  }

  [v3 appendString:v6];
  v7 = [v3 copy];

  return v7;
}

@end