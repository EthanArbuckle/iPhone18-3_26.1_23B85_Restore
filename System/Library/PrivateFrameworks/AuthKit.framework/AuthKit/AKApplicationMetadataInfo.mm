@interface AKApplicationMetadataInfo
- (AKApplicationMetadataInfo)initWithCoder:(id)a3;
- (AKApplicationMetadataInfo)initWithResponseInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKApplicationMetadataInfo

- (AKApplicationMetadataInfo)initWithResponseInfo:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v23;
  v23 = 0;
  v13 = [(AKApplicationMetadataInfo *)v3 init];
  v23 = v13;
  objc_storeStrong(&v23, v13);
  if (v13)
  {
    v4 = [location[0] objectForKeyedSubscript:@"authorizedAppListVersion"];
    authorizedAppListVersion = v23->_authorizedAppListVersion;
    v23->_authorizedAppListVersion = v4;
    MEMORY[0x1E69E5920](authorizedAppListVersion);
    v21 = [MEMORY[0x1E695DF90] dictionary];
    v10 = objc_opt_class();
    v11 = [location[0] objectForKeyedSubscript:@"teams"];
    v20 = _AKSafeCast_18(v10, v11);
    MEMORY[0x1E69E5920](v11);
    v12 = v20;
    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __50__AKApplicationMetadataInfo_initWithResponseInfo___block_invoke;
    v18 = &unk_1E73D7240;
    v19 = MEMORY[0x1E69E5928](v21);
    [v12 enumerateObjectsUsingBlock:&v14];
    v6 = [v21 copy];
    teams = v23->_teams;
    v23->_teams = v6;
    MEMORY[0x1E69E5920](teams);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  v9 = MEMORY[0x1E69E5928](v23);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v23, 0);
  return v9;
}

void __50__AKApplicationMetadataInfo_initWithResponseInfo___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  v4 = [AKDeveloperTeam alloc];
  v11[0] = [(AKDeveloperTeam *)v4 initWithResponseInfo:location[0]];
  v8 = v11[0];
  v9 = a1[4];
  v10 = [v11[0] teamID];
  [v9 setObject:v8 forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v10);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

- (AKApplicationMetadataInfo)initWithCoder:(id)a3
{
  v20 = &v23;
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v23;
  v23 = 0;
  v21 = [(AKApplicationMetadataInfo *)v3 init];
  v23 = v21;
  objc_storeStrong(&v23, v21);
  if (v21)
  {
    v13 = location[0];
    v14 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"authorizedAppListVersion"];
    authorizedAppListVersion = v23->_authorizedAppListVersion;
    v23->_authorizedAppListVersion = v4;
    MEMORY[0x1E69E5920](authorizedAppListVersion);
    v18 = location[0];
    v17 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v15 = objc_opt_class();
    v6 = *(v14 + 3776);
    v19 = [v17 setWithObjects:{v16, v15, objc_opt_class(), 0}];
    v7 = [v18 decodeObjectOfClasses:? forKey:?];
    teams = v23->_teams;
    v23->_teams = v7;
    MEMORY[0x1E69E5920](teams);
    MEMORY[0x1E69E5920](v19);
  }

  v10 = &v23;
  v12 = MEMORY[0x1E69E5928](v23);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v10, obj);
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_authorizedAppListVersion forKey:@"authorizedAppListVersion"];
  [location[0] encodeObject:v4->_teams forKey:@"teams"];
  objc_storeStrong(location, 0);
}

@end