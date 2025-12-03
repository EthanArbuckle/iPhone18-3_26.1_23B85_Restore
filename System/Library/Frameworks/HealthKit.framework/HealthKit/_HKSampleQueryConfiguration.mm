@interface _HKSampleQueryConfiguration
- (_HKSampleQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKSampleQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKSampleQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setSortDescriptors:self->_sortDescriptors];
  [v4 setLimit:self->_limit];
  [v4 setIncludeAutomaticTimeZones:self->_includeAutomaticTimeZones];
  [v4 setIncludeContributorInformation:self->_includeContributorInformation];
  [v4 setQueryDescriptors:self->_queryDescriptors];
  return v4;
}

- (_HKSampleQueryConfiguration)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = _HKSampleQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"queryDescriptors"];
    queryDescriptors = v5->_queryDescriptors;
    v5->_queryDescriptors = v14;

    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v5->_includeAutomaticTimeZones = [coderCopy decodeBoolForKey:@"includeAutomaticTimeZones"];
    v5->_includeContributorInformation = [coderCopy decodeBoolForKey:@"includeContributor"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v5->_sortDescriptors;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v23 + 1) + 8 * v20++) allowEvaluation];
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKSampleQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sortDescriptors forKey:{@"sortDescriptors", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_queryDescriptors forKey:@"queryDescriptors"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeBool:self->_includeAutomaticTimeZones forKey:@"includeAutomaticTimeZones"];
  [coderCopy encodeBool:self->_includeContributorInformation forKey:@"includeContributor"];
}

@end