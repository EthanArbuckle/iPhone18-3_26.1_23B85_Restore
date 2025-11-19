@interface FMDiscoveredAccessoryAnnotationView
- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithCoder:(id)a3;
@end

@implementation FMDiscoveredAccessoryAnnotationView

- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
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
  v9.super_class = type metadata accessor for FMDiscoveredAccessoryAnnotationView();
  v7 = [(FMMapAnnotationView *)&v9 initWithAnnotation:a3 reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMDiscoveredAccessoryAnnotationView();
  v4 = a3;
  v5 = [(FMMapAnnotationView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end