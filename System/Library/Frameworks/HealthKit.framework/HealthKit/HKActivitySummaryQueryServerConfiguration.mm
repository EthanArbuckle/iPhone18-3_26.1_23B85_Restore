@interface HKActivitySummaryQueryServerConfiguration
- (HKActivitySummaryQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKActivitySummaryQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKActivitySummaryQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setShouldIncludeActivitySummaryPrivateProperties:self->_shouldIncludeActivitySummaryPrivateProperties];
  [v4 setShouldIncludeActivitySummaryStatistics:self->_shouldIncludeActivitySummaryStatistics];
  [v4 setOrderByDateAscending:self->_orderByDateAscending];
  [v4 setLimit:self->_limit];
  return v4;
}

- (HKActivitySummaryQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKActivitySummaryQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_shouldIncludeActivitySummaryPrivateProperties = [v4 decodeBoolForKey:@"IncludePrivateProperties"];
    v5->_shouldIncludeActivitySummaryStatistics = [v4 decodeBoolForKey:@"IncludeStatistics"];
    v5->_orderByDateAscending = [v4 decodeBoolForKey:@"OrderByDateAscending"];
    v5->_limit = [v4 decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKActivitySummaryQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_shouldIncludeActivitySummaryPrivateProperties forKey:{@"IncludePrivateProperties", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_shouldIncludeActivitySummaryStatistics forKey:@"IncludeStatistics"];
  [v4 encodeBool:self->_orderByDateAscending forKey:@"OrderByDateAscending"];
  [v4 encodeInteger:self->_limit forKey:@"Limit"];
}

@end