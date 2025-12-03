@interface GuidesHomeContextConfiguration
- (_TtC4Maps30GuidesHomeContextConfiguration)init;
- (_TtC4Maps30GuidesHomeContextConfiguration)initWithLocation:(id)location skipToCitySelector:(BOOL)selector;
@end

@implementation GuidesHomeContextConfiguration

- (_TtC4Maps30GuidesHomeContextConfiguration)initWithLocation:(id)location skipToCitySelector:(BOOL)selector
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30GuidesHomeContextConfiguration_location) = location;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30GuidesHomeContextConfiguration_skipToCitySelector) = selector;
  v10.receiver = self;
  v10.super_class = ObjectType;
  locationCopy = location;
  return [(GuidesHomeContextConfiguration *)&v10 init];
}

- (_TtC4Maps30GuidesHomeContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end