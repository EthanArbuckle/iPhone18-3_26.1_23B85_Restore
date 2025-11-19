@interface AKCredentialRequest
- (AKCredentialRequest)init;
- (AKCredentialRequest)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRequestIdentifier:(id)a3;
@end

@implementation AKCredentialRequest

- (AKCredentialRequest)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = AKCredentialRequest;
  v8 = [(AKCredentialRequest *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v2 = [MEMORY[0x1E696AFB0] UUID];
    requestIdentifier = v11->_requestIdentifier;
    v11->_requestIdentifier = v2;
    MEMORY[0x1E69E5920](requestIdentifier);
    v4 = [MEMORY[0x1E696AFB0] UUID];
    transactionID = v11->_transactionID;
    v11->_transactionID = v4;
    MEMORY[0x1E69E5920](transactionID);
  }

  v7 = MEMORY[0x1E69E5928](v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)setRequestIdentifier:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_requestIdentifier, location[0]);
  objc_storeStrong(location, 0);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_altDSID forKey:@"altDSID"];
  [location[0] encodeObject:v4->_userIdentifier forKey:@"AKUserIdentifier"];
  [location[0] encodeObject:v4->_requestIdentifier forKey:@"_requestIdentifier"];
  [location[0] encodeObject:v4->_transactionID forKey:@"_transactionID"];
  objc_storeStrong(location, 0);
}

- (AKCredentialRequest)initWithCoder:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = AKCredentialRequest;
  v16 = [(AKCredentialRequest *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v16->_altDSID;
    v16->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKUserIdentifier"];
    userIdentifier = v16->_userIdentifier;
    v16->_userIdentifier = v6;
    MEMORY[0x1E69E5920](userIdentifier);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_requestIdentifier"];
    requestIdentifier = v16->_requestIdentifier;
    v16->_requestIdentifier = v8;
    MEMORY[0x1E69E5920](requestIdentifier);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_transactionID"];
    transactionID = v16->_transactionID;
    v16->_transactionID = v10;
    MEMORY[0x1E69E5920](transactionID);
  }

  v13 = MEMORY[0x1E69E5928](v16);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = self;
  v13[2] = a2;
  v13[1] = a3;
  v13[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSUUID *)v14->_requestIdentifier copy];
  v4 = *(v13[0] + 3);
  *(v13[0] + 3) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v14->_userIdentifier copy];
  v6 = *(v13[0] + 2);
  *(v13[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v14->_altDSID copy];
  v8 = *(v13[0] + 1);
  *(v13[0] + 1) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSUUID *)v14->_transactionID copy];
  v10 = *(v13[0] + 4);
  *(v13[0] + 4) = v9;
  MEMORY[0x1E69E5920](v10);
  v12 = MEMORY[0x1E69E5928](v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p> requestIdentifier: %@, \naltDSID: %@, \nuserID: %@ \ntransactionID:%@", v5, self, self->_requestIdentifier, self->_altDSID, self->_userIdentifier, self->_transactionID];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end