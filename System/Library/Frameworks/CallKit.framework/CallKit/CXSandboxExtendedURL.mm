@interface CXSandboxExtendedURL
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSandboxExtendedURL:(id)l;
- (CXSandboxExtendedURL)initWithCoder:(id)coder;
- (CXSandboxExtendedURL)initWithURL:(id)l;
- (NSURL)URL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)URL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXSandboxExtendedURL

- (CXSandboxExtendedURL)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CXSandboxExtendedURL;
  v6 = [(CXSandboxExtendedURL *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  URL = self->_URL;
  sandboxExtensionToken = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  v7 = [v3 stringWithFormat:@"<%@ %p URL=%@ sandboxExtensionToken=%@ sandboxExtensionHandle=%lld>", v4, self, URL, sandboxExtensionToken, -[CXSandboxExtendedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")];

  return v7;
}

- (NSURL)URL
{
  v16 = *MEMORY[0x1E69E9840];
  sandboxExtensionToken = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  if (sandboxExtensionToken)
  {
    v4 = sandboxExtensionToken;
    sandboxExtensionHandle = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];

    if (!sandboxExtensionHandle)
    {
      sandboxExtensionToken2 = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
      [sandboxExtensionToken2 UTF8String];
      [(CXSandboxExtendedURL *)self setSandboxExtensionHandle:sandbox_extension_consume()];

      sandboxExtensionHandle2 = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];
      v8 = CXDefaultLog();
      v9 = v8;
      if (sandboxExtensionHandle2 < 1)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXSandboxExtendedURL *)self isEqualToSandboxExtendedURL:equalCopy];

  return v5;
}

- (BOOL)isEqualToSandboxExtendedURL:(id)l
{
  lCopy = l;
  v5 = [(CXSandboxExtendedURL *)self URL];
  v6 = [lCopy URL];
  if (v5 | v6 && ![v5 isEqual:v6])
  {
    v10 = 0;
    goto LABEL_10;
  }

  sandboxExtensionToken = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  sandboxExtensionToken2 = [lCopy sandboxExtensionToken];
  if (!sandboxExtensionToken2)
  {
    if (!sandboxExtensionToken)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (([sandboxExtensionToken isEqualToString:sandboxExtensionToken2] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  sandboxExtensionHandle = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];
  v10 = sandboxExtensionHandle == [lCopy sandboxExtensionHandle];
LABEL_8:

LABEL_10:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(CXSandboxExtendedURL *)self URL];
  v4 = [v3 hash];
  sandboxExtensionToken = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  v6 = [sandboxExtensionToken hash] ^ v4;
  sandboxExtensionHandle = [(CXSandboxExtendedURL *)self sandboxExtensionHandle];

  return v6 ^ sandboxExtensionHandle;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(CXSandboxExtendedURL *)self URL];
  v6 = [v4 initWithURL:v5];

  sandboxExtensionToken = [(CXSandboxExtendedURL *)self sandboxExtensionToken];
  [v6 setSandboxExtensionToken:sandboxExtensionToken];

  [v6 setSandboxExtensionHandle:{-[CXSandboxExtendedURL sandboxExtensionHandle](self, "sandboxExtensionHandle")}];
  return v6;
}

- (CXSandboxExtendedURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector("URL");
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXSandboxExtendedURL *)self initWithURL:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sandboxExtensionToken);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    sandboxExtensionToken = v8->_sandboxExtensionToken;
    v8->_sandboxExtensionToken = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXSandboxExtendedURL *)self URL];
  v6 = NSStringFromSelector("URL");
  [coderCopy encodeObject:v5 forKey:v6];

  v7 = *MEMORY[0x1E69E9BA8];
  v8 = [(CXSandboxExtendedURL *)self URL];
  path = [v8 path];
  [path fileSystemRepresentation];
  v10 = sandbox_extension_issue_file();

  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v12 = NSStringFromSelector(sel_sandboxExtensionToken);
    [coderCopy encodeObject:v11 forKey:v12];

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
  sandboxExtensionToken = [self sandboxExtensionToken];
  v6 = 138412546;
  v7 = sandboxExtensionToken;
  v8 = 2048;
  sandboxExtensionHandle = [self sandboxExtensionHandle];
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