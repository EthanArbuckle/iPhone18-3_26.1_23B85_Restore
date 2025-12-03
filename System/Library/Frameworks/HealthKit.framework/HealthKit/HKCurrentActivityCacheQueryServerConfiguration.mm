@interface HKCurrentActivityCacheQueryServerConfiguration
- (HKCurrentActivityCacheQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCurrentActivityCacheQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HKCurrentActivityCacheQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:zone];
  v5 = [(NSDateComponents *)self->_statisticsIntervalComponents copy];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

- (HKCurrentActivityCacheQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKCurrentActivityCacheQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_statisticsIntervalComponents);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    statisticsIntervalComponents = v5->_statisticsIntervalComponents;
    v5->_statisticsIntervalComponents = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HKCurrentActivityCacheQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v7 encodeWithCoder:coderCopy];
  statisticsIntervalComponents = self->_statisticsIntervalComponents;
  v6 = NSStringFromSelector(sel_statisticsIntervalComponents);
  [coderCopy encodeObject:statisticsIntervalComponents forKey:{v6, v7.receiver, v7.super_class}];
}

@end