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
- (NSFileProviderRequest)initWithCoder:(id)a3;
- (NSFileProviderRequest)initWithIsSpeculativeDownload:(BOOL)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [(NSFileProviderRequest *)self isFileViewerRequest];
    v3 = "other";
    if (v4)
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
  v2 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
  v3 = [objc_opt_class() _fpdIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (NSFileProviderRequest)initWithIsSpeculativeDownload:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NSFileProviderRequest;
  result = [(NSFileProviderRequest *)&v5 init];
  if (result)
  {
    result->_speculativeDownload = a3;
  }

  return result;
}

- (NSFileProviderRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NSFileProviderRequest;
  v5 = [(NSFileProviderRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requestingApplicationIdentifier"];
    requestingApplicationIdentifier = v5->_requestingApplicationIdentifier;
    v5->_requestingApplicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainVersion"];
    domainVersion = v5->_domainVersion;
    v5->_domainVersion = v8;

    v5->_speculativeDownload = [v4 decodeBoolForKey:@"_speculativeDownload"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestingApplicationIdentifier = self->_requestingApplicationIdentifier;
  v5 = a3;
  [v5 encodeObject:requestingApplicationIdentifier forKey:@"_requestingApplicationIdentifier"];
  [v5 encodeObject:self->_domainVersion forKey:@"_domainVersion"];
  [v5 encodeBool:self->_speculativeDownload forKey:@"_speculativeDownload"];
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
  v3 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
  v4 = [objc_opt_class() _finderIdentifier];
  if ([v3 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
    v7 = [objc_opt_class() _dsIdentifier];
    if ([v6 isEqual:v7])
    {
      v5 = 1;
    }

    else
    {
      v8 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
      v9 = [objc_opt_class() _dmIdentifier];
      if ([v8 isEqual:v9])
      {
        v5 = 1;
      }

      else
      {
        v10 = [(NSFileProviderRequest *)self requestingApplicationIdentifier];
        v11 = [objc_opt_class() _filesIdentifier];
        v5 = [v10 isEqual:v11];
      }
    }
  }

  return v5;
}

@end