@interface AKAuthorizationScopesUserSelection
- (AKAuthorizationScopesUserSelection)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationScopesUserSelection

- (AKAuthorizationScopesUserSelection)initWithCoder:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = AKAuthorizationScopesUserSelection;
  v9 = [(AKAuthorizationScopesUserSelection *)&v10 init];
  v12 = v9;
  objc_storeStrong(&v12, v9);
  if (v9)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userInformation"];
    userInformation = v12->_userInformation;
    v12->_userInformation = v4;
    MEMORY[0x1E69E5920](userInformation);
    v6 = [location[0] decodeBoolForKey:@"_makePrivateEmail"];
    v12->_makePrivateEmail = v6;
  }

  v8 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_userInformation forKey:@"_userInformation"];
  [location[0] encodeBool:v4->_makePrivateEmail forKey:@"_makePrivateEmail"];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(AKAuthorizationScopesUserSelection *)self userInformation];
  v2 = [(AKAuthorizationScopesUserSelection *)self makePrivateEmail];
  v3 = @"YES";
  if (!v2)
  {
    v3 = @"NO";
  }

  v7 = [v5 stringWithFormat:@"{ userInformation: %@, makePrivateEmail: %@}", v6, v3];
  MEMORY[0x1E69E5920](v6);

  return v7;
}

@end