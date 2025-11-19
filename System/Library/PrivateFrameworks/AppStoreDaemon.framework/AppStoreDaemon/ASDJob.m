@interface ASDJob
- (ASDJob)initWithCoder:(id)a3;
- (ASDJob)initWithPersistentID:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDJob

- (ASDJob)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ASDJob;
  result = [(ASDJob *)&v5 init];
  if (result)
  {
    result->_persistentID = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = ASDJob;
  v4 = [(ASDJob *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %lld", v4, self->_persistentID];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(ASDJob *)self persistentID];
    v6 = v7 == [v4 persistentID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDJob allocWithZone:](ASDJob init];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v8 = [(NSNumber *)self->_externalOrderKey copyWithZone:a3];
  externalOrderKey = v5->_externalOrderKey;
  v5->_externalOrderKey = v8;

  v10 = [(NSError *)self->_failureError copyWithZone:a3];
  failureError = v5->_failureError;
  v5->_failureError = v10;

  v12 = [(NSNumber *)self->_orderKey copyWithZone:a3];
  orderKey = v5->_orderKey;
  v5->_orderKey = v12;

  v5->_percentComplete = self->_percentComplete;
  *&v5->_persistentID = *&self->_persistentID;
  v5->_purchaseID = self->_purchaseID;
  *&v5->_storeItemID = *&self->_storeItemID;
  return v5;
}

- (ASDJob)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDJob *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalOrderKey"];
    externalOrderKey = v5->_externalOrderKey;
    v5->_externalOrderKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"failureError"];
    failureError = v5->_failureError;
    v5->_failureError = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orderKey"];
    orderKey = v5->_orderKey;
    v5->_orderKey = v12;

    [v4 decodeDoubleForKey:@"percentComplete"];
    v5->_percentComplete = v14;
    v5->_persistentID = [v4 decodeInt64ForKey:@"persistentID"];
    v5->_phase = [v4 decodeIntegerForKey:@"phase"];
    v5->_purchaseID = [v4 decodeInt64ForKey:@"purchaseID"];
    v5->_storeItemID = [v4 decodeInt64ForKey:@"storeItemID"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v6 encodeObject:self->_externalOrderKey forKey:@"externalOrderKey"];
  failureError = self->_failureError;
  if (failureError)
  {
    v5 = ASDErrorWithSafeUserInfo(failureError);
    [v6 encodeObject:v5 forKey:@"failureError"];
  }

  [v6 encodeObject:self->_orderKey forKey:@"orderKey"];
  [v6 encodeDouble:@"percentComplete" forKey:self->_percentComplete];
  [v6 encodeInt64:self->_persistentID forKey:@"persistentID"];
  [v6 encodeInteger:self->_phase forKey:@"phase"];
  [v6 encodeInt64:self->_purchaseID forKey:@"purchaseID"];
  [v6 encodeInt64:self->_storeItemID forKey:@"storeItemID"];
  [v6 encodeInteger:self->_type forKey:@"type"];
}

@end