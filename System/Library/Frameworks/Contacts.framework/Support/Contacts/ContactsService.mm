@interface ContactsService
+ (Class)dataMapperClassForConnection:(id)a3;
+ (id)managedConfigurationForConnection:(id)a3;
- (BOOL)clientAllowedToUseSPI:(id *)a3;
- (BOOL)shouldNotReportFavoritesError:(id)a3;
- (CNUIImageRemoteBackgroundColorAnalyzer)backgroundColorAnalyzer;
- (ContactsService)initWithDataMapper:(id)a3 dataMapperConfiguration:(id)a4 workQueue:(id)a5 highPriorityWorkQueue:(id)a6 connection:(id)a7 accessAuthorization:(id)a8;
- (ContactsService)initWithWorkQueue:(id)a3 highPriorityWorkQueue:(id)a4 connection:(id)a5;
- (NSXPCConnection)connection;
- (id)_bestWorkQueueForAuditToken:(id *)a3;
- (id)unitTestBaseURLWithOptions:(id)a3;
- (void)accountsMatchingPredicate:(id)a3 withReply:(id)a4;
- (void)addLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4 withReply:(id)a5;
- (void)addLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4 withReply:(id)a5;
- (void)analyzeDatabaseWithReply:(id)a3;
- (void)authorizedKeysForContactKeys:(id)a3 withReply:(id)a4;
- (void)bestSenderIdentityForHandle:(id)a3 withReply:(id)a4;
- (void)changeHistoryWithFetchRequest:(id)a3 withReply:(id)a4;
- (void)configureServiceWithOptions:(id)a3;
- (void)configureUnitTestWithOptions:(id)a3;
- (void)contactCountForFetchRequest:(id)a3 withReply:(id)a4;
- (void)contactWithUserActivityUserInfo:(id)a3 keysToFetch:(id)a4 withReply:(id)a5;
- (void)contactsForFetchRequest:(id)a3 withMatchInfoReply:(id)a4;
- (void)containersMatchingPredicate:(id)a3 withReply:(id)a4;
- (void)currentHistoryAnchorWithReply:(id)a3;
- (void)currentHistoryTokenWithReply:(id)a3;
- (void)defaultContainerIdentifierWithReply:(id)a3;
- (void)dropAllLimitedAccessRowsAndSyncNotifyWithReply:(id)a3;
- (void)encodedContactsAndCursorForFetchRequest:(id)a3 withReply:(id)a4;
- (void)executeChangeHistoryClearRequest:(id)a3 withReply:(id)a4;
- (void)executeSaveRequest:(id)a3 withReply:(id)a4;
- (void)favoritesEntryDictionariesAtPath:(id)a3 withReply:(id)a4;
- (void)fetchLimitedAccessContactIdentifiersForBundle:(id)a3 withReply:(id)a4;
- (void)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 withReply:(id)a5;
- (void)getLimitedAccessContactsCountForBundle:(id)a3 withReply:(id)a4;
- (void)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)a3 withReply:(id)a4;
- (void)groupsMatchingPredicate:(id)a3 withReply:(id)a4;
- (void)identifierWithReply:(id)a3;
- (void)meContactIdentifiersWithReply:(id)a3;
- (void)performAsyncWorkWithDataMapper:(id)a3;
- (void)performServicingRequestWork:(id)a3;
- (void)performWorkServicingSPI:(id)a3 authenticationFailureHandler:(id)a4;
- (void)performWorkWithContactStore:(id)a3;
- (void)performWorkWithDataMapper:(id)a3;
- (void)policyForContainerWithIdentifier:(id)a3 withReply:(id)a4;
- (void)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)a3 withReply:(id)a4;
- (void)progressiveContactsForFetchRequest:(id)a3 progressHandler:(id)a4 reply:(id)a5;
- (void)purgeLimitedAccessRecordsForBundle:(id)a3 withReply:(id)a4;
- (void)registerChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 withReply:(id)a5;
- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4 withReply:(id)a5;
- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4 withReply:(id)a5;
- (void)reportFavoritesIssue:(id)a3;
- (void)sectionListOffsetsForSortOrder:(int64_t)a3 reply:(id)a4;
- (void)serverSearchContainersMatchingPredicate:(id)a3 withReply:(id)a4;
- (void)setBestMeIfNeededForGivenName:(id)a3 familyName:(id)a4 email:(id)a5 withReply:(id)a6;
- (void)setDefaultAccountIdentifier:(id)a3 withReply:(id)a4;
- (void)setMeContact:(id)a3 forContainer:(id)a4 withReply:(id)a5;
- (void)setMeContact:(id)a3 withReply:(id)a4;
- (void)shouldAnalyzeDatabaseWithReply:(id)a3;
- (void)subgroupsOfGroupWithIdentifier:(id)a3 withReply:(id)a4;
- (void)unifiedContactCountWithReply:(id)a3;
- (void)unregisterChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 withReply:(id)a5;
- (void)userActivityForContact:(id)a3 withReply:(id)a4;
- (void)writeFavoritesPropertyListData:(id)a3 toPath:(id)a4 withReply:(id)a5;
@end

@implementation ContactsService

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (ContactsService)initWithWorkQueue:(id)a3 highPriorityWorkQueue:(id)a4 connection:(id)a5
{
  v21 = a3;
  v20 = a4;
  v8 = a5;
  v9 = v8;
  v23 = 0u;
  v24 = 0u;
  if (v8)
  {
    [v8 auditToken];
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
  v15 = [v12 authorizer];
  [v14 setAuthorizationContext:v15];

  [v14 setContactProviderManager:v13];
  v16 = [objc_alloc(objc_msgSend(objc_opt_class() dataMapperClassForConnection:{v9)), "initWithConfiguration:", v14}];
  v17 = [(ContactsService *)self initWithDataMapper:v16 dataMapperConfiguration:v14 workQueue:v21 highPriorityWorkQueue:v20 connection:v9 accessAuthorization:v12];

  return v17;
}

- (ContactsService)initWithDataMapper:(id)a3 dataMapperConfiguration:(id)a4 workQueue:(id)a5 highPriorityWorkQueue:(id)a6 connection:(id)a7 accessAuthorization:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v39 = a6;
  v18 = a7;
  v38 = a8;
  v41.receiver = self;
  v41.super_class = ContactsService;
  v19 = [(ContactsService *)&v41 init];
  if (v19)
  {
    v37 = v17;
    v20 = [v16 environment];
    objc_storeStrong(&v19->_dataMapper, a3);
    v21 = [[CNDataMapperContactStore alloc] initWithDataMapper:v15 dataMapperConfiguration:v16];
    contactStore = v19->_contactStore;
    v19->_contactStore = v21;

    objc_storeStrong(&v19->_workQueue, a5);
    objc_storeStrong(&v19->_highPriorityWorkQueue, a6);
    v23 = [v20 loggerProvider];
    v24 = [v23 contactsLogger];
    logger = v19->_logger;
    v19->_logger = v24;

    objc_storeStrong(&v19->_environment, v20);
    objc_storeWeak(&v19->_connection, v18);
    objc_storeStrong(&v19->_accessAuthorization, a8);
    v26 = [v16 contactProviderManager];
    contactProviderManager = v19->_contactProviderManager;
    v19->_contactProviderManager = v26;

    v28 = dispatch_queue_create("contactsBackgroundColorQueue", 0);
    backgroundColorQueue = v19->_backgroundColorQueue;
    v19->_backgroundColorQueue = v28;

    if (v18)
    {
      [v18 auditToken];
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

    objc_storeStrong(&v19->_dataMapperConfiguration, a4);
    v35 = v19;

    v17 = v37;
  }

  return v19;
}

+ (id)managedConfigurationForConnection:(id)a3
{
  v3 = a3;
  v4 = [CNContactProviderSupportManager isConnectionForContactProvider:v3];
  v5 = [[CNManagedConfiguration alloc] initForContactProvider];
  v6 = v5;
  if ((v4 & 1) == 0)
  {

    v7 = [CNManagedConfiguration alloc];
    if (v3)
    {
      [v3 auditToken];
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

+ (Class)dataMapperClassForConnection:(id)a3
{
  v3 = [CNContactProviderSupportManager isConnectionForContactProvider:a3];
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

- (void)configureServiceWithOptions:(id)a3
{
  v4 = a3;
  [(ContactsService *)self configureUnitTestWithOptions:v4];
  [(ContactsService *)self configureAssumedIdentityWithOptions:v4];
}

- (void)configureUnitTestWithOptions:(id)a3
{
  v4 = a3;
  v40 = 0u;
  v41 = 0u;
  v5 = [(ContactsService *)self connection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v7 = +[CNEnvironment currentEnvironment];
  v8 = [v7 entitlementVerifier];
  v38 = v40;
  v39 = v41;
  v9 = [v8 auditToken:&v38 hasBooleanEntitlement:CNEntitlementNameContactsServiceProxyConfigurable error:0];

  if (v9)
  {
    v10 = [(ContactsService *)self unitTestBaseURLWithOptions:v4];
    if (v10)
    {
      v38 = v40;
      v39 = v41;
      v11 = [CNAuditToken auditToken:&v38];
      v12 = [CNContactsEnvironment alloc];
      v13 = [(ContactsService *)self environment];
      v14 = [v13 schedulerProvider];
      v15 = [(ContactsService *)self environment];
      v16 = [v15 loggerProvider];
      v17 = [v12 initWithSchedulerProvider:v14 loggerProvider:v16];

      v36 = v17;
      [v17 setBaseURL:v10];
      v18 = objc_opt_class();
      v19 = [(ContactsService *)self connection];
      v35 = [v18 managedConfigurationForConnection:v19];

      v37 = v11;
      v20 = [[CNAccessAuthorization alloc] initWithAuditToken:v11];
      v34 = [[CNContactProviderSupportManager alloc] initWithAuditToken:v11];
      v21 = objc_alloc_init(CNDataMapperConfiguration);
      [v21 setEnvironment:v17];
      [v21 setManagedConfiguration:v35];
      v22 = [v20 authorizer];
      [v21 setAuthorizationContext:v22];

      [v21 setContactProviderManager:v34];
      v23 = objc_opt_class();
      v24 = [(ContactsService *)self connection];
      v25 = [v23 dataMapperClassForConnection:v24];

      v26 = [[v25 alloc] initWithConfiguration:v21];
      v27 = [ContactsService alloc];
      v28 = [(ContactsService *)self workQueue];
      v29 = [(ContactsService *)self highPriorityWorkQueue];
      v30 = [(ContactsService *)self connection];
      v31 = [(ContactsService *)v27 initWithDataMapper:v26 dataMapperConfiguration:v21 workQueue:v28 highPriorityWorkQueue:v29 connection:v30 accessAuthorization:v20];

      v32 = self;
      v33 = [(ContactsService *)v32 connection];
      [v33 setExportedObject:v31];
    }
  }
}

- (id)unitTestBaseURLWithOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"CNiOSAddressBookDataMapperUnitTestPathKey"];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [NSURL fileURLWithPath:v5];
  }

  else
  {
    v7 = [v3 objectForKey:@"CNiOSAddressBookDataMapperUnitTestInMemoryStoreKey"];
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

- (BOOL)clientAllowedToUseSPI:(id *)a3
{
  v26 = 0u;
  v27 = 0u;
  v5 = [(ContactsService *)self connection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v7 = +[CNEnvironment currentEnvironment];
  v8 = [v7 entitlementVerifier];
  v25 = 0;
  buffer = v26;
  v31 = v27;
  v9 = [v8 auditToken:&buffer hasBooleanEntitlement:CNEntitlementNameContactsFrameworkSPI error:&v25];
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
    v14 = [v13 entitlementVerifier];
    v24 = 0;
    buffer = v26;
    v31 = v27;
    v11 = [v14 auditToken:&buffer isFirstOrSecondPartyWithError:&v24];
    v15 = v24;

    v16 = [(ContactsService *)self connection];
    v17 = [v16 processIdentifier];

    if (v11)
    {
      v18 = [(ContactsService *)self logger];
      [v18 SPIUsageLackingEntitlementGrantedForPID:v17];
    }

    else
    {
      if (v15)
      {
        v19 = [(ContactsService *)self logger];
        [v19 internalError:v15];
      }

      v20 = [(ContactsService *)self logger];
      [v20 SPIUsageLackingEntitlementRejectedForPID:v17];

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
      proc_name(v17, &buffer, 0xFFu);
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
  if (a3)
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
    *a3 = v21;
  }

  return v11;
}

- (void)performWorkWithDataMapper:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000308C;
  v5[3] = &unk_1000450C0;
  v6 = a3;
  v4 = v6;
  [(ContactsService *)self performAsyncWorkWithDataMapper:v5];
}

- (void)performAsyncWorkWithDataMapper:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000031B0;
  v4[3] = &unk_1000450E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performServicingRequestWork:v4];
}

- (void)performWorkWithContactStore:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000032D8;
  v4[3] = &unk_1000450E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performServicingRequestWork:v4];
}

- (id)_bestWorkQueueForAuditToken:(id *)a3
{
  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 entitlementVerifier];
  v16 = 0;
  v7 = *&a3->var0[4];
  v15[0] = *a3->var0;
  v15[1] = v7;
  v8 = [v6 auditToken:v15 allowsHighPriorityWithError:&v16];
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
      v11 = [(ContactsService *)self logger];
      [v11 serviceError:v9];
    }

    v12 = [(ContactsService *)self workQueue];
  }

  else
  {
    v12 = [(ContactsService *)self highPriorityWorkQueue];
  }

  v13 = v12;

  return v13;
}

- (void)performServicingRequestWork:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001E84;
  v17 = sub_100001ECC;
  v18 = [CNInhibitor os_transactionInhibitorWithLabel:@"com.apple.contactsd.ContactsService"];
  [v14[5] start];
  v5 = [(ContactsService *)self connection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
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
  v8 = v4;
  v10 = v8;
  v11 = &v13;
  [v7 performBlock:v9];

  _Block_object_dispose(&v13, 8);
}

- (void)performWorkServicingSPI:(id)a3 authenticationFailureHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  v8 = [(ContactsService *)self clientAllowedToUseSPI:&v10];
  v9 = v10;
  if (v8)
  {
    v6[2](v6);
  }

  else
  {
    v7[2](v7, v9);
  }
}

- (void)unifiedContactCountWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003908;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)contactCountForFetchRequest:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003AA4;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003BD4;
  v7[3] = &unk_100045200;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)sectionListOffsetsForSortOrder:(int64_t)a3 reply:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003D00;
  v10[3] = &unk_100045250;
  v10[4] = self;
  v12 = a3;
  v5 = a4;
  v11 = v5;
  v6 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E1C;
  v8[3] = &unk_100045200;
  v9 = v5;
  v7 = v5;
  [(ContactsService *)self performWorkServicingSPI:v6 authenticationFailureHandler:v8];
}

- (void)contactsForFetchRequest:(id)a3 withMatchInfoReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000400C;
  v18[3] = &unk_1000451D8;
  v18[4] = self;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = objc_retainBlock(v18);
  v11 = [(ContactsService *)self queryAnalyticsLogger];
  [v11 recordQueryWithFetchRequest:v8];

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
    v13 = [(ContactsService *)self accessAuthorization];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000041CC;
    v14[3] = &unk_100045200;
    v12 = &v15;
    v15 = v9;
    [v13 performWork:v10 authorizingFetchRequest:v8 failureHandler:v14];
  }
}

- (void)encodedContactsAndCursorForFetchRequest:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000043C0;
  v18[3] = &unk_1000451D8;
  v18[4] = self;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = objc_retainBlock(v18);
  v11 = [(ContactsService *)self queryAnalyticsLogger];
  [v11 recordQueryWithFetchRequest:v8];

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
    v13 = [(ContactsService *)self accessAuthorization];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000046D0;
    v14[3] = &unk_100045200;
    v12 = &v15;
    v15 = v9;
    [v13 performWork:v10 authorizingFetchRequest:v8 failureHandler:v14];
  }
}

- (void)progressiveContactsForFetchRequest:(id)a3 progressHandler:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ContactsService *)self queryAnalyticsLogger];
  [v11 recordQueryWithFetchRequest:v8];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004820;
  v15[3] = &unk_100045368;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = objc_alloc_init(CNCancelationToken);
  v12 = v18;
  v13 = v9;
  v14 = v8;
  [(ContactsService *)self performAsyncWorkWithDataMapper:v15];
  v10[2](v10, v12);
}

- (void)identifierWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004ABC;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)meContactIdentifiersWithReply:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004C30;
  v6[3] = &unk_100045390;
  v7 = self;
  v8 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004D44;
  v4[3] = &unk_100045200;
  v5 = v8;
  v3 = v8;
  [(ContactsService *)v7 performWorkServicingSPI:v6 authenticationFailureHandler:v4];
}

- (void)executeSaveRequest:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ContactsService *)self connection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v10 = [CNAuditToken auditToken:v17];

  v11 = [CNAuditTokenUtilities loggingIdentifierForAuditToken:v10];
  [v6 setClientLoggingIdentifier:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004EA0;
  v14[3] = &unk_1000453B8;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  [(ContactsService *)self performWorkWithContactStore:v14];
}

- (void)containersMatchingPredicate:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005038;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)serverSearchContainersMatchingPredicate:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005180;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)policyForContainerWithIdentifier:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000052C8;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)accountsMatchingPredicate:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005410;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)groupsMatchingPredicate:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005558;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)subgroupsOfGroupWithIdentifier:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000056A0;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)defaultContainerIdentifierWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000057BC;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)setDefaultAccountIdentifier:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005948;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005A64;
  v7[3] = &unk_100045200;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)setMeContact:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005B94;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005C38;
  v7[3] = &unk_100045200;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)setMeContact:(id)a3 forContainer:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005D8C;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005EDC;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)setBestMeIfNeededForGivenName:(id)a3 familyName:(id)a4 email:(id)a5 withReply:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006058;
  v15[3] = &unk_100045458;
  v16 = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000061C8;
  v13[3] = &unk_100045200;
  v14 = v20;
  v9 = v20;
  v10 = v19;
  v11 = v18;
  v12 = v17;
  [(ContactsService *)v16 performWorkServicingSPI:v15 authenticationFailureHandler:v13];
}

- (void)contactWithUserActivityUserInfo:(id)a3 keysToFetch:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000631C;
  v14[3] = &unk_1000454A8;
  v14[4] = self;
  v16 = a4;
  v17 = a5;
  v15 = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006464;
  v12[3] = &unk_100045318;
  v12[4] = self;
  v13 = v17;
  v9 = v17;
  v10 = v16;
  v11 = v8;
  [(ContactsService *)self performWorkServicingSPI:v14 authenticationFailureHandler:v12];
}

- (void)userActivityForContact:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000065F0;
  v9[3] = &unk_1000454F8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006710;
  v7[3] = &unk_100045318;
  v7[4] = v10;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)registerChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000068C0;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006A10;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)unregisterChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006B64;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006CB4;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)changeHistoryWithFetchRequest:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006D8C;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)executeChangeHistoryClearRequest:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100006F2C;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007060;
  v7[3] = &unk_100045200;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)currentHistoryTokenWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000710C;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)currentHistoryAnchorWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007240;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)reportFavoritesIssue:(id)a3
{
  v3 = a3;
  ABDiagnosticsEnabled();
  _ABLog2();
  ABLogSimulateCrashReport();
  ABLogDisplayInternalAlert();
}

- (BOOL)shouldNotReportFavoritesError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:NSCocoaErrorDomain] && objc_msgSend(v4, "code") == 260)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 domain];
      if ([v7 isEqualToString:NSCocoaErrorDomain] && objc_msgSend(v4, "code") == 257)
      {
        v6 = 1;
      }

      else
      {
        v8 = [v4 domain];
        if ([v8 isEqualToString:NSCocoaErrorDomain])
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

- (void)favoritesEntryDictionariesAtPath:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007548;
  v7[3] = &unk_100045390;
  v8 = self;
  v9 = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000774C;
  v5[3] = &unk_100045200;
  v6 = v9;
  v4 = v9;
  [(ContactsService *)v8 performWorkServicingSPI:v7 authenticationFailureHandler:v5];
}

- (void)writeFavoritesPropertyListData:(id)a3 toPath:(id)a4 withReply:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000787C;
  v10[3] = &unk_1000451D8;
  v11 = self;
  v12 = a3;
  v13 = a5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007AC4;
  v8[3] = &unk_100045200;
  v9 = v13;
  v6 = v13;
  v7 = v12;
  [(ContactsService *)v11 performWorkServicingSPI:v10 authenticationFailureHandler:v8];
}

- (void)bestSenderIdentityForHandle:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CNEnvironment currentEnvironment];
  v9 = [v8 entitlementVerifier];
  v10 = [(ContactsService *)self connection];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v18 = 0;
  v12 = [v9 auditToken:v19 hasBooleanEntitlement:CNEntitlementNameContactsDatabaseInProcess error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = objc_alloc_init(CNGeminiManager);
    v17 = 0;
    v15 = [v14 bestSenderIdentityForHandle:v6 contactStore:0 error:&v17];
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

  v7[2](v7, v15, v16);
}

- (void)authorizedKeysForContactKeys:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ContactsService *)self accessAuthorization];
  v9 = [v8 authorizedKeysForContactKeys:v7];

  v6[2](v6, v9, 0);
}

- (CNUIImageRemoteBackgroundColorAnalyzer)backgroundColorAnalyzer
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (void)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ContactsService *)self backgroundColorQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008254;
  v15[3] = &unk_100045408;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)fetchLimitedAccessContactIdentifiersForBundle:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008544;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008664;
  v7[3] = &unk_100045200;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)addLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000087B8;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000088DC;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)addLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008A30;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008B54;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)getLimitedAccessContactsCountForBundle:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008C84;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008DA4;
  v7[3] = &unk_100045200;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008EF8;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000901C;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4 withReply:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009170;
  v12[3] = &unk_100045408;
  v13 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100009294;
  v10[3] = &unk_100045200;
  v11 = v16;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  [(ContactsService *)v13 performWorkServicingSPI:v12 authenticationFailureHandler:v10];
}

- (void)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000936C;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)purgeLimitedAccessRecordsForBundle:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000094A4;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)a3 withReply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000095CC;
  v7[3] = &unk_1000451B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContactsService *)v8 performWorkWithDataMapper:v7];
}

- (void)dropAllLimitedAccessRowsAndSyncNotifyWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000096E0;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)shouldAnalyzeDatabaseWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000097D8;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

- (void)analyzeDatabaseWithReply:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009924;
  v4[3] = &unk_100045188;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ContactsService *)v5 performWorkWithDataMapper:v4];
}

@end