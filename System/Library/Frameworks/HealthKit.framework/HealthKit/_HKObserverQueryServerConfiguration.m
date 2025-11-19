@interface _HKObserverQueryServerConfiguration
- (_HKObserverQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKObserverQueryServerConfiguration

- (_HKObserverQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _HKObserverQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_observeUnfrozenSeries = [v4 decodeBoolForKey:@"observe_unfrozen"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"queryDescriptors"];
    queryDescriptors = v5->_queryDescriptors;
    v5->_queryDescriptors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKObserverQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_observeUnfrozenSeries forKey:{@"observe_unfrozen", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_queryDescriptors forKey:@"queryDescriptors"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKObserverQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setObserveUnfrozenSeries:self->_observeUnfrozenSeries];
  [v4 setQueryDescriptors:self->_queryDescriptors];
  return v4;
}

@end