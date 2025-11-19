@interface CBORMap
- (CBORMap)init;
- (id)getSortedKeys;
- (void)write:(id)a3;
@end

@implementation CBORMap

- (CBORMap)init
{
  v6.receiver = self;
  v6.super_class = CBORMap;
  v2 = [(CBORMap *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    m_data = v2->m_data;
    v2->m_data = v3;
  }

  return v2;
}

- (id)getSortedKeys
{
  v2 = NSAllMapTableKeys(self->m_data);
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_2];

  return v3;
}

uint64_t __24__CBORMap_getSortedKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 fieldType];
  v7 = [v5 fieldType];
  if (v6 >= v7)
  {
    if (v6 <= v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v8 = [v4 compare:v5];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)write:(id)a3
{
  v11 = a3;
  v4 = [(CBORMap *)self getSortedKeys];
  v5 = [v4 objectEnumerator];
  [(CBORValue *)self encodeStartItems:[(NSMapTable *)self->m_data count] output:v11];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = v8;
      v8 = [(NSMapTable *)self->m_data objectForKey:v7];

      [v7 write:v11];
      [v8 write:v11];
      v10 = [v5 nextObject];

      v7 = v10;
    }

    while (v10);
  }
}

@end