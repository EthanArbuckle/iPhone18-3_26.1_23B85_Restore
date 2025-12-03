@interface ASDEnterpriseAppMetadata
- (ASDEnterpriseAppMetadata)initWithCoder:(id)coder;
- (ASDEnterpriseAppMetadata)initWithManifestURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDEnterpriseAppMetadata

- (ASDEnterpriseAppMetadata)initWithManifestURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ASDEnterpriseAppMetadata;
  v5 = [(ASDEnterpriseAppMetadata *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[ASDEnterpriseAppMetadata alloc] initWithManifestURL:self->_manifestURL];
  *(result + 8) = self->_hideUserPrompts;
  return result;
}

- (ASDEnterpriseAppMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
  v6 = [(ASDEnterpriseAppMetadata *)self initWithManifestURL:v5];
  if (v6)
  {
    v6->_hideUserPrompts = [coderCopy decodeBoolForKey:@"HP"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  manifestURL = self->_manifestURL;
  coderCopy = coder;
  [coderCopy encodeObject:manifestURL forKey:@"MU"];
  [coderCopy encodeBool:self->_hideUserPrompts forKey:@"HP"];
}

@end