@interface ContextualSuggestionServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC21AppPredictionInternal26ContextualSuggestionServer)init;
- (void)requestSnapshotsForEndpoints:(id)endpoints completion:(id)completion;
@end

@implementation ContextualSuggestionServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2267D28B8(connectionCopy);

  return v9 & 1;
}

- (void)requestSnapshotsForEndpoints:(id)endpoints completion:(id)completion
{
  v5 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_2267D2C70(sub_2267D2EB4);
}

- (_TtC21AppPredictionInternal26ContextualSuggestionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end