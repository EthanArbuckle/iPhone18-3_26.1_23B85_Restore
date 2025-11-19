@interface TTRSIEIndexRequestHandler
- (_TtC32RemindersSpotlightIndexExtension25TTRSIEIndexRequestHandler)init;
- (id)dataForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 error:(id *)a6;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
@end

@implementation TTRSIEIndexRequestHandler

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100002A70(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100004FFC();
  _Block_copy(v7);
  v9 = a3;
  v10 = self;
  sub_100002D30(v9, v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (id)dataForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 error:(id *)a6
{
  v8 = sub_100004F7C();
  v10 = v9;
  v11 = sub_100004F7C();
  v13 = v12;
  v14 = a3;
  v15 = self;
  v16 = sub_100003D78(v14, v8, v10, v11, v13);
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