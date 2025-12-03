@interface AssetPAAccessInterval
- (AssetPAAccessInterval)initWithClientPid:(int)pid auditToken:(id *)token;
- (void)dealloc;
@end

@implementation AssetPAAccessInterval

- (AssetPAAccessInterval)initWithClientPid:(int)pid auditToken:(id *)token
{
  v15.receiver = self;
  v15.super_class = AssetPAAccessInterval;
  v5 = [(AssetPAAccessInterval *)&v15 init];
  if (v5)
  {
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    *&v22 = 0x3052000000;
    *(&v22 + 1) = __Block_byref_object_copy__8;
    v6 = getPAAccessLoggerClass_softClass;
    v23 = __Block_byref_object_dispose__8;
    v24 = getPAAccessLoggerClass_softClass;
    if (!getPAAccessLoggerClass_softClass)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __getPAAccessLoggerClass_block_invoke;
      v19 = &unk_1E7486A28;
      v20 = &v21;
      __getPAAccessLoggerClass_block_invoke(&v16);
      v6 = *(*(&v21 + 1) + 40);
    }

    _Block_object_dispose(&v21, 8);
    v5->_logger = [v6 sharedInstance];
    v7 = objc_alloc(getPATCCAccessClass());
    v8 = MEMORY[0x1E69D5580];
    v9 = *MEMORY[0x1E69D5580];
    v10 = *&token->var0[4];
    v21 = *token->var0;
    v22 = v10;
    v11 = [v7 initWithAuditToken:&v21 forService:v9];
    v5->_access = v11;
    if (!s_shouldUseStubPAApplication)
    {
      if (!v11)
      {
        return v5;
      }

      goto LABEL_8;
    }

    *&v21 = 0;
    *(&v21 + 1) = &v21;
    *&v22 = 0x3052000000;
    *(&v22 + 1) = __Block_byref_object_copy__8;
    v12 = getPAApplicationClass_softClass;
    v23 = __Block_byref_object_dispose__8;
    v24 = getPAApplicationClass_softClass;
    if (!getPAApplicationClass_softClass)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __getPAApplicationClass_block_invoke;
      v19 = &unk_1E7486A28;
      v20 = &v21;
      __getPAApplicationClass_block_invoke(&v16);
      v12 = *(*(&v21 + 1) + 40);
    }

    _Block_object_dispose(&v21, 8);
    v5->_application = [[v12 alloc] initWithType:0 identifier:@"com.apple.music"];
    v13 = [objc_alloc(getPATCCAccessClass()) initWithAccessor:v5->_application forService:*v8];
    v5->_access = v13;
    if (v13)
    {
LABEL_8:
      v5->_accessInterval = [(PAAccessLogger *)v5->_logger beginIntervalForAccess:?];
    }
  }

  return v5;
}

- (void)dealloc
{
  [(PAAccessInterval *)self->_accessInterval end];

  v3.receiver = self;
  v3.super_class = AssetPAAccessInterval;
  [(AssetPAAccessInterval *)&v3 dealloc];
}

@end