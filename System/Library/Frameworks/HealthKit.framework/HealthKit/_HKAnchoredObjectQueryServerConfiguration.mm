@interface _HKAnchoredObjectQueryServerConfiguration
- (_HKAnchoredObjectQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKAnchoredObjectQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKAnchoredObjectQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setAnchor:self->_anchor];
  [v4 setLimit:self->_limit];
  [v4 setIncludeDeletedObjects:self->_includeDeletedObjects];
  [v4 setIncludeAutomaticTimeZones:self->_includeAutomaticTimeZones];
  [v4 setCollectionInterval:self->_collectionInterval];
  [v4 setIncludeContributorInformation:self->_includeContributorInformation];
  [v4 setQueryDescriptors:self->_queryDescriptors];
  return v4;
}

- (_HKAnchoredObjectQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _HKAnchoredObjectQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query_anchor"];
    if (!v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
      v8 = v7;
      if (v7)
      {
        v6 = +[HKQueryAnchor anchorFromValue:](HKQueryAnchor, "anchorFromValue:", [v7 unsignedIntegerValue]);
      }

      else
      {
        v6 = 0;
      }
    }

    anchor = v5->_anchor;
    v5->_anchor = v6;
    v10 = v6;

    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"queryDescriptors"];
    queryDescriptors = v5->_queryDescriptors;
    v5->_queryDescriptors = v14;

    v5->_includeDeletedObjects = [v4 decodeBoolForKey:@"includeDeleted"];
    v5->_includeAutomaticTimeZones = [v4 decodeBoolForKey:@"includeAutomaticTimeZones"];
    [v4 decodeDoubleForKey:@"collectionInterval"];
    v5->_collectionInterval = v16;
    v5->_includeContributorInformation = [v4 decodeBoolForKey:@"includeContributor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKAnchoredObjectQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchor forKey:{@"query_anchor", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_limit forKey:@"limit"];
  [v4 encodeObject:self->_queryDescriptors forKey:@"queryDescriptors"];
  [v4 encodeBool:self->_includeDeletedObjects forKey:@"includeDeleted"];
  [v4 encodeBool:self->_includeAutomaticTimeZones forKey:@"includeAutomaticTimeZones"];
  [v4 encodeDouble:@"collectionInterval" forKey:self->_collectionInterval];
  [v4 encodeBool:self->_includeContributorInformation forKey:@"includeContributor"];
}

@end