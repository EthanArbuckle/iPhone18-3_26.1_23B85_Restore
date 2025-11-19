@interface CGDrawingLayer
- (_TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer)init;
- (_TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer)initWithCoder:(id)a3;
- (_TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation CGDrawingLayer

- (void)drawInContext:(CGContext *)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content);
  v5 = *(&self->super._attr.refcount + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content);
  v6 = *(&self->super._attr.layer + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content);
  v7 = *(&self->super._attr._objc_observation_info + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content);
  v8 = *(&self->super._wantsDynamicContentScaling + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content);
  v9 = *(&self->super._layoutManager + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_content);
  v10 = a3;
  v11 = self;
  outlined copy of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
  [(CGDrawingLayer *)v11 bounds];
  [(CGDrawingLayer *)v11 contentsScale];
  swift_beginAccess();
  PlatformDrawableContent.draw(in:size:contentsScale:state:)();
  swift_endAccess();

  outlined consume of PlatformDrawableContent.Storage(v4, v5, v6, v7, v8, v9);
}

- (_TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer)init
{
  ObjectType = swift_getObjectType();
  PlatformDrawableContent.init()();
  v4 = self + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_state;
  *v4 = 3;
  *(v4 + 1) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CGDrawingLayer *)&v6 init];
}

- (_TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  PlatformDrawableContent.init()();
  v5 = self + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_state;
  *v5 = 3;
  *(v5 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(CGDrawingLayer *)&v9 initWithLayer:v6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

- (_TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  PlatformDrawableContent.init()();
  v7 = self + OBJC_IVAR____TtC7SwiftUIP33_65A81BD07F0108B0485D2E15DE104A7514CGDrawingLayer_state;
  *v7 = 3;
  *(v7 + 1) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CGDrawingLayer *)&v10 initWithCoder:v6];

  if (v8)
  {
  }

  return v8;
}

@end