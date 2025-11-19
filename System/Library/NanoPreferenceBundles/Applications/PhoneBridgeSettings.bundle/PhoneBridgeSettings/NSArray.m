@interface NSArray
- (BOOL)hasObjectPassingTest:(id)a3;
- (id)firstObjectPassingTest:(id)a3;
- (id)max:(id)a3;
- (id)nph_map:(id)a3;
- (id)objectsPassingTest:(id)a3;
@end

@implementation NSArray

- (id)max:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self count])
  {
    v5 = [(NSArray *)self objectAtIndexedSubscript:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (v4[2](v4, v11, v5))
          {
            v12 = v11;

            v5 = v12;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasObjectPassingTest:(id)a3
{
  v3 = [(NSArray *)self firstObjectPassingTest:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)firstObjectPassingTest:(id)a3
{
  v3 = [(NSArray *)self objectsPassingTest:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)objectsPassingTest:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1B48;
  v8[3] = &unk_83C0;
  v9 = a3;
  v4 = v9;
  v5 = [NSPredicate predicateWithBlock:v8];
  v6 = [(NSArray *)self filteredArrayUsingPredicate:v5];

  return v6;
}

- (id)nph_map:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end