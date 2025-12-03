@interface CLKRelativeDateProgressProvider
+ (id)relativeDateProgressProviderWithStartDate:(id)date endDate:(id)endDate;
- (BOOL)isEqual:(id)equal;
- (CLKRelativeDateProgressProvider)initWithCoder:(id)coder;
- (double)_progressFractionForNow:(id)now;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKRelativeDateProgressProvider

+ (id)relativeDateProgressProviderWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_alloc_init(self);
  [v8 setStartDate:dateCopy];

  [v8 setEndDate:endDateCopy];

  return v8;
}

- (double)_progressFractionForNow:(id)now
{
  nowCopy = now;
  startDate = [(CLKRelativeDateProgressProvider *)self startDate];
  [nowCopy timeIntervalSinceDate:startDate];
  v7 = v6;

  result = 0.0;
  if (v7 >= 0.00000011920929)
  {
    endDate = [(CLKRelativeDateProgressProvider *)self endDate];
    startDate2 = [(CLKRelativeDateProgressProvider *)self startDate];
    [endDate timeIntervalSinceDate:startDate2];
    v12 = v11;

    result = 1.0;
    if (v12 >= 0.00000011920929)
    {
      result = v7 / v12;
      if (v7 / v12 > v12 + -0.00000011920929)
      {
        return 1.0;
      }
    }
  }

  return result;
}

- (void)_validate
{
  v4.receiver = self;
  v4.super_class = CLKRelativeDateProgressProvider;
  [(CLKProgressProvider *)&v4 _validate];
  if (!self->_startDate)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ startDate cannot be nil", objc_opt_class()}];
  }

  endDate = self->_endDate;
  if (!endDate)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ endDate cannot be nil", objc_opt_class()}];
    endDate = self->_endDate;
  }

  if ([(NSDate *)self->_startDate compare:endDate]== NSOrderedDescending)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ endDate cannot be older than startDate", objc_opt_class()}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CLKRelativeDateProgressProvider;
  v4 = [(CLKProgressProvider *)&v7 copyWithZone:zone];
  p_isa = &v4->super.super.isa;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_startDate, self->_startDate);
    objc_storeStrong(p_isa + 8, self->_endDate);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKRelativeDateProgressProvider;
  if ([(CLKProgressProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_startDate, equalCopy[7]))
  {
    v5 = CLKEqualObjects(self->_endDate, equalCopy[8]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = CLKRelativeDateProgressProvider;
  v3 = [(CLKProgressProvider *)&v6 hash];
  v4 = v3 + [(NSDate *)self->_startDate hash]* 100.0;
  return (v4 + [(NSDate *)self->_endDate hash]* 1000.0);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKRelativeDateProgressProvider;
  coderCopy = coder;
  [(CLKProgressProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"_startDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_endDate forKey:@"_endDate"];
}

- (CLKRelativeDateProgressProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CLKRelativeDateProgressProvider;
  v5 = [(CLKProgressProvider *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v7.receiver = self;
  v7.super_class = CLKRelativeDateProgressProvider;
  jSONObjectRepresentation = [(CLKProgressProvider *)&v7 JSONObjectRepresentation];
  jSONObjectRepresentation2 = [(NSDate *)self->_startDate JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:jSONObjectRepresentation2 forKeyedSubscript:@"startDate"];

  jSONObjectRepresentation3 = [(NSDate *)self->_endDate JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:jSONObjectRepresentation3 forKeyedSubscript:@"endDate"];

  return jSONObjectRepresentation;
}

@end