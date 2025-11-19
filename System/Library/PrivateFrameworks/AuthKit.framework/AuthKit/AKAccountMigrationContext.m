@interface AKAccountMigrationContext
- (AKAccountMigrationContext)initWithCoder:(id)a3;
- (AKAccountMigrationContext)initWithPendingDOB:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAccountMigrationContext

- (AKAccountMigrationContext)initWithPendingDOB:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKAccountMigrationContext;
  v10 = [(AKAccountMigrationContext *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [location[0] copy];
    pendingDOB = v10->_pendingDOB;
    v10->_pendingDOB = v4;
    MEMORY[0x1E69E5920](pendingDOB);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_pendingDOB forKey:@"_pendingDOB"];
  objc_storeStrong(location, 0);
}

- (AKAccountMigrationContext)initWithCoder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKAccountMigrationContext;
  v10 = [(AKAccountMigrationContext *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pendingDOB"];
    pendingDOB = v10->_pendingDOB;
    v10->_pendingDOB = v4;
    MEMORY[0x1E69E5920](pendingDOB);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = self;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSDate *)v8->_pendingDOB copy];
  v4 = *(v7[0] + 1);
  *(v7[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

@end