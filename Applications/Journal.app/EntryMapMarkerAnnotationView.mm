@interface EntryMapMarkerAnnotationView
- (MKAnnotation)annotation;
- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithCoder:(id)coder;
- (void)setAnnotation:(id)annotation;
@end

@implementation EntryMapMarkerAnnotationView

- (MKAnnotation)annotation
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  annotation = [(EntryMapMarkerAnnotationView *)&v4 annotation];

  return annotation;
}

- (void)setAnnotation:(id)annotation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100726AAC(annotation);

  swift_unknownObjectRelease();
}

- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount) = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_allowsClustering) = 1;
    swift_unknownObjectRetain();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount) = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_allowsClustering) = 1;
    swift_unknownObjectRetain();
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  v7 = [(EntryMapMarkerAnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_allowsClustering) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  coderCopy = coder;
  v5 = [(EntryMapMarkerAnnotationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end