@interface _HKCorrelationQueryServerConfiguration
- (_HKCorrelationQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKCorrelationQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKCorrelationQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setFilterDictionary:self->_filterDictionary];
  return v4;
}

- (_HKCorrelationQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HKCorrelationQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"filterDictionary"];
    filterDictionary = v5->_filterDictionary;
    v5->_filterDictionary = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKCorrelationQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_filterDictionary forKey:{@"filterDictionary", v5.receiver, v5.super_class}];
}

@end