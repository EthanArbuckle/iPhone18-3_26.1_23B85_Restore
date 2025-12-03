@interface MapsFindMyLocationHandle
- (_TtC4Maps24MapsFindMyLocationHandle)init;
- (_TtC4Maps24MapsFindMyLocationHandle)initWithHandle:(id)handle location:(id)location;
- (id)title;
- (void)setLocation:(id)location;
@end

@implementation MapsFindMyLocationHandle

- (void)setLocation:(id)location
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location) = location;
  locationCopy = location;
}

- (_TtC4Maps24MapsFindMyLocationHandle)initWithHandle:(id)handle location:(id)location
{
  v6 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle) = handle;
  *(&self->super.isa + v6) = location;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MapsFindMyLocationHandle();
  handleCopy = handle;
  locationCopy = location;
  return [(MapsFindMyLocationHandle *)&v10 init];
}

- (id)title
{
  selfCopy = self;
  Handle.prettyName.getter();
  if (!v3)
  {
    Handle.identifier.getter();
  }

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC4Maps24MapsFindMyLocationHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end