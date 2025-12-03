@interface AKAuthenticatableResource
- (AKAuthenticatableResource)init;
- (AKAuthenticatableResource)initWithCoder:(id)coder;
- (AKAuthenticatableResource)initWithResourceType:(int64_t)type resourceName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthenticatableResource

- (AKAuthenticatableResource)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAuthenticatableResource;
  v6 = [(AKAuthenticatableResource *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_resourceType = 0;
  }

  v3 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (AKAuthenticatableResource)initWithResourceType:(int64_t)type resourceName:(id)name
{
  selfCopy = self;
  v9 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, name);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAuthenticatableResource *)v4 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    selfCopy->_resourceType = typeCopy;
    objc_storeStrong(&selfCopy->_resourceName, location);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKAuthenticatableResource)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAuthenticatableResource *)v3 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeIntegerForKey:@"resourceType"];
    selfCopy->_resourceType = v4;
    v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"resourceName"];
    resourceName = selfCopy->_resourceName;
    selfCopy->_resourceName = v5;
    MEMORY[0x1E69E5920](resourceName);
  }

  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeInteger:selfCopy->_resourceType forKey:@"resourceType"];
  [location[0] encodeObject:selfCopy->_resourceName forKey:@"resourceName"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v7[0] + 1) = selfCopy->_resourceType;
  v3 = [(NSString *)selfCopy->_resourceName copy];
  v4 = *(v7[0] + 2);
  *(v7[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

@end