@interface MaskLayer
- (_TtC7SwiftUI9MaskLayer)init;
- (_TtC7SwiftUI9MaskLayer)initWithCoder:(id)coder;
- (_TtC7SwiftUI9MaskLayer)initWithLayer:(id)layer;
@end

@implementation MaskLayer

- (_TtC7SwiftUI9MaskLayer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI9MaskLayer_clips) = MEMORY[0x1E69E7CC0];
  v4 = (self + OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MaskLayer *)&v6 init];
}

- (_TtC7SwiftUI9MaskLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI9MaskLayer_clips) = MEMORY[0x1E69E7CC0];
  v5 = (self + OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(MaskLayer *)&v9 initWithLayer:v6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

- (_TtC7SwiftUI9MaskLayer)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7SwiftUI9MaskLayer_clips) = MEMORY[0x1E69E7CC0];
  v6 = (self + OBJC_IVAR____TtC7SwiftUI9MaskLayer_clipTransform);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(MaskLayer *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end