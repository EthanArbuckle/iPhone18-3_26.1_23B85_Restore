@interface ASWebAuthenticationSessionCallback
+ (id)callbackWithCustomScheme:(id)scheme;
+ (id)callbackWithDownloadMIMEType:(id)type;
+ (id)callbackWithHTTPSHost:(id)host path:(id)path;
- (ASWebAuthenticationSessionCallback)initWithCoder:(id)coder;
- (BOOL)matchesURL:(id)l;
- (id)_initWithCustomScheme:(id)scheme host:(id)host path:(id)path downloadMIMEType:(id)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASWebAuthenticationSessionCallback

+ (id)callbackWithCustomScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = [[self alloc] _initWithCustomScheme:schemeCopy host:0 path:0 downloadMIMEType:0];

  return v5;
}

+ (id)callbackWithHTTPSHost:(id)host path:(id)path
{
  pathCopy = path;
  hostCopy = host;
  v8 = [[self alloc] _initWithCustomScheme:0 host:hostCopy path:pathCopy downloadMIMEType:0];

  return v8;
}

+ (id)callbackWithDownloadMIMEType:(id)type
{
  typeCopy = type;
  v5 = [[self alloc] _initWithCustomScheme:0 host:0 path:0 downloadMIMEType:typeCopy];

  return v5;
}

- (id)_initWithCustomScheme:(id)scheme host:(id)host path:(id)path downloadMIMEType:(id)type
{
  schemeCopy = scheme;
  hostCopy = host;
  pathCopy = path;
  typeCopy = type;
  v28.receiver = self;
  v28.super_class = ASWebAuthenticationSessionCallback;
  v14 = [(ASWebAuthenticationSessionCallback *)&v28 init];
  if (v14)
  {
    if (hostCopy)
    {
      if (!pathCopy)
      {
        v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unexpectedly found nil path when using HTTPS callback." userInfo:0];
        objc_exception_throw(v27);
      }

      if (([pathCopy hasPrefix:@"/"] & 1) == 0)
      {
        v15 = [@"/" stringByAppendingString:pathCopy];

        pathCopy = v15;
      }

      safari_stringByDeletingTrailingSlash = [pathCopy safari_stringByDeletingTrailingSlash];

      v17 = [hostCopy copy];
      host = v14->_host;
      v14->_host = v17;

      v19 = [safari_stringByDeletingTrailingSlash copy];
      path = v14->_path;
      v14->_path = v19;

      v14->_callbackType = 1;
      pathCopy = safari_stringByDeletingTrailingSlash;
    }

    else if (typeCopy)
    {
      v21 = [typeCopy copy];
      downloadMIMEType = v14->_downloadMIMEType;
      v14->_downloadMIMEType = v21;

      v14->_callbackType = 2;
    }

    else
    {
      v23 = [schemeCopy copy];
      customScheme = v14->_customScheme;
      v14->_customScheme = v23;

      v14->_callbackType = 0;
    }

    v25 = v14;
  }

  return v14;
}

- (ASWebAuthenticationSessionCallback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheme"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"host"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadMIMEType"];

  v9 = [(ASWebAuthenticationSessionCallback *)self _initWithCustomScheme:v5 host:v6 path:v7 downloadMIMEType:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  customScheme = self->_customScheme;
  coderCopy = coder;
  [coderCopy encodeObject:customScheme forKey:@"scheme"];
  [coderCopy encodeObject:self->_host forKey:@"host"];
  [coderCopy encodeObject:self->_path forKey:@"path"];
  [coderCopy encodeObject:self->_downloadMIMEType forKey:@"downloadMIMEType"];
}

- (id)description
{
  callbackType = self->_callbackType;
  if (callbackType == 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Download { mimeType: %@ }", self->_downloadMIMEType, v4];
  }

  else if (callbackType == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Callback { URL: https://%@%@ }", self->_host, self->_path];
  }

  else
  {
    if (callbackType)
    {
      goto LABEL_8;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"Callback { scheme: %@ }", self->_customScheme, v4];
  }
  a2 = ;
LABEL_8:

  return a2;
}

- (BOOL)matchesURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  callbackType = self->_callbackType;
  if (callbackType == 1)
  {
    if ([lCopy safari_isHTTPFamilyURL])
    {
      host = [v5 host];
      v10 = [host caseInsensitiveCompare:self->_host];

      if (!v10)
      {
        path = [v5 path];
        safari_stringByDeletingTrailingSlash = [path safari_stringByDeletingTrailingSlash];

        v8 = [safari_stringByDeletingTrailingSlash caseInsensitiveCompare:self->_path] == 0;
        goto LABEL_9;
      }
    }
  }

  else if (!callbackType && ([lCopy safari_isHTTPFamilyURL] & 1) == 0)
  {
    safari_stringByDeletingTrailingSlash = [v5 scheme];
    v8 = [safari_stringByDeletingTrailingSlash safari_isCaseInsensitiveEqualToString:self->_customScheme];
LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end