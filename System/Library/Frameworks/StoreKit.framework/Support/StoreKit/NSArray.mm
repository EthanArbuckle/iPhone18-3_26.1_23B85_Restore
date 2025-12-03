@interface NSArray
- (id)_tcr_associatedReader;
- (id)lib_batchedWithMaxSize:(unint64_t)size;
- (id)lib_categorizeItemsUsingBlock:(id)block;
- (id)lib_filterUsingBlock:(id)block;
- (id)lib_firstObjectPassingTest:(id)test;
- (id)lib_firstResultApplyingTransform:(id)transform;
- (id)lib_flatMapAndFilterUsingBlock:(id)block;
- (id)lib_mapAndFilterUsingBlock:(id)block;
- (id)tcr_dictionaryEnumerator;
- (id)tcr_numberEnumerator;
- (id)tcr_stringEnumerator;
@end

@implementation NSArray

- (id)tcr_dictionaryEnumerator
{
  _tcr_associatedReader = [(NSArray *)self _tcr_associatedReader];
  v3 = [_tcr_associatedReader enumeratorForObjectsOfClass:objc_opt_class()];

  return v3;
}

- (id)tcr_numberEnumerator
{
  _tcr_associatedReader = [(NSArray *)self _tcr_associatedReader];
  v3 = [_tcr_associatedReader enumeratorForObjectsOfClass:objc_opt_class()];

  return v3;
}

- (id)tcr_stringEnumerator
{
  _tcr_associatedReader = [(NSArray *)self _tcr_associatedReader];
  v3 = [_tcr_associatedReader enumeratorForObjectsOfClass:objc_opt_class()];

  return v3;
}

- (id)_tcr_associatedReader
{
  v6.receiver = self;
  v6.super_class = NSArray;
  _tcr_associatedReader = [(NSArray *)&v6 _tcr_associatedReader];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [[TypeCheckedArrayReader alloc] initWithArray:self];

    [(NSArray *)self _tcr_associateWithReader:v4];
    _tcr_associatedReader = v4;
  }

  return _tcr_associatedReader;
}

- (id)lib_categorizeItemsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = blockCopy[2](blockCopy, v11);
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

      v8 = [(NSArray *)selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [[NSDictionary alloc] initWithDictionary:v5 copyItems:1];

  return v16;
}

- (id)lib_firstObjectPassingTest:(id)test
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A1FC;
  v8[3] = &unk_100382C18;
  testCopy = test;
  v9 = testCopy;
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

- (id)lib_firstResultApplyingTransform:(id)transform
{
  transformCopy = transform;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v10 = transformCopy[2](transformCopy, *(*(&v13 + 1) + 8 * i));
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)lib_flatMapAndFilterUsingBlock:(id)block
{
  blockCopy = block;
  [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10006A434;
  v13 = v12 = &unk_100382C40;
  v14 = blockCopy;
  v5 = v13;
  v6 = blockCopy;
  [(NSArray *)self enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (id)lib_mapAndFilterUsingBlock:(id)block
{
  blockCopy = block;
  [NSMutableArray arrayWithCapacity:[(NSArray *)self count]];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10006A628;
  v13 = v12 = &unk_100382C68;
  v14 = blockCopy;
  v5 = v13;
  v6 = blockCopy;
  [(NSArray *)self enumerateObjectsUsingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

- (id)lib_filterUsingBlock:(id)block
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
  blockCopy = block;
  v9 = blockCopy;
  v10 = &v11;
  v8[4] = self;
  [(NSArray *)self enumerateObjectsUsingBlock:v8];
  if (v12[5])
  {
    selfCopy = v12[5];
  }

  else
  {
    selfCopy = self;
  }

  v6 = [(NSArray *)selfCopy copy];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)lib_batchedWithMaxSize:(unint64_t)size
{
  v5 = [(NSArray *)self count];
  v6 = objc_opt_new();
  if (v5)
  {
    v7 = 0;
    do
    {
      if (v5 >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = v5;
      }

      sizeCopy = [(NSArray *)self subarrayWithRange:v7, sizeCopy];
      v5 -= sizeCopy;
      v7 += sizeCopy;
      [v6 addObject:sizeCopy];
    }

    while (v5);
  }

  return v6;
}

@end