@interface InfoCardButtonConfiguration
- (BOOL)isEqual:(id)a3;
- (_TtC4Maps27InfoCardButtonConfiguration)init;
- (_TtC4Maps27InfoCardButtonConfiguration)initWithType:(unint64_t)a3 shouldBlur:(BOOL)a4 tintColor:(id)a5 visibility:(int64_t)a6;
@end

@implementation InfoCardButtonConfiguration

- (_TtC4Maps27InfoCardButtonConfiguration)initWithType:(unint64_t)a3 shouldBlur:(BOOL)a4 tintColor:(id)a5 visibility:(int64_t)a6
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_type) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_shouldBlur) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_tintColor) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_visibility) = a6;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = a5;
  return [(InfoCardButtonConfiguration *)&v14 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = InfoCardButtonConfiguration.isEqual(_:)(v8);

  sub_1000DB2F4(v8);
  return v6 & 1;
}

- (_TtC4Maps27InfoCardButtonConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end