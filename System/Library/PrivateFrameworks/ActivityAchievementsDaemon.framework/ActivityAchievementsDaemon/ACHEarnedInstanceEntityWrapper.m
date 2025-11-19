@interface ACHEarnedInstanceEntityWrapper
- (ACHEarnedInstanceEntitySyncedEarnedInstancesObserver)syncedEarnedInstancesObserver;
- (ACHEarnedInstanceEntityWrapper)initWithProfile:(id)a3;
- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)a3 provenance:(int64_t)a4;
- (BOOL)removeAllEarnedInstancesWithError:(id *)a3;
- (BOOL)removeEarnedInstances:(id)a3 error:(id *)a4;
- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4;
- (HDProfile)profile;
- (id)allEarnedInstancesWithError:(id *)a3;
- (id)earnedInstancesForDateComponents:(id)a3 error:(id *)a4;
- (id)earnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4;
- (id)insertEarnedInstances:(id)a3 provenance:(int64_t)a4 databaseContext:(id)a5 error:(id *)a6;
- (void)setSyncedEarnedInstancesObserver:(id)a3;
@end

@implementation ACHEarnedInstanceEntityWrapper

- (ACHEarnedInstanceEntityWrapper)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ACHEarnedInstanceEntityWrapper;
  v5 = [(ACHEarnedInstanceEntityWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (void)setSyncedEarnedInstancesObserver:(id)a3
{
  v4 = objc_storeWeak(&self->_syncedEarnedInstancesObserver, a3);
  if (a3)
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  [ACHEarnedInstanceEntity setSyncedEarnedInstancesObserver:v5];
}

- (id)insertEarnedInstances:(id)a3 provenance:(int64_t)a4 databaseContext:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v13 = [ACHEarnedInstanceEntity insertEarnedInstances:v11 provenance:a4 useLegacySyncIdentity:0 profile:v12 databaseContext:v10 error:a6];

  return v13;
}

- (BOOL)removeEarnedInstances:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  LOBYTE(a4) = [ACHEarnedInstanceEntity removeEarnedInstances:v6 profile:v7 error:a4];

  return a4;
}

- (id)allEarnedInstancesWithError:(id *)a3
{
  v4 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v5 = [ACHEarnedInstanceEntity allEarnedInstancesWithProfile:v4 error:a3];

  return v5;
}

- (id)earnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v8 = [ACHEarnedInstanceEntity earnedInstancesForTemplateUniqueName:v6 profile:v7 error:a4];

  return v8;
}

- (id)earnedInstancesForDateComponents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  v8 = [ACHEarnedInstanceEntity earnedInstancesForDateComponents:v6 profile:v7 error:a4];

  return v8;
}

- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  LOBYTE(a4) = [ACHEarnedInstanceEntity removeEarnedInstancesForTemplateUniqueName:v6 profile:v7 error:a4];

  return a4;
}

- (BOOL)removeAllEarnedInstancesWithError:(id *)a3
{
  v4 = [(ACHEarnedInstanceEntityWrapper *)self profile];
  LOBYTE(a3) = [ACHEarnedInstanceEntity removeAllEarnedInstancesWithProfile:v4 error:a3];

  return a3;
}

- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)a3 provenance:(int64_t)a4
{
  v6 = a3;
  v7 = ACHLogSync();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACHEarnedInstanceEntityWrapper earnedInstanceEntityDidReceiveSyncedEarnedInstances:v7 provenance:?];
  }

  v8 = [(ACHEarnedInstanceEntityWrapper *)self syncedEarnedInstancesObserver];
  v9 = [v8 earnedInstanceEntityDidReceiveSyncedEarnedInstances:v6 provenance:a4];

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