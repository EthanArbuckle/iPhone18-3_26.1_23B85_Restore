@interface MediaCatalogSyncService
- (void)fetchPageURLsForTopic:(id)a3 clientIdentifier:(id)a4 completion:(id)a5;
- (void)handleDaemonStartup;
@end

@implementation MediaCatalogSyncService

- (void)handleDaemonStartup
{

  sub_100092D48();
}

- (void)fetchPageURLsForTopic:(id)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;

  sub_100094A54(v6, v8, v9, v11, sub_100095540, v12);
}

@end