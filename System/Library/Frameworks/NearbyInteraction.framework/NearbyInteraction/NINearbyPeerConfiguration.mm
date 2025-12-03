@interface NINearbyPeerConfiguration
- (BOOL)isEqual:(id)equal;
- (NINearbyPeerConfiguration)initWithCoder:(id)coder;
- (NINearbyPeerConfiguration)initWithPeerToken:(NIDiscoveryToken *)peerToken;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NINearbyPeerConfiguration

- (NINearbyPeerConfiguration)initWithPeerToken:(NIDiscoveryToken *)peerToken
{
  v6 = peerToken;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"peerToken"}];
  }

  v12.receiver = self;
  v12.super_class = NINearbyPeerConfiguration;
  initInternal = [(NIConfiguration *)&v12 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 5, peerToken);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NINearbyPeerConfiguration;
  v5 = [(NIConfiguration *)&v10 copyWithZone:?];
  [v5 setLongRangeEnabled:self->_longRangeEnabled];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  [v5 setBackgroundMode:self->_backgroundMode];
  v6 = [(NIDiscoveryToken *)self->_peerDiscoveryToken copyWithZone:zone];
  v7 = *(v5 + 5);
  *(v5 + 5) = v6;

  if (self->_debugParameters)
  {
    v8 = [objc_msgSend(MEMORY[0x1E695DF20] allocWithZone:{zone), "initWithDictionary:copyItems:", self->_debugParameters, 1}];
    [v5 setDebugParameters:v8];
  }

  *(v5 + 33) = self->_extendedDistanceMeasurementEnabled;
  [v5 setUseCase:self->_useCase];
  [v5 setUseCaseCameraAssistanceInClientProcess:self->_useCaseCameraAssistanceInClientProcess];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NINearbyPeerConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_peerDiscoveryToken forKey:@"peerDiscoveryToken"];
  [coderCopy encodeBool:self->_longRangeEnabled forKey:@"longRangeEnabled"];
  [coderCopy encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
  [coderCopy encodeInteger:self->_backgroundMode forKey:@"backgroundMode"];
  [coderCopy encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [coderCopy encodeBool:self->_extendedDistanceMeasurementEnabled forKey:@"extendedDistanceMeasurementEnabled"];
  [coderCopy encodeInteger:self->_useCase forKey:@"useCase"];
  [coderCopy encodeBool:self->_useCaseCameraAssistanceInClientProcess forKey:@"useCaseCameraAssistanceInClientProcess"];
}

- (NINearbyPeerConfiguration)initWithCoder:(id)coder
{
  v30[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  selfCopy = self;
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDiscoveryToken"];
  v5 = [coderCopy decodeBoolForKey:@"longRangeEnabled"];
  v6 = [coderCopy decodeBoolForKey:@"cameraAssistanceEnabled"];
  v7 = [coderCopy decodeIntegerForKey:@"backgroundMode"];
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

  v15 = [coderCopy decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v14 forKey:@"debugParameters"];
  v16 = [coderCopy decodeBoolForKey:@"extendedDistanceMeasurementEnabled"];
  v17 = [coderCopy decodeIntegerForKey:@"useCase"];
  v18 = [coderCopy decodeBoolForKey:@"useCaseCameraAssistanceInClientProcess"];
  v28.receiver = selfCopy;
  v28.super_class = NINearbyPeerConfiguration;
  v19 = [(NIConfiguration *)&v28 initWithCoder:coderCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v21 = 1;
LABEL_17:

      goto LABEL_18;
    }

    peerDiscoveryToken = self->_peerDiscoveryToken;
    peerDiscoveryToken = [(NINearbyPeerConfiguration *)v5 peerDiscoveryToken];
    v9 = [(NIDiscoveryToken *)peerDiscoveryToken isEqual:peerDiscoveryToken];

    longRangeEnabled = self->_longRangeEnabled;
    isLongRangeEnabled = [(NINearbyPeerConfiguration *)v6 isLongRangeEnabled];
    LOBYTE(peerDiscoveryToken) = self->_cameraAssistanceEnabled;
    isCameraAssistanceEnabled = [(NINearbyPeerConfiguration *)v6 isCameraAssistanceEnabled];
    backgroundMode = self->_backgroundMode;
    backgroundMode = [(NINearbyPeerConfiguration *)v6 backgroundMode];
    debugParameters = self->_debugParameters;
    v26 = peerDiscoveryToken;
    if (!debugParameters)
    {
      debugParameters = [(NINearbyPeerConfiguration *)v6 debugParameters];

      if (!debugParameters)
      {
        v16 = 0;
        goto LABEL_7;
      }

      debugParameters = self->_debugParameters;
    }

    debugParameters2 = [(NINearbyPeerConfiguration *)v6 debugParameters];
    v15 = [(NSDictionary *)debugParameters isEqual:debugParameters2];

    v16 = v15 ^ 1;
LABEL_7:
    extendedDistanceMeasurementEnabled = self->_extendedDistanceMeasurementEnabled;
    isExtendedDistanceMeasurementEnabled = [(NINearbyPeerConfiguration *)v6 isExtendedDistanceMeasurementEnabled];
    useCase = self->_useCase;
    useCase = [(NINearbyPeerConfiguration *)v6 useCase];
    useCaseCameraAssistanceInClientProcess = self->_useCaseCameraAssistanceInClientProcess;
    useCaseCameraAssistanceInClientProcess = [(NINearbyPeerConfiguration *)v6 useCaseCameraAssistanceInClientProcess];
    v21 = 0;
    if (!((longRangeEnabled != isLongRangeEnabled || !v9 || v26 != isCameraAssistanceEnabled || backgroundMode != backgroundMode) | v16 & 1) && extendedDistanceMeasurementEnabled == isExtendedDistanceMeasurementEnabled)
    {
      v21 = useCase == useCase && useCaseCameraAssistanceInClientProcess == useCaseCameraAssistanceInClientProcess;
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
  descriptionInternal = [(NINearbyPeerConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F38CC5C0];
  peerDiscoveryToken = self->_peerDiscoveryToken;
  if (peerDiscoveryToken)
  {
    descriptionInternal = [(NIDiscoveryToken *)peerDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"peerToken: %@", descriptionInternal];
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