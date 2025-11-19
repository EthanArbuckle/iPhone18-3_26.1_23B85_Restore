@interface FPSandboxingURLWrapper
+ (FPSandboxingURLWrapper)wrapperWithSecurityScopedURL:(id)a3;
+ (FPSandboxingURLWrapper)wrapperWithURL:(id)a3 readonly:(BOOL)a4 error:(id *)a5;
+ (void)assembleURL:(id)a3 sandbox:(id)a4 physicalURL:(id)a5 physicalSandbox:(id)a6;
- (FPSandboxingURLWrapper)init;
- (FPSandboxingURLWrapper)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPSandboxingURLWrapper

- (FPSandboxingURLWrapper)init
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(FPSandboxingURLWrapper *)v3 init];
  }

  v5.receiver = self;
  v5.super_class = FPSandboxingURLWrapper;
  return [(FPSandboxingURLWrapper *)&v5 init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = FPSandboxingURLWrapper;
  return [(FPSandboxingURLWrapper *)&v3 init];
}

+ (FPSandboxingURLWrapper)wrapperWithURL:(id)a3 readonly:(BOOL)a4 error:(id *)a5
{
  v5 = MEMORY[0x1E69E9BA8];
  if (!a4)
  {
    v5 = MEMORY[0x1E69E9BB0];
  }

  return [a1 wrapperWithURL:a3 extensionClass:*v5 error:a5];
}

+ (FPSandboxingURLWrapper)wrapperWithSecurityScopedURL:(id)a3
{
  v5 = a3;
  v6 = [[FPSandboxingURLWrapper alloc] _init];
  [v6 setUrl:v5];
  v7 = MEMORY[0x1AC593480](v5);

  [v6 setScope:v7];
  v8 = [v6 url];
  v20 = 0;
  v19 = 0;
  v9 = [v8 getResourceValue:&v20 forKey:@"FPOriginalDocumentURL" error:&v19];
  v10 = v20;
  v11 = v19;

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v18 = v11;
    v13 = [FPSandboxingURLWrapper wrapperWithURL:v10 readonly:0 error:&v18];
    v14 = v18;

    [v6 setOriginalDocumentURLWrapper:v13];
    v11 = v14;
  }

  v15 = [v6 scope];

  if (!v15)
  {
    v16 = [v6 scope];

    if (!v16)
    {
      [(FPSandboxingURLWrapper *)a2 wrapperWithSecurityScopedURL:a1];
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPSandboxingURLWrapper *)self url];
  v6 = [v5 fp_shortDescription];
  v7 = [(FPSandboxingURLWrapper *)self promiseURL];
  v8 = [v7 fp_shortDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p url: %@ promiseURL: %@>", v4, self, v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FPSandboxingURLWrapper *)self url];
  [v4 encodeObject:v5 forKey:@"NSURL"];

  v6 = [(FPSandboxingURLWrapper *)self scope];
  [v4 encodeObject:v6 forKey:@"NSURLScope"];

  v7 = [(FPSandboxingURLWrapper *)self promiseURL];

  if (v7)
  {
    v8 = [(FPSandboxingURLWrapper *)self promiseURL];
    [v4 encodeObject:v8 forKey:@"NSPromise"];

    v9 = [(FPSandboxingURLWrapper *)self promiseScope];
    [v4 encodeObject:v9 forKey:@"NSPromiseScope"];
  }

  v10 = [(FPSandboxingURLWrapper *)self originalDocumentURLWrapper];

  if (!v10)
  {
    v11 = [(FPSandboxingURLWrapper *)self url];
    v20 = 0;
    v21 = 0;
    v12 = [v11 getResourceValue:&v21 forKey:@"FPOriginalDocumentURL" error:&v20];
    v13 = v21;
    v14 = v20;

    if (v12 && v13)
    {
      v19 = v14;
      v15 = [FPSandboxingURLWrapper wrapperWithURL:v13 readonly:0 error:&v19];
      v16 = v19;

      [(FPSandboxingURLWrapper *)self setOriginalDocumentURLWrapper:v15];
      v14 = v16;
    }
  }

  v17 = [(FPSandboxingURLWrapper *)self originalDocumentURLWrapper];

  if (v17)
  {
    v18 = [(FPSandboxingURLWrapper *)self originalDocumentURLWrapper];
    [v4 encodeObject:v18 forKey:@"FPOriginalDocumentURL"];
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
      MEMORY[0x1AC593440](v12, v9);
    }

    if (v10 && v11)
    {
      MEMORY[0x1AC593440](v10, v11);
    }

    _CFURLPromiseSetPhysicalURL();
  }
}

- (FPSandboxingURLWrapper)initWithCoder:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = FPSandboxingURLWrapper;
  v6 = [(FPSandboxingURLWrapper *)&v16 init];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSURL"];
    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSPromise"];
    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"FPOriginalDocumentURL"];
    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSURLScope"];
    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"NSPromiseScope"];
    [objc_opt_class() assembleURL:v7 sandbox:v10 physicalURL:v8 physicalSandbox:v11];
    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v6 file:@"FPSandboxingURLWrapper.m" lineNumber:207 description:@"tried to unarchive a wrapper with nil url"];
    }

    [(FPSandboxingURLWrapper *)v6 setUrl:v7];
    [(FPSandboxingURLWrapper *)v6 setScope:v10];
    [(FPSandboxingURLWrapper *)v6 setPromiseURL:v8];
    [(FPSandboxingURLWrapper *)v6 setPromiseScope:v11];
    [(FPSandboxingURLWrapper *)v6 setOriginalDocumentURLWrapper:v9];
    if (v9)
    {
      v13 = [(FPSandboxingURLWrapper *)v6 url];
      v14 = [v9 url];
      [v13 setTemporaryResourceValue:v14 forKey:@"FPOriginalDocumentURL"];
    }
  }

  return v6;
}

- (void)initWithURL:extensionClass:report:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v0, v1, "[DEBUG] Could not issue %s sandbox extension (%@).");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)wrapperWithSecurityScopedURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPSandboxingURLWrapper.m" lineNumber:136 description:@"missing security scope"];
}

@end