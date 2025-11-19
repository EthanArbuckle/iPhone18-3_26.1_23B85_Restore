@interface CLMiLoDebugResponse
- (CLMiLoDebugResponse)initWithCoder:(id)a3;
- (CLMiLoDebugResponse)initWithExportDatabaseTablesResult:(id)a3 requestIdentifier:(id)a4 error:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoDebugResponse

- (CLMiLoDebugResponse)initWithExportDatabaseTablesResult:(id)a3 requestIdentifier:(id)a4 error:(id)a5
{
  v10.receiver = self;
  v10.super_class = CLMiLoDebugResponse;
  v8 = [(CLMiLoDebugResponse *)&v10 init];
  if (v8)
  {
    v8->_exportDatabaseTablesResult = a3;
    v8->_requestIdentifier = a4;
    v8->_error = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoDebugResponse;
  [(CLMiLoDebugResponse *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  exportDatabaseTablesResult = self->_exportDatabaseTablesResult;
  requestIdentifier = self->_requestIdentifier;
  error = self->_error;

  return MEMORY[0x1EEE66B58](v4, sel_initWithExportDatabaseTablesResult_requestIdentifier_error_);
}

- (CLMiLoDebugResponse)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResult"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDebugRequestIdentifier"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyDebugRequestError"];

  return MEMORY[0x1EEE66B58](self, sel_initWithExportDatabaseTablesResult_requestIdentifier_error_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_exportDatabaseTablesResult forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResult"];
  [a3 encodeObject:self->_requestIdentifier forKey:@"kCLMiLoConnectionCodingKeyDebugRequestIdentifier"];
  error = self->_error;

  [a3 encodeObject:error forKey:@"kCLMiLoConnectionCodingKeyDebugRequestError"];
}

@end