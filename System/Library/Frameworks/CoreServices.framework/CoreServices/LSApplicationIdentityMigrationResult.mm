@interface LSApplicationIdentityMigrationResult
- (LSApplicationIdentityMigrationResult)init;
- (id)bestMigratedIdentityForIdentity:(id)identity;
- (id)migratedIdentitiesForIdentity:(id)identity;
- (void)noteIdentityDoesNotNeedMigration:(uint64_t)migration;
@end

@implementation LSApplicationIdentityMigrationResult

- (void)noteIdentityDoesNotNeedMigration:(uint64_t)migration
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (migration)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [*(migration + 8) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (LSApplicationIdentityMigrationResult)init
{
  v6.receiver = self;
  v6.super_class = LSApplicationIdentityMigrationResult;
  v2 = [(LSApplicationIdentityMigrationResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    migratedIdentities = v2->_migratedIdentities;
    v2->_migratedIdentities = v3;
  }

  return v2;
}

- (id)migratedIdentitiesForIdentity:(id)identity
{
  v3 = [(NSMutableDictionary *)self->_migratedIdentities objectForKeyedSubscript:identity];
  if (v3)
  {
    [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;

  return v4;
}

- (id)bestMigratedIdentityForIdentity:(id)identity
{
  v3 = [(NSMutableDictionary *)self->_migratedIdentities objectForKeyedSubscript:identity];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end