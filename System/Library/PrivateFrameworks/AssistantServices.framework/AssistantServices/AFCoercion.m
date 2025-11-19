@interface AFCoercion
+ (id)coercionWithBlock:(id)a3;
+ (id)stringToUUIDCoercion;
+ (id)typeAssertionWithClass:(Class)a3;
- (AFCoercion)initWithBlock:(id)a3;
@end

@implementation AFCoercion

id __34__AFCoercion_stringToUUIDCoercion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 typeAssertionWithClass:objc_opt_class()];
  v15 = 0;
  v7 = [v6 coerceObject:v5 error:&v15];

  v8 = v15;
  if (!v7)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  if (v9)
  {
    v10 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    v11 = v8;
    *a3 = v8;
    goto LABEL_7;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create UUID for string %@", v7];
  v14 = [AFConversationError errorWithCode:200 localizedFailureReason:v13];

  v10 = 0;
  v8 = v14;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

+ (id)stringToUUIDCoercion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AFCoercion_stringToUUIDCoercion__block_invoke;
  v4[3] = &__block_descriptor_40_e12__24__0_8__16l;
  v4[4] = a1;
  v2 = [a1 coercionWithBlock:v4];

  return v2;
}

- (AFCoercion)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFCoercion;
  v5 = [(AFCoercion *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x193AFB7B0](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

+ (id)typeAssertionWithClass:(Class)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AFCoercion_typeAssertionWithClass___block_invoke;
  v5[3] = &__block_descriptor_40_e12__24__0_8__16lu32l8;
  v5[4] = a3;
  v3 = [a1 coercionWithBlock:v5];

  return v3;
}

id __37__AFCoercion_typeAssertionWithClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object %@ is not a kind of %@", v5, *(a1 + 32)];
    v8 = [AFConversationError errorWithCode:200 localizedFailureReason:v9];

    v7 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = v5;
  v8 = 0;
  if (a3)
  {
LABEL_5:
    v10 = v8;
    *a3 = v8;
  }

LABEL_6:

  return v7;
}

+ (id)coercionWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

@end