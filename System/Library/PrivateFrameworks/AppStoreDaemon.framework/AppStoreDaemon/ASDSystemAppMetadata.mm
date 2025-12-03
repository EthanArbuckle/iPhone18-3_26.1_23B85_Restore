@interface ASDSystemAppMetadata
- (ASDSystemAppMetadata)initWithBundleID:(id)d;
- (ASDSystemAppMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDSystemAppMetadata

- (ASDSystemAppMetadata)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDSystemAppMetadata;
  v5 = [(ASDSystemAppMetadata *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ASDSystemAppMetadata allocWithZone:?], "initWithBundleID:", self->_bundleID];
  [(ASDSystemAppMetadata *)v4 setUserInitiated:self->_userInitiated];
  return v4;
}

- (ASDSystemAppMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BI"];
  v6 = [(ASDSystemAppMetadata *)self initWithBundleID:v5];
  if (v6)
  {
    v6->_userInitiated = [coderCopy decodeBoolForKey:@"UI"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"BI"];
  [coderCopy encodeBool:self->_userInitiated forKey:@"UI"];
}

@end