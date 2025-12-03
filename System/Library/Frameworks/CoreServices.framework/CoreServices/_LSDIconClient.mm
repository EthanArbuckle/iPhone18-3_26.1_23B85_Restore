@interface _LSDIconClient
- (void)getAlternateIconNameForIdentifier:(id)identifier reply:(id)reply;
- (void)setAlternateIconName:(id)name forIdentifier:(id)identifier iconsDictionary:(id)dictionary reply:(id)reply;
- (void)setAlternateIconNameForCurrentApplication:(id)application completionHandler:(id)handler;
@end

@implementation _LSDIconClient

- (void)setAlternateIconName:(id)name forIdentifier:(id)identifier iconsDictionary:(id)dictionary reply:(id)reply
{
  nameCopy = name;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  replyCopy = reply;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  v16 = _LSCopyBundleIdentifierForXPCConnection(_xpcConnection, 0);

  v17 = [(_LSDClient *)self XPCConnection:0];
  v18 = v17;
  if (v17)
  {
    [v17 auditToken];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  if (_os_feature_enabled_impl())
  {
    v19 = 0;
  }

  else
  {
    v19 = [v16 isEqualToString:identifierCopy];
  }

  v20 = _LSCheckEntitlementForAuditToken(&v23, @"com.apple.lsapplicationworkspace.rebuildappdatabases");
  v21 = _LSCheckEntitlementForAuditToken(&v23, @"com.apple.private.coreservices.cansetalternateicons");
  if ((v19 & 1) != 0 || v20 || v21)
  {
    v22 = [LSAltIconManager sharedInstance:v23];
    [v22 setAlternateIconName:nameCopy forIdentifier:identifierCopy iconsDictionary:dictionaryCopy reply:replyCopy];
  }

  else
  {
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDIconClient setAlternateIconName:forIdentifier:iconsDictionary:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDIconService.m", 84);
    replyCopy[2](replyCopy, 0, v22);
  }
}

- (void)getAlternateIconNameForIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58___LSDIconClient_getAlternateIconNameForIdentifier_reply___block_invoke;
  v17[3] = &unk_1E6A1BCA0;
  v17[4] = self;
  v8 = MEMORY[0x1865D71B0](v17);
  xPCConnection = [(_LSDClient *)self XPCConnection];
  _xpcConnection = [xPCConnection _xpcConnection];
  if (_LSXPCConnectionMayMapDatabase(_xpcConnection))
  {
  }

  else
  {
    v11 = v8[2](v8);
    v12 = [v11 isEqualToString:identifierCopy];

    if (!v12)
    {
      v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDIconClient getAlternateIconNameForIdentifier:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDIconService.m", 105);
      replyCopy[2](replyCopy, 0, v14);
      goto LABEL_5;
    }
  }

  v13 = +[LSAltIconManager sharedInstance];
  v16 = 0;
  v14 = [v13 alternateIconNameForIdentifier:identifierCopy error:&v16];
  v15 = v16;

  (replyCopy)[2](replyCopy, v14, v15);
LABEL_5:
}

- (void)setAlternateIconNameForCurrentApplication:(id)application completionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  v27 = 0u;
  v28 = 0u;
  xPCConnection = [(_LSDClient *)self XPCConnection];
  v9 = xPCConnection;
  if (xPCConnection)
  {
    [xPCConnection auditToken];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__18;
  v25 = __Block_byref_object_dispose__18;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__18;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v10 = +[LSDBExecutionContext sharedServerInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78___LSDIconClient_setAlternateIconNameForCurrentApplication_completionHandler___block_invoke;
  v12[3] = &unk_1E6A1BD38;
  v13 = v27;
  v14 = v28;
  v12[4] = &v21;
  v12[5] = &v15;
  [(LSDBExecutionContext *)v10 syncRead:v12];

  if (v22[5])
  {
    v11 = +[LSAltIconManager sharedInstance];
    [v11 changeIconWithAlertForApplicationIdentity:v22[5] withIconsDictionary:v16[5] toAlternateIconName:applicationCopy completion:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

@end