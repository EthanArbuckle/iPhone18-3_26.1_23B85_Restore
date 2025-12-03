@interface _LSDRebuildClient
- (_LSDRebuildClient)initWithXPCConnection:(id)connection;
- (void)noteMigratorRunningWithReply:(id)reply;
- (void)performRebuildRegistration:(id)registration personaUniqueStrings:(id)strings reply:(id)reply;
@end

@implementation _LSDRebuildClient

- (_LSDRebuildClient)initWithXPCConnection:(id)connection
{
  v15 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 isEqualToString:@"com.apple.DataMigrator"];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  _xpcConnection = [connectionCopy _xpcConnection];
  v8 = _LSCheckEntitlementForXPCConnection(_xpcConnection, @"com.apple.private.coreservices.can-perform-rebuild-registration");

  if (v8)
  {
LABEL_6:
    v13.receiver = self;
    v13.super_class = _LSDRebuildClient;
    v9 = [(_LSDClient *)&v13 initWithXPCConnection:connectionCopy];
    goto LABEL_10;
  }

  v10 = _LSDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    -[_LSDRebuildClient initWithXPCConnection:].cold.1(buf, [connectionCopy processIdentifier], v10);
  }

  v9 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)performRebuildRegistration:(id)registration personaUniqueStrings:(id)strings reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  stringsCopy = strings;
  v26 = stringsCopy;
  replyCopy = reply;
  if (!stringsCopy)
  {
    goto LABEL_14;
  }

  v29 = 0;
  v9 = registrationCopy;
  v25 = stringsCopy;
  v10 = +[_LSPersonaDatabase sharedInstance];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v25];
  v12 = [(_LSPersonaDatabase *)v10 personasWithAttributesForPersonaUniqueStrings:v11 error:&v29];

  if (v12)
  {
    registrationCopy = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v30 + 1) + 8 * v16) mutableCopy];
          [v17 setObject:v12 forKeyedSubscript:@"LSPersonaUniqueStrings"];
          v18 = [v17 copy];
          [registrationCopy addObject:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }
  }

  else
  {
    registrationCopy = 0;
  }

  v19 = v29;
  if (registrationCopy)
  {

LABEL_14:
    v28 = 0;
    v20 = _LSServer_PerformExternalRebuildRegistration(registrationCopy, &v28);
    v21 = v28;
    if (!v20)
    {
      v22 = _LSInstallLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_LSDRebuildClient performRebuildRegistration:v21 personaUniqueStrings:v22 reply:?];
      }
    }

    replyCopy[2](replyCopy, v21);

    goto LABEL_22;
  }

  v23 = _LSDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [_LSDRebuildClient performRebuildRegistration:v25 personaUniqueStrings:v19 reply:v23];
  }

  replyCopy[2](replyCopy, v19);
  registrationCopy = v19;
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)noteMigratorRunningWithReply:(id)reply
{
  replyCopy = reply;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Noting migrator running.", v5, 2u);
  }

  _LSServer_NoteMigratorRunningInMigration();
  replyCopy[2](replyCopy, 0);
}

- (void)initWithXPCConnection:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Connecting pid %d is not entitled to perform rebuild registrations.", buf, 8u);
}

- (void)performRebuildRegistration:(uint64_t)a1 personaUniqueStrings:(uint64_t)a2 reply:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Could not look up personas given unique strings %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)performRebuildRegistration:(uint64_t)a1 personaUniqueStrings:(NSObject *)a2 reply:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not perform rebuild registration: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end