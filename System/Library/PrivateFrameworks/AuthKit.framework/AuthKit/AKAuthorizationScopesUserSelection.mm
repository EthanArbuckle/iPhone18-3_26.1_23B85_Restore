@interface AKAuthorizationScopesUserSelection
- (AKAuthorizationScopesUserSelection)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationScopesUserSelection

- (AKAuthorizationScopesUserSelection)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKAuthorizationScopesUserSelection;
  v9 = [(AKAuthorizationScopesUserSelection *)&v10 init];
  selfCopy = v9;
  objc_storeStrong(&selfCopy, v9);
  if (v9)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userInformation"];
    userInformation = selfCopy->_userInformation;
    selfCopy->_userInformation = v4;
    MEMORY[0x1E69E5920](userInformation);
    v6 = [location[0] decodeBoolForKey:@"_makePrivateEmail"];
    selfCopy->_makePrivateEmail = v6;
  }

  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_userInformation forKey:@"_userInformation"];
  [location[0] encodeBool:selfCopy->_makePrivateEmail forKey:@"_makePrivateEmail"];
  objc_storeStrong(location, 0);
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  userInformation = [(AKAuthorizationScopesUserSelection *)self userInformation];
  makePrivateEmail = [(AKAuthorizationScopesUserSelection *)self makePrivateEmail];
  v3 = @"YES";
  if (!makePrivateEmail)
  {
    v3 = @"NO";
  }

  v7 = [v5 stringWithFormat:@"{ userInformation: %@, makePrivateEmail: %@}", userInformation, v3];
  MEMORY[0x1E69E5920](userInformation);

  return v7;
}

@end