@interface AFDictionarySchema
- (AFDictionarySchema)init;
- (id)coerceObject:(id)a3 error:(id *)a4;
@end

@implementation AFDictionarySchema

- (AFDictionarySchema)init
{
  v6.receiver = self;
  v6.super_class = AFDictionarySchema;
  v2 = [(AFDictionarySchema *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    coercions = v2->_coercions;
    v2->_coercions = v3;
  }

  return v2;
}

- (id)coerceObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7916;
  v23 = __Block_byref_object_dispose__7917;
  v24 = 0;
  v7 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  v8 = (v20 + 5);
  obj = v20[5];
  v9 = [v7 coerceObject:v6 error:&obj];
  objc_storeStrong(v8, obj);

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__AFDictionarySchema_coerceObject_error___block_invoke;
    v15[3] = &unk_1E7342E78;
    v15[4] = self;
    v11 = v10;
    v16 = v11;
    v17 = &v19;
    [v9 enumerateKeysAndObjectsUsingBlock:v15];

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a4)
  {
LABEL_3:
    *a4 = v20[5];
  }

LABEL_4:
  if (v20[5])
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __41__AFDictionarySchema_coerceObject_error___block_invoke(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(*(a1 + 32) + 8) objectForKey:v7];
  if (!v9)
  {
    v9 = +[AFCoercion identityCoercion];
  }

  v13 = 0;
  v10 = [v9 coerceObject:v8 error:&v13];
  v11 = v13;
  v12 = v13;
  if (v10)
  {
    [*(a1 + 40) setObject:v10 forKey:v7];
  }

  if (v12)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
  }

  *a4 = *(*(*(a1 + 48) + 8) + 40) != 0;
}

@end