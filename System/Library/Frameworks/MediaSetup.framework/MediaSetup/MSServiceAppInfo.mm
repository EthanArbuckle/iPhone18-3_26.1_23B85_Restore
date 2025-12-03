@interface MSServiceAppInfo
- (MSServiceAppInfo)initWithCoder:(id)coder;
- (MSServiceAppInfo)initWithServiceName:(id)name serviceBundleID:(id)d;
- (MSServiceAppInfo)initWithServiceName:(id)name serviceBundleID:(id)d useInHome:(BOOL)home subscriptionStatus:(int64_t)status;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSServiceAppInfo

- (MSServiceAppInfo)initWithServiceName:(id)name serviceBundleID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MSServiceAppInfo;
  v9 = [(MSServiceAppInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, name);
    objc_storeStrong(&v10->_serviceBundleID, d);
  }

  return v10;
}

- (MSServiceAppInfo)initWithServiceName:(id)name serviceBundleID:(id)d useInHome:(BOOL)home subscriptionStatus:(int64_t)status
{
  result = [(MSServiceAppInfo *)self initWithServiceName:name serviceBundleID:d];
  if (result)
  {
    result->_useInHome = home;
    result->_subscriptionStatus = status;
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

- (void)encodeWithCoder:(id)coder
{
  serviceName = self->_serviceName;
  coderCopy = coder;
  [coderCopy encodeObject:serviceName forKey:@"MSSServiceNameEncodedKey"];
  [coderCopy encodeObject:self->_serviceBundleID forKey:@"MSSServiceBundleIDEncodedKey"];
  [coderCopy encodeObject:self->_alternateBundleIDS forKey:@"MSSAlternateBundleIDSEncodedKey"];
}

- (MSServiceAppInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSServiceNameEncodedKey"];
  serviceName = self->_serviceName;
  self->_serviceName = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSServiceBundleIDEncodedKey"];
  serviceBundleID = self->_serviceBundleID;
  self->_serviceBundleID = v7;

  v9 = [(MSServiceAppInfo *)self initWithServiceName:self->_serviceName serviceBundleID:self->_serviceBundleID];
  if (v9)
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"MSSAlternateBundleIDSEncodedKey"];
    alternateBundleIDS = v9->_alternateBundleIDS;
    v9->_alternateBundleIDS = v13;
  }

  return v9;
}

@end