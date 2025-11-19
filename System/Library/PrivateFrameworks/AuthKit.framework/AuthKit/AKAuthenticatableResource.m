@interface AKAuthenticatableResource
- (AKAuthenticatableResource)init;
- (AKAuthenticatableResource)initWithCoder:(id)a3;
- (AKAuthenticatableResource)initWithResourceType:(int64_t)a3 resourceName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (AKAuthenticatableResource)initWithResourceType:(int64_t)a3 resourceName:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(AKAuthenticatableResource *)v4 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v10->_resourceType = v8;
    objc_storeStrong(&v10->_resourceName, location);
  }

  v6 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (AKAuthenticatableResource)initWithCoder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v10 = [(AKAuthenticatableResource *)v3 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [location[0] decodeIntegerForKey:@"resourceType"];
    v10->_resourceType = v4;
    v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"resourceName"];
    resourceName = v10->_resourceName;
    v10->_resourceName = v5;
    MEMORY[0x1E69E5920](resourceName);
  }

  v8 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeInteger:v4->_resourceType forKey:@"resourceType"];
  [location[0] encodeObject:v4->_resourceName forKey:@"resourceName"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = self;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v7[0] + 1) = v8->_resourceType;
  v3 = [(NSString *)v8->_resourceName copy];
  v4 = *(v7[0] + 2);
  *(v7[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

@end