@interface AASignedOutAccountKeychain
- (AASignedOutAccountKeychain)init;
- (AASignedOutAccountKeychain)initWithKeychainManagerStore:(id)a3;
- (id)_lastSignedOutAccountDescriptor;
- (id)fetchLastSignedOutAccountAltDSID:(id *)a3;
- (void)deleteLastSignedOutAccountAltDSID:(id *)a3;
- (void)setLastSignedOutAccountAltDSID:(id)a3 error:(id *)a4;
@end

@implementation AASignedOutAccountKeychain

- (AASignedOutAccountKeychain)init
{
  v6.receiver = self;
  v6.super_class = AASignedOutAccountKeychain;
  v2 = [(AASignedOutAccountKeychain *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keychainManager = v2->_keychainManager;
    v2->_keychainManager = v3;
  }

  return v2;
}

- (AASignedOutAccountKeychain)initWithKeychainManagerStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AASignedOutAccountKeychain;
  v6 = [(AASignedOutAccountKeychain *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainManager, a3);
  }

  return v7;
}

- (id)fetchLastSignedOutAccountAltDSID:(id *)a3
{
  v5 = [(AASignedOutAccountKeychain *)self _lastSignedOutAccountDescriptor];
  keychainManager = self->_keychainManager;
  v21 = 0;
  v7 = [(AAKeychainManagerStore *)keychainManager aa_keychainItemForDescriptor:v5 error:&v21];
  v8 = v21;
  v9 = [v7 value];
  if ([v8 code] == -25300)
  {
    v10 = [v8 domain];
    v11 = [v10 isEqualToString:*MEMORY[0x1E696A768]];

    if (v11)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AASignedOutAccountKeychain fetchLastSignedOutAccountAltDSID:v12];
      }

LABEL_8:

      if (a3)
      {
        v13 = v8;
        v14 = 0;
        *a3 = v8;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_19;
    }
  }

  if (v8)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AASignedOutAccountKeychain fetchLastSignedOutAccountAltDSID:];
    }

    goto LABEL_8;
  }

  v20 = 0;
  v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v20];
  v16 = v20;
  if (v9)
  {
    v14 = v15;
  }

  else
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AASignedOutAccountKeychain fetchLastSignedOutAccountAltDSID:];
    }

    if (a3)
    {
      v18 = v16;
      v14 = 0;
      *a3 = v16;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_19:

  return v14;
}

- (void)setLastSignedOutAccountAltDSID:(id)a3 error:(id *)a4
{
  v17 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = [(AASignedOutAccountKeychain *)self _lastSignedOutAccountDescriptor];
    v9 = [objc_alloc(MEMORY[0x1E6985DE0]) initWithDescriptor:v8 value:v6];
    keychainManager = self->_keychainManager;
    v16 = 0;
    [(AAKeychainManagerStore *)keychainManager aa_addOrUpdateKeychainItem:v9 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AASignedOutAccountKeychain setLastSignedOutAccountAltDSID:error:];
      }

      if (a4)
      {
        v13 = v11;
        *a4 = v11;
      }
    }
  }

  else
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AASignedOutAccountKeychain setLastSignedOutAccountAltDSID:error:];
    }

    if (a4)
    {
      v15 = v7;
      *a4 = v7;
    }
  }
}

- (void)deleteLastSignedOutAccountAltDSID:(id *)a3
{
  v5 = [(AASignedOutAccountKeychain *)self _lastSignedOutAccountDescriptor];
  [(AAKeychainManagerStore *)self->_keychainManager aa_deleteKeychainItemsForDescriptor:v5 error:a3];
  if (a3)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AASignedOutAccountKeychain *)a3 deleteLastSignedOutAccountAltDSID:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

- (id)_lastSignedOutAccountDescriptor
{
  v2 = objc_alloc_init(MEMORY[0x1E6985DE8]);
  [v2 setItemClass:1];
  [v2 setInvisible:2];
  [v2 setSynchronizable:1];
  [v2 setUseDataProtection:2];
  [v2 setItemAccessible:0];
  [v2 setAccessGroup:@"appleaccount"];
  [v2 setService:@"com.apple.appleaccount.signedOutAccount.service"];
  [v2 setLabel:@"com.apple.appleaccount.signedOutAccount"];

  return v2;
}

- (void)fetchLastSignedOutAccountAltDSID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to fetch last signed in account's altDSID with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchLastSignedOutAccountAltDSID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "AltDSID keychain fetch failed - unable to archive token data with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLastSignedOutAccountAltDSID:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to set altDSID in keychain with error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setLastSignedOutAccountAltDSID:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to set altDSID in keychain - unable to generate archived data from token with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteLastSignedOutAccountAltDSID:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a2, a3, "Failed to delete last signed out account's altDSID with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end