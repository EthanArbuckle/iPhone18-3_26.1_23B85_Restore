@interface LAAccessKey
- (BOOL)isEqual:(id)equal;
- (LAAccessKey)initWithACL:(id)l;
- (LAAccessKey)initWithKey:(id)key;
- (id)initWithACL:(void *)l key:;
- (void)armInContext:(id)context completion:(id)completion;
- (void)unlockKey:(id)key inContext:(id)context userInfo:(id)info completion:(id)completion;
@end

@implementation LAAccessKey

- (LAAccessKey)initWithACL:(id)l
{
  lCopy = l;
  v5 = +[LAKeyStoreItemBuilder buildNullKey];
  v6 = [(LAAccessKey *)&self->super.isa initWithACL:lCopy key:v5];

  return v6;
}

- (void)armInContext:(id)context completion:(id)completion
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = &unk_1F1A6FBA8;
  v12[0] = MEMORY[0x1E695E118];
  v6 = MEMORY[0x1E695DF20];
  completionCopy = completion;
  contextCopy = context;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(LAAccessKey *)self armInContext:contextCopy options:v9 completion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unlockKey:(id)key inContext:(id)context userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__LAAccessKey_unlockKey_inContext_userInfo_completion___block_invoke;
  v13[3] = &unk_1E77CB298;
  v14 = infoCopy;
  v15 = completionCopy;
  v11 = infoCopy;
  v12 = completionCopy;
  [(LAAccessKey *)self armInContext:context completion:v13];
}

void __55__LAAccessKey_unlockKey_inContext_userInfo_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"kLAAccessKeyNonce"];

    v6 = *(a1 + 40);
    if (v5)
    {
      v8 = +[LAAuthorizationError missingImplementation];
      (*(v6 + 16))(v6, v8);
    }

    else
    {
      v7 = *(v6 + 16);

      v7(v6, 0);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[2];
    v8 = 0;
    if (v6 == self->_identifier || [(NSString *)v6 isEqualToString:?])
    {
      v7 = v5[3];
      if (v7 == self->_acl || [(LAACL *)v7 isEqual:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initWithACL:(void *)l key:
{
  v6 = a2;
  lCopy = l;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = LAAccessKey;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      identifier = [lCopy identifier];
      v10 = self[2];
      self[2] = identifier;

      objc_storeStrong(self + 1, l);
    }
  }

  return self;
}

- (LAAccessKey)initWithKey:(id)key
{
  keyCopy = key;
  v5 = [LAACL alloc];
  v6 = [keyCopy acl];
  v7 = [(LAACL *)v5 initWithData:v6];
  v8 = [(LAAccessKey *)&self->super.isa initWithACL:v7 key:keyCopy];

  return v8;
}

@end