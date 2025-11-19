@interface NameCacheBucket
- (BOOL)removeEntryAtIndex:(unsigned int)a3;
- (NameCacheBucket)init;
- (int)addEntry:(NameCacheEntry_s)a3;
- (void)dealloc;
@end

@implementation NameCacheBucket

- (NameCacheBucket)init
{
  v4.receiver = self;
  v4.super_class = NameCacheBucket;
  v2 = [(NameCacheBucket *)&v4 init];
  if (v2)
  {
    v2->elements = malloc_type_calloc(0x64uLL, 8uLL, 0x100004000313F17uLL);
    *&v2->_currCount = 0x6400000000;
  }

  return v2;
}

- (void)dealloc
{
  elements = self->elements;
  if (elements)
  {
    free(elements);
    self->elements = 0;
  }

  v4.receiver = self;
  v4.super_class = NameCacheBucket;
  [(NameCacheBucket *)&v4 dealloc];
}

- (int)addEntry:(NameCacheEntry_s)a3
{
  currCount = self->_currCount;
  elements = self->elements;
  if (currCount != self->_currSize)
  {
    goto LABEL_4;
  }

  v7 = malloc_type_realloc(elements, 8 * ([(NameCacheBucket *)self currSize]+ 100), 0x100004000313F17uLL);
  self->elements = v7;
  if (v7)
  {
    elements = v7;
    currCount = self->_currCount;
    self->_currSize += 100;
LABEL_4:
    result = 0;
    self->_currCount = currCount + 1;
    elements[currCount] = a3;
    return result;
  }

  return 12;
}

- (BOOL)removeEntryAtIndex:(unsigned int)a3
{
  currCount = self->_currCount;
  if (!currCount)
  {
    return 0;
  }

  elements = self->elements;
  if (elements->var1 != a3)
  {
    v5 = 0;
    v7 = self->elements;
    while (currCount - 1 != v5)
    {
      var1 = v7[1].var1;
      ++v7;
      ++v5;
      if (var1 == a3)
      {
        v6 = v5 < currCount;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v5 = 0;
  v6 = 1;
  v7 = self->elements;
LABEL_8:
  v9 = currCount - 1;
  if (v9 != v5)
  {
    v7->var0 = elements[v9].var0;
    elements[v5].var1 = elements[self->_currCount - 1].var1;
    v9 = self->_currCount - 1;
  }

  self->_currCount = v9;
  return v6;
}

@end