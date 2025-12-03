@interface CKKSCurrentItemQueryResult
- (CKKSCurrentItemQueryResult)initWithCoder:(id)coder;
- (CKKSCurrentItemQueryResult)initWithIdentifier:(id)identifier accessGroup:(id)group zoneID:(id)d decryptedRecord:(id)record;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSCurrentItemQueryResult

- (CKKSCurrentItemQueryResult)initWithCoder:(id)coder
{
  v20[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CKKSCurrentItemQueryResult;
  v5 = [(CKKSCurrentItemQueryResult *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
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
  identifier = [(CKKSCurrentItemQueryResult *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  accessGroup = [(CKKSCurrentItemQueryResult *)self accessGroup];
  [coderCopy encodeObject:accessGroup forKey:@"accessGroup"];

  zoneID = [(CKKSCurrentItemQueryResult *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];

  decryptedRecord = [(CKKSCurrentItemQueryResult *)self decryptedRecord];
  [coderCopy encodeObject:decryptedRecord forKey:@"decryptedRecord"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  zoneID = [(CKKSCurrentItemQueryResult *)self zoneID];
  accessGroup = [(CKKSCurrentItemQueryResult *)self accessGroup];
  identifier = [(CKKSCurrentItemQueryResult *)self identifier];
  v7 = [v3 stringWithFormat:@"<CKKSCurrentItemQueryResult(%@-%@): %@>", zoneID, accessGroup, identifier];

  return v7;
}

- (CKKSCurrentItemQueryResult)initWithIdentifier:(id)identifier accessGroup:(id)group zoneID:(id)d decryptedRecord:(id)record
{
  identifierCopy = identifier;
  groupCopy = group;
  dCopy = d;
  recordCopy = record;
  v18.receiver = self;
  v18.super_class = CKKSCurrentItemQueryResult;
  v15 = [(CKKSCurrentItemQueryResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_accessGroup, group);
    objc_storeStrong(&v16->_zoneID, d);
    objc_storeStrong(&v16->_decryptedRecord, record);
  }

  return v16;
}

@end