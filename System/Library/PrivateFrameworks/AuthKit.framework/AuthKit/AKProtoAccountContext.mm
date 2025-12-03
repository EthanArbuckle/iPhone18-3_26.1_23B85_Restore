@interface AKProtoAccountContext
- (AKProtoAccountContext)init;
- (AKProtoAccountContext)initWithAgeRange:(unint64_t)range;
- (AKProtoAccountContext)initWithCoder:(id)coder;
- (AKProtoAccountContext)initWithGivenName:(id)name lastName:(id)lastName ageRange:(unint64_t)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
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

- (AKProtoAccountContext)initWithAgeRange:(unint64_t)range
{
  v7 = a2;
  rangeCopy = range;
  v8 = 0;
  v5.receiver = self;
  v5.super_class = AKProtoAccountContext;
  v8 = [(AKProtoAccountContext *)&v5 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_ageRange = rangeCopy;
  }

  v4 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (AKProtoAccountContext)initWithGivenName:(id)name lastName:(id)lastName ageRange:(unint64_t)range
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v11 = 0;
  objc_storeStrong(&v11, lastName);
  v5 = selfCopy;
  selfCopy = 0;
  v10 = [(AKProtoAccountContext *)v5 initWithAgeRange:range];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_givenName, location[0]);
    objc_storeStrong(&selfCopy->_lastName, v11);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (AKProtoAccountContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_ageRange"];
  unsignedIntValue = [v11 unsignedIntValue];
  MEMORY[0x1E69E5920](v11);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKProtoAccountContext *)v3 initWithAgeRange:unsignedIntValue];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_givenName"];
    givenName = selfCopy->_givenName;
    selfCopy->_givenName = v4;
    MEMORY[0x1E69E5920](givenName);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_lastName"];
    lastName = selfCopy->_lastName;
    selfCopy->_lastName = v6;
    MEMORY[0x1E69E5920](lastName);
    v8 = [location[0] decodeBoolForKey:@"_shouldForceShieldUI"];
    selfCopy->_shouldForceShieldUI = v8;
  }

  v10 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_givenName forKey:@"_givenName"];
  [location[0] encodeObject:selfCopy->_lastName forKey:@"_lastName"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_ageRange];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeBool:selfCopy->_shouldForceShieldUI forKey:@"_shouldForceShieldUI"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAgeRange:", self->_ageRange}];
  v3 = [(NSString *)selfCopy->_givenName copy];
  v4 = *(v9[0] + 2);
  *(v9[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_lastName copy];
  v6 = *(v9[0] + 3);
  *(v9[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  *(v9[0] + 8) = selfCopy->_shouldForceShieldUI;
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

@end