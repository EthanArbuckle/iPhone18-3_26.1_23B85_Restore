@interface FMPersonAnnotationView
- (_TtC26FindMyNotificationsContent22FMPersonAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC26FindMyNotificationsContent22FMPersonAnnotationView)initWithCoder:(id)coder;
@end

@implementation FMPersonAnnotationView

- (_TtC26FindMyNotificationsContent22FMPersonAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRetain();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for FMPersonAnnotationView();
  v7 = [(FMMapAnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC26FindMyNotificationsContent22FMPersonAnnotationView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMPersonAnnotationView();
  coderCopy = coder;
  v5 = [(FMMapAnnotationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end