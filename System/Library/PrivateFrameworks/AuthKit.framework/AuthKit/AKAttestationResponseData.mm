@interface AKAttestationResponseData
- (AKAttestationResponseData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAttestationResponseData

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeInteger:selfCopy->_status forKey:@"status"];
  [location[0] encodeObject:selfCopy->_headersFromServer forKey:@"headersFromServer"];
  objc_storeStrong(location, 0);
}

- (AKAttestationResponseData)initWithCoder:(id)coder
{
  v15 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v16 = [(AKAttestationResponseData *)v3 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    v4 = [location[0] decodeIntegerForKey:@"status"];
    selfCopy->_status = v4;
    v13 = location[0];
    v12 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v14 = [v12 setWithObjects:{v11, objc_opt_class(), 0}];
    v5 = [v13 decodeObjectOfClasses:? forKey:?];
    headersFromServer = selfCopy->_headersFromServer;
    selfCopy->_headersFromServer = v5;
    MEMORY[0x1E69E5920](headersFromServer);
    MEMORY[0x1E69E5920](v14);
  }

  v8 = &selfCopy;
  v10 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v8, obj);
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v6[2] = a2;
  v6[1] = zone;
  v6[0] = objc_opt_new();
  [v6[0] setStatus:selfCopy->_status];
  v4 = [(NSDictionary *)selfCopy->_headersFromServer copy];
  [v6[0] setHeadersFromServer:?];
  MEMORY[0x1E69E5920](v4);
  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);
  return v5;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p> status: %li, headers:%@", v5, self, self->_status, self->_headersFromServer];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end