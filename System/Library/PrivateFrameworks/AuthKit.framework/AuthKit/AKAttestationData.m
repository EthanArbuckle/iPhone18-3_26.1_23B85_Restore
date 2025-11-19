@interface AKAttestationData
- (AKAttestationData)initWithCoder:(id)a3;
- (AKAttestationData)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAttestationData

- (AKAttestationData)initWithDictionary:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKAttestationData;
  v10 = [(AKAttestationData *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = [location[0] copy];
    attestationHeaders = v10->_attestationHeaders;
    v10->_attestationHeaders = v4;
    MEMORY[0x1E69E5920](attestationHeaders);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (AKAttestationData)initWithCoder:(id)a3
{
  v16 = &v19;
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v19;
  v19 = 0;
  v17.receiver = v3;
  v17.super_class = AKAttestationData;
  v19 = [(AKAttestationData *)&v17 init];
  objc_storeStrong(&v19, v19);
  if (v19)
  {
    v14 = location[0];
    v13 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v15 = [v13 setWithObjects:{v12, v10, v11, objc_opt_class(), 0}];
    v4 = [v14 decodeObjectOfClasses:? forKey:?];
    attestationHeaders = v19->_attestationHeaders;
    v19->_attestationHeaders = v4;
    MEMORY[0x1E69E5920](attestationHeaders);
    MEMORY[0x1E69E5920](v15);
  }

  v7 = &v19;
  v9 = MEMORY[0x1E69E5928](v19);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v7, obj);
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_attestationHeaders forKey:@"_attestationHeaders"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = self;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSDictionary *)v8->_attestationHeaders copy];
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
  v5 = [(NSDictionary *)self->_attestationHeaders allKeys];
  v7 = [v4 stringWithFormat:@"%@ %@", v6, v5];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);

  return v7;
}

@end