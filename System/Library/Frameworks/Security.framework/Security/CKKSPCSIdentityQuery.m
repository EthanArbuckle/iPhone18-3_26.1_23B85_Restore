@interface CKKSPCSIdentityQuery
- (CKKSPCSIdentityQuery)initWithCoder:(id)a3;
- (CKKSPCSIdentityQuery)initWithServiceNumber:(id)a3 accessGroup:(id)a4 publicKey:(id)a5 zoneID:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSPCSIdentityQuery

- (CKKSPCSIdentityQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKKSPCSIdentityQuery;
  v5 = [(CKKSPCSIdentityQuery *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceNumber"];
    serviceNumber = v5->_serviceNumber;
    v5->_serviceNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSPCSIdentityQuery *)self serviceNumber];
  [v4 encodeObject:v5 forKey:@"serviceNumber"];

  v6 = [(CKKSPCSIdentityQuery *)self accessGroup];
  [v4 encodeObject:v6 forKey:@"accessGroup"];

  v7 = [(CKKSPCSIdentityQuery *)self zoneID];
  [v4 encodeObject:v7 forKey:@"zoneID"];

  v8 = [(CKKSPCSIdentityQuery *)self publicKey];
  [v4 encodeObject:v8 forKey:@"publicKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKKSPCSIdentityQuery *)self zoneID];
  v5 = [(CKKSPCSIdentityQuery *)self serviceNumber];
  v6 = [v3 stringWithFormat:@"<CKKSPCSIdentityQuery(%@): %@>", v4, v5];

  return v6;
}

- (CKKSPCSIdentityQuery)initWithServiceNumber:(id)a3 accessGroup:(id)a4 publicKey:(id)a5 zoneID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKKSPCSIdentityQuery;
  v15 = [(CKKSPCSIdentityQuery *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceNumber, a3);
    objc_storeStrong(&v16->_accessGroup, a4);
    objc_storeStrong(&v16->_publicKey, a5);
    objc_storeStrong(&v16->_zoneID, a6);
  }

  return v16;
}

@end