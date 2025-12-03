@interface AAAgeMigrationFeatureStateProvider
- (AAAgeMigrationFeatureStateProvider)init;
- (BOOL)ageMigrationFeatureEnabled;
- (void)ageMigrationFeatureEnabled;
@end

@implementation AAAgeMigrationFeatureStateProvider

- (AAAgeMigrationFeatureStateProvider)init
{
  v5.receiver = self;
  v5.super_class = AAAgeMigrationFeatureStateProvider;
  v2 = [(AAAgeMigrationFeatureStateProvider *)&v5 init];
  if (v2)
  {
    mEMORY[0x1E698DD70] = [MEMORY[0x1E698DD70] sharedManager];
    v2->_ageMigrationFeatureEnabled = [mEMORY[0x1E698DD70] isAgeMigrationEnabled];
  }

  return v2;
}

- (BOOL)ageMigrationFeatureEnabled
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAAgeMigrationFeatureStateProvider *)self ageMigrationFeatureEnabled];
  }

  return self->_ageMigrationFeatureEnabled;
}

- (void)ageMigrationFeatureEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(self + 8))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "AAAgeMigrationFeatureStateProvider feature enabled: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end