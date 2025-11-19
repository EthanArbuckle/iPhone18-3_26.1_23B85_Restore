@interface NSArray
+ (BOOL)array:(id)a3 isEqualToArray:(id)a4;
+ (id)_maps_commonPrefixSharedBetweenArray:(id)a3 suffix:(id *)a4 andArray:(id)a5 suffix:(id *)a6;
+ (id)_navigation_newArrayWithDefaultValue:(id)a3 withCapacity:(unint64_t)a4;
- (BOOL)_maps_containsContextOfClass:(Class)a3;
- (BOOL)_maps_containsSearchResultEqualToResult:(id)a3 forPurpose:(int64_t)a4;
- (BOOL)_maps_isPrefixOfArray:(id)a3;
- (NSArray)carShortenedArray;
- (id)_maps_compactMap:(id)a3;
- (id)_maps_firstContextOfClass:(Class)a3;
- (id)_maps_lastContextOfClass:(Class)a3;
- (id)_maps_map:(id)a3;
- (id)_maps_subarrayFromIndex:(unint64_t)a3;
- (id)_maps_subarrayToIndex:(unint64_t)a3;
@end

@implementation NSArray

- (id)_maps_subarrayToIndex:(unint64_t)a3
{
  if ([(NSArray *)self count])
  {
    v5 = a3 + 1;
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

- (id)_maps_subarrayFromIndex:(unint64_t)a3
{
  if (a3)
  {
    if ([(NSArray *)self count]<= a3)
    {
      v5 = &__NSArray0__struct;
    }

    else
    {
      v5 = [(NSArray *)self subarrayWithRange:a3, [(NSArray *)self count]- a3];
    }
  }

  else
  {
    v5 = [(NSArray *)self copy];
  }

  return v5;
}

- (id)_maps_lastContextOfClass:(Class)a3
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
  v5[5] = a3;
  [(NSArray *)self enumerateObjectsWithOptions:2 usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_maps_firstContextOfClass:(Class)a3
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
  v5[5] = a3;
  [(NSArray *)self enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_maps_containsContextOfClass:(Class)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005D2B64;
  v4[3] = &unk_1016230E0;
  v4[4] = a3;
  return [(NSArray *)self indexOfObjectPassingTest:v4]!= 0x7FFFFFFFFFFFFFFFLL;
}

+ (id)_navigation_newArrayWithDefaultValue:(id)a3 withCapacity:(unint64_t)a4
{
  v5 = a3;
  v6 = [NSMutableArray arrayWithCapacity:a4];
  if (a4)
  {
    v7 = 0;
    do
    {
      if (v5)
      {
        [v6 setObject:v5 atIndexedSubscript:v7];
      }

      ++v7;
    }

    while (a4 != v7);
  }

  v8 = [v6 copy];

  return v8;
}

- (BOOL)_maps_containsSearchResultEqualToResult:(id)a3 forPurpose:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = v6;
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v7;
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
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 isEqualToSearchResult:v14 forPurpose:{a4, v17}])
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

- (id)_maps_compactMap:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_maps_map:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        [v5 addObject:{v11, v13}];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)array:(id)a3 isEqualToArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToArray:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_maps_isPrefixOfArray:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 >= [(NSArray *)self count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = [v4 objectAtIndexedSubscript:{v10, v16}];
          LODWORD(v13) = [v14 isEqual:v13];

          if (!v13)
          {
            v6 = 0;
            goto LABEL_13;
          }

          ++v10;
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (id)_maps_commonPrefixSharedBetweenArray:(id)a3 suffix:(id *)a4 andArray:(id)a5 suffix:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  if (v10)
  {
    v12 = v10;
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

        if (a4)
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

  if (a4)
  {
LABEL_12:
    v18 = [v11 subarrayWithRange:{v14, objc_msgSend(v11, "count") - v14}];
    *a4 = v18;
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
    v5 = self;
  }

  else
  {
    v4 = v3;
    if ([(NSArray *)self count]< v3)
    {
      v4 = [(NSArray *)self count];
    }

    v5 = [(NSArray *)self subarrayWithRange:0, v4];
  }

  return v5;
}

@end