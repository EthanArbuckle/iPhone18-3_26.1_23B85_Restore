@interface AFUISceneConfiguration
+ (BOOL)shouldFenceConfigurationChange:(id)change fromCurrentSceneSettings:(id)settings;
+ (id)_sceneIdentifier;
+ (id)defaultSiriSceneConfigurationWithInitialBounds:(CGRect)bounds onDisplay:(id)display;
+ (id)stringForInvalidationReason:(unint64_t)reason;
- (AFUISceneConfiguration)init;
- (CGRect)bounds;
- (CGRect)initialBounds;
- (FBSSceneDefinition)sceneDefinition;
- (FBSSceneParameters)sceneParameters;
- (UIEdgeInsets)initialSafeAreaInsets;
- (id)_initWithInitialBounds:(CGRect)bounds displayConfiguration:(id)configuration;
- (id)_sceneSpecification;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setupPlatformSpecificDefaultSettings;
- (void)configureMutableSceneSettings:(id)settings;
@end

@implementation AFUISceneConfiguration

- (void)_setupPlatformSpecificDefaultSettings
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    self->_foreground = 0;
    self->_launchIntent = 5;
    v5 = 1;
  }

  else
  {
    if (userInterfaceIdiom > 1)
    {
      return;
    }

    v5 = 2;
  }

  self->_preferredDeferralMode = v5;
}

+ (id)_sceneIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 stringWithFormat:@"SiriHostedScene-%@-%@", @"com.apple.siri", uUIDString];

  return v5;
}

- (FBSSceneDefinition)sceneDefinition
{
  v3 = MEMORY[0x277D0ADC0];
  _sceneIdentifier = [objc_opt_class() _sceneIdentifier];
  v5 = [v3 identityForIdentifier:_sceneIdentifier workspaceIdentifier:@"com.apple.siri"];

  v6 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.siri"];
  v7 = [MEMORY[0x277D0ADA8] defaultIdentityForProcessIdentity:v6];
  definition = [MEMORY[0x277D0AD48] definition];
  [definition setIdentity:v5];
  _sceneSpecification = [(AFUISceneConfiguration *)self _sceneSpecification];
  [definition setSpecification:_sceneSpecification];

  [definition setClientIdentity:v7];
  v10 = [definition copy];

  return v10;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = AFUISceneConfiguration;
  v3 = [(AFUISceneConfiguration *)&v10 description];
  v4 = NSStringFromBOOL();
  v5 = NSStringFromCGRect(self->_bounds);
  v6 = NSStringFromUIEdgeInsets(self->_initialSafeAreaInsets);
  v7 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
  v8 = [v3 stringByAppendingFormat:@", foreground: %@, bounds: %@, safeAreaInsets: %@, deactivationReasonMask: %@", v4, v5, v6, v7];

  return v8;
}

- (id)_sceneSpecification
{
  isCarDisplay = [(FBSDisplayConfiguration *)self->_displayConfiguration isCarDisplay];
  v3 = off_278CD4830;
  if (!isCarDisplay)
  {
    v3 = off_278CD47D0;
  }

  specification = [(__objc2_class *)*v3 specification];

  return specification;
}

- (AFUISceneConfiguration)init
{
  v3 = objc_opt_class();
  mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
  v5 = [v3 defaultSiriSceneConfigurationWithInitialBounds:mainConfiguration onDisplay:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];

  return v5;
}

- (id)_initWithInitialBounds:(CGRect)bounds displayConfiguration:(id)configuration
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [AFUISceneConfiguration _initWithInitialBounds:a2 displayConfiguration:self];
  }

  v28.receiver = self;
  v28.super_class = AFUISceneConfiguration;
  v11 = [(AFUISceneConfiguration *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v11->_initialBounds.origin.x = x;
    v11->_initialBounds.origin.y = y;
    v11->_initialBounds.size.width = width;
    v11->_initialBounds.size.height = height;
    v13 = [configurationCopy copy];
    displayConfiguration = v12->_displayConfiguration;
    v12->_displayConfiguration = v13;

    v12->_foreground = 1;
    *&v12->_launchIntent = xmmword_241494740;
    v15 = *(MEMORY[0x277D768C8] + 16);
    *&v12->_initialSafeAreaInsets.top = *MEMORY[0x277D768C8];
    *&v12->_initialSafeAreaInsets.bottom = v15;
    *&v12->_userInterfaceStyle = xmmword_241494750;
    v16 = x;
    *&v15 = y;
    v17 = width;
    v18 = height;
    if (CGRectEqualToRect(*(&v15 - 8), *MEMORY[0x277CBF398]))
    {
      [(FBSDisplayConfiguration *)v12->_displayConfiguration bounds];
      x = v19;
      y = v20;
      width = v21;
      height = v22;
      v23 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v25 = NSStringFromCGRect(v34);
        *buf = 136315394;
        v30 = "[AFUISceneConfiguration _initWithInitialBounds:displayConfiguration:]";
        v31 = 2112;
        v32 = v25;
        _os_log_error_impl(&dword_241432000, v24, OS_LOG_TYPE_ERROR, "%s #sceneHosting Initializing AFUISceneConfiguration with null bounds, falling back to displayConfiguration's bounds: %@", buf, 0x16u);
LABEL_9:
      }
    }

    else
    {
      v26 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v24 = v26;
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        v25 = NSStringFromCGRect(v35);
        *buf = 136315394;
        v30 = "[AFUISceneConfiguration _initWithInitialBounds:displayConfiguration:]";
        v31 = 2112;
        v32 = v25;
        _os_log_impl(&dword_241432000, v24, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting Initializing AFUISceneConfiguration using bounds: %@", buf, 0x16u);
        goto LABEL_9;
      }
    }

    v12->_bounds.origin.x = x;
    v12->_bounds.origin.y = y;
    v12->_bounds.size.width = width;
    v12->_bounds.size.height = height;
    [(AFUISceneConfiguration *)v12 _setupPlatformSpecificDefaultSettings];
  }

  return v12;
}

- (FBSSceneParameters)sceneParameters
{
  isCarDisplay = [(FBSDisplayConfiguration *)self->_displayConfiguration isCarDisplay];
  v4 = off_278CD4830;
  if (!isCarDisplay)
  {
    v4 = off_278CD47D0;
  }

  specification = [(__objc2_class *)*v4 specification];
  v6 = [objc_alloc(MEMORY[0x277D0AD50]) initWithSpecification:specification];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__AFUISceneConfiguration_sceneParameters__block_invoke;
  v8[3] = &unk_278CD53A8;
  v8[4] = self;
  [v6 updateSettingsWithBlock:v8];

  return v6;
}

- (void)configureMutableSceneSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy isUISubclass])
  {
    v4 = MEMORY[0x277D75DA0];
    v5 = settingsCopy;
    _applicationKeyWindow = [v4 _applicationKeyWindow];
    interfaceOrientation = [_applicationKeyWindow interfaceOrientation];

    if (-[FBSDisplayConfiguration isCarDisplay](self->_displayConfiguration, "isCarDisplay") || ([MEMORY[0x277D75418] currentDevice], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "userInterfaceIdiom"), v8, v9 == 2))
    {
      x = self->_bounds.origin.x;
      y = self->_bounds.origin.y;
      width = self->_bounds.size.width;
      height = self->_bounds.size.height;
    }

    else
    {
      [(FBSDisplayConfiguration *)self->_displayConfiguration bounds];
      x = v14;
      y = v15;
      width = v16;
      height = v17;
    }

    [v5 setForeground:self->_foreground];
    [v5 setDisplayConfiguration:self->_displayConfiguration];
    [v5 setLevel:0.0];
    [v5 setDeviceOrientationEventsEnabled:0];
    [v5 setFrame:{x, y, width, height}];
    [v5 setInterfaceOrientation:interfaceOrientation];
    [v5 setUserInterfaceStyle:self->_userInterfaceStyle];
    [v5 setSafeAreaInsetsPortrait:{self->_initialSafeAreaInsets.top, self->_initialSafeAreaInsets.left, self->_initialSafeAreaInsets.bottom, self->_initialSafeAreaInsets.right}];
    [v5 setDeactivationReasons:self->_deactivationReasonMask];
  }

  MEMORY[0x2821F96F8]();
}

+ (id)stringForInvalidationReason:(unint64_t)reason
{
  if (reason < 6)
  {
    return off_278CD6118[reason];
  }

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [(AFUISceneConfiguration *)reason stringForInvalidationReason:v5];
  }

  return 0;
}

+ (id)defaultSiriSceneConfigurationWithInitialBounds:(CGRect)bounds onDisplay:(id)display
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  displayCopy = display;
  v9 = [objc_alloc(objc_opt_class()) _initWithInitialBounds:displayCopy displayConfiguration:{x, y, width, height}];

  return v9;
}

+ (BOOL)shouldFenceConfigurationChange:(id)change fromCurrentSceneSettings:(id)settings
{
  changeCopy = change;
  settingsCopy = settings;
  if ([settingsCopy isUISubclass])
  {
    v7 = settingsCopy;
    userInterfaceStyle = [changeCopy userInterfaceStyle];
    LOBYTE(userInterfaceStyle) = userInterfaceStyle != [v7 userInterfaceStyle];
    [changeCopy bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v7 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v28.origin.x = v18;
    v28.origin.y = v20;
    v28.size.width = v22;
    v28.size.height = v24;
    v25 = userInterfaceStyle | CGRectEqualToRect(v27, v28);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) _initWithInitialBounds:self->_displayConfiguration displayConfiguration:{self->_initialBounds.origin.x, self->_initialBounds.origin.y, self->_initialBounds.size.width, self->_initialBounds.size.height}];
  [v4 setForeground:self->_foreground];
  [v4 setLaunchIntent:self->_launchIntent];
  [v4 setPreferredDeferralMode:self->_preferredDeferralMode];
  [v4 setUserInterfaceStyle:self->_userInterfaceStyle];
  v5 = [(FBSSceneParameters *)self->_sceneParameters copy];
  [v4 setSceneParameters:v5];

  [v4 setInitialSafeAreaInsets:{self->_initialSafeAreaInsets.top, self->_initialSafeAreaInsets.left, self->_initialSafeAreaInsets.bottom, self->_initialSafeAreaInsets.right}];
  [v4 setDeactivationReasonMask:self->_deactivationReasonMask];
  return v4;
}

- (CGRect)initialBounds
{
  x = self->_initialBounds.origin.x;
  y = self->_initialBounds.origin.y;
  width = self->_initialBounds.size.width;
  height = self->_initialBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)initialSafeAreaInsets
{
  top = self->_initialSafeAreaInsets.top;
  left = self->_initialSafeAreaInsets.left;
  bottom = self->_initialSafeAreaInsets.bottom;
  right = self->_initialSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end