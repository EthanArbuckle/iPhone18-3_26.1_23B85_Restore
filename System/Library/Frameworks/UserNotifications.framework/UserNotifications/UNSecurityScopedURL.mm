@interface UNSecurityScopedURL
- (UNSecurityScopedURL)initWithCoder:(id)a3;
- (id)_issueSandboxExtension;
- (id)initFileURLWithPath:(id)a3 sandboxExtensionClass:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNSecurityScopedURL

- (id)initFileURLWithPath:(id)a3 sandboxExtensionClass:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = UNSecurityScopedURL;
  v7 = [(UNSecurityScopedURL *)&v11 initFileURLWithPath:a3];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v7;
}

- (id)_issueSandboxExtension
{
  if ([(NSString *)self->_sandboxExtensionClass length])
  {
    v3 = [(UNSecurityScopedURL *)self path];
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      v6 = [(NSString *)self->_sandboxExtensionClass cStringUsingEncoding:1];
      v7 = [(UNSecurityScopedURL *)self fileSystemRepresentation];
      if (v6 && v7 != 0)
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UNSecurityScopedURL;
  [(UNSecurityScopedURL *)&v6 encodeWithCoder:v4];
  v5 = [(UNSecurityScopedURL *)self _issueSandboxExtension];
  if (!v5)
  {
    v5 = MEMORY[0x1B8CC19A0](self);
  }

  [v4 encodeObject:v5 forKey:@"sandboxExtension"];
}

- (UNSecurityScopedURL)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UNSecurityScopedURL;
  v5 = [(UNSecurityScopedURL *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtension"];
    MEMORY[0x1B8CC1990](v5, v6);
  }

  return v5;
}

@end