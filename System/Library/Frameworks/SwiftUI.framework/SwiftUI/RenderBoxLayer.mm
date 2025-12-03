@interface RenderBoxLayer
- (BOOL)needsSynchronousUpdate;
- (_TtC7SwiftUIP33_0CB954C9DC99A8A907C58D7882F9389E14RenderBoxLayer)init;
- (_TtC7SwiftUIP33_0CB954C9DC99A8A907C58D7882F9389E14RenderBoxLayer)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_0CB954C9DC99A8A907C58D7882F9389E14RenderBoxLayer)initWithLayer:(id)layer;
- (void)setNeedsSynchronousUpdate:(BOOL)update;
@end

@implementation RenderBoxLayer

- (void)setNeedsSynchronousUpdate:(BOOL)update
{
  updateCopy = update;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(RBLayer *)&v4 setNeedsSynchronousUpdate:updateCopy];
}

- (_TtC7SwiftUIP33_0CB954C9DC99A8A907C58D7882F9389E14RenderBoxLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RBLayer *)&v3 init];
}

- (BOOL)needsSynchronousUpdate
{
  selfCopy = self;
  v3 = RenderBoxLayer.needsSynchronousUpdate.getter();

  return v3 & 1;
}

- (_TtC7SwiftUIP33_0CB954C9DC99A8A907C58D7882F9389E14RenderBoxLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(RBLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC7SwiftUIP33_0CB954C9DC99A8A907C58D7882F9389E14RenderBoxLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(RBLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end