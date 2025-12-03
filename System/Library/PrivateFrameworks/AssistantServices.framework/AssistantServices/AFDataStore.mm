@interface AFDataStore
- (AFDataStore)init;
- (AFDataStore)initWithEntries:(id)entries;
- (AFDataStore)initWithPropertyListRepresentation:(id)representation;
- (id)imageDataForKey:(id)key;
- (id)propertyListRepresentation;
- (void)setImageData:(id)data forKey:(id)key;
@end

@implementation AFDataStore

- (id)propertyListRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F056DA88 forKey:@"Version"];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_entries, "count")}];
  entries = self->_entries;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__AFDataStore_propertyListRepresentation__block_invoke;
  v8[3] = &unk_1E7344AB0;
  v9 = v4;
  v6 = v4;
  [(NSMutableDictionary *)entries enumerateKeysAndObjectsUsingBlock:v8];
  [dictionary setObject:v6 forKey:@"Entries"];

  return dictionary;
}

- (AFDataStore)init
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AFDataStore *)self initWithEntries:dictionary];

  return v4;
}

- (AFDataStore)initWithPropertyListRepresentation:(id)representation
{
  v28 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = objc_alloc_init(AFDictionarySchema);
  v6 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Version"];

  v7 = [AFCoercion coercionWithBlock:&__block_literal_global_17492];
  [(AFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Entries"];

  v21 = 0;
  v8 = [(AFDictionarySchema *)v5 coerceObject:representationCopy error:&v21];
  v9 = v21;
  if (!v8)
  {
    v14 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      selfCopy = 0;
      goto LABEL_8;
    }

    *buf = 136315650;
    v23 = "[AFDataStore initWithPropertyListRepresentation:]";
    v24 = 2112;
    v25 = representationCopy;
    v26 = 2114;
    v27 = v9;
    v15 = "%s returning nil; passed invalid property list (%@): %{public}@";
    v16 = v14;
    v17 = 32;
LABEL_10:
    _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_7;
  }

  v10 = [v8 objectForKey:@"Version"];
  integerValue = [v10 integerValue];

  if (integerValue != 1)
  {
    v18 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v23 = "[AFDataStore initWithPropertyListRepresentation:]";
    v24 = 2050;
    v25 = integerValue;
    v15 = "%s unable to deserialize property list with version %{public}ld; returning nil";
    v16 = v18;
    v17 = 22;
    goto LABEL_10;
  }

  v12 = [v8 objectForKey:@"Entries"];
  self = [(AFDataStore *)self initWithEntries:v12];

  selfCopy = self;
LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

id __50__AFDataStore_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__17499;
  v24 = __Block_byref_object_dispose__17500;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__17499;
  v18 = __Block_byref_object_dispose__17500;
  v19 = 0;
  v5 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  v6 = v21;
  obj = v21[5];
  v7 = [v5 coerceObject:v4 error:&obj];
  objc_storeStrong(v6 + 5, obj);

  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = v15[5];
    v15[5] = v8;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__AFDataStore_initWithPropertyListRepresentation___block_invoke_30;
    v12[3] = &unk_1E7344AF8;
    v12[4] = &v20;
    v12[5] = &v14;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
  }

  if (a3)
  {
    *a3 = v21[5];
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __50__AFDataStore_initWithPropertyListRepresentation___block_invoke_30(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v14 = 0;
  v9 = [[_AFDataStoreEntry alloc] initWithPropertyListRepresentation:v8 error:&v14];

  v10 = v14;
  v11 = v14;
  if (v9)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKey:v7];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v10);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    *a4 = 1;
  }
}

void __41__AFDataStore_propertyListRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 propertyListRepresentation];
  [v4 setObject:v6 forKey:v5];
}

- (id)imageDataForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_entries objectForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 type] == 1)
    {
      value = [v6 value];
      goto LABEL_7;
    }

    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = v8;
      value2 = [v6 value];
      v13 = 136315650;
      v14 = "[AFDataStore imageDataForKey:]";
      v15 = 2112;
      v16 = keyCopy;
      v17 = 2112;
      v18 = value2;
      _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s returning nil because value for key %@ is %@, which cannot be coerced to an image", &v13, 0x20u);
    }
  }

  value = 0;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return value;
}

- (void)setImageData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  v8 = [[_AFDataStoreEntry alloc] initWithType:1 value:dataCopy];

  [(NSMutableDictionary *)self->_entries setObject:v8 forKey:keyCopy];
}

- (AFDataStore)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = AFDataStore;
  v5 = [(AFDataStore *)&v9 init];
  if (v5)
  {
    v6 = [entriesCopy mutableCopy];
    entries = v5->_entries;
    v5->_entries = v6;
  }

  return v5;
}

@end