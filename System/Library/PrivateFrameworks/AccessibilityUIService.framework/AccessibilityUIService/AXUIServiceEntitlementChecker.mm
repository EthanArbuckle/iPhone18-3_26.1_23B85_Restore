@interface AXUIServiceEntitlementChecker
- (AXUIServiceEntitlementChecker)initWithServiceClass:(Class)class;
- (BOOL)_clientProcessWithAuditToken:(id *)token hasEntitlement:(id)entitlement;
- (BOOL)_isSafeToProcessMessageFromUnentitledProcessWithIdentifier:(unint64_t)identifier;
- (BOOL)serviceCanProcessMessageWithIdentifier:(unint64_t)identifier fromClientWithConnection:(id)connection possibleRequiredEntitlements:(id *)entitlements needsToRequireEntitlements:(BOOL *)requireEntitlements;
- (id)_possibleRequiredEntitlementForMessageWithIdentifier:(unint64_t)identifier;
- (id)_singleRequiredEntitlementForMessageWithIdentifier:(unint64_t)identifier;
- (unint64_t)_indexOfClientConnection:(id)connection;
- (void)clientConnectionWillBeTerminated:(id)terminated;
- (void)dealloc;
@end

@implementation AXUIServiceEntitlementChecker

- (AXUIServiceEntitlementChecker)initWithServiceClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = AXUIServiceEntitlementChecker;
  v4 = [(AXUIServiceEntitlementChecker *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXUIServiceEntitlementChecker *)v4 setServiceClass:class];
  }

  return v5;
}

- (void)dealloc
{
  [(AXUIServiceEntitlementChecker *)self setClientConnections:0];
  [(AXUIServiceEntitlementChecker *)self setEntitlementsCaches:0];
  v3.receiver = self;
  v3.super_class = AXUIServiceEntitlementChecker;
  [(AXUIServiceEntitlementChecker *)&v3 dealloc];
}

- (BOOL)serviceCanProcessMessageWithIdentifier:(unint64_t)identifier fromClientWithConnection:(id)connection possibleRequiredEntitlements:(id *)entitlements needsToRequireEntitlements:(BOOL *)requireEntitlements
{
  v51 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  clientConnections = [(AXUIServiceEntitlementChecker *)self clientConnections];
  v10 = [clientConnections count];
  entitlementsCaches = [(AXUIServiceEntitlementChecker *)self entitlementsCaches];
  v12 = [entitlementsCaches count];

  if (v10 != v12)
  {
    v13 = AXLogUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [AXUIServiceEntitlementChecker serviceCanProcessMessageWithIdentifier:v13 fromClientWithConnection:? possibleRequiredEntitlements:? needsToRequireEntitlements:?];
    }
  }

  requireEntitlementsCopy = requireEntitlements;
  v14 = connectionCopy;
  v15 = [(AXUIServiceEntitlementChecker *)self _indexOfClientConnection:connectionCopy];
  entitlementsCaches2 = [(AXUIServiceEntitlementChecker *)self entitlementsCaches];
  identifierCopy2 = identifier;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = 0;
  }

  else
  {
    v44 = [entitlementsCaches2 objectAtIndex:v15];
    v19 = [v44 objectForKey:v18];
    if (v19)
    {
      v20 = v19;
      LOBYTE(v21) = [v19 BOOLValue];
      entitlementsCopy2 = entitlements;
      goto LABEL_37;
    }
  }

  v39 = v18;
  v40 = entitlementsCaches2;
  v20 = [(AXUIServiceEntitlementChecker *)self _singleRequiredEntitlementForMessageWithIdentifier:identifier];
  if (v20)
  {
    v23 = 0;
LABEL_12:
    memset(v49, 0, sizeof(v49));
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    if (v20)
    {
      LODWORD(v21) = [(AXUIServiceEntitlementChecker *)self _clientProcessWithAuditToken:v49 hasEntitlement:v20];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = v23;
      v21 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v21)
      {
        v25 = *v46;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v24);
            }

            if ([(AXUIServiceEntitlementChecker *)self _clientProcessWithAuditToken:v49 hasEntitlement:*(*(&v45 + 1) + 8 * i)])
            {
              LODWORD(v21) = 1;
              goto LABEL_26;
            }
          }

          v21 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }

LABEL_26:
        identifierCopy2 = identifier;
      }

      v14 = connectionCopy;
    }

    goto LABEL_29;
  }

  v23 = [(AXUIServiceEntitlementChecker *)self _possibleRequiredEntitlementForMessageWithIdentifier:identifier];
  if (v23)
  {
    goto LABEL_12;
  }

  LODWORD(v21) = [(AXUIServiceEntitlementChecker *)self _isSafeToProcessMessageFromUnentitledProcessWithIdentifier:identifier];
LABEL_29:
  entitlementsCaches2 = v40;
  entitlementsCopy2 = entitlements;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    clientConnections2 = [(AXUIServiceEntitlementChecker *)self clientConnections];
    if (!clientConnections2)
    {
      clientConnections2 = objc_opt_new();
      [(AXUIServiceEntitlementChecker *)self setClientConnections:clientConnections2];
    }

    v28 = identifierCopy2;
    [clientConnections2 addObject:v14];
    if (!v40)
    {
      entitlementsCaches2 = objc_opt_new();
      [(AXUIServiceEntitlementChecker *)self setEntitlementsCaches:entitlementsCaches2];
    }

    v29 = objc_opt_new();

    [entitlementsCaches2 addObject:v29];
  }

  else
  {
    v28 = identifierCopy2;
    v29 = v44;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  v44 = v29;
  [v29 setObject:v30 forKey:v39];

  v18 = v39;
  identifierCopy2 = v28;
LABEL_37:

  if (!entitlementsCopy2)
  {
    v32 = v44;
    v31 = requireEntitlementsCopy;
    if (!requireEntitlementsCopy)
    {
      goto LABEL_52;
    }

    if (v21)
    {
LABEL_43:
      *v31 = 0;
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v31 = requireEntitlementsCopy;
  if (v21)
  {
    *entitlementsCopy2 = 0;
    v32 = v44;
    if (!requireEntitlementsCopy)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  v33 = [(AXUIServiceEntitlementChecker *)self _singleRequiredEntitlementForMessageWithIdentifier:identifierCopy2];
  if (v33)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{v33, 0}];
  }

  else
  {
    [(AXUIServiceEntitlementChecker *)self _possibleRequiredEntitlementForMessageWithIdentifier:identifierCopy2];
  }
  v34 = ;
  *entitlementsCopy2 = v34;

  v32 = v44;
  if (requireEntitlementsCopy)
  {
LABEL_48:
    v35 = [(AXUIServiceEntitlementChecker *)self _singleRequiredEntitlementForMessageWithIdentifier:identifierCopy2];
    if (v35)
    {
      *v31 = 0;
    }

    else
    {
      v36 = [(AXUIServiceEntitlementChecker *)self _possibleRequiredEntitlementForMessageWithIdentifier:identifierCopy2];
      *v31 = v36 == 0;
    }
  }

LABEL_52:

  v37 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)clientConnectionWillBeTerminated:(id)terminated
{
  v4 = [(AXUIServiceEntitlementChecker *)self _indexOfClientConnection:terminated];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    clientConnections = [(AXUIServiceEntitlementChecker *)self clientConnections];
    [clientConnections removeObjectAtIndex:v5];
    if (![clientConnections count])
    {
      [(AXUIServiceEntitlementChecker *)self setClientConnections:0];
    }

    entitlementsCaches = [(AXUIServiceEntitlementChecker *)self entitlementsCaches];
    [entitlementsCaches removeObjectAtIndex:v5];
    if (![entitlementsCaches count])
    {
      [(AXUIServiceEntitlementChecker *)self setEntitlementsCaches:0];
    }
  }
}

- (unint64_t)_indexOfClientConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  [(AXUIServiceEntitlementChecker *)self clientConnections];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v14 + 1) + 8 * v10) isEqual:{connectionCopy, v14}])
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_clientProcessWithAuditToken:(id *)token hasEntitlement:(id)entitlement
{
  [entitlement UTF8String];
  v4 = xpc_copy_entitlement_for_token();
  v5 = v4;
  v6 = v4 && MEMORY[0x23EEF9360](v4) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v5);

  return v6;
}

- (id)_singleRequiredEntitlementForMessageWithIdentifier:(unint64_t)identifier
{
  serviceClass = [(AXUIServiceEntitlementChecker *)self serviceClass];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)serviceClass requiredEntitlementForProcessingMessageWithIdentifier:identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_possibleRequiredEntitlementForMessageWithIdentifier:(unint64_t)identifier
{
  serviceClass = [(AXUIServiceEntitlementChecker *)self serviceClass];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)serviceClass possibleRequiredEntitlementsForProcessingMessageWithIdentifier:identifier];
    v6 = v5;
    if (v5 && ![v5 count])
    {
      v7 = AXLogUI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [AXUIServiceEntitlementChecker _possibleRequiredEntitlementForMessageWithIdentifier:v7];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSafeToProcessMessageFromUnentitledProcessWithIdentifier:(unint64_t)identifier
{
  serviceClass = [(AXUIServiceEntitlementChecker *)self serviceClass];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)serviceClass isSafeToProcessMessageFromUnentitledProcessWithIdentifier:identifier];
}

- (void)serviceCanProcessMessageWithIdentifier:(uint64_t)a1 fromClientWithConnection:(NSObject *)a2 possibleRequiredEntitlements:needsToRequireEntitlements:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_23DBD1000, a2, OS_LOG_TYPE_FAULT, "The client connections array and the entitlements caches array are supposed to have the same number of elements (%@).", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end