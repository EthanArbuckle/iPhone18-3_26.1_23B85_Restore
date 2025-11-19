@interface AKServerRequestConfiguration
- (AKServerRequestConfiguration)initWithCoder:(id)a3;
- (AKServerRequestConfiguration)initWithRequest:(id)a3 requestType:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKServerRequestConfiguration

- (AKServerRequestConfiguration)initWithCoder:(id)a3
{
  v25 = &v28;
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v28;
  v28 = 0;
  v26.receiver = v3;
  v26.super_class = AKServerRequestConfiguration;
  v28 = [(AKServerRequestConfiguration *)&v26 init];
  objc_storeStrong(&v28, v28);
  if (v28)
  {
    v18 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_request"];
    request = v28->_request;
    v28->_request = v4;
    MEMORY[0x1E69E5920](request);
    v19 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_resourceLoadDelegate"];
    resourceLoadDelegate = v28->_resourceLoadDelegate;
    v28->_resourceLoadDelegate = v6;
    MEMORY[0x1E69E5920](resourceLoadDelegate);
    v8 = [location[0] decodeIntegerForKey:@"_requestType"];
    v28->_requestType = v8;
    v9 = [location[0] decodeIntegerForKey:@"_presentationType"];
    v28->_presentationType = v9;
    v20 = location[0];
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_urlConfiguration"];
    urlConfiguration = v28->_urlConfiguration;
    v28->_urlConfiguration = v10;
    MEMORY[0x1E69E5920](urlConfiguration);
    v23 = location[0];
    v22 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v24 = [v22 setWithObjects:{v21, objc_opt_class(), 0}];
    v12 = [v23 decodeObjectOfClasses:? forKey:?];
    whitelistedPathURLs = v28->_whitelistedPathURLs;
    v28->_whitelistedPathURLs = v12;
    MEMORY[0x1E69E5920](whitelistedPathURLs);
    MEMORY[0x1E69E5920](v24);
  }

  v15 = &v28;
  v17 = MEMORY[0x1E69E5928](v28);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v15, obj);
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_request forKey:@"_request"];
  [location[0] encodeObject:v4->_resourceLoadDelegate forKey:@"_resourceLoadDelegate"];
  [location[0] encodeInteger:v4->_requestType forKey:@"_requestType"];
  [location[0] encodeInteger:v4->_presentationType forKey:@"_presentationType"];
  [location[0] encodeObject:v4->_urlConfiguration forKey:@"_urlConfiguration"];
  [location[0] encodeObject:v4->_whitelistedPathURLs forKey:@"_whitelistedRedirectURLs"];
  objc_storeStrong(location, 0);
}

- (AKServerRequestConfiguration)initWithRequest:(id)a3 requestType:(unint64_t)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKServerRequestConfiguration;
  v8 = [(AKServerRequestConfiguration *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    v12->_requestType = v10;
    objc_storeStrong(&v12->_request, location[0]);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p \n{\n request: %@\n delegate: %@\n requestType: %lu\n presentationType: %lu \n}>", v5, self, self->_request, self->_resourceLoadDelegate, self->_requestType, self->_presentationType];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end