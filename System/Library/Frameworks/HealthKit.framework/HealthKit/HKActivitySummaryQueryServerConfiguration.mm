@interface HKActivitySummaryQueryServerConfiguration
- (HKActivitySummaryQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKActivitySummaryQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKActivitySummaryQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setShouldIncludeActivitySummaryPrivateProperties:self->_shouldIncludeActivitySummaryPrivateProperties];
  [v4 setShouldIncludeActivitySummaryStatistics:self->_shouldIncludeActivitySummaryStatistics];
  [v4 setOrderByDateAscending:self->_orderByDateAscending];
  [v4 setLimit:self->_limit];
  return v4;
}

- (HKActivitySummaryQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKActivitySummaryQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldIncludeActivitySummaryPrivateProperties = [coderCopy decodeBoolForKey:@"IncludePrivateProperties"];
    v5->_shouldIncludeActivitySummaryStatistics = [coderCopy decodeBoolForKey:@"IncludeStatistics"];
    v5->_orderByDateAscending = [coderCopy decodeBoolForKey:@"OrderByDateAscending"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKActivitySummaryQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_shouldIncludeActivitySummaryPrivateProperties forKey:{@"IncludePrivateProperties", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_shouldIncludeActivitySummaryStatistics forKey:@"IncludeStatistics"];
  [coderCopy encodeBool:self->_orderByDateAscending forKey:@"OrderByDateAscending"];
  [coderCopy encodeInteger:self->_limit forKey:@"Limit"];
}

@end