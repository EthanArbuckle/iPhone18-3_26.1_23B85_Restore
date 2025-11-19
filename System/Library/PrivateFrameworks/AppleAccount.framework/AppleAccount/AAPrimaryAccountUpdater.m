@interface AAPrimaryAccountUpdater
- (AAPrimaryAccountUpdater)initWithAccount:(id)a3;
- (BOOL)performVersionUpdate0ToVersion1;
- (BOOL)performVersionUpdate1ToVersion2;
@end

@implementation AAPrimaryAccountUpdater

- (AAPrimaryAccountUpdater)initWithAccount:(id)a3
{
  v6 = a3;
  if (([v6 aa_isAccountClass:@"primary"] & 1) == 0)
  {
    [(AAPrimaryAccountUpdater *)a2 initWithAccount:?];
  }

  v7 = [v6 _aa_primaryAccountUpdaterVersion];
  v8 = [v7 unsignedIntegerValue];

  v12.receiver = self;
  v12.super_class = AAPrimaryAccountUpdater;
  v9 = [(AAVersionUpdater *)&v12 initWithStartingVersion:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleAccount, a3);
  }

  return v10;
}

- (BOOL)performVersionUpdate0ToVersion1
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6959668];
  if ([(ACAccount *)self->_appleAccount isProvisionedForDataclass:*MEMORY[0x1E6959668]]&& ([(ACAccount *)self->_appleAccount isEnabledForDataclass:v3]& 1) == 0)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      appleAccount = self->_appleAccount;
      v12 = 136315394;
      v13 = "[AAPrimaryAccountUpdater performVersionUpdate0ToVersion1]";
      v14 = 2112;
      v15 = appleAccount;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "%s enabling Freeform for account %@", &v12, 0x16u);
    }

    [(ACAccount *)self->_appleAccount setEnabled:1 forDataclass:v3];
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_appleAccount;
      v12 = 136315394;
      v13 = "[AAPrimaryAccountUpdater performVersionUpdate0ToVersion1]";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "%s Freeform is not provisioned for accounts %@", &v12, 0x16u);
    }
  }

  v8 = self->_appleAccount;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [(ACAccount *)v8 _aa_setPrimaryAccountUpdaterVersion:v9];

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)performVersionUpdate1ToVersion2
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[AADeviceModelHelper isDeviceiPad])
  {
    v3 = *MEMORY[0x1E6959670];
    if ([(ACAccount *)self->_appleAccount isEnabledForDataclass:*MEMORY[0x1E6959670]])
    {
      v4 = _AALogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        appleAccount = self->_appleAccount;
        v10 = 136315394;
        v11 = "[AAPrimaryAccountUpdater performVersionUpdate1ToVersion2]";
        v12 = 2112;
        v13 = appleAccount;
        _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Device is an iPad: %s disabling Health for account %@", &v10, 0x16u);
      }

      [(ACAccount *)self->_appleAccount setEnabled:0 forDataclass:v3];
    }
  }

  v6 = self->_appleAccount;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
  [(ACAccount *)v6 _aa_setPrimaryAccountUpdaterVersion:v7];

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)initWithAccount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAPrimaryAccountUpdater.m" lineNumber:29 description:@"Account must be primary AppleAccount!"];
}

@end