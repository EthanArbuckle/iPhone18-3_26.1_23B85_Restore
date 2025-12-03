@interface _HKCurrentActivitySummaryQueryServerConfiguration
- (_HKCurrentActivitySummaryQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKCurrentActivitySummaryQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _HKCurrentActivitySummaryQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_collectionIntervals copy];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

- (_HKCurrentActivitySummaryQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _HKCurrentActivitySummaryQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"intervals"];
    collectionIntervals = v5->_collectionIntervals;
    v5->_collectionIntervals = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKCurrentActivitySummaryQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_collectionIntervals forKey:{@"intervals", v5.receiver, v5.super_class}];
}

@end