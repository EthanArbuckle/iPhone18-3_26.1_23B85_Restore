@interface ClusteredResultsContextConfiguration
- (_TtC4Maps36ClusteredResultsContextConfiguration)init;
- (_TtC4Maps36ClusteredResultsContextConfiguration)initWithLabelMarker:(id)marker sortAlphabetically:(BOOL)alphabetically displayDistance:(BOOL)distance originalSearchInfo:(id)info currentLocation:(id)location;
@end

@implementation ClusteredResultsContextConfiguration

- (_TtC4Maps36ClusteredResultsContextConfiguration)initWithLabelMarker:(id)marker sortAlphabetically:(BOOL)alphabetically displayDistance:(BOOL)distance originalSearchInfo:(id)info currentLocation:(id)location
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_labelMarker) = marker;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically) = alphabetically;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance) = distance;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo) = info;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation) = location;
  v18.receiver = self;
  v18.super_class = ObjectType;
  markerCopy = marker;
  infoCopy = info;
  locationCopy = location;
  return [(ClusteredResultsContextConfiguration *)&v18 init];
}

- (_TtC4Maps36ClusteredResultsContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end