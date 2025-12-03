@interface FPURLOperationLocator
- (BOOL)isDownloaded;
- (BOOL)isFolder;
- (BOOL)requiresCrossDeviceCopy;
- (FPURLOperationLocator)initWithCoder:(id)coder;
- (FPURLOperationLocator)initWithObject:(id)object;
- (id)description;
- (id)filename;
- (id)identifier;
- (id)parentIdentifier;
- (unint64_t)size;
- (void)encodeWithCoder:(id)coder;
- (void)isDownloaded;
- (void)size;
@end

@implementation FPURLOperationLocator

- (FPURLOperationLocator)initWithObject:(id)object
{
  v4.receiver = self;
  v4.super_class = FPURLOperationLocator;
  result = [(FPActionOperationLocator *)&v4 initWithObject:object];
  if (result)
  {
    result->_size = -1;
  }

  return result;
}

- (id)description
{
  asURL = [(FPActionOperationLocator *)self asURL];
  path = [asURL path];

  return path;
}

- (id)identifier
{
  asURL = [(FPActionOperationLocator *)self asURL];
  v3 = comparablePathFromURL(asURL);

  return v3;
}

- (id)parentIdentifier
{
  asURL = [(FPActionOperationLocator *)self asURL];
  uRLByDeletingLastPathComponent = [asURL URLByDeletingLastPathComponent];
  v4 = comparablePathFromURL(uRLByDeletingLastPathComponent);

  return v4;
}

- (id)filename
{
  asURL = [(FPActionOperationLocator *)self asURL];
  lastPathComponent = [asURL lastPathComponent];

  return lastPathComponent;
}

- (unint64_t)size
{
  result = self->_size;
  if (result == -1)
  {
    v10 = 0;
    asURL = [(FPActionOperationLocator *)self asURL];
    startAccessingSecurityScopedResource = [asURL startAccessingSecurityScopedResource];
    v9 = 0;
    v6 = [asURL fp_getSize:&v10 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(FPURLOperationLocator *)asURL size];
      }
    }

    if (startAccessingSecurityScopedResource)
    {
      [asURL stopAccessingSecurityScopedResource];
    }

    self->_size = v10;

    return self->_size;
  }

  return result;
}

- (BOOL)isDownloaded
{
  asURL = [(FPActionOperationLocator *)self asURL];
  startAccessingSecurityScopedResource = [asURL startAccessingSecurityScopedResource];
  v9 = 0;
  v4 = [asURL fp_isDatalessWithError:&v9];
  v5 = v9;
  if (v4)
  {
    if (startAccessingSecurityScopedResource)
    {
LABEL_3:
      [asURL stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(FPURLOperationLocator *)asURL isDownloaded];
    }

    if (startAccessingSecurityScopedResource)
    {
      goto LABEL_3;
    }
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
}

- (BOOL)isFolder
{
  asURL = [(FPActionOperationLocator *)self asURL];
  fp_isFolder = [asURL fp_isFolder];

  return fp_isFolder;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FPURLOperationLocator;
  [(FPActionOperationLocator *)&v11 encodeWithCoder:coderCopy];
  if (self->_attachSandboxExtensionOnXPCEncoding)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      asURL = [(FPActionOperationLocator *)self asURL];
      path = [asURL path];
      v8 = [defaultManager isWritableFileAtPath:path];

      asURL2 = [(FPActionOperationLocator *)self asURL];
      v10 = [FPSandboxingURLWrapper wrapperWithURL:asURL2 readonly:v8 ^ 1u error:0];
      [coderCopy encodeObject:v10 forKey:@"sburl"];
    }
  }
}

- (FPURLOperationLocator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FPURLOperationLocator;
  v5 = [(FPActionOperationLocator *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sburl"];
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
  asURL = [(FPActionOperationLocator *)self asURL];
  v5 = 0;
  [asURL getResourceValue:&v5 forKey:*MEMORY[0x1E695DD98] error:0];
  v3 = v5;

  LOBYTE(asURL) = [v3 BOOLValue];
  return asURL ^ 1;
}

- (void)size
{
  v13 = *MEMORY[0x1E69E9840];
  fp_shortDescription = [self fp_shortDescription];
  fp_prettyDescription = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v5, v6, "[DEBUG] Failed to determine size of item at %@ (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)isDownloaded
{
  v13 = *MEMORY[0x1E69E9840];
  fp_shortDescription = [self fp_shortDescription];
  fp_prettyDescription = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v5, v6, "[DEBUG] Failed to determine dataless status of item at %@ (%@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end