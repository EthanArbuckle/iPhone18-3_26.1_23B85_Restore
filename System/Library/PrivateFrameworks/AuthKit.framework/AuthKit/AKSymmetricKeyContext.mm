@interface AKSymmetricKeyContext
- (AKSymmetricKeyContext)initWithCoder:(id)coder;
- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)subdomains;
- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)subdomains clientLabel:(id)label;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKSymmetricKeyContext

- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)subdomains clientLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subdomains);
  v9 = 0;
  objc_storeStrong(&v9, label);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKSymmetricKeyContext;
  selfCopy = [(AKSymmetricKeyContext *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_requestedSubdomains, location[0]);
    objc_storeStrong(&selfCopy->_clientLabel, v9);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKSymmetricKeyContext)initWithRequestedSubdomains:(id)subdomains
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subdomains);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKSymmetricKeyContext *)v3 initWithRequestedSubdomains:location[0] clientLabel:0];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKSymmetricKeyContext)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12 = [(AKSymmetricKeyContext *)v3 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v10 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v13 = [v10 setWithArray:?];
    MEMORY[0x1E69E5920](v11);
    v4 = [location[0] decodeObjectOfClasses:v13 forKey:@"_requestedSubdomains"];
    requestedSubdomains = selfCopy->_requestedSubdomains;
    selfCopy->_requestedSubdomains = v4;
    MEMORY[0x1E69E5920](requestedSubdomains);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientLabel"];
    clientLabel = selfCopy->_clientLabel;
    selfCopy->_clientLabel = v6;
    MEMORY[0x1E69E5920](clientLabel);
    objc_storeStrong(&v13, 0);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_requestedSubdomains forKey:@"_requestedSubdomains"];
  [location[0] encodeObject:selfCopy->_clientLabel forKey:@"_clientLabel"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSArray *)selfCopy->_requestedSubdomains copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_clientLabel copy];
  v6 = *(v9[0] + 2);
  *(v9[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

@end