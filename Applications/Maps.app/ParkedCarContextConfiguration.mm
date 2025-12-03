@interface ParkedCarContextConfiguration
- (_TtC4Maps29ParkedCarContextConfiguration)init;
- (_TtC4Maps29ParkedCarContextConfiguration)initWithParkedCar:(id)car initialAction:(int64_t)action selectOnMap:(BOOL)map;
@end

@implementation ParkedCarContextConfiguration

- (_TtC4Maps29ParkedCarContextConfiguration)initWithParkedCar:(id)car initialAction:(int64_t)action selectOnMap:(BOOL)map
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_parkedCar) = car;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_initialAction) = action;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_selectOnMap) = map;
  v12.receiver = self;
  v12.super_class = ObjectType;
  carCopy = car;
  return [(ParkedCarContextConfiguration *)&v12 init];
}

- (_TtC4Maps29ParkedCarContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end