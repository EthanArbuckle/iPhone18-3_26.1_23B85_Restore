@interface FMDiscoveredAccessoryAnnotationView
- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithCoder:(id)coder;
@end

@implementation FMDiscoveredAccessoryAnnotationView

- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
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
  v9.super_class = type metadata accessor for FMDiscoveredAccessoryAnnotationView();
  v7 = [(FMMapAnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:v6];

  swift_unknownObjectRelease();
  return v7;
}

- (_TtC6FindMyP33_06C68F60534B37E780B39268674B6CC035FMDiscoveredAccessoryAnnotationView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMDiscoveredAccessoryAnnotationView();
  coderCopy = coder;
  v5 = [(FMMapAnnotationView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end