@interface _HKObserverQueryServerConfiguration
- (_HKObserverQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKObserverQueryServerConfiguration

- (_HKObserverQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _HKObserverQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_observeUnfrozenSeries = [coderCopy decodeBoolForKey:@"observe_unfrozen"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"queryDescriptors"];
    queryDescriptors = v5->_queryDescriptors;
    v5->_queryDescriptors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKObserverQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_observeUnfrozenSeries forKey:{@"observe_unfrozen", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_queryDescriptors forKey:@"queryDescriptors"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKObserverQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setObserveUnfrozenSeries:self->_observeUnfrozenSeries];
  [v4 setQueryDescriptors:self->_queryDescriptors];
  return v4;
}

@end