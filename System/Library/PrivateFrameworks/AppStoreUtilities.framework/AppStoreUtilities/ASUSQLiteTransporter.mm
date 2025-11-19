@interface ASUSQLiteTransporter
- (ASUSQLiteTransporter)initWithDatabasePath:(id)a3;
- (BOOL)canBeginTransportation;
- (BOOL)endTransportationAndRemoveDatabase;
- (void)performTransportationUsingBlock:(id)a3;
@end

@implementation ASUSQLiteTransporter

- (ASUSQLiteTransporter)initWithDatabasePath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASUSQLiteTransporter;
  v6 = [(ASUSQLiteTransporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databasePath, a3);
  }

  return v7;
}

- (BOOL)canBeginTransportation
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = self->_databasePath;
  objc_opt_self();
  os_unfair_lock_lock(&_configurationLock);
  v4 = +[ASUDefaultsManager transporterConfiguration];
  v5 = [v4 mutableCopy];

  if (v5 && ([v5 objectForKeyedSubscript:@"knownPaths"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "mutableCopy"), v6, v7))
  {
    v8 = [v7 indexesOfObjectsPassingTest:&__block_literal_global_2];
    if ([v8 count])
    {
      [v7 removeObjectsAtIndexes:v8];
      [v5 setObject:v7 forKeyedSubscript:@"knownPaths"];
      [ASUDefaultsManager setTransporterConfiguration:v5];
    }

    v9 = [v7 containsObject:v3];

    os_unfair_lock_unlock(&_configurationLock);
    if (v9)
    {
      v10 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        databasePath = self->_databasePath;
        v28 = 138543362;
        v29 = databasePath;
        v12 = "Refusing to begin transportation for known path: %{public}@";
LABEL_20:
        _os_log_error_impl(&dword_2400F8000, v10, OS_LOG_TYPE_ERROR, v12, &v28, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    os_unfair_lock_unlock(&_configurationLock);
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v13 fileExistsAtPath:self->_databasePath];

  if ((v14 & 1) == 0)
  {
    v10 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = self->_databasePath;
      v28 = 138543362;
      v29 = v27;
      v12 = "Refusing to begin transportation as path does not exist: %{public}@";
      goto LABEL_20;
    }

LABEL_14:

    v20 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v15 = self->_databasePath;
  objc_opt_self();
  os_unfair_lock_lock(&_configurationLock);
  v16 = +[ASUDefaultsManager transporterConfiguration];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_16;
  }

  v18 = [v17 objectForKeyedSubscript:@"knownPaths"];
  v19 = [v18 mutableCopy];

  if (!v19)
  {
LABEL_16:
    v19 = [MEMORY[0x277CBEB18] arrayWithObject:v15];
    goto LABEL_17;
  }

  [v19 addObject:v15];
LABEL_17:
  [v17 setObject:v19 forKeyedSubscript:@"knownPaths"];
  [ASUDefaultsManager setTransporterConfiguration:v17];
  os_unfair_lock_unlock(&_configurationLock);

  v22 = [[ASUSQLiteConnectionOptions alloc] initWithDatabasePath:self->_databasePath];
  [(ASUSQLiteConnectionOptions *)v22 setReadOnly:1];
  v23 = [[ASUSQLiteConnection alloc] initWithOptions:v22];
  connection = self->_connection;
  self->_connection = v23;

  v25 = [(ASUSQLiteConnection *)self->_connection open];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)endTransportationAndRemoveDatabase
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(ASUSQLiteConnection *)self->_connection close]&& ASUSQLiteDeleteDatabase(self->_databasePath, 0))
  {
    v3 = self->_databasePath;
    objc_opt_self();
    os_unfair_lock_lock(&_configurationLock);
    v4 = +[ASUDefaultsManager transporterConfiguration];
    v5 = [v4 mutableCopy];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"knownPaths"];
      v7 = [v6 mutableCopy];

      if (v7)
      {
        [v7 removeObject:v3];
        [v5 setObject:v7 forKeyedSubscript:@"knownPaths"];
        [ASUDefaultsManager setTransporterConfiguration:v5];
      }
    }

    os_unfair_lock_unlock(&_configurationLock);

    result = 1;
  }

  else
  {
    v9 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      databasePath = self->_databasePath;
      v12 = 138543362;
      v13 = databasePath;
      _os_log_error_impl(&dword_2400F8000, v9, OS_LOG_TYPE_ERROR, "Remembering path after ending transportation: %{public}@", &v12, 0xCu);
    }

    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performTransportationUsingBlock:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ASUSQLiteTransporter_performTransportationUsingBlock___block_invoke;
  v7[3] = &unk_278C97C50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ASUSQLiteConnection *)connection performTransaction:v7 error:0];
}

uint64_t __45__ASUSQLiteTransporter__isKnownDatabasePath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5 ^ 1u;
}

@end