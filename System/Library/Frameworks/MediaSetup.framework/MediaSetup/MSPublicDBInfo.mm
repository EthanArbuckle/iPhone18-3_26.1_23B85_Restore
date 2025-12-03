@interface MSPublicDBInfo
- (MSPublicDBInfo)initWithCoder:(id)coder;
- (MSPublicDBInfo)initWithServiceName:(id)name serviceID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSPublicDBInfo

- (MSPublicDBInfo)initWithServiceName:(id)name serviceID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v9 = dCopy;
  selfCopy = 0;
  if (nameCopy && dCopy)
  {
    v14.receiver = self;
    v14.super_class = MSPublicDBInfo;
    v11 = [(MSPublicDBInfo *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_serviceName, name);
      objc_storeStrong(p_isa + 2, d);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_serviceName forKey:@"_serviceName"];
  [coderCopy encodeObject:self->_serviceID forKey:@"_serviceID"];
  [coderCopy encodeObject:self->_recordName forKey:@"_recordName"];
  [coderCopy encodeObject:self->_serviceType forKey:@"_serviceType"];
  [coderCopy encodeObject:self->_serviceIconPath forKey:@"_serviceIconPath"];
  [coderCopy encodeObject:self->_configurationPublicKey forKey:@"_configurationPublicKey"];
  bundleIDS = self->_bundleIDS;
  v9 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:bundleIDS requiringSecureCoding:1 error:&v9];
  v7 = v9;
  v8 = v7;
  if (v7)
  {
    NSLog(&cfstr_ErrorEncodingB.isa, v7);
  }

  [coderCopy encodeObject:v6 forKey:@"_bundleIDS"];
}

- (MSPublicDBInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
  serviceName = self->_serviceName;
  self->_serviceName = v5;

  if (self->_serviceName && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceID"], v7 = objc_claimAutoreleasedReturnValue(), serviceID = self->_serviceID, self->_serviceID = v7, serviceID, self->_serviceID))
  {
    v9 = [(MSPublicDBInfo *)self initWithServiceName:self->_serviceName serviceID:?];
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordName"];
      recordName = v9->_recordName;
      v9->_recordName = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
      serviceType = v9->_serviceType;
      v9->_serviceType = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceIconPath"];
      serviceIconPath = v9->_serviceIconPath;
      v9->_serviceIconPath = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_configurationPublicKey"];
      configurationPublicKey = v9->_configurationPublicKey;
      v9->_configurationPublicKey = v16;

      v18 = [coderCopy decodeObjectForKey:@"_bundleIDS"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end