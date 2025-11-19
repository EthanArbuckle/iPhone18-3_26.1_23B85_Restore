@interface CRLRootContainerItem
- (CRLCanvasInfoGeometry)geometry;
- (id)board;
- (void)setGeometry:(id)a3;
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
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setGeometry:(id)a3
{
  v3 = a3;

  sub_100979FBC();
}

@end