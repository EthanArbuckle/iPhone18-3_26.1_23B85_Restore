@interface NIFindingConfiguration
- (BOOL)canUpdateToConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NIFindingConfiguration)initWithCoder:(id)a3;
- (id)_initInternalWithConfigType:(int64_t)a3 isFinder:(BOOL)a4 isObserver:(BOOL)a5 specifiedToken:(id)a6 preferredUpdateRate:(int64_t)a7 requestedMeasurementQuality:(int64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIFindingConfiguration

- (id)_initInternalWithConfigType:(int64_t)a3 isFinder:(BOOL)a4 isObserver:(BOOL)a5 specifiedToken:(id)a6 preferredUpdateRate:(int64_t)a7 requestedMeasurementQuality:(int64_t)a8
{
  v15 = a6;
  v21.receiver = self;
  v21.super_class = NIFindingConfiguration;
  v16 = [(NIConfiguration *)&v21 initInternal];
  v17 = v16;
  if (v16)
  {
    *(v16 + 34) = a4;
    *(v16 + 35) = a5;
    v16[8] = a3;
    objc_storeStrong(v16 + 9, a6);
    v17[5] = a7;
    v17[6] = 0;
    *(v17 + 32) = 0;
    *(v17 + 33) = 1;
    v18 = v17[10];
    v17[10] = 0;

    if (v15)
    {
      v19 = [v15 tokenVariant];
    }

    else
    {
      v19 = 0;
    }

    v17[11] = v19;
    v17[12] = a8;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NIFindingConfiguration;
  v4 = [(NIConfiguration *)&v8 copyWithZone:a3];
  [v4 setIsFinder:self->_isFinder];
  [v4 setIsObserver:self->_isObserver];
  [v4 setConfigType:self->_configType];
  v5 = [(NIDiscoveryToken *)self->_specifiedToken copy];
  [v4 setSpecifiedToken:v5];

  [v4 setPreferredUpdateRate:self->_preferredUpdateRate];
  [v4 setPreferredDiscoveryPriority:self->_preferredDiscoveryPriority];
  [v4 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  [v4 setCameraAssistanceInClientProcess:self->_cameraAssistanceInClientProcess];
  v6 = [(NSDictionary *)self->_debugParameters copy];
  [v4 setDebugParameters:v6];

  [v4 setDiscoveryTokenVariant:self->_discoveryTokenVariant];
  [v4 setRequestedMeasurementQuality:self->_requestedMeasurementQuality];
  [v4 setMonitoredRegions:self->_monitoredRegions];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NIFindingConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isFinder forKey:@"isFinder"];
  [v4 encodeBool:self->_isObserver forKey:@"isObserver"];
  [v4 encodeInteger:self->_configType forKey:@"configType"];
  [v4 encodeObject:self->_specifiedToken forKey:@"specifiedToken"];
  [v4 encodeInteger:self->_preferredUpdateRate forKey:@"preferredUpdateRate"];
  [v4 encodeInteger:self->_preferredDiscoveryPriority forKey:@"preferredDiscoveryPriority"];
  [v4 encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
  [v4 encodeBool:self->_cameraAssistanceInClientProcess forKey:@"cameraAssistanceInClientProcess"];
  [v4 encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [v4 encodeInteger:self->_discoveryTokenVariant forKey:@"discoveryTokenVariant"];
  [v4 encodeInteger:self->_requestedMeasurementQuality forKey:@"requestedMeasurementQuality"];
  [v4 encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
}

- (NIFindingConfiguration)initWithCoder:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NIFindingConfiguration;
  v5 = [(NIConfiguration *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeBoolForKey:@"isFinder"];
    v7 = [v4 decodeBoolForKey:@"isObserver"];
    v8 = [v4 decodeIntegerForKey:@"configType"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specifiedToken"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v10 = [v4 decodeIntegerForKey:@"preferredUpdateRate"], +[NIInternalUtils isIntValidNearbyObjectUpdateRate:](NIInternalUtils, "isIntValidNearbyObjectUpdateRate:", v10)) && (v27 = objc_msgSend(v4, "decodeIntegerForKey:", @"preferredDiscoveryPriority"), +[NIInternalUtils isIntValidNearbyObjectDiscoveryPriority:](NIInternalUtils, "isIntValidNearbyObjectDiscoveryPriority:", v27)))
    {
      v26 = [v4 decodeBoolForKey:@"cameraAssistanceEnabled"];
      v25 = [v4 decodeBoolForKey:@"cameraAssistanceInClientProcess"];
      v11 = MEMORY[0x1E695DFD8];
      v31[0] = objc_opt_class();
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v28 = [v11 setWithArray:v12];

      v13 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      v15 = [v13 setWithArray:v14];

      v16 = [v4 decodeDictionaryWithKeysOfClasses:v28 objectsOfClasses:v15 forKey:@"debugParameters"];
      v17 = [v4 decodeIntegerForKey:@"discoveryTokenVariant"];
      v5->_isFinder = v6;
      v5->_isObserver = v7;
      if (v8 == 1)
      {
        v18 = v17;
        v5->_configType = 1;
        v19 = [v4 decodeIntegerForKey:@"requestedMeasurementQuality"];
        v20 = [v4 decodeObjectForKey:@"monitoredRegions"];
        objc_storeStrong(&v5->_specifiedToken, v9);
        v5->_preferredUpdateRate = v10;
        v5->_preferredDiscoveryPriority = v27;
        v5->_cameraAssistanceEnabled = v26;
        v5->_cameraAssistanceInClientProcess = v25;
        objc_storeStrong(&v5->_debugParameters, v16);
        v5->_discoveryTokenVariant = v18;
        v5->_requestedMeasurementQuality = v19;
        monitoredRegions = v5->_monitoredRegions;
        v5->_monitoredRegions = v20;

        v22 = v5;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)canUpdateToConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v18 = 1;
    }

    else
    {
      v6 = [(NIFindingConfiguration *)v4 isFinder];
      isFinder = self->_isFinder;
      v8 = [(NIFindingConfiguration *)v5 isObserver];
      isObserver = self->_isObserver;
      v10 = [(NIFindingConfiguration *)v5 configType];
      configType = self->_configType;
      specifiedToken = v5->_specifiedToken;
      v13 = self->_specifiedToken;
      v28 = [specifiedToken isEqual:v13];
      v14 = (specifiedToken | v13) == 0;
      v15 = [(NIFindingConfiguration *)v5 isCameraAssistanceEnabled];
      cameraAssistanceEnabled = self->_cameraAssistanceEnabled;
      v26 = [(NIFindingConfiguration *)v5 isCameraAssistanceInClientProcess];
      cameraAssistanceInClientProcess = self->_cameraAssistanceInClientProcess;
      v24 = [(NIFindingConfiguration *)v5 discoveryTokenVariant];
      discoveryTokenVariant = self->_discoveryTokenVariant;
      v22 = [(NIFindingConfiguration *)v5 requestedMeasurementQuality];
      requestedMeasurementQuality = self->_requestedMeasurementQuality;
      monitoredRegions = v5->_monitoredRegions;
      v20 = (monitoredRegions | self->_monitoredRegions) == 0;
      v17 = [monitoredRegions isEqual:?];
      v18 = 0;
      if (isFinder == v6 && isObserver == v8 && v10 == configType && (((v14 | v28) ^ 1) & 1) == 0 && cameraAssistanceEnabled == v15 && cameraAssistanceInClientProcess == v26 && v24 == discoveryTokenVariant)
      {
        v18 = (v22 == requestedMeasurementQuality) & (v20 | v17);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (v5 == self)
    {
      v13 = 1;
    }

    else
    {
      v13 = [(NIFindingConfiguration *)self canUpdateToConfiguration:v5]&& (v6 = [(NIFindingConfiguration *)v5 preferredUpdateRate], preferredUpdateRate = self->_preferredUpdateRate, v8 = [(NIFindingConfiguration *)v5 preferredDiscoveryPriority], preferredDiscoveryPriority = self->_preferredDiscoveryPriority, debugParameters = v5->_debugParameters, v11 = (debugParameters | self->_debugParameters) == 0, v12 = [(NSDictionary *)debugParameters isEqualToDictionary:?], v6 == preferredUpdateRate) && v8 == preferredDiscoveryPriority && (v11 || v12);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = (self->_isFinder ^ ~self->_isObserver) & 0x1F;
  configType = self->_configType;
  v5 = configType ^ [(NIDiscoveryToken *)self->_specifiedToken hash]^ v3 ^ self->_preferredUpdateRate ^ self->_preferredDiscoveryPriority ^ self->_cameraAssistanceEnabled ^ self->_cameraAssistanceInClientProcess;
  v6 = self->_discoveryTokenVariant ^ self->_requestedMeasurementQuality;
  v7 = v6 ^ [(NSArray *)self->_monitoredRegions hash];
  return v5 ^ v7 ^ [(NSDictionary *)self->_debugParameters hash];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIFindingConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = MEMORY[0x1E696AEC0];
  isFinder = self->_isFinder;
  isObserver = self->_isObserver;
  configType_low = LODWORD(self->_configType);
  v7 = [(NIDiscoveryToken *)self->_specifiedToken descriptionInternal];
  v8 = [NIInternalUtils NINearbyObjectUpdateRateToString:self->_preferredUpdateRate];
  v9 = [NIInternalUtils NINearbyObjectDiscoveryPriorityToString:self->_preferredDiscoveryPriority];
  discoveryTokenVariant = self->_discoveryTokenVariant;
  v11 = [v3 stringWithFormat:@"<finder: %d [observer %d], cfg-type: %d, ses-token: %@, rate: %s, disc-prio: %s, camera: %d [client %d], debug-params: %@, disc-token-var: %d>, requested-meas-qual: %d", isFinder, isObserver, configType_low, v7, v8, v9, self->_cameraAssistanceEnabled, self->_cameraAssistanceInClientProcess, self->_debugParameters, discoveryTokenVariant, self->_requestedMeasurementQuality];

  return v11;
}

@end