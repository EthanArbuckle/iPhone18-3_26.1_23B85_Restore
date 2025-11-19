@interface BSUIFeedCardDataSource
- (BOOL)alwaysPresentNewCardSetForFeedOptions:(id)a3;
- (BSUIFeedCardDataSource)initWithFeedArray:(id)a3 syncLayoutController:(id)a4 options:(id)a5;
- (NSString)identifier;
- (id)contentViewControllerForCardAtIndex:(int64_t)a3 cardContentScrollManager:(id)a4;
- (id)representedObjectForCardAtIndex:(int64_t)a3;
- (int64_t)_cardIndexForTarget:(id)a3 withKeyPath:(id)a4;
- (int64_t)cardIndexForFeedOptions:(id)a3;
- (int64_t)numberOfCards:(id)a3;
- (void)appendNewDataToExistingDataSource:(id)a3 cardStackViewController:(id)a4;
@end

@implementation BSUIFeedCardDataSource

- (BSUIFeedCardDataSource)initWithFeedArray:(id)a3 syncLayoutController:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = BSUIFeedCardDataSource;
  v11 = [(BSUIFeedCardDataSource *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    cardArray = v11->_cardArray;
    v11->_cardArray = v12;

    objc_storeStrong(&v11->_syncLayoutController, a4);
    v14 = [v10 copy];
    options = v11->_options;
    v11->_options = v14;
  }

  return v11;
}

- (void)appendNewDataToExistingDataSource:(id)a3 cardStackViewController:(id)a4
{
  self->_cardArray = [(NSArray *)self->_cardArray arrayByAddingObjectsFromArray:a3, a4];

  _objc_release_x1();
}

- (int64_t)numberOfCards:(id)a3
{
  v3 = [(BSUIFeedCardDataSource *)self cardArray];
  v4 = [v3 count];

  return v4;
}

- (NSString)identifier
{
  objc_opt_class();
  v3 = [(BSUIFeedCardDataSource *)self options];
  v4 = [v3 objectForKeyedSubscript:BCCardStackIdentifierKey];
  v5 = BUDynamicCast();

  return v5;
}

- (int64_t)cardIndexForFeedOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"url"];
    v8 = [(BSUIFeedCardDataSource *)self _cardIndexForTarget:v7 withKeyPath:@"url"];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v5 objectForKeyedSubscript:@"storeId"];
      v6 = [(BSUIFeedCardDataSource *)self _cardIndexForTarget:v9 withKeyPath:@"storeId"];

      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [v5 objectForKeyedSubscript:@"storeId"];
        v6 = [(BSUIFeedCardDataSource *)self _cardIndexForTarget:v10 withKeyPath:@"resource.@unionOfObjects.id"];

        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_opt_class();
          v11 = [v5 objectForKeyedSubscript:@"resource"];
          v12 = BUDynamicCast();

          v13 = [v12 objectForKeyedSubscript:@"id"];
          v6 = [(BSUIFeedCardDataSource *)self _cardIndexForTarget:v13 withKeyPath:@"resource.@unionOfObjects.id"];
        }
      }
    }

    else
    {
      v6 = v8;
    }
  }

  return v6;
}

- (BOOL)alwaysPresentNewCardSetForFeedOptions:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"alwaysPresentNewCardSet"];

  v5 = BUDynamicCast();
  LOBYTE(v3) = [v5 BOOLValue];

  return v3;
}

- (id)representedObjectForCardAtIndex:(int64_t)a3
{
  v4 = [(BSUIFeedCardDataSource *)self cardArray];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)contentViewControllerForCardAtIndex:(int64_t)a3 cardContentScrollManager:(id)a4
{
  v6 = a4;
  v7 = [(BSUIFeedCardDataSource *)self cardArray];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [v8 objectForKeyedSubscript:@"isInCard"];

  if (!v9)
  {
    v10 = [v8 mutableCopy];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isInCard"];
    v11 = [v10 copy];

    v8 = v11;
  }

  v12 = _UISolariumEnabled();
  v13 = &off_380DA8;
  if (!v12)
  {
    v13 = off_380D98;
  }

  v14 = [objc_alloc(*v13) initWithOptions:v8];
  [v14 configureWithSyncLayoutController:self->_syncLayoutController];
  [v14 setCardContentScrollManager:v6];

  [v14 setOptions:1];
  v15 = [v14 suspendUpdatesUntilContentExceedsHeightWithCompletion:0];
  [v14 setAssertionForSuspendingLayoutUpdates:v15];

  return v14;
}

- (int64_t)_cardIndexForTarget:(id)a3 withKeyPath:(id)a4
{
  cardArray = self->_cardArray;
  v6 = a3;
  v7 = [(NSArray *)cardArray valueForKeyPath:a4];
  v8 = [v7 indexOfObject:v6];

  return v8;
}

@end