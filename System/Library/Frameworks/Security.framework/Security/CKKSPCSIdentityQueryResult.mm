@interface CKKSPCSIdentityQueryResult
- (CKKSPCSIdentityQueryResult)initWithCoder:(id)coder;
- (CKKSPCSIdentityQueryResult)initWithServiceNumber:(id)number publicKey:(id)key zoneID:(id)d decryptedRecord:(id)record;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSPCSIdentityQueryResult

- (CKKSPCSIdentityQueryResult)initWithCoder:(id)coder
{
  v20[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CKKSPCSIdentityQueryResult;
  v5 = [(CKKSPCSIdentityQueryResult *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceNumber"];
    serviceNumber = v5->_serviceNumber;
    v5->_serviceNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
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

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"decryptedRecord"];
    decryptedRecord = v5->_decryptedRecord;
    v5->_decryptedRecord = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceNumber = [(CKKSPCSIdentityQueryResult *)self serviceNumber];
  [coderCopy encodeObject:serviceNumber forKey:@"serviceNumber"];

  zoneID = [(CKKSPCSIdentityQueryResult *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];

  publicKey = [(CKKSPCSIdentityQueryResult *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  decryptedRecord = [(CKKSPCSIdentityQueryResult *)self decryptedRecord];
  [coderCopy encodeObject:decryptedRecord forKey:@"decryptedRecord"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  zoneID = [(CKKSPCSIdentityQueryResult *)self zoneID];
  serviceNumber = [(CKKSPCSIdentityQueryResult *)self serviceNumber];
  v6 = [v3 stringWithFormat:@"<CKKSPCSIdentityQueryResult(%@): %@>", zoneID, serviceNumber];

  return v6;
}

- (CKKSPCSIdentityQueryResult)initWithServiceNumber:(id)number publicKey:(id)key zoneID:(id)d decryptedRecord:(id)record
{
  numberCopy = number;
  keyCopy = key;
  dCopy = d;
  recordCopy = record;
  v18.receiver = self;
  v18.super_class = CKKSPCSIdentityQueryResult;
  v15 = [(CKKSPCSIdentityQueryResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceNumber, number);
    objc_storeStrong(&v16->_publicKey, key);
    objc_storeStrong(&v16->_zoneID, d);
    objc_storeStrong(&v16->_decryptedRecord, record);
  }

  return v16;
}

@end