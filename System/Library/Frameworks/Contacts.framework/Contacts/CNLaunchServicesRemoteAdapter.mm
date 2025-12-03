@interface CNLaunchServicesRemoteAdapter
+ (id)createConnectionWithInterface:(id)interface;
+ (id)launchServicesAdapterInterface;
+ (id)os_log;
- (void)applicationForBundleIdentifier:(id)identifier withReply:(id)reply;
- (void)applicationsAvailableForDefaultAppCategory:(id)category withReply:(id)reply;
- (void)applicationsAvailableForHandlingURLScheme:(id)scheme withReply:(id)reply;
- (void)applicationsForUserActivityType:(id)type withReply:(id)reply;
- (void)defaultApplicationForDefaultAppCategory:(id)category withReply:(id)reply;
- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options withReply:(id)reply;
- (void)openUserActivityData:(id)data inApplication:(id)application withReply:(id)reply;
@end

@implementation CNLaunchServicesRemoteAdapter

+ (id)os_log
{
  if (os_log_cn_once_token_0_22 != -1)
  {
    +[CNLaunchServicesRemoteAdapter os_log];
  }

  v3 = os_log_cn_once_object_0_22;

  return v3;
}

uint64_t __39__CNLaunchServicesRemoteAdapter_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.contactsd", "launch-services");
  v1 = os_log_cn_once_object_0_22;
  os_log_cn_once_object_0_22 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)launchServicesAdapterInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09AEAB0];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_applicationsForUserActivityType_withReply_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_applicationsForUserActivityType_withReply_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_applicationsForUserActivityType_withReply_ argumentIndex:1 ofReply:1];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_applicationsAvailableForHandlingURLScheme_withReply_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_applicationsAvailableForHandlingURLScheme_withReply_ argumentIndex:0 ofReply:1];

  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_applicationsAvailableForHandlingURLScheme_withReply_ argumentIndex:1 ofReply:1];

  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_applicationsAvailableForDefaultAppCategory_withReply_ argumentIndex:0 ofReply:0];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v2 setClasses:v16 forSelector:sel_applicationsAvailableForDefaultAppCategory_withReply_ argumentIndex:0 ofReply:1];

  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_applicationsAvailableForDefaultAppCategory_withReply_ argumentIndex:1 ofReply:1];

  v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v18 forSelector:sel_defaultApplicationForDefaultAppCategory_withReply_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v2 setClasses:v21 forSelector:sel_defaultApplicationForDefaultAppCategory_withReply_ argumentIndex:0 ofReply:1];

  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v22 forSelector:sel_defaultApplicationForDefaultAppCategory_withReply_ argumentIndex:1 ofReply:1];

  v23 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_applicationForBundleIdentifier_withReply_ argumentIndex:0 ofReply:0];

  v24 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v24 forSelector:sel_applicationForBundleIdentifier_withReply_ argumentIndex:0 ofReply:1];

  v25 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v25 forSelector:sel_applicationForBundleIdentifier_withReply_ argumentIndex:1 ofReply:1];

  v26 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_openUserActivityData_inApplication_withReply_ argumentIndex:0 ofReply:0];

  v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v27 forSelector:sel_openUserActivityData_inApplication_withReply_ argumentIndex:1 ofReply:0];

  v28 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v28 forSelector:sel_openUserActivityData_inApplication_withReply_ argumentIndex:1 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_openSensitiveURLInBackground_withOptions_withReply_ argumentIndex:0 ofReply:0];
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v29 setWithObjects:{v30, v31, v32, objc_opt_class(), 0}];
  [v2 setClasses:v33 forSelector:sel_openSensitiveURLInBackground_withOptions_withReply_ argumentIndex:1 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_openSensitiveURLInBackground_withOptions_withReply_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)createConnectionWithInterface:(id)interface
{
  v4 = MEMORY[0x1E696B0B8];
  interfaceCopy = interface;
  v6 = [[v4 alloc] initWithMachServiceName:@"com.apple.contactsd.launch-services-proxy" options:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CNLaunchServicesRemoteAdapter_createConnectionWithInterface___block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = self;
  [v6 setInterruptionHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CNLaunchServicesRemoteAdapter_createConnectionWithInterface___block_invoke_34;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = self;
  [v6 setInvalidationHandler:v8];
  [v6 setRemoteObjectInterface:interfaceCopy];

  [v6 resume];

  return v6;
}

void __63__CNLaunchServicesRemoteAdapter_createConnectionWithInterface___block_invoke()
{
  v0 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __63__CNLaunchServicesRemoteAdapter_createConnectionWithInterface___block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __63__CNLaunchServicesRemoteAdapter_createConnectionWithInterface___block_invoke_34()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 138412290;
    v2 = @"com.apple.contactsd.launch-services-proxy";
    _os_log_impl(&dword_1954A0000, v0, OS_LOG_TYPE_DEFAULT, "Service connection to %@ was invalidated", &v1, 0xCu);
  }
}

- (void)applicationsForUserActivityType:(id)type withReply:(id)reply
{
  replyCopy = reply;
  typeCopy = type;
  v8 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v10 = [v8 createConnectionWithInterface:launchServicesAdapterInterface];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke;
  v12[3] = &unk_1E7412FA0;
  v12[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 applicationsForUserActivityType:typeCopy withReply:replyCopy];

  [v10 invalidate];
}

void __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

- (void)applicationsAvailableForHandlingURLScheme:(id)scheme withReply:(id)reply
{
  replyCopy = reply;
  schemeCopy = scheme;
  v8 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v10 = [v8 createConnectionWithInterface:launchServicesAdapterInterface];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__CNLaunchServicesRemoteAdapter_applicationsAvailableForHandlingURLScheme_withReply___block_invoke;
  v12[3] = &unk_1E7412FA0;
  v12[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 applicationsAvailableForHandlingURLScheme:schemeCopy withReply:replyCopy];

  [v10 invalidate];
}

void __85__CNLaunchServicesRemoteAdapter_applicationsAvailableForHandlingURLScheme_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

- (void)applicationsAvailableForDefaultAppCategory:(id)category withReply:(id)reply
{
  replyCopy = reply;
  categoryCopy = category;
  v8 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v10 = [v8 createConnectionWithInterface:launchServicesAdapterInterface];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CNLaunchServicesRemoteAdapter_applicationsAvailableForDefaultAppCategory_withReply___block_invoke;
  v12[3] = &unk_1E7412FA0;
  v12[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 applicationsAvailableForDefaultAppCategory:categoryCopy withReply:replyCopy];

  [v10 invalidate];
}

void __86__CNLaunchServicesRemoteAdapter_applicationsAvailableForDefaultAppCategory_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

- (void)defaultApplicationForDefaultAppCategory:(id)category withReply:(id)reply
{
  replyCopy = reply;
  categoryCopy = category;
  v8 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v10 = [v8 createConnectionWithInterface:launchServicesAdapterInterface];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__CNLaunchServicesRemoteAdapter_defaultApplicationForDefaultAppCategory_withReply___block_invoke;
  v12[3] = &unk_1E7412FA0;
  v12[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 defaultApplicationForDefaultAppCategory:categoryCopy withReply:replyCopy];

  [v10 invalidate];
}

void __83__CNLaunchServicesRemoteAdapter_defaultApplicationForDefaultAppCategory_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

- (void)applicationForBundleIdentifier:(id)identifier withReply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  v8 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v10 = [v8 createConnectionWithInterface:launchServicesAdapterInterface];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CNLaunchServicesRemoteAdapter_applicationForBundleIdentifier_withReply___block_invoke;
  v12[3] = &unk_1E7412FA0;
  v12[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 applicationForBundleIdentifier:identifierCopy withReply:replyCopy];

  [v10 invalidate];
}

void __74__CNLaunchServicesRemoteAdapter_applicationForBundleIdentifier_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

- (void)openUserActivityData:(id)data inApplication:(id)application withReply:(id)reply
{
  replyCopy = reply;
  applicationCopy = application;
  dataCopy = data;
  v11 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v13 = [v11 createConnectionWithInterface:launchServicesAdapterInterface];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CNLaunchServicesRemoteAdapter_openUserActivityData_inApplication_withReply___block_invoke;
  v15[3] = &unk_1E7412FA0;
  v15[4] = self;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 openUserActivityData:dataCopy inApplication:applicationCopy withReply:replyCopy];

  [v13 invalidate];
}

void __78__CNLaunchServicesRemoteAdapter_openUserActivityData_inApplication_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options withReply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  backgroundCopy = background;
  v11 = objc_opt_class();
  launchServicesAdapterInterface = [objc_opt_class() launchServicesAdapterInterface];
  v13 = [v11 createConnectionWithInterface:launchServicesAdapterInterface];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__CNLaunchServicesRemoteAdapter_openSensitiveURLInBackground_withOptions_withReply___block_invoke;
  v15[3] = &unk_1E7412FA0;
  v15[4] = self;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 openSensitiveURLInBackground:backgroundCopy withOptions:optionsCopy withReply:replyCopy];

  [v13 invalidate];
}

void __84__CNLaunchServicesRemoteAdapter_openSensitiveURLInBackground_withOptions_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__CNLaunchServicesRemoteAdapter_applicationsForUserActivityType_withReply___block_invoke_cold_1();
  }
}

@end