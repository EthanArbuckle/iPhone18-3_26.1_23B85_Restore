@interface SecCBORMap
- (SecCBORMap)init;
- (id)getSortedKeys;
- (void)write:(id)write;
@end

@implementation SecCBORMap

- (void)write:(id)write
{
  writeCopy = write;
  getSortedKeys = [(SecCBORMap *)self getSortedKeys];
  objectEnumerator = [getSortedKeys objectEnumerator];
  [(SecCBORValue *)self encodeStartItems:[(NSMapTable *)self->m_data count] output:writeCopy];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v7 = nextObject;
    v8 = 0;
    do
    {
      v9 = v8;
      v8 = [(NSMapTable *)self->m_data objectForKey:v7];

      [v7 write:writeCopy];
      [v8 write:writeCopy];
      nextObject2 = [objectEnumerator nextObject];

      v7 = nextObject2;
    }

    while (nextObject2);
  }
}

- (id)getSortedKeys
{
  v2 = NSAllMapTableKeys(self->m_data);
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_14249];

  return v3;
}

uint64_t __27__SecCBORMap_getSortedKeys__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (SecCBORMap)init
{
  v6.receiver = self;
  v6.super_class = SecCBORMap;
  v2 = [(SecCBORMap *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    m_data = v2->m_data;
    v2->m_data = v3;
  }

  return v2;
}

@end