@interface NSFileProviderDiagnosticAttributesDescriptor
- (NSFileProviderDiagnosticAttributesDescriptor)initWithCoder:(id)a3;
- (NSFileProviderDiagnosticAttributesDescriptor)initWithDocID:(unsigned int)a3;
- (NSFileProviderDiagnosticAttributesDescriptor)initWithFileID:(unint64_t)a3;
- (NSFileProviderDiagnosticAttributesDescriptor)initWithItemID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderDiagnosticAttributesDescriptor

- (NSFileProviderDiagnosticAttributesDescriptor)initWithDocID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  result = [(NSFileProviderDiagnosticAttributesDescriptor *)&v5 init];
  if (result)
  {
    result->_docID = a3;
  }

  return result;
}

- (NSFileProviderDiagnosticAttributesDescriptor)initWithFileID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  result = [(NSFileProviderDiagnosticAttributesDescriptor *)&v5 init];
  if (result)
  {
    result->_fileID = a3;
  }

  return result;
}

- (NSFileProviderDiagnosticAttributesDescriptor)initWithItemID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  v6 = [(NSFileProviderDiagnosticAttributesDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemID, a3);
  }

  return v7;
}

- (NSFileProviderDiagnosticAttributesDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NSFileProviderDiagnosticAttributesDescriptor;
  v5 = [(NSFileProviderDiagnosticAttributesDescriptor *)&v17 init];
  if (v5)
  {
    v5->_docID = [v4 decodeInt32ForKey:@"_docID"];
    v5->_fileID = [v4 decodeInt64ForKey:@"_fileID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_diagnosticAttributes"];
    diagnosticAttributes = v5->_diagnosticAttributes;
    v5->_diagnosticAttributes = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  docID = self->_docID;
  v5 = a3;
  [v5 encodeInt32:docID forKey:@"_docID"];
  [v5 encodeInt64:self->_fileID forKey:@"_fileID"];
  [v5 encodeObject:self->_itemID forKey:@"_itemID"];
  [v5 encodeObject:self->_diagnosticAttributes forKey:@"_diagnosticAttributes"];
  [v5 encodeObject:self->_error forKey:@"_error"];
}

@end