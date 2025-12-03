@interface ASDJob
- (ASDJob)initWithCoder:(id)coder;
- (ASDJob)initWithPersistentID:(int64_t)d;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDJob

- (ASDJob)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = ASDJob;
  result = [(ASDJob *)&v5 init];
  if (result)
  {
    result->_persistentID = d;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    persistentID = [(ASDJob *)self persistentID];
    v6 = persistentID == [equalCopy persistentID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDJob allocWithZone:](ASDJob init];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v8 = [(NSNumber *)self->_externalOrderKey copyWithZone:zone];
  externalOrderKey = v5->_externalOrderKey;
  v5->_externalOrderKey = v8;

  v10 = [(NSError *)self->_failureError copyWithZone:zone];
  failureError = v5->_failureError;
  v5->_failureError = v10;

  v12 = [(NSNumber *)self->_orderKey copyWithZone:zone];
  orderKey = v5->_orderKey;
  v5->_orderKey = v12;

  v5->_percentComplete = self->_percentComplete;
  *&v5->_persistentID = *&self->_persistentID;
  v5->_purchaseID = self->_purchaseID;
  *&v5->_storeItemID = *&self->_storeItemID;
  return v5;
}

- (ASDJob)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDJob *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalOrderKey"];
    externalOrderKey = v5->_externalOrderKey;
    v5->_externalOrderKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"failureError"];
    failureError = v5->_failureError;
    v5->_failureError = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderKey"];
    orderKey = v5->_orderKey;
    v5->_orderKey = v12;

    [coderCopy decodeDoubleForKey:@"percentComplete"];
    v5->_percentComplete = v14;
    v5->_persistentID = [coderCopy decodeInt64ForKey:@"persistentID"];
    v5->_phase = [coderCopy decodeIntegerForKey:@"phase"];
    v5->_purchaseID = [coderCopy decodeInt64ForKey:@"purchaseID"];
    v5->_storeItemID = [coderCopy decodeInt64ForKey:@"storeItemID"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_externalOrderKey forKey:@"externalOrderKey"];
  failureError = self->_failureError;
  if (failureError)
  {
    v5 = ASDErrorWithSafeUserInfo(failureError);
    [coderCopy encodeObject:v5 forKey:@"failureError"];
  }

  [coderCopy encodeObject:self->_orderKey forKey:@"orderKey"];
  [coderCopy encodeDouble:@"percentComplete" forKey:self->_percentComplete];
  [coderCopy encodeInt64:self->_persistentID forKey:@"persistentID"];
  [coderCopy encodeInteger:self->_phase forKey:@"phase"];
  [coderCopy encodeInt64:self->_purchaseID forKey:@"purchaseID"];
  [coderCopy encodeInt64:self->_storeItemID forKey:@"storeItemID"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

@end