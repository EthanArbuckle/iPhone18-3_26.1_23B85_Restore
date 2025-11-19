@interface AKAttestationResponseData
- (AKAttestationResponseData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAttestationResponseData

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeInteger:v4->_status forKey:@"status"];
  [location[0] encodeObject:v4->_headersFromServer forKey:@"headersFromServer"];
  objc_storeStrong(location, 0);
}

- (AKAttestationResponseData)initWithCoder:(id)a3
{
  v15 = &v18;
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v18;
  v18 = 0;
  v16 = [(AKAttestationResponseData *)v3 init];
  v18 = v16;
  objc_storeStrong(&v18, v16);
  if (v16)
  {
    v4 = [location[0] decodeIntegerForKey:@"status"];
    v18->_status = v4;
    v13 = location[0];
    v12 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v14 = [v12 setWithObjects:{v11, objc_opt_class(), 0}];
    v5 = [v13 decodeObjectOfClasses:? forKey:?];
    headersFromServer = v18->_headersFromServer;
    v18->_headersFromServer = v5;
    MEMORY[0x1E69E5920](headersFromServer);
    MEMORY[0x1E69E5920](v14);
  }

  v8 = &v18;
  v10 = MEMORY[0x1E69E5928](v18);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v8, obj);
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = self;
  v6[2] = a2;
  v6[1] = a3;
  v6[0] = objc_opt_new();
  [v6[0] setStatus:v7->_status];
  v4 = [(NSDictionary *)v7->_headersFromServer copy];
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