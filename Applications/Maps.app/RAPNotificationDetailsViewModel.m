@interface RAPNotificationDetailsViewModel
- (BOOL)editMode;
- (NSArray)mapItems;
- (NSString)reportId;
- (_TtC4Maps31RAPNotificationDetailsViewModel)init;
- (_TtC4Maps31RAPNotificationDetailsViewModel)initWithDescriptionInfo:(id)a3 displayStyle:(int64_t)a4 mapType:(int)a5 mapRegion:(id)a6 mapItems:(id)a7 reportId:(id)a8 updatedLabel:(id)a9 hasButton:(BOOL)a10 button:(id)a11 rapRecord:(id)a12;
- (void)setRapRecord:(id)a3;
@end

@implementation RAPNotificationDetailsViewModel

- (NSArray)mapItems
{
  sub_100014C84(0, &unk_101918390);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSString)reportId
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setRapRecord:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord);
  *(self + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord) = a3;
  v3 = a3;
}

- (BOOL)editMode
{
  v2 = *(self + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord);
  if (v2)
  {
    LOBYTE(v2) = [v2 reportStatus] == 2;
  }

  return v2;
}

- (_TtC4Maps31RAPNotificationDetailsViewModel)initWithDescriptionInfo:(id)a3 displayStyle:(int64_t)a4 mapType:(int)a5 mapRegion:(id)a6 mapItems:(id)a7 reportId:(id)a8 updatedLabel:(id)a9 hasButton:(BOOL)a10 button:(id)a11 rapRecord:(id)a12
{
  sub_100014C84(0, &unk_101918390);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = a3;
  v20 = a6;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  return sub_10023323C(v19, a4, a5, v20, v15, v16, v18, a9, a10, a11, a12);
}

- (_TtC4Maps31RAPNotificationDetailsViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end