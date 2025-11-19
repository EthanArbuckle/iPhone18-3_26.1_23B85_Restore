@interface CKKSCurrentItemQuery
- (CKKSCurrentItemQuery)initWithCoder:(id)a3;
- (CKKSCurrentItemQuery)initWithIdentifier:(id)a3 accessGroup:(id)a4 zoneID:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKKSCurrentItemQuery

- (CKKSCurrentItemQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKKSCurrentItemQuery;
  v5 = [(CKKSCurrentItemQuery *)&v13 init];
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
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CKKSCurrentItemQuery *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(CKKSCurrentItemQuery *)self accessGroup];
  [v4 encodeObject:v6 forKey:@"accessGroup"];

  v7 = [(CKKSCurrentItemQuery *)self zoneID];
  [v4 encodeObject:v7 forKey:@"zoneID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKKSCurrentItemQuery *)self zoneID];
  v5 = [(CKKSCurrentItemQuery *)self accessGroup];
  v6 = [(CKKSCurrentItemQuery *)self identifier];
  v7 = [v3 stringWithFormat:@"<CKKSCurrentItemQuery(%@-%@): %@>", v4, v5, v6];

  return v7;
}

- (CKKSCurrentItemQuery)initWithIdentifier:(id)a3 accessGroup:(id)a4 zoneID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKKSCurrentItemQuery;
  v12 = [(CKKSCurrentItemQuery *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_accessGroup, a4);
    objc_storeStrong(&v13->_zoneID, a5);
  }

  return v13;
}

@end