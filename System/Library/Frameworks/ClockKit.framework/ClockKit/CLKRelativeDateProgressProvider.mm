@interface CLKRelativeDateProgressProvider
+ (id)relativeDateProgressProviderWithStartDate:(id)a3 endDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CLKRelativeDateProgressProvider)initWithCoder:(id)a3;
- (double)_progressFractionForNow:(id)a3;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKRelativeDateProgressProvider

+ (id)relativeDateProgressProviderWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setStartDate:v7];

  [v8 setEndDate:v6];

  return v8;
}

- (double)_progressFractionForNow:(id)a3
{
  v4 = a3;
  v5 = [(CLKRelativeDateProgressProvider *)self startDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  result = 0.0;
  if (v7 >= 0.00000011920929)
  {
    v9 = [(CLKRelativeDateProgressProvider *)self endDate];
    v10 = [(CLKRelativeDateProgressProvider *)self startDate];
    [v9 timeIntervalSinceDate:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CLKRelativeDateProgressProvider;
  v4 = [(CLKProgressProvider *)&v7 copyWithZone:a3];
  p_isa = &v4->super.super.isa;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_startDate, self->_startDate);
    objc_storeStrong(p_isa + 8, self->_endDate);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKRelativeDateProgressProvider;
  if ([(CLKProgressProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_startDate, v4[7]))
  {
    v5 = CLKEqualObjects(self->_endDate, v4[8]);
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKRelativeDateProgressProvider;
  v4 = a3;
  [(CLKProgressProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"_startDate", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_endDate forKey:@"_endDate"];
}

- (CLKRelativeDateProgressProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLKRelativeDateProgressProvider;
  v5 = [(CLKProgressProvider *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v7.receiver = self;
  v7.super_class = CLKRelativeDateProgressProvider;
  v3 = [(CLKProgressProvider *)&v7 JSONObjectRepresentation];
  v4 = [(NSDate *)self->_startDate JSONObjectRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"startDate"];

  v5 = [(NSDate *)self->_endDate JSONObjectRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"endDate"];

  return v3;
}

@end