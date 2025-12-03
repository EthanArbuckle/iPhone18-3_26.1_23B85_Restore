@interface ContactsSupportService
- (BOOL)clientAllowedToUseSPI:(id *)i;
- (ContactsSupportService)initWithWorkQueue:(id)queue connection:(id)connection;
- (ContactsSupportService)initWithWorkQueue:(id)queue connection:(id)connection accessAuthorization:(id)authorization;
- (NSXPCConnection)connection;
- (void)favoritesEntriesWithReply:(id)reply;
- (void)performWorkServicingSPI:(id)i authenticationFailureHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers withReply:(id)reply;
- (void)requestProviderDomainCommand:(id)command withReply:(id)reply;
- (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply;
- (void)setFavoritesEntries:(id)entries withReply:(id)reply;
- (void)verifyIndexWithReply:(id)reply;
@end

@implementation ContactsSupportService

- (ContactsSupportService)initWithWorkQueue:(id)queue connection:(id)connection
{
  queueCopy = queue;
  connectionCopy = connection;
  v8 = connectionCopy;
  v14 = 0u;
  v15 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v13[0] = v14;
  v13[1] = v15;
  v9 = [CNAuditToken auditToken:v13];
  v10 = [[CNAccessAuthorization alloc] initWithAuditToken:v9];
  v11 = [(ContactsSupportService *)self initWithWorkQueue:queueCopy connection:v8 accessAuthorization:v10];

  return v11;
}

- (ContactsSupportService)initWithWorkQueue:(id)queue connection:(id)connection accessAuthorization:(id)authorization
{
  queueCopy = queue;
  connectionCopy = connection;
  authorizationCopy = authorization;
  v28.receiver = self;
  v28.super_class = ContactsSupportService;
  v12 = [(ContactsSupportService *)&v28 init];
  if (v12)
  {
    v13 = +[CNContactsEnvironment currentEnvironment];
    objc_storeStrong(&v12->_workQueue, queue);
    loggerProvider = [v13 loggerProvider];
    loggerProvider = v12->_loggerProvider;
    v12->_loggerProvider = loggerProvider;

    objc_storeStrong(&v12->_environment, v13);
    objc_storeWeak(&v12->_connection, connectionCopy);
    objc_storeStrong(&v12->_accessAuthorization, authorization);
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    v16 = [CNAuditToken auditToken:v27];
    v17 = [[CNContactProviderSupportManager alloc] initWithAuditToken:v16];
    contactProviderManager = v12->_contactProviderManager;
    v12->_contactProviderManager = v17;

    v19 = dispatch_queue_create("contactsBackgroundColorQueue", 0);
    backgroundColorQueue = v12->_backgroundColorQueue;
    v12->_backgroundColorQueue = v19;

    v21 = +[CNEnvironment currentEnvironment];
    featureFlags = [v21 featureFlags];
    v23 = [featureFlags isFeatureEnabled:18];

    if (v23)
    {
      v24 = +[FavoritesPersistenceServiceWrapper sharedInstance];
      [(ContactsSupportService *)v12 setFavoritesPersistence:v24];
    }

    v25 = v12;
  }

  return v12;
}

- (void)requestProviderDomainCommand:(id)command withReply:(id)reply
{
  replyCopy = reply;
  commandCopy = command;
  contactProviderManager = [(ContactsSupportService *)self contactProviderManager];
  v11 = 0;
  v9 = [contactProviderManager requestHostDomainCommand:commandCopy error:&v11];

  v10 = v11;
  replyCopy[2](replyCopy, v9, v10);
}

- (void)favoritesEntriesWithReply:(id)reply
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015100;
  v6[3] = &unk_100045DB8;
  selfCopy = self;
  replyCopy = reply;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015170;
  v4[3] = &unk_100045318;
  v4[4] = selfCopy;
  v5 = replyCopy;
  v3 = replyCopy;
  [(ContactsSupportService *)selfCopy performWorkServicingSPI:v6 authenticationFailureHandler:v4];
}

- (void)setFavoritesEntries:(id)entries withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015320;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  entriesCopy = entries;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000153AC;
  v7[3] = &unk_100045318;
  v7[4] = selfCopy;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = entriesCopy;
  [(ContactsSupportService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply
{
  handlesCopy = handles;
  replyCopy = reply;
  loggerProvider = [(ContactsSupportService *)self loggerProvider];
  contactsLogger = [loggerProvider contactsLogger];
  [contactsLogger sendCommLimitsQuestionForHandles:handlesCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015594;
  v14[3] = &unk_100045390;
  v15 = handlesCopy;
  v16 = replyCopy;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000155EC;
  v12[3] = &unk_100045318;
  v12[4] = self;
  v13 = v16;
  v10 = v16;
  v11 = handlesCopy;
  [(ContactsSupportService *)self performWorkServicingSPI:v14 authenticationFailureHandler:v12];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers withReply:(id)reply
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015794;
  v10[3] = &unk_100045390;
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015860;
  v8[3] = &unk_100045318;
  v8[4] = self;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = identifiersCopy;
  [(ContactsSupportService *)self performWorkServicingSPI:v10 authenticationFailureHandler:v8];
}

- (void)verifyIndexWithReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000159E4;
  v7[3] = &unk_100045340;
  replyCopy = reply;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100015A70;
  v5[3] = &unk_100045318;
  v5[4] = self;
  v6 = replyCopy;
  v4 = replyCopy;
  [(ContactsSupportService *)self performWorkServicingSPI:v7 authenticationFailureHandler:v5];
}

- (void)performWorkServicingSPI:(id)i authenticationFailureHandler:(id)handler
{
  iCopy = i;
  handlerCopy = handler;
  v10 = 0;
  v8 = [(ContactsSupportService *)self clientAllowedToUseSPI:&v10];
  v9 = v10;
  if (v8)
  {
    iCopy[2](iCopy);
  }

  else
  {
    handlerCopy[2](handlerCopy, v9);
  }
}

- (BOOL)clientAllowedToUseSPI:(id *)i
{
  v29 = 0u;
  v30 = 0u;
  connection = [(ContactsSupportService *)self connection];
  v6 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v7 = +[CNEnvironment currentEnvironment];
  entitlementVerifier = [v7 entitlementVerifier];
  v28 = 0;
  buffer = v29;
  v34 = v30;
  v9 = [entitlementVerifier auditToken:&buffer hasBooleanEntitlement:CNEntitlementNameContactsFrameworkSPI error:&v28];
  v10 = v28;

  if (v9)
  {
    LOBYTE(v11) = 1;
    if (v10)
    {
LABEL_6:
      v31[0] = NSUnderlyingErrorKey;
      v31[1] = NSLocalizedFailureReasonErrorKey;
      v32[0] = v10;
      v32[1] = @"Couldn't check if caller had private entitlement";
      v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      goto LABEL_14;
    }
  }

  else
  {
    v13 = +[CNEnvironment currentEnvironment];
    entitlementVerifier2 = [v13 entitlementVerifier];
    v27 = 0;
    buffer = v29;
    v34 = v30;
    v11 = [entitlementVerifier2 auditToken:&buffer isFirstOrSecondPartyWithError:&v27];
    v15 = v27;

    connection2 = [(ContactsSupportService *)self connection];
    processIdentifier = [connection2 processIdentifier];

    if (v11)
    {
      loggerProvider = [(ContactsSupportService *)self loggerProvider];
      contactsLogger = [loggerProvider contactsLogger];
      [contactsLogger SPIUsageLackingEntitlementGrantedForPID:processIdentifier];
    }

    else
    {
      if (v15)
      {
        loggerProvider2 = [(ContactsSupportService *)self loggerProvider];
        contactsLogger2 = [loggerProvider2 contactsLogger];
        [contactsLogger2 internalError:v15];
      }

      loggerProvider3 = [(ContactsSupportService *)self loggerProvider];
      contactsLogger3 = [loggerProvider3 contactsLogger];
      [contactsLogger3 SPIUsageLackingEntitlementRejectedForPID:processIdentifier];

      v45 = xmmword_100033F40;
      v46 = unk_100033F50;
      memset(v47, 0, sizeof(v47));
      v41 = xmmword_100033F00;
      v42 = unk_100033F10;
      v43 = xmmword_100033F20;
      v44 = unk_100033F30;
      v37 = xmmword_100033EC0;
      v38 = unk_100033ED0;
      v39 = xmmword_100033EE0;
      v40 = unk_100033EF0;
      buffer = *"<unknown>";
      v34 = *&algn_100033E8A[6];
      v35 = xmmword_100033EA0;
      v36 = unk_100033EB0;
      proc_name(processIdentifier, &buffer, 0xFFu);
      [NSString stringWithFormat:@"Contacts client is attempting to use SPI without authorization: %s", &buffer];
      ABLogSimulateCrashReport();
    }

    if (v10)
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_14:
  v24 = [CNErrorFactory errorWithCode:100 userInfo:v12];
  if (i)
  {
    v25 = v11;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v24 = v24;
    *i = v24;
  }

  return v11;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end