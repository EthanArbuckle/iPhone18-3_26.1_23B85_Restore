@interface AXIndexMap
- (AXIndexMap)init;
- (AXIndexMap)initWithCoder:(id)coder;
- (AXIndexMap)initWithObjects:(id *)objects andIndexes:(unint64_t *)indexes count:(unint64_t)count;
- (id)_initAndDeepCopyIndexMap:(id)map;
- (id)_initWithIndexMap:(id)map;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepCopyWithZone:(_NSZone *)zone;
- (id)description;
- (id)indexes;
- (unint64_t)_createIndexesWithSize:(unint64_t *)size;
- (void)addObjectsFromIndexMap:(id)map;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setObject:(id)object forIndex:(unint64_t)index;
@end

@implementation AXIndexMap

- (AXIndexMap)initWithObjects:(id *)objects andIndexes:(unint64_t *)indexes count:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = AXIndexMap;
  v8 = [(AXIndexMap *)&v12 init];
  if (v8 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (v8->_map = Mutable) != 0))
  {
    for (; count; --count)
    {
      if (*objects)
      {
        CFDictionarySetValue(v8->_map, *indexes, *objects);
      }

      ++indexes;
      ++objects;
    }

    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AXIndexMap)init
{
  v6.receiver = self;
  v6.super_class = AXIndexMap;
  v2 = [(AXIndexMap *)&v6 init];
  if (v2 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (v2->_map = Mutable) != 0))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithIndexMap:(id)map
{
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = AXIndexMap;
  v5 = [(AXIndexMap *)&v11 init];
  if (v5 && (v6 = mapCopy[1], Count = CFDictionaryGetCount(v6), MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v6), (v5->_map = MutableCopy) != 0))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initAndDeepCopyIndexMap:(id)map
{
  mapCopy = map;
  v16.receiver = self;
  v16.super_class = AXIndexMap;
  v5 = [(AXIndexMap *)&v16 init];
  if (v5 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (v5->_map = Mutable) != 0))
  {
    v15 = 0;
    v7 = [mapCopy _createIndexesWithSize:&v15];
    if (v7)
    {
      v8 = v7;
      if (v15)
      {
        for (i = 0; i < v15; ++i)
        {
          v10 = [mapCopy objectForIndex:v8[i]];
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v14 = AXLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [(AXIndexMap *)v10 _initAndDeepCopyIndexMap:v14];
            }

            abort();
          }

          v11 = [v10 copyWithZone:0];

          CFDictionarySetValue(v5->_map, v8[i], v11);
        }
      }

      free(v8);
    }

    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AXIndexMap allocWithZone:zone];

  return [(AXIndexMap *)v4 _initWithIndexMap:self];
}

- (id)deepCopyWithZone:(_NSZone *)zone
{
  v4 = [AXIndexMap allocWithZone:zone];

  return [(AXIndexMap *)v4 _initAndDeepCopyIndexMap:self];
}

- (AXIndexMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AXIndexMap *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexes"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"values"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __28__AXIndexMap_initWithCoder___block_invoke;
    v10[3] = &unk_1E735B610;
    v11 = v5;
    v12 = v7;
    v8 = v7;
    [v6 enumerateObjectsUsingBlock:v10];
  }

  return v5;
}

void __28__AXIndexMap_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = [v6 unsignedLongValue];

  [v4 setObject:v8 forIndex:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v16 = 0;
  v7 = [(AXIndexMap *)self _createIndexesWithSize:&v16];
  if (v16)
  {
    for (i = 0; i < v16; ++i)
    {
      v9 = v7[i];
      v10 = [(AXIndexMap *)self objectForIndex:v9];
      if ([v10 conformsToProtocol:&unk_1F0587740])
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
        [v5 addObject:v14];

        [v6 addObject:v10];
      }

      else if (!v10)
      {
        _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/DataStructures/AXIndexMap.m", 0xA6, "[AXIndexMap encodeWithCoder:]", @"nil value for an index returned from _createIndexesWithSize, this should never happen", v11, v12, v13, v15);
      }
    }
  }

  [coderCopy encodeObject:v5 forKey:@"indexes"];
  [coderCopy encodeObject:v6 forKey:@"values"];
  free(v7);
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    CFRelease(map);
    self->_map = 0;
  }

  v4.receiver = self;
  v4.super_class = AXIndexMap;
  [(AXIndexMap *)&v4 dealloc];
}

- (void)setObject:(id)object forIndex:(unint64_t)index
{
  if (object)
  {
    CFDictionarySetValue(self->_map, index, object);
  }
}

- (unint64_t)_createIndexesWithSize:(unint64_t *)size
{
  Count = CFDictionaryGetCount(self->_map);
  if (size)
  {
    *size = Count;
  }

  v6 = 8 * Count;
  v7 = malloc_type_malloc(8 * Count, 0x5808CAD4uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(self->_map, v8, 0);
  }

  return v8;
}

- (id)indexes
{
  v6 = 0;
  v2 = [(AXIndexMap *)self _createIndexesWithSize:&v6];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD50]) init];
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      [v3 addIndex:v2[i]];
    }
  }

  free(v2);

  return v3;
}

- (void)addObjectsFromIndexMap:(id)map
{
  mapCopy = map;
  v9 = 0;
  v5 = [mapCopy _createIndexesWithSize:&v9];
  if (v5)
  {
    v6 = v5;
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        v8 = [mapCopy objectForIndex:v6[i]];
        [(AXIndexMap *)self setObject:v8 forIndex:v6[i]];
      }
    }

    free(v6);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"AXIndexMap:\n"];
  v13 = 0;
  v4 = [(AXIndexMap *)self _createIndexesWithSize:&v13];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v7 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
        v8 = v5[i];
        v9 = [(AXIndexMap *)self objectForIndex:v8];
        v10 = [v7 initWithFormat:@"\t%lu (0x%lx) -> %@\n", v8, v8, v9];

        [v3 appendString:v10];
      }
    }

    free(v5);
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_initAndDeepCopyIndexMap:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19159B000, a2, OS_LOG_TYPE_ERROR, "Trying to copy an object that can't be copied! %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end