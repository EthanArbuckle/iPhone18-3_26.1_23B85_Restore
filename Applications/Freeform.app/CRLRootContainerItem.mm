@interface CRLRootContainerItem
- (CRLCanvasInfoGeometry)geometry;
- (id)board;
- (void)setGeometry:(id)geometry;
@end

@implementation CRLRootContainerItem

- (id)board
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CRLCanvasInfoGeometry)geometry
{
  v2 = *(**(self + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  selfCopy = self;

  v5 = v2(v4);

  return v5;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;

  sub_100979FBC();
}

@end