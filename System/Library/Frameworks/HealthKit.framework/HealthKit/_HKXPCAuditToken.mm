@interface _HKXPCAuditToken
+ (id)auditTokenForCurrentTask;
+ (id)signingIdentifierFromAuditToken:(id *)token;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (NSString)signingIdentifier;
- (_HKXPCAuditToken)initWithAuditToken:(id *)token;
@end

@implementation _HKXPCAuditToken

- (_HKXPCAuditToken)initWithAuditToken:(id *)token
{
  v6.receiver = self;
  v6.super_class = _HKXPCAuditToken;
  result = [(_HKXPCAuditToken *)&v6 init];
  if (result)
  {
    v5 = *token->var0;
    *&result->_auditToken.val[4] = *&token->var0[4];
    *result->_auditToken.val = v5;
  }

  return result;
}

- (NSString)signingIdentifier
{
  v3 = objc_opt_class();
  v4 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v4;
  v5 = [v3 signingIdentifierFromAuditToken:v7];

  return v5;
}

+ (id)auditTokenForCurrentTask
{
  v2 = [self alloc];
  task_info_outCnt = 8;
  memset(v5, 0, sizeof(v5));
  task_info(*MEMORY[0x1E69E9A60], 0xFu, v5, &task_info_outCnt);
  v3 = [v2 initWithAuditToken:v5];

  return v3;
}

+ (id)signingIdentifierFromAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *cf.val = *token->var0;
  *&cf.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &cf);
  if (v4)
  {
    v5 = v4;
    *cf.val = 0;
    v6 = SecTaskCopySigningIdentifier(v4, &cf);
    if (!v6 && *cf.val)
    {
      _HKInitializeLogging();
      v7 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [(_HKXPCAuditToken *)&cf signingIdentifierFromAuditToken:v7];
      }

      CFRelease(*cf.val);
    }

    CFRelease(v5);
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [_HKXPCAuditToken signingIdentifierFromAuditToken:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && *self->_auditToken.val == *equalCopy->_auditToken.val && *&self->_auditToken.val[2] == *&equalCopy->_auditToken.val[2] && *&self->_auditToken.val[4] == *&equalCopy->_auditToken.val[4] && *&self->_auditToken.val[6] == *&equalCopy->_auditToken.val[6];
  }

  return v8;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

+ (void)signingIdentifierFromAuditToken:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to get signing identifier from task: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end