@interface _CNContactsAPIServiceAuthorizationChecker
- (BOOL)acceptConnectionWithReason:(id)reason;
- (BOOL)check;
- (BOOL)isConnectionFromContactProvider;
- (BOOL)isConnectionFromTCCUncoupledProcess;
- (BOOL)rejectConnectionWithReason:(id)reason;
- (_CNContactsAPIServiceAuthorizationChecker)initWithConnection:(id)connection log:(id)log tccServices:(id)services;
- (id)bundleIdentifierForConnection:(id)connection;
- (void)_checkTCCAuthorizationStatus;
- (void)isConnectionFromTCCUncoupledProcess;
@end

@implementation _CNContactsAPIServiceAuthorizationChecker

- (BOOL)check
{
  if ([(_CNContactsAPIServiceAuthorizationChecker *)self isConnectionFromSystemService])
  {
    v3 = @"refusing to accept a system audit token";
LABEL_3:

    return [(_CNContactsAPIServiceAuthorizationChecker *)self rejectConnectionWithReason:v3];
  }

  if ([(_CNContactsAPIServiceAuthorizationChecker *)self isConnectionFromContactProvider])
  {
    v5 = @"contact provider";
  }

  else if ([(_CNContactsAPIServiceAuthorizationChecker *)self doesConnectionHaveFullTCCAccess])
  {
    v5 = @"TCC (full access)";
  }

  else if ([(_CNContactsAPIServiceAuthorizationChecker *)self doesConnectionHaveLimitedTCCAccess])
  {
    v5 = @"TCC (limited access)";
  }

  else
  {
    if (![(_CNContactsAPIServiceAuthorizationChecker *)self isConnectionFromTCCUncoupledProcess])
    {
      v3 = @"not authorized";
      goto LABEL_3;
    }

    v5 = @"TCC (uncoupled)";
  }

  return [(_CNContactsAPIServiceAuthorizationChecker *)self acceptConnectionWithReason:v5];
}

- (BOOL)isConnectionFromContactProvider
{
  allowContactProvidersWithoutTCCApproval = [(_CNContactsAPIServiceAuthorizationChecker *)self allowContactProvidersWithoutTCCApproval];
  if (allowContactProvidersWithoutTCCApproval)
  {
    connection = self->_connection;

    LOBYTE(allowContactProvidersWithoutTCCApproval) = [CNContactProviderSupportManager isConnectionForContactProvider:connection];
  }

  return allowContactProvidersWithoutTCCApproval;
}

- (void)_checkTCCAuthorizationStatus
{
  if (!self->_hasCheckedAccessStatus)
  {
    v3 = MEMORY[0x1E6996638];
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    v5 = [v3 auditToken:v6];
    self->_status = [(CNTCC *)self->_tccServices checkAuthorizationStatusOfAuditToken:v5 assumedIdentity:0];
    self->_hasCheckedAccessStatus = 1;
  }
}

- (_CNContactsAPIServiceAuthorizationChecker)initWithConnection:(id)connection log:(id)log tccServices:(id)services
{
  connectionCopy = connection;
  logCopy = log;
  servicesCopy = services;
  v16.receiver = self;
  v16.super_class = _CNContactsAPIServiceAuthorizationChecker;
  v12 = [(_CNContactsAPIServiceAuthorizationChecker *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v13->_log, log);
    objc_storeStrong(&v13->_tccServices, services);
    v14 = v13;
  }

  return v13;
}

- (BOOL)isConnectionFromTCCUncoupledProcess
{
  v16[1] = *MEMORY[0x1E69E9840];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  entitlementVerifier = [currentEnvironment entitlementVerifier];
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection auditToken];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v6 = *MEMORY[0x1E6996518];
  v16[0] = *MEMORY[0x1E6996518];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v14 = 0;
  v8 = [entitlementVerifier valuesForAuditToken:v15 forEntitlements:v7 error:&v14];
  v9 = v14;

  if (v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(_CNContactsAPIServiceAuthorizationChecker *)v9 isConnectionFromTCCUncoupledProcess];
    }

    v11 = 0;
  }

  else
  {
    v12 = [v8 objectForKeyedSubscript:v6];
    v11 = v12 != 0;
  }

  return v11;
}

- (BOOL)acceptConnectionWithReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  serviceName = [(NSXPCConnection *)self->_connection serviceName];
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  v7 = [(_CNContactsAPIServiceAuthorizationChecker *)self bundleIdentifierForConnection:self->_connection];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138544130;
    v11 = v7;
    v12 = 1024;
    v13 = processIdentifier;
    v14 = 2114;
    v15 = serviceName;
    v16 = 2114;
    v17 = reasonCopy;
    _os_log_impl(&dword_1954A0000, log, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: Accepting connection from %{public}@ (%d) for %{public}@ (%{public}@)", &v10, 0x26u);
  }

  return 1;
}

- (BOOL)rejectConnectionWithReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  serviceName = [(NSXPCConnection *)self->_connection serviceName];
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  v7 = [(_CNContactsAPIServiceAuthorizationChecker *)self bundleIdentifierForConnection:self->_connection];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138544130;
    v11 = v7;
    v12 = 1024;
    v13 = processIdentifier;
    v14 = 2114;
    v15 = serviceName;
    v16 = 2114;
    v17 = reasonCopy;
    _os_log_impl(&dword_1954A0000, log, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection: Rejecting connection from %{public}@ (%d) for %{public}@ (%{public}@)", &v10, 0x26u);
  }

  return 0;
}

- (id)bundleIdentifierForConnection:(id)connection
{
  v3 = MEMORY[0x1E6996638];
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v4 = [v3 auditToken:v7];
  v5 = [MEMORY[0x1E6996640] bundleIdentifierForAuditToken:v4];

  return v5;
}

- (void)isConnectionFromTCCUncoupledProcess
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "shouldAcceptNewConnection: Failed check for TCC uncoupled process %{public}@", &v2, 0xCu);
}

@end