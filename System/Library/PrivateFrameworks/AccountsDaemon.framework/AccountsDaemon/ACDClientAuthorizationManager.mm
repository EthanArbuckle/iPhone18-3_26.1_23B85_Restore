@interface ACDClientAuthorizationManager
- (ACDClientAuthorizationManager)initWithDatabaseConnection:(id)connection;
- (id)_csvStringFromSet:(id)set;
- (id)_setFromCSVString:(id)string;
- (id)allAuthorizationsForAccountType:(id)type;
- (id)allAuthorizationsForAccountTypeWithIdentifier:(id)identifier;
- (id)authorizationForClient:(id)client accountType:(id)type;
- (id)authorizationForClient:(id)client accountTypeWithIdentifier:(id)identifier;
- (id)removeAllClientAuthorizationsForAccountType:(id)type;
- (id)removeAllClientAuthorizationsForAccountTypeWithIdentifier:(id)identifier;
- (id)removeAuthorizationForClient:(id)client accountType:(id)type;
- (id)removeAuthorizationForClient:(id)client accountTypeWithIdentifier:(id)identifier;
- (id)setAuthorization:(id)authorization forClient:(id)client onAccountType:(id)type;
@end

@implementation ACDClientAuthorizationManager

- (ACDClientAuthorizationManager)initWithDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = ACDClientAuthorizationManager;
  v5 = [(ACDClientAuthorizationManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_databaseConnection, connectionCopy);
  }

  return v6;
}

- (id)authorizationForClient:(id)client accountType:(id)type
{
  clientCopy = client;
  identifier = [type identifier];
  v8 = [(ACDClientAuthorizationManager *)self authorizationForClient:clientCopy accountTypeWithIdentifier:identifier];

  return v8;
}

- (id)authorizationForClient:(id)client accountTypeWithIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDClientAuthorizationManager authorizationForClient:accountTypeWithIdentifier:];
  }

  bundleID = [clientCopy bundleID];
  v10 = bundleID == 0;

  if (v10)
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = clientCopy;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "%@ has a nil bundle ID. Will not try to find ClientAuthorization.", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v11 = [ACDTCCUtilities TCCStateForClient:clientCopy accountTypeID:identifierCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11 == 1;
    }

    else
    {
      v16 = _ACDLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = clientCopy;
        *&buf[12] = 2112;
        *&buf[14] = identifierCopy;
        _os_log_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEFAULT, "No TCC state found: %@, %@", buf, 0x16u);
      }

      v13 = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_databaseConnection);
    managedObjectContext = [WeakRetained managedObjectContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __82__ACDClientAuthorizationManager_authorizationForClient_accountTypeWithIdentifier___block_invoke;
    v21[3] = &unk_27848CDE8;
    v22 = clientCopy;
    v23 = identifierCopy;
    selfCopy = self;
    v26 = v12 != 0;
    v25 = buf;
    v27 = v13;
    [managedObjectContext performBlockAndWait:v21];

    v15 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

void __82__ACDClientAuthorizationManager_authorizationForClient_accountTypeWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) bundleID];
  v4 = [v2 predicateWithFormat:@"bundleID == %@ AND accountType.identifier == %@", v3, *(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v6 = [WeakRetained fetchObjectsForEntityNamed:@"Authorization" withPredicate:v4];

  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __82__ACDClientAuthorizationManager_authorizationForClient_accountTypeWithIdentifier___block_invoke_cold_1(v6, v7);
  }

  v8 = [v6 lastObject];
  if (!v8 && (*(a1 + 64) & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [[ACDClientAuthorization alloc] initForClient:*(a1 + 32)];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 48);
  v13 = [v8 grantedPermissions];
  v14 = [v12 _setFromCSVString:v13];
  [*(*(*(a1 + 56) + 8) + 40) setGrantedPermissions:v14];

  v15 = [v8 options];
  [*(*(*(a1 + 56) + 8) + 40) setOptions:v15];

  if (![ACDTCCUtilities TCCSupportedForAccountTypeID:*(a1 + 40)])
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    v16 = 1;
    goto LABEL_9;
  }

  if (*(a1 + 64) != 1)
  {
    v18 = objc_loadWeakRetained((*(a1 + 48) + 8));
    [v18 deleteObject:v8];

    v19 = objc_loadWeakRetained((*(a1 + 48) + 8));
    [v19 saveWithError:0];

LABEL_11:
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;

    goto LABEL_12;
  }

  v16 = *(a1 + 65);
  v17 = *(*(*(a1 + 56) + 8) + 40);
LABEL_9:
  [v17 setIsGranted:v16];
LABEL_12:
}

- (id)setAuthorization:(id)authorization forClient:(id)client onAccountType:(id)type
{
  v44 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  clientCopy = client;
  typeCopy = type;
  identifier = [typeCopy identifier];
  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136381699;
    *&buf[4] = "[ACDClientAuthorizationManager setAuthorization:forClient:onAccountType:]";
    *&buf[12] = 1026;
    *&buf[14] = 102;
    *&buf[18] = 2112;
    *&buf[20] = authorizationCopy;
    *&buf[28] = 2112;
    *&buf[30] = clientCopy;
    *&buf[38] = 2112;
    v43 = identifier;
    _os_log_debug_impl(&dword_221D2F000, v12, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d called (%@, %@, %@)", buf, 0x30u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__6;
  *&buf[32] = __Block_byref_object_dispose__6;
  v43 = 0;
  bundleID = [clientCopy bundleID];
  v14 = bundleID == 0;

  if (v14)
  {
    v25 = _ACDLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ACDClientAuthorizationManager setAuthorization:forClient:onAccountType:];
    }

    v24 = 0;
  }

  else
  {
    if (+[ACDTCCUtilities TCCSupportedForAccountTypeID:](ACDTCCUtilities, "TCCSupportedForAccountTypeID:", identifier) && !+[ACDTCCUtilities setTCCStateForClient:accountTypeID:toGranted:](ACDTCCUtilities, "setTCCStateForClient:accountTypeID:toGranted:", clientCopy, identifier, [authorizationCopy isGranted]))
    {
      v15 = _ACDLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACDClientAuthorizationManager setAuthorization:forClient:onAccountType:];
      }

      v16 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277CCA450];
      v41 = @"Setting TCC failed.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:v17];
      v19 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v18;
    }

    if (!*(*&buf[8] + 40))
    {
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3032000000;
      v38[3] = __Block_byref_object_copy__6;
      v38[4] = __Block_byref_object_dispose__6;
      options = [authorizationCopy options];
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3032000000;
      v36[3] = __Block_byref_object_copy__6;
      v36[4] = __Block_byref_object_dispose__6;
      grantedPermissions = [authorizationCopy grantedPermissions];
      v37 = [(ACDClientAuthorizationManager *)self _csvStringFromSet:grantedPermissions];

      WeakRetained = objc_loadWeakRetained(&self->_databaseConnection);
      managedObjectContext = [WeakRetained managedObjectContext];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __74__ACDClientAuthorizationManager_setAuthorization_forClient_onAccountType___block_invoke;
      v28[3] = &unk_27848CE10;
      v29 = clientCopy;
      v30 = identifier;
      selfCopy = self;
      v32 = typeCopy;
      v33 = v36;
      v34 = v38;
      v35 = buf;
      [managedObjectContext performBlockAndWait:v28];

      _Block_object_dispose(v36, 8);
      _Block_object_dispose(v38, 8);
    }

    v23 = _ACDLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ACDClientAuthorizationManager setAuthorization:forClient:onAccountType:];
    }

    v24 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

void __74__ACDClientAuthorizationManager_setAuthorization_forClient_onAccountType___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) bundleID];
  v4 = [v2 predicateWithFormat:@"bundleID == %@ AND accountType.identifier == %@", v3, *(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v6 = [WeakRetained fetchObjectsForEntityNamed:@"Authorization" withPredicate:v4];

  v7 = [v6 lastObject];
  v8 = objc_loadWeakRetained((*(a1 + 48) + 8));
  v9 = [*(a1 + 56) objectID];
  v10 = [v8 objectForObjectURI:v9];

  if (!v7)
  {
    v11 = objc_loadWeakRetained((*(a1 + 48) + 8));
    v7 = [v11 insertNewObjectForEntityForName:@"Authorization"];

    [v7 setAccountType:v10];
    v12 = [*(a1 + 32) bundleID];
    [v7 setBundleID:v12];
  }

  [v7 setGrantedPermissions:*(*(*(a1 + 64) + 8) + 40)];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [v7 setOptions:?];
  }

  v13 = objc_loadWeakRetained((*(a1 + 48) + 8));
  v15 = *(a1 + 80);
  v14 = a1 + 80;
  v16 = *(v15 + 8);
  obj = *(v16 + 40);
  [v13 saveWithError:&obj rollbackOnFailure:1];
  objc_storeStrong((v16 + 40), obj);

  if (*(*(*v14 + 8) + 40))
  {
    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __74__ACDClientAuthorizationManager_setAuthorization_forClient_onAccountType___block_invoke_cold_1(v14);
    }
  }
}

- (id)removeAuthorizationForClient:(id)client accountType:(id)type
{
  clientCopy = client;
  identifier = [type identifier];
  v8 = [(ACDClientAuthorizationManager *)self removeAuthorizationForClient:clientCopy accountTypeWithIdentifier:identifier];

  return v8;
}

- (id)removeAuthorizationForClient:(id)client accountTypeWithIdentifier:(id)identifier
{
  v32[1] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDClientAuthorizationManager removeAuthorizationForClient:accountTypeWithIdentifier:];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__6;
  v29 = __Block_byref_object_dispose__6;
  v30 = 0;
  if ([ACDTCCUtilities TCCSupportedForAccountTypeID:identifierCopy]&& ![ACDTCCUtilities clearTCCStateForClient:clientCopy accountTypeID:identifierCopy])
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACDClientAuthorizationManager removeAuthorizationForClient:accountTypeWithIdentifier:];
    }

    v10 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32[0] = @"Removing TCC state failed. God knows why.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v12 = [v10 errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:v11];
    v13 = v26[5];
    v26[5] = v12;
  }

  if (!v26[5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_databaseConnection);
    managedObjectContext = [WeakRetained managedObjectContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__ACDClientAuthorizationManager_removeAuthorizationForClient_accountTypeWithIdentifier___block_invoke;
    v20[3] = &unk_27848C3F8;
    v21 = clientCopy;
    v22 = identifierCopy;
    selfCopy = self;
    v24 = &v25;
    [managedObjectContext performBlockAndWait:v20];
  }

  v16 = _ACDLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACDClientAuthorizationManager removeAuthorizationForClient:accountTypeWithIdentifier:];
  }

  v17 = v26[5];
  _Block_object_dispose(&v25, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __88__ACDClientAuthorizationManager_removeAuthorizationForClient_accountTypeWithIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) bundleID];
  v4 = [v2 predicateWithFormat:@"bundleID == %@ AND accountType.identifier == %@", v3, *(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  v6 = [WeakRetained fetchObjectsForEntityNamed:@"Authorization" withPredicate:v4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = objc_loadWeakRetained((*(a1 + 48) + 8));
        [v13 deleteObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v14 = objc_loadWeakRetained((*(a1 + 48) + 8));
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v17 = *(v16 + 8);
  obj = *(v17 + 40);
  [v14 saveWithError:&obj rollbackOnFailure:1];
  objc_storeStrong((v17 + 40), obj);

  if (*(*(*v15 + 8) + 40))
  {
    v18 = _ACDLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __88__ACDClientAuthorizationManager_removeAuthorizationForClient_accountTypeWithIdentifier___block_invoke_cold_1(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)allAuthorizationsForAccountType:(id)type
{
  identifier = [type identifier];
  v5 = [(ACDClientAuthorizationManager *)self allAuthorizationsForAccountTypeWithIdentifier:identifier];

  return v5;
}

- (id)allAuthorizationsForAccountTypeWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDClientAuthorizationManager allAuthorizationsForAccountTypeWithIdentifier:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__6;
  v25[4] = __Block_byref_object_dispose__6;
  v26 = 0;
  v7 = [ACDTCCUtilities allTCCStatesForAccountTypeID:identifierCopy];
  WeakRetained = objc_loadWeakRetained(&self->_databaseConnection);
  managedObjectContext = [WeakRetained managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__ACDClientAuthorizationManager_allAuthorizationsForAccountTypeWithIdentifier___block_invoke;
  v19[3] = &unk_27848CE38;
  v10 = identifierCopy;
  v24 = v25;
  v20 = v10;
  selfCopy = self;
  v11 = v7;
  v22 = v11;
  v12 = v6;
  v23 = v12;
  [managedObjectContext performBlockAndWait:v19];

  v13 = _ACDLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    [(ACDClientAuthorizationManager *)v14 allAuthorizationsForAccountTypeWithIdentifier:buf, v10, v13];
  }

  v15 = v23;
  v16 = v12;

  _Block_object_dispose(v25, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __79__ACDClientAuthorizationManager_allAuthorizationsForAccountTypeWithIdentifier___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier == %@", *(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v25 = v2;
  v4 = [WeakRetained fetchObjectsForEntityNamed:@"Authorization" withPredicate:v2];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(*(*(a1 + 64) + 8) + 40);
  v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 bundleID];
        v13 = [ACDClientAuthorization alloc];
        v14 = [ACDClient clientWithBundleID:v12];
        v15 = [(ACDClientAuthorization *)v13 initForClient:v14];

        v16 = [*(a1 + 48) objectForKey:v12];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 BOOLValue];
        }

        else
        {
          v19 = _ACDLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v32 = v12;
            _os_log_debug_impl(&dword_221D2F000, v19, OS_LOG_TYPE_DEBUG, "No match found in TCC for bundleID: %@ - setting isGranted to TRUE", buf, 0xCu);
          }

          v18 = 1;
        }

        [v15 setIsGranted:v18];
        v20 = *(a1 + 40);
        v21 = [v11 grantedPermissions];
        v22 = [v20 _setFromCSVString:v21];
        [v15 setGrantedPermissions:v22];

        v23 = [v11 options];
        [v15 setOptions:v23];

        [*(a1 + 56) addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)removeAllClientAuthorizationsForAccountType:(id)type
{
  identifier = [type identifier];
  v5 = [(ACDClientAuthorizationManager *)self removeAllClientAuthorizationsForAccountTypeWithIdentifier:identifier];

  return v5;
}

- (id)removeAllClientAuthorizationsForAccountTypeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDClientAuthorizationManager removeAllClientAuthorizationsForAccountTypeWithIdentifier:];
  }

  [ACDTCCUtilities clearAllTCCStatesForAccountTypeID:identifierCopy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_databaseConnection);
  managedObjectContext = [WeakRetained managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__ACDClientAuthorizationManager_removeAllClientAuthorizationsForAccountTypeWithIdentifier___block_invoke;
  v12[3] = &unk_27848BF28;
  v8 = identifierCopy;
  v13 = v8;
  selfCopy = self;
  v15 = &v16;
  [managedObjectContext performBlockAndWait:v12];

  v9 = _ACDLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACDClientAuthorizationManager removeAllClientAuthorizationsForAccountTypeWithIdentifier:];
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __91__ACDClientAuthorizationManager_removeAllClientAuthorizationsForAccountTypeWithIdentifier___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier == %@", a1[4]];
  WeakRetained = objc_loadWeakRetained((a1[5] + 8));
  v4 = [WeakRetained fetchObjectsForEntityNamed:@"Authorization" withPredicate:v2];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = objc_loadWeakRetained((a1[5] + 8));
        [v11 deleteObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v12 = objc_loadWeakRetained((a1[5] + 8));
  v14 = a1[6];
  v13 = (a1 + 6);
  v15 = *(v14 + 8);
  obj = *(v15 + 40);
  [v12 saveWithError:&obj rollbackOnFailure:1];
  objc_storeStrong((v15 + 40), obj);

  if (*(*(*v13 + 8) + 40))
  {
    v16 = _ACDLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __88__ACDClientAuthorizationManager_removeAuthorizationForClient_accountTypeWithIdentifier___block_invoke_cold_1(v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_csvStringFromSet:(id)set
{
  setCopy = set;
  if ([setCopy count])
  {
    allObjects = [setCopy allObjects];
    v5 = [allObjects componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = &stru_2835374D8;
  }

  return v5;
}

- (id)_setFromCSVString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [stringCopy componentsSeparatedByString:{@", "}];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

- (void)authorizationForClient:accountTypeWithIdentifier:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136381443;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_4(&dword_221D2F000, v0, v1, "%{private}s:%{public}d called (%@, %@)", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __82__ACDClientAuthorizationManager_authorizationForClient_accountTypeWithIdentifier___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "Found %@ Authorization entities in DB. Taking the last one.", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setAuthorization:forClient:onAccountType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Failed to set TCC state for: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setAuthorization:forClient:onAccountType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAuthorization:forClient:onAccountType:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Client (%@) with no bundle ID passed to setAccessGranted! Ignoring...", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __74__ACDClientAuthorizationManager_setAuthorization_forClient_onAccountType___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_3(a1) localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_3(&dword_221D2F000, v3, v4, "Could not save new Authorization entity: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAuthorizationForClient:accountTypeWithIdentifier:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136381443;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_4(&dword_221D2F000, v0, v1, "%{private}s:%{public}d called (%@, %@)", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeAuthorizationForClient:accountTypeWithIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAuthorizationForClient:accountTypeWithIdentifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__ACDClientAuthorizationManager_removeAuthorizationForClient_accountTypeWithIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_3(a1) localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_3(&dword_221D2F000, v3, v4, "Could not delete Authorization entities: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)allAuthorizationsForAccountTypeWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allAuthorizationsForAccountTypeWithIdentifier:(uint64_t)a3 .cold.2(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_221D2F000, log, OS_LOG_TYPE_DEBUG, "Exiting - allAuthorizationsForAccountType: %@ found %@ results.", buf, 0x16u);
}

- (void)removeAllClientAuthorizationsForAccountTypeWithIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAllClientAuthorizationsForAccountTypeWithIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end