@interface CLMiLoDebugResponse
- (CLMiLoDebugResponse)initWithCoder:(id)coder;
- (CLMiLoDebugResponse)initWithExportDatabaseTablesResult:(id)result requestIdentifier:(id)identifier error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoDebugResponse

- (CLMiLoDebugResponse)initWithExportDatabaseTablesResult:(id)result requestIdentifier:(id)identifier error:(id)error
{
  v10.receiver = self;
  v10.super_class = CLMiLoDebugResponse;
  v8 = [(CLMiLoDebugResponse *)&v10 init];
  if (v8)
  {
    v8->_exportDatabaseTablesResult = result;
    v8->_requestIdentifier = identifier;
    v8->_error = error;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoDebugResponse;
  [(CLMiLoDebugResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  exportDatabaseTablesResult = self->_exportDatabaseTablesResult;
  requestIdentifier = self->_requestIdentifier;
  error = self->_error;

  return MEMORY[0x1EEE66B58](v4, sel_initWithExportDatabaseTablesResult_requestIdentifier_error_);
}

- (CLMiLoDebugResponse)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResult"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDebugRequestIdentifier"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDebugRequestError"];

  return MEMORY[0x1EEE66B58](self, sel_initWithExportDatabaseTablesResult_requestIdentifier_error_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_exportDatabaseTablesResult forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResult"];
  [coder encodeObject:self->_requestIdentifier forKey:@"kCLMiLoConnectionCodingKeyDebugRequestIdentifier"];
  error = self->_error;

  [coder encodeObject:error forKey:@"kCLMiLoConnectionCodingKeyDebugRequestError"];
}

@end