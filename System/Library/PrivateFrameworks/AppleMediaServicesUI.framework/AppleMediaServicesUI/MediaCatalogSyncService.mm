@interface MediaCatalogSyncService
- (void)fetchPageURLsForTopic:(id)topic clientIdentifier:(id)identifier completion:(id)completion;
- (void)handleDaemonStartup;
@end

@implementation MediaCatalogSyncService

- (void)handleDaemonStartup
{

  sub_100092D48();
}

- (void)fetchPageURLsForTopic:(id)topic clientIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;

  sub_100094A54(v6, v8, v9, v11, sub_100095540, v12);
}

@end