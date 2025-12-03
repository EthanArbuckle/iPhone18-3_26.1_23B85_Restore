@interface _HKSampleIteratorQueryServerConfiguration
- (_HKSampleIteratorQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKSampleIteratorQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKSampleIteratorQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setQueryCursor:self->_queryCursor];
  [v4 setLimit:self->_limit];
  return v4;
}

- (_HKSampleIteratorQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HKSampleIteratorQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryCursor"];
    queryCursor = v5->_queryCursor;
    v5->_queryCursor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKSampleIteratorQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_limit forKey:{@"limit", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_queryCursor forKey:@"queryCursor"];
}

@end