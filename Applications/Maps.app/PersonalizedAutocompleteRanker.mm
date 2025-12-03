@interface PersonalizedAutocompleteRanker
- (void)rankWithDedupedItems:(NSArray *)items autocompleteRequest:(GEOMIFAutocompleteRequest *)request completionHandler:(id)handler;
@end

@implementation PersonalizedAutocompleteRanker

- (void)rankWithDedupedItems:(NSArray *)items autocompleteRequest:(GEOMIFAutocompleteRequest *)request completionHandler:(id)handler
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = items;
  v13[3] = request;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1011F66A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1011F9360;
  v16[5] = v15;
  itemsCopy = items;
  requestCopy = request;
  selfCopy = self;
  sub_10054DB08(0, 0, v11, &unk_1011F66B0, v16);
}

@end