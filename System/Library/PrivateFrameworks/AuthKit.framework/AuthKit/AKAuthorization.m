@interface AKAuthorization
- (AKAuthorization)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setAuthorizedRequest:(id)a3;
@end

@implementation AKAuthorization

- (void)encodeWithCoder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKAuthorization *)v8 authorizedRequest];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [(AKAuthorization *)v8 credential];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
}

- (AKAuthorization)initWithCoder:(id)a3
{
  v29 = &v34;
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v34;
  v34 = 0;
  v32.receiver = v3;
  v32.super_class = AKAuthorization;
  v30 = [(AKAuthorization *)&v32 init];
  v34 = v30;
  objc_storeStrong(&v34, v30);
  if (v30)
  {
    v25 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v26 = &v10;
    v28 = 0;
    v4 = [v25 setWithObjects:{v24, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
    v27 = &v31;
    v31 = v4;
    v5 = [location[0] decodeObjectOfClasses:v4 forKey:@"_authorizedRequest"];
    authorizedRequest = v34->_authorizedRequest;
    v34->_authorizedRequest = v5;
    MEMORY[0x1E69E5920](authorizedRequest);
    v7 = [location[0] decodeObjectOfClasses:v31 forKey:@"_credential"];
    credential = v34->_credential;
    v34->_credential = v7;
    MEMORY[0x1E69E5920](credential);
    objc_storeStrong(v27, v28);
  }

  v11 = &v34;
  v13 = MEMORY[0x1E69E5928](v34);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v11, obj);
  return v13;
}

- (void)setAuthorizedRequest:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] _sanitizedCopy];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v6->_authorizedRequest, location[0]);
  objc_storeStrong(location, 0);
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\nAuthorized request: %@\nCredential: %@\n}", v5, self, self->_authorizedRequest, self->_credential];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end