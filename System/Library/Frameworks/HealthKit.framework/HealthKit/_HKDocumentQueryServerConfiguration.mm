@interface _HKDocumentQueryServerConfiguration
- (_HKDocumentQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKDocumentQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKDocumentQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setSortDescriptors:self->_sortDescriptors];
  [v4 setLimit:self->_limit];
  [v4 setIncludeDocumentData:self->_includeDocumentData];
  return v4;
}

- (_HKDocumentQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _HKDocumentQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;

    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
    v5->_includeDocumentData = [v4 decodeBoolForKey:@"includeDocumentData"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKDocumentQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sortDescriptors forKey:{@"sortDescriptors", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_limit forKey:@"limit"];
  [v4 encodeBool:self->_includeDocumentData forKey:@"includeDocumentData"];
}

@end