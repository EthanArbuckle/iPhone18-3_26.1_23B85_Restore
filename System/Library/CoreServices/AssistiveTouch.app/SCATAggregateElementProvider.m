@interface SCATAggregateElementProvider
- (BOOL)containsElement:(id)a3;
- (NSString)description;
- (SCATAggregateElementProvider)init;
- (id)addProviderWithElements:(id)a3 passingTest:(id)a4;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (unint64_t)_indexOfProviderAfterProviderWithIndex:(unint64_t)a3 didWrap:(BOOL *)a4;
- (unint64_t)_indexOfProviderBeforeProviderWithIndex:(unint64_t)a3 didWrap:(BOOL *)a4;
- (unint64_t)_indexOfProviderContainingElement:(id)a3;
- (void)addProvider:(id)a3;
- (void)removeAllProviders;
- (void)removeProvider:(id)a3;
@end

@implementation SCATAggregateElementProvider

- (SCATAggregateElementProvider)init
{
  v6.receiver = self;
  v6.super_class = SCATAggregateElementProvider;
  v2 = [(SCATAggregateElementProvider *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableOrderedSet orderedSet];
    [(SCATAggregateElementProvider *)v2 setProviders:v3];

    v4 = v2;
  }

  return v2;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"SCATAggregateElementProvider<%p>\n", self];
  [v3 appendFormat:@"Providers:\n"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(SCATAggregateElementProvider *)self providers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addProvider:(id)a3
{
  v4 = a3;
  v5 = [(SCATAggregateElementProvider *)self providers];
  [v5 addObject:v4];
}

- (id)addProviderWithElements:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (v7[2](v7, v14))
          {
            [v8 addObject:{v14, v18}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = v6;
  }

  if ([v8 count])
  {
    v15 = [[SCATStaticElementProvider alloc] initWithElements:v8];
    v16 = [(SCATAggregateElementProvider *)self providers];
    [v16 addObject:v15];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)removeProvider:(id)a3
{
  v4 = a3;
  v5 = [(SCATAggregateElementProvider *)self providers];
  [v5 removeObject:v4];
}

- (void)removeAllProviders
{
  v2 = [(SCATAggregateElementProvider *)self providers];
  [v2 removeAllObjects];
}

- (unint64_t)_indexOfProviderAfterProviderWithIndex:(unint64_t)a3 didWrap:(BOOL *)a4
{
  v6 = [(SCATAggregateElementProvider *)self providers];
  v7 = [v6 count];

  v9 = a3 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0;
  v10 = a3 + 1;
  if (a4)
  {
    v11 = v10 == v7 && v9;
    *a4 = v11;
  }

  if (v10 == v7)
  {
    v10 = 0;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)_indexOfProviderBeforeProviderWithIndex:(unint64_t)a3 didWrap:(BOOL *)a4
{
  v6 = [(SCATAggregateElementProvider *)self providers];
  v7 = [v6 count];

  if (a4)
  {
    *a4 = a3 == 0;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 - 1;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)_indexOfProviderContainingElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATAggregateElementProvider *)self providers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(SCATAggregateElementProvider *)self providers];
      v9 = [v8 objectAtIndex:v7];

      LOBYTE(v8) = [v9 containsElement:v4];
      if (v8)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)firstElementWithOptions:(int *)a3
{
  v5 = [(SCATAggregateElementProvider *)self providers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SCATAggregateElementProvider *)self providers];
    v8 = [v7 objectAtIndex:0];

    v9 = [v8 firstElementWithOptions:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastElementWithOptions:(int *)a3
{
  v5 = [(SCATAggregateElementProvider *)self providers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SCATAggregateElementProvider *)self providers];
    v8 = [v7 lastObject];

    v9 = [v8 lastElementWithOptions:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v21 = 0;
  v9 = [(SCATAggregateElementProvider *)self _indexOfProviderContainingElement:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SCATAggregateElementProvider *)self providers];
    v10 = [v11 objectAtIndex:v9];
  }

  v12 = [v10 elementBefore:v8 didWrap:&v21 options:a5];
  if (v21 == 1)
  {
    v20 = 0;
    v13 = [(SCATAggregateElementProvider *)self _indexOfProviderBeforeProviderWithIndex:v9 didWrap:&v20];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v16 = v13;
      v17 = [(SCATAggregateElementProvider *)self providers];
      v14 = [v17 objectAtIndex:v16];
    }

    v15 = v20;
    v18 = [v14 lastElementWithOptions:a5];

    v12 = v18;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (a4)
  {
LABEL_11:
    *a4 = v15 & 1;
  }

LABEL_12:

  return v12;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v21 = 0;
  v9 = [(SCATAggregateElementProvider *)self _indexOfProviderContainingElement:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SCATAggregateElementProvider *)self providers];
    v10 = [v11 objectAtIndex:v9];
  }

  v12 = [v10 elementAfter:v8 didWrap:&v21 options:a5];
  if (v21 == 1)
  {
    v20 = 0;
    v13 = [(SCATAggregateElementProvider *)self _indexOfProviderAfterProviderWithIndex:v9 didWrap:&v20];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v16 = v13;
      v17 = [(SCATAggregateElementProvider *)self providers];
      v14 = [v17 objectAtIndex:v16];
    }

    v15 = v20;
    v18 = [v14 firstElementWithOptions:a5];

    v12 = v18;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (a4)
  {
LABEL_11:
    *a4 = v15 & 1;
  }

LABEL_12:

  return v12;
}

- (BOOL)containsElement:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SCATAggregateElementProvider *)self providers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsElement:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end