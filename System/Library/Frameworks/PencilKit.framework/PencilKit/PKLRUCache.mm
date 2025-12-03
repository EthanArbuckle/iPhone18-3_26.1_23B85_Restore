@interface PKLRUCache
- (PKLRUCache)init;
- (id)checkObjectForKey:(uint64_t)key;
- (id)objectForKey:(uint64_t)key scaleFactor:;
- (id)objectForKey:(void *)key;
- (void)_keyItemForKey:(uint64_t)key scaleFactor:;
- (void)_removeItem:(uint64_t)item;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(uint64_t)key;
- (void)removeObjectForKey:(uint64_t)key scaleFactor:;
- (void)setObject:(void *)object forKey:(unint64_t)key cost:;
- (void)setObject:(void *)object forKey:(unint64_t)key cost:(uint64_t)cost scaleFactor:;
@end

@implementation PKLRUCache

- (PKLRUCache)init
{
  v11.receiver = self;
  v11.super_class = PKLRUCache;
  v2 = [(PKLRUCache *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v5 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v4 valuePointerFunctions:v5 capacity:2048];
    itemTable = v3->_itemTable;
    v3->_itemTable = v6;

    v3->_totalCostLimit = 0x4000000;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:4096];
    freeKeys = v3->_freeKeys;
    v3->_freeKeys = v8;
  }

  return v3;
}

- (void)dealloc
{
  [(PKLRUCache *)self removeAllObjects];
  v3.receiver = self;
  v3.super_class = PKLRUCache;
  [(PKLRUCache *)&v3 dealloc];
}

- (void)removeAllObjects
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    while (1)
    {
      v2 = *(self + 8);
      if (!v2)
      {
        break;
      }

      v3 = v2[3];
      v4 = *(self + 8);
      *(self + 8) = v3;
      v5 = v2;

      v6 = v5[1];
      v5[1] = 0;

      v7 = v5[5];
      v5[5] = 0;

      v8 = v5[4];
      v5[4] = 0;

      v9 = v2[3];
      v2[3] = 0;
    }

    [*(self + 32) removeAllObjects];
    v10 = *(self + 16);
    *(self + 16) = 0;

    *(self + 40) = 0;

    os_unfair_lock_unlock((self + 56));
  }
}

- (id)objectForKey:(void *)key
{
  v3 = a2;
  if (key)
  {
    key = [(PKLRUCache *)key objectForKey:v3 scaleFactor:1];
  }

  return key;
}

- (void)_keyItemForKey:(uint64_t)key scaleFactor:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (key == 1)
    {
      p_isa = v5;
    }

    else if ([*(self + 48) count])
    {
      p_isa = [*(self + 48) lastObject];
      [*(self + 48) removeLastObject];
      if (p_isa)
      {
        p_isa[2] = key;
        objc_setProperty_nonatomic_copy(p_isa, v8, v6, 8);
      }
    }

    else
    {
      v9 = objc_alloc_init(PKLRUCacheKey);
      p_isa = &v9->super.isa;
      if (v9)
      {
        objc_setProperty_nonatomic_copy(v9, v10, v6, 8);
        p_isa[2] = key;
      }
    }
  }

  else
  {
    p_isa = 0;
  }

  return p_isa;
}

- (id)checkObjectForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    os_unfair_lock_lock((key + 56));
    v4 = [(PKLRUCache *)key _keyItemForKey:v3 scaleFactor:1];
    v5 = [*(key + 32) objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 40);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    os_unfair_lock_unlock((key + 56));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectForKey:(uint64_t)key scaleFactor:
{
  v5 = a2;
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    v6 = [(PKLRUCache *)self _keyItemForKey:v5 scaleFactor:key];
    v7 = [*(self + 32) objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 40);
      if (v8 != *(self + 16))
      {
        v10 = v8[4];
        if (v10)
        {
          objc_storeStrong(v10 + 3, v8[3]);
        }

        v11 = v8[3];
        if (v11)
        {
          objc_storeStrong(v11 + 4, v8[4]);
        }

        objc_storeStrong(v8 + 4, *(self + 16));
        if (v8 == *(self + 8))
        {
          objc_storeStrong((self + 8), v8[3]);
        }

        v12 = v8[3];
        v8[3] = 0;

        objc_storeStrong((*(self + 16) + 24), v8);
        objc_storeStrong((self + 16), v8);
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;

    os_unfair_lock_unlock((self + 56));
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_removeItem:(uint64_t)item
{
  v4 = a2;
  if (!item)
  {
    goto LABEL_14;
  }

  v5 = v4[4];
  v21 = v4;
  v6 = v5;
  v7 = v21[3];
  v8 = v7;
  if (v6)
  {
    v9 = v6[3];
    v6[3] = v7;

    if (!v8)
    {
      objc_storeStrong((item + 16), v5);
      v10 = v6[3];
      v6[3] = 0;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = *(item + 8);
  *(item + 8) = v7;

  if (v8)
  {
    v12 = v8[4];
    v8[4] = 0;

LABEL_7:
    v13 = v6;
    v10 = v8[4];
    v8[4] = v13;
    goto LABEL_8;
  }

  v10 = *(item + 16);
  *(item + 16) = 0;
LABEL_8:

  v14 = *(item + 32);
  *(item + 40) -= v21[6];
  [v14 removeObjectForKey:v21[1]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(item + 48) count] <= 0xFFF)
  {
    [*(item + 48) addObject:v21[1]];
  }

  v15 = v21[1];
  v21[1] = 0;

  v16 = v21[5];
  v21[5] = 0;

  v17 = v21[3];
  v21[3] = 0;

  v18 = v21[4];
  v21[4] = 0;

  if (*(item + 72) <= 1023)
  {
    v20 = *(item + 24);
    v19 = item + 24;
    objc_storeStrong(v21 + 3, v20);
    objc_storeStrong(v19, a2);
    ++*(v19 + 48);
  }

  v4 = v21;
LABEL_14:
}

- (void)setObject:(void *)object forKey:(unint64_t)key cost:
{
  v8 = a2;
  objectCopy = object;
  if (self)
  {
    [(PKLRUCache *)self setObject:v8 forKey:objectCopy cost:key scaleFactor:1];
  }
}

- (void)setObject:(void *)object forKey:(unint64_t)key cost:(uint64_t)cost scaleFactor:
{
  v25 = a2;
  objectCopy = object;
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    v11 = [(PKLRUCache *)self _keyItemForKey:objectCopy scaleFactor:cost];
    v12 = [*(self + 32) objectForKey:v11];
    if (v12)
    {
      [(PKLRUCache *)self _removeItem:v12];
    }

    for (i = (self + 8); *i; [(PKLRUCache *)self _removeItem:?])
    {
      v14 = *(self + 64);
      if (!v14 || *(self + 40) + key <= v14)
      {
        break;
      }
    }

    if (*(self + 72) < 1)
    {
      v15 = objc_alloc_init(PKLRUCacheItem);
    }

    else
    {
      v15 = *(self + 24);
      objc_storeStrong((self + 24), *(*(self + 24) + 24));
      --*(self + 72);
      next = v15->_next;
      v15->_next = 0;
    }

    v17 = [v11 copyWithZone:0];
    key = v15->_key;
    v15->_key = v17;

    objc_storeStrong(&v15->_object, a2);
    v15->_cost = key;
    v19 = v15;
    v20 = v19;
    v21 = (self + 16);
    if (*(self + 8))
    {
      objc_storeStrong(&v19->_prev, *v21);
      objc_storeStrong(*v21 + 3, v15);
      v22 = v20;
      i = (self + 16);
    }

    else
    {
      objc_storeStrong((self + 16), v15);
      v22 = *v21;
    }

    v23 = v22;
    v24 = *i;
    *i = v23;

    [*(self + 32) setObject:v20 forKey:v15->_key];
    *(self + 40) += v15->_cost;

    os_unfair_lock_unlock((self + 56));
  }
}

- (void)removeObjectForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    [(PKLRUCache *)key removeObjectForKey:v3 scaleFactor:1];
  }
}

- (void)removeObjectForKey:(uint64_t)key scaleFactor:
{
  v5 = a2;
  if (self)
  {
    v8 = v5;
    os_unfair_lock_lock((self + 56));
    v6 = [(PKLRUCache *)self _keyItemForKey:v8 scaleFactor:key];
    v7 = [*(self + 32) objectForKey:v6];
    if (v7)
    {
      [(PKLRUCache *)self _removeItem:v7];
    }

    os_unfair_lock_unlock((self + 56));
    v5 = v8;
  }
}

@end