@interface GuidesHomeContextConfiguration
- (_TtC4Maps30GuidesHomeContextConfiguration)init;
- (_TtC4Maps30GuidesHomeContextConfiguration)initWithLocation:(id)a3 skipToCitySelector:(BOOL)a4;
@end

@implementation GuidesHomeContextConfiguration

- (_TtC4Maps30GuidesHomeContextConfiguration)initWithLocation:(id)a3 skipToCitySelector:(BOOL)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30GuidesHomeContextConfiguration_location) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30GuidesHomeContextConfiguration_skipToCitySelector) = a4;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = a3;
  return [(GuidesHomeContextConfiguration *)&v10 init];
}

- (_TtC4Maps30GuidesHomeContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end