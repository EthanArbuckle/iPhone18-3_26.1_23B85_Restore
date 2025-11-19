@interface NSSecurityScopedURLWrapper
- (NSSecurityScopedURLWrapper)initWithCoder:(id)a3;
- (NSSecurityScopedURLWrapper)initWithProviderIdentifier:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5;
- (NSSecurityScopedURLWrapper)initWithURL:(id)a3 readonly:(BOOL)a4 extensionClass:(id)a5;
- (NSSecurityScopedURLWrapper)initWithURL:(id)a3 readonly:(BOOL)a4 scope:(id)a5;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSecurityScopedURLWrapper

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSecurityScopedURLWrapper;
  [(NSSecurityScopedURLWrapper *)&v3 dealloc];
}

- (NSSecurityScopedURLWrapper)initWithProviderIdentifier:(id)a3 domainIdentifier:(id)a4 itemIdentifier:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSSecurityScopedURLWrapper;
  v8 = [(NSSecurityScopedURLWrapper *)&v10 init];
  if (v8)
  {
    v8->_providerIdentifier = [a3 copy];
    v8->_domainIdentifier = [a4 copy];
    v8->_itemIdentifier = [a5 copy];
    v8->_readonly = 1;
  }

  return v8;
}

- (NSSecurityScopedURLWrapper)initWithURL:(id)a3 readonly:(BOOL)a4 extensionClass:(id)a5
{
  v6 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSSecurityScopedURLWrapper;
  v8 = [(NSSecurityScopedURLWrapper *)&v12 init];
  if (v8)
  {
    v8->_url = [a3 copy];
    v8->_readonly = v6;
    v11 = 0;
    if (a5)
    {
      OnlySandboxExtensionTypeForURL = [a5 UTF8String];
    }

    else if (v6)
    {
      OnlySandboxExtensionTypeForURL = _bestReadOnlySandboxExtensionTypeForURL(a3);
    }

    else
    {
      OnlySandboxExtensionTypeForURL = _bestReadWriteSandboxExtensionTypeForURL(a3);
    }

    v8->_scope = _issueSandboxExtension(a3, OnlySandboxExtensionTypeForURL, &v11);
    if (v11)
    {
      NSLog(@"Could not create sandbox extension. Error: %@", v11);
    }
  }

  return v8;
}

- (NSSecurityScopedURLWrapper)initWithURL:(id)a3 readonly:(BOOL)a4 scope:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSSecurityScopedURLWrapper;
  v8 = [(NSSecurityScopedURLWrapper *)&v10 init];
  if (v8)
  {
    v8->_url = [a3 copy];
    v8->_readonly = a4;
    v8->_scope = [a5 copy];
  }

  return v8;
}

- (id)description
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSSecurityScopedURLWrapper;
  v3 = [-[NSSecurityScopedURLWrapper description](&v5 description)];
  [v3 appendFormat:@"URL: %@\n", self->_url];
  [v3 appendFormat:@"Readonly: %d\n", self->_readonly];
  [v3 appendFormat:@"Has security scope: %d\n", self->_scope != 0];
  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:self->_readonly forKey:@"readonly"];
  url = self->_url;
  if (url)
  {
    [a3 encodeObject:url forKey:@"url"];
  }

  scope = self->_scope;
  if (scope)
  {
    [a3 encodeObject:scope forKey:@"scope"];
  }

  v7 = _CFURLPromiseCopyPhysicalURL();
  if (v7)
  {
    v8 = v7;
    [a3 encodeObject:v7 forKey:@"promiseURL"];
    v9 = MEMORY[0x1865CF9F0](v8);
    if (v9 || (v10 = _bestReadWriteSandboxExtensionTypeForURL(v8), (v9 = _issueSandboxExtension(v8, v10, 0)) != 0))
    {

      [a3 encodeObject:v9 forKey:@"promiseScope"];
    }
  }
}

- (NSSecurityScopedURLWrapper)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSSecurityScopedURLWrapper;
  v4 = [(NSSecurityScopedURLWrapper *)&v8 init];
  if (v4)
  {
    v4->_readonly = [a3 decodeBoolForKey:@"readonly"];
    v4->_url = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v4->_scope = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"promiseURL"];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"promiseScope"];
    if (v4->_url)
    {
      if (v4->_scope)
      {
        MEMORY[0x1865CF940]();
      }

      if (v5 && v6)
      {
        MEMORY[0x1865CF940](v5, v6);
      }

      _CFURLPromiseSetPhysicalURL();
    }
  }

  return v4;
}

@end