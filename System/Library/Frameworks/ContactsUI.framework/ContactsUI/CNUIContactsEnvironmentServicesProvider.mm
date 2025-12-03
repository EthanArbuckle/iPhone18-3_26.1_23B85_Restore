@interface CNUIContactsEnvironmentServicesProvider
+ (id)applicationWorkspace;
+ (id)capabilities;
+ (id)defaultUserActionFetcher;
+ (id)idsIDQueryControllerWrapper;
+ (id)recentsManagerWithSchedulerProvider:(id)provider;
+ (id)suggestionsService;
@end

@implementation CNUIContactsEnvironmentServicesProvider

+ (id)applicationWorkspace
{
  v2 = objc_alloc_init(MEMORY[0x1E6996A98]);

  return v2;
}

+ (id)suggestionsService
{
  serviceForContacts = [(objc_class *)getSGSuggestionsServiceClass() serviceForContacts];
  [serviceForContacts setSyncTimeout:0.2];

  return serviceForContacts;
}

+ (id)idsIDQueryControllerWrapper
{
  v2 = objc_alloc(MEMORY[0x1E6996B78]);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getIDSIDQueryControllerClass_softClass_50627;
  v12 = getIDSIDQueryControllerClass_softClass_50627;
  if (!getIDSIDQueryControllerClass_softClass_50627)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getIDSIDQueryControllerClass_block_invoke_50628;
    v8[3] = &unk_1E74E7518;
    v8[4] = &v9;
    __getIDSIDQueryControllerClass_block_invoke_50628(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  sharedInstance = [v3 sharedInstance];
  v6 = [v2 initWithController:sharedInstance];

  return v6;
}

+ (id)defaultUserActionFetcher
{
  v2 = objc_alloc_init(MEMORY[0x1E6996B50]);

  return v2;
}

+ (id)capabilities
{
  v2 = objc_alloc_init(MEMORY[0x1E6996A88]);

  return v2;
}

+ (id)recentsManagerWithSchedulerProvider:(id)provider
{
  v3 = getCRRecentContactsLibraryClass_50636;
  providerCopy = provider;
  v5 = objc_alloc_init(v3());
  v6 = [objc_alloc(MEMORY[0x1E6996B38]) initWithRecentsLibrary:v5 schedulerProvider:providerCopy];

  return v6;
}

@end