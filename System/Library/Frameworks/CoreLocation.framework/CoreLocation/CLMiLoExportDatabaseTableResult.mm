@interface CLMiLoExportDatabaseTableResult
- (CLMiLoExportDatabaseTableResult)initWithCoder:(id)a3;
- (CLMiLoExportDatabaseTableResult)initWithExportDir:(id)a3 fileName:(id)a4 sandboxExtensionTok:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoExportDatabaseTableResult

- (CLMiLoExportDatabaseTableResult)initWithExportDir:(id)a3 fileName:(id)a4 sandboxExtensionTok:(id)a5
{
  v10.receiver = self;
  v10.super_class = CLMiLoExportDatabaseTableResult;
  v8 = [(CLMiLoExportDatabaseTableResult *)&v10 init];
  if (v8)
  {
    v8->_exportDir = a3;
    v8->_fileName = a4;
    v8->_sandboxExtensionTok = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoExportDatabaseTableResult;
  [(CLMiLoExportDatabaseTableResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  exportDir = self->_exportDir;
  fileName = self->_fileName;
  sandboxExtensionTok = self->_sandboxExtensionTok;

  return MEMORY[0x1EEE66B58](v4, sel_initWithExportDir_fileName_sandboxExtensionTok_);
}

- (CLMiLoExportDatabaseTableResult)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultExportDir"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultFileName"];
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultsandboxExtensionTok"];

  return MEMORY[0x1EEE66B58](self, sel_initWithExportDir_fileName_sandboxExtensionTok_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_exportDir forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultExportDir"];
  [a3 encodeObject:self->_fileName forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultFileName"];
  sandboxExtensionTok = self->_sandboxExtensionTok;

  [a3 encodeObject:sandboxExtensionTok forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultsandboxExtensionTok"];
}

@end