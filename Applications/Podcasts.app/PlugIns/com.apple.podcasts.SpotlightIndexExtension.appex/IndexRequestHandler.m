@interface IndexRequestHandler
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation IndexRequestHandler

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (+[MTDB canExtensionOpenDatabase])
  {
    v6 = +[MTCoreSpotlightController sharedInstance];
    [v6 searchableIndex:v7 reindexAllSearchableItemsWithAcknowledgementHandler:v5];
  }

  else
  {
    v5[2](v5);
  }
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  if (+[MTDB canExtensionOpenDatabase])
  {
    v9 = +[MTCoreSpotlightController sharedInstance];
    [v9 searchableIndex:v10 reindexSearchableItemsWithIdentifiers:v7 acknowledgementHandler:v8];
  }

  else
  {
    v8[2](v8);
  }
}

@end