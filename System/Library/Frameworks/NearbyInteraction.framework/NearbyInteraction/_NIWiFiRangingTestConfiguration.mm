@interface _NIWiFiRangingTestConfiguration
- (BOOL)isEqual:(id)a3;
- (_NIWiFiRangingTestConfiguration)initWithCoder:(id)a3;
- (_NIWiFiRangingTestConfiguration)initWithDiscoveryToken:(id)a3 wifiRangingParameters:(id)a4 regions:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NIWiFiRangingTestConfiguration

- (_NIWiFiRangingTestConfiguration)initWithDiscoveryToken:(id)a3 wifiRangingParameters:(id)a4 regions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _NIWiFiRangingTestConfiguration;
  v12 = [(NIConfiguration *)&v15 initInternal];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 4, a3);
    objc_storeStrong(&v13->_parameters, a4);
    objc_storeStrong(&v13->_monitoredRegions, a5);
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = _NIWiFiRangingTestConfiguration;
  v5 = [(NIConfiguration *)&v13 copyWithZone:?];
  v6 = [(NIDiscoveryToken *)self->_peerDiscoveryToken copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  if (self->_parameters)
  {
    v8 = [objc_msgSend(MEMORY[0x1E695DF20] allocWithZone:{a3), "initWithDictionary:copyItems:", self->_parameters, 1}];
    v9 = v5[5];
    v5[5] = v8;
  }

  if (self->_monitoredRegions)
  {
    v10 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_monitoredRegions, 1}];
    v11 = v5[6];
    v5[6] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _NIWiFiRangingTestConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_peerDiscoveryToken forKey:@"peerDiscoveryToken"];
  [v4 encodeObject:self->_parameters forKey:@"parameters"];
  [v4 encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
}

- (_NIWiFiRangingTestConfiguration)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"monitoredRegions"];

  v21.receiver = self;
  v21.super_class = _NIWiFiRangingTestConfiguration;
  v14 = [(NIConfiguration *)&v21 initWithCoder:v4];
  if (v14)
  {
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDiscoveryToken"];
    peerDiscoveryToken = v14->_peerDiscoveryToken;
    v14->_peerDiscoveryToken = v15;

    v17 = [v4 decodeDictionaryWithKeysOfClasses:v5 objectsOfClasses:v9 forKey:@"parameters"];
    parameters = v14->_parameters;
    v14->_parameters = v17;

    objc_storeStrong(&v14->_monitoredRegions, v13);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v13 = 1;
    }

    else
    {
      parameters = self->_parameters;
      v8 = [(_NIWiFiRangingTestConfiguration *)v5 parameters];
      if ([(NSDictionary *)parameters isEqual:v8])
      {
        peerDiscoveryToken = self->_peerDiscoveryToken;
        v10 = [(_NIWiFiRangingTestConfiguration *)v6 peerDiscoveryToken];
        if ([(NIDiscoveryToken *)peerDiscoveryToken isEqual:v10])
        {
          monitoredRegions = self->_monitoredRegions;
          v12 = [(_NIWiFiRangingTestConfiguration *)v6 monitoredRegions];
          v13 = [(NSArray *)monitoredRegions isEqual:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_NIWiFiRangingTestConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F38CC5C0];
  peerDiscoveryToken = self->_peerDiscoveryToken;
  if (peerDiscoveryToken)
  {
    v5 = [(NIDiscoveryToken *)peerDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"Peer Token: %@", v5];
  }

  else
  {
    [v3 appendString:@"Peer Token: null"];
  }

  [v3 appendFormat:@", WiFi Ranging Parameters: %@", self->_parameters];
  [v3 appendFormat:@", Regions: %@", self->_monitoredRegions];

  return v3;
}

@end