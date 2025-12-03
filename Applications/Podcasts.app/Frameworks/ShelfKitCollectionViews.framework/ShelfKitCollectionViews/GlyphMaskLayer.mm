@interface GlyphMaskLayer
- (_TtC23ShelfKitCollectionViews14GlyphMaskLayer)init;
- (_TtC23ShelfKitCollectionViews14GlyphMaskLayer)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews14GlyphMaskLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation GlyphMaskLayer

- (_TtC23ShelfKitCollectionViews14GlyphMaskLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_30D448();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14GlyphMaskLayer_symbolImage) = 0;
  __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
  v4 = sub_30D718();
  v7.receiver = self;
  v7.super_class = type metadata accessor for GlyphMaskLayer();
  v5 = [(GlyphMaskLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

- (_TtC23ShelfKitCollectionViews14GlyphMaskLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14GlyphMaskLayer_symbolImage) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_2525C0(contextCopy);
}

- (_TtC23ShelfKitCollectionViews14GlyphMaskLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end