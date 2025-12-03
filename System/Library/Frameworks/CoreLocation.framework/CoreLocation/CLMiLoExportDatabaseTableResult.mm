@interface CLMiLoExportDatabaseTableResult
- (CLMiLoExportDatabaseTableResult)initWithCoder:(id)coder;
- (CLMiLoExportDatabaseTableResult)initWithExportDir:(id)dir fileName:(id)name sandboxExtensionTok:(id)tok;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoExportDatabaseTableResult

- (CLMiLoExportDatabaseTableResult)initWithExportDir:(id)dir fileName:(id)name sandboxExtensionTok:(id)tok
{
  v10.receiver = self;
  v10.super_class = CLMiLoExportDatabaseTableResult;
  v8 = [(CLMiLoExportDatabaseTableResult *)&v10 init];
  if (v8)
  {
    v8->_exportDir = dir;
    v8->_fileName = name;
    v8->_sandboxExtensionTok = tok;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoExportDatabaseTableResult;
  [(CLMiLoExportDatabaseTableResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  exportDir = self->_exportDir;
  fileName = self->_fileName;
  sandboxExtensionTok = self->_sandboxExtensionTok;

  return MEMORY[0x1EEE66B58](v4, sel_initWithExportDir_fileName_sandboxExtensionTok_);
}

- (CLMiLoExportDatabaseTableResult)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultExportDir"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultFileName"];
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultsandboxExtensionTok"];

  return MEMORY[0x1EEE66B58](self, sel_initWithExportDir_fileName_sandboxExtensionTok_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_exportDir forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultExportDir"];
  [coder encodeObject:self->_fileName forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultFileName"];
  sandboxExtensionTok = self->_sandboxExtensionTok;

  [coder encodeObject:sandboxExtensionTok forKey:@"kCLMiLoConnectionCodingKeyExportDatabaseTableResultsandboxExtensionTok"];
}

@end