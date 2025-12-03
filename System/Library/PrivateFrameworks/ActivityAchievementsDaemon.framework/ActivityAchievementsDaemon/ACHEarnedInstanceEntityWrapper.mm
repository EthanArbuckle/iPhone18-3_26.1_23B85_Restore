@interface ACHEarnedInstanceEntityWrapper
- (ACHEarnedInstanceEntitySyncedEarnedInstancesObserver)syncedEarnedInstancesObserver;
- (ACHEarnedInstanceEntityWrapper)initWithProfile:(id)profile;
- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)instances provenance:(int64_t)provenance;
- (BOOL)removeAllEarnedInstancesWithError:(id *)error;
- (BOOL)removeEarnedInstances:(id)instances error:(id *)error;
- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)name error:(id *)error;
- (HDProfile)profile;
- (id)allEarnedInstancesWithError:(id *)error;
- (id)earnedInstancesForDateComponents:(id)components error:(id *)error;
- (id)earnedInstancesForTemplateUniqueName:(id)name error:(id *)error;
- (id)insertEarnedInstances:(id)instances provenance:(int64_t)provenance databaseContext:(id)context error:(id *)error;
- (void)setSyncedEarnedInstancesObserver:(id)observer;
@end

@implementation ACHEarnedInstanceEntityWrapper

- (ACHEarnedInstanceEntityWrapper)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = ACHEarnedInstanceEntityWrapper;
  v5 = [(ACHEarnedInstanceEntityWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)setSyncedEarnedInstancesObserver:(id)observer
{
  v4 = objc_storeWeak(&self->_syncedEarnedInstancesObserver, observer);
  if (observer)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [ACHEarnedInstanceEntity setSyncedEarnedInstancesObserver:selfCopy];
}

- (id)insertEarnedInstances:(id)instances provenance:(int64_t)provenance databaseContext:(id)context error:(id *)error
{
  contextCopy = context;
  instancesCopy = instances;
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v13 = [ACHEarnedInstanceEntity insertEarnedInstances:instancesCopy provenance:provenance useLegacySyncIdentity:0 profile:profile databaseContext:contextCopy error:error];

  return v13;
}

- (BOOL)removeEarnedInstances:(id)instances error:(id *)error
{
  instancesCopy = instances;
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  LOBYTE(error) = [ACHEarnedInstanceEntity removeEarnedInstances:instancesCopy profile:profile error:error];

  return error;
}

- (id)allEarnedInstancesWithError:(id *)error
{
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v5 = [ACHEarnedInstanceEntity allEarnedInstancesWithProfile:profile error:error];

  return v5;
}

- (id)earnedInstancesForTemplateUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v8 = [ACHEarnedInstanceEntity earnedInstancesForTemplateUniqueName:nameCopy profile:profile error:error];

  return v8;
}

- (id)earnedInstancesForDateComponents:(id)components error:(id *)error
{
  componentsCopy = components;
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v8 = [ACHEarnedInstanceEntity earnedInstancesForDateComponents:componentsCopy profile:profile error:error];

  return v8;
}

- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)name error:(id *)error
{
  nameCopy = name;
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  LOBYTE(error) = [ACHEarnedInstanceEntity removeEarnedInstancesForTemplateUniqueName:nameCopy profile:profile error:error];

  return error;
}

- (BOOL)removeAllEarnedInstancesWithError:(id *)error
{
  profile = [(ACHEarnedInstanceEntityWrapper *)self profile];
  LOBYTE(error) = [ACHEarnedInstanceEntity removeAllEarnedInstancesWithProfile:profile error:error];

  return error;
}

- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)instances provenance:(int64_t)provenance
{
  instancesCopy = instances;
  v7 = ACHLogSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACHEarnedInstanceEntityWrapper earnedInstanceEntityDidReceiveSyncedEarnedInstances:v7 provenance:?];
  }

  syncedEarnedInstancesObserver = [(ACHEarnedInstanceEntityWrapper *)self syncedEarnedInstancesObserver];
  v9 = [syncedEarnedInstancesObserver earnedInstanceEntityDidReceiveSyncedEarnedInstances:instancesCopy provenance:provenance];

  return v9;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (ACHEarnedInstanceEntitySyncedEarnedInstancesObserver)syncedEarnedInstancesObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_syncedEarnedInstancesObserver);

  return WeakRetained;
}

- (void)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(void *)a1 provenance:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 syncedEarnedInstancesObserver];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Earned Instance Entity Wrapper got notified about newly synced earned instances, passing that along to syncedEarnedInstancesObserver (%@)", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end