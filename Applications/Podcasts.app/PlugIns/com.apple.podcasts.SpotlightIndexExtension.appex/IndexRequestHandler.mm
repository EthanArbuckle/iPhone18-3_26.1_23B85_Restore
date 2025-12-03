@interface IndexRequestHandler
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation IndexRequestHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  indexCopy = index;
  handlerCopy = handler;
  if (+[MTDB canExtensionOpenDatabase])
  {
    v6 = +[MTCoreSpotlightController sharedInstance];
    [v6 searchableIndex:indexCopy reindexAllSearchableItemsWithAcknowledgementHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  indexCopy = index;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (+[MTDB canExtensionOpenDatabase])
  {
    v9 = +[MTCoreSpotlightController sharedInstance];
    [v9 searchableIndex:indexCopy reindexSearchableItemsWithIdentifiers:identifiersCopy acknowledgementHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

@end