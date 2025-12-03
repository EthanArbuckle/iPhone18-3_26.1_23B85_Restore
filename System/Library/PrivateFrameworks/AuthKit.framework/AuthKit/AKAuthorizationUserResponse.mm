@interface AKAuthorizationUserResponse
- (AKAuthorizationUserResponse)initWithCoder:(id)coder;
- (BOOL)hasSelectedSharedAccountForLogin;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationUserResponse

- (AKAuthorizationUserResponse)initWithCoder:(id)coder
{
  v42[3] = *MEMORY[0x1E69E9840];
  v36 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v39.receiver = v3;
  v39.super_class = AKAuthorizationUserResponse;
  v37 = [(AKAuthorizationUserResponse *)&v39 init];
  selfCopy = v37;
  objc_storeStrong(&selfCopy, v37);
  if (v37)
  {
    v24 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userSelection"];
    userSelection = selfCopy->_userSelection;
    selfCopy->_userSelection = v4;
    MEMORY[0x1E69E5920](userSelection);
    v25 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_loginChoiceIndex"];
    loginChoiceIndex = selfCopy->_loginChoiceIndex;
    selfCopy->_loginChoiceIndex = v6;
    MEMORY[0x1E69E5920](loginChoiceIndex);
    v27 = MEMORY[0x1E695DFA8];
    v28 = 0x1E695D000uLL;
    v26 = objc_opt_class();
    obj = 0;
    v8 = [v27 setWithObjects:{v26, objc_opt_class(), 0}];
    v35 = &v38;
    v38 = v8;
    v30 = v8;
    v9 = objc_opt_class();
    v29 = v42;
    v42[0] = v9;
    v42[1] = objc_opt_class();
    v42[2] = objc_opt_class();
    v31 = [*(v28 + 3784) arrayWithObjects:v29 count:3];
    [v30 addObjectsFromArray:?];
    MEMORY[0x1E69E5920](v31);
    v10 = [location[0] decodeObjectOfClasses:v38 forKey:@"_loginChoice"];
    loginChoice = selfCopy->_loginChoice;
    selfCopy->_loginChoice = v10;
    MEMORY[0x1E69E5920](loginChoice);
    v32 = location[0];
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_selectedRequest"];
    selectedRequest = selfCopy->_selectedRequest;
    selfCopy->_selectedRequest = v12;
    MEMORY[0x1E69E5920](selectedRequest);
    v33 = location[0];
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_rawAccountPassword"];
    rawAccountPassword = selfCopy->_rawAccountPassword;
    selfCopy->_rawAccountPassword = v14;
    MEMORY[0x1E69E5920](rawAccountPassword);
    v16 = [location[0] decodeBoolForKey:@"_requestParentalPermission"];
    v17 = obj;
    v18 = v16;
    v19 = v35;
    selfCopy->_requestParentalPermission = v18;
    objc_storeStrong(v19, v17);
  }

  v22 = &selfCopy;
  v21 = MEMORY[0x1E69E5928](selfCopy);
  v23 = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v22, v23);
  *MEMORY[0x1E69E9840];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_userSelection forKey:@"_userSelection"];
  [location[0] encodeObject:selfCopy->_loginChoiceIndex forKey:@"_loginChoiceIndex"];
  [location[0] encodeObject:selfCopy->_loginChoice forKey:@"_loginChoice"];
  [location[0] encodeObject:selfCopy->_selectedRequest forKey:@"_selectedRequest"];
  [location[0] encodeObject:selfCopy->_rawAccountPassword forKey:@"_rawAccountPassword"];
  [location[0] encodeBool:selfCopy->_requestParentalPermission forKey:@"_requestParentalPermission"];
  objc_storeStrong(location, 0);
}

- (BOOL)hasSelectedSharedAccountForLogin
{
  loginChoice = [(AKAuthorizationUserResponse *)self loginChoice];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 1;
  MEMORY[0x1E69E5920](loginChoice);
  return v4;
}

- (id)description
{
  v11 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  selectedRequest = self->_selectedRequest;
  userSelection = self->_userSelection;
  v3 = @"YES";
  if (!self->_loginChoiceIndex)
  {
    v3 = @"NO";
  }

  v15 = v3;
  if (self->_rawAccountPassword)
  {
    v4 = [(NSString *)self->_rawAccountPassword length];
    v5 = @"(empty)";
    if (v4)
    {
      v5 = @"(******)";
    }

    v10 = v5;
  }

  else
  {
    v10 = @"(null)";
  }

  requestParentalPermission = [(AKAuthorizationUserResponse *)self requestParentalPermission];
  v7 = @"YES";
  if (!requestParentalPermission)
  {
    v7 = @"NO";
  }

  v9 = [v11 stringWithFormat:@"<%@: %p {\n\tselectedRequest: %@, \n\tuserSelection: %@, \n\tloginChoiceindex: %@, \n\trawPassword: %@, \n\trequestParentalPermission: %@, \n}>", v12, self, selectedRequest, userSelection, v15, v10, v7];
  MEMORY[0x1E69E5920](v12);

  return v9;
}

@end