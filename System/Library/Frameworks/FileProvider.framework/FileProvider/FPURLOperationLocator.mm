@interface FPURLOperationLocator
- (BOOL)isDownloaded;
- (BOOL)isFolder;
- (BOOL)requiresCrossDeviceCopy;
- (FPURLOperationLocator)initWithCoder:(id)a3;
- (FPURLOperationLocator)initWithObject:(id)a3;
- (id)description;
- (id)filename;
- (id)identifier;
- (id)parentIdentifier;
- (unint64_t)size;
- (void)encodeWithCoder:(id)a3;
- (void)isDownloaded;
- (void)size;
@end

@implementation FPURLOperationLocator

- (FPURLOperationLocator)initWithObject:(id)a3
{
  v4.receiver = self;
  v4.super_class = FPURLOperationLocator;
  result = [(FPActionOperationLocator *)&v4 initWithObject:a3];
  if (result)
  {
    result->_size = -1;
  }

  return result;
}

- (id)description
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v3 = [v2 path];

  return v3;
}

- (id)identifier
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v3 = comparablePathFromURL(v2);

  return v3;
}

- (id)parentIdentifier
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v3 = [v2 URLByDeletingLastPathComponent];
  v4 = comparablePathFromURL(v3);

  return v4;
}

- (id)filename
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (unint64_t)size
{
  result = self->_size;
  if (result == -1)
  {
    v10 = 0;
    v4 = [(FPActionOperationLocator *)self asURL];
    v5 = [v4 startAccessingSecurityScopedResource];
    v9 = 0;
    v6 = [v4 fp_getSize:&v10 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(FPURLOperationLocator *)v4 size];
      }
    }

    if (v5)
    {
      [v4 stopAccessingSecurityScopedResource];
    }

    self->_size = v10;

    return self->_size;
  }

  return result;
}

- (BOOL)isDownloaded
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v3 = [v2 startAccessingSecurityScopedResource];
  v9 = 0;
  v4 = [v2 fp_isDatalessWithError:&v9];
  v5 = v9;
  if (v4)
  {
    if (v3)
    {
LABEL_3:
      [v2 stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(FPURLOperationLocator *)v2 isDownloaded];
    }

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = [v4 BOOLValue];

  return v6 ^ 1;
}

- (BOOL)isFolder
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v3 = [v2 fp_isFolder];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FPURLOperationLocator;
  [(FPActionOperationLocator *)&v11 encodeWithCoder:v4];
  if (self->_attachSandboxExtensionOnXPCEncoding)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      v6 = [(FPActionOperationLocator *)self asURL];
      v7 = [v6 path];
      v8 = [v5 isWritableFileAtPath:v7];

      v9 = [(FPActionOperationLocator *)self asURL];
      v10 = [FPSandboxingURLWrapper wrapperWithURL:v9 readonly:v8 ^ 1u error:0];
      [v4 encodeObject:v10 forKey:@"sburl"];
    }
  }
}

- (FPURLOperationLocator)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FPURLOperationLocator;
  v5 = [(FPActionOperationLocator *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sburl"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 url];
      [(FPActionOperationLocator *)v5 _setObject:v8];
    }
  }

  return v5;
}

- (BOOL)requiresCrossDeviceCopy
{
  v2 = [(FPActionOperationLocator *)self asURL];
  v5 = 0;
  [v2 getResourceValue:&v5 forKey:*MEMORY[0x1E695DD98] error:0];
  v3 = v5;

  LOBYTE(v2) = [v3 BOOLValue];
  return v2 ^ 1;
}

- (void)size
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v5, v6, "[DEBUG] Failed to determine size of item at %@ (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)isDownloaded
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v5, v6, "[DEBUG] Failed to determine dataless status of item at %@ (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end