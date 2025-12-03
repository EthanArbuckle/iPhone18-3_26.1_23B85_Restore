@interface AKSignInWithAppleRequestContext
- (AKSignInWithAppleRequestContext)initWithAltDSID:(id)d;
- (AKSignInWithAppleRequestContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKSignInWithAppleRequestContext

- (AKSignInWithAppleRequestContext)initWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKSignInWithAppleRequestContext;
  v6 = [(AKSignInWithAppleRequestContext *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_altDSID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKSignInWithAppleRequestContext)initWithCoder:(id)coder
{
  v27 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v29.receiver = v3;
  v29.super_class = AKSignInWithAppleRequestContext;
  v28 = [(AKSignInWithAppleRequestContext *)&v29 init];
  selfCopy = v28;
  objc_storeStrong(&selfCopy, v28);
  if (v28)
  {
    v19 = location[0];
    v22 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v20 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"signInWithAppleAccount"];
    signInWithAppleAccount = selfCopy->_signInWithAppleAccount;
    selfCopy->_signInWithAppleAccount = v6;
    MEMORY[0x1E69E5920](signInWithAppleAccount);
    v21 = location[0];
    v8 = *(v22 + 3776);
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"currentGroupID"];
    currentGroupID = selfCopy->_currentGroupID;
    selfCopy->_currentGroupID = v9;
    MEMORY[0x1E69E5920](currentGroupID);
    v11 = [location[0] decodeBoolForKey:@"_simulateAccountSharingResponse"];
    selfCopy->__simulateAccountSharingResponse = v11;
    v25 = location[0];
    v24 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v12 = *(v22 + 3776);
    v26 = [v24 setWithObjects:{v23, objc_opt_class(), 0}];
    v13 = [v25 decodeObjectOfClasses:? forKey:?];
    groups = selfCopy->__groups;
    selfCopy->__groups = v13;
    MEMORY[0x1E69E5920](groups);
    MEMORY[0x1E69E5920](v26);
  }

  v16 = &selfCopy;
  v18 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v16, obj);
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"altDSID"];
  [location[0] encodeObject:selfCopy->_signInWithAppleAccount forKey:@"signInWithAppleAccount"];
  [location[0] encodeObject:selfCopy->_currentGroupID forKey:@"currentGroupID"];
  [location[0] encodeBool:selfCopy->__simulateAccountSharingResponse forKey:@"_simulateAccountSharingResponse"];
  [location[0] encodeObject:selfCopy->__groups forKey:@"_groups"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13[2] = a2;
  v13[1] = zone;
  v13[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_altDSID copy];
  v4 = *(v13[0] + 2);
  *(v13[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(AKSignInWithAppleAccount *)selfCopy->_signInWithAppleAccount copy];
  v6 = *(v13[0] + 3);
  *(v13[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_currentGroupID copy];
  v8 = *(v13[0] + 4);
  *(v13[0] + 4) = v7;
  MEMORY[0x1E69E5920](v8);
  *(v13[0] + 8) = selfCopy->__simulateAccountSharingResponse;
  v9 = [(NSSet *)selfCopy->__groups copy];
  v10 = *(v13[0] + 5);
  *(v13[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  v12 = MEMORY[0x1E69E5928](v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\taltDSID: %@, \n\tsignInWithAppleAccount: %@, \n\tcurrentGroupID: %@, \n}>", v5, self, self->_altDSID, self->_signInWithAppleAccount, self->_currentGroupID];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end