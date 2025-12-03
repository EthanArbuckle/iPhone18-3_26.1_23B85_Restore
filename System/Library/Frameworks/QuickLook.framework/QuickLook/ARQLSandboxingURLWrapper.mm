@interface ARQLSandboxingURLWrapper
+ (id)wrapperWithURL:(id)l readonly:(BOOL)readonly error:(id *)error;
+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox;
- (ARQLSandboxingURLWrapper)initWithCoder:(id)coder;
- (id)issueSandboxExtensionForURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARQLSandboxingURLWrapper

+ (id)wrapperWithURL:(id)l readonly:(BOOL)readonly error:(id *)error
{
  v5 = MEMORY[0x277D861B8];
  if (!readonly)
  {
    v5 = MEMORY[0x277D861C0];
  }

  return [self wrapperWithURL:l extensionClass:*v5 error:error];
}

- (id)issueSandboxExtensionForURL:(id)l extensionClass:(const char *)class report:(BOOL)report error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  hasDirectoryPath = [lCopy hasDirectoryPath];

  if (hasDirectoryPath)
  {
    v10 = [path stringByAppendingString:@"/"];

    path = v10;
  }

  v11 = *MEMORY[0x277D861F0];
  v12 = *MEMORY[0x277D861F8];
  [path fileSystemRepresentation];
  v13 = sandbox_extension_issue_file();
  if (v13)
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:strlen(v13) + 1 freeWhenDone:1];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ARQLSandboxingURLWrapper" code:1 userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_url forKey:@"NSURL"];
  [coderCopy encodeObject:self->_scope forKey:@"NSURLScope"];
  promiseURL = self->_promiseURL;
  if (promiseURL)
  {
    [coderCopy encodeObject:promiseURL forKey:@"NSPromise"];
    [coderCopy encodeObject:self->_promiseScope forKey:@"NSPromiseScope"];
  }
}

+ (void)assembleURL:(id)l sandbox:(id)sandbox physicalURL:(id)rL physicalSandbox:(id)physicalSandbox
{
  lCopy = l;
  sandboxCopy = sandbox;
  rLCopy = rL;
  physicalSandboxCopy = physicalSandbox;
  if (lCopy)
  {
    if (sandboxCopy)
    {
      MEMORY[0x23EE8CB30](lCopy, sandboxCopy);
    }

    if (rLCopy && physicalSandboxCopy)
    {
      MEMORY[0x23EE8CB30](rLCopy, physicalSandboxCopy);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (ARQLSandboxingURLWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ARQLSandboxingURLWrapper;
  v5 = [(ARQLSandboxingURLWrapper *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];
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