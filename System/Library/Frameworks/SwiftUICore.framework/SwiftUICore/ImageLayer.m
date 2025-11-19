@interface ImageLayer
- (_TtC7SwiftUI10ImageLayer)init;
- (_TtC7SwiftUI10ImageLayer)initWithCoder:(id)a3;
- (_TtC7SwiftUI10ImageLayer)initWithLayer:(id)a3;
@end

@implementation ImageLayer

- (_TtC7SwiftUI10ImageLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ImageLayer *)&v3 init];
}

- (_TtC7SwiftUI10ImageLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(ImageLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC7SwiftUI10ImageLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ImageLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end