@interface CNUIContactsEnvironment
+ (id)currentEnvironment;
+ (id)makeCurrentEnvironment;
- (BOOL)runningInContactsAppOniPad;
- (CNCapabilities)capabilities;
- (CNCollation)collation;
- (CNContactChangesNotifier)contactChangesNotifier;
- (CNContactStore)contactStore;
- (CNContactStore)inProcessContactStore;
- (CNFavorites)inProcessFavorites;
- (CNGeminiManager)geminiManager;
- (CNHealthStoreManager)healthStoreManager;
- (CNLSApplicationWorkspace)applicationWorkspace;
- (CNUIContactsEnvironment)init;
- (CNUIContactsEnvironment)initWithContactsEnvironment:(id)environment;
- (CNUICoreRecentsManager)recentsManager;
- (CNUIDefaultUserActionFetcher)defaultUserActionFetcher;
- (CNUIExternalComponentsFactory)componentsFactory;
- (CNUIIDSAvailabilityProvider)idsAvailabilityProvider;
- (CNUILikenessRendering)cachingLikenessRenderer;
- (CNUILikenessRendering)cachingMonogramRenderer;
- (CNUIPRLikenessResolver)cachingLikenessResolver;
- (CNUIPlaceholderProviderFactory)placeholderProviderFactory;
- (CNUISchedulerProvider)defaultSchedulerProvider;
- (CNUIUserActionDiscoveringEnvironment)actionDiscoveringEnvironment;
- (CNUIUserActivityManager)inProcessActivityManager;
- (UCollator)nts_lazySortCollator;
- (UCollator)sortCollator;
- (id)nts_lazyActionDiscoveringEnvironment;
- (id)nts_lazyApplicationWorkspace;
- (id)nts_lazyCachingLikenessRenderer;
- (id)nts_lazyCachingLikenessResolver;
- (id)nts_lazyCachingMonogramRenderer;
- (id)nts_lazyCapabilities;
- (id)nts_lazyCollation;
- (id)nts_lazyComponentsFactory;
- (id)nts_lazyContactChangesNotifier;
- (id)nts_lazyContactStore;
- (id)nts_lazyDefaultSchedulerProvider;
- (id)nts_lazyDefaultUserActionFetcher;
- (id)nts_lazyGeminiManager;
- (id)nts_lazyHealthStoreManager;
- (id)nts_lazyIDSAvailabilityProvider;
- (id)nts_lazyInProcessActivityManager;
- (id)nts_lazyInProcessContactStore;
- (id)nts_lazyInProcessFavorites;
- (id)nts_lazyPlaceholderProviderFactory;
- (id)nts_lazyRecentsManager;
- (id)nts_makeActionDiscoveringEnvironment;
- (id)nts_makeCachingLikenessResolver;
- (id)nts_makeContactChangesNotifier;
- (id)nts_makeRecentsManager;
- (void)dealloc;
- (void)setPersonaId:(id)id;
@end

@implementation CNUIContactsEnvironment

uint64_t __45__CNUIContactsEnvironment_currentEnvironment__block_invoke(uint64_t a1)
{
  currentEnvironment_cn_once_object_10 = [*(a1 + 32) makeCurrentEnvironment];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)makeCurrentEnvironment
{
  currentEnvironment = [MEMORY[0x1E695CE38] currentEnvironment];
  v4 = [[self alloc] initWithContactsEnvironment:currentEnvironment];

  return v4;
}

+ (id)currentEnvironment
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CNUIContactsEnvironment_currentEnvironment__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (currentEnvironment_cn_once_token_10 != -1)
  {
    dispatch_once(&currentEnvironment_cn_once_token_10, block);
  }

  v2 = currentEnvironment_cn_once_object_10;

  return v2;
}

- (CNUISchedulerProvider)defaultSchedulerProvider
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyDefaultSchedulerProvider
{
  defaultSchedulerProvider = self->_defaultSchedulerProvider;
  if (!defaultSchedulerProvider)
  {
    v4 = objc_alloc_init(CNUISchedulerProvider);
    v5 = self->_defaultSchedulerProvider;
    self->_defaultSchedulerProvider = v4;

    [(CNUISchedulerProvider *)self->_defaultSchedulerProvider resumeBackgroundScheduler];
    defaultSchedulerProvider = self->_defaultSchedulerProvider;
  }

  return defaultSchedulerProvider;
}

- (CNContactStore)contactStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyContactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
    cnEnvironment = [(CNUIContactsEnvironment *)self cnEnvironment];
    [v4 setEnvironment:cnEnvironment];

    v6 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v4];
    v7 = self->_contactStore;
    self->_contactStore = v6;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (id)nts_lazyInProcessContactStore
{
  inProcessContactStore = self->_inProcessContactStore;
  if (!inProcessContactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
    cnEnvironment = [(CNUIContactsEnvironment *)self cnEnvironment];
    [v4 setEnvironment:cnEnvironment];

    [v4 setIncludeLocalContacts:1];
    [v4 setUseInProcessMapperExclusively:1];
    v6 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v4];
    v7 = self->_inProcessContactStore;
    self->_inProcessContactStore = v6;

    inProcessContactStore = self->_inProcessContactStore;
  }

  return inProcessContactStore;
}

- (id)nts_makeCachingLikenessResolver
{
  nts_lazyDefaultSchedulerProvider = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
  personaId = [(CNUIContactsEnvironment *)self personaId];

  if (personaId)
  {
    v5 = objc_alloc(MEMORY[0x1E6996BB0]);
    personaId2 = [(CNUIContactsEnvironment *)self personaId];
    v7 = [v5 initWithPersonaId:personaId2 schedulerProvider:nts_lazyDefaultSchedulerProvider];
  }

  else
  {
    personaId2 = [(CNUIContactsEnvironment *)self nts_lazyInProcessContactStore];
    v7 = [objc_alloc(MEMORY[0x1E6996BB0]) initWithContactStore:personaId2 schedulerProvider:nts_lazyDefaultSchedulerProvider];
  }

  v8 = v7;

  [v8 setProhibitedSources:8];
  v9 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v8];

  return v9;
}

- (CNUIPRLikenessResolver)cachingLikenessResolver
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyCachingLikenessResolver
{
  cachingLikenessResolver = self->_cachingLikenessResolver;
  if (!cachingLikenessResolver)
  {
    nts_makeCachingLikenessResolver = [(CNUIContactsEnvironment *)self nts_makeCachingLikenessResolver];
    v5 = self->_cachingLikenessResolver;
    self->_cachingLikenessResolver = nts_makeCachingLikenessResolver;

    cachingLikenessResolver = self->_cachingLikenessResolver;
  }

  return cachingLikenessResolver;
}

- (CNUILikenessRendering)cachingLikenessRenderer
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyCachingLikenessRenderer
{
  cachingLikenessRenderer = self->_cachingLikenessRenderer;
  if (!cachingLikenessRenderer)
  {
    v4 = MEMORY[0x1E6996B90];
    nts_lazyCachingLikenessResolver = [(CNUIContactsEnvironment *)self nts_lazyCachingLikenessResolver];
    nts_lazyDefaultSchedulerProvider = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
    v7 = [v4 cachingRendererWithLikenessResolver:nts_lazyCachingLikenessResolver schedulerProvider:nts_lazyDefaultSchedulerProvider];
    v8 = self->_cachingLikenessRenderer;
    self->_cachingLikenessRenderer = v7;

    cachingLikenessRenderer = self->_cachingLikenessRenderer;
  }

  return cachingLikenessRenderer;
}

- (CNContactChangesNotifier)contactChangesNotifier
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyContactChangesNotifier
{
  contactChangesNotifier = self->_contactChangesNotifier;
  if (!contactChangesNotifier)
  {
    nts_makeContactChangesNotifier = [(CNUIContactsEnvironment *)self nts_makeContactChangesNotifier];
    v5 = self->_contactChangesNotifier;
    self->_contactChangesNotifier = nts_makeContactChangesNotifier;

    contactChangesNotifier = self->_contactChangesNotifier;
  }

  return contactChangesNotifier;
}

- (id)nts_makeContactChangesNotifier
{
  nts_lazyInProcessContactStore = [(CNUIContactsEnvironment *)self nts_lazyInProcessContactStore];
  nts_lazyDefaultSchedulerProvider = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
  mainThreadScheduler = [nts_lazyDefaultSchedulerProvider mainThreadScheduler];
  v6 = [objc_alloc(MEMORY[0x1E695CD68]) initWithContactStore:nts_lazyInProcessContactStore downstreamScheduler:mainThreadScheduler schedulerProvider:nts_lazyDefaultSchedulerProvider];

  return v6;
}

- (BOOL)runningInContactsAppOniPad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1 && CNUIIsContacts();

  return v3;
}

- (id)nts_lazyInProcessActivityManager
{
  inProcessActivityManager = self->_inProcessActivityManager;
  if (!inProcessActivityManager)
  {
    nts_lazyInProcessContactStore = [(CNUIContactsEnvironment *)self nts_lazyInProcessContactStore];
    nts_lazyApplicationWorkspace = [(CNUIContactsEnvironment *)self nts_lazyApplicationWorkspace];
    v6 = [objc_alloc(MEMORY[0x1E6996C00]) initWithContactStore:nts_lazyInProcessContactStore applicationWorkspace:nts_lazyApplicationWorkspace];
    v7 = self->_inProcessActivityManager;
    self->_inProcessActivityManager = v6;

    inProcessActivityManager = self->_inProcessActivityManager;
  }

  return inProcessActivityManager;
}

- (CNUIUserActivityManager)inProcessActivityManager
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyApplicationWorkspace
{
  applicationWorkspace = self->_applicationWorkspace;
  if (!applicationWorkspace)
  {
    v4 = +[CNUIContactsEnvironmentServicesProvider applicationWorkspace];
    v5 = self->_applicationWorkspace;
    self->_applicationWorkspace = v4;

    applicationWorkspace = self->_applicationWorkspace;
  }

  return applicationWorkspace;
}

- (id)nts_lazyCollation
{
  collation = self->_collation;
  if (!collation)
  {
    nts_lazySortCollator = [(CNUIContactsEnvironment *)self nts_lazySortCollator];
    v5 = [objc_alloc(MEMORY[0x1E6996680]) initWithCollator:nts_lazySortCollator];
    v6 = self->_collation;
    self->_collation = v5;

    collation = self->_collation;
  }

  return collation;
}

- (UCollator)nts_lazySortCollator
{
  result = self->_sortCollator;
  if (!result)
  {
    defaultSortCollatorIdentifier = [MEMORY[0x1E6996680] defaultSortCollatorIdentifier];
    self->_sortCollator = CNCreateCollatorWithPreferredLocale();

    return self->_sortCollator;
  }

  return result;
}

- (CNCollation)collation
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (CNHealthStoreManager)healthStoreManager
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyHealthStoreManager
{
  healthStoreManager = self->_healthStoreManager;
  if (!healthStoreManager)
  {
    v4 = [[CNHealthStoreManager alloc] initWithEnvironment:self];
    v5 = self->_healthStoreManager;
    self->_healthStoreManager = v4;

    [(CNHealthStoreManager *)self->_healthStoreManager startListeningForChanges];
    healthStoreManager = self->_healthStoreManager;
  }

  return healthStoreManager;
}

- (id)nts_lazyGeminiManager
{
  geminiManager = self->_geminiManager;
  if (!geminiManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CEB0]);
    v5 = self->_geminiManager;
    self->_geminiManager = v4;

    geminiManager = self->_geminiManager;
  }

  return geminiManager;
}

- (CNLSApplicationWorkspace)applicationWorkspace
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (CNGeminiManager)geminiManager
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (void)dealloc
{
  CNReleaseCollator();
  v3.receiver = self;
  v3.super_class = CNUIContactsEnvironment;
  [(CNUIContactsEnvironment *)&v3 dealloc];
}

- (UCollator)sortCollator
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  cn_runWithObjectLock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __39__CNUIContactsEnvironment_sortCollator__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) nts_lazySortCollator];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)nts_lazyInProcessFavorites
{
  inProcessFavorites = self->_inProcessFavorites;
  if (!inProcessFavorites)
  {
    nts_lazyInProcessContactStore = [(CNUIContactsEnvironment *)self nts_lazyInProcessContactStore];
    v5 = [objc_alloc(MEMORY[0x1E695CE90]) initWithContactStore:nts_lazyInProcessContactStore];
    v6 = self->_inProcessFavorites;
    self->_inProcessFavorites = v5;

    inProcessFavorites = self->_inProcessFavorites;
  }

  return inProcessFavorites;
}

- (CNFavorites)inProcessFavorites
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyComponentsFactory
{
  componentsFactory = self->_componentsFactory;
  if (!componentsFactory)
  {
    v4 = objc_alloc_init(CNUIExternalComponentsFactory);
    v5 = self->_componentsFactory;
    self->_componentsFactory = v4;

    componentsFactory = self->_componentsFactory;
  }

  return componentsFactory;
}

- (CNUIExternalComponentsFactory)componentsFactory
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_makeRecentsManager
{
  nts_lazyDefaultSchedulerProvider = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
  v3 = [CNUIContactsEnvironmentServicesProvider recentsManagerWithSchedulerProvider:nts_lazyDefaultSchedulerProvider];

  return v3;
}

- (id)nts_lazyRecentsManager
{
  recentsManager = self->_recentsManager;
  if (!recentsManager)
  {
    nts_makeRecentsManager = [(CNUIContactsEnvironment *)self nts_makeRecentsManager];
    v5 = self->_recentsManager;
    self->_recentsManager = nts_makeRecentsManager;

    recentsManager = self->_recentsManager;
  }

  return recentsManager;
}

- (CNUICoreRecentsManager)recentsManager
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyDefaultUserActionFetcher
{
  defaultUserActionFetcher = self->_defaultUserActionFetcher;
  if (!defaultUserActionFetcher)
  {
    v4 = +[CNUIContactsEnvironmentServicesProvider defaultUserActionFetcher];
    v5 = self->_defaultUserActionFetcher;
    self->_defaultUserActionFetcher = v4;

    defaultUserActionFetcher = self->_defaultUserActionFetcher;
  }

  return defaultUserActionFetcher;
}

- (CNUIDefaultUserActionFetcher)defaultUserActionFetcher
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyCapabilities
{
  capabilities = self->_capabilities;
  if (!capabilities)
  {
    v4 = +[CNUIContactsEnvironmentServicesProvider capabilities];
    v5 = self->_capabilities;
    self->_capabilities = v4;

    capabilities = self->_capabilities;
  }

  return capabilities;
}

- (CNCapabilities)capabilities
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyIDSAvailabilityProvider
{
  idsAvailabilityProvider = self->_idsAvailabilityProvider;
  if (!idsAvailabilityProvider)
  {
    v4 = objc_alloc(MEMORY[0x1E6996B68]);
    v5 = +[CNUIContactsEnvironmentServicesProvider idsIDQueryControllerWrapper];
    v6 = [v4 initWithQueryControllerWrapper:v5];
    v7 = self->_idsAvailabilityProvider;
    self->_idsAvailabilityProvider = v6;

    idsAvailabilityProvider = self->_idsAvailabilityProvider;
  }

  return idsAvailabilityProvider;
}

- (CNUIIDSAvailabilityProvider)idsAvailabilityProvider
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_makeActionDiscoveringEnvironment
{
  nts_lazyIDSAvailabilityProvider = [(CNUIContactsEnvironment *)self nts_lazyIDSAvailabilityProvider];
  nts_lazyDefaultSchedulerProvider = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
  nts_lazyCapabilities = [(CNUIContactsEnvironment *)self nts_lazyCapabilities];
  nts_lazyDefaultUserActionFetcher = [(CNUIContactsEnvironment *)self nts_lazyDefaultUserActionFetcher];
  nts_lazyApplicationWorkspace = [(CNUIContactsEnvironment *)self nts_lazyApplicationWorkspace];
  v8 = [objc_alloc(MEMORY[0x1E6996BD8]) initWithIDSAvailabilityProvider:nts_lazyIDSAvailabilityProvider schedulerProvider:nts_lazyDefaultSchedulerProvider capabilities:nts_lazyCapabilities defaultUserActionFetcher:nts_lazyDefaultUserActionFetcher applicationWorkspace:nts_lazyApplicationWorkspace];

  return v8;
}

- (id)nts_lazyActionDiscoveringEnvironment
{
  actionDiscoveringEnvironment = self->_actionDiscoveringEnvironment;
  if (!actionDiscoveringEnvironment)
  {
    nts_makeActionDiscoveringEnvironment = [(CNUIContactsEnvironment *)self nts_makeActionDiscoveringEnvironment];
    v5 = self->_actionDiscoveringEnvironment;
    self->_actionDiscoveringEnvironment = nts_makeActionDiscoveringEnvironment;

    actionDiscoveringEnvironment = self->_actionDiscoveringEnvironment;
  }

  return actionDiscoveringEnvironment;
}

- (CNUIUserActionDiscoveringEnvironment)actionDiscoveringEnvironment
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyCachingMonogramRenderer
{
  cachingMonogramRenderer = self->_cachingMonogramRenderer;
  if (!cachingMonogramRenderer)
  {
    nts_lazyInProcessContactStore = [(CNUIContactsEnvironment *)self nts_lazyInProcessContactStore];
    nts_lazyDefaultSchedulerProvider = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
    v6 = [objc_alloc(MEMORY[0x1E6996BB0]) initWithContactStore:nts_lazyInProcessContactStore schedulerProvider:nts_lazyDefaultSchedulerProvider];
    [v6 setProhibitedSources:9];
    v7 = [objc_alloc(MEMORY[0x1E6996BB8]) initWithLikenessResolver:v6];
    v8 = MEMORY[0x1E6996B90];
    nts_lazyDefaultSchedulerProvider2 = [(CNUIContactsEnvironment *)self nts_lazyDefaultSchedulerProvider];
    v10 = [v8 cachingRendererWithLikenessResolver:v7 schedulerProvider:nts_lazyDefaultSchedulerProvider2];
    v11 = self->_cachingMonogramRenderer;
    self->_cachingMonogramRenderer = v10;

    cachingMonogramRenderer = self->_cachingMonogramRenderer;
  }

  return cachingMonogramRenderer;
}

- (CNUILikenessRendering)cachingMonogramRenderer
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyPlaceholderProviderFactory
{
  placeholderProviderFactory = self->_placeholderProviderFactory;
  if (!placeholderProviderFactory)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6996BC0]);
    v5 = self->_placeholderProviderFactory;
    self->_placeholderProviderFactory = v4;

    placeholderProviderFactory = self->_placeholderProviderFactory;
  }

  return placeholderProviderFactory;
}

- (CNUIPlaceholderProviderFactory)placeholderProviderFactory
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (void)setPersonaId:(id)id
{
  personaId = id;
  v6 = personaId;
  if (personaId)
  {
    personaId = self->_personaId;
    if (personaId != v6)
    {
      v9 = v6;
      if (!personaId || (personaId = [(NSString *)personaId compare:v6], v6 = v9, personaId))
      {
        cachingLikenessResolver = self->_cachingLikenessResolver;
        self->_cachingLikenessResolver = 0;

        cachingLikenessRenderer = self->_cachingLikenessRenderer;
        self->_cachingLikenessRenderer = 0;

        objc_storeStrong(&self->_personaId, id);
        v6 = v9;
      }
    }
  }

  MEMORY[0x1EEE66BB8](personaId, v6);
}

- (CNContactStore)inProcessContactStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (CNUIContactsEnvironment)initWithContactsEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = CNUIContactsEnvironment;
  v6 = [(CNUIContactsEnvironment *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cnEnvironment, environment);
    v8 = v7;
  }

  return v7;
}

- (CNUIContactsEnvironment)init
{
  currentEnvironment = [MEMORY[0x1E695CE38] currentEnvironment];
  v4 = [(CNUIContactsEnvironment *)self initWithContactsEnvironment:currentEnvironment];

  return v4;
}

@end