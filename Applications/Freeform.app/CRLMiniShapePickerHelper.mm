@interface CRLMiniShapePickerHelper
+ (void)dismissMiniShapePickerForEditor:(id)editor;
+ (void)showMiniShapePickerToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)point forEditor:(id)editor;
- (_TtC8Freeform24CRLMiniShapePickerHelper)init;
@end

@implementation CRLMiniShapePickerHelper

+ (void)showMiniShapePickerToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)point forEditor:(id)editor
{
  y = point.y;
  x = point.x;
  editorCopy = editor;
  sub_100A6620C(editorCopy, x, y);
}

+ (void)dismissMiniShapePickerForEditor:(id)editor
{
  editorCopy = editor;
  sub_100D42600(editor);
}

- (_TtC8Freeform24CRLMiniShapePickerHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLMiniShapePickerHelper();
  return [(CRLMiniShapePickerHelper *)&v3 init];
}

@end