@interface FMTrackAnnotationView
- (_TtC6FindMy21FMTrackAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC6FindMy21FMTrackAnnotationView)initWithCoder:(id)a3;
- (void)prepareForDisplay;
@end

@implementation FMTrackAnnotationView

- (void)prepareForDisplay
{
  v2 = self;
  sub_100433DA0();
}

- (_TtC6FindMy21FMTrackAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(FMTrackAnnotationView *)&v9 initWithAnnotation:a3 reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC6FindMy21FMTrackAnnotationView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMTrackAnnotationView();
  v4 = a3;
  v5 = [(FMTrackAnnotationView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end