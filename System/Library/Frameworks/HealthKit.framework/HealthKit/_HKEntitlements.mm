@interface _HKEntitlements
+ (id)_allowedEntitlementsSet;
+ (id)_containerAppExtensionEntitlementsForCurrentTask;
+ (id)_entitlementsWithSecTask:(__SecTask *)a3 valueOverrides:(id)a4 error:(id *)a5;
+ (id)entitlementsForCurrentTaskWithError:(id *)a3;
+ (id)entitlementsWithApplicationIdentifier:(id)a3;
+ (id)entitlementsWithConnection:(id)a3 error:(id *)a4;
+ (id)entitlementsWithDictionary:(id)a3;
- (BOOL)arrayEntitlement:(id)a3 containsString:(id)a4;
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)hasPrivateMetadataAccess;
- (_HKEntitlements)init;
- (id)_initWithEntitlementValues:(id)a3;
- (id)_typesFromIdentifierArray:(id)a3;
- (id)stringForEntitlement:(id)a3;
- (id)typesForReadAuthorizationBypass;
- (id)typesForReadAuthorizationOverride;
- (id)typesForWriteAuthorizationOverride;
- (id)valueForEntitlement:(id)a3;
@end

@implementation _HKEntitlements

+ (id)_allowedEntitlementsSet
{
  if (_allowedEntitlementsSet_onceToken != -1)
  {
    +[_HKEntitlements _allowedEntitlementsSet];
  }

  v3 = _allowedEntitlementsSet_entitlementKeySet;

  return v3;
}

+ (id)entitlementsForCurrentTaskWithError:(id *)a3
{
  if (_currentTaskEntitlementsOverride)
  {
    v3 = _currentTaskEntitlementsOverride;
  }

  else
  {
    v6 = SecTaskCreateFromSelf(0);
    if (v6)
    {
      v7 = v6;
      v8 = [a1 _containerAppExtensionEntitlementsForCurrentTask];
      v3 = [a1 _entitlementsWithSecTask:v7 valueOverrides:v8 error:a3];
      CFRelease(v7);
    }

    else
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a3 code:100 description:@"Unable to retrieve current task for entitlement lookup."];
      v3 = 0;
    }
  }

  return v3;
}

+ (id)_containerAppExtensionEntitlementsForCurrentTask
{
  if (_HKCurrentTaskIsAppExtension())
  {
    os_unfair_lock_lock(&_containerAppExtensionEntitlementsForCurrentTask__lock);
    if (!_containerAppExtensionEntitlementsForCurrentTask_currentTaskEntitlements)
    {
      v2 = dispatch_semaphore_create(0);
      v3 = [HKEntitlementStore alloc];
      v4 = objc_alloc_init(HKHealthStore);
      v5 = [(HKEntitlementStore *)v3 initWithHealthStore:v4];

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67___HKEntitlements__containerAppExtensionEntitlementsForCurrentTask__block_invoke;
      v9[3] = &unk_1E737A010;
      v10 = v2;
      v6 = v2;
      [(HKEntitlementStore *)v5 fetchContainerAppExtensionEntitlementsWithCompletion:v9];
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    }

    os_unfair_lock_unlock(&_containerAppExtensionEntitlementsForCurrentTask__lock);
    v7 = _containerAppExtensionEntitlementsForCurrentTask_currentTaskEntitlements;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

+ (id)entitlementsWithConnection:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    [(_HKEntitlements *)a2 entitlementsWithConnection:a1 error:&v17];
  }

  v9 = SecTaskCreateWithAuditToken(0, &v17);
  if (v9)
  {
    v10 = v9;
    if ([v8 hk_isAppExtension])
    {
      v11 = [MEMORY[0x1E6963618] hk_appExtensionContainerBundleForConnection:v8];
      if (v11)
      {
        v12 = [a1 _allowedEntitlementsSet];
        v13 = [v11 entitlementValuesForKeys:v12];
        v14 = [v13 rawValues];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [a1 _entitlementsWithSecTask:v10 valueOverrides:v14 error:a4];
    CFRelease(v10);
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:100 description:@"Unable to retrieve remote task for entitlement lookup."];
    v15 = 0;
  }

  return v15;
}

+ (id)_entitlementsWithSecTask:(__SecTask *)a3 valueOverrides:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a4;
  error = 0;
  v9 = [a1 _allowedEntitlementsSet];
  v10 = [v9 allObjects];

  v11 = SecTaskCopyValuesForEntitlements(a3, v10, &error);
  v12 = [(__CFDictionary *)v11 mutableCopy];

  v13 = error;
  if (v12)
  {
    v27 = error;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v10;
    v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v8 objectForKeyedSubscript:v19];
          if (v20)
          {
            [v12 setObject:v20 forKeyedSubscript:v19];
          }
        }

        v16 = [(__CFArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    v21 = [[a1 alloc] _initWithEntitlementValues:v12];
    v13 = v27;
  }

  else
  {
    v22 = error;
    v23 = v22;
    if (v22)
    {
      if (a5)
      {
        v24 = v22;
        *a5 = v23;
      }

      else
      {
        _HKLogDroppedError(v22);
      }
    }

    v21 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)entitlementsWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithEntitlementValues:v4];

  return v5;
}

+ (id)entitlementsWithApplicationIdentifier:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"application-identifier";
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 entitlementsWithDictionary:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (_HKEntitlements)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithEntitlementValues:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _HKEntitlements;
  v5 = [(_HKEntitlements *)&v14 init];
  if (v5)
  {
    v6 = [objc_opt_class() _allowedEntitlementsSet];
    v7 = [v4 hk_filteredDictionaryForKeys:v6];
    entitlementValues = v5->_entitlementValues;
    v5->_entitlementValues = v7;

    v9 = [v4 objectForKeyedSubscript:@"application-identifier"];
    v10 = v9;
    if (v9)
    {
      if ([v9 hasPrefix:@"appshack."])
      {
        v11 = [v10 substringFromIndex:{objc_msgSend(@"appshack.", "length")}];
        applicationIdentifier = v5->_applicationIdentifier;
        v5->_applicationIdentifier = v11;
      }

      else
      {
        CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
      }
    }
  }

  return v5;
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(_HKEntitlements *)self valueForEntitlement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasPrivateMetadataAccess
{
  if ([(_HKEntitlements *)self hasEntitlement:@"com.apple.private.healthkit"])
  {
    return 1;
  }

  return [(_HKEntitlements *)self hasEntitlement:@"com.apple.private.healthkit.metadata.private"];
}

- (BOOL)arrayEntitlement:(id)a3 containsString:(id)a4
{
  v6 = a4;
  v7 = [(_HKEntitlements *)self valueForEntitlement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 containsObject:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringForEntitlement:(id)a3
{
  v3 = [(_HKEntitlements *)self valueForEntitlement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)valueForEntitlement:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() _allowedEntitlementsSet];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    [(_HKEntitlements *)a2 valueForEntitlement:v5];
  }

  v8 = [(NSDictionary *)self->_entitlementValues objectForKeyedSubscript:v5];

  return v8;
}

- (id)typesForWriteAuthorizationOverride
{
  v3 = [(_HKEntitlements *)self valueForEntitlement:@"com.apple.private.healthkit.write_authorization_override"];
  v4 = [(_HKEntitlements *)self _typesFromIdentifierArray:v3];

  return v4;
}

- (id)typesForReadAuthorizationOverride
{
  v3 = [(_HKEntitlements *)self valueForEntitlement:@"com.apple.private.healthkit.read_authorization_override"];
  v4 = [(_HKEntitlements *)self _typesFromIdentifierArray:v3];

  return v4;
}

- (id)typesForReadAuthorizationBypass
{
  v3 = [(_HKEntitlements *)self valueForEntitlement:@"com.apple.private.healthkit.read_authorization_bypass"];
  v4 = [(_HKEntitlements *)self _typesFromIdentifierArray:v3];

  return v4;
}

- (id)_typesFromIdentifierArray:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
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

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [HKObjectType _typeWithIdentifier:v11, v15];
            if (v12)
            {
              [v5 addObject:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (double)entitlementsWithConnection:(_OWORD *)a3 error:.cold.1(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_HKEntitlements.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

- (void)valueForEntitlement:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_HKEntitlements.m" lineNumber:238 description:{@"Entitlement key %@ must be in the set of allowlisted entitlement keys", a3}];
}

@end