@interface _HKCurrentActivitySummaryQueryServerConfiguration
- (_HKCurrentActivitySummaryQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKCurrentActivitySummaryQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _HKCurrentActivitySummaryQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_collectionIntervals copy];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

- (_HKCurrentActivitySummaryQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HKCurrentActivitySummaryQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"intervals"];
    collectionIntervals = v5->_collectionIntervals;
    v5->_collectionIntervals = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKCurrentActivitySummaryQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_collectionIntervals forKey:{@"intervals", v5.receiver, v5.super_class}];
}

@end