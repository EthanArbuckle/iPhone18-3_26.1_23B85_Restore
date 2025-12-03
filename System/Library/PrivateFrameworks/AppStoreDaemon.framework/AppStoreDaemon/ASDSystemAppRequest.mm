@interface ASDSystemAppRequest
- (ASDSystemAppRequest)initWithBundleID:(id)d;
- (ASDSystemAppRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDSystemAppRequest

- (ASDSystemAppRequest)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ASDSystemAppRequest;
  v5 = [(ASDRequest *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (ASDSystemAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ASDSystemAppRequest;
  v5 = [(ASDRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeItemID"];
    storeItemID = v5->_storeItemID;
    v5->_storeItemID = v8;

    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_storeItemID forKey:@"storeItemID"];
  [coderCopy encodeBool:self->_userInitiated forKey:@"userInitiated"];
  v6.receiver = self;
  v6.super_class = ASDSystemAppRequest;
  [(ASDRequest *)&v6 encodeWithCoder:coderCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = ASDSystemAppRequest;
  v4 = [(ASDRequest *)&v12 description];
  bundleID = [(ASDSystemAppRequest *)self bundleID];
  v6 = bundleID;
  if (self->_userInitiated)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  storeItemID = self->_storeItemID;
  if (storeItemID)
  {
    storeItemID = [MEMORY[0x1E696AEC0] stringWithFormat:@", storeItemID = %@", storeItemID];
    v10 = [v3 stringWithFormat:@"%@ {bundleID = %@, userInitiated = %@%@}", v4, v6, v7, storeItemID];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"%@ {bundleID = %@, userInitiated = %@%@}", v4, bundleID, v7, &stru_1F30184F0];
  }

  return v10;
}

@end