@interface CRLShapeLibraryPopoverHelper
+ (void)changeShapeForEditor:(id)a3 shapePathSource:(id)a4 interactiveCanvasController:(id)a5;
+ (void)dismissShapeLibraryForEditor:(id)a3;
+ (void)showShapeLibraryForEditor:(id)a3;
+ (void)showShapeLibraryPopoverToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)a3 forEditor:(id)a4;
- (_TtC8Freeform28CRLShapeLibraryPopoverHelper)init;
@end

@implementation CRLShapeLibraryPopoverHelper

+ (void)changeShapeForEditor:(id)a3 shapePathSource:(id)a4 interactiveCanvasController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  sub_100BE8394(v7, v8, v9);
}

+ (void)showShapeLibraryForEditor:(id)a3
{
  v3 = a3;
  sub_100BE95C0(v3);
}

+ (void)showShapeLibraryPopoverToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)a3 forEditor:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  sub_100BE9AD4(v6, x, y);
}

+ (void)dismissShapeLibraryForEditor:(id)a3
{
  if (!a3)
  {
    return;
  }

  v8 = a3;
  v3 = [v8 interactiveCanvasController];
  if (!v3 || (v4 = v3, v5 = [v3 layerHost], v4, !v5))
  {
    v6 = v8;
    goto LABEL_7;
  }

  if ([v5 respondsToSelector:"shapeLibraryPopoverController"])
  {
    v7 = [v5 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    sub_100C00ED4();

    v6 = v7;
LABEL_7:

    return;
  }

  swift_unknownObjectRelease();
}

- (_TtC8Freeform28CRLShapeLibraryPopoverHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLShapeLibraryPopoverHelper();
  return [(CRLShapeLibraryPopoverHelper *)&v3 init];
}

@end