@interface NIDLTDOAConfiguration
- (BOOL)isCameraAssistanceEnabled;
- (BOOL)isEqual:(id)equal;
- (NIDLTDOAConfiguration)initWithCoder:(id)coder;
- (NIDLTDOAConfiguration)initWithConfigParametersOverride:(id)override;
- (NIDLTDOAConfiguration)initWithNetworkIdentifier:(int64_t)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (int64_t)networkIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCameraAssistanceEnabled:(BOOL)enabled;
- (void)setNetworkIdentifier:(int64_t)identifier;
@end

@implementation NIDLTDOAConfiguration

- (NIDLTDOAConfiguration)initWithNetworkIdentifier:(int64_t)identifier
{
  v8.receiver = self;
  v8.super_class = NIDLTDOAConfiguration;
  initInternal = [(NIConfiguration *)&v8 initInternal];
  v5 = initInternal;
  if (initInternal)
  {
    initInternal->_networkIdentifier = identifier;
    v6 = initInternal;
  }

  return v5;
}

- (NIDLTDOAConfiguration)initWithConfigParametersOverride:(id)override
{
  overrideCopy = override;
  if (!overrideCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NIDLTDOAConfiguration.mm" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"configParameters"}];
  }

  v11.receiver = self;
  v11.super_class = NIDLTDOAConfiguration;
  initInternal = [(NIConfiguration *)&v11 initInternal];
  if (initInternal)
  {
    v7 = objc_opt_new();
    [(NSDictionary *)v7 setObject:MEMORY[0x1E695E118] forKey:@"UseConfigParametersOverrides"];
    [(NSDictionary *)v7 addEntriesFromDictionary:overrideCopy];
    debugParameters = initInternal->_debugParameters;
    initInternal->_debugParameters = v7;

    initInternal->_networkIdentifier = 0;
  }

  return initInternal;
}

- (void)setNetworkIdentifier:(int64_t)identifier
{
  obj = self;
  objc_sync_enter(obj);
  obj->_networkIdentifier = identifier;
  objc_sync_exit(obj);
}

- (int64_t)networkIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  networkIdentifier = selfCopy->_networkIdentifier;
  objc_sync_exit(selfCopy);

  return networkIdentifier;
}

- (void)setCameraAssistanceEnabled:(BOOL)enabled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cameraAssistanceEnabled = enabled;
  objc_sync_exit(obj);
}

- (BOOL)isCameraAssistanceEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cameraAssistanceEnabled = selfCopy->_cameraAssistanceEnabled;
  objc_sync_exit(selfCopy);

  return cameraAssistanceEnabled;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NIDLTDOAConfiguration;
  v5 = [(NIConfiguration *)&v8 copyWithZone:?];
  [v5 setNetworkIdentifier:self->_networkIdentifier];
  if (self->_debugParameters)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DF20] allocWithZone:{zone), "initWithDictionary:copyItems:", self->_debugParameters, 1}];
    [v5 setDebugParameters:v6];
  }

  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NIDLTDOAConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_debugParameters forKey:@"debugParamsIdentifier"];
  [coderCopy encodeInt64:self->_networkIdentifier forKey:@"networkIdentifier"];
  [coderCopy encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
}

- (NIDLTDOAConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"debugParamsIdentifier"];
  v6 = [coderCopy decodeIntForKey:@"networkIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"cameraAssistanceEnabled"];
  v11.receiver = self;
  v11.super_class = NIDLTDOAConfiguration;
  v8 = [(NIConfiguration *)&v11 initWithCoder:coderCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_debugParameters, v5);
    v9->_networkIdentifier = v6;
    v9->_cameraAssistanceEnabled = v7;
  }

  return v9;
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
      v14 = 1;
LABEL_14:

      goto LABEL_15;
    }

    networkIdentifier = self->_networkIdentifier;
    networkIdentifier = [(NIDLTDOAConfiguration *)v5 networkIdentifier];
    debugParameters = self->_debugParameters;
    if (!debugParameters)
    {
      debugParameters = [(NIDLTDOAConfiguration *)v6 debugParameters];

      if (!debugParameters)
      {
        v12 = 1;
LABEL_7:
        isCameraAssistanceEnabled = [(NIDLTDOAConfiguration *)v6 isCameraAssistanceEnabled];
        if (networkIdentifier == networkIdentifier)
        {
          if (isCameraAssistanceEnabled == self->_cameraAssistanceEnabled)
          {
            v14 = v12;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_14;
      }

      debugParameters = self->_debugParameters;
    }

    debugParameters2 = [(NIDLTDOAConfiguration *)v6 debugParameters];
    v12 = [(NSDictionary *)debugParameters isEqual:debugParameters2];

    goto LABEL_7;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_networkIdentifier];
  v4 = [v3 hash];
  v5 = v4 ^ [(NSDictionary *)self->_debugParameters hash]^ self->_cameraAssistanceEnabled;

  return v5 ^ 0x1F;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIDLTDOAConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  if (self->_cameraAssistanceEnabled)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v5 = [v3 initWithFormat:@"0x%lx, debugParameters:%@, cameraAssistanceEnabled: %@", self->_networkIdentifier, self->_debugParameters, v4];

  return v5;
}

@end