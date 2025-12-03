@interface AKAttestationAnalyticsInfo
- (AKAttestationAnalyticsInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAttestationAnalyticsInfo

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = objc_alloc_init(objc_opt_class());
  v3 = [(NSString *)selfCopy->_endPointVIP copy];
  v4 = *(v9[0] + 1);
  *(v9[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  *(v9[0] + 3) = selfCopy->_headerSize;
  *(v9[0] + 6) = selfCopy->_errorCode;
  v5 = [(NSString *)selfCopy->_errorDomain copy];
  v6 = *(v9[0] + 5);
  *(v9[0] + 5) = v5;
  MEMORY[0x1E69E5920](v6);
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (AKAttestationAnalyticsInfo)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v18 = [(AKAttestationAnalyticsInfo *)v3 init];
  selfCopy = v18;
  objc_storeStrong(&selfCopy, v18);
  if (v18)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_endPointVIP"];
    endPointVIP = selfCopy->_endPointVIP;
    selfCopy->_endPointVIP = v4;
    MEMORY[0x1E69E5920](endPointVIP);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_requestMethod"];
    requestMethod = selfCopy->_requestMethod;
    selfCopy->_requestMethod = v6;
    MEMORY[0x1E69E5920](requestMethod);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_headerSize"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];
    selfCopy->_headerSize = unsignedIntegerValue;
    MEMORY[0x1E69E5920](v15);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_bodySize"];
    unsignedIntegerValue2 = [v16 unsignedIntegerValue];
    selfCopy->_bodySize = unsignedIntegerValue2;
    MEMORY[0x1E69E5920](v16);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_errorCode"];
    integerValue = [v17 integerValue];
    selfCopy->_errorCode = integerValue;
    MEMORY[0x1E69E5920](v17);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_errorDomain"];
    errorDomain = selfCopy->_errorDomain;
    selfCopy->_errorDomain = v11;
    MEMORY[0x1E69E5920](errorDomain);
  }

  v14 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_endPointVIP forKey:@"_endPointVIP"];
  [location[0] encodeObject:selfCopy->_requestMethod forKey:@"_requestMethod"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_headerSize];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:selfCopy->_bodySize];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  v7 = location[0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_errorCode];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v8);
  [location[0] encodeObject:selfCopy->_errorDomain forKey:@"_errorDomain"];
  objc_storeStrong(location, 0);
}

@end