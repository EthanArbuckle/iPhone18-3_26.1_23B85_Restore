@interface LAAccessKey
- (BOOL)isEqual:(id)a3;
- (LAAccessKey)initWithACL:(id)a3;
- (LAAccessKey)initWithKey:(id)a3;
- (id)initWithACL:(void *)a3 key:;
- (void)armInContext:(id)a3 completion:(id)a4;
- (void)unlockKey:(id)a3 inContext:(id)a4 userInfo:(id)a5 completion:(id)a6;
@end

@implementation LAAccessKey

- (LAAccessKey)initWithACL:(id)a3
{
  v4 = a3;
  v5 = +[LAKeyStoreItemBuilder buildNullKey];
  v6 = [(LAAccessKey *)&self->super.isa initWithACL:v4 key:v5];

  return v6;
}

- (void)armInContext:(id)a3 completion:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = &unk_1F1A6FBA8;
  v12[0] = MEMORY[0x1E695E118];
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(LAAccessKey *)self armInContext:v8 options:v9 completion:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unlockKey:(id)a3 inContext:(id)a4 userInfo:(id)a5 completion:(id)a6
{
  v9 = a5;
  v10 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__LAAccessKey_unlockKey_inContext_userInfo_completion___block_invoke;
  v13[3] = &unk_1E77CB298;
  v14 = v9;
  v15 = v10;
  v11 = v9;
  v12 = v10;
  [(LAAccessKey *)self armInContext:a4 completion:v13];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (id)initWithACL:(void *)a3 key:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = LAAccessKey;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 3, a2);
      v9 = [v7 identifier];
      v10 = a1[2];
      a1[2] = v9;

      objc_storeStrong(a1 + 1, a3);
    }
  }

  return a1;
}

- (LAAccessKey)initWithKey:(id)a3
{
  v4 = a3;
  v5 = [LAACL alloc];
  v6 = [v4 acl];
  v7 = [(LAACL *)v5 initWithData:v6];
  v8 = [(LAAccessKey *)&self->super.isa initWithACL:v7 key:v4];

  return v8;
}

@end