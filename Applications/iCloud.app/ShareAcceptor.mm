@interface ShareAcceptor
+ (id)primaryAppleAccount;
- (BOOL)_authenticateUsers:(id *)users;
- (BOOL)_checkDataclassEnabled;
- (BOOL)_checkDataclassProvisioned;
- (BOOL)_fallbackFlowDownloadApp:(id *)app;
- (BOOL)_fallbackFlowDownloadAppUpdate:(id *)update;
- (BOOL)_fallbackFlowShareAccessRequest:(id *)request;
- (BOOL)_fallbackFlowWarnNetworkUnavailable:(id *)unavailable;
- (BOOL)_fallbackFlowWarnServiceUnavailable:(id *)unavailable;
- (BOOL)_fallbackFlowWarnShareUnavailable:(id *)unavailable;
- (BOOL)_fallbackFlowWarnUnprovisionedDataclass:(id *)dataclass;
- (BOOL)_fallbackFlowWebRedirect:(id *)redirect;
- (BOOL)_fetchMetadata:(id *)metadata;
- (BOOL)_getShareName;
- (BOOL)_handleAppleInternalDaemon:(id)daemon response:(id)response error:(id *)error;
- (BOOL)_handlePotentialAppleInternalDaemon:(id *)daemon;
- (BOOL)_initiateVettingOfSingleOONMatch:(id *)match;
- (BOOL)_launchApp:(id *)app;
- (BOOL)_lookUpRegisteredBundleIDs:(id *)ds;
- (BOOL)_notifyBladeRunner:(id *)runner;
- (BOOL)_promptAppSelection:(id *)selection;
- (BOOL)_promptToOpenAppStoreLink:(id *)link alertOptions:(id)options appURL:(id)l;
- (BOOL)_requestSelectionFromMultipleOONMatches:(id *)matches;
- (BOOL)_shouldRedirectToWebForUninstalledApp;
- (BOOL)_shouldSendURLToBladeRunner:(id)runner;
- (BOOL)_shouldSendURLToPhotos:(id)photos;
- (BOOL)_shouldShowICloudLoginPrompt:(id)prompt;
- (BOOL)_urlHasALongToken:(id)token;
- (BOOL)_urlIsALegacyiWorkShareURL:(id)l;
- (BOOL)_urlIsAniWorkShareURL:(id)l;
- (BOOL)_validateShareURL:(id *)l;
- (BOOL)_verifySelectedApp:(id *)app;
- (BOOL)makeStateTransition:(id *)transition;
- (BOOL)retrievingDialogShouldDisplay;
- (BOOL)shareNeedsAcceptance;
- (BOOL)shouldShowRequestAccess;
- (CKContainer)metadataIndicatedContainer;
- (ShareAcceptor)initWithCloudKitURL:(id)l;
- (ShareAcceptor)initWithCloudKitURL:(id)l invitationToken:(id)token isSourceICS:(BOOL)s unitTestOverrides:(id)overrides;
- (ShareAcceptor)initWithShareMetadata:(id)metadata shareURL:(id)l;
- (id)_deduplicateBundleToNamesMapping:(id)mapping;
- (id)_fetchCurrentUserNameComponents;
- (id)_fetchShareMetadataForAccountID:(id)d error:(id *)error;
- (id)_findStoreDataForBundleIDs:(id)ds error:(id *)error;
- (id)_getContainerForAccountID:(id)d;
- (id)_iOSwatchOSHandleMultipleAppStoreCandidates:(id)candidates error:(id *)error;
- (id)_iosShowAppSelectionDialogWithTitlesDictionary:(id)dictionary;
- (id)_iosShowVettingAlert;
- (id)_promptForAccountIDChoiceWithAccountIDsByUsername:(id)username error:(id *)error;
- (id)_trySelectingOONParticipant;
- (id)chooseFromMultipleBundleIDs;
- (id)fetchMetadata;
- (id)promptForSingleBundleID;
- (int64_t)_checkRepresentativeDataclassEnabled:(BOOL)enabled;
- (int64_t)_fallbackFlowICloudAccountSettings:(id *)settings success:(BOOL *)success;
- (int64_t)_handlePotentialOONMatches;
- (int64_t)_lookUpLocalBundleIDs:(id *)ds success:(BOOL *)success;
- (int64_t)initiateVetting;
- (void)_actuallyRequestAccessWithCompletion:(id)completion;
- (void)_extractEmailAddressesFromProperties:(id)properties into:(id)into;
- (void)_initiateVettingForParticipantID:(id)d address:(id)address andThen:(id)then;
- (void)acceptShareWithCompletionHandler:(id)handler;
- (void)setState:(int64_t)state;
@end

@implementation ShareAcceptor

- (ShareAcceptor)initWithCloudKitURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = ShareAcceptor;
  v5 = [(ShareAcceptor *)&v13 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(RetrievingDialog);
    retrievingDialog = v5->_retrievingDialog;
    v5->_retrievingDialog = v8;

    [(RetrievingDialog *)v5->_retrievingDialog setDelegate:v5];
    v5->_state = 0;
    singleOONMatch = v5->_singleOONMatch;
    v5->_singleOONMatch = 0;

    selectedAccount = v5->_selectedAccount;
    v5->_selectedAccount = 0;
  }

  return v5;
}

- (ShareAcceptor)initWithCloudKitURL:(id)l invitationToken:(id)token isSourceICS:(BOOL)s unitTestOverrides:(id)overrides
{
  tokenCopy = token;
  overridesCopy = overrides;
  v12 = [(ShareAcceptor *)self initWithCloudKitURL:l];
  if (v12)
  {
    v13 = [tokenCopy copy];
    invitationToken = v12->_invitationToken;
    v12->_invitationToken = v13;

    v12->_isSourceICS = s;
    if (__sTestOverridesAvailable == 1)
    {
      objc_storeStrong(&v12->_unitTestOverrides, overrides);
    }
  }

  return v12;
}

- (ShareAcceptor)initWithShareMetadata:(id)metadata shareURL:(id)l
{
  metadataCopy = metadata;
  v8 = [(ShareAcceptor *)self initWithCloudKitURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_shareMetadata, metadata);
  }

  return v9;
}

- (BOOL)_shouldShowICloudLoginPrompt:(id)prompt
{
  v3 = qword_10002E380;
  promptCopy = prompt;
  if (v3 != -1)
  {
    dispatch_once(&qword_10002E380, &stru_100028898);
  }

  v5 = qword_10002E388;
  cKURLSlug = [promptCopy CKURLSlug];

  lowercaseString = [cKURLSlug lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5 ^ 1;
}

- (void)setState:(int64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  selfCopy->_state = state;
  objc_sync_exit(selfCopy);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(ShareAcceptor *)selfCopy url];
    cKURLThroughSlug = [v8 CKURLThroughSlug];
    v10 = [(ShareAcceptor *)selfCopy url];
    cKPathAfterSlug = [v10 CKPathAfterSlug];
    v12 = off_100028BE0[state];
    v13 = off_100028BE0[state];
    v15 = 138544386;
    v16 = cKURLThroughSlug;
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2112;
    v20 = cKPathAfterSlug;
    v21 = 2080;
    v22 = v12;
    v23 = 2080;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Share acceptance for URL: %{public}@%{mask.hash}@, state change [%s] -> [%s]", &v15, 0x34u);
  }

  if (![(ShareAcceptor *)selfCopy shouldShowRetrievingDialogForState:state])
  {
    retrievingDialog = [(ShareAcceptor *)selfCopy retrievingDialog];
    [retrievingDialog abort];
  }
}

- (BOOL)retrievingDialogShouldDisplay
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = [(ShareAcceptor *)selfCopy state];
  objc_sync_exit(selfCopy);

  return [(ShareAcceptor *)selfCopy shouldShowRetrievingDialogForState:state];
}

- (BOOL)_urlIsAniWorkShareURL:(id)l
{
  v3 = qword_10002E390;
  lCopy = l;
  if (v3 != -1)
  {
    dispatch_once(&qword_10002E390, &stru_1000288B8);
  }

  v5 = qword_10002E398;
  cKURLSlug = [lCopy CKURLSlug];

  lowercaseString = [cKURLSlug lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5;
}

- (BOOL)_shouldSendURLToBladeRunner:(id)runner
{
  v3 = qword_10002E3A0;
  runnerCopy = runner;
  if (v3 != -1)
  {
    dispatch_once(&qword_10002E3A0, &stru_1000288D8);
  }

  v5 = qword_10002E3A8;
  cKURLSlug = [runnerCopy CKURLSlug];

  lowercaseString = [cKURLSlug lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5;
}

- (BOOL)_shouldSendURLToPhotos:(id)photos
{
  v3 = qword_10002E3B0;
  photosCopy = photos;
  if (v3 != -1)
  {
    dispatch_once(&qword_10002E3B0, &stru_1000288F8);
  }

  v5 = qword_10002E3B8;
  cKURLSlug = [photosCopy CKURLSlug];

  lowercaseString = [cKURLSlug lowercaseString];
  LOBYTE(v5) = [v5 containsObject:lowercaseString];

  return v5;
}

- (int64_t)_fallbackFlowICloudAccountSettings:(id *)settings success:(BOOL *)success
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    fallbackFlowCause = [(ShareAcceptor *)self fallbackFlowCause];
    *buf = 138543362;
    v26 = fallbackFlowCause;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fallback flow: User either not logged into iCloud or need to update Apple ID settings, error: %{public}@", buf, 0xCu);
  }

  fallbackFlowCause2 = [(ShareAcceptor *)self fallbackFlowCause];
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  v12 = [(ShareAcceptor *)self url];
  v13 = [CKVettingAlerts alertContentForICloudAccountError:fallbackFlowCause2 shareMetadata:shareMetadata shareURL:v12];

  buf[0] = 0;
  selectedAccount = [(ShareAcceptor *)self selectedAccount];
  aa_isManagedAppleID = [selectedAccount aa_isManagedAppleID];

  v16 = [(ShareAcceptor *)self url];
  LODWORD(v12) = [(ShareAcceptor *)self _shouldSendURLToBladeRunner:v16];

  if (v12)
  {
    v17 = [(ShareAcceptor *)self url];
    cKShareURLSlugBasedApplicationName = [v17 CKShareURLSlugBasedApplicationName];
    lowercaseString = [cKShareURLSlugBasedApplicationName lowercaseString];

    [CKVettingAlerts showICloudAccountSettingAlert:v13 appName:lowercaseString previewRequested:buf isSourceICS:[(ShareAcceptor *)self isSourceICS] maid:aa_isManagedAppleID];
  }

  else
  {
    [CKVettingAlerts showICloudAccountSettingAlert:v13 appName:0 previewRequested:buf isSourceICS:[(ShareAcceptor *)self isSourceICS] maid:aa_isManagedAppleID];
  }

  if (buf[0] == 1)
  {
    *success = buf[0];
    [(ShareAcceptor *)self setWebFlowReason:@"notSignedIn"];
    v20 = 23;
  }

  else
  {
    *success = 0;
    if (settings)
    {
      v21 = CKUnderlyingErrorDomain;
      fallbackFlowCause3 = [(ShareAcceptor *)self fallbackFlowCause];
      v23 = [(ShareAcceptor *)self url];
      *settings = [CKPrettyError errorWithDomain:v21 code:9 error:fallbackFlowCause3 format:@"Sign-in or change in iCloud Settings required before sharing URL can be processed: %@", v23];
    }

    v20 = 26;
  }

  return v20;
}

- (BOOL)_fallbackFlowWarnNetworkUnavailable:(id *)unavailable
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fallback flow: User is not connected to the internet", v9, 2u);
  }

  v5 = [(ShareAcceptor *)self url];
  cKURLSlug = [v5 CKURLSlug];
  v7 = [CKVettingAlerts alertContentDictionaryForDeviceOfflineErrorWithURLSlug:cKURLSlug];
  [CKVettingAlerts showFailureAlert:v7 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  return 0;
}

- (BOOL)_fallbackFlowWarnServiceUnavailable:(id *)unavailable
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Fallback flow: Service unavailable", v9, 2u);
  }

  v5 = [(ShareAcceptor *)self url];
  cKURLSlug = [v5 CKURLSlug];
  v7 = [CKVettingAlerts alertContentDictionaryForServiceUnavailableErrorWithURLSlug:cKURLSlug];
  [CKVettingAlerts showFailureAlert:v7 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  return 0;
}

- (BOOL)_fallbackFlowWarnShareUnavailable:(id *)unavailable
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    fallbackFlowCause = [(ShareAcceptor *)self fallbackFlowCause];
    *buf = 138412290;
    v14 = fallbackFlowCause;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fallback flow: Share does not exist or user does not have access, due to: %@", buf, 0xCu);
  }

  v8 = [(ShareAcceptor *)self url];
  failedAccountEmail = [(ShareAcceptor *)self failedAccountEmail];
  v10 = [CKVettingAlerts alertContentForShareMetadataErrorWithURL:v8 email:failedAccountEmail];
  [CKVettingAlerts showFailureAlert:v10 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  if (unavailable)
  {
    v11 = [(ShareAcceptor *)self url];
    *unavailable = [CKPrettyError errorWithDomain:CKErrorDomain code:1000 format:@"Share not available for sharing URL: %@", v11];
  }

  return 0;
}

- (BOOL)_fallbackFlowWarnUnprovisionedDataclass:(id *)dataclass
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    fallbackFlowCause = [(ShareAcceptor *)self fallbackFlowCause];
    *buf = 138412290;
    v15 = fallbackFlowCause;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fallback flow: Share cannot be accepted by the account, due to: %@", buf, 0xCu);
  }

  v8 = [(ShareAcceptor *)self url];
  selectedAccount = [(ShareAcceptor *)self selectedAccount];
  aa_primaryEmail = [selectedAccount aa_primaryEmail];
  v11 = [CKVettingAlerts alertContentForUnprovisionedDataclassWithURL:v8 email:aa_primaryEmail];
  [CKVettingAlerts showFailureAlert:v11 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  if (dataclass)
  {
    v12 = [(ShareAcceptor *)self url];
    *dataclass = [CKPrettyError errorWithDomain:CKErrorDomain code:1000 format:@"Share cannot be accepted by the selected account with unprovisioned dataclass for sharing URL: %@", v12];
  }

  return 0;
}

+ (id)primaryAppleAccount
{
  v2 = objc_opt_new();
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (BOOL)_fallbackFlowShareAccessRequest:(id *)request
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    fallbackFlowCause = [(ShareAcceptor *)self fallbackFlowCause];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = fallbackFlowCause;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Fallback flow: Share does not exist or user does not have access, due to: %@", &buf, 0xCu);
  }

  v8 = +[ShareAcceptor primaryAppleAccount];
  v9 = v8;
  if (v8)
  {
    aa_formattedUsername = [v8 aa_formattedUsername];
    v11 = [CKVettingAlerts alertContentForRequestAccessWithHandle:aa_formattedUsername];
    v12 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = sub_10000A9FC;
    v30 = sub_10000AA0C;
    v31 = 0;
    objc_initWeak(&location, self);
    isSourceICS = [(ShareAcceptor *)self isSourceICS];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000AA14;
    v22[3] = &unk_100028948;
    objc_copyWeak(&v25, &location);
    v23 = v12;
    p_buf = &buf;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000AB84;
    v19[3] = &unk_100028970;
    v19[4] = self;
    v21 = &buf;
    v14 = v23;
    v20 = v14;
    [CKVettingAlerts showRequestAccessAlert:v11 isSourceICS:isSourceICS requestAccessHandler:v22 cancelHandler:v19];
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (request)
    {
      *request = *(*(&buf + 1) + 40);
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = v15;
      v18 = [(ShareAcceptor *)self url];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to request access to share %@ because the device has no primary Apple account.", &buf, 0xCu);
    }

    if (request)
    {
      *request = [CKPrettyError errorWithDomain:CKErrorDomain code:9 userInfo:0 format:@"No primary iCloud account is signed in."];
    }
  }

  return 0;
}

- (void)_actuallyRequestAccessWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ShareAcceptor primaryAppleAccount];
  v6 = v5;
  if (v5)
  {
    identifier = [v5 identifier];
    v8 = [(ShareAcceptor *)self _getContainerForAccountID:identifier];

    v9 = [(ShareAcceptor *)self url];
    v16 = v9;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000AF10;
    v14[3] = &unk_1000289C0;
    v14[4] = self;
    v15 = completionCopy;
    [v8 requestAccessToShareURLs:v10 completionHandler:v14];
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [(ShareAcceptor *)self url];
      *buf = 138412290;
      v18 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to request access to share %@ because the device has no primary Apple account.", buf, 0xCu);
    }

    v8 = [CKPrettyError errorWithDomain:CKErrorDomain code:9 format:@"No primary iCloud account is signed in."];
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

- (BOOL)_fallbackFlowWebRedirect:(id *)redirect
{
  v4 = [(ShareAcceptor *)self url];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    cKURLThroughSlug = [v4 CKURLThroughSlug];
    cKPathAfterSlug = [v4 CKPathAfterSlug];
    *buf = 138543874;
    v32 = cKURLThroughSlug;
    v33 = 2160;
    v34 = 1752392040;
    v35 = 2112;
    v36 = cKPathAfterSlug;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Opening the share URL %{public}@%{mask.hash}@ explicilty", buf, 0x20u);
  }

  v9 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:0];
  [v9 setScheme:kCKURLComponentsScheme];
  query = [v9 query];
  webFlowReason = [(ShareAcceptor *)self webFlowReason];

  if (webFlowReason)
  {
    if (query)
    {
      if ([query rangeOfString:@"redirectReason"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      webFlowReason2 = [(ShareAcceptor *)self webFlowReason];
      v13 = [query stringByAppendingFormat:@"&%@=%@", @"redirectReason", webFlowReason2];
    }

    else
    {
      webFlowReason2 = [(ShareAcceptor *)self webFlowReason];
      v13 = [NSString stringWithFormat:@"%@=%@", @"redirectReason", webFlowReason2];
    }

    v15 = v13;
    [v9 setQuery:v13];
    goto LABEL_15;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    webFlowReason2 = [(ShareAcceptor *)self url];
    cKURLThroughSlug2 = [webFlowReason2 CKURLThroughSlug];
    v17 = [(ShareAcceptor *)self url];
    cKPathAfterSlug2 = [v17 CKPathAfterSlug];
    *buf = 138543874;
    v32 = cKURLThroughSlug2;
    v33 = 2160;
    v34 = 1752392040;
    v35 = 2112;
    v36 = cKPathAfterSlug2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Web flow invoked for: %{public}@%{mask.hash}@, but reason not set", buf, 0x20u);

LABEL_15:
  }

LABEL_16:
  v19 = [v9 URL];

  v20 = objc_alloc_init(_LSOpenConfiguration);
  [v20 setAllowURLOverrides:0];
  v21 = [CKVettingAlerts getLaunchingOptionsFromOptions:0 isSourceICS:[(ShareAcceptor *)self isSourceICS]];
  [v20 setFrontBoardOptions:v21];

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v22 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v23 = v22;
    cKURLThroughSlug3 = [v19 CKURLThroughSlug];
    cKPathAfterSlug3 = [v19 CKPathAfterSlug];
    *buf = 138544130;
    v32 = cKURLThroughSlug3;
    v33 = 2160;
    v34 = 1752392040;
    v35 = 2112;
    v36 = cKPathAfterSlug3;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Sending URL to LaunchServices: %{public}@%{mask.hash}@with config: %@", buf, 0x2Au);
  }

  v26 = +[LSApplicationWorkspace defaultWorkspace];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000B5B4;
  v29[3] = &unk_1000289E8;
  v30 = v19;
  v27 = v19;
  [v26 openURL:v27 configuration:v20 completionHandler:v29];

  return 0;
}

- (id)_iOSwatchOSHandleMultipleAppStoreCandidates:(id)candidates error:(id *)error
{
  allValues = [candidates allValues];
  firstObject = [allValues firstObject];

  v8 = [firstObject objectForKeyedSubscript:@"URL"];
  v9 = [firstObject objectForKeyedSubscript:@"Name"];
  if (v8)
  {
    shareMetadata = [(ShareAcceptor *)self shareMetadata];
    v11 = [CKVettingAlerts alertContentForAppDownload:v9 shareMetadata:shareMetadata isSourceICS:[(ShareAcceptor *)self isSourceICS]];
    [(ShareAcceptor *)self _promptToOpenAppStoreLink:error alertOptions:v11 appURL:v8];

    v12 = 0;
  }

  else
  {
    v12 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Could not find a URL in the App Store data"];
  }

  return v12;
}

- (BOOL)_fallbackFlowDownloadApp:(id *)app
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    registeredAppBundleIDs = [(ShareAcceptor *)self registeredAppBundleIDs];
    *buf = 138412290;
    v24 = registeredAppBundleIDs;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fallback flow: none of the registered apps installed: %@. Prompting to opening the AppStore link for one of them", buf, 0xCu);
  }

  registeredAppBundleIDs2 = [(ShareAcceptor *)self registeredAppBundleIDs];
  v22 = 0;
  v10 = [(ShareAcceptor *)self _findStoreDataForBundleIDs:registeredAppBundleIDs2 error:&v22];
  v11 = v22;

  if (v10)
  {
    if (![v10 count])
    {
      v21 = +[NSAssertionHandler currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:610 description:@"Expected to get non-empty result from _findStoreDataForBundleIDs"];
    }

    if ([v10 count] < 2)
    {
      allValues = [v10 allValues];
      firstObject = [allValues firstObject];

      v14 = [firstObject objectForKeyedSubscript:@"Name"];
      shareMetadata = [(ShareAcceptor *)self shareMetadata];
      v18 = [CKVettingAlerts alertContentForAppDownload:v14 shareMetadata:shareMetadata isSourceICS:[(ShareAcceptor *)self isSourceICS]];
      v19 = [firstObject objectForKeyedSubscript:@"URL"];
      v15 = [(ShareAcceptor *)self _promptToOpenAppStoreLink:app alertOptions:v18 appURL:v19];
    }

    else
    {
      v12 = [(ShareAcceptor *)self _iOSwatchOSHandleMultipleAppStoreCandidates:v10 error:app];

      if (!v12)
      {
        v15 = 1;
        goto LABEL_14;
      }

      firstObject = [(ShareAcceptor *)self shareName];
      v14 = [CKVettingAlerts alertContentForAppStoreAppLookupFailureWithShareName:firstObject error:v12];
      [CKVettingAlerts showFailureAlert:v14 isSourceICS:[(ShareAcceptor *)self isSourceICS]];
      v15 = 0;
      v11 = v12;
    }
  }

  else
  {
    firstObject = [(ShareAcceptor *)self shareName];
    v14 = [CKVettingAlerts alertContentForAppStoreAppLookupFailureWithShareName:firstObject error:v11];
    [CKVettingAlerts showFailureAlert:v14 isSourceICS:[(ShareAcceptor *)self isSourceICS]];
    v15 = 0;
  }

LABEL_14:
  return v15;
}

- (BOOL)_fallbackFlowDownloadAppUpdate:(id *)update
{
  chosenAppBundleID = [(ShareAcceptor *)self chosenAppBundleID];
  localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  chosenAppBundleID2 = [(ShareAcceptor *)self chosenAppBundleID];
  v9 = [localBundleIDsToDisplayNames objectForKeyedSubscript:chosenAppBundleID2];

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    registeredAppBundleIDs = [(ShareAcceptor *)self registeredAppBundleIDs];
    *buf = 138412546;
    v27 = registeredAppBundleIDs;
    v28 = 2114;
    v29 = chosenAppBundleID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fallback flow: one of the registered apps needs an update: %@. Opening the AppStore link for bundle ID %{public}@", buf, 0x16u);
  }

  v25 = chosenAppBundleID;
  v13 = [NSArray arrayWithObjects:&v25 count:1];
  v24 = 0;
  v14 = [(ShareAcceptor *)self _findStoreDataForBundleIDs:v13 error:&v24];
  v15 = v24;

  if (v14)
  {
    if (![v14 count])
    {
      v23 = +[NSAssertionHandler currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:651 description:@"Expected to get non-empty result from _findStoreDataForBundleIDs"];
    }

    allValues = [v14 allValues];
    firstObject = [allValues firstObject];

    shareMetadata = [(ShareAcceptor *)self shareMetadata];
    v19 = [CKVettingAlerts alertContentForAppUpdate:v9 shareMetadata:shareMetadata isSourceICS:[(ShareAcceptor *)self isSourceICS]];
    v20 = [firstObject objectForKeyedSubscript:@"URL"];
    v21 = [(ShareAcceptor *)self _promptToOpenAppStoreLink:update alertOptions:v19 appURL:v20];
  }

  else
  {
    firstObject = [(ShareAcceptor *)self shareName];
    shareMetadata = [CKVettingAlerts alertContentForAppStoreUpdateLookupFailureWithShareName:firstObject appName:v9 error:v15];
    [CKVettingAlerts showFailureAlert:shareMetadata isSourceICS:[(ShareAcceptor *)self isSourceICS]];
    v21 = 1;
  }

  return v21;
}

- (id)_findStoreDataForBundleIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  if (![dsCopy count])
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:664 description:@"Expected at least one bundle ID when querying App Store data"];
  }

  v8 = [dsCopy componentsJoinedByString:{@", "}];
  v9 = [NSString stringWithFormat:@"https://itunes.apple.com/lookup?bundleId=%@", v8];

  v10 = [NSURL URLWithString:v9];
  v11 = +[NSMutableDictionary dictionary];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000A9FC;
  v31 = sub_10000AA0C;
  v32 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = +[NSURLSession sharedSession];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000C184;
  v22[3] = &unk_100028A10;
  v14 = v11;
  v23 = v14;
  v24 = @"https://itunes.apple.com/app/apple-store/id%@?mt=8";
  v26 = &v27;
  v15 = v12;
  v25 = v15;
  v16 = [v13 dataTaskWithURL:v10 completionHandler:v22];
  [v16 resume];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if ([v14 count])
  {
    v17 = v14;
    goto LABEL_12;
  }

  v18 = v28[5];
  if (v18)
  {
    if (error)
    {
      v19 = v18;
LABEL_10:
      v17 = 0;
      *error = v19;
      goto LABEL_12;
    }
  }

  else if (error)
  {
    v19 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:1024 userInfo:0];
    goto LABEL_10;
  }

  v17 = 0;
LABEL_12:

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (BOOL)_promptToOpenAppStoreLink:(id *)link alertOptions:(id)options appURL:(id)l
{
  optionsCopy = options;
  lCopy = l;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    registeredAppBundleIDs = [(ShareAcceptor *)self registeredAppBundleIDs];
    *buf = 138412290;
    v28 = registeredAppBundleIDs;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fallback flow: prompting the user to go to the app store and obtain/update one of the registered apps %@", buf, 0xCu);
  }

  v13 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, optionsCopy);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v13, 604800.0, &responseFlags);
  if ((responseFlags & 3) != 0)
  {
    CFRelease(v13);
    v14 = 1;
    if (!link)
    {
LABEL_8:
      v16 = 0;
      goto LABEL_9;
    }

LABEL_7:
    fallbackFlowCause = [(ShareAcceptor *)self fallbackFlowCause];
    *link = fallbackFlowCause;

    goto LABEL_8;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v18 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v28 = lCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Redirecting user to the app store with URL %{public}@", buf, 0xCu);
  }

  v19 = [CKVettingAlerts getLaunchingOptionsFromOptions:0 isSourceICS:[(ShareAcceptor *)self isSourceICS]];
  v20 = +[LSApplicationWorkspace defaultWorkspace];
  v25 = 0;
  v14 = [v20 openURL:lCopy withOptions:v19 error:&v25];
  v16 = v25;

  if ((v14 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
      absoluteString = [lCopy absoluteString];
      *buf = 138543618;
      v28 = absoluteString;
      v29 = 2112;
      v30 = v16;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to open store URL %{public}@ with error %@", buf, 0x16u);
    }
  }

  CFRelease(v13);
  if (link)
  {
    if (v16)
    {
      v22 = v16;
      *link = v16;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:

  return v14;
}

- (BOOL)_shouldRedirectToWebForUninstalledApp
{
  v3 = [(ShareAcceptor *)self url];
  if ([(ShareAcceptor *)self _shouldSendURLToPhotos:v3])
  {
    v4 = [(ShareAcceptor *)self url];
    cKURLSlug = [v4 CKURLSlug];
    lowercaseString = [cKURLSlug lowercaseString];
    v7 = [lowercaseString isEqualToString:kCKPhotosSharedLibraryShareURLSlug] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int64_t)_checkRepresentativeDataclassEnabled:(BOOL)enabled
{
  if (enabled)
  {
    _checkDataclassProvisioned = [(ShareAcceptor *)self _checkDataclassProvisioned];
    _checkDataclassEnabled = [(ShareAcceptor *)self _checkDataclassEnabled];
    if (_checkDataclassProvisioned)
    {
      if (_checkDataclassEnabled)
      {
        localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
        localBundleIDsToDisplayNames4 = [localBundleIDsToDisplayNames mutableCopy];

        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v8 = TCCAccessCopyBundleIdentifiersDisabledForService();
        v9 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v42;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v42 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [localBundleIDsToDisplayNames4 removeObjectForKey:*(*(&v41 + 1) + 8 * i)];
            }

            v10 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v10);
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v13 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v48 = localBundleIDsToDisplayNames4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "After filtering out the apps disabled for kTCCServiceLiverpool, new local apps list is %{public}@", buf, 0xCu);
        }

        if ([localBundleIDsToDisplayNames4 count])
        {
          v14 = 3;
        }

        else
        {
          v32 = CKUnderlyingErrorDomain;
          v45 = CKErrorDisabledAppLocalizedName;
          localBundleIDsToDisplayNames2 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
          localBundleIDsToDisplayNames3 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
          allKeys = [localBundleIDsToDisplayNames3 allKeys];
          firstObject = [allKeys firstObject];
          v37 = [localBundleIDsToDisplayNames2 objectForKeyedSubscript:firstObject];
          v46 = v37;
          v38 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v39 = [CKPrettyError errorWithDomain:v32 code:1023 userInfo:v38 format:@"Could not open an app which is disabled in iCloud settings"];
          [(ShareAcceptor *)self setFallbackFlowCause:v39];

          v14 = 22;
        }

        [(ShareAcceptor *)self setLocalBundleIDsToDisplayNames:localBundleIDsToDisplayNames4];
      }

      else
      {
        v25 = CKUnderlyingErrorDomain;
        v50 = CKErrorDisabledAppLocalizedName;
        localBundleIDsToDisplayNames4 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
        localBundleIDsToDisplayNames5 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
        allKeys2 = [localBundleIDsToDisplayNames5 allKeys];
        firstObject2 = [allKeys2 firstObject];
        v29 = [localBundleIDsToDisplayNames4 objectForKeyedSubscript:firstObject2];
        v51 = v29;
        v30 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v31 = [CKPrettyError errorWithDomain:v25 code:1023 userInfo:v30 format:@"Could not open an app which is disabled in iCloud settings"];
        [(ShareAcceptor *)self setFallbackFlowCause:v31];

        v14 = 22;
      }
    }

    else
    {
      v16 = CKUnderlyingErrorDomain;
      v52[0] = CKErrorDisabledAppLocalizedName;
      localBundleIDsToDisplayNames4 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
      localBundleIDsToDisplayNames6 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
      allKeys3 = [localBundleIDsToDisplayNames6 allKeys];
      firstObject3 = [allKeys3 firstObject];
      v20 = [localBundleIDsToDisplayNames4 objectForKeyedSubscript:firstObject3];
      v53[0] = v20;
      v52[1] = CKErrorAccountPrimaryEmailKey;
      selectedAccount = [(ShareAcceptor *)self selectedAccount];
      aa_primaryEmail = [selectedAccount aa_primaryEmail];
      v53[1] = aa_primaryEmail;
      v23 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
      v24 = [CKPrettyError errorWithDomain:v16 code:1000 userInfo:v23 format:@"Selected account is not provisioned for the underlying dataclass."];
      [(ShareAcceptor *)self setFallbackFlowCause:v24];

      v14 = 18;
    }

LABEL_28:

    return v14;
  }

  if ([(ShareAcceptor *)self _shouldRedirectToWebForUninstalledApp])
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Asked to redirect share with no installed app candidates to the web.", buf, 2u);
    }

    localBundleIDsToDisplayNames4 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"No app candidates installed, redirecting to the web."];
    [(ShareAcceptor *)self setFallbackFlowCause:localBundleIDsToDisplayNames4];
    v14 = 23;
    goto LABEL_28;
  }

  return 24;
}

- (id)fetchMetadata
{
  selfCopy = self;
  if (__sTestOverridesAvailable == 1)
  {
    testTargetContainer = [(ShareAcceptor *)self testTargetContainer];

    if (testTargetContainer)
    {
      v93 = 0;
      v4 = [(ShareAcceptor *)selfCopy _fetchShareMetadataForAccountID:0 error:&v93];
      cKClientSuitableError = v93;
      [(ShareAcceptor *)selfCopy setShareMetadata:v4];
      goto LABEL_74;
    }
  }

  v6 = objc_opt_new();
  aa_appleAccounts = [v6 aa_appleAccounts];
  if ([aa_appleAccounts count])
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v80 = objc_alloc_init(NSMutableDictionary);
    v82 = objc_alloc_init(NSMutableDictionary);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v78 = aa_appleAccounts;
    obj = aa_appleAccounts;
    v9 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
    v81 = v8;
    if (v9)
    {
      v77 = v6;
      v10 = 0;
      v84 = 0;
      v79 = 0;
      v11 = *v90;
      v12 = kAccountDataclassCKDatabaseService;
      do
      {
        v13 = 0;
        v14 = v10;
        do
        {
          if (*v90 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v89 + 1) + 8 * v13);
          if ([v15 isProvisionedForDataclass:{v12, v77}])
          {
            identifier = [v15 identifier];
            v10 = v15;

            v88 = 0;
            v17 = selfCopy;
            v18 = [(ShareAcceptor *)selfCopy _fetchShareMetadataForAccountID:identifier error:&v88];
            v19 = v88;
            v20 = v19;
            if (v18)
            {
              [v82 setObject:v10 forKeyedSubscript:identifier];
              [v81 setObject:v18 forKeyedSubscript:identifier];
              username = [v10 username];
              v22 = username;
              if (username)
              {
                v23 = username;
              }

              else
              {
                v23 = @"Unknown User";
              }

              [v80 setObject:identifier forKeyedSubscript:v23];
            }

            else if (v19 && !v79)
            {
              v79 = v19;
            }

            ++v84;

            v14 = v10;
            selfCopy = v17;
          }

          else
          {
            v10 = v14;
          }

          v13 = v13 + 1;
        }

        while (v9 != v13);
        v9 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v9);
      LODWORD(v9) = v84 == 1;
      v6 = v77;
      v8 = v81;
    }

    else
    {
      v10 = 0;
      v79 = 0;
    }

    if ([v8 count] == 1)
    {
      allKeys = [v8 allKeys];
      firstObject = [allKeys firstObject];
      [(ShareAcceptor *)selfCopy setSelectedAccountID:firstObject];

      allValues = [v8 allValues];
      firstObject2 = [allValues firstObject];
      [(ShareAcceptor *)selfCopy setShareMetadata:firstObject2];

      v29 = 0;
      goto LABEL_46;
    }

    if ([v8 count] < 2)
    {
      v29 = v79;
      goto LABEL_46;
    }

    v30 = v10;
    v31 = +[CKBehaviorOptions sharedOptions];
    if ([v31 isAppleInternalInstall])
    {
      v32 = +[CKBehaviorOptions sharedOptions];
      shareURLToAccountIDSystemAcceptationOverrides = [v32 shareURLToAccountIDSystemAcceptationOverrides];
      v34 = [shareURLToAccountIDSystemAcceptationOverrides count];

      v8 = v81;
      if (v34)
      {
        v35 = +[CKBehaviorOptions sharedOptions];
        shareURLToAccountIDSystemAcceptationOverrides2 = [v35 shareURLToAccountIDSystemAcceptationOverrides];
        v37 = selfCopy;
        v38 = [(ShareAcceptor *)selfCopy url];
        absoluteString = [v38 absoluteString];
        v40 = [shareURLToAccountIDSystemAcceptationOverrides2 objectForKey:absoluteString];

        if (![v40 length] || (objc_msgSend(v81, "allKeys"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "containsObject:", v40), v41, !v42))
        {
          v66 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:1002 format:@"Cannot fetch share metadata with the provided override iCloud accountID"];
          cKClientSuitableError = [v66 CKClientSuitableError];

          v4 = 0;
          aa_appleAccounts = v78;
          v8 = v81;
          v10 = v30;
          goto LABEL_72;
        }

        selfCopy = v37;
        [(ShareAcceptor *)v37 setSelectedAccountID:v40];
        v8 = v81;
        v43 = [v81 objectForKey:v40];
        [(ShareAcceptor *)v37 setShareMetadata:v43];

        v29 = 0;
        v10 = v30;
LABEL_46:
        selectedAccountID = [(ShareAcceptor *)selfCopy selectedAccountID];

        if (selectedAccountID)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          aa_appleAccounts = v78;
          v52 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            v67 = v52;
            selectedAccountID2 = [(ShareAcceptor *)selfCopy selectedAccountID];
            *buf = 138412290;
            v95 = selectedAccountID2;
            _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "Selected account ID is %@", buf, 0xCu);
          }

          selectedAccountID3 = [(ShareAcceptor *)selfCopy selectedAccountID];
          shareMetadata = [(ShareAcceptor *)selfCopy shareMetadata];
          [shareMetadata setSelectedAccountID:selectedAccountID3];

          [(ShareAcceptor *)selfCopy setFailedAccountEmail:0];
          selectedAccountID4 = [(ShareAcceptor *)selfCopy selectedAccountID];
          v56 = [v82 objectForKeyedSubscript:selectedAccountID4];
          [(ShareAcceptor *)selfCopy setSelectedAccount:v56];

          if (!+[CKPersona isSupported])
          {
            goto LABEL_71;
          }

          selectedAccount = [(ShareAcceptor *)selfCopy selectedAccount];
          v86 = 0;
          v58 = [selectedAccount ck_getPersona:&v86 error:0];
          aa_primaryEmail = v86;

          if (v58 && aa_primaryEmail)
          {
            v60 = v6;
            v85 = 0;
            v61 = [aa_primaryEmail adopt:&v85];
            v62 = v85;

            v8 = v81;
            if (v61)
            {
              goto LABEL_69;
            }

            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v64 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
            {
              v75 = v64;
              ckShortDescription = [aa_primaryEmail ckShortDescription];
              *buf = 138412546;
              v95 = ckShortDescription;
              v96 = 2112;
              v97 = v62;
              _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Failed to adopt persona %@ with error: %@", buf, 0x16u);

              v8 = v81;
              if (v29)
              {
                goto LABEL_69;
              }
            }

            else if (v29)
            {
LABEL_69:

              v6 = v60;
              goto LABEL_70;
            }

            v29 = v62;
            goto LABEL_69;
          }

          v8 = v81;
        }

        else
        {
          if (v10)
          {
            v63 = v9;
          }

          else
          {
            v63 = 0;
          }

          if (v63 != 1)
          {
            aa_appleAccounts = v78;
LABEL_71:
            v4 = v29;
            cKClientSuitableError = v4;
LABEL_72:

            goto LABEL_73;
          }

          aa_primaryEmail = [v10 aa_primaryEmail];
          [(ShareAcceptor *)selfCopy setFailedAccountEmail:aa_primaryEmail];
          aa_appleAccounts = v78;
        }

LABEL_70:

        goto LABEL_71;
      }
    }

    else
    {
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = v30;
    v44 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v69 = v44;
      allValues2 = [v8 allValues];
      firstObject3 = [allValues2 firstObject];
      share = [firstObject3 share];
      [share recordID];
      v74 = v73 = selfCopy;
      *buf = 138543362;
      v95 = v74;
      _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Multiple logged-in accounts are invited on share %{public}@. Dismissing the retrieving diaglog and prompting the user to choose.", buf, 0xCu);

      v10 = v30;
      v8 = v81;

      selfCopy = v73;
    }

    retrievingDialog = [(ShareAcceptor *)selfCopy retrievingDialog];
    [retrievingDialog abort];

    v87 = 0;
    v46 = [(ShareAcceptor *)selfCopy _promptForAccountIDChoiceWithAccountIDsByUsername:v80 error:&v87];
    v47 = v87;
    cKClientSuitableError2 = v47;
    if (v46)
    {
      [(ShareAcceptor *)selfCopy setSelectedAccountID:v46];
      v49 = [v8 objectForKeyedSubscript:v46];
      [(ShareAcceptor *)selfCopy setShareMetadata:v49];

      v8 = v81;
      v29 = 0;
    }

    else
    {
      if (!v47)
      {
        v50 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:1002 format:@"Cannot fetch share metadata without any chosen iCloud account"];
        cKClientSuitableError2 = [v50 CKClientSuitableError];

        v8 = v81;
      }

      cKClientSuitableError2 = cKClientSuitableError2;
      v29 = cKClientSuitableError2;
    }

    goto LABEL_46;
  }

  v24 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:1002 format:@"Cannot fetch share metadata without any iCloud account logged in"];
  cKClientSuitableError = [v24 CKClientSuitableError];

  v4 = 0;
LABEL_73:

LABEL_74:

  return cKClientSuitableError;
}

- (id)_promptForAccountIDChoiceWithAccountIDsByUsername:(id)username error:(id *)error
{
  usernameCopy = username;
  allKeys = [usernameCopy allKeys];
  v29[0] = kCFUserNotificationAlertHeaderKey;
  v6 = CKLocalizedString();
  v30[0] = v6;
  v29[1] = kCFUserNotificationAlertMessageKey;
  v7 = CKLocalizedString();
  v30[1] = v7;
  v29[2] = kCFUserNotificationAlternateButtonTitleKey;
  firstObject = [allKeys firstObject];
  v30[2] = firstObject;
  v29[3] = kCFUserNotificationOtherButtonTitleKey;
  lastObject = [allKeys lastObject];
  v30[3] = lastObject;
  v29[4] = kCFUserNotificationDefaultButtonTitleKey;
  v10 = CKLocalizedString();
  v30[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:5];
  v12 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v11 bundleIdentifier:0];

  v13 = [CKVettingAlerts getAlertOptionsFromOptions:v12 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  v14 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v13);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v14, 604800.0, &responseFlags);
  if ((responseFlags & 3) > 1)
  {
    if ((responseFlags & 3) != 2)
    {
      v15 = CKErrorDomain;
      v16 = @"Could not create a user notification";
      v17 = 1;
      goto LABEL_9;
    }

    lastObject2 = [allKeys lastObject];
  }

  else
  {
    if ((responseFlags & 3) == 0)
    {
      v15 = CKErrorDomain;
      v16 = @"User cancelled account selection prompt";
      v17 = 20;
LABEL_9:
      error = [CKPrettyError errorWithDomain:v15 code:v17 format:v16, error];
      v21 = 0;
      v20 = usernameCopy;
      goto LABEL_10;
    }

    lastObject2 = [allKeys firstObject];
  }

  v19 = lastObject2;
  v20 = usernameCopy;
  v21 = [usernameCopy objectForKeyedSubscript:{lastObject2, error}];

  error = 0;
LABEL_10:
  CFRelease(v14);
  if (v26 && error)
  {
    v23 = error;
    *v26 = error;
  }

  return v21;
}

- (id)_getContainerForAccountID:(id)d
{
  dCopy = d;
  if (__sTestOverridesAvailable == 1 && ([(ShareAcceptor *)self testTargetContainer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    testTargetContainer = [(ShareAcceptor *)self testTargetContainer];
  }

  else
  {
    v7 = [(ShareAcceptor *)self url];
    v8 = [(ShareAcceptor *)self _shouldSendURLToBladeRunner:v7];

    v9 = [CKContainerID alloc];
    if (v8)
    {
      v10 = kCKCloudDocsContainerIdentifier;
    }

    else
    {
      v10 = @"com.apple.cloudkit";
    }

    v11 = [v9 initWithContainerIdentifier:v10 environment:1];
    v12 = objc_alloc_init(CKContainerOptions);
    v13 = [[CKAccountOverrideInfo alloc] initWithAccountID:dCopy];
    [v12 setAccountOverrideInfo:v13];
    if (__sTestOverridesAvailable == 1)
    {
      v16 = kCKDisplaysSystemAcceptPromptEntitlementKey;
      v17 = &__kCFBooleanTrue;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [v12 setFakeEntitlements:v14];
    }

    testTargetContainer = [[CKContainer alloc] initWithContainerID:v11 options:v12];
  }

  return testTargetContainer;
}

- (id)_fetchShareMetadataForAccountID:(id)d error:(id *)error
{
  dCopy = d;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10000A9FC;
  v39 = sub_10000AA0C;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10000A9FC;
  v33 = sub_10000AA0C;
  v34 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [CKFetchShareMetadataOperation alloc];
  v9 = [(ShareAcceptor *)self url];
  v43 = v9;
  v10 = [NSArray arrayWithObjects:&v43 count:1];
  v11 = [v8 initWithShareURLs:v10];

  invitationToken = [(ShareAcceptor *)self invitationToken];

  if (invitationToken)
  {
    v13 = [(ShareAcceptor *)self url];
    v41 = v13;
    invitationToken2 = [(ShareAcceptor *)self invitationToken];
    v42 = invitationToken2;
    v15 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [v11 setShareInvitationTokensByShareURL:v15];
  }

  [v11 setOverwriteContainerPCSServiceIfManatee:1];
  resolvedConfiguration = [v11 resolvedConfiguration];
  [resolvedConfiguration setRequestOriginator:2];

  [v11 setShouldFetchRootRecord:0];
  if (__sTestOverridesAvailable == 1)
  {
    unitTestOverrides = [(ShareAcceptor *)self unitTestOverrides];
    v18 = unitTestOverrides == 0;

    if (!v18)
    {
      unitTestOverrides2 = [(ShareAcceptor *)self unitTestOverrides];
      [v11 addUnitTestOverrides:unitTestOverrides2];
    }
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000E2B0;
  v28[3] = &unk_100028A38;
  v28[4] = &v29;
  [v11 setPerShareMetadataBlock:v28];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000E2C4;
  v25[3] = &unk_100028A60;
  v27 = &v35;
  v20 = v7;
  v26 = v20;
  [v11 setFetchShareMetadataCompletionBlock:v25];
  v21 = [(ShareAcceptor *)self _getContainerForAccountID:dCopy];
  [v21 addOperation:v11];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v22 = v36[5];
    if (v22)
    {
      *error = v22;
    }
  }

  v23 = v30[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v23;
}

- (CKContainer)metadataIndicatedContainer
{
  metadataIndicatedContainer = self->_metadataIndicatedContainer;
  if (!metadataIndicatedContainer)
  {
    selectedAccountID = [(ShareAcceptor *)self selectedAccountID];

    if (selectedAccountID)
    {
      selectedAccountID = objc_alloc_init(CKContainerOptions);
      v5 = [CKAccountOverrideInfo alloc];
      selectedAccountID2 = [(ShareAcceptor *)self selectedAccountID];
      v7 = [v5 initWithAccountID:selectedAccountID2];

      [selectedAccountID setAccountOverrideInfo:v7];
    }

    v8 = [CKContainer alloc];
    shareMetadata = [(ShareAcceptor *)self shareMetadata];
    containerID = [shareMetadata containerID];
    v11 = [v8 initWithContainerID:containerID options:selectedAccountID];
    v12 = self->_metadataIndicatedContainer;
    self->_metadataIndicatedContainer = v11;

    metadataIndicatedContainer = self->_metadataIndicatedContainer;
  }

  return metadataIndicatedContainer;
}

- (BOOL)shareNeedsAcceptance
{
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  if ([shareMetadata participantRole] == 1)
  {
    v4 = 0;
  }

  else
  {
    shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
    v4 = [shareMetadata2 participantStatus] != 2;
  }

  return v4;
}

- (id)_fetchCurrentUserNameComponents
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10000A9FC;
  v15 = sub_10000AA0C;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  metadataIndicatedContainer = [(ShareAcceptor *)self metadataIndicatedContainer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E5F8;
  v8[3] = &unk_100028A88;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [metadataIndicatedContainer fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)promptForSingleBundleID
{
  localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  v5 = [localBundleIDsToDisplayNames count];

  if (v5 != 1)
  {
    v51 = +[NSAssertionHandler currentHandler];
    localBundleIDsToDisplayNames2 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
    [v51 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:1072 description:{@"Expected a list with one bundle mapping in it, got this: %@", localBundleIDsToDisplayNames2}];
  }

  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  outOfNetworkMatches = [shareMetadata outOfNetworkMatches];
  v8 = [outOfNetworkMatches count];

  if (v8)
  {
    localBundleIDsToDisplayNames3 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
    allKeys = [localBundleIDsToDisplayNames3 allKeys];
    firstObject = [allKeys firstObject];
    [(ShareAcceptor *)self setChosenAppBundleID:firstObject];

LABEL_5:
    v12 = 0;
    goto LABEL_22;
  }

  currentUserNameComponents = [(ShareAcceptor *)self currentUserNameComponents];

  if (!currentUserNameComponents)
  {
    _fetchCurrentUserNameComponents = [(ShareAcceptor *)self _fetchCurrentUserNameComponents];
    if (_fetchCurrentUserNameComponents)
    {
      v12 = _fetchCurrentUserNameComponents;
      v47 = [(ShareAcceptor *)self url];
      cKURLSlug = [v47 CKURLSlug];
      v49 = [CKVettingAlerts alertContentForGenericErrorWithURLSlug:cKURLSlug];
      [CKVettingAlerts showFailureAlert:v49 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

      goto LABEL_22;
    }
  }

  shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
  containerID = [shareMetadata2 containerID];
  if ([containerID specialContainerType] == 5)
  {
    shareMetadata3 = [(ShareAcceptor *)self shareMetadata];
    share = [shareMetadata3 share];
    v18 = [share objectForKeyedSubscript:CKShareTypeKey];
    v19 = [v18 isEqualToString:CKPhotosSharedLibraryShareType];

    if (v19)
    {
      localBundleIDsToDisplayNames4 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
      allKeys2 = [localBundleIDsToDisplayNames4 allKeys];
      firstObject2 = [allKeys2 firstObject];
      [(ShareAcceptor *)self setChosenAppBundleID:firstObject2];

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Hiding the document open dialog for sharing urls with photos shared library type", buf, 2u);
      }

      goto LABEL_5;
    }
  }

  else
  {
  }

  localBundleIDsToDisplayNames5 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  allKeys3 = [localBundleIDsToDisplayNames5 allKeys];
  firstObject3 = [allKeys3 firstObject];

  shareName = [(ShareAcceptor *)self shareName];
  localBundleIDsToDisplayNames6 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  allValues = [localBundleIDsToDisplayNames6 allValues];
  firstObject4 = [allValues firstObject];
  shareMetadata4 = [(ShareAcceptor *)self shareMetadata];
  currentUserNameComponents2 = [(ShareAcceptor *)self currentUserNameComponents];
  currentUserFormattedUsername = [(ShareAcceptor *)self currentUserFormattedUsername];
  v34 = [CKVettingAlerts alertContentForFirstJoinAlertWithRecordName:shareName appName:firstObject4 bundleID:firstObject3 shareMetadata:shareMetadata4 currentUserName:currentUserNameComponents2 currentUserFormattedUsername:currentUserFormattedUsername];

  v54[0] = kCFUserNotificationAlertHeaderKey;
  v35 = [v34 objectForKeyedSubscript:@"ckVettingAlertTitle"];
  v55[0] = v35;
  v54[1] = kCFUserNotificationAlertMessageKey;
  v36 = [v34 objectForKeyedSubscript:@"ckVettingAlertBody"];
  v55[1] = v36;
  v54[2] = kCFUserNotificationDefaultButtonTitleKey;
  v37 = CKLocalizedString();
  v55[2] = v37;
  v54[3] = kCFUserNotificationAlternateButtonTitleKey;
  v38 = CKLocalizedString();
  v55[3] = v38;
  v39 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
  v40 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v39 bundleIdentifier:firstObject3];

  v41 = [CKVettingAlerts getAlertOptionsFromOptions:v40 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  v42 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v41);
  *buf = 0;
  CFUserNotificationReceiveResponse(v42, 604800.0, buf);
  if ((buf[0] & 3) != 1)
  {
    if ((buf[0] & 3) != 0)
    {
      v12 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Could not create a user notification"];
      goto LABEL_21;
    }

    localBundleIDsToDisplayNames7 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
    allKeys4 = [localBundleIDsToDisplayNames7 allKeys];
    firstObject5 = [allKeys4 firstObject];
    [(ShareAcceptor *)self setChosenAppBundleID:firstObject5];
  }

  v12 = 0;
LABEL_21:
  CFRelease(v42);

LABEL_22:

  return v12;
}

- (BOOL)_getShareName
{
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  share = [shareMetadata share];
  v5 = [share objectForKeyedSubscript:CKShareTitleKey];

  shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
  v7 = shareMetadata2;
  if (v5)
  {
    share2 = [shareMetadata2 share];
  }

  else
  {
    rootRecord = [shareMetadata2 rootRecord];
    v10 = [rootRecord objectForKeyedSubscript:CKShareTitleKey];

    shareMetadata3 = [(ShareAcceptor *)self shareMetadata];
    v7 = shareMetadata3;
    if (!v10)
    {
      share3 = [shareMetadata3 share];
      recordID = [share3 recordID];
      recordName = [recordID recordName];
      [(ShareAcceptor *)self setShareName:recordName];

      goto LABEL_6;
    }

    share2 = [shareMetadata3 rootRecord];
  }

  share3 = share2;
  recordID = [share2 objectForKeyedSubscript:CKShareTitleKey];
  [(ShareAcceptor *)self setShareName:recordID];
LABEL_6:

  shareName = [(ShareAcceptor *)self shareName];
  v15 = [shareName stringByReplacingOccurrencesOfString:@"\uFFFC" withString:@"\uFFFD"];
  [(ShareAcceptor *)self setShareName:v15];

  return 1;
}

- (void)_extractEmailAddressesFromProperties:(id)properties into:(id)into
{
  propertiesCopy = properties;
  intoCopy = into;
  v8 = [propertiesCopy objectForKeyedSubscript:@"EmailAddresses"];

  if (v8)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [propertiesCopy objectForKeyedSubscript:@"EmailAddresses"];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [intoCopy addObject:v14];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ShareAcceptor *)self _extractEmailAddressesFromProperties:v14 into:intoCopy];
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }
  }

  v15 = [propertiesCopy objectForKeyedSubscript:@"EmailAddress"];

  if (v15)
  {
    v16 = [propertiesCopy objectForKeyedSubscript:@"EmailAddress"];
    [intoCopy addObject:v16];
  }

  v17 = [propertiesCopy objectForKeyedSubscript:@"EmailAliases"];

  if (v17)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = [propertiesCopy objectForKeyedSubscript:{@"EmailAliases", 0}];
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [(ShareAcceptor *)self _extractEmailAddressesFromProperties:*(*(&v25 + 1) + 8 * v22) into:intoCopy];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }
  }

  v23 = [propertiesCopy objectForKeyedSubscript:@"DAAccountEmailAddress"];

  if (v23)
  {
    v24 = [propertiesCopy objectForKeyedSubscript:@"DAAccountEmailAddress"];
    [intoCopy addObject:v24];
  }
}

- (id)_trySelectingOONParticipant
{
  v3 = [ACAccountStore alloc];
  chosenAppBundleID = [(ShareAcceptor *)self chosenAppBundleID];
  v5 = [v3 initWithEffectiveBundleID:chosenAppBundleID];

  allAccountTypes = [v5 allAccountTypes];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10000F850;
  v55[3] = &unk_100028AB0;
  v35 = v5;
  v56 = v35;
  v36 = [allAccountTypes CKFlatMap:v55];

  if ([v36 count])
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_10000A9FC;
    v49 = sub_10000AA0C;
    v50 = 0;
    v7 = +[NSMutableSet set];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v36;
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v61 count:16];
    if (v9)
    {
      v10 = *v42;
      do
      {
        v11 = 0;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          if ([v12 isEnabledForDataclass:@"com.apple.Dataclass.Mail"])
          {
            username = [v12 username];

            if (username)
            {
              username2 = [v12 username];
              [v7 addObject:username2];

              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v15 = ck_log_facility_ck;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                username3 = [v12 username];
                *buf = 138412290;
                v58 = username3;
                _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Considering username %@ as a vetting candidate", buf, 0xCu);
              }
            }

            ck_accountProperties = [v12 ck_accountProperties];

            if (ck_accountProperties)
            {
              accountProperties = [v12 accountProperties];
              [(ShareAcceptor *)self _extractEmailAddressesFromProperties:accountProperties into:v7];

              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v18 = ck_log_facility_ck;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                ck_accountProperties2 = [v12 ck_accountProperties];
                *buf = 138412546;
                v58 = ck_accountProperties2;
                v59 = 2112;
                v60 = v7;
                _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "After extracting emails from account properties %@ got %@", buf, 0x16u);
              }
            }

            ck_dataclassProperties = [v12 ck_dataclassProperties];
            v20 = [ck_dataclassProperties objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];

            if (v20)
            {
              ck_dataclassProperties2 = [v12 ck_dataclassProperties];
              v22 = [ck_dataclassProperties2 objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
              [(ShareAcceptor *)self _extractEmailAddressesFromProperties:v22 into:v7];

              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v23 = ck_log_facility_ck;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                ck_dataclassProperties3 = [v12 ck_dataclassProperties];
                v27 = [ck_dataclassProperties3 objectForKeyedSubscript:@"com.apple.Dataclass.Mail"];
                *buf = 138412546;
                v58 = v27;
                v59 = 2112;
                v60 = v7;
                _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "After extracting emails from dataclass properties %@ got %@", buf, 0x16u);
              }
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v41 objects:v61 count:16];
      }

      while (v9);
    }

    shareMetadata = [(ShareAcceptor *)self shareMetadata];
    outOfNetworkMatches = [shareMetadata outOfNetworkMatches];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000F8E0;
    v37[3] = &unk_100028AD8;
    v30 = v7;
    v38 = v30;
    v39 = &v51;
    v40 = &v45;
    [outOfNetworkMatches enumerateObjectsUsingBlock:v37];

    if (*(v52 + 6) == 1)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v31 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v34 = v46[5];
        *buf = 138412290;
        v58 = v34;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Found exactly one matching participant for the user's enabled accounts, will use it for vetting: %@", buf, 0xCu);
      }

      v32 = v46[5];
    }

    else
    {
      v32 = 0;
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v51, 8);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (int64_t)initiateVetting
{
  _trySelectingOONParticipant = [(ShareAcceptor *)self _trySelectingOONParticipant];
  [(ShareAcceptor *)self setSingleOONMatch:_trySelectingOONParticipant];

  singleOONMatch = [(ShareAcceptor *)self singleOONMatch];
  if (singleOONMatch)
  {
    v5 = 13;
  }

  else
  {
    v5 = 14;
  }

  return v5;
}

- (BOOL)_initiateVettingOfSingleOONMatch:(id *)match
{
  singleOONMatch = [(ShareAcceptor *)self singleOONMatch];

  if (!singleOONMatch)
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:1247 description:@"singleOONMatch field is not set"];
  }

  localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  if ([localBundleIDsToDisplayNames count])
  {
    localBundleIDsToDisplayNames2 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
    allKeys = [localBundleIDsToDisplayNames2 allKeys];
    firstObject = [allKeys firstObject];
  }

  else
  {
    localBundleIDsToDisplayNames2 = [(ShareAcceptor *)self registeredAppBundleIDs];
    firstObject = [localBundleIDsToDisplayNames2 firstObject];
  }

  shareName = [(ShareAcceptor *)self shareName];
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  ownerIdentity = [shareMetadata ownerIdentity];
  nameComponents = [ownerIdentity nameComponents];
  shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
  share = [shareMetadata2 share];
  v15 = [share objectForKeyedSubscript:CKShareTypeKey];
  v16 = firstObject;
  v17 = [CKVettingAlerts alertContentForShortcutVettingBindingPromptWithBundleID:firstObject shareName:shareName ownerName:nameComponents shareType:v15 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  v18 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v17);
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(v18, 604800.0, responseFlags);
  if ((responseFlags[0] & 3) != 1)
  {
    if ((responseFlags[0] & 3) != 0)
    {
      if (match)
      {
        *match = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Could not create a user notification"];
      }
    }

    else
    {
      v34 = dispatch_semaphore_create(0);
      singleOONMatch2 = [(ShareAcceptor *)self singleOONMatch];
      userIdentity = [singleOONMatch2 userIdentity];
      lookupInfo = [userIdentity lookupInfo];
      emailAddress = [lookupInfo emailAddress];
      singleOONMatch3 = [(ShareAcceptor *)self singleOONMatch];
      userIdentity2 = [singleOONMatch3 userIdentity];
      lookupInfo2 = [userIdentity2 lookupInfo];
      v26 = lookupInfo2;
      if (emailAddress)
      {
        [lookupInfo2 emailAddress];
      }

      else
      {
        [lookupInfo2 phoneNumber];
      }
      v33 = ;

      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = sub_10000A9FC;
      v45 = sub_10000AA0C;
      v46 = 0;
      singleOONMatch4 = [(ShareAcceptor *)self singleOONMatch];
      participantID = [singleOONMatch4 participantID];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000FED4;
      v37[3] = &unk_100028B98;
      v37[4] = self;
      v29 = v33;
      v38 = v29;
      v40 = &v41;
      v30 = v34;
      v39 = v30;
      [(ShareAcceptor *)self _initiateVettingForParticipantID:participantID address:v29 andThen:v37];

      dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
      if (match)
      {
        *match = v42[5];
      }

      _Block_object_dispose(&v41, 8);
      v16 = firstObject;
    }
  }

  CFRelease(v18);

  return 0;
}

- (BOOL)_requestSelectionFromMultipleOONMatches:(id *)matches
{
  _showVettingAlert = [(ShareAcceptor *)self _showVettingAlert];
  v6 = _showVettingAlert;
  if (_showVettingAlert && [_showVettingAlert code] != 1)
  {
    v7 = +[CKVettingAlerts alertContentForGenericInitiateVettingError];
    [CKVettingAlerts showFailureAlert:v7 isSourceICS:[(ShareAcceptor *)self isSourceICS]];
  }

  if (matches)
  {
    v8 = v6;
    *matches = v6;
  }

  return 0;
}

- (id)_iosShowVettingAlert
{
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  outOfNetworkMatches = [shareMetadata outOfNetworkMatches];
  v5 = [outOfNetworkMatches count];

  if (!v5)
  {
    v59 = +[NSAssertionHandler currentHandler];
    v60 = [(ShareAcceptor *)self url];
    [v59 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:1326 description:{@"Vetting initiated for non-OON share, %@", v60}];
  }

  v66 = +[NSMutableArray array];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  selfCopy = self;
  shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
  outOfNetworkMatches2 = [shareMetadata2 outOfNetworkMatches];

  obj = outOfNetworkMatches2;
  v67 = [outOfNetworkMatches2 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v67)
  {
    v65 = *v81;
    while (2)
    {
      for (i = 0; i != v67; i = i + 1)
      {
        if (*v81 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v80 + 1) + 8 * i);
        userIdentity = [v9 userIdentity];
        lookupInfo = [userIdentity lookupInfo];
        emailAddress = [lookupInfo emailAddress];
        if (emailAddress)
        {
        }

        else
        {
          userIdentity2 = [v9 userIdentity];
          lookupInfo2 = [userIdentity2 lookupInfo];
          phoneNumber = [lookupInfo2 phoneNumber];

          if (!phoneNumber)
          {
            v41 = CKUnderlyingErrorDomain;
            userIdentity3 = [v9 userIdentity];
            lookupInfo3 = [userIdentity3 lookupInfo];
            v43 = [CKPrettyError errorWithDomain:v41 code:8001 format:@"Got OON participant's lookup info without an email address or phone number: %@", lookupInfo3];
            goto LABEL_41;
          }
        }

        participantID = [v9 participantID];
        userIdentity4 = [v9 userIdentity];
        lookupInfo4 = [userIdentity4 lookupInfo];
        emailAddress2 = [lookupInfo4 emailAddress];
        if (emailAddress2)
        {
          userIdentity5 = [v9 userIdentity];
          lookupInfo5 = [userIdentity5 lookupInfo];
          emailAddress3 = [lookupInfo5 emailAddress];
          v69 = emailAddress3;
        }

        else
        {
          emailAddress3 = &stru_1000291A0;
        }

        userIdentity6 = [v9 userIdentity];
        lookupInfo6 = [userIdentity6 lookupInfo];
        phoneNumber2 = [lookupInfo6 phoneNumber];
        if (phoneNumber2)
        {
          userIdentity7 = [v9 userIdentity];
          lookupInfo7 = [userIdentity7 lookupInfo];
          phoneNumber3 = [lookupInfo7 phoneNumber];
          v24 = phoneNumber3;
        }

        else
        {
          v24 = &stru_1000291A0;
        }

        v25 = [NSString stringWithFormat:@"%@:%@:%@", participantID, emailAddress3, v24];
        [v66 addObject:v25];

        if (phoneNumber2)
        {
        }

        if (emailAddress2)
        {
        }
      }

      v67 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (v67)
      {
        continue;
      }

      break;
    }
  }

  v26 = [v66 componentsJoinedByString:{@", "}];
  v76 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  obj = v26;
  v71 = [v26 stringByAddingPercentEncodingWithAllowedCharacters:v76];
  shareName = [(ShareAcceptor *)selfCopy shareName];
  v27 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v28 = [shareName stringByAddingPercentEncodingWithAllowedCharacters:v27];
  shareMetadata3 = [(ShareAcceptor *)selfCopy shareMetadata];
  share = [shareMetadata3 share];
  v31 = [share URL];
  absoluteString = [v31 absoluteString];
  v33 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v34 = [absoluteString stringByAddingPercentEncodingWithAllowedCharacters:v33];
  v35 = [NSString stringWithFormat:@"prefs:root=APPLE_ACCOUNT&aaaction=oonAddressVetting&potentialMatches=%@&sharedItem=%@&shareURL=%@", v71, v28, v34];
  v77 = [NSURL URLWithString:v35];

  localBundleIDsToDisplayNames = [(ShareAcceptor *)selfCopy localBundleIDsToDisplayNames];
  if ([localBundleIDsToDisplayNames count])
  {
    [(ShareAcceptor *)selfCopy localBundleIDsToDisplayNames];
    v38 = v37 = selfCopy;
    allKeys = [v38 allKeys];
    lookupInfo3 = [allKeys firstObject];
  }

  else
  {
    [(ShareAcceptor *)selfCopy registeredAppBundleIDs];
    v38 = v37 = selfCopy;
    lookupInfo3 = [v38 firstObject];
  }

  shareName2 = [(ShareAcceptor *)v37 shareName];
  shareMetadata4 = [(ShareAcceptor *)v37 shareMetadata];
  ownerIdentity = [shareMetadata4 ownerIdentity];
  nameComponents = [ownerIdentity nameComponents];
  shareMetadata5 = [(ShareAcceptor *)v37 shareMetadata];
  share2 = [shareMetadata5 share];
  v50 = [share2 objectForKeyedSubscript:CKShareTypeKey];
  v51 = [CKVettingAlerts alertContentForFullVettingBindingPromptWithBundleID:lookupInfo3 shareName:shareName2 ownerName:nameComponents shareType:v50 isSourceICS:[(ShareAcceptor *)v37 isSourceICS]];

  v52 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v51);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v52, 604800.0, &responseFlags);
  if ((responseFlags & 3) != 0)
  {
    v53 = [(ShareAcceptor *)v37 url];
    v43 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Share (%@) acceptance cancelled by the user. Email/phone number vetting cancelled.", v53];
    userIdentity3 = v77;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    userIdentity3 = v77;
    v54 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v85 = v77;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Redirecting user to iCloud preferences using URL: %{public}@", buf, 0xCu);
    }

    v53 = [CKVettingAlerts getLaunchingOptionsFromOptions:0 isSourceICS:[(ShareAcceptor *)selfCopy isSourceICS]];
    v55 = +[LSApplicationWorkspace defaultWorkspace];
    v78 = 0;
    v56 = [v55 openSensitiveURL:v77 withOptions:v53 error:&v78];
    v43 = v78;

    if ((v56 & 1) == 0)
    {
      if (!v43)
      {
        v61 = +[NSAssertionHandler currentHandler];
        [v61 handleFailureInMethod:a2 object:selfCopy file:@"ShareAcceptor.m" lineNumber:1370 description:@"openSensitiveURL failed without error"];
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v57 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v85 = v43;
        _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to open iCloud settings: %@", buf, 0xCu);
      }
    }
  }

  CFRelease(v52);
LABEL_41:

  return v43;
}

- (void)_initiateVettingForParticipantID:(id)d address:(id)address andThen:(id)then
{
  dCopy = d;
  addressCopy = address;
  thenCopy = then;
  v11 = [CKInitiateParticipantVettingOperation alloc];
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  v13 = [v11 initWithShareMetadata:shareMetadata participantID:dCopy address:addressCopy];

  resolvedConfiguration = [v13 resolvedConfiguration];
  [resolvedConfiguration setRequestOriginator:2];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10000A9FC;
  v23[4] = sub_10000AA0C;
  v24 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100010C08;
  v22[3] = &unk_100028B00;
  v22[4] = v23;
  v15 = objc_retainBlock(v22);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100010C18;
  v19[3] = &unk_100028B28;
  v21 = v23;
  v16 = thenCopy;
  v20 = v16;
  v17 = objc_retainBlock(v19);
  metadataIndicatedContainer = [(ShareAcceptor *)self metadataIndicatedContainer];
  [v13 retryTimes:2 container:metadataIndicatedContainer participantVettingInitiatedBlock:v15 participantVettingInitiationCompletionBlock:v17];

  _Block_object_dispose(v23, 8);
}

- (id)_deduplicateBundleToNamesMapping:(id)mapping
{
  mappingCopy = mapping;
  allValues = [mappingCopy allValues];
  v5 = [NSSet setWithArray:allValues];
  v6 = [v5 count];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010D7C;
  v9[3] = &unk_100028B48;
  v10 = v6 < [allValues count];
  v7 = [mappingCopy CKMapKeysAndValues:v9];

  return v7;
}

- (id)chooseFromMultipleBundleIDs
{
  localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  v4 = [(ShareAcceptor *)self _deduplicateBundleToNamesMapping:localBundleIDsToDisplayNames];

  v5 = [(ShareAcceptor *)self _iosShowAppSelectionDialogWithTitlesDictionary:v4];

  return v5;
}

- (id)_iosShowAppSelectionDialogWithTitlesDictionary:(id)dictionary
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  dictionaryCopy = dictionary;
  obj = [dictionaryCopy allValues];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = 0;
    v5 = 0;
    v6 = *v25;
    v7 = &UIApplicationMain_ptr;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = objc_alloc(v7[205]);
        v23 = 0;
        v11 = [v10 initWithBundleIdentifier:v9 allowPlaceholder:0 error:&v23];
        v12 = v23;
        if (v11)
        {
          if (!v5 || ([v11 registrationDate], v13 = v7, v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "compare:", v22), v14, v7 = v13, v15 == 1))
          {
            v16 = v9;

            registrationDate = [v11 registrationDate];

            v22 = registrationDate;
            v5 = v16;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  else
  {
    v22 = 0;
    v5 = 0;
  }

  [(ShareAcceptor *)self setChosenAppBundleID:v5];
  return 0;
}

- (BOOL)_validateShareURL:(id *)l
{
  v4 = [(ShareAcceptor *)self url];

  if (!v4)
  {
    v5 = [CKPrettyError errorWithDomain:CKErrorDomain code:12 format:@"Asked to accept a nil url"];
    [(ShareAcceptor *)self setFallbackFlowCause:v5];

    [(ShareAcceptor *)self setState:17];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = [(ShareAcceptor *)self url];
    cKURLSlug = [v6 CKURLSlug];
    if ([cKURLSlug isEqual:kCKPhotosEPPMomentShareURLSlug])
    {
      v8 = __sTestOverridesAvailable;

      if ((v8 & 1) == 0)
      {
        v9 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Redirecting to the web."];
        [(ShareAcceptor *)self setFallbackFlowCause:v9];

        [(ShareAcceptor *)self setState:23];
      }
    }

    else
    {
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v10 = [(ShareAcceptor *)self url];
    cKURLSlug2 = [v10 CKURLSlug];
    if ([cKURLSlug2 isEqual:kCKPhotosSharedCollectionsShareURLSlug])
    {
      v12 = __sTestOverridesAvailable;

      if ((v12 & 1) == 0)
      {
        v13 = [CKPrettyError errorWithDomain:CKErrorDomain code:1 format:@"Redirecting to the web."];
        [(ShareAcceptor *)self setFallbackFlowCause:v13];

        [(ShareAcceptor *)self setState:23];
      }
    }

    else
    {
    }
  }

  return 1;
}

- (BOOL)_notifyBladeRunner:(id *)runner
{
  v4 = [(ShareAcceptor *)self url];
  v5 = [(ShareAcceptor *)self _shouldSendURLToBladeRunner:v4];

  if (v5)
  {
    v6 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.bird" options:0];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKXPCShareDaemon];
    [v6 setRemoteObjectInterface:v7];

    [v6 resume];
    remoteObjectProxy = [v6 remoteObjectProxy];
    v9 = [(ShareAcceptor *)self url];
    [remoteObjectProxy willAcceptShareAtURL:v9];
  }

  return 1;
}

- (BOOL)shouldShowRequestAccess
{
  v3 = +[ShareAcceptor primaryAppleAccount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aa_isManagedAppleID] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  if (shareMetadata)
  {
    shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
    outOfNetworkMatches = [shareMetadata2 outOfNetworkMatches];
    v9 = [outOfNetworkMatches count] != 0;
  }

  else
  {
    v9 = 0;
  }

  shareMetadata3 = [(ShareAcceptor *)self shareMetadata];
  callingParticipant = [shareMetadata3 callingParticipant];
  if (callingParticipant)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    shareMetadata4 = [(ShareAcceptor *)self shareMetadata];
    v12 = [shareMetadata4 accessRequestsEnabled] & !v9 & v5;
  }

  v14 = +[CKBehaviorOptions sharedOptions];
  if ([v14 isAppleInternalInstall])
  {
    v15 = +[CKBehaviorOptions sharedOptions];
    v16 = [v15 alwaysShowShareAccessRequestUI] & !v9;
  }

  else
  {
    v16 = 0;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v17 = v12 | v16;
  v18 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    if (v17)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    log = v18;
    shareMetadata5 = [(ShareAcceptor *)self shareMetadata];
    callingParticipant2 = [shareMetadata5 callingParticipant];
    v21 = v4;
    if (callingParticipant2)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    shareMetadata6 = [(ShareAcceptor *)self shareMetadata];
    *buf = 138413570;
    if ([shareMetadata6 accessRequestsEnabled])
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v32 = v19;
    if (v9)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v33 = 2112;
    if (v5)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v34 = v22;
    v4 = v21;
    if (v16)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    v41 = 2112;
    v42 = v27;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[Share] showRequestAccess=%@ (callingParticipant=%@, accessRequestsEnabled=%@, outOfNetworkMatches=%@, primaryAccountSupportsShareAccess=%@, forced=%@)", buf, 0x3Eu);
  }

  return v17 & 1;
}

- (BOOL)_fetchMetadata:(id *)metadata
{
  shareMetadata = [(ShareAcceptor *)self shareMetadata];

  if (!shareMetadata)
  {
    fetchMetadata = [(ShareAcceptor *)self fetchMetadata];
    if (fetchMetadata)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v6 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
        *v55 = 138412546;
        *&v55[4] = shareMetadata2;
        *&v55[12] = 2112;
        *&v55[14] = fetchMetadata;
        v9 = "Received share metadata %@, error %@";
        v10 = v7;
        v11 = 22;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, v55, v11);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v7 = v12;
        shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
        *v55 = 138412290;
        *&v55[4] = shareMetadata2;
        v9 = "Received share metadata %@";
        v10 = v7;
        v11 = 12;
        goto LABEL_11;
      }
    }

    if ([(ShareAcceptor *)self shouldShowRequestAccess:*v55])
    {
      domain = [fetchMetadata domain];
      if ([domain isEqualToString:CKErrorDomain])
      {
        code = [fetchMetadata code];

        if (code == 2)
        {
          userInfo = [fetchMetadata userInfo];
          v16 = [userInfo objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
          v17 = [(ShareAcceptor *)self url];
          v18 = [v16 objectForKeyedSubscript:v17];

          [(ShareAcceptor *)self setFallbackFlowCause:v18];
          v19 = 19;
          fetchMetadata = v18;
          goto LABEL_67;
        }
      }

      else
      {
      }

      v19 = 19;
      goto LABEL_67;
    }

    shareMetadata3 = [(ShareAcceptor *)self shareMetadata];

    if (shareMetadata3)
    {
LABEL_64:
      if (__sTestOverridesAvailable != 1 || ![(ShareAcceptor *)self shouldTerminateAfterFetchingMetadata])
      {
        goto LABEL_68;
      }

      v19 = 26;
LABEL_67:
      [(ShareAcceptor *)self setState:v19];
LABEL_68:

      return 1;
    }

    domain2 = [fetchMetadata domain];
    if ([domain2 isEqualToString:CKErrorDomain])
    {
      code2 = [fetchMetadata code];

      if (code2 != 2)
      {
        goto LABEL_21;
      }

      domain2 = [fetchMetadata userInfo];
      v23 = [domain2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v24 = [(ShareAcceptor *)self url];
      v25 = [v23 objectForKeyedSubscript:v24];

      fetchMetadata = v25;
    }

LABEL_21:
    domain3 = [fetchMetadata domain];
    if ([domain3 isEqualToString:CKErrorDomain])
    {
      if ([fetchMetadata code] == 9)
      {

LABEL_35:
        v32 = [(ShareAcceptor *)self url];
        v33 = [(ShareAcceptor *)self _shouldShowICloudLoginPrompt:v32];

        if (v33)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v34 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v35 = v34;
            v36 = [(ShareAcceptor *)self url];
            cKURLThroughSlug = [v36 CKURLThroughSlug];
            v38 = [(ShareAcceptor *)self url];
            cKPathAfterSlug = [v38 CKPathAfterSlug];
            *v55 = 138543874;
            *&v55[4] = cKURLThroughSlug;
            *&v55[12] = 2160;
            *&v55[14] = 1752392040;
            *&v55[22] = 2112;
            v56 = cKPathAfterSlug;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Got unauthenticated response when fetching share metadata for URL %{public}@%{mask.hash}@, showing login prompt", v55, 0x20u);
          }

          goto LABEL_58;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v45 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
        {
          v46 = v45;
          v47 = [(ShareAcceptor *)self url];
          cKURLThroughSlug2 = [v47 CKURLThroughSlug];
          v49 = [(ShareAcceptor *)self url];
          cKPathAfterSlug2 = [v49 CKPathAfterSlug];
          *v55 = 138543874;
          *&v55[4] = cKURLThroughSlug2;
          *&v55[12] = 2160;
          *&v55[14] = 1752392040;
          *&v55[22] = 2112;
          v56 = cKPathAfterSlug2;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Got unauthenticated response when fetching share metadata for URL %{public}@%{mask.hash}@, forwarding to web", v55, 0x20u);
        }

        [(ShareAcceptor *)self setFallbackFlowCause:fetchMetadata];
        [(ShareAcceptor *)self setWebFlowReason:@"notSignedIn"];
        goto LABEL_54;
      }

      code3 = [fetchMetadata code];

      if (code3 == 115)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    domain4 = [fetchMetadata domain];
    if ([domain4 isEqualToString:CKErrorDomain])
    {
      code4 = [fetchMetadata code];

      if (code4 == 6)
      {
        [(ShareAcceptor *)self setFallbackFlowCause:fetchMetadata];
        v29 = 21;
LABEL_63:
        [(ShareAcceptor *)self setState:v29];
        goto LABEL_64;
      }
    }

    else
    {
    }

    domain5 = [fetchMetadata domain];
    if ([domain5 isEqualToString:CKErrorDomain])
    {
      if ([fetchMetadata code] == 3)
      {

LABEL_60:
        [(ShareAcceptor *)self setFallbackFlowCause:fetchMetadata];
        v29 = 20;
        goto LABEL_63;
      }

      code5 = [fetchMetadata code];

      if (code5 == 4)
      {
        goto LABEL_60;
      }
    }

    else
    {
    }

    domain6 = [fetchMetadata domain];
    if ([domain6 isEqualToString:CKErrorDomain] && objc_msgSend(fetchMetadata, "code") == 12)
    {
      v41 = [(ShareAcceptor *)self url];
      v42 = [(ShareAcceptor *)self _urlIsALegacyiWorkShareURL:v41];

      if (v42)
      {
        [(ShareAcceptor *)self setFallbackFlowCause:fetchMetadata];
LABEL_54:
        v29 = 23;
        goto LABEL_63;
      }
    }

    else
    {
    }

    domain7 = [fetchMetadata domain];
    if ([domain7 isEqualToString:CKErrorDomain])
    {
      code6 = [fetchMetadata code];

      if (code6 == 20)
      {
        [(ShareAcceptor *)self setFallbackFlowCause:0];
        v29 = 26;
        goto LABEL_63;
      }
    }

    else
    {
    }

    domain8 = [fetchMetadata domain];
    if ([domain8 isEqualToString:CKErrorDomain])
    {
      code7 = [fetchMetadata code];

      if (code7 == 110)
      {
LABEL_58:
        [(ShareAcceptor *)self setFallbackFlowCause:fetchMetadata];
        v29 = 22;
        goto LABEL_63;
      }
    }

    else
    {
    }

    [(ShareAcceptor *)self setFallbackFlowCause:fetchMetadata];
    v29 = 17;
    goto LABEL_63;
  }

  return 1;
}

- (BOOL)_urlIsALegacyiWorkShareURL:(id)l
{
  lCopy = l;
  if ([(ShareAcceptor *)self _urlIsAniWorkShareURL:lCopy])
  {
    v5 = [(ShareAcceptor *)self _urlHasALongToken:lCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_urlHasALongToken:(id)token
{
  tokenCopy = token;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    cKURLThroughSlug = [tokenCopy CKURLThroughSlug];
    cKPathAfterSlug = [tokenCopy CKPathAfterSlug];
    v25 = 138543874;
    v26 = cKURLThroughSlug;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = cKPathAfterSlug;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Verifying token length for URL %{public}@%{mask.hash}@", &v25, 0x20u);
  }

  v8 = [[NSURLComponents alloc] initWithURL:tokenCopy resolvingAgainstBaseURL:0];
  path = [v8 path];
  lastPathComponent = [path lastPathComponent];

  if ([lastPathComponent length] > 3)
  {
    v16 = [lastPathComponent substringFromIndex:3];
    v17 = [NSData CKDataFromBase64URLSafeString:v16];
    v18 = [v17 length];
    v15 = v18 > 0x10;
    if (v18 >= 0x11)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v21 = v19;
        v22 = [v17 length];
        cKURLThroughSlug2 = [tokenCopy CKURLThroughSlug];
        cKPathAfterSlug2 = [tokenCopy CKPathAfterSlug];
        v25 = 134218754;
        v26 = v22;
        v27 = 2114;
        v28 = cKURLThroughSlug2;
        v29 = 2160;
        v30 = 1752392040;
        v31 = 2112;
        v32 = cKPathAfterSlug2;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Found shortSharingTokenData of length (%lu) for the URL %{public}@%{mask.hash}@. Forwarding to the web", &v25, 0x2Au);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      cKURLThroughSlug3 = [tokenCopy CKURLThroughSlug];
      cKPathAfterSlug3 = [tokenCopy CKPathAfterSlug];
      v25 = 138543874;
      v26 = cKURLThroughSlug3;
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2112;
      v30 = cKPathAfterSlug3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't get a short token for the URL %{public}@%{mask.hash}@", &v25, 0x20u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)_lookUpRegisteredBundleIDs:(id *)ds
{
  v6 = [(ShareAcceptor *)self url];
  v7 = [(ShareAcceptor *)self _shouldSendURLToBladeRunner:v6];

  if (v7)
  {
    shareMetadata = [(ShareAcceptor *)self shareMetadata];
    outOfNetworkMatches = [shareMetadata outOfNetworkMatches];
    v10 = [outOfNetworkMatches count];

    if (v10)
    {
      v11 = [(ShareAcceptor *)self url];
      cKBladerunnerShareURLSlugBasedVettingKeySuffix = [v11 CKBladerunnerShareURLSlugBasedVettingKeySuffix];

      if (!cKBladerunnerShareURLSlugBasedVettingKeySuffix)
      {
        v30 = +[NSAssertionHandler currentHandler];
        v31 = [(ShareAcceptor *)self url];
        [v30 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:1761 description:{@"Got a nil vettingKeySuffix for URL: %@", v31}];
      }

      v44 = cKBladerunnerShareURLSlugBasedVettingKeySuffix;
      v13 = [NSArray arrayWithObjects:&v44 count:1];
      [(ShareAcceptor *)self setRegisteredAppBundleIDs:v13];
    }

    else
    {
      v45 = @"com.apple.bird";
      cKBladerunnerShareURLSlugBasedVettingKeySuffix = [NSArray arrayWithObjects:&v45 count:1];
      [(ShareAcceptor *)self setRegisteredDaemonBundleIDs:cKBladerunnerShareURLSlugBasedVettingKeySuffix];
    }

    v24 = [(ShareAcceptor *)self url];
    v25 = [(ShareAcceptor *)self _urlIsAniWorkShareURL:v24];

    if (v25)
    {
      v26 = [(ShareAcceptor *)self url];
      shareMetadata2 = [(ShareAcceptor *)self shareMetadata];
      share = [shareMetadata2 share];
      [share setMutableURL:v26];
    }

    return 1;
  }

  v14 = [(ShareAcceptor *)self url];
  v15 = [(ShareAcceptor *)self _shouldSendURLToPhotos:v14];

  if (v15)
  {
    v43 = @"com.apple.mobileslideshow";
    v16 = [NSArray arrayWithObjects:&v43 count:1];
    [(ShareAcceptor *)self setRegisteredAppBundleIDs:v16];

    return 1;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000A9FC;
  v41 = sub_10000AA0C;
  v42 = 0;
  objc_initWeak(&location, self);
  v17 = dispatch_semaphore_create(0);
  v18 = objc_opt_new();
  resolvedConfiguration = [v18 resolvedConfiguration];
  [resolvedConfiguration setRequestOriginator:2];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000125E4;
  v32[3] = &unk_100028B70;
  objc_copyWeak(&v35, &location);
  v34 = &v37;
  v20 = v17;
  v33 = v20;
  [v18 setFetchRegisteredBundleIDsCompletionBlock:v32];
  metadataIndicatedContainer = [(ShareAcceptor *)self metadataIndicatedContainer];
  [metadataIndicatedContainer addOperation:v18];

  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  v22 = v38[5];
  v23 = v22 == 0;
  if (ds && v22)
  {
    *ds = v22;
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v37, 8);

  return v23;
}

- (BOOL)_handleAppleInternalDaemon:(id)daemon response:(id)response error:(id *)error
{
  daemonCopy = daemon;
  responseCopy = response;
  [(ShareAcceptor *)self setState:26];
  if (responseCopy)
  {
    if (error)
    {
      v10 = responseCopy;
      *error = responseCopy;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = daemonCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Daemon %{public}@ handled the share successfully, terminating", &v13, 0xCu);
    }
  }

  return responseCopy == 0;
}

- (BOOL)_handlePotentialAppleInternalDaemon:(id *)daemon
{
  registeredDaemonBundleIDs = [(ShareAcceptor *)self registeredDaemonBundleIDs];

  if (registeredDaemonBundleIDs)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(ShareAcceptor *)self registeredDaemonBundleIDs];
    v35 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v35)
    {
      v34 = *v45;
      *&v5 = 138544130;
      v30 = v5;
      do
      {
        v6 = 0;
        do
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v44 + 1) + 8 * v6);
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v8 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v9 = v8;
            v10 = [(ShareAcceptor *)self url];
            cKURLThroughSlug = [v10 CKURLThroughSlug];
            v12 = [(ShareAcceptor *)self url];
            cKPathAfterSlug = [v12 CKPathAfterSlug];
            *buf = v30;
            *&buf[4] = v7;
            *&buf[12] = 2114;
            *&buf[14] = cKURLThroughSlug;
            *&buf[22] = 2160;
            v51 = 1752392040;
            LOWORD(v52) = 2112;
            *(&v52 + 2) = cKPathAfterSlug;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Trying to call daemon %{public}@ for sharing URL %{public}@%{mask.hash}@", buf, 0x2Au);
          }

          v14 = [[NSXPCConnection alloc] initWithMachServiceName:v7 options:0];
          v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKXPCShareDaemon];
          [v14 setRemoteObjectInterface:v15];

          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100013014;
          v43[3] = &unk_100028718;
          v43[4] = v7;
          [v14 setInvalidationHandler:v43];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1000130EC;
          v42[3] = &unk_100028718;
          v42[4] = v7;
          [v14 setInterruptionHandler:v42];
          [v14 resume];
          v16 = dispatch_semaphore_create(0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v51 = sub_10000A9FC;
          *&v52 = sub_10000AA0C;
          *(&v52 + 1) = 0;
          if ([v7 isEqualToString:@"com.apple.bird"])
          {
            [(ShareAcceptor *)self setState:9];
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v17 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            *v48 = 138543362;
            v49 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Invoking request on xpcconnection %{public}@", v48, 0xCu);
          }

          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000131C4;
          v39[3] = &unk_100028920;
          v39[4] = v7;
          v41 = buf;
          v18 = v16;
          v40 = v18;
          v19 = [v14 remoteObjectProxyWithErrorHandler:v39];
          shareMetadata = [(ShareAcceptor *)self shareMetadata];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1000132E0;
          v36[3] = &unk_100028B98;
          v38 = buf;
          v36[4] = v7;
          v36[5] = self;
          v21 = v18;
          v37 = v21;
          [v19 handleCloudKitShareMetadata:shareMetadata completionHandler:v36];

          v22 = dispatch_time(0, 200000000);
          v23 = dispatch_semaphore_wait(v21, v22);
          v24 = *(*&buf[8] + 40);
          if (!v23)
          {
            goto LABEL_31;
          }

          if (!v24)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v25 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
            {
              *v48 = 138543362;
              v49 = v7;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Daemon %{public}@ seems to have started handling handleCloudKitShareMetadata call. Adjusting state to make sure 'Retrieving...' dialog doesn't show up/gets dismissed", v48, 0xCu);
            }

            [(ShareAcceptor *)self setState:9, v30];
          }

          v26 = dispatch_time(0, 60000000000);
          if (!dispatch_semaphore_wait(v21, v26))
          {
            v24 = *(*&buf[8] + 40);
LABEL_31:
            v33 = [(ShareAcceptor *)self _handleAppleInternalDaemon:v7 response:v24 error:daemon, v30];
            v28 = 0;
            goto LABEL_32;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v27 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            *v48 = 138543362;
            v49 = v14;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Timed out waiting for daemon to handle share; soldiering on. %{public}@", v48, 0xCu);
          }

          v28 = 1;
LABEL_32:

          _Block_object_dispose(buf, 8);
          if (!v28)
          {
            goto LABEL_36;
          }

          v6 = v6 + 1;
        }

        while (v35 != v6);
        v35 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v35);
    }

    v33 = 1;
LABEL_36:
  }

  else
  {
    v33 = 1;
  }

  return v33 & 1;
}

- (int64_t)_lookUpLocalBundleIDs:(id *)ds success:(BOOL *)success
{
  registeredAppBundleIDs = [(ShareAcceptor *)self registeredAppBundleIDs];

  if (registeredAppBundleIDs)
  {
    registeredAppBundleIDs2 = [(ShareAcceptor *)self registeredAppBundleIDs];
    v9 = CKSelectLocalAppNamesByBundleIDs();

    [(ShareAcceptor *)self setLocalBundleIDsToDisplayNames:v9];
    *success = 1;

    return 10;
  }

  else
  {
    if (ds)
    {
      v11 = CKUnderlyingErrorDomain;
      v12 = [(ShareAcceptor *)self url];
      *ds = [CKPrettyError errorWithDomain:v11 code:1000 format:@"No registered bundle IDs exist for share URL: %@", v12];
    }

    *success = 0;
    return 26;
  }
}

- (BOOL)_promptAppSelection:(id *)selection
{
  localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
  v7 = [localBundleIDsToDisplayNames count];

  if (!v7)
  {
    v21 = +[NSAssertionHandler currentHandler];
    v22 = [(ShareAcceptor *)self url];
    [v21 handleFailureInMethod:a2 object:self file:@"ShareAcceptor.m" lineNumber:1922 description:{@"Got round to prompting for app selection, but no apps present. Share URL: %@", v22}];
  }

  if (-[ShareAcceptor shareNeedsAcceptance](self, "shareNeedsAcceptance") || (-[ShareAcceptor localBundleIDsToDisplayNames](self, "localBundleIDsToDisplayNames"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9 >= 2))
  {
    localBundleIDsToDisplayNames2 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
    v11 = [localBundleIDsToDisplayNames2 count];

    if (v11 == 1)
    {
      [(ShareAcceptor *)self promptForSingleBundleID];
    }

    else
    {
      [(ShareAcceptor *)self chooseFromMultipleBundleIDs];
    }
    v12 = ;
  }

  else
  {
    localBundleIDsToDisplayNames3 = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
    allKeys = [localBundleIDsToDisplayNames3 allKeys];
    firstObject = [allKeys firstObject];
    [(ShareAcceptor *)self setChosenAppBundleID:firstObject];

    v12 = 0;
  }

  chosenAppBundleID = [(ShareAcceptor *)self chosenAppBundleID];

  if (!chosenAppBundleID)
  {
    if (!v12)
    {
      v17 = CKUnderlyingErrorDomain;
      v18 = [(ShareAcceptor *)self url];
      v12 = [CKPrettyError errorWithDomain:v17 code:1000 format:@"No app selected (likely cancellation). While handling sharing URL: %@", v18];
    }

    if (selection)
    {
      v19 = v12;
      *selection = v12;
    }
  }

  return chosenAppBundleID != 0;
}

- (BOOL)_authenticateUsers:(id *)users
{
  chosenAppBundleID = [(ShareAcceptor *)self chosenAppBundleID];
  if (chosenAppBundleID)
  {
    v6 = chosenAppBundleID;
    shareNeedsAcceptance = [(ShareAcceptor *)self shareNeedsAcceptance];

    if (shareNeedsAcceptance)
    {
      chosenAppBundleID2 = [(ShareAcceptor *)self chosenAppBundleID];
      v9 = [APApplication applicationWithBundleIdentifier:chosenAppBundleID2];

      if (!v9)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v15 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to initialize App Protection Subject for some reason. Skipping authentication.", buf, 2u);
        }

        LOBYTE(v11) = 1;
        goto LABEL_18;
      }

      v10 = +[APGuard sharedGuard];
      v19 = 0;
      v11 = [v10 authenticateSyncForSubject:v9 error:&v19];
      v12 = v19;

      if (v11 && !v12)
      {
        goto LABEL_9;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v13 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v17 = v13;
        chosenAppBundleID3 = [(ShareAcceptor *)self chosenAppBundleID];
        *buf = 138412546;
        v21 = chosenAppBundleID3;
        v22 = 2112;
        v23 = v12;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Failed to authenticate user for bundle %@. Error: %@", buf, 0x16u);

        if (!users)
        {
          goto LABEL_11;
        }
      }

      else
      {
LABEL_9:
        if (!users)
        {
LABEL_11:

LABEL_18:
          return v11;
        }
      }

      v14 = v12;
      *users = v12;
      goto LABEL_11;
    }
  }

  LOBYTE(v11) = 1;
  return v11;
}

- (BOOL)_verifySelectedApp:(id *)app
{
  chosenAppBundleID = [(ShareAcceptor *)self chosenAppBundleID];
  v20 = 0;
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:chosenAppBundleID allowPlaceholder:0 error:&v20];
  v6 = v20;
  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v22 = chosenAppBundleID;
    v8 = "Failed to initialize LSApplicationRecord for selected app verification with bundle id %@.";
  }

  else
  {
    if (v5)
    {
      infoDictionary = [v5 infoDictionary];

      if (infoDictionary)
      {
        infoDictionary2 = [v5 infoDictionary];
        v11 = [infoDictionary2 objectForKey:@"CKSharingSupported" ofClass:objc_opt_class()];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v22 = chosenAppBundleID;
    v8 = "LSApplicationRecord with bundle id %@ is nil or has no infoDictionary.";
  }

  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
LABEL_15:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

LABEL_17:
  v13 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    chosenAppBundleID2 = [(ShareAcceptor *)self chosenAppBundleID];
    *buf = 138543362;
    v22 = chosenAppBundleID2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "User needs to update app %{public}@ to a version that supports sharing", buf, 0xCu);
  }

  [(ShareAcceptor *)self setState:25];
  v16 = CKUnderlyingErrorDomain;
  v17 = [(ShareAcceptor *)self url];
  v18 = [CKPrettyError errorWithDomain:v16 code:1000 format:@"Selected app doesn't support sharing: %@. Share URL %@", chosenAppBundleID, v17];
  [(ShareAcceptor *)self setFallbackFlowCause:v18];

LABEL_20:
  return 1;
}

- (BOOL)_checkDataclassProvisioned
{
  metadataIndicatedContainer = [(ShareAcceptor *)self metadataIndicatedContainer];
  containerID = [metadataIndicatedContainer containerID];
  specialContainerType = [containerID specialContainerType];

  if (specialContainerType == 5)
  {
    return 1;
  }

  selectedAccount = [(ShareAcceptor *)self selectedAccount];
  metadataIndicatedContainer2 = [(ShareAcceptor *)self metadataIndicatedContainer];
  containerID2 = [metadataIndicatedContainer2 containerID];

  v6 = 0;
  if (selectedAccount && containerID2)
  {
    representativeDataclass = [containerID2 representativeDataclass];
    if (representativeDataclass)
    {
      v6 = [selectedAccount isProvisionedForDataclass:representativeDataclass];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)_checkDataclassEnabled
{
  metadataIndicatedContainer = [(ShareAcceptor *)self metadataIndicatedContainer];
  containerID = [metadataIndicatedContainer containerID];
  specialContainerType = [containerID specialContainerType];

  if (specialContainerType == 5)
  {
    return 1;
  }

  selectedAccount = [(ShareAcceptor *)self selectedAccount];
  metadataIndicatedContainer2 = [(ShareAcceptor *)self metadataIndicatedContainer];
  containerID2 = [metadataIndicatedContainer2 containerID];

  v6 = 0;
  if (selectedAccount && containerID2)
  {
    representativeDataclass = [containerID2 representativeDataclass];
    if (representativeDataclass)
    {
      representativeDataclass2 = [containerID2 representativeDataclass];
      v6 = [selectedAccount isEnabledForDataclass:representativeDataclass2];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (int64_t)_handlePotentialOONMatches
{
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  outOfNetworkMatches = [shareMetadata outOfNetworkMatches];
  v5 = [outOfNetworkMatches count];

  if (!v5)
  {
    return 15;
  }

  return [(ShareAcceptor *)self initiateVetting];
}

- (BOOL)_launchApp:(id *)app
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000A9FC;
  v25 = sub_10000AA0C;
  v26 = 0;
  shareMetadata = [(ShareAcceptor *)self shareMetadata];
  v6 = [UIHandleCloudKitShareAction cloudKitShareActionWithShareMetadata:shareMetadata];

  v28 = FBSOpenApplicationOptionKeyActions;
  v27 = v6;
  v7 = [NSArray arrayWithObjects:&v27 count:1];
  v29 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v9 = [CKVettingAlerts getLaunchingOptionsFromOptions:v8 isSourceICS:[(ShareAcceptor *)self isSourceICS]];

  v10 = [FBSOpenApplicationOptions optionsWithDictionary:v9];
  v11 = dispatch_semaphore_create(0);
  v12 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  chosenAppBundleID = [(ShareAcceptor *)self chosenAppBundleID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000142A8;
  v18[3] = &unk_100028BC0;
  v20 = &v21;
  v14 = v11;
  v19 = v14;
  [v12 openApplication:chosenAppBundleID withOptions:v10 completion:v18];

  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v22[5];
  if (app && v15)
  {
    v15 = v15;
    *app = v15;
  }

  v16 = v15 == 0;

  _Block_object_dispose(&v21, 8);
  return v16;
}

- (BOOL)makeStateTransition:(id *)transition
{
  _getShareName = 1;
  switch([(ShareAcceptor *)self state])
  {
    case 0:
      [(ShareAcceptor *)self setState:1];
      return [(ShareAcceptor *)self _validateShareURL:transition];
    case 1:
      [(ShareAcceptor *)self setState:2];
      return [(ShareAcceptor *)self _notifyBladeRunner:transition];
    case 2:
      [(ShareAcceptor *)self setState:4];
      _getShareName = [(ShareAcceptor *)self _fetchMetadata:transition];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        return _getShareName;
      }

      v8 = v10;
      shareMetadata = [(ShareAcceptor *)self shareMetadata];
      registeredDaemonBundleIDs = [(ShareAcceptor *)self url];
      cKURLThroughSlug = [registeredDaemonBundleIDs CKURLThroughSlug];
      v14 = [(ShareAcceptor *)self url];
      cKPathAfterSlug = [v14 CKPathAfterSlug];
      *buf = 138413058;
      v29 = shareMetadata;
      v30 = 2114;
      v31 = cKURLThroughSlug;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = cKPathAfterSlug;
      v16 = "Share metadata %@ ready, for sharing URL: %{public}@%{mask.hash}@";
      goto LABEL_38;
    case 3:
      [(ShareAcceptor *)self setState:11];
      _getShareName = [(ShareAcceptor *)self _promptAppSelection:transition];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v18 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        return _getShareName;
      }

      v8 = v18;
      shareMetadata = [(ShareAcceptor *)self chosenAppBundleID];
      registeredDaemonBundleIDs = [(ShareAcceptor *)self url];
      cKURLThroughSlug = [registeredDaemonBundleIDs CKURLThroughSlug];
      v14 = [(ShareAcceptor *)self url];
      cKPathAfterSlug = [v14 CKPathAfterSlug];
      *buf = 138544130;
      v29 = shareMetadata;
      v30 = 2114;
      v31 = cKURLThroughSlug;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = cKPathAfterSlug;
      v16 = "User wants to open share in app %{public}@, for sharing URL: %{public}@%{mask.hash}@";
      goto LABEL_38;
    case 4:
      [(ShareAcceptor *)self setState:5];
      _getShareName = [(ShareAcceptor *)self _getShareName];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v7 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        return _getShareName;
      }

      v8 = v7;
      shareName = [(ShareAcceptor *)self shareName];
      *buf = 138412290;
      v29 = shareName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Share name: %@", buf, 0xCu);

      goto LABEL_40;
    case 5:
      [(ShareAcceptor *)self setState:6];
      _getShareName = [(ShareAcceptor *)self _lookUpRegisteredBundleIDs:transition];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        return _getShareName;
      }

      v8 = v19;
      shareMetadata = [(ShareAcceptor *)self registeredAppBundleIDs];
      registeredDaemonBundleIDs = [(ShareAcceptor *)self registeredDaemonBundleIDs];
      cKURLThroughSlug = [(ShareAcceptor *)self url];
      v13CKURLThroughSlug = [cKURLThroughSlug CKURLThroughSlug];
      v21 = [(ShareAcceptor *)self url];
      cKPathAfterSlug2 = [v21 CKPathAfterSlug];
      *buf = 138413314;
      v29 = shareMetadata;
      v30 = 2114;
      v31 = registeredDaemonBundleIDs;
      v32 = 2114;
      v33 = v13CKURLThroughSlug;
      v34 = 2160;
      v35 = 1752392040;
      v36 = 2112;
      v37 = cKPathAfterSlug2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Registered bundle IDs fetched: apps: %@ / daemons: %{public}@, for sharing URL: %{public}@%{mask.hash}@", buf, 0x34u);

      goto LABEL_39;
    case 6:
      [(ShareAcceptor *)self setState:8];
      return [(ShareAcceptor *)self _handlePotentialAppleInternalDaemon:transition];
    case 7:
      [(ShareAcceptor *)self setState:16];
      return [(ShareAcceptor *)self _launchApp:transition];
    case 8:
      [(ShareAcceptor *)self setState:[(ShareAcceptor *)self _lookUpLocalBundleIDs:transition success:&_getShareName]];
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        return _getShareName;
      }

      v8 = v23;
      shareMetadata = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
      registeredDaemonBundleIDs = [(ShareAcceptor *)self url];
      cKURLThroughSlug = [registeredDaemonBundleIDs CKURLThroughSlug];
      v14 = [(ShareAcceptor *)self url];
      cKPathAfterSlug = [v14 CKPathAfterSlug];
      *buf = 138544130;
      v29 = shareMetadata;
      v30 = 2114;
      v31 = cKURLThroughSlug;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = cKPathAfterSlug;
      v16 = "Local bundle IDs found: %{public}@, for sharing URL: %{public}@%{mask.hash}@";
LABEL_38:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v16, buf, 0x2Au);

LABEL_39:
LABEL_40:

      return _getShareName;
    case 9:
    case 0x10:
      goto LABEL_47;
    case 0xALL:
      [(ShareAcceptor *)self setState:[(ShareAcceptor *)self _handlePotentialOONMatches]];
      return 1;
    case 0xBLL:
      [(ShareAcceptor *)self setState:12];
      return [(ShareAcceptor *)self _verifySelectedApp:transition];
    case 0xCLL:
      [(ShareAcceptor *)self setState:7];
      return [(ShareAcceptor *)self _authenticateUsers:transition];
    case 0xDLL:
      [(ShareAcceptor *)self setState:26];
      return [(ShareAcceptor *)self _initiateVettingOfSingleOONMatch:transition];
    case 0xELL:
      [(ShareAcceptor *)self setState:26];
      return [(ShareAcceptor *)self _requestSelectionFromMultipleOONMatches:transition];
    case 0xFLL:
      localBundleIDsToDisplayNames = [(ShareAcceptor *)self localBundleIDsToDisplayNames];
      -[ShareAcceptor setState:](self, "setState:", -[ShareAcceptor _checkRepresentativeDataclassEnabled:](self, "_checkRepresentativeDataclassEnabled:", [localBundleIDsToDisplayNames count] != 0));

      return 1;
    case 0x11:
      v17 = [(ShareAcceptor *)self _fallbackFlowWarnShareUnavailable:transition];
      goto LABEL_46;
    case 0x12:
      v17 = [(ShareAcceptor *)self _fallbackFlowWarnUnprovisionedDataclass:transition];
      goto LABEL_46;
    case 0x13:
      v17 = [(ShareAcceptor *)self _fallbackFlowShareAccessRequest:transition];
      goto LABEL_46;
    case 0x14:
      v17 = [(ShareAcceptor *)self _fallbackFlowWarnNetworkUnavailable:transition];
      goto LABEL_46;
    case 0x15:
      v17 = [(ShareAcceptor *)self _fallbackFlowWarnServiceUnavailable:transition];
      goto LABEL_46;
    case 0x16:
      v24 = [(ShareAcceptor *)self _fallbackFlowICloudAccountSettings:transition success:&_getShareName];
      selfCopy2 = self;
      goto LABEL_48;
    case 0x17:
      v17 = [(ShareAcceptor *)self _fallbackFlowWebRedirect:transition];
      goto LABEL_46;
    case 0x18:
      v17 = [(ShareAcceptor *)self _fallbackFlowDownloadApp:transition];
      goto LABEL_46;
    case 0x19:
      v17 = [(ShareAcceptor *)self _fallbackFlowDownloadAppUpdate:transition];
LABEL_46:
      _getShareName = v17;
LABEL_47:
      selfCopy2 = self;
      v24 = 26;
LABEL_48:
      [(ShareAcceptor *)selfCopy2 setState:v24];
      break;
    default:
      return _getShareName;
  }

  return _getShareName;
}

- (void)acceptShareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ShareAcceptor *)selfCopy accepting])
  {
    v30 = +[NSAssertionHandler currentHandler];
    [v30 handleFailureInMethod:a2 object:selfCopy file:@"ShareAcceptor.m" lineNumber:2276 description:@"ShareAcceptor isn't meant to be used for multiple accepts."];
  }

  [(ShareAcceptor *)selfCopy setAccepting:1];
  objc_sync_exit(selfCopy);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(ShareAcceptor *)selfCopy url];
    cKURLThroughSlug = [v7 CKURLThroughSlug];
    v9 = [(ShareAcceptor *)selfCopy url];
    cKPathAfterSlug = [v9 CKPathAfterSlug];
    *buf = 138543874;
    v35 = cKURLThroughSlug;
    v36 = 2160;
    v37 = 1752392040;
    v38 = 2112;
    v39 = cKPathAfterSlug;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Accepting share for url %{public}@%{mask.hash}@", buf, 0x20u);
  }

  retrievingDialog = [(ShareAcceptor *)selfCopy retrievingDialog];
  [retrievingDialog schedule];

  v12 = 0;
  while (1)
  {
    state = [(ShareAcceptor *)selfCopy state];
    v33 = v12;
    v14 = [(ShareAcceptor *)selfCopy makeStateTransition:&v33];
    v15 = v33;

    cancelled = [(ShareAcceptor *)selfCopy cancelled];
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [(ShareAcceptor *)selfCopy url];
      cKURLThroughSlug2 = [v19 CKURLThroughSlug];
      v21 = [(ShareAcceptor *)selfCopy url];
      cKPathAfterSlug2 = [v21 CKPathAfterSlug];
      v23 = off_100028BE0[[(ShareAcceptor *)selfCopy state]];
      v24 = @"false";
      if (v14)
      {
        v25 = @"true";
      }

      else
      {
        v25 = @"false";
      }

      *buf = 138544898;
      if (cancelled)
      {
        v24 = @"true";
      }

      v35 = cKURLThroughSlug2;
      v36 = 2160;
      v37 = 1752392040;
      v38 = 2112;
      v39 = cKPathAfterSlug2;
      v40 = 2080;
      v41 = v23;
      v42 = 2114;
      v43 = v25;
      v44 = 2114;
      v45 = v24;
      v46 = 2112;
      v47 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Share acceptance for URL: %{public}@%{mask.hash}@, completed [%s]. Success=%{public}@, cancelled: %{public}@, error: %@", buf, 0x48u);
    }

    if (cancelled & 1 | ((v14 & 1) == 0))
    {
      break;
    }

    if ([(ShareAcceptor *)selfCopy state]== state)
    {
      v26 = +[NSAssertionHandler currentHandler];
      [v26 handleFailureInMethod:a2 object:selfCopy file:@"ShareAcceptor.m" lineNumber:2299 description:{@"State %s hasn't been advanced", off_100028BE0[state]}];
    }

    v12 = v15;
    if ([(ShareAcceptor *)selfCopy state]== 26)
    {
      cancelled = 0;
      break;
    }
  }

  [(ShareAcceptor *)selfCopy setState:26];
  if (v15)
  {
    v27 = 1;
  }

  else
  {
    v27 = v14;
  }

  if ((v27 & 1) == 0)
  {
    state2 = [(ShareAcceptor *)selfCopy state];
    v15 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:1000 format:@"Failure accepting share while in [%s]", off_100028BE0[state2]];
  }

  if (v15)
  {
    v29 = 0;
  }

  else
  {
    v29 = cancelled;
  }

  if (v29 == 1)
  {
    v15 = [CKPrettyError errorWithDomain:CKUnderlyingErrorDomain code:1000 format:@"Acceptance cancelled by the user"];
  }

  handlerCopy[2](handlerCopy, v15);
}

@end