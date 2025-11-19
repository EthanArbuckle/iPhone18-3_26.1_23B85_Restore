@interface AKPersistRecoveryKeyContext
- (AKPersistRecoveryKeyContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKPersistRecoveryKeyContext

- (AKPersistRecoveryKeyContext)initWithCoder:(id)a3
{
  v20 = &v24;
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v24;
  v24 = 0;
  v22.receiver = v3;
  v22.super_class = AKPersistRecoveryKeyContext;
  v21 = [(AKPersistRecoveryKeyContext *)&v22 init];
  v24 = v21;
  objc_storeStrong(&v24, v21);
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
    [(AKPersistRecoveryKeyContext *)v24 setVerifier:?];
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v16);
    v18 = location[0];
    v4 = *(v17 + 3480);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keyType"];
    v5 = [v19 unsignedIntegerValue];
    [(AKPersistRecoveryKeyContext *)v24 setKeyType:v5];
    MEMORY[0x1E69E5920](v19);
  }

  v7 = &v24;
  v9 = MEMORY[0x1E69E5928](v24);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v7, obj);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKPersistRecoveryKeyContext *)v8 verifier];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AKPersistRecoveryKeyContext keyType](v8, "keyType")}];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = self;
  v8[2] = a2;
  v8[1] = a3;
  v8[0] = [[AKPersistRecoveryKeyContext allocWithZone:?]];
  v3 = [(AKPersistRecoveryKeyContext *)v9 verifier];
  v4 = *(v8[0] + 1);
  *(v8[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(AKPersistRecoveryKeyContext *)v9 keyType];
  *(v8[0] + 2) = v5;
  v7 = MEMORY[0x1E69E5928](v8[0]);
  objc_storeStrong(v8, 0);
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = [(AKPersistRecoveryKeyContext *)self verifier];
  v4 = [(NSDictionary *)v5 ak_redactedCopy];
  v6 = [v3 stringWithFormat:@"AKPersistRecoveryKeyContext:\nVerifier: %@\nKeyType: %lu", v4, -[AKPersistRecoveryKeyContext keyType](self, "keyType")];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end