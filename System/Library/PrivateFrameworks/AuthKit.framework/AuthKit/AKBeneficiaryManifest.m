@interface AKBeneficiaryManifest
- (AKBeneficiaryManifest)initWithBundleInformation:(id)a3 manifestOptions:(int64_t)a4;
- (AKBeneficiaryManifest)initWithCoder:(id)a3;
- (NSDictionary)parsableRepresentation;
- (id)_bundleTypeFrom:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKBeneficiaryManifest

- (AKBeneficiaryManifest)initWithBundleInformation:(id)a3 manifestOptions:(int64_t)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKBeneficiaryManifest;
  v8 = [(AKBeneficiaryManifest *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_accessibleBundleInformation, location[0]);
    v12->_manifestOptions = v10;
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (NSDictionary)parsableRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = self;
  v20[1] = a2;
  v20[0] = [MEMORY[0x1E695DF90] dictionary];
  v19 = [(AKBeneficiaryManifest *)v21 accessibleBundleInformation];
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v19);
  v14 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v11);
      v15 = [MEMORY[0x1E695DF90] dictionary];
      v5 = [v17 bundleIdentifier];
      [v15 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v5);
      v6 = [v17 bundleName];
      [v15 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v6);
      v7 = -[AKBeneficiaryManifest _bundleTypeFrom:](v21, "_bundleTypeFrom:", [v17 bundleType]);
      [v15 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v7);
      v8 = [v17 bundleDescription];
      [v15 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v8);
      [v18 addObject:v15];
      objc_storeStrong(&v15, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  [v20[0] setObject:v18 forKeyedSubscript:@"items"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[AKBeneficiaryManifest _isAllOptionsSelected](v21, "_isAllOptionsSelected")}];
  [v20[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [v20[0] copy];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_bundleTypeFrom:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = MEMORY[0x1E69E5928](&unk_1F07B4F58);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E5928](&unk_1F07B4F40);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_accessibleBundleInformation forKey:@"_accessibleBundleInformation"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v6->_manifestOptions];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (AKBeneficiaryManifest)initWithCoder:(id)a3
{
  v19 = &v23;
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v23;
  v23 = 0;
  v20 = [(AKBeneficiaryManifest *)v3 init];
  v23 = v20;
  objc_storeStrong(&v23, v20);
  if (v20)
  {
    v14 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v18 = 0;
    v4 = [v14 setWithObjects:{v13, objc_opt_class(), 0}];
    v17 = &v21;
    v21 = v4;
    v5 = [location[0] decodeObjectOfClasses:v4 forKey:@"_accessibleBundleInformation"];
    accessibleBundleInformation = v23->_accessibleBundleInformation;
    v23->_accessibleBundleInformation = v5;
    MEMORY[0x1E69E5920](accessibleBundleInformation);
    v15 = location[0];
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_manifestOptions"];
    v7 = [v16 integerValue];
    v8 = v16;
    v23->_manifestOptions = v7;
    MEMORY[0x1E69E5920](v8);
    objc_storeStrong(v17, v18);
  }

  v10 = &v23;
  v12 = MEMORY[0x1E69E5928](v23);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v10, obj);
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = self;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = objc_alloc_init(AKBeneficiaryManifest);
  v3 = [(NSArray *)v8->_accessibleBundleInformation copy];
  v4 = *(v7[0] + 1);
  *(v7[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  *(v7[0] + 2) = v8->_manifestOptions;
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

@end