@interface AKServerRequestConfiguration
- (AKServerRequestConfiguration)initWithCoder:(id)coder;
- (AKServerRequestConfiguration)initWithRequest:(id)request requestType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKServerRequestConfiguration

- (AKServerRequestConfiguration)initWithCoder:(id)coder
{
  v25 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v26.receiver = v3;
  v26.super_class = AKServerRequestConfiguration;
  selfCopy = [(AKServerRequestConfiguration *)&v26 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v18 = location[0];
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_request"];
    request = selfCopy->_request;
    selfCopy->_request = v4;
    MEMORY[0x1E69E5920](request);
    v19 = location[0];
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_resourceLoadDelegate"];
    resourceLoadDelegate = selfCopy->_resourceLoadDelegate;
    selfCopy->_resourceLoadDelegate = v6;
    MEMORY[0x1E69E5920](resourceLoadDelegate);
    v8 = [location[0] decodeIntegerForKey:@"_requestType"];
    selfCopy->_requestType = v8;
    v9 = [location[0] decodeIntegerForKey:@"_presentationType"];
    selfCopy->_presentationType = v9;
    v20 = location[0];
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_urlConfiguration"];
    urlConfiguration = selfCopy->_urlConfiguration;
    selfCopy->_urlConfiguration = v10;
    MEMORY[0x1E69E5920](urlConfiguration);
    v23 = location[0];
    v22 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v24 = [v22 setWithObjects:{v21, objc_opt_class(), 0}];
    v12 = [v23 decodeObjectOfClasses:? forKey:?];
    whitelistedPathURLs = selfCopy->_whitelistedPathURLs;
    selfCopy->_whitelistedPathURLs = v12;
    MEMORY[0x1E69E5920](whitelistedPathURLs);
    MEMORY[0x1E69E5920](v24);
  }

  v15 = &selfCopy;
  v17 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v15, obj);
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_request forKey:@"_request"];
  [location[0] encodeObject:selfCopy->_resourceLoadDelegate forKey:@"_resourceLoadDelegate"];
  [location[0] encodeInteger:selfCopy->_requestType forKey:@"_requestType"];
  [location[0] encodeInteger:selfCopy->_presentationType forKey:@"_presentationType"];
  [location[0] encodeObject:selfCopy->_urlConfiguration forKey:@"_urlConfiguration"];
  [location[0] encodeObject:selfCopy->_whitelistedPathURLs forKey:@"_whitelistedRedirectURLs"];
  objc_storeStrong(location, 0);
}

- (AKServerRequestConfiguration)initWithRequest:(id)request requestType:(unint64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  typeCopy = type;
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKServerRequestConfiguration;
  v8 = [(AKServerRequestConfiguration *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    selfCopy->_requestType = typeCopy;
    objc_storeStrong(&selfCopy->_request, location[0]);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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