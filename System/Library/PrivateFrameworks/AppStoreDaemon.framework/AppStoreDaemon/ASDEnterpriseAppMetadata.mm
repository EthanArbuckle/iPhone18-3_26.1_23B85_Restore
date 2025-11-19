@interface ASDEnterpriseAppMetadata
- (ASDEnterpriseAppMetadata)initWithCoder:(id)a3;
- (ASDEnterpriseAppMetadata)initWithManifestURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDEnterpriseAppMetadata

- (ASDEnterpriseAppMetadata)initWithManifestURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDEnterpriseAppMetadata;
  v5 = [(ASDEnterpriseAppMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[ASDEnterpriseAppMetadata alloc] initWithManifestURL:self->_manifestURL];
  *(result + 8) = self->_hideUserPrompts;
  return result;
}

- (ASDEnterpriseAppMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
  v6 = [(ASDEnterpriseAppMetadata *)self initWithManifestURL:v5];
  if (v6)
  {
    v6->_hideUserPrompts = [v4 decodeBoolForKey:@"HP"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  manifestURL = self->_manifestURL;
  v5 = a3;
  [v5 encodeObject:manifestURL forKey:@"MU"];
  [v5 encodeBool:self->_hideUserPrompts forKey:@"HP"];
}

@end