@interface LSMIResultRegistrantServerDatabaseContextProviding
- (LSMIResultRegistrantServerDatabaseContextProviding)init;
- (id).cxx_construct;
- (id)databaseContextWithError:(id *)a3;
- (void)armSaveTimerIfNecessary:(id)a3;
@end

@implementation LSMIResultRegistrantServerDatabaseContextProviding

- (LSMIResultRegistrantServerDatabaseContextProviding)init
{
  _LSAssertRunningInServer("[LSMIResultRegistrantServerDatabaseContextProviding init]");
  v4.receiver = self;
  v4.super_class = LSMIResultRegistrantServerDatabaseContextProviding;
  return [(LSMIResultRegistrantServerDatabaseContextProviding *)&v4 init];
}

- (id)databaseContextWithError:(id *)a3
{
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&self->_ctx, v5, 0);

  if (v6)
  {
    v7 = [[LSMIResultRegistrantTrueDatabaseContext alloc] initWithDatabase:*v6];
    v8 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(&self->_ctx, v9, 0);

    if (v10)
    {
      v8 = 0;
    }

    else
    {
      v8 = self->_ctx._error;
    }

    v7 = 0;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  if (!v7)
  {
    v8 = v8;
    *a3 = v8;
  }

LABEL_10:

  return v7;
}

- (void)armSaveTimerIfNecessary:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__LSMIResultRegistrantServerDatabaseContextProviding_armSaveTimerIfNecessary___block_invoke;
  v5[3] = &unk_1E6A1E4E0;
  v6 = v3;
  v4 = v3;
  _LSArmSaveTimerWithObserver(5, v5);
}

void __78__LSMIResultRegistrantServerDatabaseContextProviding_armSaveTimerIfNecessary___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [[LSMIResultRegistrantTrueDatabaseContext alloc] initWithDatabase:v8];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 24) = 0;
  return self;
}

@end