@interface VOTNameSearcherElementSource
- (VOTNameSearcherElementSource)initWithElement:(id)element;
- (VOTNameSearcherItemSourceDelegate)delegate;
- (id)messageForMatchingItemsCount:(int64_t)count;
- (id)messageForSelectingItem:(id)item;
- (void)elementsRetrieved:(id)retrieved finished:(BOOL)finished;
- (void)retrieveAllEntries:(id)entries;
@end

@implementation VOTNameSearcherElementSource

- (VOTNameSearcherElementSource)initWithElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = VOTNameSearcherElementSource;
  v5 = [(VOTNameSearcherElementSource *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(VOTNameSearcherElementSource *)v5 setBaseElement:elementCopy];
    v7 = objc_opt_new();
    [(VOTNameSearcherElementSource *)v6 setElementFetcher:v7];

    elementFetcher = [(VOTNameSearcherElementSource *)v6 elementFetcher];
    [elementFetcher setDelegate:v6];

    v9 = v6;
  }

  return v6;
}

- (void)retrieveAllEntries:(id)entries
{
  [(VOTNameSearcherElementSource *)self setDelegate:entries];
  elementFetcher = [(VOTNameSearcherElementSource *)self elementFetcher];
  currentElement = [VOTSharedWorkspace currentElement];
  [elementFetcher retrieveElementsWithElement:currentElement groupNavigationStyle:{objc_msgSend(VOTSharedWorkspace, "navigationStyleHonorsGroups")}];
}

- (id)messageForMatchingItemsCount:(int64_t)count
{
  v4 = sub_1000511CC(off_1001FDDD0, @"handwrite.num.matching.items.count", 0);
  v5 = [NSString localizedStringWithFormat:v4, count];

  return v5;
}

- (id)messageForSelectingItem:(id)item
{
  v3 = off_1001FDDD0;
  itemCopy = item;
  v5 = sub_1000511CC(v3, @"handwrite.choose.item", 0);
  itemCopy = [NSString stringWithFormat:v5, itemCopy];

  return itemCopy;
}

- (void)elementsRetrieved:(id)retrieved finished:(BOOL)finished
{
  finishedCopy = finished;
  retrievedCopy = retrieved;
  v7 = retrievedCopy;
  if (finishedCopy && [retrievedCopy count] <= 0x3E8)
  {
    v8 = sub_1000535B8(v7);
    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v16 = [VOTNameSearcherElementEntry alloc];
          v17 = [(VOTNameSearcherElementEntry *)v16 initWithElement:v15, v19];
          [v9 addObject:v17];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    delegate = [(VOTNameSearcherElementSource *)self delegate];
    [delegate didRetrieveAllEntries:v9];
  }
}

- (VOTNameSearcherItemSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end