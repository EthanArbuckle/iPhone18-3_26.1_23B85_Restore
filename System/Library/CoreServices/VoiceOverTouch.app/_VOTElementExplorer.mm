@interface _VOTElementExplorer
- (_VOTElementExplorer)initWithElementManager:(id)manager MatchBlock:(id)block;
- (void)_proceed;
- (void)_wrapup;
- (void)elementFetchFound:(id)found;
- (void)fetchElementsFrom:(id)from inDirection:(int64_t)direction count:(unint64_t)count scroll:(BOOL)scroll block:(id)block;
@end

@implementation _VOTElementExplorer

- (_VOTElementExplorer)initWithElementManager:(id)manager MatchBlock:(id)block
{
  managerCopy = manager;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = _VOTElementExplorer;
  v9 = [(_VOTElementExplorer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_manager, manager);
    v11 = objc_retainBlock(blockCopy);
    matchBlock = v10->_matchBlock;
    v10->_matchBlock = v11;

    v13 = v10;
  }

  return v10;
}

- (void)fetchElementsFrom:(id)from inDirection:(int64_t)direction count:(unint64_t)count scroll:(BOOL)scroll block:(id)block
{
  fromCopy = from;
  blockCopy = block;
  if (fromCopy && (direction - 3) >= 0xFFFFFFFFFFFFFFFELL && blockCopy)
  {
    if (!self->_fetcher)
    {
      v14 = objc_opt_new();
      fetcher = self->_fetcher;
      self->_fetcher = v14;

      [(VOTElementFetcher *)self->_fetcher setDelegate:self];
    }

    v16 = objc_retainBlock(blockCopy);
    foundBlock = self->_foundBlock;
    self->_foundBlock = v16;

    self->_direction = direction;
    self->_count = count;
    self->_remainingCount = count;
    objc_storeStrong(&self->_baseElement, from);
    objc_storeStrong(&self->_currentElement, from);
    v18 = objc_opt_new();
    foundElements = self->_foundElements;
    self->_foundElements = v18;

    self->_peeking = !scroll;
    [(_VOTElementExplorer *)self _proceed];
  }
}

- (void)_proceed
{
  if (self->_remainingCount)
  {
    direction = self->_direction;
    currentElement = self->_currentElement;
    fetcher = self->_fetcher;
    matchBlock = self->_matchBlock;
    selectedTextRange = [(VOTElement *)currentElement selectedTextRange];
    v9 = v8;
    navigationStyleHonorsGroups = [VOTSharedWorkspace navigationStyleHonorsGroups];
    BYTE1(v11) = self->_peeking;
    LOBYTE(v11) = navigationStyleHonorsGroups;
    [(VOTElementFetcher *)fetcher searchForElementInDirection:direction fromElement:currentElement matchBlock:matchBlock rangeMatch:0 searchType:0 generation:0 startingRange:selectedTextRange groupNavigationStyle:v9 peeking:v11];
  }

  else
  {

    [(_VOTElementExplorer *)self _wrapup];
  }
}

- (void)_wrapup
{
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_foundElements;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        label = [v9 label];
        if (label)
        {
          [v3 addObject:label];
        }

        else
        {
          v11 = [v9 description];
          [v3 addObject:v11];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v6);
  }

  v12 = VOTLogElement();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithUnsignedInteger:self->_count];
    v14 = [NSNumber numberWithInt:self->_direction == 1];
    label2 = [(VOTElement *)self->_baseElement label];
    *buf = 138413058;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = label2;
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_VOTElementExplorer found elements: count(%@) forward(%@) base(%@) result = %@", buf, 0x2Au);
  }

  [(VOTElementFetcher *)self->_fetcher didFinishBatchPeeking];
  v16 = self->_foundElements;
  foundBlock = self->_foundBlock;
  if (foundBlock)
  {
    foundBlock[2](foundBlock, v16);
  }

  [(VOTElementFetcher *)self->_fetcher invalidate];
  [(VOTElementManager *)self->_manager removeElementExplorer:self];
}

- (void)elementFetchFound:(id)found
{
  obj = [found element];
  if (obj && ![(NSMutableArray *)self->_foundElements containsObject:obj])
  {
    if (self->_remainingCount)
    {
      foundElements = self->_foundElements;
      if (self->_direction == 2)
      {
        [(NSMutableArray *)foundElements insertObject:obj atIndex:0];
      }

      else
      {
        [(NSMutableArray *)foundElements addObject:obj];
      }

      --self->_remainingCount;
      objc_storeStrong(&self->_currentElement, obj);
    }

    [(_VOTElementExplorer *)self _proceed];
  }

  else
  {
    [(_VOTElementExplorer *)self _wrapup];
  }
}

@end