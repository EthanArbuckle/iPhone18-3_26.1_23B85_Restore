@interface NEL2TPUserPreferences
+ (SCNetworkConnectionRef)createConnectionForConfiguration:(uint64_t)configuration;
+ (void)clearCurrentForConfiguration:(uint64_t)configuration;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEL2TPUserPreferences)initWithConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation NEL2TPUserPreferences

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  name = [(NEL2TPUserPreferences *)self name];
  if (name && (v6 = name, -[NEL2TPUserPreferences name](self, "name"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    v9 = 1;
  }

  else
  {
    [errorsCopy addObject:@"L2TP user preferences has no name"];
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_userPrefs;
  }

  CFRelease(self);
  v3.receiver = selfCopy;
  v3.super_class = NEL2TPUserPreferences;
  [(NEL2TPUserPreferences *)&v3 dealloc];
}

- (NEL2TPUserPreferences)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = NEL2TPUserPreferences;
  v5 = [(NEL2TPUserPreferences *)&v11 init];
  if (v5)
  {
    v6 = [NEL2TPUserPreferences createConnectionForConfiguration:configurationCopy];
    v5->_userPrefs = SCNetworkConnectionCreateUserPreferences();
    CFRelease(v6);
    if (!v5->_userPrefs)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = SCUserPreferencesGetUniqueID();
    identifier = v5->_identifier;
    v5->_identifier = v7;
  }

  v9 = v5;
LABEL_6:

  return v9;
}

+ (SCNetworkConnectionRef)createConnectionForConfiguration:(uint64_t)configuration
{
  v2 = a2;
  objc_opt_self();
  identifier = [v2 identifier];

  uUIDString = [identifier UUIDString];

  v5 = SCNetworkConnectionCreateWithServiceID(*MEMORY[0x1E695E480], uUIDString, 0, 0);
  return v5;
}

+ (void)clearCurrentForConfiguration:(uint64_t)configuration
{
  v2 = a2;
  objc_opt_self();
  v3 = [NEL2TPUserPreferences createConnectionForConfiguration:v2];

  UserPreferences = SCNetworkConnectionCreateUserPreferences();
  SCUserPreferencesSetCurrent();
  SCUserPreferencesRemove();
  CFRelease(UserPreferences);

  CFRelease(v3);
}

@end