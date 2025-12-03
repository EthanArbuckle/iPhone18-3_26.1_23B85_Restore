@interface TVIEURLRequestFactoryProxy
+ (void)createRoute:(NSString *)route completion:(id)completion;
- (_TtC18TVIntentsExtension26TVIEURLRequestFactoryProxy)init;
@end

@implementation TVIEURLRequestFactoryProxy

+ (void)createRoute:(NSString *)route completion:(id)completion
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = route;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000056F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006460;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100006470;
  v14[5] = v13;
  routeCopy = route;
  sub_100003108(0, 0, v9, &unk_100006480, v14);
}

- (_TtC18TVIntentsExtension26TVIEURLRequestFactoryProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVIEURLRequestFactoryProxy();
  return [(TVIEURLRequestFactoryProxy *)&v3 init];
}

@end