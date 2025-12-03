@interface NSSecurityScopedURLWrapper
- (NSSecurityScopedURLWrapper)initWithCoder:(id)coder;
- (NSSecurityScopedURLWrapper)initWithProviderIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier itemIdentifier:(id)itemIdentifier;
- (NSSecurityScopedURLWrapper)initWithURL:(id)l readonly:(BOOL)readonly extensionClass:(id)class;
- (NSSecurityScopedURLWrapper)initWithURL:(id)l readonly:(BOOL)readonly scope:(id)scope;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSecurityScopedURLWrapper

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSecurityScopedURLWrapper;
  [(NSSecurityScopedURLWrapper *)&v3 dealloc];
}

- (NSSecurityScopedURLWrapper)initWithProviderIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier itemIdentifier:(id)itemIdentifier
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSSecurityScopedURLWrapper;
  v8 = [(NSSecurityScopedURLWrapper *)&v10 init];
  if (v8)
  {
    v8->_providerIdentifier = [identifier copy];
    v8->_domainIdentifier = [domainIdentifier copy];
    v8->_itemIdentifier = [itemIdentifier copy];
    v8->_readonly = 1;
  }

  return v8;
}

- (NSSecurityScopedURLWrapper)initWithURL:(id)l readonly:(BOOL)readonly extensionClass:(id)class
{
  readonlyCopy = readonly;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSSecurityScopedURLWrapper;
  v8 = [(NSSecurityScopedURLWrapper *)&v12 init];
  if (v8)
  {
    v8->_url = [l copy];
    v8->_readonly = readonlyCopy;
    v11 = 0;
    if (class)
    {
      OnlySandboxExtensionTypeForURL = [class UTF8String];
    }

    else if (readonlyCopy)
    {
      OnlySandboxExtensionTypeForURL = _bestReadOnlySandboxExtensionTypeForURL(l);
    }

    else
    {
      OnlySandboxExtensionTypeForURL = _bestReadWriteSandboxExtensionTypeForURL(l);
    }

    v8->_scope = _issueSandboxExtension(l, OnlySandboxExtensionTypeForURL, &v11);
    if (v11)
    {
      NSLog(@"Could not create sandbox extension. Error: %@", v11);
    }
  }

  return v8;
}

- (NSSecurityScopedURLWrapper)initWithURL:(id)l readonly:(BOOL)readonly scope:(id)scope
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSSecurityScopedURLWrapper;
  v8 = [(NSSecurityScopedURLWrapper *)&v10 init];
  if (v8)
  {
    v8->_url = [l copy];
    v8->_readonly = readonly;
    v8->_scope = [scope copy];
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:self->_readonly forKey:@"readonly"];
  url = self->_url;
  if (url)
  {
    [coder encodeObject:url forKey:@"url"];
  }

  scope = self->_scope;
  if (scope)
  {
    [coder encodeObject:scope forKey:@"scope"];
  }

  v7 = _CFURLPromiseCopyPhysicalURL();
  if (v7)
  {
    v8 = v7;
    [coder encodeObject:v7 forKey:@"promiseURL"];
    v9 = MEMORY[0x1865CF9F0](v8);
    if (v9 || (v10 = _bestReadWriteSandboxExtensionTypeForURL(v8), (v9 = _issueSandboxExtension(v8, v10, 0)) != 0))
    {

      [coder encodeObject:v9 forKey:@"promiseScope"];
    }
  }
}

- (NSSecurityScopedURLWrapper)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSSecurityScopedURLWrapper;
  v4 = [(NSSecurityScopedURLWrapper *)&v8 init];
  if (v4)
  {
    v4->_readonly = [coder decodeBoolForKey:@"readonly"];
    v4->_url = [coder decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v4->_scope = [coder decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"promiseURL"];
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"promiseScope"];
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