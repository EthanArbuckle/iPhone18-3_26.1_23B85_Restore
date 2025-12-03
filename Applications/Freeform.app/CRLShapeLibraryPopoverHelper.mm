@interface CRLShapeLibraryPopoverHelper
+ (void)changeShapeForEditor:(id)editor shapePathSource:(id)source interactiveCanvasController:(id)controller;
+ (void)dismissShapeLibraryForEditor:(id)editor;
+ (void)showShapeLibraryForEditor:(id)editor;
+ (void)showShapeLibraryPopoverToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)point forEditor:(id)editor;
- (_TtC8Freeform28CRLShapeLibraryPopoverHelper)init;
@end

@implementation CRLShapeLibraryPopoverHelper

+ (void)changeShapeForEditor:(id)editor shapePathSource:(id)source interactiveCanvasController:(id)controller
{
  editorCopy = editor;
  sourceCopy = source;
  controllerCopy = controller;
  sub_100BE8394(editorCopy, sourceCopy, controllerCopy);
}

+ (void)showShapeLibraryForEditor:(id)editor
{
  editorCopy = editor;
  sub_100BE95C0(editorCopy);
}

+ (void)showShapeLibraryPopoverToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)point forEditor:(id)editor
{
  y = point.y;
  x = point.x;
  editorCopy = editor;
  sub_100BE9AD4(editorCopy, x, y);
}

+ (void)dismissShapeLibraryForEditor:(id)editor
{
  if (!editor)
  {
    return;
  }

  editorCopy = editor;
  interactiveCanvasController = [editorCopy interactiveCanvasController];
  if (!interactiveCanvasController || (v4 = interactiveCanvasController, v5 = [interactiveCanvasController layerHost], v4, !v5))
  {
    v6 = editorCopy;
    goto LABEL_7;
  }

  if ([v5 respondsToSelector:"shapeLibraryPopoverController"])
  {
    shapeLibraryPopoverController = [v5 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    sub_100C00ED4();

    v6 = shapeLibraryPopoverController;
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