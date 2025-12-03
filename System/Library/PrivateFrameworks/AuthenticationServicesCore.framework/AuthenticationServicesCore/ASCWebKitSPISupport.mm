@interface ASCWebKitSPISupport
+ (BOOL)arePasskeysDisallowedForRelyingParty:(id)party;
+ (BOOL)canCurrentProcessAccessPasskeysForRelyingParty:(id)party;
+ (BOOL)shouldApplyWorkaroundFor134591531;
+ (BOOL)shouldUseAlternateCredentialStore;
+ (id)alternateLargeBlobIfNecessaryForRelyingParty:(id)party clientDataHash:(id)hash;
+ (id)asTransportsFrom:(id)from;
+ (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)party;
+ (id)wkTransportsFrom:(id)from;
+ (void)getArePasskeysDisallowedForRelyingParty:(id)party withCompletionHandler:(id)handler;
+ (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)party withCompletionHandler:(id)handler;
+ (void)getClientCapabilitiesForRelyingParty:(NSString *)party withCompletionHandler:(id)handler;
+ (void)resetCredentialStore;
+ (void)setShouldUseAlternateCredentialStore:(BOOL)store;
@end

@implementation ASCWebKitSPISupport

+ (BOOL)shouldUseAlternateCredentialStore
{
  v2 = getpwnam("_securityagent");
  if (v2)
  {
    pw_uid = v2->pw_uid;
  }

  else
  {
    pw_uid = 92;
  }

  if (getuid() == pw_uid)
  {
    goto LABEL_5;
  }

  if (![MEMORY[0x1E69C8880] isInternalInstall])
  {
    goto LABEL_12;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  if (([processName isEqualToString:@"AuthenticationServicesAgent"] & 1) == 0)
  {

    goto LABEL_12;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v8 = [safari_browserDefaults BOOLForKey:@"useLegacyPlatformAuthenticatorInternal"];

  if (!v8)
  {
LABEL_12:
    LOBYTE(v4) = 1;
    return v4;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  v4 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    return v4;
  }

  *v11 = 0;
  _os_log_impl(&dword_1C20AD000, v9, OS_LOG_TYPE_DEFAULT, "Using legacy platform authenticator due to syncingPlatformAuthenticatorEnabled", v11, 2u);
LABEL_5:
  LOBYTE(v4) = 0;
  return v4;
}

+ (void)setShouldUseAlternateCredentialStore:(BOOL)store
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring request to turn off passkeys.", v4, 2u);
  }
}

+ (BOOL)arePasskeysDisallowedForRelyingParty:(id)party
{
  partyCopy = party;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if (([bundleIdentifier isEqualToString:@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", authenticationServicesViewServiceBundleIdentifier) & 1) != 0 || objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.Preferences"))
  {

LABEL_5:
    v7 = +[ASFeatureManager sharedManager];
    v8 = [v7 arePasskeysDisallowedForRelyingParty:partyCopy];
    goto LABEL_6;
  }

  safari_isSafariFamilyApplicationBundle = [mainBundle safari_isSafariFamilyApplicationBundle];

  if (safari_isSafariFamilyApplicationBundle)
  {
    goto LABEL_5;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C20AD000, v11, OS_LOG_TYPE_INFO, "Synchronously looking up passkey quirks.", buf, 2u);
  }

  v12 = dispatch_group_create();
  *buf = 0;
  v17 = buf;
  v18 = 0x2020000000;
  v19 = 0;
  dispatch_group_enter(v12);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__ASCWebKitSPISupport_arePasskeysDisallowedForRelyingParty___block_invoke;
  v13[3] = &unk_1E8160288;
  v15 = buf;
  v7 = v12;
  v14 = v7;
  [self getArePasskeysDisallowedForRelyingParty:partyCopy withCompletionHandler:v13];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v17[24];

  _Block_object_dispose(buf, 8);
LABEL_6:

  return v8 & 1;
}

+ (void)getArePasskeysDisallowedForRelyingParty:(id)party withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = getArePasskeysDisallowedForRelyingParty_withCompletionHandler__onceToken;
  partyCopy = party;
  if (v6 != -1)
  {
    +[ASCWebKitSPISupport getArePasskeysDisallowedForRelyingParty:withCompletionHandler:];
  }

  v8 = getArePasskeysDisallowedForRelyingParty_withCompletionHandler__agentProxy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__ASCWebKitSPISupport_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E81602B0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 getArePasskeysDisallowedForRelyingParty:partyCopy withCompletionHandler:v10];
}

uint64_t __85__ASCWebKitSPISupport_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke()
{
  getArePasskeysDisallowedForRelyingParty_withCompletionHandler__agentProxy = objc_alloc_init(ASCAgentProxy);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)canCurrentProcessAccessPasskeysForRelyingParty:(id)party
{
  partyCopy = party;
  v5 = dispatch_group_create();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatch_group_enter(v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__ASCWebKitSPISupport_canCurrentProcessAccessPasskeysForRelyingParty___block_invoke;
  v8[3] = &unk_1E8160288;
  v10 = &v11;
  v6 = v5;
  v9 = v6;
  [self getCanCurrentProcessAccessPasskeysForRelyingParty:partyCopy withCompletionHandler:v8];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

+ (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)party withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler__onceToken;
  partyCopy = party;
  if (v6 != -1)
  {
    +[ASCWebKitSPISupport getCanCurrentProcessAccessPasskeysForRelyingParty:withCompletionHandler:];
  }

  v8 = getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler__agentProxy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__ASCWebKitSPISupport_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E81602B0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 getCanCurrentProcessAccessPasskeysForRelyingParty:partyCopy withCompletionHandler:v10];
}

uint64_t __95__ASCWebKitSPISupport_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke()
{
  getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler__agentProxy = objc_alloc_init(ASCAgentProxy);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)resetCredentialStore
{
  v2 = objc_alloc_init(ASCAgentProxy);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__ASCWebKitSPISupport_resetCredentialStore__block_invoke;
  v4[3] = &unk_1E815F9D0;
  v5 = v2;
  v3 = v2;
  [(ASCAgentProxy *)v3 clearAllPlatformPublicKeyCredentialsWithCompletionHandler:v4];
}

void __43__ASCWebKitSPISupport_resetCredentialStore__block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C20AD000, v0, OS_LOG_TYPE_DEFAULT, "Cleared credential store.", v1, 2u);
  }
}

+ (id)alternateLargeBlobIfNecessaryForRelyingParty:(id)party clientDataHash:(id)hash
{
  hashCopy = hash;
  v5 = sub_1C2170174();
  v7 = v6;

  sub_1C20D3174(v5, v7);

  return 0;
}

+ (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)party
{
  v4 = objc_opt_self();
  partyCopy = party;
  sharedManager = [v4 sharedManager];
  entepriseAttestationIdentityPersistentReferenceForRelyingParty_ = [sharedManager entepriseAttestationIdentityPersistentReferenceForRelyingParty_];

  if (entepriseAttestationIdentityPersistentReferenceForRelyingParty_)
  {
    v8 = sub_1C2170174();
    v10 = v9;

    entepriseAttestationIdentityPersistentReferenceForRelyingParty_ = sub_1C2170154();
    sub_1C20D3174(v8, v10);
  }

  return entepriseAttestationIdentityPersistentReferenceForRelyingParty_;
}

+ (void)getClientCapabilitiesForRelyingParty:(NSString *)party withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = party;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1C2170BE4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C217F418;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1C21799C0;
  v15[5] = v14;
  partyCopy = party;
  sub_1C2166D88(0, 0, v10, &unk_1C21768B0, v15);
}

+ (BOOL)shouldApplyWorkaroundFor134591531
{
  processInfo = [objc_opt_self() processInfo];
  [processInfo operatingSystemVersion];

  if (v4 == 15)
  {
    return v5 < 2;
  }

  else
  {
    return v4 < 15;
  }
}

+ (id)wkTransportsFrom:(id)from
{
  v3 = sub_1C2170B64();
  _sSo19ASCWebKitSPISupportC26AuthenticationServicesCoreE12wkTransports4fromSaySo8NSNumberCGSaySSG_tFZ_0(v3);

  sub_1C2149AA4();
  v4 = sub_1C2170B54();

  return v4;
}

+ (id)asTransportsFrom:(id)from
{
  sub_1C2149AA4();
  v3 = sub_1C2170B64();
  _sSo19ASCWebKitSPISupportC26AuthenticationServicesCoreE12asTransports4fromSaySSGSaySo8NSNumberCG_tFZ_0(v3);

  v4 = sub_1C2170B54();

  return v4;
}

@end