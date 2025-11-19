@interface HKCurrentActivityCacheQueryServerConfiguration
- (HKCurrentActivityCacheQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCurrentActivityCacheQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = HKCurrentActivityCacheQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:a3];
  v5 = [(NSDateComponents *)self->_statisticsIntervalComponents copy];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

- (HKCurrentActivityCacheQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKCurrentActivityCacheQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_statisticsIntervalComponents);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    statisticsIntervalComponents = v5->_statisticsIntervalComponents;
    v5->_statisticsIntervalComponents = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HKCurrentActivityCacheQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v7 encodeWithCoder:v4];
  statisticsIntervalComponents = self->_statisticsIntervalComponents;
  v6 = NSStringFromSelector(sel_statisticsIntervalComponents);
  [v4 encodeObject:statisticsIntervalComponents forKey:{v6, v7.receiver, v7.super_class}];
}

@end