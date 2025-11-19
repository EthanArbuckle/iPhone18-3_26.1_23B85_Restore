@interface AKAuthorizationSharedAccountLoginChoice
- (AKAuthorizationSharedAccountLoginChoice)initWithCoder:(id)a3;
- (AKAuthorizationSharedAccountLoginChoice)initWithSignInWithAppleAccount:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationSharedAccountLoginChoice

- (AKAuthorizationSharedAccountLoginChoice)initWithSignInWithAppleAccount:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] shareInfo];
  v9 = [v8 participantName];
  v13 = 0;
  v11 = 0;
  if (v9)
  {
    v3 = MEMORY[0x1E69E5928](v9);
  }

  else
  {
    v14 = [location[0] shareInfo];
    v13 = 1;
    v12 = [v14 participantHandle];
    v11 = 1;
    v3 = MEMORY[0x1E69E5928](v12);
  }

  v15 = v3;
  if (v11)
  {
    MEMORY[0x1E69E5920](v12);
  }

  if (v13)
  {
    MEMORY[0x1E69E5920](v14);
  }

  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v8);
  v6 = v17;
  v7 = [location[0] clientID];
  v17 = 0;
  v10.receiver = v6;
  v10.super_class = AKAuthorizationSharedAccountLoginChoice;
  v17 = [(AKAuthorizationLoginChoice *)&v10 initWithUser:v15 site:?];
  objc_storeStrong(&v17, v17);
  MEMORY[0x1E69E5920](v7);
  if (v17)
  {
    objc_storeStrong(&v17->_sharedAccount, location[0]);
    [(AKAuthorizationLoginChoice *)v17 setAppleIDAuth:1];
  }

  v5 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v5;
}

- (AKAuthorizationSharedAccountLoginChoice)initWithCoder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKAuthorizationSharedAccountLoginChoice;
  v10 = [(AKAuthorizationLoginChoice *)&v8 initWithCoder:location[0]];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"sharedAccount"];
    sharedAccount = v10->_sharedAccount;
    v10->_sharedAccount = v4;
    MEMORY[0x1E69E5920](sharedAccount);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = AKAuthorizationSharedAccountLoginChoice;
  [(AKAuthorizationLoginChoice *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeObject:v5->_sharedAccount forKey:@"sharedAccount"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = self;
  v8[2] = a2;
  v8[1] = a3;
  v7.receiver = self;
  v7.super_class = AKAuthorizationSharedAccountLoginChoice;
  v8[0] = [(AKAuthorizationLoginChoice *)&v7 copyWithZone:a3];
  v3 = [(AKSignInWithAppleAccount *)v9->_sharedAccount copy];
  v4 = *(v8[0] + 4);
  *(v8[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v8[0]);
  objc_storeStrong(v8, 0);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tsharedAccount: %@, \n}>", v5, self, self->_sharedAccount];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end