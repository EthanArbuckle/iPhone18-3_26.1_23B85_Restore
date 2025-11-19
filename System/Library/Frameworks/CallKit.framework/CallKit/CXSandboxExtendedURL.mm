@interface CXSandboxExtendedURL
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSandboxExtendedURL:(id)a3;
- (CXSandboxExtendedURL)initWithCoder:(id)a3;
- (CXSandboxExtendedURL)initWithURL:(id)a3;
- (NSURL)URL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)URL;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXSandboxExtendedURL

- (CXSandboxExtendedURL)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CXSandboxExtendedURL;
  v6 = [(CXSandboxExtendedURL *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  URL = self->_URL;
  v6 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  v7 = [v3 stringWithFormat:@"<%@ %p URL=%@ sandboxExtensionToken=%@ sandboxExtensionHandle=%lld>", v4, self, URL, v6, -[CXSandboxExtendedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")];

  return v7;
}

- (NSURL)URL
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  if (v3)
  {
    v4 = v3;
    v5 = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];

    if (!v5)
    {
      v6 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
      [v6 UTF8String];
      [(CXSandboxExtendedURL *)self setSandboxExtensionHandle:sandbox_extension_consume()];

      v7 = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];
      v8 = CXDefaultLog();
      v9 = v8;
      if (v7 < 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(CXSandboxExtendedURL *)self URL];
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        URL = self->_URL;
        v14 = 138412290;
        v15 = URL;
        _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "Successfully consumed sandbox extension for URL %@", &v14, 0xCu);
      }

      [(CXSandboxExtendedURL *)self setSandboxExtensionToken:0];
    }
  }

  v11 = self->_URL;
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXSandboxExtendedURL *)self isEqualToSandboxExtendedURL:v4];

  return v5;
}

- (BOOL)isEqualToSandboxExtendedURL:(id)a3
{
  v4 = a3;
  v5 = [(CXSandboxExtendedURL *)self URL];
  v6 = [v4 URL];
  if (v5 | v6 && ![v5 isEqual:v6])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  v8 = [v4 sandboxExtensionToken];
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (([v7 isEqualToString:v8] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];
  v10 = v9 == [v4 sandboxExtensionHandle];
LABEL_8:

LABEL_10:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(CXSandboxExtendedURL *)self URL];
  v4 = [v3 hash];
  v5 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];

  return v6 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXSandboxExtendedURL *)self URL];
  v6 = [v4 initWithURL:v5];

  v7 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  [v6 setSandboxExtensionToken:v7];

  [v6 setSandboxExtensionHandle:{-[CXSandboxExtendedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")}];
  return v6;
}

- (CXSandboxExtendedURL)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector("URL");
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXSandboxExtendedURL *)self initWithURL:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sandboxExtensionToken);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    sandboxExtensionToken = v8->_sandboxExtensionToken;
    v8->_sandboxExtensionToken = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXSandboxExtendedURL *)self URL];
  v6 = NSStringFromSelector("URL");
  [v4 encodeObject:v5 forKey:v6];

  v7 = *MEMORY[0x1E69E9BA8];
  v8 = [(CXSandboxExtendedURL *)self URL];
  v9 = [v8 path];
  [v9 fileSystemRepresentation];
  v10 = sandbox_extension_issue_file();

  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v12 = NSStringFromSelector(sel_sandboxExtensionToken);
    [v4 encodeObject:v11 forKey:v12];

    free(v10);
  }

  else
  {
    v13 = CXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CXSandboxExtendedURL *)self encodeWithCoder:v13];
    }
  }
}

- (void)URL
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 sandboxExtensionToken];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = [a1 sandboxExtensionHandle];
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Unable to consume sandbox extension with token %@, received handle %lld", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 URL];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Unable to issue sandbox extension for URL %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end