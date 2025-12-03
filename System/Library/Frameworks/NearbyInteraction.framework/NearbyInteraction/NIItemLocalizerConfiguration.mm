@interface NIItemLocalizerConfiguration
- (BOOL)canUpdateToConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NIItemLocalizerConfiguration)initWithCoder:(id)coder;
- (NIItemLocalizerConfiguration)initWithItemUUID:(id)d preferredUpdateRate:(int64_t)rate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIItemLocalizerConfiguration

- (NIItemLocalizerConfiguration)initWithItemUUID:(id)d preferredUpdateRate:(int64_t)rate
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = NIItemLocalizerConfiguration;
  initInternal = [(NIConfiguration *)&v14 initInternal];
  v9 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 5, d);
    v10 = [NIDiscoveryToken generateTokenWithUUID:dCopy];
    discoveryToken = v9->_discoveryToken;
    v9->_discoveryToken = v10;

    v9->_preferredUpdateRate = rate;
    debugParameters = v9->_debugParameters;
    v9->_debugParameters = 0;

    v9->_cameraAssistanceEnabled = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NIItemLocalizerConfiguration;
  v4 = [(NIConfiguration *)&v7 copyWithZone:zone];
  [v4 setItemUUID:self->_itemUUID];
  [v4 setDiscoveryToken:self->_discoveryToken];
  [v4 setPreferredUpdateRate:self->_preferredUpdateRate];
  v5 = [(NSDictionary *)self->_debugParameters copy];
  [v4 setDebugParameters:v5];

  [v4 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NIItemLocalizerConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_itemUUID forKey:@"itemUUID"];
  [coderCopy encodeObject:self->_discoveryToken forKey:@"discoveryToken"];
  [coderCopy encodeInteger:self->_preferredUpdateRate forKey:@"preferredUpdateRate"];
  [coderCopy encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [coderCopy encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
}

- (NIItemLocalizerConfiguration)initWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NIItemLocalizerConfiguration;
  v5 = [(NIConfiguration *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemUUID"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveryToken"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = [coderCopy decodeIntegerForKey:@"preferredUpdateRate"], +[NIInternalUtils isIntValidNearbyObjectUpdateRate:](NIInternalUtils, "isIntValidNearbyObjectUpdateRate:", v8)))
      {
        v9 = MEMORY[0x1E695DFD8];
        v23[0] = objc_opt_class();
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
        v11 = [v9 setWithArray:v10];

        v12 = MEMORY[0x1E695DFD8];
        v22[0] = objc_opt_class();
        v22[1] = objc_opt_class();
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
        v14 = [v12 setWithArray:v13];

        v15 = [coderCopy decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v14 forKey:@"debugParameters"];
        v16 = [coderCopy decodeBoolForKey:@"cameraAssistanceEnabled"];
        objc_storeStrong(&v5->_itemUUID, v6);
        objc_storeStrong(&v5->_discoveryToken, v7);
        v5->_preferredUpdateRate = v8;
        debugParameters = v5->_debugParameters;
        v5->_debugParameters = v15;

        v5->_cameraAssistanceEnabled = v16;
        v18 = v5;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)canUpdateToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_12;
  }

  if (self != configurationCopy)
  {
    itemUUID = [(NIItemLocalizerConfiguration *)configurationCopy itemUUID];
    if (itemUUID)
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_itemUUID == 0;
    }

    itemUUID2 = [(NIItemLocalizerConfiguration *)v5 itemUUID];
    v10 = [itemUUID2 isEqual:self->_itemUUID];

    discoveryToken = [(NIItemLocalizerConfiguration *)v5 discoveryToken];
    if (discoveryToken)
    {
      v12 = 0;
    }

    else
    {
      v12 = self->_discoveryToken == 0;
    }

    discoveryToken2 = [(NIItemLocalizerConfiguration *)v5 discoveryToken];
    v14 = [discoveryToken2 isEqual:self->_discoveryToken];

    isCameraAssistanceEnabled = [(NIItemLocalizerConfiguration *)v5 isCameraAssistanceEnabled];
    if ((v7 | v10))
    {
      v8 = (v12 | v14) & (isCameraAssistanceEnabled == self->_cameraAssistanceEnabled);
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (v5 == self)
    {
      LOBYTE(v10) = 1;
    }

    else if ([(NIItemLocalizerConfiguration *)self canUpdateToConfiguration:v5])
    {
      preferredUpdateRate = [(NIItemLocalizerConfiguration *)v5 preferredUpdateRate];
      preferredUpdateRate = self->_preferredUpdateRate;
      debugParameters = v5->_debugParameters;
      v9 = self->_debugParameters;
      v10 = (preferredUpdateRate == preferredUpdateRate) & (((debugParameters | v9) == 0) | [(NSDictionary *)debugParameters isEqualToDictionary:v9]);
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_itemUUID hash];
  v4 = [(NIDiscoveryToken *)self->_discoveryToken hash];
  preferredUpdateRate = self->_preferredUpdateRate;
  return v3 ^ v4 ^ preferredUpdateRate ^ [(NSDictionary *)self->_debugParameters hash]^ self->_cameraAssistanceEnabled ^ 0x1F;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIItemLocalizerConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_itemUUID UUIDString];
  v5 = CUPrintNSObjectMasked();
  descriptionInternal = [(NIDiscoveryToken *)self->_discoveryToken descriptionInternal];
  v7 = [v3 stringWithFormat:@"<ItemUUID: %@, discoveryToken: %@, updateRate: %s, camera: %d, debug-params: %@>>", v5, descriptionInternal, +[NIInternalUtils NINearbyObjectUpdateRateToString:](NIInternalUtils, "NINearbyObjectUpdateRateToString:", self->_preferredUpdateRate), self->_cameraAssistanceEnabled, self->_debugParameters];

  return v7;
}

@end