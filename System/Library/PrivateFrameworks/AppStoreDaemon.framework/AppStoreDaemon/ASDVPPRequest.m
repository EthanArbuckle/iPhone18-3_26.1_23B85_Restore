@interface ASDVPPRequest
- (ASDVPPRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDVPPRequest

- (void)encodeWithCoder:(id)a3
{
  accountIdentifier = self->_accountIdentifier;
  v5 = a3;
  [v5 encodeObject:accountIdentifier forKey:@"Account"];
  [v5 encodeInt64:self->_archiveType forKey:@"ArchiveType"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"Bundle"];
  [v5 encodeObject:self->_externalVersionIdentifier forKey:@"ExternalVersion"];
  [v5 encodeObject:self->_itemIdentifier forKey:@"Item"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"Request"];
  [v5 encodeInt64:self->_requestType forKey:@"RequestType"];
  [v5 encodeInt64:self->_softwarePlatform forKey:@"SoftwarePlatform"];
}

- (ASDVPPRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASDVPPRequest;
  v5 = [(ASDVPPRequest *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Account"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v5->_archiveType = [v4 decodeInt64ForKey:@"ArchiveType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Bundle"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExternalVersion"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Item"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v14;

    v5->_requestType = [v4 decodeInt64ForKey:@"RequestType"];
    v5->_softwarePlatform = [v4 decodeInt64ForKey:@"SoftwarePlatform"];
  }

  return v5;
}

- (id)description
{
  softwarePlatform = self->_softwarePlatform;
  v4 = &stru_1F30184F0;
  v5 = @":iOS";
  if (softwarePlatform != 1)
  {
    v5 = &stru_1F30184F0;
  }

  if (softwarePlatform == 2)
  {
    v6 = @":macOS";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  requestType = self->_requestType;
  v9 = @":Device";
  if (requestType != 2)
  {
    v9 = &stru_1F30184F0;
  }

  if (requestType == 1)
  {
    v10 = @":User";
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  if (self->_accountIdentifier)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@":acct %@", self->_accountIdentifier];
  }

  if (self->_externalVersionIdentifier)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@":evid %@", self->_externalVersionIdentifier];
  }

  else
  {
    v12 = &stru_1F30184F0;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@/%@%@%@%@%@:%@]", self->_bundleIdentifier, self->_itemIdentifier, v12, v7, v11, v4, self->_requestIdentifier];

  return v13;
}

@end