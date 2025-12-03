@interface _EXHostViewControllerConfiguration
- (NSString)sceneIdentifier;
- (_EXHostViewControllerConfiguration)init;
- (_EXHostViewControllerConfiguration)initWithExtension:(id)extension;
- (_EXHostViewControllerConfiguration)initWithExtension:(id)extension role:(id)role;
- (_EXHostViewControllerConfiguration)initWithExtensionIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setExtension:(id)extension;
- (void)setExtensionIdentity:(id)identity;
- (void)setSceneIdentifier:(id)identifier;
@end

@implementation _EXHostViewControllerConfiguration

- (_EXHostViewControllerConfiguration)init
{
  v2 = *MEMORY[0x1E6966D28];
  v9.receiver = self;
  v9.super_class = _EXHostViewControllerConfiguration;
  v3 = [(_EXHostViewControllerSessionConfiguration *)&v9 initWithSceneIdentifier:v2];
  v4 = v3;
  if (v3)
  {
    extensionIdentity = v3->_extensionIdentity;
    v3->_extensionIdentity = 0;

    instanceIdentifier = v4->_instanceIdentifier;
    v4->_instanceIdentifier = 0;

    mEMORY[0x1E6966CA0] = [MEMORY[0x1E6966CA0] sharedInstance];
    v4->_beginHostingImmediately = [mEMORY[0x1E6966CA0] startUIHostingSessionImmediately];

    v4->_sizeBridgingOptions = -1;
    v4->_retryOnHostingFailure = 0;
  }

  return v4;
}

- (_EXHostViewControllerConfiguration)initWithExtensionIdentity:(id)identity
{
  identityCopy = identity;
  v6 = *MEMORY[0x1E6966D28];
  v12.receiver = self;
  v12.super_class = _EXHostViewControllerConfiguration;
  v7 = [(_EXHostViewControllerSessionConfiguration *)&v12 initWithSceneIdentifier:v6];
  if (v7)
  {
    if (([identityCopy presentsUserInterface] & 1) == 0)
    {
      v8 = _EXDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [_EXHostViewControllerConfiguration initWithExtensionIdentity:];
      }
    }

    objc_storeStrong(&v7->_extensionIdentity, identity);
    instanceIdentifier = v7->_instanceIdentifier;
    v7->_instanceIdentifier = 0;

    mEMORY[0x1E6966CA0] = [MEMORY[0x1E6966CA0] sharedInstance];
    v7->_beginHostingImmediately = [mEMORY[0x1E6966CA0] startUIHostingSessionImmediately];

    v7->_sizeBridgingOptions = -1;
    v7->_retryOnHostingFailure = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _EXHostViewControllerConfiguration;
  v4 = [(_EXHostViewControllerSessionConfiguration *)&v6 copyWithZone:zone];
  [v4 setExtensionIdentity:self->_extensionIdentity];
  [v4 setInstanceIdentifier:self->_instanceIdentifier];
  [v4 setBeginHostingImmediately:self->_beginHostingImmediately];
  [v4 setSizeBridgingOptions:self->_sizeBridgingOptions];
  [v4 setRetryOnHostingFailure:self->_retryOnHostingFailure];
  return v4;
}

- (void)setExtensionIdentity:(id)identity
{
  identityCopy = identity;
  if (([identityCopy presentsUserInterface] & 1) == 0)
  {
    v5 = _EXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_EXHostViewControllerConfiguration setExtensionIdentity:];
    }
  }

  extensionIdentity = self->_extensionIdentity;
  self->_extensionIdentity = identityCopy;
}

- (NSString)sceneIdentifier
{
  v4.receiver = self;
  v4.super_class = _EXHostViewControllerConfiguration;
  sceneIdentifier = [(_EXHostViewControllerSessionConfiguration *)&v4 sceneIdentifier];

  return sceneIdentifier;
}

- (void)setSceneIdentifier:(id)identifier
{
  v3.receiver = self;
  v3.super_class = _EXHostViewControllerConfiguration;
  [(_EXHostViewControllerSessionConfiguration *)&v3 setSceneIdentifier:identifier];
}

- (_EXHostViewControllerConfiguration)initWithExtension:(id)extension
{
  extensionCopy = extension;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_EXHostViewControllerConfiguration *)self initWithExtensionIdentity:extensionCopy];

    return v5;
  }

  else
  {
    v7 = _EXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_EXHostViewControllerConfiguration initWithExtension:];
    }

    __break(1u);
  }

  return result;
}

- (_EXHostViewControllerConfiguration)initWithExtension:(id)extension role:(id)role
{
  extensionCopy = extension;
  roleCopy = role;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_EXHostViewControllerConfiguration *)self initWithExtensionIdentity:extensionCopy];
    v9 = v8;
    if (v8)
    {
      [(_EXHostViewControllerConfiguration *)v8 setSceneIdentifier:roleCopy];
    }

    return v9;
  }

  else
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [_EXHostViewControllerConfiguration initWithExtension:role:];
    }

    __break(1u);
  }

  return result;
}

- (void)setExtension:(id)extension
{
  extensionCopy = extension;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_EXHostViewControllerConfiguration *)self setExtensionIdentity:extensionCopy];
  }

  else
  {
    v4 = _EXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_EXHostViewControllerConfiguration setExtension:];
    }

    __break(1u);
  }
}

- (void)initWithExtensionIdentity:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "extensionIdentity.presentsUserInterface";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = 34;
  _os_log_fault_impl(&dword_1D29CC000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Extension point does not support user interface", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setExtensionIdentity:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = "extensionIdentity.presentsUserInterface";
  v4 = 2080;
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = 62;
  _os_log_fault_impl(&dword_1D29CC000, v0, OS_LOG_TYPE_FAULT, "%s - %s:%d: Extension point does not support user interface", &v2, 0x1Cu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtension:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v0, v1, "%s - %s:%d: Invalid extension class %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithExtension:role:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v0, v1, "%s - %s:%d: Invalid extension class %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setExtension:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1D29CC000, v0, v1, "%s - %s:%d: Invalid extension class %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end