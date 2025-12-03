@interface User
- (User)initWithDSID:(id)d username:(id)username password:(id)password biometricsToken:(id)token;
- (User)initWithDictionary:(id)dictionary;
- (id)compile;
- (id)description;
@end

@implementation User

- (User)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"DSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"username"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"biometricsToken"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  selfCopy = 0;
  if (v6 && v8)
  {
    self = [(User *)self initWithDSID:v6 username:v8 password:v10 biometricsToken:v12];
    selfCopy = self;
  }

  return selfCopy;
}

- (User)initWithDSID:(id)d username:(id)username password:(id)password biometricsToken:(id)token
{
  dCopy = d;
  usernameCopy = username;
  passwordCopy = password;
  tokenCopy = token;
  v18.receiver = self;
  v18.super_class = User;
  v15 = [(User *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DSID, d);
    objc_storeStrong(&v16->_username, username);
    objc_storeStrong(&v16->_password, password);
    objc_storeStrong(&v16->_biometricsToken, token);
  }

  return v16;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  biometricsToken = [(User *)self biometricsToken];
  [v3 ap_setNullableObject:biometricsToken forKey:@"biometricsToken"];

  dSID = [(User *)self DSID];
  [v3 ap_setNullableObject:dSID forKey:@"DSID"];

  password = [(User *)self password];
  [v3 ap_setNullableObject:password forKey:@"password"];

  username = [(User *)self username];
  [v3 ap_setNullableObject:username forKey:@"username"];

  return v3;
}

- (id)description
{
  compile = [(User *)self compile];
  v4 = [(User *)self ap_generateDescriptionWithSubObjects:compile];

  return v4;
}

@end