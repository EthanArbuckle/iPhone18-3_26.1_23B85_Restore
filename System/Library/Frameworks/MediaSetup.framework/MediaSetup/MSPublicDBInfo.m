@interface MSPublicDBInfo
- (MSPublicDBInfo)initWithCoder:(id)a3;
- (MSPublicDBInfo)initWithServiceName:(id)a3 serviceID:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSPublicDBInfo

- (MSPublicDBInfo)initWithServiceName:(id)a3 serviceID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = MSPublicDBInfo;
    v11 = [(MSPublicDBInfo *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_serviceName, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 na_safeSetObject:self->_serviceName forKey:@"serviceName"];
  [v3 na_safeSetObject:self->_serviceID forKey:@"serviceIdentifier"];
  [v3 na_safeSetObject:self->_recordName forKey:@"recordName"];
  [v3 na_safeSetObject:self->_serviceType forKey:@"serviceType"];
  [v3 na_safeSetObject:self->_serviceIconPath forKey:@"serviceIconPath"];
  [v3 na_safeSetObject:self->_bundleIDS forKey:@"bundleIDS"];
  [v3 na_safeSetObject:self->_configurationPublicKey forKey:@"configurationPublicKey"];
  v4 = [v3 description];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_serviceName forKey:@"_serviceName"];
  [v4 encodeObject:self->_serviceID forKey:@"_serviceID"];
  [v4 encodeObject:self->_recordName forKey:@"_recordName"];
  [v4 encodeObject:self->_serviceType forKey:@"_serviceType"];
  [v4 encodeObject:self->_serviceIconPath forKey:@"_serviceIconPath"];
  [v4 encodeObject:self->_configurationPublicKey forKey:@"_configurationPublicKey"];
  bundleIDS = self->_bundleIDS;
  v9 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:bundleIDS requiringSecureCoding:1 error:&v9];
  v7 = v9;
  v8 = v7;
  if (v7)
  {
    NSLog(&cfstr_ErrorEncodingB.isa, v7);
  }

  [v4 encodeObject:v6 forKey:@"_bundleIDS"];
}

- (MSPublicDBInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
  serviceName = self->_serviceName;
  self->_serviceName = v5;

  if (self->_serviceName && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceID"], v7 = objc_claimAutoreleasedReturnValue(), serviceID = self->_serviceID, self->_serviceID = v7, serviceID, self->_serviceID))
  {
    v9 = [(MSPublicDBInfo *)self initWithServiceName:self->_serviceName serviceID:?];
    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordName"];
      recordName = v9->_recordName;
      v9->_recordName = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
      serviceType = v9->_serviceType;
      v9->_serviceType = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceIconPath"];
      serviceIconPath = v9->_serviceIconPath;
      v9->_serviceIconPath = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_configurationPublicKey"];
      configurationPublicKey = v9->_configurationPublicKey;
      v9->_configurationPublicKey = v16;

      v18 = [v4 decodeObjectForKey:@"_bundleIDS"];
      v19 = MEMORY[0x277CCAAC8];
      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
      v24 = [v19 unarchivedObjectOfClasses:v23 fromData:v18 error:0];
      bundleIDS = v9->_bundleIDS;
      v9->_bundleIDS = v24;
    }

    self = v9;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end