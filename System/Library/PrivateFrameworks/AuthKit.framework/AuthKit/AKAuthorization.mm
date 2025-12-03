@interface AKAuthorization
- (AKAuthorization)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setAuthorizedRequest:(id)request;
@end

@implementation AKAuthorization

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  authorizedRequest = [(AKAuthorization *)selfCopy authorizedRequest];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](authorizedRequest);
  v5 = location[0];
  credential = [(AKAuthorization *)selfCopy credential];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](credential);
  objc_storeStrong(location, 0);
}

- (AKAuthorization)initWithCoder:(id)coder
{
  v29 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v32.receiver = v3;
  v32.super_class = AKAuthorization;
  v30 = [(AKAuthorization *)&v32 init];
  selfCopy = v30;
  objc_storeStrong(&selfCopy, v30);
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
    authorizedRequest = selfCopy->_authorizedRequest;
    selfCopy->_authorizedRequest = v5;
    MEMORY[0x1E69E5920](authorizedRequest);
    v7 = [location[0] decodeObjectOfClasses:v31 forKey:@"_credential"];
    credential = selfCopy->_credential;
    selfCopy->_credential = v7;
    MEMORY[0x1E69E5920](credential);
    objc_storeStrong(v27, v28);
  }

  v11 = &selfCopy;
  v13 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v11, obj);
  return v13;
}

- (void)setAuthorizedRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _sanitizedCopy = [location[0] _sanitizedCopy];
    v4 = location[0];
    location[0] = _sanitizedCopy;
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&selfCopy->_authorizedRequest, location[0]);
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