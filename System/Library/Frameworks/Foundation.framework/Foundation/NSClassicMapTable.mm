@interface NSClassicMapTable
- (BOOL)mapMember:(const void *)member originalKey:(const void *)key value:(const void *)value;
- (id)allKeys;
- (id)allValues;
- (id)copy;
- (id)description;
- (id)objectForKey:(id)key;
- (unint64_t)getKeys:(const void *)keys values:(const void *)values;
- (void)dealloc;
- (void)existingItemForSetItem:(const void *)item forAbsentKey:(const void *)key;
- (void)removeAllItems;
- (void)removeObjectForKey:(id)key;
- (void)setItem:(const void *)item forKnownAbsentKey:(const void *)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation NSClassicMapTable

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(self->_ht);
  v3.receiver = self;
  v3.super_class = NSClassicMapTable;
  [(NSClassicMapTable *)&v3 dealloc];
}

- (id)copy
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *&self->_keyCallBacks.retain;
  *&keyCallBacks.hash = *&self->_keyCallBacks.hash;
  *&keyCallBacks.retain = v5;
  *&keyCallBacks.describe = *&self->_keyCallBacks.describe;
  valueCallBacks = self->_valueCallBacks;
  v6 = NSCreateMapTableWithZone(&keyCallBacks, &valueCallBacks, v2, v3);
  ht = self->_ht;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25__NSClassicMapTable_copy__block_invoke;
  v9[3] = &unk_1E69F3E40;
  v9[4] = v6;
  CFBasicHashApply(ht, v9);
  return v6;
}

- (void)removeAllItems
{
  ht = self->_ht;
  if ((*(ht + 18) & 0x3F) != 0)
  {
    __CFBasicHashDrain(ht, 0);
  }
}

- (BOOL)mapMember:(const void *)member originalKey:(const void *)key value:(const void *)value
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  CFBasicHashFindBucket(self->_ht, member, &v9);
  v7 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    if (value)
    {
      *value = *(&v10 + 1);
    }

    if (key)
    {
      *key = *(&v9 + 1);
    }
  }

  return v7 != 0;
}

- (id)objectForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  CFBasicHashFindBucket(self->_ht, key, &v4);
  if (*(&v6 + 1))
  {
    return *(&v5 + 1);
  }

  else
  {
    return 0;
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSMapInsert(): attempt to insert notAKeyMarker" userInfo:{0, v4, v5}]);
  }

  ht = self->_ht;

  CFBasicHashSetValue(ht, key);
}

- (void)setItem:(const void *)item forKnownAbsentKey:(const void *)key
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"*** NSMapInsertKnownAbsent(): attempt to insert notAKeyMarker";
    goto LABEL_8;
  }

  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  CFBasicHashFindBucket(self->_ht, key, v10);
  if (*(&v11 + 1))
  {
    v9 = [NSString stringWithFormat:@"*** NSMapInsertKnownAbsent(): key %p already in table", key];
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
LABEL_8:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  ht = self->_ht;

  CFBasicHashAddValue(ht, key);
}

- (void)existingItemForSetItem:(const void *)item forAbsentKey:(const void *)key
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSMapInsertIfAbsent(): attempt to insert notAKeyMarker" userInfo:0]);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  CFBasicHashFindBucket(self->_ht, key, &v7);
  if (*(&v9 + 1))
  {
    return *(&v8 + 1);
  }

  CFBasicHashAddValue(self->_ht, key);
  return 0;
}

- (void)removeObjectForKey:(id)key
{
  if (self->_keyCallBacks.notAKeyMarker == key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSMapRemove(): attempt to remove notAKeyMarker" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashRemoveValue(ht, key);
}

- (id)description
{
  v8[8] = *MEMORY[0x1E69E9840];
  if (!CFBasicHashGetCount(self->_ht))
  {
    return [NSString stringWithFormat:@"<NSMapTable: %p> {}", self];
  }

  v3 = [objc_allocWithZone(NSMutableString) initWithCapacity:CFBasicHashGetCount(self->_ht) << 6];
  [v3 appendFormat:@"<NSMapTable: %p> {", self];
  describe = self->_keyCallBacks.describe;
  v5 = self->_valueCallBacks.describe;
  ht = self->_ht;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__NSClassicMapTable_description__block_invoke;
  v8[3] = &__block_descriptor_64_e18_C64__0___qQQQQQQ_8ls32l8s56l8;
  v8[4] = self;
  v8[5] = describe;
  v8[6] = v5;
  v8[7] = v3;
  CFBasicHashApply(ht, v8);
  [v3 appendString:@"}"];
  return v3;
}

uint64_t __32__NSClassicMapTable_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  if (v6)
  {
    [v7 appendString:{v6(*(a1 + 32), v4)}];
  }

  else
  {
    [v7 appendFormat:@"%p", v4];
  }

  [*(a1 + 56) appendString:@" = "];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (v8)
  {
    [v9 appendString:{v8(*(a1 + 32), v5)}];
  }

  else
  {
    [v9 appendFormat:@"%p", v5];
  }

  [*(a1 + 56) appendString:@";\n"];
  return 1;
}

- (id)allKeys
{
  v16[5] = *MEMORY[0x1E69E9840];
  Count = CFBasicHashGetCount(self->_ht);
  v4 = Count;
  if (Count >> 60)
  {
    v13 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v13 userInfo:0];
    CFRelease(v13);
    objc_exception_throw(v14);
  }

  v16[4] = 0;
  v5 = _CFCreateArrayStorage();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = v5;
  ht = self->_ht;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __28__NSClassicMapTable_allKeys__block_invoke;
  v15[3] = &unk_1E69F3E88;
  v15[4] = v16;
  CFBasicHashApply(ht, v15);
  if (v5)
  {
    if (v4)
    {
      v7 = v5;
      v8 = v4;
      do
      {
        v9 = *v7++;
        --v8;
      }

      while (v8);
    }

    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v5 count:v4 size:v4];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v4];
  }

  v11 = v10;
  _Block_object_dispose(v16, 8);
  return v11;
}

uint64_t __28__NSClassicMapTable_allKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

- (id)allValues
{
  v16[5] = *MEMORY[0x1E69E9840];
  Count = CFBasicHashGetCount(self->_ht);
  v4 = Count;
  if (Count >> 60)
  {
    v13 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v13 userInfo:0];
    CFRelease(v13);
    objc_exception_throw(v14);
  }

  v16[4] = 0;
  v5 = _CFCreateArrayStorage();
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = v5;
  ht = self->_ht;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__NSClassicMapTable_allValues__block_invoke;
  v15[3] = &unk_1E69F3E88;
  v15[4] = v16;
  CFBasicHashApply(ht, v15);
  if (v5)
  {
    if (v4)
    {
      v7 = v5;
      v8 = v4;
      do
      {
        v9 = *v7++;
        --v8;
      }

      while (v8);
    }

    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) _initByAdoptingBuffer:v5 count:v4 size:v4];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:0 count:v4];
  }

  v11 = v10;
  _Block_object_dispose(v16, 8);
  return v11;
}

uint64_t __30__NSClassicMapTable_allValues__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

- (unint64_t)getKeys:(const void *)keys values:(const void *)values
{
  v10[4] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = keys;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = values;
  ht = self->_ht;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__NSClassicMapTable_getKeys_values___block_invoke;
  v8[3] = &unk_1E69F4C88;
  v8[4] = v10;
  v8[5] = v9;
  CFBasicHashApply(ht, v8);
  Count = CFBasicHashGetCount(self->_ht);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v10, 8);
  return Count;
}

uint64_t __36__NSClassicMapTable_getKeys_values___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  v5 = *(a2 + 24);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 + 1;
  *v7 = v5;
  return 1;
}

@end