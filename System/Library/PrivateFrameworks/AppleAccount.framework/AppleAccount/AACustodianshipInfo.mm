@interface AACustodianshipInfo
- (AACustodianshipInfo)initWithCoder:(id)coder;
- (AACustodianshipInfo)initWithID:(id)d status:(int64_t)status ownerHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)statusDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianshipInfo

- (AACustodianshipInfo)initWithID:(id)d status:(int64_t)status ownerHandle:(id)handle
{
  dCopy = d;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = AACustodianshipInfo;
  v11 = [(AACustodianshipInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_custodianID, d);
    v12->_status = status;
    objc_storeStrong(&v12->_ownerHandle, handle);
  }

  return v12;
}

- (AACustodianshipInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AACustodianshipInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v5->_status = [coderCopy decodeIntegerForKey:@"_status"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ownerHandle"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  custodianID = self->_custodianID;
  coderCopy = coder;
  [coderCopy encodeObject:custodianID forKey:@"_custodianID"];
  [coderCopy encodeInteger:self->_status forKey:@"_status"];
  [coderCopy encodeObject:self->_ownerHandle forKey:@"_ownerHandle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSUUID *)self->_custodianID copy];
  v6 = v4[1];
  v4[1] = v5;

  v4[2] = self->_status;
  v7 = [(NSString *)self->_ownerHandle copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

- (id)statusDescription
{
  status = [(AACustodianshipInfo *)self status];
  if ((status + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C9B848 + status + 1);
  }
}

@end