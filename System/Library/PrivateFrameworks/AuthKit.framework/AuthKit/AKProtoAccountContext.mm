@interface AKProtoAccountContext
- (AKProtoAccountContext)init;
- (AKProtoAccountContext)initWithAgeRange:(unint64_t)a3;
- (AKProtoAccountContext)initWithCoder:(id)a3;
- (AKProtoAccountContext)initWithGivenName:(id)a3 lastName:(id)a4 ageRange:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKProtoAccountContext

- (AKProtoAccountContext)init
{
  v4 = 0;
  v4 = [(AKProtoAccountContext *)self initWithAgeRange:0];
  v3 = MEMORY[0x1E69E5928](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKProtoAccountContext)initWithAgeRange:(unint64_t)a3
{
  v7 = a2;
  v6 = a3;
  v8 = 0;
  v5.receiver = self;
  v5.super_class = AKProtoAccountContext;
  v8 = [(AKProtoAccountContext *)&v5 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_ageRange = v6;
  }

  v4 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (AKProtoAccountContext)initWithGivenName:(id)a3 lastName:(id)a4 ageRange:(unint64_t)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v5 = v13;
  v13 = 0;
  v10 = [(AKProtoAccountContext *)v5 initWithAgeRange:a5];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    objc_storeStrong(&v13->_givenName, location[0]);
    objc_storeStrong(&v13->_lastName, v11);
  }

  v7 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v7;
}

- (id)debugDescription
{
  v6 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7 = v3;
  if (self->_shouldForceShieldUI)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"<%@: %p {\n\tAgeRange: %lu, \n\tShouldForceShieldUI: %@, \n\tGivenName: %@, \n\tLastName: %@, \n}>", v3, self, self->_ageRange, v4, self->_givenName, self->_lastName];
  MEMORY[0x1E69E5920](v7);

  return v8;
}

- (AKProtoAccountContext)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_ageRange"];
  v12 = [v11 unsignedIntValue];
  MEMORY[0x1E69E5920](v11);
  v3 = v14;
  v14 = 0;
  v14 = [(AKProtoAccountContext *)v3 initWithAgeRange:v12];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_givenName"];
    givenName = v14->_givenName;
    v14->_givenName = v4;
    MEMORY[0x1E69E5920](givenName);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_lastName"];
    lastName = v14->_lastName;
    v14->_lastName = v6;
    MEMORY[0x1E69E5920](lastName);
    v8 = [location[0] decodeBoolForKey:@"_shouldForceShieldUI"];
    v14->_shouldForceShieldUI = v8;
  }

  v10 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_givenName forKey:@"_givenName"];
  [location[0] encodeObject:v6->_lastName forKey:@"_lastName"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6->_ageRange];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeBool:v6->_shouldForceShieldUI forKey:@"_shouldForceShieldUI"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAgeRange:", self->_ageRange}];
  v3 = [(NSString *)v10->_givenName copy];
  v4 = *(v9[0] + 2);
  *(v9[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v10->_lastName copy];
  v6 = *(v9[0] + 3);
  *(v9[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  *(v9[0] + 8) = v10->_shouldForceShieldUI;
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

@end