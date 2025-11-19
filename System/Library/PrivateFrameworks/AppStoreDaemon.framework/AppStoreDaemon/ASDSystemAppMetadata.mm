@interface ASDSystemAppMetadata
- (ASDSystemAppMetadata)initWithBundleID:(id)a3;
- (ASDSystemAppMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDSystemAppMetadata

- (ASDSystemAppMetadata)initWithBundleID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDSystemAppMetadata;
  v5 = [(ASDSystemAppMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ASDSystemAppMetadata allocWithZone:?], "initWithBundleID:", self->_bundleID];
  [(ASDSystemAppMetadata *)v4 setUserInitiated:self->_userInitiated];
  return v4;
}

- (ASDSystemAppMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
  v6 = [(ASDSystemAppMetadata *)self initWithBundleID:v5];
  if (v6)
  {
    v6->_userInitiated = [v4 decodeBoolForKey:@"UI"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"BI"];
  [v5 encodeBool:self->_userInitiated forKey:@"UI"];
}

@end