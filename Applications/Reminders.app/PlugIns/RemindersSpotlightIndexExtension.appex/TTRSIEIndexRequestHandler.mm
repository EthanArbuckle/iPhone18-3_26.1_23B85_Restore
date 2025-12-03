@interface TTRSIEIndexRequestHandler
- (_TtC32RemindersSpotlightIndexExtension25TTRSIEIndexRequestHandler)init;
- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation TTRSIEIndexRequestHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  indexCopy = index;
  selfCopy = self;
  sub_100002A70(indexCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_100004FFC();
  _Block_copy(v7);
  indexCopy = index;
  selfCopy = self;
  sub_100002D30(indexCopy, v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error
{
  v8 = sub_100004F7C();
  v10 = v9;
  v11 = sub_100004F7C();
  v13 = v12;
  indexCopy = index;
  selfCopy = self;
  v16 = sub_100003D78(indexCopy, v8, v10, v11, v13);
  v18 = v17;

  v19.super.isa = sub_100004E5C().super.isa;
  sub_1000049D0(v16, v18);

  return v19.super.isa;
}

- (_TtC32RemindersSpotlightIndexExtension25TTRSIEIndexRequestHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRSIEIndexRequestHandler();
  return [(TTRSIEIndexRequestHandler *)&v3 init];
}

@end