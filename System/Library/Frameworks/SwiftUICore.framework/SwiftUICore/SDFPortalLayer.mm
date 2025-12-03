@interface SDFPortalLayer
- (CALayer)sourceLayer;
- (_TtC7SwiftUIP33_05C1F5BE6EE7940FED05100EA822F7B314SDFPortalLayer)init;
- (_TtC7SwiftUIP33_05C1F5BE6EE7940FED05100EA822F7B314SDFPortalLayer)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_05C1F5BE6EE7940FED05100EA822F7B314SDFPortalLayer)initWithLayer:(id)layer;
- (unint64_t)sourceLayerRenderId;
- (unsigned)sourceContextId;
- (void)setSourceLayer:(id)layer;
@end

@implementation SDFPortalLayer

- (CALayer)sourceLayer
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  currentContext = [v4 currentContext];
  if (currentContext)
  {

    v7 = 0;
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = ObjectType;
    sourceLayer = [(CAPortalLayer *)&v10 sourceLayer];

    v7 = sourceLayer;
  }

  return v7;
}

- (void)setSourceLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(CAPortalLayer *)&v4 setSourceLayer:layer];
}

- (unint64_t)sourceLayerRenderId
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  sourceLayer = [(CAPortalLayer *)&v7 sourceLayer];
  if (sourceLayer)
  {
    v4 = sourceLayer;
    RenderId = CALayerGetRenderId();
  }

  else
  {
    RenderId = 0;
  }

  return RenderId;
}

- (unsigned)sourceContextId
{
  selfCopy = self;
  v3 = SDFPortalLayer.sourceContextId.getter();

  return v3;
}

- (_TtC7SwiftUIP33_05C1F5BE6EE7940FED05100EA822F7B314SDFPortalLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDFPortalLayer *)&v3 init];
}

- (_TtC7SwiftUIP33_05C1F5BE6EE7940FED05100EA822F7B314SDFPortalLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(SDFPortalLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC7SwiftUIP33_05C1F5BE6EE7940FED05100EA822F7B314SDFPortalLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(SDFPortalLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end