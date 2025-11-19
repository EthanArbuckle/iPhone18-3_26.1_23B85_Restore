@interface WidgetIdentifiable
- (NSString)description;
- (_TtC9WidgetKit18WidgetIdentifiable)init;
@end

@implementation WidgetIdentifiable

- (NSString)description
{
  v2 = *(self + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_extensionIdentity);
  v3 = self;
  v4 = [v2 description];
  v5 = sub_192227960();
  v7 = v6;

  MEMORY[0x193B0A990](v5, v7);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  MEMORY[0x193B0A990](*(v3 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind), *(v3 + OBJC_IVAR____TtC9WidgetKit18WidgetIdentifiable_kind + 8));
  MEMORY[0x193B0A990](93, 0xE100000000000000);

  v8 = sub_192227930();

  return v8;
}

- (_TtC9WidgetKit18WidgetIdentifiable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end