@interface AACustodianshipInfo
- (AACustodianshipInfo)initWithCoder:(id)a3;
- (AACustodianshipInfo)initWithID:(id)a3 status:(int64_t)a4 ownerHandle:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)statusDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianshipInfo

- (AACustodianshipInfo)initWithID:(id)a3 status:(int64_t)a4 ownerHandle:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AACustodianshipInfo;
  v11 = [(AACustodianshipInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_custodianID, a3);
    v12->_status = a4;
    objc_storeStrong(&v12->_ownerHandle, a5);
  }

  return v12;
}

- (AACustodianshipInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AACustodianshipInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_custodianID"];
    custodianID = v5->_custodianID;
    v5->_custodianID = v6;

    v5->_status = [v4 decodeIntegerForKey:@"_status"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerHandle"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  custodianID = self->_custodianID;
  v5 = a3;
  [v5 encodeObject:custodianID forKey:@"_custodianID"];
  [v5 encodeInteger:self->_status forKey:@"_status"];
  [v5 encodeObject:self->_ownerHandle forKey:@"_ownerHandle"];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v2 = [(AACustodianshipInfo *)self status];
  if ((v2 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C9B848 + v2 + 1);
  }
}

@end