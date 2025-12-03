@interface BSUIFeedCardDataSource
- (BOOL)alwaysPresentNewCardSetForFeedOptions:(id)options;
- (BSUIFeedCardDataSource)initWithFeedArray:(id)array syncLayoutController:(id)controller options:(id)options;
- (NSString)identifier;
- (id)contentViewControllerForCardAtIndex:(int64_t)index cardContentScrollManager:(id)manager;
- (id)representedObjectForCardAtIndex:(int64_t)index;
- (int64_t)_cardIndexForTarget:(id)target withKeyPath:(id)path;
- (int64_t)cardIndexForFeedOptions:(id)options;
- (int64_t)numberOfCards:(id)cards;
- (void)appendNewDataToExistingDataSource:(id)source cardStackViewController:(id)controller;
@end

@implementation BSUIFeedCardDataSource

- (BSUIFeedCardDataSource)initWithFeedArray:(id)array syncLayoutController:(id)controller options:(id)options
{
  arrayCopy = array;
  controllerCopy = controller;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = BSUIFeedCardDataSource;
  v11 = [(BSUIFeedCardDataSource *)&v17 init];
  if (v11)
  {
    v12 = [arrayCopy copy];
    cardArray = v11->_cardArray;
    v11->_cardArray = v12;

    objc_storeStrong(&v11->_syncLayoutController, controller);
    v14 = [optionsCopy copy];
    options = v11->_options;
    v11->_options = v14;
  }

  return v11;
}

- (void)appendNewDataToExistingDataSource:(id)source cardStackViewController:(id)controller
{
  self->_cardArray = [(NSArray *)self->_cardArray arrayByAddingObjectsFromArray:source, controller];

  _objc_release_x1();
}

- (int64_t)numberOfCards:(id)cards
{
  cardArray = [(BSUIFeedCardDataSource *)self cardArray];
  v4 = [cardArray count];

  return v4;
}

- (NSString)identifier
{
  objc_opt_class();
  options = [(BSUIFeedCardDataSource *)self options];
  v4 = [options objectForKeyedSubscript:BCCardStackIdentifierKey];
  v5 = BUDynamicCast();

  return v5;
}

- (int64_t)cardIndexForFeedOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (optionsCopy)
  {
    v7 = [optionsCopy objectForKeyedSubscript:@"url"];
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

- (BOOL)alwaysPresentNewCardSetForFeedOptions:(id)options
{
  optionsCopy = options;
  objc_opt_class();
  v4 = [optionsCopy objectForKeyedSubscript:@"alwaysPresentNewCardSet"];

  v5 = BUDynamicCast();
  LOBYTE(optionsCopy) = [v5 BOOLValue];

  return optionsCopy;
}

- (id)representedObjectForCardAtIndex:(int64_t)index
{
  cardArray = [(BSUIFeedCardDataSource *)self cardArray];
  v5 = [cardArray objectAtIndexedSubscript:index];

  return v5;
}

- (id)contentViewControllerForCardAtIndex:(int64_t)index cardContentScrollManager:(id)manager
{
  managerCopy = manager;
  cardArray = [(BSUIFeedCardDataSource *)self cardArray];
  v8 = [cardArray objectAtIndexedSubscript:index];

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
  [v14 setCardContentScrollManager:managerCopy];

  [v14 setOptions:1];
  v15 = [v14 suspendUpdatesUntilContentExceedsHeightWithCompletion:0];
  [v14 setAssertionForSuspendingLayoutUpdates:v15];

  return v14;
}

- (int64_t)_cardIndexForTarget:(id)target withKeyPath:(id)path
{
  cardArray = self->_cardArray;
  targetCopy = target;
  v7 = [(NSArray *)cardArray valueForKeyPath:path];
  v8 = [v7 indexOfObject:targetCopy];

  return v8;
}

@end