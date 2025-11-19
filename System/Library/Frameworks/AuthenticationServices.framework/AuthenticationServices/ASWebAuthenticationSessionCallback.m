@interface ASWebAuthenticationSessionCallback
+ (id)callbackWithCustomScheme:(id)a3;
+ (id)callbackWithDownloadMIMEType:(id)a3;
+ (id)callbackWithHTTPSHost:(id)a3 path:(id)a4;
- (ASWebAuthenticationSessionCallback)initWithCoder:(id)a3;
- (BOOL)matchesURL:(id)a3;
- (id)_initWithCustomScheme:(id)a3 host:(id)a4 path:(id)a5 downloadMIMEType:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASWebAuthenticationSessionCallback

+ (id)callbackWithCustomScheme:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithCustomScheme:v4 host:0 path:0 downloadMIMEType:0];

  return v5;
}

+ (id)callbackWithHTTPSHost:(id)a3 path:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithCustomScheme:0 host:v7 path:v6 downloadMIMEType:0];

  return v8;
}

+ (id)callbackWithDownloadMIMEType:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithCustomScheme:0 host:0 path:0 downloadMIMEType:v4];

  return v5;
}

- (id)_initWithCustomScheme:(id)a3 host:(id)a4 path:(id)a5 downloadMIMEType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = ASWebAuthenticationSessionCallback;
  v14 = [(ASWebAuthenticationSessionCallback *)&v28 init];
  if (v14)
  {
    if (v11)
    {
      if (!v12)
      {
        v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unexpectedly found nil path when using HTTPS callback." userInfo:0];
        objc_exception_throw(v27);
      }

      if (([v12 hasPrefix:@"/"] & 1) == 0)
      {
        v15 = [@"/" stringByAppendingString:v12];

        v12 = v15;
      }

      v16 = [v12 safari_stringByDeletingTrailingSlash];

      v17 = [v11 copy];
      host = v14->_host;
      v14->_host = v17;

      v19 = [v16 copy];
      path = v14->_path;
      v14->_path = v19;

      v14->_callbackType = 1;
      v12 = v16;
    }

    else if (v13)
    {
      v21 = [v13 copy];
      downloadMIMEType = v14->_downloadMIMEType;
      v14->_downloadMIMEType = v21;

      v14->_callbackType = 2;
    }

    else
    {
      v23 = [v10 copy];
      customScheme = v14->_customScheme;
      v14->_customScheme = v23;

      v14->_callbackType = 0;
    }

    v25 = v14;
  }

  return v14;
}

- (ASWebAuthenticationSessionCallback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheme"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"host"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadMIMEType"];

  v9 = [(ASWebAuthenticationSessionCallback *)self _initWithCustomScheme:v5 host:v6 path:v7 downloadMIMEType:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  customScheme = self->_customScheme;
  v5 = a3;
  [v5 encodeObject:customScheme forKey:@"scheme"];
  [v5 encodeObject:self->_host forKey:@"host"];
  [v5 encodeObject:self->_path forKey:@"path"];
  [v5 encodeObject:self->_downloadMIMEType forKey:@"downloadMIMEType"];
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

- (BOOL)matchesURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  callbackType = self->_callbackType;
  if (callbackType == 1)
  {
    if ([v4 safari_isHTTPFamilyURL])
    {
      v9 = [v5 host];
      v10 = [v9 caseInsensitiveCompare:self->_host];

      if (!v10)
      {
        v11 = [v5 path];
        v7 = [v11 safari_stringByDeletingTrailingSlash];

        v8 = [v7 caseInsensitiveCompare:self->_path] == 0;
        goto LABEL_9;
      }
    }
  }

  else if (!callbackType && ([v4 safari_isHTTPFamilyURL] & 1) == 0)
  {
    v7 = [v5 scheme];
    v8 = [v7 safari_isCaseInsensitiveEqualToString:self->_customScheme];
LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end