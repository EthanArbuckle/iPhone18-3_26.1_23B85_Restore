@interface DEMTileCoordinates
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC24NanoCompassComplications18DEMTileCoordinates)init;
- (_TtC24NanoCompassComplications18DEMTileCoordinates)initWithLocation:(id)location;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation DEMTileCoordinates

- (_TtC24NanoCompassComplications18DEMTileCoordinates)init
{
  v2 = type metadata accessor for DEMTileCoordinates();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x] = 0;
  *&v3[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(DEMTileCoordinates *)&v6 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (_TtC24NanoCompassComplications18DEMTileCoordinates)initWithLocation:(id)location
{
  locationCopy = location;
  sub_23BD650C4(locationCopy);
  v5 = v4;

  return v5;
}

- (NSString)description
{
  selfCopy = self;
  DEMTileCoordinates.description.getter();

  v3 = sub_23BD67CD4();

  return v3;
}

- (int64_t)hash
{
  sub_23BD67DB4();
  MEMORY[0x23EEBB760](*(&self->super.isa + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x));
  MEMORY[0x23EEBB760](*(&self->super.isa + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y));
  return sub_23BD67D94();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BD67D24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DEMTileCoordinates.isEqual(_:)(v8);

  sub_23BD643D8(v8);
  return v6;
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y);
  v5 = type metadata accessor for DEMTileCoordinates();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_x] = v3;
  *&v6[OBJC_IVAR____TtC24NanoCompassComplications18DEMTileCoordinates_y] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return [(DEMTileCoordinates *)&v8 init];
}

@end