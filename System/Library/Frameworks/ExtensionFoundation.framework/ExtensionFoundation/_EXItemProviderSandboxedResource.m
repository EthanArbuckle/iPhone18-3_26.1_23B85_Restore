@interface _EXItemProviderSandboxedResource
- (_EXItemProviderSandboxedResource)initWithCoder:(id)a3;
- (_EXItemProviderSandboxedResource)initWithContentsOfURL:(id)a3 auditToken:(id *)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resolveURLAndReturnError:(id *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EXItemProviderSandboxedResource

- (_EXItemProviderSandboxedResource)initWithContentsOfURL:(id)a3 auditToken:(id *)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35.receiver = self;
  v35.super_class = _EXItemProviderSandboxedResource;
  v9 = [(_EXItemProviderSandboxedResource *)&v35 init];
  v10 = v9;
  if (v9)
  {
    [(_EXItemProviderSandboxedResource *)v9 setResourceURL:v8];
    v11 = [(_EXItemProviderSandboxedResource *)v10 resourceURL];
    v12 = *&a4->var0[4];
    *v36.val = *a4->var0;
    *&v36.val[4] = v12;
    v13 = v11;
    v14 = _EXLegacyLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      pidp[0] = 0;
      atoken = v36;
      audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, pidp, 0, 0);
      atoken.val[0] = 138412546;
      *&atoken.val[1] = v13;
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = pidp[0];
    }

    v15 = [v13 startAccessingSecurityScopedResource];
    v16 = *MEMORY[0x1E69E9BA8];
    [v13 fileSystemRepresentation];
    atoken = v36;
    v17 = sandbox_extension_issue_file_to_process();
    if (v15)
    {
      [v13 stopAccessingSecurityScopedResource];
    }

    if (v17)
    {
      v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v17 length:strlen(v17) + 1 freeWhenDone:1];
      v19 = 0;
    }

    else
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [v13 path];
      v23 = __error();
      v24 = [v21 stringWithFormat:@"Cannot issue a sandbox extension for file %@: %s", v22, strerror(*v23)];

      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A798];
      v27 = *__error();
      *pidp = *MEMORY[0x1E696A578];
      *atoken.val = v24;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&atoken forKeys:pidp count:1];
      v19 = [v25 errorWithDomain:v26 code:v27 userInfo:v28];
      v29 = v19;

      v18 = 0;
    }

    v30 = v19;
    if (v18)
    {
      [(_EXItemProviderSandboxedResource *)v10 setSandboxExtensionToken:v18];
      v20 = v10;
    }

    else
    {
      v31 = _EXLegacyLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [_EXItemProviderSandboxedResource initWithContentsOfURL:v10 auditToken:v30 error:v31];
      }

      if (a5)
      {
        v32 = v30;
        v20 = 0;
        *a5 = v30;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)dealloc
{
  if ([(_EXItemProviderSandboxedResource *)self isAccessingSecurityScopedResource])
  {
    [(NSURL *)self->_resourceURL stopAccessingSecurityScopedResource];
  }

  [(_EXItemProviderSandboxedResource *)self setResourceURL:0];
  [(_EXItemProviderSandboxedResource *)self setSandboxExtensionToken:0];
  v3.receiver = self;
  v3.super_class = _EXItemProviderSandboxedResource;
  [(_EXItemProviderSandboxedResource *)&v3 dealloc];
}

- (_EXItemProviderSandboxedResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_EXItemProviderSandboxedResource *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceURL"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
    v8 = _EXLegacyLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_EXItemProviderSandboxedResource initWithCoder:];
    }

    MEMORY[0x1865F45E0](v6, v7);
    -[_EXItemProviderSandboxedResource setAccessingSecurityScopedResource:](v5, "setAccessingSecurityScopedResource:", [v6 startAccessingSecurityScopedResource]);
    v9 = [(_EXItemProviderSandboxedResource *)v5 isAccessingSecurityScopedResource];
    v10 = v6;
    if (!v9)
    {
      v11 = _EXLegacyLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_EXItemProviderSandboxedResource *)v6 initWithCoder:v11];
      }

      v10 = 0;
    }

    [(_EXItemProviderSandboxedResource *)v5 setResourceURL:v10];
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_EXItemProviderSandboxedResource *)self resourceURL];
  v6 = [(_EXItemProviderSandboxedResource *)self sandboxExtensionToken];
  v7 = _EXLegacyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_EXItemProviderSandboxedResource encodeWithCoder:];
  }

  [v4 encodeObject:v5 forKey:@"resourceURL"];
  [v4 encodeObject:v6 forKey:@"sandboxExtensionToken"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(_EXItemProviderSandboxedResource *)self resourceURL];
  v4 = [objc_alloc(objc_opt_class()) initWithContentsOfURL:v3];

  return v4;
}

- (id)resolveURLAndReturnError:(id *)a3
{
  v3 = [(_EXItemProviderSandboxedResource *)self resourceURL];
  if ([v3 startAccessingSecurityScopedResource])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithContentsOfURL:(void *)a1 auditToken:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 resourceURL];
  OUTLINED_FUNCTION_0_4();
  v8 = a2;
  _os_log_error_impl(&dword_1847D1000, a3, OS_LOG_TYPE_ERROR, "Failed to issue sandbox token for URL: '%@' with error: '%@'", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "Failed to attach sandbox extension to URL: '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  v2 = *MEMORY[0x1E69E9840];
}

@end