@interface User
- (User)initWithDSID:(id)a3 username:(id)a4 password:(id)a5 biometricsToken:(id)a6;
- (User)initWithDictionary:(id)a3;
- (id)compile;
- (id)description;
@end

@implementation User

- (User)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DSID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"username"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"password"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"biometricsToken"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  if (v6 && v8)
  {
    self = [(User *)self initWithDSID:v6 username:v8 password:v10 biometricsToken:v12];
    v13 = self;
  }

  return v13;
}

- (User)initWithDSID:(id)a3 username:(id)a4 password:(id)a5 biometricsToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = User;
  v15 = [(User *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DSID, a3);
    objc_storeStrong(&v16->_username, a4);
    objc_storeStrong(&v16->_password, a5);
    objc_storeStrong(&v16->_biometricsToken, a6);
  }

  return v16;
}

- (id)compile
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(User *)self biometricsToken];
  [v3 ap_setNullableObject:v4 forKey:@"biometricsToken"];

  v5 = [(User *)self DSID];
  [v3 ap_setNullableObject:v5 forKey:@"DSID"];

  v6 = [(User *)self password];
  [v3 ap_setNullableObject:v6 forKey:@"password"];

  v7 = [(User *)self username];
  [v3 ap_setNullableObject:v7 forKey:@"username"];

  return v3;
}

- (id)description
{
  v3 = [(User *)self compile];
  v4 = [(User *)self ap_generateDescriptionWithSubObjects:v3];

  return v4;
}

@end