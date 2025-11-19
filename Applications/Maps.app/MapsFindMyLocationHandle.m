@interface MapsFindMyLocationHandle
- (_TtC4Maps24MapsFindMyLocationHandle)init;
- (_TtC4Maps24MapsFindMyLocationHandle)initWithHandle:(id)a3 location:(id)a4;
- (id)title;
- (void)setLocation:(id)a3;
@end

@implementation MapsFindMyLocationHandle

- (void)setLocation:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location) = a3;
  v3 = a3;
}

- (_TtC4Maps24MapsFindMyLocationHandle)initWithHandle:(id)a3 location:(id)a4
{
  v6 = OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_location) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24MapsFindMyLocationHandle_handle) = a3;
  *(&self->super.isa + v6) = a4;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MapsFindMyLocationHandle();
  v7 = a3;
  v8 = a4;
  return [(MapsFindMyLocationHandle *)&v10 init];
}

- (id)title
{
  v2 = self;
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