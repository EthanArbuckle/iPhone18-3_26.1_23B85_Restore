@interface WidgetsURLRequestFactoryProxy
+ (void)createRoute:(NSString *)route completion:(id)completion;
- (_TtC17TVWidgetExtension29WidgetsURLRequestFactoryProxy)init;
@end

@implementation WidgetsURLRequestFactoryProxy

+ (void)createRoute:(NSString *)route completion:(id)completion
{
  v7 = sub_100006334(&qword_100125288);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = route;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000D372C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E6720;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000EDA80;
  v14[5] = v13;
  routeCopy = route;
  sub_1000CEE14(0, 0, v9, &unk_1000E6730, v14);
}

- (_TtC17TVWidgetExtension29WidgetsURLRequestFactoryProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetsURLRequestFactoryProxy();
  return [(WidgetsURLRequestFactoryProxy *)&v3 init];
}

@end