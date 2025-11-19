@interface GradientLayer
- (_TtC7SwiftUI13GradientLayer)init;
- (_TtC7SwiftUI13GradientLayer)initWithCoder:(id)a3;
- (_TtC7SwiftUI13GradientLayer)initWithLayer:(id)a3;
@end

@implementation GradientLayer

- (_TtC7SwiftUI13GradientLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(GradientLayer *)&v3 init];
}

- (_TtC7SwiftUI13GradientLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(GradientLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC7SwiftUI13GradientLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(GradientLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end