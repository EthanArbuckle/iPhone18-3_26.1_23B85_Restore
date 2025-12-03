@interface SCATAggregateElementProvider
- (BOOL)containsElement:(id)element;
- (NSString)description;
- (SCATAggregateElementProvider)init;
- (id)addProviderWithElements:(id)elements passingTest:(id)test;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (unint64_t)_indexOfProviderAfterProviderWithIndex:(unint64_t)index didWrap:(BOOL *)wrap;
- (unint64_t)_indexOfProviderBeforeProviderWithIndex:(unint64_t)index didWrap:(BOOL *)wrap;
- (unint64_t)_indexOfProviderContainingElement:(id)element;
- (void)addProvider:(id)provider;
- (void)removeAllProviders;
- (void)removeProvider:(id)provider;
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
  providers = [(SCATAggregateElementProvider *)self providers];
  v5 = [providers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(providers);
        }

        [v3 appendFormat:@"  %@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [providers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addProvider:(id)provider
{
  providerCopy = provider;
  providers = [(SCATAggregateElementProvider *)self providers];
  [providers addObject:providerCopy];
}

- (id)addProviderWithElements:(id)elements passingTest:(id)test
{
  elementsCopy = elements;
  testCopy = test;
  if (testCopy)
  {
    v8 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = elementsCopy;
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
          if (testCopy[2](testCopy, v14))
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
    v8 = elementsCopy;
  }

  if ([v8 count])
  {
    v15 = [[SCATStaticElementProvider alloc] initWithElements:v8];
    providers = [(SCATAggregateElementProvider *)self providers];
    [providers addObject:v15];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)removeProvider:(id)provider
{
  providerCopy = provider;
  providers = [(SCATAggregateElementProvider *)self providers];
  [providers removeObject:providerCopy];
}

- (void)removeAllProviders
{
  providers = [(SCATAggregateElementProvider *)self providers];
  [providers removeAllObjects];
}

- (unint64_t)_indexOfProviderAfterProviderWithIndex:(unint64_t)index didWrap:(BOOL *)wrap
{
  providers = [(SCATAggregateElementProvider *)self providers];
  v7 = [providers count];

  v9 = index != 0x7FFFFFFFFFFFFFFFLL && v7 != 0;
  v10 = index + 1;
  if (wrap)
  {
    v11 = v10 == v7 && v9;
    *wrap = v11;
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

- (unint64_t)_indexOfProviderBeforeProviderWithIndex:(unint64_t)index didWrap:(BOOL *)wrap
{
  providers = [(SCATAggregateElementProvider *)self providers];
  v7 = [providers count];

  if (wrap)
  {
    *wrap = index == 0;
  }

  if (index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v7;
  }

  v9 = indexCopy - 1;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)_indexOfProviderContainingElement:(id)element
{
  elementCopy = element;
  providers = [(SCATAggregateElementProvider *)self providers];
  v6 = [providers count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      providers2 = [(SCATAggregateElementProvider *)self providers];
      v9 = [providers2 objectAtIndex:v7];

      LOBYTE(providers2) = [v9 containsElement:elementCopy];
      if (providers2)
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

- (id)firstElementWithOptions:(int *)options
{
  providers = [(SCATAggregateElementProvider *)self providers];
  v6 = [providers count];

  if (v6)
  {
    providers2 = [(SCATAggregateElementProvider *)self providers];
    v8 = [providers2 objectAtIndex:0];

    v9 = [v8 firstElementWithOptions:options];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastElementWithOptions:(int *)options
{
  providers = [(SCATAggregateElementProvider *)self providers];
  v6 = [providers count];

  if (v6)
  {
    providers2 = [(SCATAggregateElementProvider *)self providers];
    lastObject = [providers2 lastObject];

    v9 = [lastObject lastElementWithOptions:options];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  v21 = 0;
  v9 = [(SCATAggregateElementProvider *)self _indexOfProviderContainingElement:beforeCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    providers = [(SCATAggregateElementProvider *)self providers];
    v10 = [providers objectAtIndex:v9];
  }

  v12 = [v10 elementBefore:beforeCopy didWrap:&v21 options:options];
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
      providers2 = [(SCATAggregateElementProvider *)self providers];
      v14 = [providers2 objectAtIndex:v16];
    }

    v15 = v20;
    v18 = [v14 lastElementWithOptions:options];

    v12 = v18;
    if (!wrap)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (wrap)
  {
LABEL_11:
    *wrap = v15 & 1;
  }

LABEL_12:

  return v12;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  v21 = 0;
  v9 = [(SCATAggregateElementProvider *)self _indexOfProviderContainingElement:afterCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    providers = [(SCATAggregateElementProvider *)self providers];
    v10 = [providers objectAtIndex:v9];
  }

  v12 = [v10 elementAfter:afterCopy didWrap:&v21 options:options];
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
      providers2 = [(SCATAggregateElementProvider *)self providers];
      v14 = [providers2 objectAtIndex:v16];
    }

    v15 = v20;
    v18 = [v14 firstElementWithOptions:options];

    v12 = v18;
    if (!wrap)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (wrap)
  {
LABEL_11:
    *wrap = v15 & 1;
  }

LABEL_12:

  return v12;
}

- (BOOL)containsElement:(id)element
{
  elementCopy = element;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  providers = [(SCATAggregateElementProvider *)self providers];
  v6 = [providers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(providers);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsElement:elementCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [providers countByEnumeratingWithState:&v10 objects:v14 count:16];
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