@interface ASDSystemAppRequest
- (ASDSystemAppRequest)initWithBundleID:(id)a3;
- (ASDSystemAppRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDSystemAppRequest

- (ASDSystemAppRequest)initWithBundleID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDSystemAppRequest;
  v5 = [(ASDRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (ASDSystemAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDSystemAppRequest;
  v5 = [(ASDRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeItemID"];
    storeItemID = v5->_storeItemID;
    v5->_storeItemID = v8;

    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_storeItemID forKey:@"storeItemID"];
  [v5 encodeBool:self->_userInitiated forKey:@"userInitiated"];
  v6.receiver = self;
  v6.super_class = ASDSystemAppRequest;
  [(ASDRequest *)&v6 encodeWithCoder:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = ASDSystemAppRequest;
  v4 = [(ASDRequest *)&v12 description];
  v5 = [(ASDSystemAppRequest *)self bundleID];
  v6 = v5;
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
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@", storeItemID = %@", storeItemID];
    v10 = [v3 stringWithFormat:@"%@ {bundleID = %@, userInitiated = %@%@}", v4, v6, v7, v9];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"%@ {bundleID = %@, userInitiated = %@%@}", v4, v5, v7, &stru_1F30184F0];
  }

  return v10;
}

@end