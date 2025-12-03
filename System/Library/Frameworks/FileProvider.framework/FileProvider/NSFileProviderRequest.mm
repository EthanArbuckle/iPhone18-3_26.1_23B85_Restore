@interface NSFileProviderRequest
+ (NSUUID)_dmIdentifier;
+ (NSUUID)_dsIdentifier;
+ (NSUUID)_filesIdentifier;
+ (NSUUID)_finderIdentifier;
+ (NSUUID)_fpdIdentifier;
+ (id)requestFromTheSystem;
- (BOOL)isFileViewerRequest;
- (BOOL)isSystemRequest;
- (NSFileProviderRequest)init;
- (NSFileProviderRequest)initWithCoder:(id)coder;
- (NSFileProviderRequest)initWithIsSpeculativeDownload:(BOOL)download;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderRequest

+ (id)requestFromTheSystem
{
  v2 = objc_opt_new();

  return v2;
}

- (NSFileProviderRequest)init
{
  v6.receiver = self;
  v6.super_class = NSFileProviderRequest;
  v2 = [(NSFileProviderRequest *)&v6 init];
  if (v2)
  {
    v3 = +[NSFileProviderRequest _fpdIdentifier];
    requestingApplicationIdentifier = v2->_requestingApplicationIdentifier;
    v2->_requestingApplicationIdentifier = v3;
  }

  return v2;
}

+ (NSUUID)_fpdIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A7CE4FBB-64E6-4A9C-8EAA-0D8F07492B44"];

  return v2;
}

- (id)description
{
  if ([(NSFileProviderRequest *)self isSystemRequest])
  {
    v3 = "system";
  }

  else
  {
    isFileViewerRequest = [(NSFileProviderRequest *)self isFileViewerRequest];
    v3 = "other";
    if (isFileViewerRequest)
    {
      v3 = "viewer";
    }
  }

  if (self->_speculativeDownload)
  {
    v5 = "y";
  }

  else
  {
    v5 = "n";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSFileProviderRequest from:%s version:%@ speculative:%s>", v3, self->_domainVersion, v5];
}

- (BOOL)isSystemRequest
{
  requestingApplicationIdentifier = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
  _fpdIdentifier = [objc_opt_class() _fpdIdentifier];
  v4 = [requestingApplicationIdentifier isEqual:_fpdIdentifier];

  return v4;
}

- (NSFileProviderRequest)initWithIsSpeculativeDownload:(BOOL)download
{
  v5.receiver = self;
  v5.super_class = NSFileProviderRequest;
  result = [(NSFileProviderRequest *)&v5 init];
  if (result)
  {
    result->_speculativeDownload = download;
  }

  return result;
}

- (NSFileProviderRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NSFileProviderRequest;
  v5 = [(NSFileProviderRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_requestingApplicationIdentifier"];
    requestingApplicationIdentifier = v5->_requestingApplicationIdentifier;
    v5->_requestingApplicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v8;

    v5->_speculativeDownload = [coderCopy decodeBoolForKey:@"_speculativeDownload"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestingApplicationIdentifier = self->_requestingApplicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:requestingApplicationIdentifier forKey:@"_requestingApplicationIdentifier"];
  [coderCopy encodeObject:self->_domainVersion forKey:@"_domainVersion"];
  [coderCopy encodeBool:self->_speculativeDownload forKey:@"_speculativeDownload"];
}

+ (NSUUID)_finderIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2DAAE428-7239-4A8A-8C1F-30A787A5EBE1"];

  return v2;
}

+ (NSUUID)_dsIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AD8D660C-2BFE-47A3-BB78-0D8A1C98D143"];

  return v2;
}

+ (NSUUID)_filesIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B847DC19-D25E-43A1-BBC8-2A18289DFB00"];

  return v2;
}

+ (NSUUID)_dmIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"651152F6-CE30-4450-A618-522D30241F50"];

  return v2;
}

- (BOOL)isFileViewerRequest
{
  requestingApplicationIdentifier = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
  _finderIdentifier = [objc_opt_class() _finderIdentifier];
  if ([requestingApplicationIdentifier isEqual:_finderIdentifier])
  {
    v5 = 1;
  }

  else
  {
    requestingApplicationIdentifier2 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
    _dsIdentifier = [objc_opt_class() _dsIdentifier];
    if ([requestingApplicationIdentifier2 isEqual:_dsIdentifier])
    {
      v5 = 1;
    }

    else
    {
      requestingApplicationIdentifier3 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
      _dmIdentifier = [objc_opt_class() _dmIdentifier];
      if ([requestingApplicationIdentifier3 isEqual:_dmIdentifier])
      {
        v5 = 1;
      }

      else
      {
        requestingApplicationIdentifier4 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
        _filesIdentifier = [objc_opt_class() _filesIdentifier];
        v5 = [requestingApplicationIdentifier4 isEqual:_filesIdentifier];
      }
    }
  }

  return v5;
}

@end