@interface ContextualSuggestionServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC21AppPredictionInternal26ContextualSuggestionServer)init;
- (void)requestSnapshotsForEndpoints:(id)a3 completion:(id)a4;
@end

@implementation ContextualSuggestionServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2267D28B8(v7);

  return v9 & 1;
}

- (void)requestSnapshotsForEndpoints:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_2267D2C70(sub_2267D2EB4);
}

- (_TtC21AppPredictionInternal26ContextualSuggestionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end