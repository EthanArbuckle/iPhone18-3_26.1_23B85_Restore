@interface RAPNotificationDetailsViewModel
- (BOOL)editMode;
- (NSArray)mapItems;
- (NSString)reportId;
- (_TtC4Maps31RAPNotificationDetailsViewModel)init;
- (_TtC4Maps31RAPNotificationDetailsViewModel)initWithDescriptionInfo:(id)info displayStyle:(int64_t)style mapType:(int)type mapRegion:(id)region mapItems:(id)items reportId:(id)id updatedLabel:(id)label hasButton:(BOOL)self0 button:(id)self1 rapRecord:(id)self2;
- (void)setRapRecord:(id)record;
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

- (void)setRapRecord:(id)record
{
  v4 = *(self + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord);
  *(self + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord) = record;
  recordCopy = record;
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

- (_TtC4Maps31RAPNotificationDetailsViewModel)initWithDescriptionInfo:(id)info displayStyle:(int64_t)style mapType:(int)type mapRegion:(id)region mapItems:(id)items reportId:(id)id updatedLabel:(id)label hasButton:(BOOL)self0 button:(id)self1 rapRecord:(id)self2
{
  sub_100014C84(0, &unk_101918390);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  infoCopy = info;
  regionCopy = region;
  labelCopy = label;
  v22 = a11;
  recordCopy = record;
  return sub_10023323C(infoCopy, style, type, regionCopy, v15, v16, v18, label, button, a11, record);
}

- (_TtC4Maps31RAPNotificationDetailsViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end