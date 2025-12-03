@interface _HKAnchoredObjectQueryServerConfiguration
- (_HKAnchoredObjectQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKAnchoredObjectQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKAnchoredObjectQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setAnchor:self->_anchor];
  [v4 setLimit:self->_limit];
  [v4 setIncludeDeletedObjects:self->_includeDeletedObjects];
  [v4 setIncludeAutomaticTimeZones:self->_includeAutomaticTimeZones];
  [v4 setCollectionInterval:self->_collectionInterval];
  [v4 setIncludeContributorInformation:self->_includeContributorInformation];
  [v4 setQueryDescriptors:self->_queryDescriptors];
  return v4;
}

- (_HKAnchoredObjectQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _HKAnchoredObjectQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query_anchor"];
    if (!v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
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

    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"queryDescriptors"];
    queryDescriptors = v5->_queryDescriptors;
    v5->_queryDescriptors = v14;

    v5->_includeDeletedObjects = [coderCopy decodeBoolForKey:@"includeDeleted"];
    v5->_includeAutomaticTimeZones = [coderCopy decodeBoolForKey:@"includeAutomaticTimeZones"];
    [coderCopy decodeDoubleForKey:@"collectionInterval"];
    v5->_collectionInterval = v16;
    v5->_includeContributorInformation = [coderCopy decodeBoolForKey:@"includeContributor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKAnchoredObjectQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchor forKey:{@"query_anchor", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeObject:self->_queryDescriptors forKey:@"queryDescriptors"];
  [coderCopy encodeBool:self->_includeDeletedObjects forKey:@"includeDeleted"];
  [coderCopy encodeBool:self->_includeAutomaticTimeZones forKey:@"includeAutomaticTimeZones"];
  [coderCopy encodeDouble:@"collectionInterval" forKey:self->_collectionInterval];
  [coderCopy encodeBool:self->_includeContributorInformation forKey:@"includeContributor"];
}

@end