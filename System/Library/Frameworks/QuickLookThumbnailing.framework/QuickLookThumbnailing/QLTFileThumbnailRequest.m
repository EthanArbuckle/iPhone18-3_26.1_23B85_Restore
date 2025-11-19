@interface QLTFileThumbnailRequest
- (QLTFileThumbnailRequest)initWithCoder:(id)a3;
- (id)computeContentType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLTFileThumbnailRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(QLTFileThumbnailRequest *)self genericSandboxWrapper];
  v7 = [v6 url];
  v8 = [v7 lastPathComponent];
  [(QLTThumbnailRequest *)self size];
  v10 = v9;
  [(QLTThumbnailRequest *)self size];
  v12 = [v3 initWithFormat:@"<%@:%p %@ {%g, %g}>", v5, self, v8, v10, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  quicklookSandboxWrapper = self->_quicklookSandboxWrapper;
  v5 = a3;
  [v5 encodeObject:quicklookSandboxWrapper forKey:@"quicklookSandboxWrapper"];
  [v5 encodeObject:self->_genericSandboxWrapper forKey:@"genericSandboxWrapper"];
  v6.receiver = self;
  v6.super_class = QLTFileThumbnailRequest;
  [(QLTThumbnailRequest *)&v6 encodeWithCoder:v5];
}

- (QLTFileThumbnailRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = QLTFileThumbnailRequest;
  v5 = [(QLTThumbnailRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    getFPSandboxingURLWrapperClass();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quicklookSandboxWrapper"];
    quicklookSandboxWrapper = v5->_quicklookSandboxWrapper;
    v5->_quicklookSandboxWrapper = v6;

    getFPSandboxingURLWrapperClass();
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genericSandboxWrapper"];
    genericSandboxWrapper = v5->_genericSandboxWrapper;
    v5->_genericSandboxWrapper = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = QLTFileThumbnailRequest;
  v4 = [(QLTThumbnailRequest *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 12, self->_quicklookSandboxWrapper);
  objc_storeStrong(v4 + 13, self->_genericSandboxWrapper);
  return v4;
}

- (id)computeContentType
{
  v2 = [(QLTFileThumbnailRequest *)self genericSandboxWrapper];
  v3 = [v2 url];
  v4 = [QLUTIAnalyzer UTIForURL:v3];

  return v4;
}

- (void)initWithFileAtURL:(uint64_t)a1 size:minimumDimension:scale:iconMode:error:shouldMakeSandboxWrapper:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(*a1 + 40);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not create FPSandboxingURLWrapper with write extension for %@ with error %@, thumbnail additions can not be added to this file, falling back to read only", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileAtURL:(uint64_t)a1 size:minimumDimension:scale:iconMode:error:shouldMakeSandboxWrapper:.cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Will not create a FPSandboxingURLWrapper for thumbnail request because no URL was obtained using coordinateReadingItemAtURL for url: %@ (%@).", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileAtURL:(uint64_t)a1 size:minimumDimension:scale:iconMode:error:shouldMakeSandboxWrapper:.cold.3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could not create FPSandboxingURLWrapper with url: %@, error: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

@end