@interface UNSecurityScopedURL
- (UNSecurityScopedURL)initWithCoder:(id)coder;
- (id)_issueSandboxExtension;
- (id)initFileURLWithPath:(id)path sandboxExtensionClass:(id)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNSecurityScopedURL

- (id)initFileURLWithPath:(id)path sandboxExtensionClass:(id)class
{
  classCopy = class;
  v11.receiver = self;
  v11.super_class = UNSecurityScopedURL;
  v7 = [(UNSecurityScopedURL *)&v11 initFileURLWithPath:path];
  if (v7)
  {
    v8 = [classCopy copy];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v7;
}

- (id)_issueSandboxExtension
{
  if ([(NSString *)self->_sandboxExtensionClass length])
  {
    path = [(UNSecurityScopedURL *)self path];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [defaultManager fileExistsAtPath:path];

    if (v5)
    {
      v6 = [(NSString *)self->_sandboxExtensionClass cStringUsingEncoding:1];
      fileSystemRepresentation = [(UNSecurityScopedURL *)self fileSystemRepresentation];
      if (v6 && fileSystemRepresentation != 0)
      {
        v9 = *MEMORY[0x1E69E9BE0];
        v10 = sandbox_extension_issue_file();
        v11 = v10;
        if (!v10)
        {
LABEL_10:

          goto LABEL_12;
        }

        v12 = strnlen(v10, 0x400uLL);
        if (v12 <= 0x3FF)
        {
          v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:v12 + 1];
          goto LABEL_10;
        }
      }
    }

    v11 = 0;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UNSecurityScopedURL;
  [(UNSecurityScopedURL *)&v6 encodeWithCoder:coderCopy];
  _issueSandboxExtension = [(UNSecurityScopedURL *)self _issueSandboxExtension];
  if (!_issueSandboxExtension)
  {
    _issueSandboxExtension = MEMORY[0x1B8CC19A0](self);
  }

  [coderCopy encodeObject:_issueSandboxExtension forKey:@"sandboxExtension"];
}

- (UNSecurityScopedURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UNSecurityScopedURL;
  v5 = [(UNSecurityScopedURL *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    MEMORY[0x1B8CC1990](v5, v6);
  }

  return v5;
}

@end