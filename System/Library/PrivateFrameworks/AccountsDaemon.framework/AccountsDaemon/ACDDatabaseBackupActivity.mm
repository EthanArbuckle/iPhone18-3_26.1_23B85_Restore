@interface ACDDatabaseBackupActivity
- (ACDDatabaseBackupActivity)init;
- (ACDDatabaseBackupActivity)initWithDatabase:(id)database;
- (id)activityCriteria;
- (void)_registerActivityIfNeededSchedulingBackup:(BOOL)backup;
- (void)_registerActivitySchedulingBackup:(BOOL)backup;
- (void)scheduleBackupIfNonexistent;
@end

@implementation ACDDatabaseBackupActivity

- (ACDDatabaseBackupActivity)init
{
  [(ACDDatabaseBackupActivity *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDDatabaseBackupActivity)initWithDatabase:(id)database
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = ACDDatabaseBackupActivity;
  v6 = [(ACDDatabaseBackupActivity *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.accounts.databasebackup.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (id)activityCriteria
{
  activityExecutionCriteria = self->_activityExecutionCriteria;
  if (!activityExecutionCriteria)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = self->_activityExecutionCriteria;
    self->_activityExecutionCriteria = v4;

    xpc_dictionary_set_string(self->_activityExecutionCriteria, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(self->_activityExecutionCriteria, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_int64(self->_activityExecutionCriteria, *MEMORY[0x277D86270], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(self->_activityExecutionCriteria, *MEMORY[0x277D86250], *MEMORY[0x277D86290]);
    activityExecutionCriteria = self->_activityExecutionCriteria;
  }

  return activityExecutionCriteria;
}

- (void)_registerActivityIfNeededSchedulingBackup:(BOOL)backup
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ACDDatabaseBackupActivity__registerActivityIfNeededSchedulingBackup___block_invoke;
  v4[3] = &unk_27848C108;
  v4[4] = self;
  backupCopy = backup;
  dispatch_async(queue, v4);
}

void __71__ACDDatabaseBackupActivity__registerActivityIfNeededSchedulingBackup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = _ACDLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __71__ACDDatabaseBackupActivity__registerActivityIfNeededSchedulingBackup___block_invoke_cold_1(v3);
    }
  }

  else
  {
    [v2 _registerActivitySchedulingBackup:*(a1 + 40)];
    if (*(a1 + 40) == 1)
    {
      *(*(a1 + 32) + 8) = 1;
    }
  }
}

- (void)_registerActivitySchedulingBackup:(BOOL)backup
{
  backupCopy = backup;
  v14 = *MEMORY[0x277D85DE8];
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "com.apple.accounts.databasebackup.activity";
    v12 = 1024;
    v13 = backupCopy;
    _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "Registering activity %s (scheduling backup: %d)", buf, 0x12u);
  }

  v6 = *MEMORY[0x277D86238];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke;
  v8[3] = &unk_27848D038;
  v9 = backupCopy;
  v8[4] = self;
  xpc_activity_register("com.apple.accounts.databasebackup.activity", v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if (xpc_activity_set_state(v3, 4))
    {
      v9 = os_transaction_create();
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke_2;
      block[3] = &unk_27848C0B8;
      block[4] = v10;
      v13 = v3;
      v14 = v9;
      v6 = v9;
      dispatch_async(v11, block);
    }

    else
    {
      v6 = _ACDLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke_cold_1(v6);
      }
    }

    goto LABEL_16;
  }

  if (!state)
  {
    v5 = _ACDLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "Checking in for accounts database backup activity", buf, 2u);
    }

    if (*(a1 + 40) == 1)
    {
      v6 = xpc_activity_copy_criteria(v3);
      v7 = [*(a1 + 32) activityCriteria];
      if (!v6 || !xpc_equal(v6, v7))
      {
        v8 = _ACDLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "Setting accounts database backup activity criteria", buf, 2u);
        }

        xpc_activity_set_criteria(v3, v7);
      }

LABEL_16:
    }
  }
}

void __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v2, OS_LOG_TYPE_DEFAULT, "Running accounts database backup activity", buf, 2u);
  }

  v3 = [*(a1 + 32) database];
  v10 = 0;
  v4 = [v3 performBackupReturningError:&v10];
  v5 = v10;

  v6 = _ACDLogSystem();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) database];
      *buf = 138477827;
      v12 = v8;
      _os_log_impl(&dword_221D2F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully backed up database: %{private}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke_2_cold_1(v5, v7);
  }

  xpc_activity_set_state(*(a1 + 40), 5);
  *(*(a1 + 32) + 8) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)scheduleBackupIfNonexistent
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  database = [(ACDDatabaseBackupActivity *)self database];
  databaseURL = [database databaseURL];
  path = [databaseURL path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v8 = _ACDLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(ACDDatabaseBackupActivity *)v8 scheduleBackupIfNonexistent];
    }
  }

  else
  {

    [(ACDDatabaseBackupActivity *)self scheduleBackup];
  }
}

void __63__ACDDatabaseBackupActivity__registerActivitySchedulingBackup___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "Failed to backup database, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end