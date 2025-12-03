@interface AKAttestationData
- (AKAttestationData)initWithCoder:(id)coder;
- (AKAttestationData)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAttestationData

- (AKAttestationData)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKAttestationData;
  selfCopy = [(AKAttestationData *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] copy];
    attestationHeaders = selfCopy->_attestationHeaders;
    selfCopy->_attestationHeaders = v4;
    MEMORY[0x1E69E5920](attestationHeaders);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKAttestationData)initWithCoder:(id)coder
{
  v16 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v17.receiver = v3;
  v17.super_class = AKAttestationData;
  selfCopy = [(AKAttestationData *)&v17 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v14 = location[0];
    v13 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v15 = [v13 setWithObjects:{v12, v10, v11, objc_opt_class(), 0}];
    v4 = [v14 decodeObjectOfClasses:? forKey:?];
    attestationHeaders = selfCopy->_attestationHeaders;
    selfCopy->_attestationHeaders = v4;
    MEMORY[0x1E69E5920](attestationHeaders);
    MEMORY[0x1E69E5920](v15);
  }

  v7 = &selfCopy;
  v9 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v7, obj);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_attestationHeaders forKey:@"_attestationHeaders"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSDictionary *)selfCopy->_attestationHeaders copy];
  v4 = *(v7[0] + 1);
  *(v7[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v6 = NSStringFromClass(v2);
  allKeys = [(NSDictionary *)self->_attestationHeaders allKeys];
  v7 = [v4 stringWithFormat:@"%@ %@", v6, allKeys];
  MEMORY[0x1E69E5920](allKeys);
  MEMORY[0x1E69E5920](v6);

  return v7;
}

@end