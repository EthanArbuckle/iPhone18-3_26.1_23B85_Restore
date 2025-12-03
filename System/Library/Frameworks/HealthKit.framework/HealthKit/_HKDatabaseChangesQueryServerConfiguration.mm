@interface _HKDatabaseChangesQueryServerConfiguration
- (_HKDatabaseChangesQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKDatabaseChangesQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKDatabaseChangesQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setAnchor:self->_anchor];
  [v4 setSampleTypes:self->_sampleTypes];
  [v4 setIncludeChangeDetails:self->_includeChangeDetails];
  [v4 setChangeDetailsQueryStrategy:self->_changeDetailsQueryStrategy];
  [v4 setAnchorStrategyChangeCountLimit:self->_anchorStrategyChangeCountLimit];
  return v4;
}

- (_HKDatabaseChangesQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _HKDatabaseChangesQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryAnchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sampleTypes"];
    sampleTypes = v5->_sampleTypes;
    v5->_sampleTypes = v11;

    v5->_includeChangeDetails = [coderCopy decodeBoolForKey:@"includeChangeDetails"];
    v5->_changeDetailsQueryStrategy = [coderCopy decodeIntegerForKey:@"queryStrategy"];
    v5->_anchorStrategyChangeCountLimit = [coderCopy decodeIntegerForKey:@"anchorLimit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKDatabaseChangesQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchor forKey:{@"queryAnchor", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sampleTypes forKey:@"sampleTypes"];
  [coderCopy encodeBool:self->_includeChangeDetails forKey:@"includeChangeDetails"];
  [coderCopy encodeInteger:self->_changeDetailsQueryStrategy forKey:@"queryStrategy"];
  [coderCopy encodeInteger:self->_anchorStrategyChangeCountLimit forKey:@"anchorLimit"];
}

@end