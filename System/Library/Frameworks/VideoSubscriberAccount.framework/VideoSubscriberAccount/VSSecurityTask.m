@interface VSSecurityTask
+ (VSSecurityTask)securityTaskForCurrentConnection;
+ (VSSecurityTask)securityTaskWithAuditToken:(id *)a3;
+ (id)currentSecurityTask;
- (BOOL)getValue:(id *)a3 forEntitlement:(id)a4 error:(id *)a5;
- (BOOL)shouldAllowAccessForBooleanEntitlement:(id)a3;
- (BOOL)shouldAllowAccessToSubscriberIdentifierHashModifier:(id)a3;
- (NSString)signingIdentifier;
- (VSSecurityTask)init;
- (VSSecurityTask)initWithAuditToken:(id *)a3 createWithAuditTokenProc:(void *)a4 copyValueForEntitlementProc:(void *)a5;
- (VSSecurityTask)initWithCreateFromSelfProc:(void *)a3 copyValueForEntitlementProc:(void *)a4;
- (__SecTask)_taskRef;
- (void)_copySigningIdentifier;
- (void)dealloc;
- (void)signingIdentifier;
@end

@implementation VSSecurityTask

+ (id)currentSecurityTask
{
  v2 = [VSSecurityTask alloc];
  v3 = [(VSSecurityTask *)v2 initWithCreateFromSelfProc:MEMORY[0x277CDBE50] copyValueForEntitlementProc:MEMORY[0x277CDBE48]];

  return v3;
}

+ (VSSecurityTask)securityTaskWithAuditToken:(id *)a3
{
  v4 = [VSSecurityTask alloc];
  v5 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v5;
  v6 = [(VSSecurityTask *)v4 initWithAuditToken:v8 createWithAuditTokenProc:MEMORY[0x277CDBE58] copyValueForEntitlementProc:MEMORY[0x277CDBE48]];

  return v6;
}

+ (VSSecurityTask)securityTaskForCurrentConnection
{
  v2 = _securityTaskForCurrentConnection;
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAE80] currentConnection];
    v4 = v3;
    if (v3)
    {
      v7 = 0u;
      v8 = 0u;
      [v3 auditToken];
      v6[0] = v7;
      v6[1] = v8;
      v2 = [VSSecurityTask securityTaskWithAuditToken:v6];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (VSSecurityTask)initWithAuditToken:(id *)a3 createWithAuditTokenProc:(void *)a4 copyValueForEntitlementProc:(void *)a5
{
  v10.receiver = self;
  v10.super_class = VSSecurityTask;
  result = [(VSSecurityTask *)&v10 init];
  if (result)
  {
    result->_kind = 1;
    v9 = *&a3->var0[4];
    *result->_auditToken.val = *a3->var0;
    *&result->_auditToken.val[4] = v9;
    result->_createWithAuditToken = a4;
    result->_copyValueForEntitlement = a5;
  }

  return result;
}

- (VSSecurityTask)initWithCreateFromSelfProc:(void *)a3 copyValueForEntitlementProc:(void *)a4
{
  v7.receiver = self;
  v7.super_class = VSSecurityTask;
  result = [(VSSecurityTask *)&v7 init];
  if (result)
  {
    result->_kind = 0;
    result->_createFromSelf = a3;
    result->_copyValueForEntitlement = a4;
  }

  return result;
}

- (void)dealloc
{
  taskRef = self->_taskRef;
  if (taskRef)
  {
    CFRelease(taskRef);
  }

  v4.receiver = self;
  v4.super_class = VSSecurityTask;
  [(VSSecurityTask *)&v4 dealloc];
}

- (VSSecurityTask)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The init method is not available."];

  return 0;
}

- (void)_copySigningIdentifier
{
  result = self->_copySigningIdentifier;
  if (!result)
  {
    result = MEMORY[0x277CDBE40];
    self->_copySigningIdentifier = MEMORY[0x277CDBE40];
  }

  return result;
}

- (__SecTask)_taskRef
{
  result = self->_taskRef;
  if (!result)
  {
    kind = self->_kind;
    if (kind == 1)
    {
      createWithAuditToken = self->_createWithAuditToken;
      v6 = *MEMORY[0x277CBECE8];
      v7 = *&self->_auditToken.val[4];
      v8[0] = *self->_auditToken.val;
      v8[1] = v7;
      result = createWithAuditToken(v6, v8);
      goto LABEL_6;
    }

    if (!kind)
    {
      result = (self->_createFromSelf)(*MEMORY[0x277CBECE8], a2);
LABEL_6:
      self->_taskRef = result;
      return result;
    }

    return 0;
  }

  return result;
}

- (BOOL)getValue:(id *)a3 forEntitlement:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VSSecurityTask *)self _taskRef];
  if (v9)
  {
    v14 = 0;
    v10 = (self->_copyValueForEntitlement)(v9, v8, &v14);
    if (v10)
    {
      if (a3)
      {
        *a3 = v10;
      }

      else
      {
        CFRelease(v10);
      }

LABEL_15:
      v12 = 1;
      goto LABEL_16;
    }

    if (!v14)
    {
      if (a3)
      {
        *a3 = 0;
      }

      goto LABEL_15;
    }

    if (a5)
    {
      v11 = v14;
      goto LABEL_10;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_16;
  }

  if (!a5)
  {
    goto LABEL_11;
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
LABEL_10:
  v12 = 0;
  *a5 = v11;
LABEL_16:

  return v12;
}

- (BOOL)shouldAllowAccessForBooleanEntitlement:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v12 = 0;
  v13 = 0;
  v6 = [(VSSecurityTask *)self getValue:&v13 forEntitlement:v4 error:&v12];
  v7 = v13;
  v8 = v12;
  if (!v6)
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [VSSecurityTask shouldAllowAccessForBooleanEntitlement:];
    }

    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [v7 BOOLValue];
LABEL_8:

  objc_autoreleasePoolPop(v5);
  return v9;
}

- (BOOL)shouldAllowAccessToSubscriberIdentifierHashModifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v32 = 0;
  v31 = 0;
  v6 = [(VSSecurityTask *)self getValue:&v32 forEntitlement:@"com.apple.private.subscriptionservce.subscriber-identifier-hash-modifiers" error:&v31];
  v7 = v32;
  v8 = v31;
  if (v6)
  {
    if (v7)
    {
      v9 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = MEMORY[0x277CBEAD8];
          v11 = *MEMORY[0x277CBE660];
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          [v10 raise:v11 format:{@"Unexpectedly, allowedHashModifiers was %@, instead of NSArray.", v13}];
        }

        v14 = v9;
        if ([v14 count])
        {
          v25 = v5;
          v26 = v4;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v28;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v28 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = objc_autoreleasePoolPush();
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v22 = VSErrorLogObject();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    [VSSecurityTask shouldAllowAccessToSubscriberIdentifierHashModifier:];
                  }

                  objc_autoreleasePoolPop(v20);
                  v5 = v25;
                  v4 = v26;
                  goto LABEL_32;
                }

                objc_autoreleasePoolPop(v20);
              }

              v17 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v4 = v26;
          if (([v15 containsObject:v26]& 1) != 0)
          {
            v21 = 1;
            v5 = v25;
LABEL_34:

            goto LABEL_35;
          }

          v23 = VSErrorLogObject();
          v5 = v25;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [VSSecurityTask shouldAllowAccessToSubscriberIdentifierHashModifier:];
          }

          v15 = v23;
        }

        else
        {
          v15 = VSErrorLogObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [VSSecurityTask shouldAllowAccessToSubscriberIdentifierHashModifier:];
          }
        }

LABEL_32:
      }

      else
      {
        v14 = VSErrorLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [VSSecurityTask shouldAllowAccessToSubscriberIdentifierHashModifier:];
        }
      }

      v21 = 0;
      goto LABEL_34;
    }

    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VSSecurityTask shouldAllowAccessToSubscriberIdentifierHashModifier:];
    }
  }

  else
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VSSecurityTask shouldAllowAccessToSubscriberIdentifierHashModifier:];
    }
  }

  v21 = 0;
LABEL_35:

  objc_autoreleasePoolPop(v5);
  return v21;
}

- (NSString)signingIdentifier
{
  v3 = [(VSSecurityTask *)self _taskRef];
  if (v3)
  {
    v6 = 0;
    v3 = ([(VSSecurityTask *)self _copySigningIdentifier])(v3, &v6);
    if (!v3)
    {
      v4 = VSErrorLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(VSSecurityTask *)&v6 signingIdentifier];
      }
    }
  }

  return v3;
}

- (void)shouldAllowAccessToSubscriberIdentifierHashModifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)shouldAllowAccessToSubscriberIdentifierHashModifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)shouldAllowAccessToSubscriberIdentifierHashModifier:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)signingIdentifier
{
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end