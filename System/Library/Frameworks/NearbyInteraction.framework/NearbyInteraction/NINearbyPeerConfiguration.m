@interface NINearbyPeerConfiguration
- (BOOL)isEqual:(id)a3;
- (NINearbyPeerConfiguration)initWithCoder:(id)a3;
- (NINearbyPeerConfiguration)initWithPeerToken:(NIDiscoveryToken *)peerToken;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NINearbyPeerConfiguration

- (NINearbyPeerConfiguration)initWithPeerToken:(NIDiscoveryToken *)peerToken
{
  v6 = peerToken;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"peerToken"}];
  }

  v12.receiver = self;
  v12.super_class = NINearbyPeerConfiguration;
  v7 = [(NIConfiguration *)&v12 initInternal];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 5, peerToken);
    v8->_longRangeEnabled = 1;
    v8->_cameraAssistanceEnabled = 0;
    v8->_backgroundMode = 0;
    debugParameters = v8->_debugParameters;
    v8->_debugParameters = 0;

    v8->_extendedDistanceMeasurementEnabled = 0;
    v8->_useCase = 0;
    v8->_useCaseCameraAssistanceInClientProcess = 1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NINearbyPeerConfiguration;
  v5 = [(NIConfiguration *)&v10 copyWithZone:?];
  [v5 setLongRangeEnabled:self->_longRangeEnabled];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  [v5 setBackgroundMode:self->_backgroundMode];
  v6 = [(NIDiscoveryToken *)self->_peerDiscoveryToken copyWithZone:a3];
  v7 = *(v5 + 5);
  *(v5 + 5) = v6;

  if (self->_debugParameters)
  {
    v8 = [objc_msgSend(MEMORY[0x1E695DF20] allocWithZone:{a3), "initWithDictionary:copyItems:", self->_debugParameters, 1}];
    [v5 setDebugParameters:v8];
  }

  *(v5 + 33) = self->_extendedDistanceMeasurementEnabled;
  [v5 setUseCase:self->_useCase];
  [v5 setUseCaseCameraAssistanceInClientProcess:self->_useCaseCameraAssistanceInClientProcess];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NINearbyPeerConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_peerDiscoveryToken forKey:@"peerDiscoveryToken"];
  [v4 encodeBool:self->_longRangeEnabled forKey:@"longRangeEnabled"];
  [v4 encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
  [v4 encodeInteger:self->_backgroundMode forKey:@"backgroundMode"];
  [v4 encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [v4 encodeBool:self->_extendedDistanceMeasurementEnabled forKey:@"extendedDistanceMeasurementEnabled"];
  [v4 encodeInteger:self->_useCase forKey:@"useCase"];
  [v4 encodeBool:self->_useCaseCameraAssistanceInClientProcess forKey:@"useCaseCameraAssistanceInClientProcess"];
}

- (NINearbyPeerConfiguration)initWithCoder:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = self;
  obj = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDiscoveryToken"];
  v5 = [v4 decodeBoolForKey:@"longRangeEnabled"];
  v6 = [v4 decodeBoolForKey:@"cameraAssistanceEnabled"];
  v7 = [v4 decodeIntegerForKey:@"backgroundMode"];
  v8 = MEMORY[0x1E695DFD8];
  v30[0] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v25 = v6;
  v10 = v5;
  v11 = [v8 setWithArray:v9];

  v12 = MEMORY[0x1E695DFD8];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v14 = [v12 setWithArray:v13];

  v15 = [v4 decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v14 forKey:@"debugParameters"];
  v16 = [v4 decodeBoolForKey:@"extendedDistanceMeasurementEnabled"];
  v17 = [v4 decodeIntegerForKey:@"useCase"];
  v18 = [v4 decodeBoolForKey:@"useCaseCameraAssistanceInClientProcess"];
  v28.receiver = v27;
  v28.super_class = NINearbyPeerConfiguration;
  v19 = [(NIConfiguration *)&v28 initWithCoder:v4];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_peerDiscoveryToken, obj);
    v20->_longRangeEnabled = v10;
    v20->_cameraAssistanceEnabled = v25;
    objc_storeStrong(&v20->_debugParameters, v15);
    if (v7 >= 3)
    {
      v21 = 0;
    }

    else
    {
      v21 = v7;
    }

    v20->_backgroundMode = v21;
    v20->_extendedDistanceMeasurementEnabled = v16;
    if (v17 >= 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }

    v20->_useCase = v22;
    v20->_useCaseCameraAssistanceInClientProcess = v18;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
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
      v21 = 1;
LABEL_17:

      goto LABEL_18;
    }

    peerDiscoveryToken = self->_peerDiscoveryToken;
    v8 = [(NINearbyPeerConfiguration *)v5 peerDiscoveryToken];
    v9 = [(NIDiscoveryToken *)peerDiscoveryToken isEqual:v8];

    longRangeEnabled = self->_longRangeEnabled;
    v11 = [(NINearbyPeerConfiguration *)v6 isLongRangeEnabled];
    LOBYTE(v8) = self->_cameraAssistanceEnabled;
    v29 = [(NINearbyPeerConfiguration *)v6 isCameraAssistanceEnabled];
    backgroundMode = self->_backgroundMode;
    v27 = [(NINearbyPeerConfiguration *)v6 backgroundMode];
    debugParameters = self->_debugParameters;
    v26 = v8;
    if (!debugParameters)
    {
      v13 = [(NINearbyPeerConfiguration *)v6 debugParameters];

      if (!v13)
      {
        v16 = 0;
        goto LABEL_7;
      }

      debugParameters = self->_debugParameters;
    }

    v14 = [(NINearbyPeerConfiguration *)v6 debugParameters];
    v15 = [(NSDictionary *)debugParameters isEqual:v14];

    v16 = v15 ^ 1;
LABEL_7:
    extendedDistanceMeasurementEnabled = self->_extendedDistanceMeasurementEnabled;
    v18 = [(NINearbyPeerConfiguration *)v6 isExtendedDistanceMeasurementEnabled];
    useCase = self->_useCase;
    v24 = [(NINearbyPeerConfiguration *)v6 useCase];
    useCaseCameraAssistanceInClientProcess = self->_useCaseCameraAssistanceInClientProcess;
    v20 = [(NINearbyPeerConfiguration *)v6 useCaseCameraAssistanceInClientProcess];
    v21 = 0;
    if (!((longRangeEnabled != v11 || !v9 || v26 != v29 || backgroundMode != v27) | v16 & 1) && extendedDistanceMeasurementEnabled == v18)
    {
      v21 = useCase == v24 && v20 == useCaseCameraAssistanceInClientProcess;
    }

    goto LABEL_17;
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NIDiscoveryToken *)self->_peerDiscoveryToken hash];
  longRangeEnabled = self->_longRangeEnabled;
  cameraAssistanceEnabled = self->_cameraAssistanceEnabled;
  backgroundMode = self->_backgroundMode;
  return v3 ^ longRangeEnabled ^ cameraAssistanceEnabled ^ backgroundMode ^ [(NSDictionary *)self->_debugParameters hash]^ self->_extendedDistanceMeasurementEnabled ^ self->_useCase ^ self->_useCaseCameraAssistanceInClientProcess ^ 0x1F;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NINearbyPeerConfiguration *)self descriptionInternal];
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
    [v3 appendFormat:@"peerToken: %@", v5];
  }

  else
  {
    [v3 appendString:@"peerToken: null"];
  }

  [v3 appendFormat:@", useCase: %s", +[NIInternalUtils NINearbyPeerUseCaseToString:](NIInternalUtils, "NINearbyPeerUseCaseToString:", self->_useCase)];
  if (self->_cameraAssistanceEnabled)
  {
    [v3 appendFormat:@", camera: 1 [inClient: %d]", self->_useCaseCameraAssistanceInClientProcess];
  }

  else
  {
    [v3 appendString:{@", camera: 0"}];
  }

  [v3 appendFormat:@", rangingModes: [LR %d, EXT %d]", self->_longRangeEnabled, self->_extendedDistanceMeasurementEnabled];
  [v3 appendFormat:@", backgroundMode: %s", +[NIInternalUtils NISessionBackgroundModeToString:](NIInternalUtils, "NISessionBackgroundModeToString:", self->_backgroundMode)];
  v6 = [(NSDictionary *)self->_debugParameters description];
  [v3 appendFormat:@", debugParameters:%@", v6];

  return v3;
}

@end