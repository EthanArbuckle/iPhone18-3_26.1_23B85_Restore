@interface ARQLSandboxingURLWrapper
+ (id)wrapperWithURL:(id)a3 readonly:(BOOL)a4 error:(id *)a5;
+ (void)assembleURL:(id)a3 sandbox:(id)a4 physicalURL:(id)a5 physicalSandbox:(id)a6;
- (ARQLSandboxingURLWrapper)initWithCoder:(id)a3;
- (id)issueSandboxExtensionForURL:(id)a3 extensionClass:(const char *)a4 report:(BOOL)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARQLSandboxingURLWrapper

+ (id)wrapperWithURL:(id)a3 readonly:(BOOL)a4 error:(id *)a5
{
  v5 = MEMORY[0x277D861B8];
  if (!a4)
  {
    v5 = MEMORY[0x277D861C0];
  }

  return [a1 wrapperWithURL:a3 extensionClass:*v5 error:a5];
}

- (id)issueSandboxExtensionForURL:(id)a3 extensionClass:(const char *)a4 report:(BOOL)a5 error:(id *)a6
{
  v7 = a3;
  v8 = [v7 path];
  v9 = [v7 hasDirectoryPath];

  if (v9)
  {
    v10 = [v8 stringByAppendingString:@"/"];

    v8 = v10;
  }

  v11 = *MEMORY[0x277D861F0];
  v12 = *MEMORY[0x277D861F8];
  [v8 fileSystemRepresentation];
  v13 = sandbox_extension_issue_file();
  if (v13)
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:strlen(v13) + 1 freeWhenDone:1];
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ARQLSandboxingURLWrapper" code:1 userInfo:0];
    *a6 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_url forKey:@"NSURL"];
  [v5 encodeObject:self->_scope forKey:@"NSURLScope"];
  promiseURL = self->_promiseURL;
  if (promiseURL)
  {
    [v5 encodeObject:promiseURL forKey:@"NSPromise"];
    [v5 encodeObject:self->_promiseScope forKey:@"NSPromiseScope"];
  }
}

+ (void)assembleURL:(id)a3 sandbox:(id)a4 physicalURL:(id)a5 physicalSandbox:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v12)
  {
    if (v9)
    {
      MEMORY[0x23EE8CB30](v12, v9);
    }

    if (v10 && v11)
    {
      MEMORY[0x23EE8CB30](v10, v11);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (ARQLSandboxingURLWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ARQLSandboxingURLWrapper;
  v5 = [(ARQLSandboxingURLWrapper *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];
    [objc_opt_class() assembleURL:v6 sandbox:v8 physicalURL:v7 physicalSandbox:v9];
    url = v5->_url;
    v5->_url = v6;
    v11 = v6;

    scope = v5->_scope;
    v5->_scope = v8;
    v13 = v8;

    promiseURL = v5->_promiseURL;
    v5->_promiseURL = v7;
    v15 = v7;

    promiseScope = v5->_promiseScope;
    v5->_promiseScope = v9;
  }

  return v5;
}

@end