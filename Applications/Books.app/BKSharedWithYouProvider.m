@interface BKSharedWithYouProvider
- (_TtC5Books23BKSharedWithYouProvider)init;
- (void)refresh;
- (void)update:(id)a3;
@end

@implementation BKSharedWithYouProvider

- (_TtC5Books23BKSharedWithYouProvider)init
{
  ObjectType = swift_getObjectType();
  sub_100797894();
  v3 = sub_100797874();
  v4 = objc_allocWithZone(ObjectType);
  sub_1003BF8E0(v3);
  v6 = v5;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)refresh
{
  v3 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1007A2744();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  v8 = self;
  sub_1003457A0(0, 0, v5, &unk_1008213E8, v7);
}

- (void)update:(id)a3
{
  v4 = a3;
  v5 = self;
  BKSharedWithYouProvider.update(_:)();
}

@end