@interface TKLocalSEPKey
+ (int)keyClassForProtection:(id)a3;
+ (void)setContextErrorHandler:(id)a3;
+ (void)setupKeybagForTesting:(BOOL)a3;
- (BOOL)callerHasEntitlement:(id)a3 error:(id *)a4;
- (BOOL)evaluateRequirementIgnoringAccessGroups:(__ACMRequirement *)a3;
- (NSString)callerName;
- (id)_initWithAuthContext:(id)a3 caller:(id)a4;
- (id)_initWithKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(__SecAccessControl *)a5 options:(id)a6 authContext:(id)a7 caller:(id)a8 forceSystemSession:(BOOL)a9 error:(id *)a10;
- (id)authContextWithError:(id *)a3;
- (id)encodedAccessGroups;
- (id)parametersWithACMHandle:(id)a3;
- (id)valueForEntitlement:(id)a3;
- (void)processAccessGroupsOfACLDictionary:(id)a3 intoGroups:(id)a4 callerGroups:(id)a5;
@end

@implementation TKLocalSEPKey

- (id)encodedAccessGroups
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(TKLocalSEPKey *)self sac];

  if (v4)
  {
    v5 = [(TKLocalSEPKey *)self valueForEntitlement:@"keychain-access-groups"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    v7 = [v6 mutableCopy];
    v8 = [(TKLocalSEPKey *)self valueForEntitlement:@"application-identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 addObject:v8];
    }

    if ([v7 count])
    {
      [(TKLocalSEPKey *)self accessControl];
      v9 = SecAccessControlGetConstraints();
      [(TKLocalSEPKey *)self processAccessGroupsOfACLDictionary:v9 intoGroups:v3 callerGroups:v7];
    }
  }

  v10 = [[TKBERTLVRecord alloc] initWithPropertyList:v3];
  v11 = [(TKTLVRecord *)v10 data];

  return v11;
}

- (NSString)callerName
{
  if (!self->_callerName)
  {
    v3 = [(TKLocalSEPKey *)self caller];

    if (v3)
    {
      memset(&audittoken, 0, sizeof(audittoken));
      v4 = [(TKLocalSEPKey *)self caller];
      v5 = v4;
      if (v4)
      {
        [v4 auditToken];
      }

      else
      {
        memset(&audittoken, 0, sizeof(audittoken));
      }

      v6 = [MEMORY[0x1E695DF88] dataWithLength:4096];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v6 length:"bytes") encoding:{proc_pidpath_audittoken(&audittoken, objc_msgSend(v6, "mutableBytes"), objc_msgSend(v6, "length")), 4}];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v9 lastPathComponent];
      v12 = [(TKLocalSEPKey *)self caller];
      v13 = [v10 stringWithFormat:@"%@<%d>", v11, objc_msgSend(v12, "processIdentifier")];
      callerName = self->_callerName;
      self->_callerName = v13;
    }

    else
    {
      v6 = [MEMORY[0x1E696AE30] processInfo];
      v7 = [v6 processName];
      v8 = self->_callerName;
      self->_callerName = v7;
    }
  }

  v15 = self->_callerName;

  return v15;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  if (_testingCallerEntitlements)
  {
    v5 = [_testingCallerEntitlements objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = [(TKLocalSEPKey *)self caller];

    if (v6)
    {
      v7 = [(TKLocalSEPKey *)self caller];
      v5 = [v7 valueForEntitlement:v4];
    }

    else
    {
      if (valueForEntitlement__onceToken != -1)
      {
        [TKLocalSEPKey valueForEntitlement:];
      }

      error = 0;
      v5 = SecTaskCopyValueForEntitlement(valueForEntitlement__selfTask, v4, &error);
    }
  }

  return v5;
}

SecTaskRef __37__TKLocalSEPKey_valueForEntitlement___block_invoke()
{
  result = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  valueForEntitlement__selfTask = result;
  return result;
}

- (void)processAccessGroupsOfACLDictionary:(id)a3 intoGroups:(id)a4 callerGroups:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__TKLocalSEPKey_processAccessGroupsOfACLDictionary_intoGroups_callerGroups___block_invoke;
  v12[3] = &unk_1E86B78C0;
  v13 = v9;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v9;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
}

void __76__TKLocalSEPKey_processAccessGroupsOfACLDictionary_intoGroups_callerGroups___block_invoke(id *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([a2 isEqualToString:@"cag"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if ([a1[4] containsObject:v6])
      {
        [a1[5] addObject:v6];
      }

LABEL_17:

      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            if ([a1[4] containsObject:{v11, v13}])
            {
              [a1[5] addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }

      goto LABEL_17;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1[6] processAccessGroupsOfACLDictionary:v5 intoGroups:a1[5] callerGroups:a1[4]];
    }
  }

LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
}

- (id)parametersWithACMHandle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TKAKSParameters);
  [(TKAKSParameters *)v5 setData:v4 forKey:3];

  v6 = [(TKLocalSEPKey *)self encodedAccessGroups];
  [(TKAKSParameters *)v5 setData:v6 forKey:1];

  return v5;
}

+ (void)setContextErrorHandler:(id)a3
{
  contextErrorHandler = MEMORY[0x1E12D5690](a3, a2);

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)evaluateRequirementIgnoringAccessGroups:(__ACMRequirement *)a3
{
  Type = ACMRequirementGetType(a3, a2);
  if (Type == 8)
  {
    if (ACMRequirementGetState(a3) == 2)
    {
      return 1;
    }

    return ACMRequirementGetState(a3) == 1;
  }

  else
  {
    if (Type == 7)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__TKLocalSEPKey_evaluateRequirementIgnoringAccessGroups___block_invoke;
      v13[3] = &unk_1E86B78E8;
      v13[4] = self;
      v13[5] = &v14;
      ACMRequirementGetSubrequirements(a3, v13);
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      ACMRequirementGetProperty();
      v6 = *(v15 + 6) >= *(v10 + 6);
      _Block_object_dispose(&v9, 8);
      _Block_object_dispose(&v14, 8);
      return v6;
    }

    return ACMRequirementGetState(a3) == 2;
  }
}

uint64_t __57__TKLocalSEPKey_evaluateRequirementIgnoringAccessGroups___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) evaluateRequirementIgnoringAccessGroups:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

uint64_t __57__TKLocalSEPKey_evaluateRequirementIgnoringAccessGroups___block_invoke_2(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3 == 4)
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

uint64_t __75__TKLocalSEPKey_error_withAKSReturn_ACMHandle_AKSOperation_params_message___block_invoke(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (!a2 && (a3 & 1) == 0)
  {
    v4 = result;
    result = [*(result + 32) evaluateRequirementIgnoringAccessGroups:a4];
    if (result)
    {
      *(*(*(v4 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

- (id)authContextWithError:(id *)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = [(TKSEPKey *)self authContext];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
LABEL_7:
    v8 = [v5 externalizedContext];
    if (v8)
    {
      v9 = [[TKAuthContext alloc] initWithLAContext:v5 ACMHandle:v8 sharedResource:v6];
    }

    else
    {
      v10 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(TKLocalSEPKey *)v10 authContextWithError:v11, v12, v13, v14, v15, v16, v17];
      }

      if (a3)
      {
        v18 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v23[0] = @"LAContext.externalizedContext failed";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        *a3 = [v18 errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:v19];
      }

      if (contextErrorHandler)
      {
        (*(contextErrorHandler + 16))();
      }

      v9 = 0;
    }

    goto LABEL_17;
  }

  if (authContextWithError__onceToken != -1)
  {
    [TKLocalSEPKey authContextWithError:];
  }

  v6 = [authContextWithError__sharedResourceSlot resourceWithError:a3];
  v7 = [v6 object];
  if (v7)
  {
    v5 = v7;
    goto LABEL_7;
  }

  v5 = TK_LOG_sepkey_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(TKLocalSEPKey *)a3 authContextWithError:v5];
  }

  v9 = 0;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __38__TKLocalSEPKey_authContextWithError___block_invoke()
{
  v0 = [[TKSharedResourceSlot alloc] initWithName:@"LAContext/ACMHandle temporary default slot"];
  v1 = authContextWithError__sharedResourceSlot;
  authContextWithError__sharedResourceSlot = v0;

  [authContextWithError__sharedResourceSlot setIdleTimeout:3.0];
  [authContextWithError__sharedResourceSlot setCreateObjectBlock:&__block_literal_global_136];
  v2 = authContextWithError__sharedResourceSlot;

  return [v2 setObjectDestroyedBlock:&__block_literal_global_141];
}

id __38__TKLocalSEPKey_authContextWithError___block_invoke_2()
{
  atomic_fetch_add(TKAuthContextSerialNumber, 1u);
  v0 = TK_LOG_sepkey_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __38__TKLocalSEPKey_authContextWithError___block_invoke_2_cold_1();
  }

  gotLoadHelper_x8__OBJC_CLASS___LAContext(v1);
  v3 = objc_alloc_init(*(v2 + 3664));

  return v3;
}

void __38__TKLocalSEPKey_authContextWithError___block_invoke_138()
{
  v0 = TK_LOG_sepkey_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __38__TKLocalSEPKey_authContextWithError___block_invoke_138_cold_1();
  }
}

+ (void)setupKeybagForTesting:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (!_testingKeybagHandle)
    {
      if (aks_create_bag())
      {
        v4 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
        {
          +[TKLocalSEPKey setupKeybagForTesting:];
        }
      }

      if (aks_ref_key_enable_test_keys())
      {
        v5 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          +[TKLocalSEPKey setupKeybagForTesting:];
        }
      }

      aks_get_device_state();
      v6 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }
  }

  else if (_testingKeybagHandle)
  {
    if (aks_save_bag())
    {
      v7 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }

    if (aks_unload_bag())
    {
      v8 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }

    if (aks_invalidate_bag())
    {
      v9 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }
  }

  _enableTesting = a3;
  v10 = *MEMORY[0x1E69E9840];
}

void __39__TKLocalSEPKey_protectionForKeyClass___block_invoke()
{
  v11[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697AC20];
  v10[0] = &unk_1F5A84FD0;
  v10[1] = &unk_1F5A84FE8;
  v1 = *MEMORY[0x1E697ABE0];
  v11[0] = v0;
  v11[1] = v1;
  v2 = *MEMORY[0x1E697ABF8];
  v10[2] = &unk_1F5A85000;
  v10[3] = &unk_1F5A85018;
  v3 = *MEMORY[0x1E697AC28];
  v11[2] = v2;
  v11[3] = v3;
  v4 = *MEMORY[0x1E697ABE8];
  v10[4] = &unk_1F5A85030;
  v10[5] = &unk_1F5A85048;
  v5 = *MEMORY[0x1E697AC08];
  v11[4] = v4;
  v11[5] = v5;
  v10[6] = &unk_1F5A85060;
  v10[7] = &unk_1F5A85078;
  v6 = *MEMORY[0x1E697AC10];
  v11[6] = *MEMORY[0x1E697AC18];
  v11[7] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v8 = protectionForKeyClass__protections;
  protectionForKeyClass__protections = v7;

  v9 = *MEMORY[0x1E69E9840];
}

+ (int)keyClassForProtection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (keyClassForProtection__once == -1)
  {
    if (!v3)
    {
LABEL_6:
      v7 = 6;
      goto LABEL_7;
    }
  }

  else
  {
    +[TKLocalSEPKey keyClassForProtection:];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [keyClassForProtection__protections objectForKeyedSubscript:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v5 integerValue];

LABEL_7:
  return v7;
}

void __39__TKLocalSEPKey_keyClassForProtection___block_invoke()
{
  v8[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697ABE0];
  v7[0] = *MEMORY[0x1E697AC20];
  v7[1] = v0;
  v8[0] = &unk_1F5A84FD0;
  v8[1] = &unk_1F5A84FE8;
  v1 = *MEMORY[0x1E697AC28];
  v7[2] = *MEMORY[0x1E697ABF8];
  v7[3] = v1;
  v8[2] = &unk_1F5A85000;
  v8[3] = &unk_1F5A85018;
  v2 = *MEMORY[0x1E697AC08];
  v7[4] = *MEMORY[0x1E697ABE8];
  v7[5] = v2;
  v8[4] = &unk_1F5A85030;
  v8[5] = &unk_1F5A85048;
  v3 = *MEMORY[0x1E697AC10];
  v7[6] = *MEMORY[0x1E697AC18];
  v7[7] = v3;
  v8[6] = &unk_1F5A85060;
  v8[7] = &unk_1F5A85078;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:8];
  v5 = keyClassForProtection__protections;
  keyClassForProtection__protections = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_initWithAuthContext:(id)a3 caller:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TKLocalSEPKey;
  v8 = [(TKSEPKey *)&v11 _initWithAuthContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a4);
  }

  return v9;
}

- (id)_initWithKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(__SecAccessControl *)a5 options:(id)a6 authContext:(id)a7 caller:(id)a8 forceSystemSession:(BOOL)a9 error:(id *)a10
{
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a3;
  LOBYTE(v22) = a9;
  v20 = [[TKLocalSEPRefKey alloc] _initWithKeyType:v19 keySize:a4 accessControl:a5 options:v18 authContext:v17 caller:v16 forceSystemSession:v22 error:a10];

  return v20;
}

- (BOOL)callerHasEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TKLocalSEPKey *)self valueForEntitlement:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue])
  {
    v8 = 1;
  }

  else
  {
    v9 = TK_LOG_sepkey_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [TKLocalSEPKey callerHasEntitlement:error:];
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:0];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)error:withAKSReturn:ACMHandle:AKSOperation:params:message:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)error:withAKSReturn:ACMHandle:AKSOperation:params:message:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)authContextWithError:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2(&dword_1DF413000, a1, a3, "LAContext.externalizedContext(sn=%d) failed", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)authContextWithError:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_1DF413000, a2, OS_LOG_TYPE_FAULT, "failed to create shared resource: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __38__TKLocalSEPKey_authContextWithError___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__TKLocalSEPKey_authContextWithError___block_invoke_138_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  atomic_load(TKAuthContextSerialNumber);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)keybagHandleForceSystemSession:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)setupKeybagForTesting:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_1DF413000, v0, v1, "Failed to save testing keybag, err=%08x", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setupKeybagForTesting:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_1DF413000, v0, v1, "Failed to unload testing keybag, err=%08x", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setupKeybagForTesting:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_1DF413000, v0, v1, "Failed to invalidate testing keybag, err=%08x", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setupKeybagForTesting:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_1DF413000, v0, v1, "Failed to create testing keybag, err=%08x", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setupKeybagForTesting:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_1DF413000, v0, v1, "Failed to enable test keys, err=%08x", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callerHasEntitlement:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v7 = *MEMORY[0x1E69E9840];
  v3 = [v2 callerName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_1();
  v6 = v1;
  _os_log_fault_impl(&dword_1DF413000, v0, OS_LOG_TYPE_FAULT, "Requested SEP key operation not allowed (%{public}@ is missing '%{public}@' entitlement)", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end