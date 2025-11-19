@interface NSArray
- (id)_tcr_associatedReader;
- (id)lib_batchedWithMaxSize:(unint64_t)a3;
- (id)lib_categorizeItemsUsingBlock:(id)a3;
- (id)lib_filterUsingBlock:(id)a3;
- (id)lib_firstObjectPassingTest:(id)a3;
- (id)lib_firstResultApplyingTransform:(id)a3;
- (id)lib_flatMapAndFilterUsingBlock:(id)a3;
- (id)lib_mapAndFilterUsingBlock:(id)a3;
- (id)tcr_dictionaryEnumerator;
- (id)tcr_numberEnumerator;
- (id)tcr_stringEnumerator;
@end

@implementation NSArray

- (id)tcr_dictionaryEnumerator
{
  v2 = [(NSArray *)self _tcr_associatedReader];
  v3 = [v2 enumeratorForObjectsOfClass:objc_opt_class()];

  return v3;
}

- (id)tcr_numberEnumerator
{
  v2 = [(NSArray *)self _tcr_associatedReader];
  v3 = [v2 enumeratorForObjectsOfClass:objc_opt_class()];

  return v3;
}

- (id)tcr_stringEnumerator
{
  v2 = [(NSArray *)self _tcr_associatedReader];
  v3 = [v2 enumeratorForObjectsOfClass:objc_opt_class()];

  return v3;
}

- (id)_tcr_associatedReader
{
  v6.receiver = self;
  v6.super_class = NSArray;
  v3 = [(NSArray *)&v6 _tcr_associatedReader];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [[TypeCheckedArrayReader alloc] initWithArray:self];

    [(NSArray *)self _tcr_associateWithReader:v4];
    v3 = v4;
  }

  return v3;
}

- (id)lib_categorizeItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        if (v12)
        {
          v13 = [v5 objectForKeyedSubscript:{v12, v18}];
          v14 = v13;
          if (v13)
          {
            [v13 addObject:v11];
          }

          else
          {
            v15 = [NSMutableArray arrayWithObject:v11];
            [v5 setObject:v15 forKeyedSubscript:v12];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [[NSDictionary alloc] initWithDictionary:v5 copyItems:1];

  return v16;
}

- (id)lib_firstObjectPassingTest:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A1FC;
  v8[3] = &unk_100382C18;
  v4 = a3;
  v9 = v4;
  v5 = [(NSArray *)self indexOfObjectPassingTest:v8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self objectAtIndexedSubscript:v5];
  }

  return v6;
}

- (id)lib_firstResultApplyingTransform:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)lib_flatMapAndFilterUsingBlock:(id)a3
{
  v4 = a3;
  [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10006A434;
  v13 = v12 = &unk_100382C40;
  v14 = v4;
  v5 = v13;
  v6 = v4;
  [(NSArray *)self enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (id)lib_mapAndFilterUsingBlock:(id)a3
{
  v4 = a3;
  [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10006A628;
  v13 = v12 = &unk_100382C68;
  v14 = v4;
  v5 = v13;
  v6 = v4;
  [(NSArray *)self enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (id)lib_filterUsingBlock:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10006A7C4;
  v15 = sub_10006A7D4;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A7DC;
  v8[3] = &unk_100382C90;
  v4 = a3;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  [(NSArray *)self enumerateObjectsUsingBlock:v8];
  if (v12[5])
  {
    v5 = v12[5];
  }

  else
  {
    v5 = self;
  }

  v6 = [(NSArray *)v5 copy];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)lib_batchedWithMaxSize:(unint64_t)a3
{
  v5 = [(NSArray *)self count];
  v6 = objc_opt_new();
  if (v5)
  {
    v7 = 0;
    do
    {
      if (v5 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v5;
      }

      v9 = [(NSArray *)self subarrayWithRange:v7, v8];
      v5 -= v8;
      v7 += v8;
      [v6 addObject:v9];
    }

    while (v5);
  }

  return v6;
}

@end