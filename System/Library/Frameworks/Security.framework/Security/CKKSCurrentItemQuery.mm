@interface CKKSCurrentItemQuery
- (CKKSCurrentItemQuery)initWithCoder:(id)coder;
- (CKKSCurrentItemQuery)initWithIdentifier:(id)identifier accessGroup:(id)group zoneID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSCurrentItemQuery

- (CKKSCurrentItemQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CKKSCurrentItemQuery;
  v5 = [(CKKSCurrentItemQuery *)&v13 init];
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
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CKKSCurrentItemQuery *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  accessGroup = [(CKKSCurrentItemQuery *)self accessGroup];
  [coderCopy encodeObject:accessGroup forKey:@"accessGroup"];

  zoneID = [(CKKSCurrentItemQuery *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  zoneID = [(CKKSCurrentItemQuery *)self zoneID];
  accessGroup = [(CKKSCurrentItemQuery *)self accessGroup];
  identifier = [(CKKSCurrentItemQuery *)self identifier];
  v7 = [v3 stringWithFormat:@"<CKKSCurrentItemQuery(%@-%@): %@>", zoneID, accessGroup, identifier];

  return v7;
}

- (CKKSCurrentItemQuery)initWithIdentifier:(id)identifier accessGroup:(id)group zoneID:(id)d
{
  identifierCopy = identifier;
  groupCopy = group;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CKKSCurrentItemQuery;
  v12 = [(CKKSCurrentItemQuery *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_accessGroup, group);
    objc_storeStrong(&v13->_zoneID, d);
  }

  return v13;
}

@end