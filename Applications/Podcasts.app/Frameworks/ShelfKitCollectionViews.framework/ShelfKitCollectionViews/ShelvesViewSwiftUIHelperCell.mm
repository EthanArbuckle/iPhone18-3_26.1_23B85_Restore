@interface ShelvesViewSwiftUIHelperCell
- (UICellConfigurationState)_bridgedConfigurationState;
- (_TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
@end

@implementation ShelvesViewSwiftUIHelperCell

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1977F4(attributesCopy);
}

- (UICellConfigurationState)_bridgedConfigurationState
{
  v3 = sub_304618();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_197AF8();

  v8.super.super.isa = sub_3045E8().super.super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.super.isa;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ShelvesViewSwiftUIHelperCell *)&v4 prepareForReuse];
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph] = 0;

  v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_interactionContextView] = 7;
  v3 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
  *v3 = 0;
  v3[8] = 1;
}

- (_TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  __asm { FMOV            V0.2D, #10.0 }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_cellSize) = _Q0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_interactionContextView) = 7;
  v14 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace;
  *v14 = 0;
  v14[8] = 1;
  v16.receiver = self;
  v16.super_class = ObjectType;
  return [(ShelvesViewSwiftUIHelperCell *)&v16 initWithFrame:x, y, width, height];
}

@end