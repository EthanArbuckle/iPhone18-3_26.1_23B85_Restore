@interface ContactsService
+ (Class)dataMapperClassForConnection:(id)connection;
+ (id)managedConfigurationForConnection:(id)connection;
- (BOOL)clientAllowedToUseSPI:(id *)i;
- (BOOL)shouldNotReportFavoritesError:(id)error;
- (CNUIImageRemoteBackgroundColorAnalyzer)backgroundColorAnalyzer;
- (ContactsService)initWithDataMapper:(id)mapper dataMapperConfiguration:(id)configuration workQueue:(id)queue highPriorityWorkQueue:(id)workQueue connection:(id)connection accessAuthorization:(id)authorization;
- (ContactsService)initWithWorkQueue:(id)queue highPriorityWorkQueue:(id)workQueue connection:(id)connection;
- (NSXPCConnection)connection;
- (id)_bestWorkQueueForAuditToken:(id *)token;
- (id)unitTestBaseURLWithOptions:(id)options;
- (void)accountsMatchingPredicate:(id)predicate withReply:(id)reply;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier withReply:(id)reply;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers withReply:(id)reply;
- (void)analyzeDatabaseWithReply:(id)reply;
- (void)authorizedKeysForContactKeys:(id)keys withReply:(id)reply;
- (void)bestSenderIdentityForHandle:(id)handle withReply:(id)reply;
- (void)changeHistoryWithFetchRequest:(id)request withReply:(id)reply;
- (void)configureServiceWithOptions:(id)options;
- (void)configureUnitTestWithOptions:(id)options;
- (void)contactCountForFetchRequest:(id)request withReply:(id)reply;
- (void)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch withReply:(id)reply;
- (void)contactsForFetchRequest:(id)request withMatchInfoReply:(id)reply;
- (void)containersMatchingPredicate:(id)predicate withReply:(id)reply;
- (void)currentHistoryAnchorWithReply:(id)reply;
- (void)currentHistoryTokenWithReply:(id)reply;
- (void)defaultContainerIdentifierWithReply:(id)reply;
- (void)dropAllLimitedAccessRowsAndSyncNotifyWithReply:(id)reply;
- (void)encodedContactsAndCursorForFetchRequest:(id)request withReply:(id)reply;
- (void)executeChangeHistoryClearRequest:(id)request withReply:(id)reply;
- (void)executeSaveRequest:(id)request withReply:(id)reply;
- (void)favoritesEntryDictionariesAtPath:(id)path withReply:(id)reply;
- (void)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle withReply:(id)reply;
- (void)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format withReply:(id)reply;
- (void)getLimitedAccessContactsCountForBundle:(id)bundle withReply:(id)reply;
- (void)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)number withReply:(id)reply;
- (void)groupsMatchingPredicate:(id)predicate withReply:(id)reply;
- (void)identifierWithReply:(id)reply;
- (void)meContactIdentifiersWithReply:(id)reply;
- (void)performAsyncWorkWithDataMapper:(id)mapper;
- (void)performServicingRequestWork:(id)work;
- (void)performWorkServicingSPI:(id)i authenticationFailureHandler:(id)handler;
- (void)performWorkWithContactStore:(id)store;
- (void)performWorkWithDataMapper:(id)mapper;
- (void)policyForContainerWithIdentifier:(id)identifier withReply:(id)reply;
- (void)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number withReply:(id)reply;
- (void)progressiveContactsForFetchRequest:(id)request progressHandler:(id)handler reply:(id)reply;
- (void)purgeLimitedAccessRecordsForBundle:(id)bundle withReply:(id)reply;
- (void)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier withReply:(id)reply;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier withReply:(id)reply;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers withReply:(id)reply;
- (void)reportFavoritesIssue:(id)issue;
- (void)sectionListOffsetsForSortOrder:(int64_t)order reply:(id)reply;
- (void)serverSearchContainersMatchingPredicate:(id)predicate withReply:(id)reply;
- (void)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email withReply:(id)reply;
- (void)setDefaultAccountIdentifier:(id)identifier withReply:(id)reply;
- (void)setMeContact:(id)contact forContainer:(id)container withReply:(id)reply;
- (void)setMeContact:(id)contact withReply:(id)reply;
- (void)shouldAnalyzeDatabaseWithReply:(id)reply;
- (void)subgroupsOfGroupWithIdentifier:(id)identifier withReply:(id)reply;
- (void)unifiedContactCountWithReply:(id)reply;
- (void)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier withReply:(id)reply;
- (void)userActivityForContact:(id)contact withReply:(id)reply;
- (void)writeFavoritesPropertyListData:(id)data toPath:(id)path withReply:(id)reply;
@end

@implementation ContactsService

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (ContactsService)initWithWorkQueue:(id)queue highPriorityWorkQueue:(id)workQueue connection:(id)connection
{
  queueCopy = queue;
  workQueueCopy = workQueue;
  connectionCopy = connection;
  v9 = connectionCopy;
  v23 = 0u;
  v24 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v22[0] = v23;
  v22[1] = v24;
  v10 = [CNAuditToken auditToken:v22];
  v19 = +[CNContactsEnvironment currentEnvironment];
  v11 = [objc_opt_class() managedConfigurationForConnection:v9];
  v12 = [[CNAccessAuthorization alloc] initWithAuditToken:v10];
  v13 = [[CNContactProviderSupportManager alloc] initWithAuditToken:v10];
  v14 = objc_alloc_init(CNDataMapperConfiguration);
  [v14 setEnvironment:v19];
  [v14 setManagedConfiguration:v11];
  [v14 setIdentifierAuditMode:1];
  authorizer = [v12 authorizer];
  [v14 setAuthorizationContext:authorizer];

  [v14 setContactProviderManager:v13];
  v16 = [objc_alloc(objc_msgSend(objc_opt_class() dataMapperClassForConnection:{v9)), "initWithConfiguration:", v14}];
  v17 = [(ContactsService *)self initWithDataMapper:v16 dataMapperConfiguration:v14 workQueue:queueCopy highPriorityWorkQueue:workQueueCopy connection:v9 accessAuthorization:v12];

  return v17;
}

- (ContactsService)initWithDataMapper:(id)mapper dataMapperConfiguration:(id)configuration workQueue:(id)queue highPriorityWorkQueue:(id)workQueue connection:(id)connection accessAuthorization:(id)authorization
{
  mapperCopy = mapper;
  configurationCopy = configuration;
  queueCopy = queue;
  workQueueCopy = workQueue;
  connectionCopy = connection;
  authorizationCopy = authorization;
  v41.receiver = self;
  v41.super_class = ContactsService;
  v19 = [(ContactsService *)&v41 init];
  if (v19)
  {
    v37 = queueCopy;
    environment = [configurationCopy environment];
    objc_storeStrong(&v19->_dataMapper, mapper);
    v21 = [[CNDataMapperContactStore alloc] initWithDataMapper:mapperCopy dataMapperConfiguration:configurationCopy];
    contactStore = v19->_contactStore;
    v19->_contactStore = v21;

    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_highPriorityWorkQueue, workQueue);
    loggerProvider = [environment loggerProvider];
    contactsLogger = [loggerProvider contactsLogger];
    logger = v19->_logger;
    v19->_logger = contactsLogger;

    objc_storeStrong(&v19->_environment, environment);
    objc_storeWeak(&v19->_connection, connectionCopy);
    objc_storeStrong(&v19->_accessAuthorization, authorization);
    contactProviderManager = [configurationCopy contactProviderManager];
    contactProviderManager = v19->_contactProviderManager;
    v19->_contactProviderManager = contactProviderManager;

    v28 = dispatch_queue_create("contactsBackgroundColorQueue", 0);
    backgroundColorQueue = v19->_backgroundColorQueue;
    v19->_backgroundColorQueue = v28;

    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(v40, 0, sizeof(v40));
    }

    v30 = [CNAuditToken auditToken:v40];
    v31 = [[CNRegulatoryLogger alloc] initWithAuditToken:v30 assumedIdentity:0];
    regulatoryLogger = v19->_regulatoryLogger;
    v19->_regulatoryLogger = v31;

    v33 = [[CNQueryAnalyticsLogger alloc] initWithAuditToken:v30 assumedIdentity:0];
    queryAnalyticsLogger = v19->_queryAnalyticsLogger;
    v19->_queryAnalyticsLogger = v33;

    objc_storeStrong(&v19->_dataMapperConfiguration, configuration);
    v35 = v19;

    queueCopy = v37;
  }

  return v19;
}

+ (id)managedConfigurationForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [CNContactProviderSupportManager isConnectionForContactProvider:connectionCopy];
  initForContactProvider = [[CNManagedConfiguration alloc] initForContactProvider];
  v6 = initForContactProvider;
  if ((v4 & 1) == 0)
  {

    v7 = [CNManagedConfiguration alloc];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v8 = [CNManagedProfileConnection sharedConnection:v10];
    v6 = [v7 initWithAuditToken:&v10 managedProfileConnection:v8];
  }

  return v6;
}

+ (Class)dataMapperClassForConnection:(id)connection
{
  v3 = [CNContactProviderSupportManager isConnectionForContactProvider:connection];
  v4 = objc_opt_class();
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_class();
  }

  return v5;
}

- (void)configureServiceWithOptions:(id)options
{
  optionsCopy = options;
  [(ContactsService *)self configureUnitTestWithOptions:optionsCopy];
  [(ContactsService *)self configureAssumedIdentityWithOptions:optionsCopy];
}

- (void)configureUnitTestWithOptions:(id)options
{
  optionsCopy = options;
  v40 = 0u;
  v41 = 0u;
  connection = [(ContactsService *)self connection];
  v6 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v7 = +[CNEnvironment currentEnvironment];
  entitlementVerifier = [v7 entitlementVerifier];
  v38 = v40;
  v39 = v41;
  v9 = [entitlementVerifier auditToken:&v38 hasBooleanEntitlement:CNEntitlementNameContactsServiceProxyConfigurable error:0];

  if (v9)
  {
    v10 = [(ContactsService *)self unitTestBaseURLWithOptions:optionsCopy];
    if (v10)
    {
      v38 = v40;
      v39 = v41;
      v11 = [CNAuditToken auditToken:&v38];
      v12 = [CNContactsEnvironment alloc];
      environment = [(ContactsService *)self environment];
      schedulerProvider = [environment schedulerProvider];
      environment2 = [(ContactsService *)self environment];
      loggerProvider = [environment2 loggerProvider];
      v17 = [v12 initWithSchedulerProvider:schedulerProvider loggerProvider:loggerProvider];

      v36 = v17;
      [v17 setBaseURL:v10];
      v18 = objc_opt_class();
      connection2 = [(ContactsService *)self connection];
      v35 = [v18 managedConfigurationForConnection:connection2];

      v37 = v11;
      v20 = [[CNAccessAuthorization alloc] initWithAuditToken:v11];
      v34 = [[CNContactProviderSupportManager alloc] initWithAuditToken:v11];
      v21 = objc_alloc_init(CNDataMapperConfiguration);
      [v21 setEnvironment:v17];
      [v21 setManagedConfiguration:v35];
      authorizer = [v20 authorizer];
      [v21 setAuthorizationContext:authorizer];

      [v21 setContactProviderManager:v34];
      v23 = objc_opt_class();
      connection3 = [(ContactsService *)self connection];
      v25 = [v23 dataMapperClassForConnection:connection3];

      v26 = [[v25 alloc] initWithConfiguration:v21];
      v27 = [ContactsService alloc];
      workQueue = [(ContactsService *)self workQueue];
      highPriorityWorkQueue = [(ContactsService *)self highPriorityWorkQueue];
      connection4 = [(ContactsService *)self connection];
      v31 = [(ContactsService *)v27 initWithDataMapper:v26 dataMapperConfiguration:v21 workQueue:workQueue highPriorityWorkQueue:highPriorityWorkQueue connection:connection4 accessAuthorization:v20];

      selfCopy = self;
      connection5 = [(ContactsService *)selfCopy connection];
      [connection5 setExportedObject:v31];
    }
  }
}

- (id)unitTestBaseURLWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKey:@"CNiOSAddressBookDataMapperUnitTestPathKey"];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [NSURL fileURLWithPath:v5];
  }

  else
  {
    v7 = [optionsCopy objectForKey:@"CNiOSAddressBookDataMapperUnitTestInMemoryStoreKey"];
    if ([v7 BOOLValue])
    {
      v6 = +[CNContactsEnvironment inMemoryURL];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)clientAllowedToUseSPI:(id *)i
{
  v26 = 0u;
  v27 = 0u;
  connection = [(ContactsService *)self connection];
  v6 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v7 = +[CNEnvironment currentEnvironment];
  entitlementVerifier = [v7 entitlementVerifier];
  v25 = 0;
  buffer = v26;
  v31 = v27;
  v9 = [entitlementVerifier auditToken:&buffer hasBooleanEntitlement:CNEntitlementNameContactsFrameworkSPI error:&v25];
  v10 = v25;

  if (v9)
  {
    LOBYTE(v11) = 1;
    if (v10)
    {
LABEL_6:
      v28[0] = NSUnderlyingErrorKey;
      v28[1] = NSLocalizedFailureReasonErrorKey;
      v29[0] = v10;
      v29[1] = @"Couldn't check if caller had private entitlement";
      v12 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      goto LABEL_14;
    }
  }

  else
  {
    v13 = +[CNEnvironment currentEnvironment];
    entitlementVerifier2 = [v13 entitlementVerifier];
    v24 = 0;
    buffer = v26;
    v31 = v27;
    v11 = [entitlementVerifier2 auditToken:&buffer isFirstOrSecondPartyWithError:&v24];
    v15 = v24;

    connection2 = [(ContactsService *)self connection];
    processIdentifier = [connection2 processIdentifier];

    if (v11)
    {
      logger = [(ContactsService *)self logger];
      [logger SPIUsageLackingEntitlementGrantedForPID:processIdentifier];
    }

    else
    {
      if (v15)
      {
        logger2 = [(ContactsService *)self logger];
        [logger2 internalError:v15];
      }

      logger3 = [(ContactsService *)self logger];
      [logger3 SPIUsageLackingEntitlementRejectedForPID:processIdentifier];

      v42 = xmmword_100033DF8;
      v43 = unk_100033E08;
      memset(v44, 0, sizeof(v44));
      v38 = xmmword_100033DB8;
      v39 = unk_100033DC8;
      v40 = xmmword_100033DD8;
      v41 = unk_100033DE8;
      v34 = xmmword_100033D78;
      v35 = unk_100033D88;
      v36 = xmmword_100033D98;
      v37 = unk_100033DA8;
      buffer = *"<unknown>";
      v31 = unk_100033D48;
      v32 = xmmword_100033D58;
      v33 = unk_100033D68;
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
  v21 = [CNErrorFactory errorWithCode:100 userInfo:v12];
  if (i)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    v21 = v21;
    *i = v21;
  }

  return v11;
}

- (void)performWorkWithDataMapper:(id)mapper
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000308C;
  v5[3] = &unk_1000450C0;
  mapperCopy = mapper;
  v4 = mapperCopy;
  [(ContactsService *)self performAsyncWorkWithDataMapper:v5];
}

- (void)performAsyncWorkWithDataMapper:(id)mapper
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000031B0;
  v4[3] = &unk_1000450E8;
  selfCopy = self;
  mapperCopy = mapper;
  v3 = mapperCopy;
  [(ContactsService *)selfCopy performServicingRequestWork:v4];
}

- (void)performWorkWithContactStore:(id)store
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000032D8;
  v4[3] = &unk_1000450E8;
  selfCopy = self;
  storeCopy = store;
  v3 = storeCopy;
  [(ContactsService *)selfCopy performServicingRequestWork:v4];
}

- (id)_bestWorkQueueForAuditToken:(id *)token
{
  v5 = +[CNEnvironment currentEnvironment];
  entitlementVerifier = [v5 entitlementVerifier];
  v16 = 0;
  v7 = *&token->var0[4];
  v15[0] = *token->var0;
  v15[1] = v7;
  v8 = [entitlementVerifier auditToken:v15 allowsHighPriorityWithError:&v16];
  v9 = v16;

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (v9)
    {
      logger = [(ContactsService *)self logger];
      [logger serviceError:v9];
    }

    workQueue = [(ContactsService *)self workQueue];
  }

  else
  {
    workQueue = [(ContactsService *)self highPriorityWorkQueue];
  }

  v13 = workQueue;

  return v13;
}

- (void)performServicingRequestWork:(id)work
{
  workCopy = work;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001E84;
  v17 = sub_100001ECC;
  v18 = [CNInhibitor os_transactionInhibitorWithLabel:@"com.apple.contactsd.ContactsService"];
  [v14[5] start];
  connection = [(ContactsService *)self connection];
  v6 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v7 = [(ContactsService *)self _bestWorkQueueForAuditToken:v12];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000035F8;
  v9[3] = &unk_100045160;
  v9[4] = self;
  v8 = workCopy;
  v10 = v8;
  v11 = &v13;
  [v7 performBlock:v9];

  _Block_object_dispose(&v13, 8);
}

- (void)performWorkServicingSPI:(id)i authenticationFailureHandler:(id)handler
{
  iCopy = i;
  handlerCopy = handler;
  v10 = 0;
  v8 = [(ContactsService *)self clientAllowedToUseSPI:&v10];
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

- (void)unifiedContactCountWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003908;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)contactCountForFetchRequest:(id)request withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003AA4;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  requestCopy = request;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003BD4;
  v7[3] = &unk_100045200;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = requestCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)sectionListOffsetsForSortOrder:(int64_t)order reply:(id)reply
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003D00;
  v10[3] = &unk_100045250;
  v10[4] = self;
  orderCopy = order;
  replyCopy = reply;
  v11 = replyCopy;
  v6 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E1C;
  v8[3] = &unk_100045200;
  v9 = replyCopy;
  v7 = replyCopy;
  [(ContactsService *)self performWorkServicingSPI:v6 authenticationFailureHandler:v8];
}

- (void)contactsForFetchRequest:(id)request withMatchInfoReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000400C;
  v18[3] = &unk_1000451D8;
  v18[4] = self;
  v8 = requestCopy;
  v19 = v8;
  v9 = replyCopy;
  v20 = v9;
  v10 = objc_retainBlock(v18);
  queryAnalyticsLogger = [(ContactsService *)self queryAnalyticsLogger];
  [queryAnalyticsLogger recordQueryWithFetchRequest:v8];

  if ([v8 requiresMeContactAuthorization])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000041B0;
    v16[3] = &unk_100045200;
    v12 = &v17;
    v17 = v9;
    [(ContactsService *)self performWorkServicingSPI:v10 authenticationFailureHandler:v16];
  }

  else
  {
    accessAuthorization = [(ContactsService *)self accessAuthorization];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000041CC;
    v14[3] = &unk_100045200;
    v12 = &v15;
    v15 = v9;
    [accessAuthorization performWork:v10 authorizingFetchRequest:v8 failureHandler:v14];
  }
}

- (void)encodedContactsAndCursorForFetchRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000043C0;
  v18[3] = &unk_1000451D8;
  v18[4] = self;
  v8 = requestCopy;
  v19 = v8;
  v9 = replyCopy;
  v20 = v9;
  v10 = objc_retainBlock(v18);
  queryAnalyticsLogger = [(ContactsService *)self queryAnalyticsLogger];
  [queryAnalyticsLogger recordQueryWithFetchRequest:v8];

  if ([v8 requiresMeContactAuthorization])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000046AC;
    v16[3] = &unk_100045200;
    v12 = &v17;
    v17 = v9;
    [(ContactsService *)self performWorkServicingSPI:v10 authenticationFailureHandler:v16];
  }

  else
  {
    accessAuthorization = [(ContactsService *)self accessAuthorization];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000046D0;
    v14[3] = &unk_100045200;
    v12 = &v15;
    v15 = v9;
    [accessAuthorization performWork:v10 authorizingFetchRequest:v8 failureHandler:v14];
  }
}

- (void)progressiveContactsForFetchRequest:(id)request progressHandler:(id)handler reply:(id)reply
{
  requestCopy = request;
  handlerCopy = handler;
  replyCopy = reply;
  queryAnalyticsLogger = [(ContactsService *)self queryAnalyticsLogger];
  [queryAnalyticsLogger recordQueryWithFetchRequest:requestCopy];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004820;
  v15[3] = &unk_100045368;
  v15[4] = self;
  v16 = requestCopy;
  v17 = handlerCopy;
  v18 = objc_alloc_init(CNCancelationToken);
  v12 = v18;
  v13 = handlerCopy;
  v14 = requestCopy;
  [(ContactsService *)self performAsyncWorkWithDataMapper:v15];
  replyCopy[2](replyCopy, v12);
}

- (void)identifierWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004ABC;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)meContactIdentifiersWithReply:(id)reply
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004C30;
  v6[3] = &unk_100045390;
  selfCopy = self;
  replyCopy = reply;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004D44;
  v4[3] = &unk_100045200;
  v5 = replyCopy;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v6 authenticationFailureHandler:v4];
}

- (void)executeSaveRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  connection = [(ContactsService *)self connection];
  v9 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v10 = [CNAuditToken auditToken:v17];

  v11 = [CNAuditTokenUtilities loggingIdentifierForAuditToken:v10];
  [requestCopy setClientLoggingIdentifier:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004EA0;
  v14[3] = &unk_1000453B8;
  v14[4] = self;
  v15 = requestCopy;
  v16 = replyCopy;
  v12 = replyCopy;
  v13 = requestCopy;
  [(ContactsService *)self performWorkWithContactStore:v14];
}

- (void)containersMatchingPredicate:(id)predicate withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005038;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  predicateCopy = predicate;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = predicateCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)serverSearchContainersMatchingPredicate:(id)predicate withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005180;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  predicateCopy = predicate;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = predicateCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)policyForContainerWithIdentifier:(id)identifier withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000052C8;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = identifierCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)accountsMatchingPredicate:(id)predicate withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005410;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  predicateCopy = predicate;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = predicateCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)groupsMatchingPredicate:(id)predicate withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005558;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  predicateCopy = predicate;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = predicateCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)subgroupsOfGroupWithIdentifier:(id)identifier withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000056A0;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = identifierCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)defaultContainerIdentifierWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000057BC;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)setDefaultAccountIdentifier:(id)identifier withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005948;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005A64;
  v7[3] = &unk_100045200;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = identifierCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)setMeContact:(id)contact withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005B94;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  contactCopy = contact;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005C38;
  v7[3] = &unk_100045200;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = contactCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)setMeContact:(id)contact forContainer:(id)container withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005D8C;
  v12[3] = &unk_100045408;
  selfCopy = self;
  contactCopy = contact;
  containerCopy = container;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005EDC;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = containerCopy;
  v9 = contactCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email withReply:(id)reply
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006058;
  v15[3] = &unk_100045458;
  selfCopy = self;
  nameCopy = name;
  familyNameCopy = familyName;
  emailCopy = email;
  replyCopy = reply;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000061C8;
  v13[3] = &unk_100045200;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = emailCopy;
  v11 = familyNameCopy;
  v12 = nameCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v15 authenticationFailureHandler:v13];
}

- (void)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch withReply:(id)reply
{
  infoCopy = info;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000631C;
  v14[3] = &unk_1000454A8;
  v14[4] = self;
  fetchCopy = fetch;
  replyCopy = reply;
  v15 = infoCopy;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006464;
  v12[3] = &unk_100045318;
  v12[4] = self;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = fetchCopy;
  v11 = infoCopy;
  [(ContactsService *)self performWorkServicingSPI:v14 authenticationFailureHandler:v12];
}

- (void)userActivityForContact:(id)contact withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000065F0;
  v9[3] = &unk_1000454F8;
  selfCopy = self;
  contactCopy = contact;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006710;
  v7[3] = &unk_100045318;
  v7[4] = selfCopy;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = contactCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000068C0;
  v12[3] = &unk_100045408;
  selfCopy = self;
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006A10;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = containerIdentifierCopy;
  v9 = identifierCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006B64;
  v12[3] = &unk_100045408;
  selfCopy = self;
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006CB4;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = containerIdentifierCopy;
  v9 = identifierCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)changeHistoryWithFetchRequest:(id)request withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006D8C;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  requestCopy = request;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = requestCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)executeChangeHistoryClearRequest:(id)request withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006F2C;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  requestCopy = request;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007060;
  v7[3] = &unk_100045200;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = requestCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)currentHistoryTokenWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000710C;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)currentHistoryAnchorWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007240;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)reportFavoritesIssue:(id)issue
{
  issueCopy = issue;
  ABDiagnosticsEnabled();
  _ABLog2();
  ABLogSimulateCrashReport();
  ABLogDisplayInternalAlert();
}

- (BOOL)shouldNotReportFavoritesError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:NSCocoaErrorDomain] && objc_msgSend(v4, "code") == 260)
    {
      v6 = 1;
    }

    else
    {
      domain2 = [v4 domain];
      if ([domain2 isEqualToString:NSCocoaErrorDomain] && objc_msgSend(v4, "code") == 257)
      {
        v6 = 1;
      }

      else
      {
        domain3 = [v4 domain];
        if ([domain3 isEqualToString:NSCocoaErrorDomain])
        {
          v6 = [v4 code] == 513;
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)favoritesEntryDictionariesAtPath:(id)path withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007548;
  v7[3] = &unk_100045390;
  selfCopy = self;
  replyCopy = reply;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000774C;
  v5[3] = &unk_100045200;
  v6 = replyCopy;
  v4 = replyCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v7 authenticationFailureHandler:v5];
}

- (void)writeFavoritesPropertyListData:(id)data toPath:(id)path withReply:(id)reply
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000787C;
  v10[3] = &unk_1000451D8;
  selfCopy = self;
  dataCopy = data;
  replyCopy = reply;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007AC4;
  v8[3] = &unk_100045200;
  v9 = replyCopy;
  v6 = replyCopy;
  v7 = dataCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v10 authenticationFailureHandler:v8];
}

- (void)bestSenderIdentityForHandle:(id)handle withReply:(id)reply
{
  handleCopy = handle;
  replyCopy = reply;
  v8 = +[CNEnvironment currentEnvironment];
  entitlementVerifier = [v8 entitlementVerifier];
  connection = [(ContactsService *)self connection];
  v11 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v18 = 0;
  v12 = [entitlementVerifier auditToken:v19 hasBooleanEntitlement:CNEntitlementNameContactsDatabaseInProcess error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = objc_alloc_init(CNGeminiManager);
    v17 = 0;
    v15 = [v14 bestSenderIdentityForHandle:handleCopy contactStore:0 error:&v17];
    v16 = v17;
  }

  else
  {
    if (v13)
    {
      v20[0] = NSUnderlyingErrorKey;
      v20[1] = NSLocalizedFailureReasonErrorKey;
      v21[0] = v13;
      v21[1] = @"Client not authorized";
      v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    }

    else
    {
      v14 = 0;
    }

    v16 = [CNErrorFactory errorWithCode:100 userInfo:v14];
    v15 = 0;
  }

  replyCopy[2](replyCopy, v15, v16);
}

- (void)authorizedKeysForContactKeys:(id)keys withReply:(id)reply
{
  replyCopy = reply;
  keysCopy = keys;
  accessAuthorization = [(ContactsService *)self accessAuthorization];
  v9 = [accessAuthorization authorizedKeysForContactKeys:keysCopy];

  replyCopy[2](replyCopy, v9, 0);
}

- (CNUIImageRemoteBackgroundColorAnalyzer)backgroundColorAnalyzer
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (void)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format withReply:(id)reply
{
  dataCopy = data;
  formatCopy = format;
  replyCopy = reply;
  backgroundColorQueue = [(ContactsService *)self backgroundColorQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008254;
  v15[3] = &unk_100045408;
  v15[4] = self;
  v16 = dataCopy;
  v17 = formatCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = formatCopy;
  v14 = dataCopy;
  dispatch_async(backgroundColorQueue, v15);
}

- (void)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008544;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  bundleCopy = bundle;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008664;
  v7[3] = &unk_100045200;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = bundleCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000087B8;
  v12[3] = &unk_100045408;
  selfCopy = self;
  bundleCopy = bundle;
  identifierCopy = identifier;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000088DC;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = identifierCopy;
  v9 = bundleCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008A30;
  v12[3] = &unk_100045408;
  selfCopy = self;
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008B54;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = identifiersCopy;
  v9 = bundleCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)getLimitedAccessContactsCountForBundle:(id)bundle withReply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008C84;
  v9[3] = &unk_1000451D8;
  selfCopy = self;
  bundleCopy = bundle;
  replyCopy = reply;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008DA4;
  v7[3] = &unk_100045200;
  v8 = replyCopy;
  v5 = replyCopy;
  v6 = bundleCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008EF8;
  v12[3] = &unk_100045408;
  selfCopy = self;
  bundleCopy = bundle;
  identifierCopy = identifier;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000901C;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = identifierCopy;
  v9 = bundleCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers withReply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009170;
  v12[3] = &unk_100045408;
  selfCopy = self;
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  replyCopy = reply;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009294;
  v10[3] = &unk_100045200;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = identifiersCopy;
  v9 = bundleCopy;
  [(ContactsService *)selfCopy performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000936C;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  numberCopy = number;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = numberCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)purgeLimitedAccessRecordsForBundle:(id)bundle withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000094A4;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  bundleCopy = bundle;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = bundleCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)number withReply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000095CC;
  v7[3] = &unk_1000451B0;
  selfCopy = self;
  numberCopy = number;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = numberCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v7];
}

- (void)dropAllLimitedAccessRowsAndSyncNotifyWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000096E0;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)shouldAnalyzeDatabaseWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000097D8;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

- (void)analyzeDatabaseWithReply:(id)reply
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009924;
  v4[3] = &unk_100045188;
  selfCopy = self;
  replyCopy = reply;
  v3 = replyCopy;
  [(ContactsService *)selfCopy performWorkWithDataMapper:v4];
}

@end