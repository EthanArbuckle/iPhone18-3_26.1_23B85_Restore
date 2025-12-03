@interface QLURLHandler
- (QLURLHandler)initWithCoder:(id)coder;
- (QLURLHandler)initWithURL:(id)l sandboxType:(const char *)type;
- (id)_issueFileExtensionForURL:(id)l;
- (void)_consumeFileExtension;
- (void)_issueExternalResourcesExtensionForURL:(id)l;
- (void)_issueFileExtension;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLURLHandler

- (QLURLHandler)initWithURL:(id)l sandboxType:(const char *)type
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = QLURLHandler;
  v7 = [(QLURLHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(QLURLHandler *)v7 setFileURL:lCopy];
    v8->_sandboxType = type;
    v8->_isAccessingSecurityScope = [lCopy startAccessingSecurityScopedResource];
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  if (self->_fileExtensionHandle)
  {
    [(QLURLHandler *)self sandboxExtensionRelease:?];
  }

  if (self->_isAccessingSecurityScope)
  {
    fileURL = [(QLURLHandler *)self fileURL];
    [fileURL stopAccessingSecurityScopedResource];
  }

  if (self->_physicalFileExtensionHandle)
  {
    [(QLURLHandler *)self sandboxExtensionRelease:?];
  }

  if (self->_externalResourcesHandle)
  {
    [(QLURLHandler *)self sandboxExtensionRelease:?];
  }

  v4.receiver = self;
  v4.super_class = QLURLHandler;
  [(QLURLHandler *)&v4 dealloc];
}

- (void)_issueFileExtension
{
  fileURL = [(QLURLHandler *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(QLURLHandler *)self fileURL];
    v5 = [(QLURLHandler *)self _issueFileExtensionForURL:fileURL2];
    fileExtensionToken = self->_fileExtensionToken;
    self->_fileExtensionToken = v5;

    fileURL3 = [(QLURLHandler *)self fileURL];
    v11 = _CFURLPromiseCopyPhysicalURL();

    if (v11)
    {
      v8 = [(QLURLHandler *)self _issueFileExtensionForURL:v11];
      physicalFileExtensionToken = self->_physicalFileExtensionToken;
      self->_physicalFileExtensionToken = v8;
    }

    if ([(QLURLHandler *)self needsAccessToExternalResources])
    {
      fileURL4 = [(QLURLHandler *)self fileURL];
      [(QLURLHandler *)self _issueExternalResourcesExtensionForURL:fileURL4];
    }
  }
}

- (void)_issueExternalResourcesExtensionForURL:(id)l
{
  lCopy = l;
  if (-[QLURLHandler needsAccessToExternalResources](self, "needsAccessToExternalResources") && [lCopy isFileURL])
  {
    v12 = 0;
    v5 = *MEMORY[0x1E695DC38];
    v11 = 0;
    [lCopy getResourceValue:&v12 forKey:v5 error:&v11];
    v6 = v12;
    v7 = v11;
    if (v7)
    {
      v8 = _log_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(QLURLHandler *)lCopy _issueExternalResourcesExtensionForURL:v8];
      }

      v9 = 0;
    }

    else
    {
      v9 = [(QLURLHandler *)self _issueFileExtensionForURL:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  externalResourcesToken = self->_externalResourcesToken;
  self->_externalResourcesToken = v9;
}

- (void)_consumeFileExtension
{
  fileExtensionToken = self->_fileExtensionToken;
  if (fileExtensionToken)
  {
    v4 = [(QLURLHandler *)self sandboxExtensionConsume:[(NSString *)fileExtensionToken UTF8String]];
    v5 = self->_fileExtensionToken;
    self->_fileExtensionToken = 0;
    self->_fileExtensionHandle = v4;
  }

  physicalFileExtensionToken = self->_physicalFileExtensionToken;
  if (physicalFileExtensionToken)
  {
    v7 = [(QLURLHandler *)self sandboxExtensionConsume:[(NSString *)physicalFileExtensionToken UTF8String]];
    v8 = self->_physicalFileExtensionToken;
    self->_physicalFileExtensionToken = 0;
    self->_physicalFileExtensionHandle = v7;
  }

  externalResourcesToken = self->_externalResourcesToken;
  if (externalResourcesToken)
  {
    [(QLURLHandler *)self setExternalResourcesHandle:[(QLURLHandler *)self sandboxExtensionConsume:[(NSString *)externalResourcesToken UTF8String]]];

    [(QLURLHandler *)self setExternalResourcesToken:0];
  }
}

- (id)_issueFileExtensionForURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    v6 = -[QLURLHandler sandboxExtensionIssueFileWithClass:path:flags:](self, "sandboxExtensionIssueFileWithClass:path:flags:", self->_sandboxType, [lCopy fileSystemRepresentation], 0);
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v6 encoding:4];
      free(v7);
      goto LABEL_9;
    }

    v9 = _log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(QLURLHandler *)v5 _issueFileExtensionForURL:v9];
    }
  }

  else
  {
    v9 = _log_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [QLURLHandler _issueFileExtensionForURL:v9];
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(QLURLHandler *)self _issueFileExtension];
  fileURL = [(QLURLHandler *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"url"];

  fileURL2 = [(QLURLHandler *)self fileURL];
  v6 = _CFURLPromiseCopyPhysicalURL();

  if (v6)
  {
    [coderCopy encodeObject:v6 forKey:@"promiseSetPhysicalURL"];
  }

  fileExtensionToken = self->_fileExtensionToken;
  if (fileExtensionToken)
  {
    [coderCopy encodeObject:fileExtensionToken forKey:@"fileExtensionToken"];
  }

  physicalFileExtensionToken = self->_physicalFileExtensionToken;
  if (physicalFileExtensionToken)
  {
    [coderCopy encodeObject:physicalFileExtensionToken forKey:@"physicalFileExtensionToken"];
  }

  externalResourcesToken = [(QLURLHandler *)self externalResourcesToken];

  if (externalResourcesToken)
  {
    externalResourcesToken2 = [(QLURLHandler *)self externalResourcesToken];
    [coderCopy encodeObject:externalResourcesToken2 forKey:@"externalResourcesToken"];
  }
}

- (QLURLHandler)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = QLURLHandler;
  v5 = [(QLURLHandler *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promiseSetPhysicalURL"];
    if (v8)
    {
      v9 = v5->_fileURL;
      _CFURLPromiseSetPhysicalURL();
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileExtensionToken"];
    fileExtensionToken = v5->_fileExtensionToken;
    v5->_fileExtensionToken = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalFileExtensionToken"];
    physicalFileExtensionToken = v5->_physicalFileExtensionToken;
    v5->_physicalFileExtensionToken = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalResourcesToken"];
    externalResourcesToken = v5->_externalResourcesToken;
    v5->_externalResourcesToken = v14;

    [(QLURLHandler *)v5 _consumeFileExtension];
    v16 = v5;
  }

  return v5;
}

- (void)_issueExternalResourcesExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Couldn't obtain directory for additional resources for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_issueFileExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Couldn't issue file extension for url: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end