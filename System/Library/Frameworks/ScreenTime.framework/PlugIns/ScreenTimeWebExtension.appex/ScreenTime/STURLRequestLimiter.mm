@interface STURLRequestLimiter
- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)init;
- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)initWithRate:(int64_t)rate rateInterval:(double)interval;
- (void)incrementRequestCountForBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation STURLRequestLimiter

- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)initWithRate:(int64_t)rate rateInterval:(double)interval
{
  ObjectType = swift_getObjectType();
  v7 = sub_100003510();
  v8 = objc_allocWithZone(ObjectType);
  type metadata accessor for URLRequestLimiter();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 144) = &_swiftEmptyDictionarySingleton;
  *(v9 + 152) = &_swiftEmptyDictionarySingleton;
  *(v9 + 112) = rate;
  *(v9 + 120) = interval;
  *(v9 + 128) = v7;
  *(v9 + 136) = &off_10000C720;
  *&v8[OBJC_IVAR____TtC22ScreenTimeWebExtension19STURLRequestLimiter_limiter] = v9;
  v12.receiver = v8;
  v12.super_class = ObjectType;
  v10 = [(STURLRequestLimiter *)&v12 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)incrementRequestCountForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = sub_1000037A0(&qword_100010CC0, &qword_100007560);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(handler);
  v11 = sub_1000061F4();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = sub_100006244();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v11;
  v16[6] = v13;
  v16[7] = sub_10000467C;
  v16[8] = v14;
  selfCopy = self;
  sub_100003E84(0, 0, v9, &unk_100007678, v16);
}

- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end