@interface EntryListViewModel
- (void)persistentStoresDidChange:(id)a3;
@end

@implementation EntryListViewModel

- (void)persistentStoresDidChange:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100118F90();

  (*(v4 + 8))(v6, v3);
}

@end