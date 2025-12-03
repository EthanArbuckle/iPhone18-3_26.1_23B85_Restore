@interface FMTrackAnnotationView
- (_TtC6FindMy21FMTrackAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC6FindMy21FMTrackAnnotationView)initWithCoder:(id)coder;
- (void)prepareForDisplay;
@end

@implementation FMTrackAnnotationView

- (void)prepareForDisplay
{
  selfCopy = self;
  sub_100433DA0();
}

- (_TtC6FindMy21FMTrackAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for FMTrackAnnotationView();
  v7 = [(FMTrackAnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC6FindMy21FMTrackAnnotationView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMTrackAnnotationView();
  coderCopy = coder;
  v5 = [(FMTrackAnnotationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end