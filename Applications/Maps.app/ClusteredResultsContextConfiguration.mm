@interface ClusteredResultsContextConfiguration
- (_TtC4Maps36ClusteredResultsContextConfiguration)init;
- (_TtC4Maps36ClusteredResultsContextConfiguration)initWithLabelMarker:(id)a3 sortAlphabetically:(BOOL)a4 displayDistance:(BOOL)a5 originalSearchInfo:(id)a6 currentLocation:(id)a7;
@end

@implementation ClusteredResultsContextConfiguration

- (_TtC4Maps36ClusteredResultsContextConfiguration)initWithLabelMarker:(id)a3 sortAlphabetically:(BOOL)a4 displayDistance:(BOOL)a5 originalSearchInfo:(id)a6 currentLocation:(id)a7
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_labelMarker) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation) = a7;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  return [(ClusteredResultsContextConfiguration *)&v18 init];
}

- (_TtC4Maps36ClusteredResultsContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end