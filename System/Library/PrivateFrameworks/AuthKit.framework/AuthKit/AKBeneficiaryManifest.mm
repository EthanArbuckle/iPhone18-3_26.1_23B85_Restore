@interface AKBeneficiaryManifest
- (AKBeneficiaryManifest)initWithBundleInformation:(id)information manifestOptions:(int64_t)options;
- (AKBeneficiaryManifest)initWithCoder:(id)coder;
- (NSDictionary)parsableRepresentation;
- (id)_bundleTypeFrom:(unint64_t)from;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKBeneficiaryManifest

- (AKBeneficiaryManifest)initWithBundleInformation:(id)information manifestOptions:(int64_t)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  optionsCopy = options;
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKBeneficiaryManifest;
  v8 = [(AKBeneficiaryManifest *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_accessibleBundleInformation, location[0]);
    selfCopy->_manifestOptions = optionsCopy;
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (NSDictionary)parsableRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20[1] = a2;
  v20[0] = [MEMORY[0x1E695DF90] dictionary];
  accessibleBundleInformation = [(AKBeneficiaryManifest *)selfCopy accessibleBundleInformation];
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessibleBundleInformation, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](accessibleBundleInformation);
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
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      bundleIdentifier = [v17 bundleIdentifier];
      [dictionary setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](bundleIdentifier);
      bundleName = [v17 bundleName];
      [dictionary setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](bundleName);
      v7 = -[AKBeneficiaryManifest _bundleTypeFrom:](selfCopy, "_bundleTypeFrom:", [v17 bundleType]);
      [dictionary setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v7);
      bundleDescription = [v17 bundleDescription];
      [dictionary setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](bundleDescription);
      [v18 addObject:dictionary];
      objc_storeStrong(&dictionary, 0);
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
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[AKBeneficiaryManifest _isAllOptionsSelected](selfCopy, "_isAllOptionsSelected")}];
  [v20[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [v20[0] copy];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&accessibleBundleInformation, 0);
  objc_storeStrong(v20, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_bundleTypeFrom:(unint64_t)from
{
  if (from)
  {
    if (from == 1)
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

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_accessibleBundleInformation forKey:@"_accessibleBundleInformation"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_manifestOptions];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (AKBeneficiaryManifest)initWithCoder:(id)coder
{
  v19 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v20 = [(AKBeneficiaryManifest *)v3 init];
  selfCopy = v20;
  objc_storeStrong(&selfCopy, v20);
  if (v20)
  {
    v14 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v18 = 0;
    v4 = [v14 setWithObjects:{v13, objc_opt_class(), 0}];
    v17 = &v21;
    v21 = v4;
    v5 = [location[0] decodeObjectOfClasses:v4 forKey:@"_accessibleBundleInformation"];
    accessibleBundleInformation = selfCopy->_accessibleBundleInformation;
    selfCopy->_accessibleBundleInformation = v5;
    MEMORY[0x1E69E5920](accessibleBundleInformation);
    v15 = location[0];
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_manifestOptions"];
    integerValue = [v16 integerValue];
    v8 = v16;
    selfCopy->_manifestOptions = integerValue;
    MEMORY[0x1E69E5920](v8);
    objc_storeStrong(v17, v18);
  }

  v10 = &selfCopy;
  v12 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v10, obj);
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = objc_alloc_init(AKBeneficiaryManifest);
  v3 = [(NSArray *)selfCopy->_accessibleBundleInformation copy];
  v4 = *(v7[0] + 1);
  *(v7[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  *(v7[0] + 2) = selfCopy->_manifestOptions;
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

@end