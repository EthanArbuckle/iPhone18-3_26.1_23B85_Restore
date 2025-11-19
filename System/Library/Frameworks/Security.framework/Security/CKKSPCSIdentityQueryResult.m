@interface CKKSPCSIdentityQueryResult
- (CKKSPCSIdentityQueryResult)initWithCoder:(id)a3;
- (CKKSPCSIdentityQueryResult)initWithServiceNumber:(id)a3 publicKey:(id)a4 zoneID:(id)a5 decryptedRecord:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSPCSIdentityQueryResult

- (CKKSPCSIdentityQueryResult)initWithCoder:(id)a3
{
  v20[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKKSPCSIdentityQueryResult;
  v5 = [(CKKSPCSIdentityQueryResult *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceNumber"];
    serviceNumber = v5->_serviceNumber;
    v5->_serviceNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v10;

    v12 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
    v14 = [v12 setWithArray:v13];

    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"decryptedRecord"];
    decryptedRecord = v5->_decryptedRecord;
    v5->_decryptedRecord = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSPCSIdentityQueryResult *)self serviceNumber];
  [v4 encodeObject:v5 forKey:@"serviceNumber"];

  v6 = [(CKKSPCSIdentityQueryResult *)self zoneID];
  [v4 encodeObject:v6 forKey:@"zoneID"];

  v7 = [(CKKSPCSIdentityQueryResult *)self publicKey];
  [v4 encodeObject:v7 forKey:@"publicKey"];

  v8 = [(CKKSPCSIdentityQueryResult *)self decryptedRecord];
  [v4 encodeObject:v8 forKey:@"decryptedRecord"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKKSPCSIdentityQueryResult *)self zoneID];
  v5 = [(CKKSPCSIdentityQueryResult *)self serviceNumber];
  v6 = [v3 stringWithFormat:@"<CKKSPCSIdentityQueryResult(%@): %@>", v4, v5];

  return v6;
}

- (CKKSPCSIdentityQueryResult)initWithServiceNumber:(id)a3 publicKey:(id)a4 zoneID:(id)a5 decryptedRecord:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKKSPCSIdentityQueryResult;
  v15 = [(CKKSPCSIdentityQueryResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceNumber, a3);
    objc_storeStrong(&v16->_publicKey, a4);
    objc_storeStrong(&v16->_zoneID, a5);
    objc_storeStrong(&v16->_decryptedRecord, a6);
  }

  return v16;
}

@end