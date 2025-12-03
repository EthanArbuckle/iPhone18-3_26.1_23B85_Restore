@interface BSAuditToken
+ (id)invalidToken;
+ (id)tokenForCurrentProcess;
+ (id)tokenFromAuditToken:(id *)token;
+ (id)tokenFromAuditTokenRef:(id *)ref;
+ (id)tokenFromMachMessage:(id *)message;
+ (id)tokenFromNSXPCConnection:(id)connection;
+ (id)tokenFromXPCConnection:(id)connection;
+ (id)tokenFromXPCMessage:(id)message;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)realToken;
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)hasSameProcessAsAuditToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (BSAuditToken)initWithAuditToken:(id *)token;
- (NSString)description;
- (id)_bundleIDGeneratingIfNeeded:(void *)needed;
- (id)membersForCoder;
- (id)valueForEntitlement:(id)entitlement;
- (int64_t)versionedPID;
- (void)_accessSecTask:(uint64_t)task;
- (void)awakeFromCoder;
@end

@implementation BSAuditToken

- (void)awakeFromCoder
{
  if (!BSAuditTokenIsValid(self->_auditToken.val))
  {
    *&v3 = -1;
    *(&v3 + 1) = -1;
    *&self->_auditToken.val[4] = v3;
    *self->_auditToken.val = v3;
  }
}

- (int64_t)versionedPID
{
  v2 = *&self->_auditToken.val[4];
  v4[0] = *self->_auditToken.val;
  v4[1] = v2;
  return BSVersionedPIDForAuditToken(v4);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)realToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BSXPCAutoCodingInitialize(self, &__block_literal_global_40);
  }
}

void __26__BSAuditToken_initialize__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = &unk_1F03BA3C0;
  [v4 addSupportedCoding:v2];

  v3 = &unk_1F03BA528;
  [v4 addSupportedCoding:v3];
}

+ (id)tokenForCurrentProcess
{
  v2 = [self alloc];
  BSAuditTokenForCurrentProcess(v9);
  v3 = [v2 initWithAuditToken:v9];
  if (v3)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [bundleIdentifier copy];
    v7 = v3[5];
    v3[5] = v6;
  }

  return v3;
}

- (id)membersForCoder
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = @"_auditToken";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v11 = _BSAutoMember(v3, v4, v5, v6, v7, v8, v9, v10, 0, v24[0]);
  v24[0] = v11;
  if (objc_opt_class())
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = @"_bundleID";
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v21 = _BSAutoMember(v13, v14, v15, v16, v17, v18, v19, v20, 0, v24[0]);
  v24[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  return v22;
}

+ (id)invalidToken
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v5[0] = v2;
  v5[1] = v2;
  v3 = [BSAuditToken tokenFromAuditToken:v5];

  return v3;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  if ([(BSAuditToken *)self isInvalid])
  {
    [v3 appendString:@"INVALID" withName:0];
  }

  else
  {
    v4 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v4;
    v5 = [v3 appendUnsignedInteger:audit_token_to_auid(&v22) withName:@"AUID"];
    v6 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v6;
    v7 = [v3 appendUnsignedInteger:audit_token_to_euid(&v22) withName:@"EUID"];
    v8 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v8;
    v9 = [v3 appendUnsignedInteger:audit_token_to_egid(&v22) withName:@"EGID"];
    v10 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v10;
    v11 = [v3 appendUnsignedInteger:audit_token_to_ruid(&v22) withName:@"RUID"];
    v12 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v12;
    v13 = [v3 appendUnsignedInteger:audit_token_to_rgid(&v22) withName:@"RGID"];
    v14 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v14;
    v15 = [v3 appendUnsignedInteger:audit_token_to_pid(&v22) withName:@"PID"];
    v16 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v16;
    v17 = [v3 appendUnsignedInteger:audit_token_to_asid(&v22) withName:@"ASID"];
    v18 = *&self->_auditToken.val[4];
    *v22.val = *self->_auditToken.val;
    *&v22.val[4] = v18;
    v19 = [v3 appendUnsignedInteger:audit_token_to_pidversion(&v22) withName:@"PIDVersion"];
  }

  build = [v3 build];

  return build;
}

+ (id)tokenFromAuditToken:(id *)token
{
  v4 = [self alloc];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [v4 initWithAuditToken:v8];

  return v6;
}

+ (id)tokenFromAuditTokenRef:(id *)ref
{
  if (!ref)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAuditToken.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"auditToken"}];
  }

  v5 = *&ref->var0[4];
  v10[0] = *ref->var0;
  v10[1] = v5;
  v6 = [self tokenFromAuditToken:v10];

  return v6;
}

+ (id)tokenFromXPCMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAuditToken.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v6 = [self alloc];
  v7 = messageCopy;
  if (v6)
  {
    if (!messageCopy)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_initWithXPCMessage_ object:v6 file:@"BSAuditToken.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"message"}];
    }

    *&v8 = -1;
    *(&v8 + 1) = -1;
    v19 = v8;
    v20 = v8;
    xpc_dictionary_get_audit_token();
    v18[0] = v19;
    v18[1] = v20;
    v9 = [v6 initWithAuditToken:v18];
    if (v9)
    {
      v10 = xpc_dictionary_get_remote_connection(v7);
      v11 = v10;
      if (v10)
      {
        v12 = _BSBundleIDForXPCConnectionAndIKnowWhatImDoingISwear(v10);
        v13 = [v12 copy];
        v14 = v9[5];
        v9[5] = v13;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)tokenFromMachMessage:(id *)message
{
  v14 = *MEMORY[0x1E69E9840];
  if (!message)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAuditToken.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"message"}];
  }

  v5 = message + ((message->var1 + 3) & 0x1FFFFFFFCLL);
  if (*v5 || *(v5 + 1) < 0x20u)
  {
    v7 = 0;
  }

  else
  {
    v6 = *(v5 + 36);
    v12 = *(v5 + 20);
    v13 = v6;
    v11[0] = v12;
    v11[1] = v6;
    v7 = [[self alloc] initWithAuditToken:v11];
  }

  return v7;
}

+ (id)tokenFromXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAuditToken.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  *&v6 = -1;
  *(&v6 + 1) = -1;
  v11 = v6;
  v12 = v6;
  xpc_connection_get_audit_token();
  v10[0] = v11;
  v10[1] = v12;
  v7 = [self tokenFromAuditToken:v10];

  return v7;
}

+ (id)tokenFromNSXPCConnection:(id)connection
{
  connectionCopy = connection;
  v6 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAuditToken.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"connection"}];

    memset(v10, 0, sizeof(v10));
  }

  v7 = [self tokenFromAuditToken:v10];

  return v7;
}

- (BSAuditToken)initWithAuditToken:(id *)token
{
  v9.receiver = self;
  v9.super_class = BSAuditToken;
  v4 = [(BSAuditToken *)&v9 init];
  if (v4)
  {
    IsValid = BSAuditTokenIsValid(token);
    tokenCopy = &BSInvalidAuditToken;
    if (IsValid)
    {
      tokenCopy = token;
    }

    v7 = *&tokenCopy->var0[4];
    *(v4 + 8) = *tokenCopy->var0;
    *(v4 + 24) = v7;
  }

  return v4;
}

- (id)_bundleIDGeneratingIfNeeded:(void *)needed
{
  if (needed)
  {
    neededCopy = needed;
    objc_sync_enter(neededCopy);
    if (a2 && !*(neededCopy + 5) && (neededCopy[56] & 1) == 0)
    {
      neededCopy[56] = 1;
      v4 = BSBundleIDForAuditToken((neededCopy + 8));
      v5 = [v4 copy];
      v6 = *(neededCopy + 5);
      *(neededCopy + 5) = v5;
    }

    v7 = *(neededCopy + 5);
    objc_sync_exit(neededCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__BSAuditToken_hasEntitlement___block_invoke;
  v7[3] = &unk_1E72CC3A0;
  v8 = entitlementCopy;
  v9 = &v10;
  v5 = entitlementCopy;
  [(BSAuditToken *)self _accessSecTask:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __31__BSAuditToken_hasEntitlement___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [(BSSecTask *)v3 BOOLForEntitlement:?];
}

- (void)_accessSecTask:(uint64_t)task
{
  v3 = a2;
  v4 = v3;
  if (task)
  {
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__accessSecTask_ object:task file:@"BSAuditToken.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"secTaskBlock"}];
    }

    v5 = *(task + 48);
    if (!v5)
    {
      v6 = *(task + 24);
      v10[0] = *(task + 8);
      v10[1] = v6;
      v7 = [BSSecTask secTaskForAuditToken:v10];
      v8 = *(task + 48);
      *(task + 48) = v7;

      v5 = *(task + 48);
    }

    v4[2](v4, v5);
  }
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__BSAuditToken_valueForEntitlement___block_invoke;
  v8[3] = &unk_1E72CC3A0;
  v9 = entitlementCopy;
  v10 = &v11;
  v5 = entitlementCopy;
  [(BSAuditToken *)self _accessSecTask:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __36__BSAuditToken_valueForEntitlement___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [(BSSecTask *)v6 valueForEntitlement:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)hasSameProcessAsAuditToken:(id)token
{
  tokenCopy = token;
  v6 = tokenCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()) && BSEqualProcessAuditTokens(&self->_auditToken, tokenCopy + 8);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_4;
  }

  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_18;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v7 = *self->_auditToken.val == *v5->_auditToken.val && *&self->_auditToken.val[2] == *&v5->_auditToken.val[2] && *&self->_auditToken.val[4] == *&v5->_auditToken.val[4] && *&self->_auditToken.val[6] == *&v5->_auditToken.val[6];
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

LABEL_18:

  return v7;
}

@end