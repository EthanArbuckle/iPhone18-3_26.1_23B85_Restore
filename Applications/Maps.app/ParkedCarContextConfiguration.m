@interface ParkedCarContextConfiguration
- (_TtC4Maps29ParkedCarContextConfiguration)init;
- (_TtC4Maps29ParkedCarContextConfiguration)initWithParkedCar:(id)a3 initialAction:(int64_t)a4 selectOnMap:(BOOL)a5;
@end

@implementation ParkedCarContextConfiguration

- (_TtC4Maps29ParkedCarContextConfiguration)initWithParkedCar:(id)a3 initialAction:(int64_t)a4 selectOnMap:(BOOL)a5
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_parkedCar) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_initialAction) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_selectOnMap) = a5;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = a3;
  return [(ParkedCarContextConfiguration *)&v12 init];
}

- (_TtC4Maps29ParkedCarContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end