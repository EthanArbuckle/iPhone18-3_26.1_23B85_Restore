@interface _LSDIconClient
- (void)getAlternateIconNameForIdentifier:(id)a3 reply:(id)a4;
- (void)setAlternateIconName:(id)a3 forIdentifier:(id)a4 iconsDictionary:(id)a5 reply:(id)a6;
- (void)setAlternateIconNameForCurrentApplication:(id)a3 completionHandler:(id)a4;
@end

@implementation _LSDIconClient

- (void)setAlternateIconName:(id)a3 forIdentifier:(id)a4 iconsDictionary:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_LSDClient *)self XPCConnection];
  v15 = [v14 _xpcConnection];
  v16 = _LSCopyBundleIdentifierForXPCConnection(v15, 0);

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
    v19 = [v16 isEqualToString:v11];
  }

  v20 = _LSCheckEntitlementForAuditToken(&v23, @"com.apple.lsapplicationworkspace.rebuildappdatabases");
  v21 = _LSCheckEntitlementForAuditToken(&v23, @"com.apple.private.coreservices.cansetalternateicons");
  if ((v19 & 1) != 0 || v20 || v21)
  {
    v22 = [LSAltIconManager sharedInstance:v23];
    [v22 setAlternateIconName:v10 forIdentifier:v11 iconsDictionary:v12 reply:v13];
  }

  else
  {
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDIconClient setAlternateIconName:forIdentifier:iconsDictionary:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDIconService.m", 84);
    v13[2](v13, 0, v22);
  }
}

- (void)getAlternateIconNameForIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58___LSDIconClient_getAlternateIconNameForIdentifier_reply___block_invoke;
  v17[3] = &unk_1E6A1BCA0;
  v17[4] = self;
  v8 = MEMORY[0x1865D71B0](v17);
  v9 = [(_LSDClient *)self XPCConnection];
  v10 = [v9 _xpcConnection];
  if (_LSXPCConnectionMayMapDatabase(v10))
  {
  }

  else
  {
    v11 = v8[2](v8);
    v12 = [v11 isEqualToString:v6];

    if (!v12)
    {
      v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDIconClient getAlternateIconNameForIdentifier:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDIconService.m", 105);
      v7[2](v7, 0, v14);
      goto LABEL_5;
    }
  }

  v13 = +[LSAltIconManager sharedInstance];
  v16 = 0;
  v14 = [v13 alternateIconNameForIdentifier:v6 error:&v16];
  v15 = v16;

  (v7)[2](v7, v14, v15);
LABEL_5:
}

- (void)setAlternateIconNameForCurrentApplication:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v8 = [(_LSDClient *)self XPCConnection];
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
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
    [v11 changeIconWithAlertForApplicationIdentity:v22[5] withIconsDictionary:v16[5] toAlternateIconName:v6 completion:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

@end