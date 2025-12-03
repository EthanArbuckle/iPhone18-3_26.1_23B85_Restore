@interface AKPersistRecoveryKeyContext
- (AKPersistRecoveryKeyContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKPersistRecoveryKeyContext

- (AKPersistRecoveryKeyContext)initWithCoder:(id)coder
{
  v20 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v22.receiver = v3;
  v22.super_class = AKPersistRecoveryKeyContext;
  v21 = [(AKPersistRecoveryKeyContext *)&v22 init];
  selfCopy = v21;
  objc_storeStrong(&selfCopy, v21);
  if (v21)
  {
    v14 = location[0];
    v13 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v17 = 0x1E696A000uLL;
    v16 = [v13 setWithObjects:{v12, v10, v11, objc_opt_class(), 0}];
    v15 = [v14 decodeObjectOfClasses:? forKey:?];
    [(AKPersistRecoveryKeyContext *)selfCopy setVerifier:?];
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v16);
    v18 = location[0];
    v4 = *(v17 + 3480);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keyType"];
    unsignedIntegerValue = [v19 unsignedIntegerValue];
    [(AKPersistRecoveryKeyContext *)selfCopy setKeyType:unsignedIntegerValue];
    MEMORY[0x1E69E5920](v19);
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
  v3 = location[0];
  verifier = [(AKPersistRecoveryKeyContext *)selfCopy verifier];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](verifier);
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AKPersistRecoveryKeyContext keyType](selfCopy, "keyType")}];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v8[2] = a2;
  v8[1] = zone;
  v8[0] = [[AKPersistRecoveryKeyContext allocWithZone:?]];
  verifier = [(AKPersistRecoveryKeyContext *)selfCopy verifier];
  v4 = *(v8[0] + 1);
  *(v8[0] + 1) = verifier;
  MEMORY[0x1E69E5920](v4);
  keyType = [(AKPersistRecoveryKeyContext *)selfCopy keyType];
  *(v8[0] + 2) = keyType;
  v7 = MEMORY[0x1E69E5928](v8[0]);
  objc_storeStrong(v8, 0);
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  verifier = [(AKPersistRecoveryKeyContext *)self verifier];
  ak_redactedCopy = [(NSDictionary *)verifier ak_redactedCopy];
  v6 = [v3 stringWithFormat:@"AKPersistRecoveryKeyContext:\nVerifier: %@\nKeyType: %lu", ak_redactedCopy, -[AKPersistRecoveryKeyContext keyType](self, "keyType")];
  MEMORY[0x1E69E5920](ak_redactedCopy);
  MEMORY[0x1E69E5920](verifier);

  return v6;
}

@end