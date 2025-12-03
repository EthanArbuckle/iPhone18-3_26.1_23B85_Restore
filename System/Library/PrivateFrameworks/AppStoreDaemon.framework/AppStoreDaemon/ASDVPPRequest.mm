@interface ASDVPPRequest
- (ASDVPPRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDVPPRequest

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"Account"];
  [coderCopy encodeInt64:self->_archiveType forKey:@"ArchiveType"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"Bundle"];
  [coderCopy encodeObject:self->_externalVersionIdentifier forKey:@"ExternalVersion"];
  [coderCopy encodeObject:self->_itemIdentifier forKey:@"Item"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"Request"];
  [coderCopy encodeInt64:self->_requestType forKey:@"RequestType"];
  [coderCopy encodeInt64:self->_softwarePlatform forKey:@"SoftwarePlatform"];
}

- (ASDVPPRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ASDVPPRequest;
  v5 = [(ASDVPPRequest *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Account"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v5->_archiveType = [coderCopy decodeInt64ForKey:@"ArchiveType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Bundle"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExternalVersion"];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Item"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v14;

    v5->_requestType = [coderCopy decodeInt64ForKey:@"RequestType"];
    v5->_softwarePlatform = [coderCopy decodeInt64ForKey:@"SoftwarePlatform"];
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