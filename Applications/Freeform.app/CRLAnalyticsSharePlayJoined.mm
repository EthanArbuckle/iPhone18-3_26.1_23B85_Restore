@interface CRLAnalyticsSharePlayJoined
+ (void)sendSharePlayJoinedAnalyticsWithTotalTimeDelta:(float)delta shareLinkDelta:(float)linkDelta joinShareDelta:(float)shareDelta fetchBoardDelta:(float)boardDelta joinCollabDelta:(float)collabDelta;
- (_TtC8Freeform27CRLAnalyticsSharePlayJoined)init;
@end

@implementation CRLAnalyticsSharePlayJoined

- (_TtC8Freeform27CRLAnalyticsSharePlayJoined)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLAnalyticsSharePlayJoined();
  return [(CRLAnalyticsSharePlayJoined *)&v3 init];
}

+ (void)sendSharePlayJoinedAnalyticsWithTotalTimeDelta:(float)delta shareLinkDelta:(float)linkDelta joinShareDelta:(float)shareDelta fetchBoardDelta:(float)boardDelta joinCollabDelta:(float)collabDelta
{
  sub_100043E40(_swiftEmptyArrayStorage);
  v10 = objc_allocWithZone(NSNumber);
  *&v11 = delta;
  v12 = [v10 initWithFloat:v11];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v12, 0x6D69546C61746F74, 0xEE0061746C654465, isUniquelyReferenced_nonNull_native);
  v14 = objc_allocWithZone(NSNumber);
  *&v15 = linkDelta;
  v16 = [v14 initWithFloat:v15];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v16, 0x6E694C6572616873, 0xEE0061746C65446BLL, v17);
  v18 = objc_allocWithZone(NSNumber);
  *&v19 = shareDelta;
  v20 = [v18 initWithFloat:v19];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v20, 0x726168536E696F6ALL, 0xEE0061746C654465, v21);
  v22 = objc_allocWithZone(NSNumber);
  *&v23 = boardDelta;
  v24 = [v22 initWithFloat:v23];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v24, 0x616F426863746566, 0xEF61746C65446472, v25);
  v26 = objc_allocWithZone(NSNumber);
  *&v27 = collabDelta;
  v28 = [v26 initWithFloat:v27];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v28, 0x6C6C6F436E696F6ALL, 0xEF61746C65446261, v29);
  v30 = objc_opt_self();
  v31 = String._bridgeToObjectiveC()();
  sub_1006364DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v30 sendEventInDomain:v31 lazily:1 eventPayload:isa];
}

@end