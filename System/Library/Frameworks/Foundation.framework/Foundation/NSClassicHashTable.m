@interface NSClassicHashTable
- (BOOL)isEqual:(id)a3;
- (id)allObjects;
- (id)copy;
- (id)description;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)getItem:(const void *)a3;
- (void)getKeys:(const void *)a3 count:(unint64_t *)a4;
- (void)insertItem:(const void *)a3;
- (void)insertKnownAbsentItem:(const void *)a3;
- (void)removeAllItems;
- (void)removeItem:(const void *)a3;
@end

@implementation NSClassicHashTable

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(self->_ht);
  v3.receiver = self;
  v3.super_class = NSClassicHashTable;
  [(NSClassicHashTable *)&v3 dealloc];
}

- (void)removeAllItems
{
  ht = self->_ht;
  if ((*(ht + 18) & 0x3F) != 0)
  {
    __CFBasicHashDrain(ht, 0);
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      return CFBasicHashesAreEqual(self->_ht, *(a3 + 6)) != 0;
    }
  }

  return 0;
}

- (id)copy
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *&self->_callBacks.retain;
  *&callBacks.hash = *&self->_callBacks.hash;
  *&callBacks.retain = v4;
  callBacks.describe = self->_callBacks.describe;
  v5 = NSCreateHashTableWithZone(&callBacks, a2, v2);
  ht = self->_ht;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__NSClassicHashTable_copy__block_invoke;
  v8[3] = &unk_1E69F3E40;
  v8[4] = v5;
  CFBasicHashApply(ht, v8);
  return v5;
}

- (void)getItem:(const void *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  CFBasicHashFindBucket(self->_ht, a3, &v4);
  if (*(&v6 + 1))
  {
    return *(&v5 + 1);
  }

  else
  {
    return 0;
  }
}

- (void)insertItem:(const void *)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashInsert(): attempt to insert NULL pointer" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashSetValue(ht, a3);
}

- (void)addObject:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashInsertKnownAbsent(): attempt to insert NULL pointer" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashAddValue(ht, a3);
}

- (void)insertKnownAbsentItem:(const void *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"*** NSHashInsertKnownAbsent(): attempt to insert NULL pointer";
    goto LABEL_8;
  }

  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  CFBasicHashFindBucket(self->_ht, a3, v9);
  if (*(&v10 + 1))
  {
    v8 = [NSString stringWithFormat:@"*** NSHashInsertKnownAbsent(): item %p already in table", a3];
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
LABEL_8:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  ht = self->_ht;

  CFBasicHashAddValue(ht, a3);
}

- (void)removeItem:(const void *)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashRemove(): attempt to remove NULL pointer" userInfo:{0, v3, v4}]);
  }

  ht = self->_ht;

  CFBasicHashRemoveValue(ht, a3);
}

- (id)description
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (!CFBasicHashGetCount(self->_ht))
  {
    return [NSString stringWithFormat:@"<NSHashTable: %p> {}", self];
  }

  v8[3] = 1;
  v3 = [objc_allocWithZone(NSMutableString) initWithCapacity:CFBasicHashGetCount(self->_ht) << 6];
  objc_msgSend(v3, "appendFormat:", @"<NSHashTable: %p> ("), self;
  describe = self->_callBacks.describe;
  v8[0] = self;
  v8[1] = describe;
  v8[2] = v3;
  ht = self->_ht;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__NSClassicHashTable_description__block_invoke;
  v7[3] = &__block_descriptor_40_e18_C64__0___qQQQQQQ_8l;
  v7[4] = v8;
  CFBasicHashApply(ht, v7);
  [v3 appendString:@""]);
  return v3;
}

uint64_t __33__NSClassicHashTable_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 32);
  if ((*(v3 + 24) & 1) == 0)
  {
    [*(v3 + 16) appendString:{@", "}];
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4)
  {
    [v5 appendString:{v4(*v3, v2)}];
  }

  else
  {
    [v5 appendFormat:@"%p", v2];
  }

  *(v3 + 24) = 0;
  return 1;
}

- (id)allObjects
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
  v15[2] = __32__NSClassicHashTable_allObjects__block_invoke;
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

uint64_t __32__NSClassicHashTable_allObjects__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

- (void)getKeys:(const void *)a3 count:(unint64_t *)a4
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  ht = self->_ht;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSClassicHashTable_getKeys_count___block_invoke;
  v7[3] = &unk_1E69F3E88;
  v7[4] = v8;
  CFBasicHashApply(ht, v7);
  if (a4)
  {
    *a4 = CFBasicHashGetCount(self->_ht);
  }

  _Block_object_dispose(v8, 8);
}

uint64_t __36__NSClassicHashTable_getKeys_count___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *v4 = v2;
  return 1;
}

@end