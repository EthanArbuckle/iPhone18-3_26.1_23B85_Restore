@interface InfoCardButtonConfiguration
- (BOOL)isEqual:(id)equal;
- (_TtC4Maps27InfoCardButtonConfiguration)init;
- (_TtC4Maps27InfoCardButtonConfiguration)initWithType:(unint64_t)type shouldBlur:(BOOL)blur tintColor:(id)color visibility:(int64_t)visibility;
@end

@implementation InfoCardButtonConfiguration

- (_TtC4Maps27InfoCardButtonConfiguration)initWithType:(unint64_t)type shouldBlur:(BOOL)blur tintColor:(id)color visibility:(int64_t)visibility
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_type) = type;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_shouldBlur) = blur;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_tintColor) = color;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_visibility) = visibility;
  v14.receiver = self;
  v14.super_class = ObjectType;
  colorCopy = color;
  return [(InfoCardButtonConfiguration *)&v14 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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