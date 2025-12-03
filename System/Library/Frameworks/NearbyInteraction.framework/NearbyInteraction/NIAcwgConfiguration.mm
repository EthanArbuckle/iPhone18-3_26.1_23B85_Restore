@interface NIAcwgConfiguration
- (BOOL)isEqual:(id)equal;
- (NIAcwgConfiguration)initWithCoder:(id)coder;
- (NIAcwgConfiguration)initWithConfiguration:(id)configuration;
- (NIAcwgConfiguration)initWithLockIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgConfiguration

- (NIAcwgConfiguration)initWithLockIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NIAcwgConfiguration.mm" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"lockIdentifier"}];
  }

  v11.receiver = self;
  v11.super_class = NIAcwgConfiguration;
  initInternal = [(NIConfiguration *)&v11 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 6, identifier);
    v8->_lockBtConnHandle = -1;
    v8->_configurationTypeInternal = 1;
  }

  return v8;
}

- (NIAcwgConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NIAcwgConfiguration.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v13.receiver = self;
  v13.super_class = NIAcwgConfiguration;
  initInternal = [(NIConfiguration *)&v13 initInternal];
  if (initInternal)
  {
    lockIdentifier = [configurationCopy lockIdentifier];
    lockIdentifier = initInternal->_lockIdentifier;
    initInternal->_lockIdentifier = lockIdentifier;

    initInternal->_lockBtConnHandle = [configurationCopy lockBtConnHandle];
    debugOptions = [configurationCopy debugOptions];
    debugOptions = initInternal->_debugOptions;
    initInternal->_debugOptions = debugOptions;

    initInternal->_configurationTypeInternal = [configurationCopy configurationType];
  }

  return initInternal;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = NIAcwgConfiguration;
  v5 = [(NIConfiguration *)&v9 copyWithZone:?];
  [v5 setLockIdentifier:self->_lockIdentifier];
  [v5 setLockBtConnHandle:self->_lockBtConnHandle];
  v5[4] = self->_configurationTypeInternal;
  if (self->_debugOptions)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DF20] allocWithZone:{zone), "initWithDictionary:copyItems:", self->_debugOptions, 1}];
    v7 = v5[7];
    v5[7] = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_lockIdentifier forKey:@"lockIdentifier"];
  [coderCopy encodeInt:self->_lockBtConnHandle forKey:@"lockBtConnHandle"];
  [coderCopy encodeObject:self->_debugOptions forKey:@"debugOptions"];
  [coderCopy encodeInteger:self->_configurationTypeInternal forKey:@"configurationType"];
}

- (NIAcwgConfiguration)initWithCoder:(id)coder
{
  v19[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (!self)
  {
    v15 = 0;
LABEL_9:
    self = v15;
    selfCopy = self;
    goto LABEL_10;
  }

  selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockIdentifier"];
  if (selfCopy)
  {
    v6 = [coderCopy decodeIntForKey:@"lockBtConnHandle"];
    v7 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v9 = [v7 setWithArray:v8];

    v10 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeDictionaryWithKeysOfClasses:v9 objectsOfClasses:v12 forKey:@"debugOptions"];
    if ([coderCopy decodeIntegerForKey:@"configurationType"] == 1)
    {
      v14 = [(NIAcwgConfiguration *)self initWithLockIdentifier:selfCopy];
      v15 = v14;
      if (v14)
      {
        [(NIAcwgConfiguration *)v14 setLockBtConnHandle:v6];
        [(NIAcwgConfiguration *)v15 setDebugOptions:v13];
      }
    }

    else
    {

      v15 = 0;
    }

    goto LABEL_9;
  }

LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
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
    }

    else
    {
      lockIdentifier = self->_lockIdentifier;
      lockIdentifier = [(NIAcwgConfiguration *)v5 lockIdentifier];
      v9 = [(NSString *)lockIdentifier isEqualToString:lockIdentifier];

      lockBtConnHandle = self->_lockBtConnHandle;
      lockBtConnHandle = [(NIAcwgConfiguration *)v6 lockBtConnHandle];
      debugOptions = self->_debugOptions;
      if (debugOptions)
      {
        v13 = 0;
      }

      else
      {
        debugOptions = [(NIAcwgConfiguration *)v6 debugOptions];
        v13 = debugOptions == 0;

        debugOptions = self->_debugOptions;
      }

      debugOptions2 = [(NIAcwgConfiguration *)v6 debugOptions];
      v17 = [(NSDictionary *)debugOptions isEqualToDictionary:debugOptions2];

      configurationTypeInternal = self->_configurationTypeInternal;
      configurationType = [(NIAcwgConfiguration *)v6 configurationType];
      v14 = lockBtConnHandle == lockBtConnHandle && v9 && (v17 || v13) && configurationTypeInternal == configurationType;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIAcwgConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

@end