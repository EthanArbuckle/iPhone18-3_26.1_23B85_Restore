@interface NSFileProviderDiagnosticAttributesDescriptor
- (NSFileProviderDiagnosticAttributesDescriptor)initWithCoder:(id)coder;
- (NSFileProviderDiagnosticAttributesDescriptor)initWithDocID:(unsigned int)d;
- (NSFileProviderDiagnosticAttributesDescriptor)initWithFileID:(unint64_t)d;
- (NSFileProviderDiagnosticAttributesDescriptor)initWithItemID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderDiagnosticAttributesDescriptor

- (NSFileProviderDiagnosticAttributesDescriptor)initWithDocID:(unsigned int)d
{
  v5.receiver = self;
  v5.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  result = [(NSFileProviderDiagnosticAttributesDescriptor *)&v5 init];
  if (result)
  {
    result->_docID = d;
  }

  return result;
}

- (NSFileProviderDiagnosticAttributesDescriptor)initWithFileID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  result = [(NSFileProviderDiagnosticAttributesDescriptor *)&v5 init];
  if (result)
  {
    result->_fileID = d;
  }

  return result;
}

- (NSFileProviderDiagnosticAttributesDescriptor)initWithItemID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  v6 = [(NSFileProviderDiagnosticAttributesDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemID, d);
  }

  return v7;
}

- (NSFileProviderDiagnosticAttributesDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  v5 = [(NSFileProviderDiagnosticAttributesDescriptor *)&v17 init];
  if (v5)
  {
    v5->_docID = [coderCopy decodeInt32ForKey:@"_docID"];
    v5->_fileID = [coderCopy decodeInt64ForKey:@"_fileID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  docID = self->_docID;
  coderCopy = coder;
  [coderCopy encodeInt32:docID forKey:@"_docID"];
  [coderCopy encodeInt64:self->_fileID forKey:@"_fileID"];
  [coderCopy encodeObject:self->_itemID forKey:@"_itemID"];
  [coderCopy encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [coderCopy encodeObject:self->_error forKey:@"_error"];
}

@end