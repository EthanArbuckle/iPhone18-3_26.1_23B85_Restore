@interface AKAccountMigrationContext
- (AKAccountMigrationContext)initWithCoder:(id)coder;
- (AKAccountMigrationContext)initWithPendingDOB:(id)b;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAccountMigrationContext

- (AKAccountMigrationContext)initWithPendingDOB:(id)b
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, b);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKAccountMigrationContext;
  selfCopy = [(AKAccountMigrationContext *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] copy];
    pendingDOB = selfCopy->_pendingDOB;
    selfCopy->_pendingDOB = v4;
    MEMORY[0x1E69E5920](pendingDOB);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tPendingDOB: %@\n}>", v5, self, self->_pendingDOB];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_pendingDOB forKey:@"_pendingDOB"];
  objc_storeStrong(location, 0);
}

- (AKAccountMigrationContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKAccountMigrationContext;
  selfCopy = [(AKAccountMigrationContext *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pendingDOB"];
    pendingDOB = selfCopy->_pendingDOB;
    selfCopy->_pendingDOB = v4;
    MEMORY[0x1E69E5920](pendingDOB);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSDate *)selfCopy->_pendingDOB copy];
  v4 = *(v7[0] + 1);
  *(v7[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

@end