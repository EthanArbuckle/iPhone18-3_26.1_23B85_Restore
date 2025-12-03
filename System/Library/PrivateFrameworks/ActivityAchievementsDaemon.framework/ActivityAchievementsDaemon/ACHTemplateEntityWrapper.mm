@interface ACHTemplateEntityWrapper
- (ACHTemplateEntitySyncedTemplatesObserver)syncedTemplatesObserver;
- (ACHTemplateEntityWrapper)initWithProfile:(id)profile;
- (BOOL)insertTemplates:(id)templates provenance:(int64_t)provenance databaseContext:(id)context error:(id *)error;
- (BOOL)removeTemplates:(id)templates error:(id *)error;
- (HDProfile)profile;
- (id)allTemplatesWithError:(id *)error;
- (void)setSyncedTemplatesObserver:(id)observer;
- (void)templateEntityDidReceiveSyncedTemplates:(id)templates provenance:(int64_t)provenance;
@end

@implementation ACHTemplateEntityWrapper

- (ACHTemplateEntityWrapper)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = ACHTemplateEntityWrapper;
  v5 = [(ACHTemplateEntityWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)setSyncedTemplatesObserver:(id)observer
{
  v4 = objc_storeWeak(&self->_syncedTemplatesObserver, observer);
  if (observer)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [ACHTemplateEntity setSyncedTemplatesObserver:selfCopy];
}

- (BOOL)insertTemplates:(id)templates provenance:(int64_t)provenance databaseContext:(id)context error:(id *)error
{
  contextCopy = context;
  templatesCopy = templates;
  profile = [(ACHTemplateEntityWrapper *)self profile];
  LOBYTE(error) = [ACHTemplateEntity insertTemplates:templatesCopy provenance:provenance useLegacySyncIdentity:0 profile:profile databaseContext:contextCopy error:error];

  return error;
}

- (BOOL)removeTemplates:(id)templates error:(id *)error
{
  templatesCopy = templates;
  profile = [(ACHTemplateEntityWrapper *)self profile];
  LOBYTE(error) = [ACHTemplateEntity removeTemplates:templatesCopy profile:profile error:error];

  return error;
}

- (id)allTemplatesWithError:(id *)error
{
  profile = [(ACHTemplateEntityWrapper *)self profile];
  v5 = [ACHTemplateEntity allTemplatesWithProfile:profile error:error];

  return v5;
}

- (void)templateEntityDidReceiveSyncedTemplates:(id)templates provenance:(int64_t)provenance
{
  templatesCopy = templates;
  v7 = ACHLogSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACHTemplateEntityWrapper templateEntityDidReceiveSyncedTemplates:v7 provenance:?];
  }

  syncedTemplatesObserver = [(ACHTemplateEntityWrapper *)self syncedTemplatesObserver];
  [syncedTemplatesObserver templateEntityDidReceiveSyncedTemplates:templatesCopy provenance:provenance];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (ACHTemplateEntitySyncedTemplatesObserver)syncedTemplatesObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_syncedTemplatesObserver);

  return WeakRetained;
}

- (void)templateEntityDidReceiveSyncedTemplates:(void *)a1 provenance:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 syncedTemplatesObserver];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Template Entity Wrapper got notified about newly synced templates, passing that along to syncedTemplatesObserver (%@)", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end