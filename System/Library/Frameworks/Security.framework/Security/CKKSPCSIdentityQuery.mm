@interface CKKSPCSIdentityQuery
- (CKKSPCSIdentityQuery)initWithCoder:(id)coder;
- (CKKSPCSIdentityQuery)initWithServiceNumber:(id)number accessGroup:(id)group publicKey:(id)key zoneID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSPCSIdentityQuery

- (CKKSPCSIdentityQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CKKSPCSIdentityQuery;
  v5 = [(CKKSPCSIdentityQuery *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceNumber"];
    serviceNumber = v5->_serviceNumber;
    v5->_serviceNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceNumber = [(CKKSPCSIdentityQuery *)self serviceNumber];
  [coderCopy encodeObject:serviceNumber forKey:@"serviceNumber"];

  accessGroup = [(CKKSPCSIdentityQuery *)self accessGroup];
  [coderCopy encodeObject:accessGroup forKey:@"accessGroup"];

  zoneID = [(CKKSPCSIdentityQuery *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];

  publicKey = [(CKKSPCSIdentityQuery *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  zoneID = [(CKKSPCSIdentityQuery *)self zoneID];
  serviceNumber = [(CKKSPCSIdentityQuery *)self serviceNumber];
  v6 = [v3 stringWithFormat:@"<CKKSPCSIdentityQuery(%@): %@>", zoneID, serviceNumber];

  return v6;
}

- (CKKSPCSIdentityQuery)initWithServiceNumber:(id)number accessGroup:(id)group publicKey:(id)key zoneID:(id)d
{
  numberCopy = number;
  groupCopy = group;
  keyCopy = key;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = CKKSPCSIdentityQuery;
  v15 = [(CKKSPCSIdentityQuery *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceNumber, number);
    objc_storeStrong(&v16->_accessGroup, group);
    objc_storeStrong(&v16->_publicKey, key);
    objc_storeStrong(&v16->_zoneID, d);
  }

  return v16;
}

@end