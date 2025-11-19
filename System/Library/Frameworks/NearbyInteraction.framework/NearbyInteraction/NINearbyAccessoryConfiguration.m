@interface NINearbyAccessoryConfiguration
- (BOOL)dataExchangeDisabledAndUsingParameterOverrides;
- (BOOL)isEqual:(id)a3;
- (NINearbyAccessoryConfiguration)initWithAccessoryData:(NSData *)accessoryData bluetoothPeerIdentifier:(NSUUID *)identifier error:(NSError *)error;
- (NINearbyAccessoryConfiguration)initWithCoder:(id)a3;
- (NINearbyAccessoryConfiguration)initWithData:(NSData *)data error:(NSError *)error;
- (NINearbyAccessoryConfiguration)initWithDataExchangeDisabledAndUsingParameterOverrides:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NINearbyAccessoryConfiguration

- (NINearbyAccessoryConfiguration)initWithData:(NSData *)data error:(NSError *)error
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = data;
  if (!v7)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:714 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v40.receiver = self;
  v40.super_class = NINearbyAccessoryConfiguration;
  v8 = [(NIConfiguration *)&v40 initInternal];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v7;
  v10 = [(NSData *)v7 bytes];
  v11 = [(NSData *)v7 length];
  __p = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v10, v10 + v11, v11);
  v12 = v38 - __p;
  if ((v38 - __p) < 0x14)
  {
    goto LABEL_5;
  }

  v14 = *__p;
  v15 = !*(__p + 1) && v14 == 1;
  v16 = *(__p + 1) && v14 == 1;
  v17 = *(__p + 8);
  v18 = *(__p + 9);
  v19 = &word_1BAC847D2;
  v20 = 16;
  do
  {
    if (__PAIR64__(v18, v17) == __PAIR64__(*v19, *(v19 - 1)))
    {
      v24 = 1;
      goto LABEL_25;
    }

    v19 += 2;
    v20 -= 4;
  }

  while (v20);
  v24 = 0;
LABEL_25:
  v25 = *(__p + 9) && v17 == 2;
  v26 = v25;
  v27 = v17 <= 2 ? v26 : 1;
  v28 = v14 > 1 || v15;
  if (((v28 | v16) & 1) == 0 || ((v24 | v27) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v24)
  {
    if (v17 == 2)
    {
      if (!*(__p + 9))
      {
        v29 = 32;
        v30 = 48;
        goto LABEL_51;
      }
    }

    else if (v17 == 1 && v18 < 3)
    {
      v29 = 2 * v18 + 19;
      v30 = 2 * v18 + 35;
LABEL_51:
      if (v12 != v30 || *(__p + 15) != v29)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    __assert_rtn("UWBConfigDataTotalLengthBytes", "NIFiRaDefinitions.h", 418, "false");
  }

  if (v27)
  {
    if (v12 < 0x30 || *(__p + 15) < 0x20u)
    {
      goto LABEL_5;
    }

    v12 = 48;
  }

  else
  {
    v12 = 0;
  }

LABEL_53:
  __dst = 0;
  v45 = 0;
  v48 = 0;
  memset(v49, 0, sizeof(v49));
  v43 = 0;
  v44 = 0;
  memcpy(&__dst, __p, v12);
  if (v42 <= 0x14u && ((1 << v42) & 0x100401) != 0 && v46 <= 1u && BYTE2(v48) <= 1u && HIBYTE(v48) <= 8u && ((1 << SHIBYTE(v48)) & 0x10D) != 0)
  {
    v31 = v47;
    v32 = [(NSData *)v7 copy];
    v33 = v8[4];
    v8[4] = v32;

    v34 = [[NIDiscoveryToken alloc] initWithDeviceAddress:v31];
    v35 = v8[6];
    v8[6] = v34;

    *(v8 + 40) = 0;
    v8[9] = 0;
    v13 = 1;
    goto LABEL_19;
  }

LABEL_5:
  if (error)
  {
    NIErrorWithCodeAndUserInfo(-5888, 0);
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if ((v13 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_24;
  }

LABEL_22:
  v21 = v8;
LABEL_24:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (NINearbyAccessoryConfiguration)initWithAccessoryData:(NSData *)accessoryData bluetoothPeerIdentifier:(NSUUID *)identifier error:(NSError *)error
{
  v9 = accessoryData;
  v10 = identifier;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:747 description:{@"Invalid parameter not satisfying: %@", @"accessoryData"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:748 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  v12 = [(NINearbyAccessoryConfiguration *)self initWithData:v9 error:error];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bluetoothDeviceIdentifier, identifier);
    v13->_backgroundMode = 2;
    v14 = v13;
  }

  return v13;
}

- (NINearbyAccessoryConfiguration)initWithDataExchangeDisabledAndUsingParameterOverrides:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:769 description:{@"Invalid parameter not satisfying: %@", @"parameterOverrides"}];
  }

  v23.receiver = self;
  v23.super_class = NINearbyAccessoryConfiguration;
  v6 = [(NIConfiguration *)&v23 initInternal];
  if (v6)
  {
    v7 = objc_opt_new();
    [v7 setObject:MEMORY[0x1E695E118] forKey:@"DisableDataExchangeAndUseParameterOverrides"];
    [v7 addEntriesFromDictionary:v5];
    objc_storeStrong(&v6->_debugParameters, v7);
    v8 = [(NSDictionary *)v6->_debugParameters objectForKeyedSubscript:@"UWBSessionIdOverride"];
    v9 = [v8 unsignedLongLongValue];
    v10 = [(NSDictionary *)v6->_debugParameters objectForKeyedSubscript:@"LocalAddressOverride"];
    v11 = [v10 unsignedLongLongValue];
    v12 = [(NSDictionary *)v6->_debugParameters objectForKeyedSubscript:@"PeerAddressOverride"];
    v13 = (v9 << 32) | (v11 << 16) | [v12 unsignedLongLongValue];

    v22 = v13;
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:&v22 length:8];
    rawData = v6->_rawData;
    v6->_rawData = v14;

    v16 = [NIDiscoveryToken alloc];
    v17 = [(NSDictionary *)v6->_debugParameters objectForKeyedSubscript:@"PeerAddressOverride"];
    v18 = -[NIDiscoveryToken initWithDeviceAddress:](v16, "initWithDeviceAddress:", [v17 unsignedShortValue]);
    accessoryDiscoveryToken = v6->_accessoryDiscoveryToken;
    v6->_accessoryDiscoveryToken = v18;

    v6->_cameraAssistanceEnabled = 0;
    v6->_backgroundMode = 0;
  }

  return v6;
}

- (BOOL)dataExchangeDisabledAndUsingParameterOverrides
{
  if (!+[NIPlatformInfo isInternalBuild])
  {
    return 0;
  }

  v3 = [(NSDictionary *)self->_debugParameters objectForKeyedSubscript:@"DisableDataExchangeAndUseParameterOverrides"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = NINearbyAccessoryConfiguration;
  v5 = [(NIConfiguration *)&v13 copyWithZone:?];
  [v5 setBluetoothDeviceIdentifier:self->_bluetoothDeviceIdentifier];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  [v5 setBackgroundMode:self->_backgroundMode];
  v6 = [(NSData *)self->_rawData copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NIDiscoveryToken *)self->_accessoryDiscoveryToken copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  if (self->_debugParameters)
  {
    v10 = [objc_msgSend(MEMORY[0x1E695DF20] allocWithZone:{a3), "initWithDictionary:copyItems:", self->_debugParameters, 1}];
    v11 = v5[8];
    v5[8] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NINearbyAccessoryConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_rawData forKey:@"rawData"];
  [v4 encodeObject:self->_accessoryDiscoveryToken forKey:@"accessoryDiscoveryToken"];
  [v4 encodeObject:self->_bluetoothDeviceIdentifier forKey:@"bluetoothDeviceIdentifier"];
  [v4 encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [v4 encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
  [v4 encodeInteger:self->_backgroundMode forKey:@"backgroundMode"];
}

- (NINearbyAccessoryConfiguration)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  obj = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryDiscoveryToken"];
  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawData"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothDeviceIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v11 = [v9 setWithArray:v10];

  v12 = [v4 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"debugParameters"];
  v13 = [v4 decodeBoolForKey:@"cameraAssistanceEnabled"];
  v14 = [v4 decodeIntegerForKey:@"backgroundMode"];
  v22.receiver = self;
  v22.super_class = NINearbyAccessoryConfiguration;
  v15 = [(NIConfiguration *)&v22 initWithCoder:v4];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accessoryDiscoveryToken, obj);
    objc_storeStrong(&v16->_debugParameters, v12);
    objc_storeStrong(&v16->_rawData, v20);
    objc_storeStrong(&v16->_bluetoothDeviceIdentifier, v5);
    v16->_cameraAssistanceEnabled = v13;
    if (v14 >= 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    v16->_backgroundMode = v17;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
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
      v12 = 1;
    }

    else
    {
      rawData = self->_rawData;
      v8 = [(NINearbyAccessoryConfiguration *)v5 accessoryConfigData];
      v9 = [(NSData *)rawData isEqualToData:v8];

      v10 = [(NINearbyAccessoryConfiguration *)v6 bluetoothDeviceIdentifier];
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = self->_bluetoothDeviceIdentifier == 0;
      }

      v13 = [(NINearbyAccessoryConfiguration *)v6 bluetoothDeviceIdentifier];
      v14 = [v13 isEqual:self->_bluetoothDeviceIdentifier];

      cameraAssistanceEnabled = self->_cameraAssistanceEnabled;
      v16 = [(NINearbyAccessoryConfiguration *)v6 isCameraAssistanceEnabled];
      backgroundMode = self->_backgroundMode;
      v24 = [(NINearbyAccessoryConfiguration *)v6 backgroundMode];
      v25 = backgroundMode;
      v18 = [(NINearbyAccessoryConfiguration *)v6 debugParameters];
      v19 = v9;
      if (v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = self->_debugParameters == 0;
      }

      v20 = [(NINearbyAccessoryConfiguration *)v6 debugParameters];
      v21 = [v20 isEqualToDictionary:self->_debugParameters];

      v12 = 0;
      if ((v19 & (v11 | v14)) == 1 && cameraAssistanceEnabled == v16)
      {
        v12 = (v25 == v24) & (v23 | v21);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_rawData hash];
  v4 = [(NIDiscoveryToken *)self->_accessoryDiscoveryToken hash];
  return v3 ^ v4 ^ [(NSUUID *)self->_bluetoothDeviceIdentifier hash]^ self->_cameraAssistanceEnabled ^ self->_backgroundMode ^ 0x1F;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NINearbyAccessoryConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F38CC5C0];
  accessoryDiscoveryToken = self->_accessoryDiscoveryToken;
  if (accessoryDiscoveryToken)
  {
    v5 = [(NIDiscoveryToken *)accessoryDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"Device Token: %@", v5];
  }

  else
  {
    [v3 appendString:@"Device Token: null"];
  }

  bluetoothDeviceIdentifier = self->_bluetoothDeviceIdentifier;
  if (bluetoothDeviceIdentifier)
  {
    v7 = [(NSUUID *)bluetoothDeviceIdentifier UUIDString];
    [v3 appendFormat:@", Bluetooth Device: %@", v7];
  }

  else
  {
    [v3 appendString:{@", Bluetooth Device: null"}];
  }

  if (self->_cameraAssistanceEnabled)
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  [v3 appendFormat:@", isCameraAssistanceEnabled: %s", v8];
  [v3 appendFormat:@", backgroundMode: %s", +[NIInternalUtils NISessionBackgroundModeToString:](NIInternalUtils, "NISessionBackgroundModeToString:", self->_backgroundMode)];

  return v3;
}

@end