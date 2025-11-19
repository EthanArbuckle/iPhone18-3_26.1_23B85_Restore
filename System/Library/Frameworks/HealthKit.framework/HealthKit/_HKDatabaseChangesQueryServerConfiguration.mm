@interface _HKDatabaseChangesQueryServerConfiguration
- (_HKDatabaseChangesQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKDatabaseChangesQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKDatabaseChangesQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setAnchor:self->_anchor];
  [v4 setSampleTypes:self->_sampleTypes];
  [v4 setIncludeChangeDetails:self->_includeChangeDetails];
  [v4 setChangeDetailsQueryStrategy:self->_changeDetailsQueryStrategy];
  [v4 setAnchorStrategyChangeCountLimit:self->_anchorStrategyChangeCountLimit];
  return v4;
}

- (_HKDatabaseChangesQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _HKDatabaseChangesQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryAnchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"sampleTypes"];
    sampleTypes = v5->_sampleTypes;
    v5->_sampleTypes = v11;

    v5->_includeChangeDetails = [v4 decodeBoolForKey:@"includeChangeDetails"];
    v5->_changeDetailsQueryStrategy = [v4 decodeIntegerForKey:@"queryStrategy"];
    v5->_anchorStrategyChangeCountLimit = [v4 decodeIntegerForKey:@"anchorLimit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKDatabaseChangesQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchor forKey:{@"queryAnchor", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sampleTypes forKey:@"sampleTypes"];
  [v4 encodeBool:self->_includeChangeDetails forKey:@"includeChangeDetails"];
  [v4 encodeInteger:self->_changeDetailsQueryStrategy forKey:@"queryStrategy"];
  [v4 encodeInteger:self->_anchorStrategyChangeCountLimit forKey:@"anchorLimit"];
}

@end