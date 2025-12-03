@interface _HKDocumentQueryServerConfiguration
- (_HKDocumentQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKDocumentQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKDocumentQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setSortDescriptors:self->_sortDescriptors];
  [v4 setLimit:self->_limit];
  [v4 setIncludeDocumentData:self->_includeDocumentData];
  return v4;
}

- (_HKDocumentQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _HKDocumentQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;

    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v5->_includeDocumentData = [coderCopy decodeBoolForKey:@"includeDocumentData"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKDocumentQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sortDescriptors forKey:{@"sortDescriptors", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeBool:self->_includeDocumentData forKey:@"includeDocumentData"];
}

@end