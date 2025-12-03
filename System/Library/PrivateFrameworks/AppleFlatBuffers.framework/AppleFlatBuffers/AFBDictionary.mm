@interface AFBDictionary
- (AFBDictionary)initWithBufRef:(id)ref count:(unint64_t)count keyClass:(Class)class keyAtIndex:(id)index tableAtIndex:(id)atIndex objectForValidKey:(id)key;
- (AFBDictionary)initWithCoder:(id)coder;
- (AFBDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (BOOL)isEqualToDictionary:(id)dictionary;
- (id)allKeys;
- (id)allKeysForObject:(id)object;
- (id)allValues;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)keyAtIndex:(void *)index;
@end

@implementation AFBDictionary

- (AFBDictionary)initWithBufRef:(id)ref count:(unint64_t)count keyClass:(Class)class keyAtIndex:(id)index tableAtIndex:(id)atIndex objectForValidKey:(id)key
{
  refCopy = ref;
  indexCopy = index;
  atIndexCopy = atIndex;
  keyCopy = key;
  v28.receiver = self;
  v28.super_class = AFBDictionary;
  v19 = [(AFBDictionary *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_bufRef, ref);
    v20->_count = count;
    v20->_keyClass = class;
    v21 = MEMORY[0x245CC3C60](indexCopy);
    keyAtIndex = v20->_keyAtIndex;
    v20->_keyAtIndex = v21;

    v23 = MEMORY[0x245CC3C60](atIndexCopy);
    tableAtIndex = v20->_tableAtIndex;
    v20->_tableAtIndex = v23;

    v25 = MEMORY[0x245CC3C60](keyCopy);
    objectForValidKey = v20->_objectForValidKey;
    v20->_objectForValidKey = v25;
  }

  return v20;
}

- (AFBDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:objects forKeys:keys count:count];

  return v6;
}

- (AFBDictionary)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy && (keyClass = self->_keyClass, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = (*(self->_objectForValidKey + 2))();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)keyEnumerator
{
  v2 = [[AFBDictionaryEnumerator alloc] initWithDictionary:self];

  return v2;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (self->_count)
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v10 = 0;
      v8 = (*(self->_keyAtIndex + 2))();
      v9 = (*(self->_tableAtIndex + 2))();
      blockCopy[2](blockCopy, v8, v9, &v10);

      LODWORD(v8) = v10;
      objc_autoreleasePoolPop(v7);
      if (v8 == 1)
      {
        break;
      }

      ++v6;
    }

    while (v6 < self->_count);
  }
}

- (id)allKeys
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_count];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__AFBDictionary_allKeys__block_invoke;
  v7[3] = &unk_278CAA638;
  v8 = v3;
  v4 = v3;
  [(AFBDictionary *)self enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)allValues
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_count];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__AFBDictionary_allValues__block_invoke;
  v7[3] = &unk_278CAA638;
  v8 = v3;
  v4 = v3;
  [(AFBDictionary *)self enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)allKeysForObject:(id)object
{
  objectCopy = object;
  if (objectCopy && self->_count)
  {
    v5 = objc_opt_new();
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __34__AFBDictionary_allKeysForObject___block_invoke;
    v12 = &unk_278CAA660;
    v13 = objectCopy;
    v14 = v5;
    v6 = v5;
    [(AFBDictionary *)self enumerateKeysAndObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

void __34__AFBDictionary_allKeysForObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (BOOL)isEqualToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy == self)
  {
    v9 = 1;
  }

  else if (dictionaryCopy && (v6 = [(AFBDictionary *)dictionaryCopy count], v6 == [(AFBDictionary *)self count]))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v18[3] = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__AFBDictionary_isEqualToDictionary___block_invoke;
      v14[3] = &unk_278CAA688;
      v8 = v7;
      v15 = v8;
      v16 = v18;
      v17 = &v19;
      [(AFBDictionary *)self enumerateKeysAndObjectsUsingBlock:v14];
      v9 = *(v20 + 24);

      _Block_object_dispose(v18, 8);
      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__AFBDictionary_isEqualToDictionary___block_invoke_2;
      v11[3] = &unk_278CAA6B0;
      v12 = v5;
      v13 = &v19;
      [(AFBDictionary *)self enumerateKeysAndObjectsUsingBlock:v11];
      v9 = *(v20 + 24);

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __37__AFBDictionary_isEqualToDictionary___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1[4] + 40);
  v7 = *(*(a1[5] + 8) + 24);
  v8 = *(v6 + 16);
  v9 = a3;
  v10 = v8(v6, v7);
  LOBYTE(v7) = [v9 isEqual:v10];

  if ((v7 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

  ++*(*(a1[5] + 8) + 24);
}

void __37__AFBDictionary_isEqualToDictionary___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v7 || ([v8 isEqual:v7] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)keyAtIndex:(void *)index
{
  if (index)
  {
    index = (*(index[4] + 16))();
    v1 = vars8;
  }

  return index;
}

@end