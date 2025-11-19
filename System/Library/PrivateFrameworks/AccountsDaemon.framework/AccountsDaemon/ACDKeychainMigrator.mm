@interface ACDKeychainMigrator
+ (id)sharedInstance;
- (ACDKeychainMigrator)init;
- (BOOL)migrateKeychainItem:(id)a3 toKeybag:(BOOL)a4;
- (id)_keychainItemFromAttributes:(id)a3;
- (id)_keychainItemFromAttributesArray:(id)a3;
- (id)_keychainItemsForAccount:(id)a3 accountTypeIdentifiers:(id)a4;
- (id)allKeychainItems;
- (id)keychainItemsForAccounts:(id)a3;
- (void)_migrateUUIDKeychainItems:(id)a3;
- (void)_validateKeychainItemClass:(id)a3;
- (void)migrateAllKeychainItems;
@end

@implementation ACDKeychainMigrator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ACDKeychainMigrator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __37__ACDKeychainMigrator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ACDKeychainMigrator)init
{
  v6.receiver = self;
  v6.super_class = ACDKeychainMigrator;
  v2 = [(ACDKeychainMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (void)migrateAllKeychainItems
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ACDKeychainMigrator *)self allKeychainItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 hasCustomAccessControl])
        {
          v10 = _ACDKeychainLogSystem();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = v12;
            v18 = v9;
            _os_log_debug_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEBUG, "Keychain item (%@) has custom access control, skipping...", buf, 0xCu);
          }
        }

        else
        {
          [(ACDKeychainMigrator *)self migrateKeychainItem:v9 toKeybag:1];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateKeychainItem:(id)a3 toKeybag:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 version];
  if (v6 > 8)
  {
    v9 = 1;
    goto LABEL_26;
  }

  v7 = v6;
  v8 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainMigrator migrateKeychainItem:v5 toKeybag:v7];
  }

  if (v7 <= 0)
  {
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_14:
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
    goto LABEL_15;
  }

  if (v7 <= 2)
  {
LABEL_15:
    [(ACDKeychainMigrator *)self _migrateUUIDKeychainItems:v5];
    goto LABEL_16;
  }

  if (v7 <= 4)
  {
LABEL_16:
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
    goto LABEL_17;
  }

  if (v7 == 5)
  {
LABEL_17:
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
    goto LABEL_18;
  }

  if (v7 > 6)
  {
    if (v7 == 8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
LABEL_19:
  [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
LABEL_20:
  [(ACDKeychainMigrator *)self _validateKeychainItemClass:v5];
  [v5 setVersion:9];
  v14 = 0;
  v9 = [v5 save:&v14];
  v10 = v14;
  v11 = _ACDKeychainLogSystem();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACDKeychainMigrator migrateKeychainItem:toKeybag:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainMigrator migrateKeychainItem:toKeybag:];
  }

LABEL_26:
  return v9;
}

- (void)_validateKeychainItemClass:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke;
  v6[3] = &unk_27848C840;
  v7 = v3;
  v5 = v3;
  [ACDKeychainManager componentsFromKeychainServiceName:v4 handler:v6];
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [MEMORY[0x277CB8F58] allIdentifiers];
      v12 = [v11 containsObject:v8];

      if (v12)
      {
        v13 = [MEMORY[0x277CB8F38] credentialPolicyForAccountTypeIdentifier:v8 key:v10 clientID:v7];
        if (v13)
        {
          v14 = [*(a1 + 32) accessibility];
          v15 = [v14 isEqualToString:v13];

          if ((v15 & 1) == 0)
          {
            v16 = _ACDKeychainLogSystem();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = *(a1 + 32);
              v29 = 138412546;
              v30 = v17;
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEFAULT, "Found mismatched keychain item accessibility: %@ :: expected: %@", &v29, 0x16u);
            }

            [*(a1 + 32) setAccessibility:v13];
          }

          v18 = [*(a1 + 32) accessibility];
          if ([v18 isEqualToString:*MEMORY[0x277CDBEE8]])
          {
            v19 = [*(a1 + 32) synchronizable];

            if (v19)
            {
              v20 = _ACDKeychainLogSystem();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = *(a1 + 32);
                v29 = 138412290;
                v30 = v21;
                _os_log_impl(&dword_221D2F000, v20, OS_LOG_TYPE_DEFAULT, "Found keychain item with accessibility kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly marked as syncable: %@", &v29, 0xCu);
              }

              [*(a1 + 32) setSynchronizable:0];
            }

            goto LABEL_23;
          }
        }

        else
        {
          v18 = _ACDKeychainLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_2(a1, v18, v22, v23, v24, v25, v26, v27);
          }
        }

        goto LABEL_23;
      }

      v13 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_1();
      }
    }

    else
    {
      v13 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_3(a1);
      }
    }
  }

  else
  {
    v13 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_4(a1);
    }
  }

LABEL_23:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_migrateUUIDKeychainItems:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 account];
  v6 = [v5 length];

  if (v6 == 36)
  {
    accountStore = self->_accountStore;
    v8 = [v4 account];
    v9 = [(ACAccountStore *)accountStore accountWithIdentifier:v8];

    if (v9)
    {
      v10 = [v9 username];
      v11 = [v10 length];

      v12 = _ACDKeychainLogSystem();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v9 username];
          v15 = ACHashedString();
          v16 = [v4 account];
          v18 = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v16;
          _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Updating keychain item acct: %@ old: %@", &v18, 0x16u);
        }

        v13 = [v9 username];
        [v4 setAccount:v13];
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ACDKeychainMigrator _migrateUUIDKeychainItems:];
      }
    }

    else
    {
      v13 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ACDKeychainMigrator _migrateUUIDKeychainItems:v4];
      }
    }
  }

  else
  {
    v9 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACDKeychainMigrator _migrateUUIDKeychainItems:v9];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)allKeychainItems
{
  v3 = [(ACAccountStore *)self->_accountStore accounts];
  v4 = [(ACDKeychainMigrator *)self keychainItemsForAccounts:v3];

  return v4;
}

- (id)keychainItemsForAccounts:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 accountType];
        v11 = [v10 identifier];

        if ([v11 length])
        {
          v12 = [v9 qualifiedUsername];
          if ([v12 length])
          {
            v13 = [v4 objectForKeyedSubscript:v12];
            v14 = v13;
            if (v13)
            {
              [v13 addObject:v11];
            }

            else
            {
              v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v11, 0}];
              [v4 setObject:v15 forKeyedSubscript:v12];
            }
          }

          v16 = [v9 identifier];
          if ([v16 length])
          {
            v17 = [v4 objectForKeyedSubscript:v16];
            v18 = v17;
            if (v17)
            {
              [v17 addObject:v11];
            }

            else
            {
              v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v11, 0}];
              [v4 setObject:v19 forKeyedSubscript:v16];
            }
          }
        }

        else
        {
          v12 = _ACDKeychainLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_221D2F000, v12, OS_LOG_TYPE_ERROR, "Account (%@) has and empty accountType identifier!", &buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v6);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__ACDKeychainMigrator_keychainItemsForAccounts___block_invoke;
  v24[3] = &unk_27848C868;
  v24[4] = self;
  v24[5] = &buf;
  [v4 enumerateKeysAndObjectsUsingBlock:v24];
  v20 = [*(*(&buf + 1) + 40) copy];
  _Block_object_dispose(&buf, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __48__ACDKeychainMigrator_keychainItemsForAccounts___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _keychainItemsForAccount:a2 accountTypeIdentifiers:a3];
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_keychainItemsForAccount:(id)a3 accountTypeIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v6);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], @"apple");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CDC148]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  v9 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC560], v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5A8], *MEMORY[0x277CDC5B8]);
  result = 0;
  v10 = SecItemCopyMatching(Mutable, &result);
  if (v10)
  {
    v11 = v10;
    v12 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACDKeychainMigrator *)v6 _keychainItemsForAccount:v11 accountTypeIdentifiers:v12];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(ACDKeychainMigrator *)self _keychainItemFromAttributesArray:result];
  }

  if (result)
  {
    CFRelease(result);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke;
  v21 = &unk_27848C8B8;
  v22 = v7;
  v14 = v7;
  v15 = [v13 indexesOfObjectsPassingTest:&v18];
  v16 = [v13 objectsAtIndexes:{v15, v18, v19, v20, v21}];

  return v16;
}

uint64_t __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 service];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke_2;
  v7[3] = &unk_27848C890;
  v8 = *(a1 + 32);
  v9 = &v10;
  [ACDKeychainManager componentsFromKeychainServiceName:v4 handler:v7];

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if ([*(a1 + 32) containsObject:a3])
  {
    v6 = [MEMORY[0x277CB8F38] allSupportedKeys];
    v7 = [v6 containsObject:v8];

    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (id)_keychainItemFromAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];

  if (v4)
  {
    v4 = [[ACDKeychainItem alloc] initWithPersistentRef:v4 properties:v3];
  }

  return v4;
}

- (id)_keychainItemFromAttributesArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ACDKeychainMigrator *)self _keychainItemFromAttributes:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)migrateKeychainItem:(uint64_t)a1 toKeybag:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)migrateKeychainItem:toKeybag:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_221D2F000, v1, OS_LOG_TYPE_ERROR, "Failed to migrate keychain item %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)migrateKeychainItem:toKeybag:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Successfully migrated keychain item %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Could not find account type for identifier %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_5(&dword_221D2F000, a2, a3, "Could not determine expected accessibility for %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) service];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) service];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_migrateUUIDKeychainItems:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Found account %@ is missing username, will not update item.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_migrateUUIDKeychainItems:(void *)a1 .cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 account];
  v2 = ACHashedString();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_keychainItemsForAccount:(NSObject *)a3 accountTypeIdentifiers:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(&dword_221D2F000, a3, OS_LOG_TYPE_ERROR, "Failed to query keychain for account: %@, errno %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end