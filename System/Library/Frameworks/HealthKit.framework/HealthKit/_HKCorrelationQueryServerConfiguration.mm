@interface _HKCorrelationQueryServerConfiguration
- (_HKCorrelationQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKCorrelationQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKCorrelationQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setFilterDictionary:self->_filterDictionary];
  return v4;
}

- (_HKCorrelationQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _HKCorrelationQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"filterDictionary"];
    filterDictionary = v5->_filterDictionary;
    v5->_filterDictionary = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKCorrelationQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_filterDictionary forKey:{@"filterDictionary", v5.receiver, v5.super_class}];
}

@end