@interface EntryMapMarkerAnnotationView
- (MKAnnotation)annotation;
- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithCoder:(id)a3;
- (void)setAnnotation:(id)a3;
@end

@implementation EntryMapMarkerAnnotationView

- (MKAnnotation)annotation
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  v2 = [(EntryMapMarkerAnnotationView *)&v4 annotation];

  return v2;
}

- (void)setAnnotation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100726AAC(a3);

  swift_unknownObjectRelease();
}

- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(EntryMapMarkerAnnotationView *)&v9 initWithAnnotation:a3 reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC7Journal28EntryMapMarkerAnnotationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_allowsClustering) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  v4 = a3;
  v5 = [(EntryMapMarkerAnnotationView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end