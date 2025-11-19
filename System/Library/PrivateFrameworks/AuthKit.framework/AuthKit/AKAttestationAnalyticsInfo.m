@interface AKAttestationAnalyticsInfo
- (AKAttestationAnalyticsInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAttestationAnalyticsInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)v10->_endPointVIP copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  *(v9[0] + 3) = v10->_headerSize;
  *(v9[0] + 6) = v10->_errorCode;
  v5 = [(NSString *)v10->_errorDomain copy];
  v6 = *(v9[0] + 5);
  *(v9[0] + 5) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (AKAttestationAnalyticsInfo)initWithCoder:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v20;
  v20 = 0;
  v18 = [(AKAttestationAnalyticsInfo *)v3 init];
  v20 = v18;
  objc_storeStrong(&v20, v18);
  if (v18)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_endPointVIP"];
    endPointVIP = v20->_endPointVIP;
    v20->_endPointVIP = v4;
    MEMORY[0x1E69E5920](endPointVIP);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_requestMethod"];
    requestMethod = v20->_requestMethod;
    v20->_requestMethod = v6;
    MEMORY[0x1E69E5920](requestMethod);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_headerSize"];
    v8 = [v15 unsignedIntegerValue];
    v20->_headerSize = v8;
    MEMORY[0x1E69E5920](v15);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bodySize"];
    v9 = [v16 unsignedIntegerValue];
    v20->_bodySize = v9;
    MEMORY[0x1E69E5920](v16);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_errorCode"];
    v10 = [v17 integerValue];
    v20->_errorCode = v10;
    MEMORY[0x1E69E5920](v17);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_errorDomain"];
    errorDomain = v20->_errorDomain;
    v20->_errorDomain = v11;
    MEMORY[0x1E69E5920](errorDomain);
  }

  v14 = MEMORY[0x1E69E5928](v20);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v10->_endPointVIP forKey:@"_endPointVIP"];
  [location[0] encodeObject:v10->_requestMethod forKey:@"_requestMethod"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10->_headerSize];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10->_bodySize];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  v7 = location[0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v10->_errorCode];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v8);
  [location[0] encodeObject:v10->_errorDomain forKey:@"_errorDomain"];
  objc_storeStrong(location, 0);
}

@end