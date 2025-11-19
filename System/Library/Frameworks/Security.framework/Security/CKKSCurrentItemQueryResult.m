@interface CKKSCurrentItemQueryResult
- (CKKSCurrentItemQueryResult)initWithCoder:(id)a3;
- (CKKSCurrentItemQueryResult)initWithIdentifier:(id)a3 accessGroup:(id)a4 zoneID:(id)a5 decryptedRecord:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSCurrentItemQueryResult

- (CKKSCurrentItemQueryResult)initWithCoder:(id)a3
{
  v20[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKKSCurrentItemQueryResult;
  v5 = [(CKKSCurrentItemQueryResult *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v10;

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
  v5 = [(CKKSCurrentItemQueryResult *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(CKKSCurrentItemQueryResult *)self accessGroup];
  [v4 encodeObject:v6 forKey:@"accessGroup"];

  v7 = [(CKKSCurrentItemQueryResult *)self zoneID];
  [v4 encodeObject:v7 forKey:@"zoneID"];

  v8 = [(CKKSCurrentItemQueryResult *)self decryptedRecord];
  [v4 encodeObject:v8 forKey:@"decryptedRecord"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKKSCurrentItemQueryResult *)self zoneID];
  v5 = [(CKKSCurrentItemQueryResult *)self accessGroup];
  v6 = [(CKKSCurrentItemQueryResult *)self identifier];
  v7 = [v3 stringWithFormat:@"<CKKSCurrentItemQueryResult(%@-%@): %@>", v4, v5, v6];

  return v7;
}

- (CKKSCurrentItemQueryResult)initWithIdentifier:(id)a3 accessGroup:(id)a4 zoneID:(id)a5 decryptedRecord:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKKSCurrentItemQueryResult;
  v15 = [(CKKSCurrentItemQueryResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_accessGroup, a4);
    objc_storeStrong(&v16->_zoneID, a5);
    objc_storeStrong(&v16->_decryptedRecord, a6);
  }

  return v16;
}

@end