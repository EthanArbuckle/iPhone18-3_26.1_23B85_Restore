@interface ASCWebKitSPISupport
+ (BOOL)arePasskeysDisallowedForRelyingParty:(id)a3;
+ (BOOL)canCurrentProcessAccessPasskeysForRelyingParty:(id)a3;
+ (BOOL)shouldApplyWorkaroundFor134591531;
+ (BOOL)shouldUseAlternateCredentialStore;
+ (id)alternateLargeBlobIfNecessaryForRelyingParty:(id)a3 clientDataHash:(id)a4;
+ (id)asTransportsFrom:(id)a3;
+ (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)a3;
+ (id)wkTransportsFrom:(id)a3;
+ (void)getArePasskeysDisallowedForRelyingParty:(id)a3 withCompletionHandler:(id)a4;
+ (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)a3 withCompletionHandler:(id)a4;
+ (void)getClientCapabilitiesForRelyingParty:(NSString *)a3 withCompletionHandler:(id)a4;
+ (void)resetCredentialStore;
+ (void)setShouldUseAlternateCredentialStore:(BOOL)a3;
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

  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 processName];
  if (([v6 isEqualToString:@"AuthenticationServicesAgent"] & 1) == 0)
  {

    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v8 = [v7 BOOLForKey:@"useLegacyPlatformAuthenticatorInternal"];

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

+ (void)setShouldUseAlternateCredentialStore:(BOOL)a3
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring request to turn off passkeys.", v4, 2u);
  }
}

+ (BOOL)arePasskeysDisallowedForRelyingParty:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  if (([v6 isEqualToString:@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", authenticationServicesViewServiceBundleIdentifier) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.Preferences"))
  {

LABEL_5:
    v7 = +[ASFeatureManager sharedManager];
    v8 = [v7 arePasskeysDisallowedForRelyingParty:v4];
    goto LABEL_6;
  }

  v10 = [v5 safari_isSafariFamilyApplicationBundle];

  if (v10)
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
  [a1 getArePasskeysDisallowedForRelyingParty:v4 withCompletionHandler:v13];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v17[24];

  _Block_object_dispose(buf, 8);
LABEL_6:

  return v8 & 1;
}

+ (void)getArePasskeysDisallowedForRelyingParty:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = getArePasskeysDisallowedForRelyingParty_withCompletionHandler__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[ASCWebKitSPISupport getArePasskeysDisallowedForRelyingParty:withCompletionHandler:];
  }

  v8 = getArePasskeysDisallowedForRelyingParty_withCompletionHandler__agentProxy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__ASCWebKitSPISupport_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E81602B0;
  v11 = v5;
  v9 = v5;
  [v8 getArePasskeysDisallowedForRelyingParty:v7 withCompletionHandler:v10];
}

uint64_t __85__ASCWebKitSPISupport_getArePasskeysDisallowedForRelyingParty_withCompletionHandler___block_invoke()
{
  getArePasskeysDisallowedForRelyingParty_withCompletionHandler__agentProxy = objc_alloc_init(ASCAgentProxy);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)canCurrentProcessAccessPasskeysForRelyingParty:(id)a3
{
  v4 = a3;
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
  [a1 getCanCurrentProcessAccessPasskeysForRelyingParty:v4 withCompletionHandler:v8];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(a1) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return a1;
}

+ (void)getCanCurrentProcessAccessPasskeysForRelyingParty:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[ASCWebKitSPISupport getCanCurrentProcessAccessPasskeysForRelyingParty:withCompletionHandler:];
  }

  v8 = getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler__agentProxy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__ASCWebKitSPISupport_getCanCurrentProcessAccessPasskeysForRelyingParty_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E81602B0;
  v11 = v5;
  v9 = v5;
  [v8 getCanCurrentProcessAccessPasskeysForRelyingParty:v7 withCompletionHandler:v10];
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

+ (id)alternateLargeBlobIfNecessaryForRelyingParty:(id)a3 clientDataHash:(id)a4
{
  v4 = a4;
  v5 = sub_1C2170174();
  v7 = v6;

  sub_1C20D3174(v5, v7);

  return 0;
}

+ (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedManager];
  v7 = [v6 entepriseAttestationIdentityPersistentReferenceForRelyingParty_];

  if (v7)
  {
    v8 = sub_1C2170174();
    v10 = v9;

    v7 = sub_1C2170154();
    sub_1C20D3174(v8, v10);
  }

  return v7;
}

+ (void)getClientCapabilitiesForRelyingParty:(NSString *)a3 withCompletionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v16 = a3;
  sub_1C2166D88(0, 0, v10, &unk_1C21768B0, v15);
}

+ (BOOL)shouldApplyWorkaroundFor134591531
{
  v2 = [objc_opt_self() processInfo];
  [v2 operatingSystemVersion];

  if (v4 == 15)
  {
    return v5 < 2;
  }

  else
  {
    return v4 < 15;
  }
}

+ (id)wkTransportsFrom:(id)a3
{
  v3 = sub_1C2170B64();
  _sSo19ASCWebKitSPISupportC26AuthenticationServicesCoreE12wkTransports4fromSaySo8NSNumberCGSaySSG_tFZ_0(v3);

  sub_1C2149AA4();
  v4 = sub_1C2170B54();

  return v4;
}

+ (id)asTransportsFrom:(id)a3
{
  sub_1C2149AA4();
  v3 = sub_1C2170B64();
  _sSo19ASCWebKitSPISupportC26AuthenticationServicesCoreE12asTransports4fromSaySSGSaySo8NSNumberCG_tFZ_0(v3);

  v4 = sub_1C2170B54();

  return v4;
}

@end