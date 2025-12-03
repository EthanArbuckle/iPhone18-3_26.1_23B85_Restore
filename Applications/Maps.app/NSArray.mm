@interface NSArray
+ (BOOL)array:(id)array isEqualToArray:(id)toArray;
+ (id)_maps_commonPrefixSharedBetweenArray:(id)array suffix:(id *)suffix andArray:(id)andArray suffix:(id *)a6;
+ (id)_navigation_newArrayWithDefaultValue:(id)value withCapacity:(unint64_t)capacity;
- (BOOL)_maps_containsContextOfClass:(Class)class;
- (BOOL)_maps_containsSearchResultEqualToResult:(id)result forPurpose:(int64_t)purpose;
- (BOOL)_maps_isPrefixOfArray:(id)array;
- (NSArray)carShortenedArray;
- (id)_maps_compactMap:(id)map;
- (id)_maps_firstContextOfClass:(Class)class;
- (id)_maps_lastContextOfClass:(Class)class;
- (id)_maps_map:(id)_maps_map;
- (id)_maps_subarrayFromIndex:(unint64_t)index;
- (id)_maps_subarrayToIndex:(unint64_t)index;
@end

@implementation NSArray

- (id)_maps_subarrayToIndex:(unint64_t)index
{
  if ([(NSArray *)self count])
  {
    v5 = index + 1;
    if (v5 >= [(NSArray *)self count])
    {
      v6 = [(NSArray *)self copy];
    }

    else
    {
      v6 = [(NSArray *)self subarrayWithRange:0, v5];
    }
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)_maps_subarrayFromIndex:(unint64_t)index
{
  if (index)
  {
    if ([(NSArray *)self count]<= index)
    {
      index = &__NSArray0__struct;
    }

    else
    {
      index = [(NSArray *)self subarrayWithRange:index, [(NSArray *)self count]- index];
    }
  }

  else
  {
    index = [(NSArray *)self copy];
  }

  return index;
}

- (id)_maps_lastContextOfClass:(Class)class
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1005D28DC;
  v10 = sub_1005D28EC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D28F4;
  v5[3] = &unk_101623108;
  v5[4] = &v6;
  v5[5] = class;
  [(NSArray *)self enumerateObjectsWithOptions:2 usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_maps_firstContextOfClass:(Class)class
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1005D28DC;
  v10 = sub_1005D28EC;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005D2A70;
  v5[3] = &unk_101623108;
  v5[4] = &v6;
  v5[5] = class;
  [(NSArray *)self enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_maps_containsContextOfClass:(Class)class
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005D2B64;
  v4[3] = &unk_1016230E0;
  v4[4] = class;
  return [(NSArray *)self indexOfObjectPassingTest:v4]!= 0x7FFFFFFFFFFFFFFFLL;
}

+ (id)_navigation_newArrayWithDefaultValue:(id)value withCapacity:(unint64_t)capacity
{
  valueCopy = value;
  v6 = [NSMutableArray arrayWithCapacity:capacity];
  if (capacity)
  {
    v7 = 0;
    do
    {
      if (valueCopy)
      {
        [v6 setObject:valueCopy atIndexedSubscript:v7];
      }

      ++v7;
    }

    while (capacity != v7);
  }

  v8 = [v6 copy];

  return v8;
}

- (BOOL)_maps_containsSearchResultEqualToResult:(id)result forPurpose:(int64_t)purpose
{
  resultCopy = result;
  selfCopy = self;
  v8 = resultCopy;
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = selfCopy;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToSearchResult:v14 forPurpose:{purpose, v17}])
          {
            v15 = v14;

            v9 = v15;
            goto LABEL_14;
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15 != 0;
}

- (id)_maps_compactMap:(id)map
{
  mapCopy = map;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = mapCopy[2](mapCopy, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_maps_map:(id)_maps_map
{
  _maps_mapCopy = _maps_map;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = _maps_mapCopy[2](_maps_mapCopy, *(*(&v13 + 1) + 8 * i));
        [v5 addObject:{v11, v13}];
      }

      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)array:(id)array isEqualToArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  v7 = toArrayCopy;
  if (arrayCopy | toArrayCopy)
  {
    v8 = 0;
    if (arrayCopy && toArrayCopy)
    {
      v8 = [arrayCopy isEqualToArray:toArrayCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_maps_isPrefixOfArray:(id)array
{
  arrayCopy = array;
  v5 = [arrayCopy count];
  if (v5 >= [(NSArray *)self count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(selfCopy);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [arrayCopy objectAtIndexedSubscript:{v10, v16}];
          LODWORD(v13) = [v14 isEqual:v13];

          if (!v13)
          {
            v6 = 0;
            goto LABEL_13;
          }

          ++v10;
        }

        v9 = [(NSArray *)selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_maps_commonPrefixSharedBetweenArray:(id)array suffix:(id *)suffix andArray:(id)andArray suffix:(id *)a6
{
  arrayCopy = array;
  andArrayCopy = andArray;
  if (arrayCopy)
  {
    v11 = arrayCopy;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  if (andArrayCopy)
  {
    v12 = andArrayCopy;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v13 = objc_alloc_init(NSMutableArray);
  v14 = 0;
  if ([v11 count])
  {
    while (v14 < [v12 count])
    {
      v15 = [v11 objectAtIndexedSubscript:v14];
      v16 = [v12 objectAtIndexedSubscript:v14];
      v17 = [v16 isEqual:v15];

      if ((v17 & 1) == 0)
      {

        if (suffix)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      [v13 addObject:v15];
      ++v14;

      if (v14 >= [v11 count])
      {
        break;
      }
    }
  }

  if (suffix)
  {
LABEL_12:
    v18 = [v11 subarrayWithRange:{v14, objc_msgSend(v11, "count") - v14}];
    *suffix = v18;
  }

LABEL_13:
  if (a6)
  {
    v19 = [v12 subarrayWithRange:{v14, objc_msgSend(v12, "count") - v14}];
    *a6 = v19;
  }

  return v13;
}

- (NSArray)carShortenedArray
{
  if (![(NSArray *)self count]|| (v3 = +[CarDisplayController maximumListLength], v3 == -1))
  {
    selfCopy = self;
  }

  else
  {
    v4 = v3;
    if ([(NSArray *)self count]< v3)
    {
      v4 = [(NSArray *)self count];
    }

    selfCopy = [(NSArray *)self subarrayWithRange:0, v4];
  }

  return selfCopy;
}

@end