@interface MSServiceAppInfo
- (MSServiceAppInfo)initWithCoder:(id)a3;
- (MSServiceAppInfo)initWithServiceName:(id)a3 serviceBundleID:(id)a4;
- (MSServiceAppInfo)initWithServiceName:(id)a3 serviceBundleID:(id)a4 useInHome:(BOOL)a5 subscriptionStatus:(int64_t)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSServiceAppInfo

- (MSServiceAppInfo)initWithServiceName:(id)a3 serviceBundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSServiceAppInfo;
  v9 = [(MSServiceAppInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, a3);
    objc_storeStrong(&v10->_serviceBundleID, a4);
  }

  return v10;
}

- (MSServiceAppInfo)initWithServiceName:(id)a3 serviceBundleID:(id)a4 useInHome:(BOOL)a5 subscriptionStatus:(int64_t)a6
{
  result = [(MSServiceAppInfo *)self initWithServiceName:a3 serviceBundleID:a4];
  if (result)
  {
    result->_useInHome = a5;
    result->_subscriptionStatus = a6;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 na_safeSetObject:self->_serviceName forKey:@"serviceName"];
  [v3 na_safeSetObject:self->_serviceBundleID forKey:@"bundleID"];
  [v3 na_safeSetObject:self->_alternateBundleIDS forKey:@"alternateBundleID"];
  v4 = [v3 description];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  serviceName = self->_serviceName;
  v5 = a3;
  [v5 encodeObject:serviceName forKey:@"MSSServiceNameEncodedKey"];
  [v5 encodeObject:self->_serviceBundleID forKey:@"MSSServiceBundleIDEncodedKey"];
  [v5 encodeObject:self->_alternateBundleIDS forKey:@"MSSAlternateBundleIDSEncodedKey"];
}

- (MSServiceAppInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSServiceNameEncodedKey"];
  serviceName = self->_serviceName;
  self->_serviceName = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSServiceBundleIDEncodedKey"];
  serviceBundleID = self->_serviceBundleID;
  self->_serviceBundleID = v7;

  v9 = [(MSServiceAppInfo *)self initWithServiceName:self->_serviceName serviceBundleID:self->_serviceBundleID];
  if (v9)
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"MSSAlternateBundleIDSEncodedKey"];
    alternateBundleIDS = v9->_alternateBundleIDS;
    v9->_alternateBundleIDS = v13;
  }

  return v9;
}

@end