@interface AskForExceptionService
- (void)handleAgeExceptionResponse:(id)a3;
@end

@implementation AskForExceptionService

- (void)handleAgeExceptionResponse:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10059E418();

  (*(v4 + 8))(v6, v3);
}

@end