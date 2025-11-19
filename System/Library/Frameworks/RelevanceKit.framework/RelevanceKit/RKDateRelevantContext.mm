@interface RKDateRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKDateRelevantContext)initWithCoder:(id)a3;
- (RKDateRelevantContext)initWithStartDate:(id)a3 endDate:(id)a4 priority:(int64_t)a5;
- (id)analyticsDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RKDateRelevantContext

- (RKDateRelevantContext)initWithStartDate:(id)a3 endDate:(id)a4 priority:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = RKDateRelevantContext;
  v11 = [(RKRelevantContext *)&v16 _init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 1, a3);
    objc_storeStrong(&v12->_endDate, a4);
    v13 = 2;
    if ((a5 - 1) < 5)
    {
      v13 = a5;
    }

    v12->_priority = v13;
    v14 = v12;
  }

  return v12;
}

- (RKDateRelevantContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];

  v8 = [v7 integerValue];
  if (v5)
  {
    self = [(RKDateRelevantContext *)self initWithStartDate:v5 endDate:v6 priority:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_priority];
  [v5 encodeObject:v6 forKey:@"priority"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v3 = [(RKDateRelevantContext *)self priority];
  if ((v3 - 1) > 4)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278B613B8[v3 - 1];
  }

  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = [(RKDateRelevantContext *)self endDate];

  v7 = [(RKDateRelevantContext *)self startDate];
  v8 = v7;
  if (v6)
  {
    v9 = [(RKDateRelevantContext *)self endDate];
    [v5 appendFormat:@"<date range: %@ to %@", v8, v9];
  }

  else
  {
    [v5 appendFormat:@"<date: %@", v7];
  }

  [v5 appendFormat:@", priority: %@>", v4];
  v10 = [v5 copy];

  return v10;
}

- (id)analyticsDescription
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @".date(");
  v4 = [(RKDateRelevantContext *)self endDate];

  if (v4)
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