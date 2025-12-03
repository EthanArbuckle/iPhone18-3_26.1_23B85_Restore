@interface OTPersonaActualAdapter
- (BOOL)currentThreadIsForPrimaryiCloudAccount;
- (OTPersonaActualAdapter)init;
- (id)currentThreadPersonaUniqueString;
- (void)performBlockWithPersonaIdentifier:(id)identifier block:(id)block;
- (void)prepareThreadForKeychainAPIUseForPersonaIdentifier:(id)identifier;
@end

@implementation OTPersonaActualAdapter

- (OTPersonaActualAdapter)init
{
  v3.receiver = self;
  v3.super_class = OTPersonaActualAdapter;
  return [(OTPersonaActualAdapter *)&v3 init];
}

- (void)performBlockWithPersonaIdentifier:(id)identifier block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  currentThreadPersonaUniqueString = [(OTPersonaActualAdapter *)self currentThreadPersonaUniqueString];
  if ([identifierCopy isEqualToString:currentThreadPersonaUniqueString])
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    [(OTPersonaActualAdapter *)self prepareThreadForKeychainAPIUseForPersonaIdentifier:identifierCopy];
    blockCopy[2](blockCopy);
    [(OTPersonaActualAdapter *)self prepareThreadForKeychainAPIUseForPersonaIdentifier:currentThreadPersonaUniqueString];
  }
}

- (void)prepareThreadForKeychainAPIUseForPersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[UMUserPersona currentPersona];
  v5 = [v4 generateAndRestorePersonaContextWithPersonaUniqueString:identifierCopy];

  v6 = secLogObjForScope();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = identifierCopy;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to adopt persona %@: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Adopted persona for id '%@'", &v8, 0xCu);
  }
}

- (BOOL)currentThreadIsForPrimaryiCloudAccount
{
  v2 = +[UMUserManager sharedManager];
  currentPersona = [v2 currentPersona];

  userPersonaType = [currentPersona userPersonaType];
  v5 = 1;
  if (userPersonaType <= 6)
  {
    if (((1 << userPersonaType) & 0x29) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << userPersonaType) & 0x44) != 0)
    {
LABEL_8:
      v5 = 0;
      goto LABEL_9;
    }
  }

  if (userPersonaType != 1000)
  {
    v6 = secLogObjForScope();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      v9 = 138412546;
      v10 = userPersonaUniqueString;
      v11 = 1024;
      userPersonaType2 = [currentPersona userPersonaType];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received unexpected Universal/Managed/other persona; treating as not for primary account: %@(%d)", &v9, 0x12u);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (id)currentThreadPersonaUniqueString
{
  v2 = +[UMUserManager sharedManager];
  currentPersona = [v2 currentPersona];

  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  return userPersonaUniqueString;
}

@end