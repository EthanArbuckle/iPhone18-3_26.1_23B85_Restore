@interface ContactsSupportService
- (BOOL)clientAllowedToUseSPI:(id *)a3;
- (ContactsSupportService)initWithWorkQueue:(id)a3 connection:(id)a4;
- (ContactsSupportService)initWithWorkQueue:(id)a3 connection:(id)a4 accessAuthorization:(id)a5;
- (NSXPCConnection)connection;
- (void)favoritesEntriesWithReply:(id)a3;
- (void)performWorkServicingSPI:(id)a3 authenticationFailureHandler:(id)a4;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 withReply:(id)a4;
- (void)requestProviderDomainCommand:(id)a3 withReply:(id)a4;
- (void)sendCommLimitsQuestionForHandles:(id)a3 withReply:(id)a4;
- (void)setFavoritesEntries:(id)a3 withReply:(id)a4;
- (void)verifyIndexWithReply:(id)a3;
@end

@implementation ContactsSupportService

- (ContactsSupportService)initWithWorkQueue:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v14 = 0u;
  v15 = 0u;
  if (v7)
  {
    [v7 auditToken];
  }

  v13[0] = v14;
  v13[1] = v15;
  v9 = [CNAuditToken auditToken:v13];
  v10 = [[CNAccessAuthorization alloc] initWithAuditToken:v9];
  v11 = [(ContactsSupportService *)self initWithWorkQueue:v6 connection:v8 accessAuthorization:v10];

  return v11;
}

- (ContactsSupportService)initWithWorkQueue:(id)a3 connection:(id)a4 accessAuthorization:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = ContactsSupportService;
  v12 = [(ContactsSupportService *)&v28 init];
  if (v12)
  {
    v13 = +[CNContactsEnvironment currentEnvironment];
    objc_storeStrong(&v12->_workQueue, a3);
    v14 = [v13 loggerProvider];
    loggerProvider = v12->_loggerProvider;
    v12->_loggerProvider = v14;

    objc_storeStrong(&v12->_environment, v13);
    objc_storeWeak(&v12->_connection, v10);
    objc_storeStrong(&v12->_accessAuthorization, a5);
    if (v10)
    {
      [v10 auditToken];
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
    v22 = [v21 featureFlags];
    v23 = [v22 isFeatureEnabled:18];

    if (v23)
    {
      v24 = +[FavoritesPersistenceServiceWrapper sharedInstance];
      [(ContactsSupportService *)v12 setFavoritesPersistence:v24];
    }

    v25 = v12;
  }

  return v12;
}

- (void)requestProviderDomainCommand:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ContactsSupportService *)self contactProviderManager];
  v11 = 0;
  v9 = [v8 requestHostDomainCommand:v7 error:&v11];

  v10 = v11;
  v6[2](v6, v9, v10);
}

- (void)favoritesEntriesWithReply:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015100;
  v6[3] = &unk_100045DB8;
  v7 = self;
  v8 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015170;
  v4[3] = &unk_100045318;
  v4[4] = v7;
  v5 = v8;
  v3 = v8;
  [(ContactsSupportService *)v7 performWorkServicingSPI:v6 authenticationFailureHandler:v4];
}

- (void)setFavoritesEntries:(id)a3 withReply:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100015320;
  v9[3] = &unk_1000451D8;
  v10 = self;
  v11 = a3;
  v12 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000153AC;
  v7[3] = &unk_100045318;
  v7[4] = v10;
  v8 = v12;
  v5 = v12;
  v6 = v11;
  [(ContactsSupportService *)v10 performWorkServicingSPI:v9 authenticationFailureHandler:v7];
}

- (void)sendCommLimitsQuestionForHandles:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ContactsSupportService *)self loggerProvider];
  v9 = [v8 contactsLogger];
  [v9 sendCommLimitsQuestionForHandles:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015594;
  v14[3] = &unk_100045390;
  v15 = v6;
  v16 = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000155EC;
  v12[3] = &unk_100045318;
  v12[4] = self;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(ContactsSupportService *)self performWorkServicingSPI:v14 authenticationFailureHandler:v12];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 withReply:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015794;
  v10[3] = &unk_100045390;
  v11 = a3;
  v12 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015860;
  v8[3] = &unk_100045318;
  v8[4] = self;
  v9 = v12;
  v6 = v12;
  v7 = v11;
  [(ContactsSupportService *)self performWorkServicingSPI:v10 authenticationFailureHandler:v8];
}

- (void)verifyIndexWithReply:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000159E4;
  v7[3] = &unk_100045340;
  v8 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100015A70;
  v5[3] = &unk_100045318;
  v5[4] = self;
  v6 = v8;
  v4 = v8;
  [(ContactsSupportService *)self performWorkServicingSPI:v7 authenticationFailureHandler:v5];
}

- (void)performWorkServicingSPI:(id)a3 authenticationFailureHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = 0;
  v8 = [(ContactsSupportService *)self clientAllowedToUseSPI:&v10];
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

- (BOOL)clientAllowedToUseSPI:(id *)a3
{
  v29 = 0u;
  v30 = 0u;
  v5 = [(ContactsSupportService *)self connection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v7 = +[CNEnvironment currentEnvironment];
  v8 = [v7 entitlementVerifier];
  v28 = 0;
  buffer = v29;
  v34 = v30;
  v9 = [v8 auditToken:&buffer hasBooleanEntitlement:CNEntitlementNameContactsFrameworkSPI error:&v28];
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
    v14 = [v13 entitlementVerifier];
    v27 = 0;
    buffer = v29;
    v34 = v30;
    v11 = [v14 auditToken:&buffer isFirstOrSecondPartyWithError:&v27];
    v15 = v27;

    v16 = [(ContactsSupportService *)self connection];
    v17 = [v16 processIdentifier];

    if (v11)
    {
      v18 = [(ContactsSupportService *)self loggerProvider];
      v19 = [v18 contactsLogger];
      [v19 SPIUsageLackingEntitlementGrantedForPID:v17];
    }

    else
    {
      if (v15)
      {
        v20 = [(ContactsSupportService *)self loggerProvider];
        v21 = [v20 contactsLogger];
        [v21 internalError:v15];
      }

      v22 = [(ContactsSupportService *)self loggerProvider];
      v23 = [v22 contactsLogger];
      [v23 SPIUsageLackingEntitlementRejectedForPID:v17];

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
  v24 = [CNErrorFactory errorWithCode:100 userInfo:v12];
  if (a3)
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
    *a3 = v24;
  }

  return v11;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end