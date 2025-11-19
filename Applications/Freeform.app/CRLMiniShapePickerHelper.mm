@interface CRLMiniShapePickerHelper
+ (void)dismissMiniShapePickerForEditor:(id)a3;
+ (void)showMiniShapePickerToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)a3 forEditor:(id)a4;
- (_TtC8Freeform24CRLMiniShapePickerHelper)init;
@end

@implementation CRLMiniShapePickerHelper

+ (void)showMiniShapePickerToAddShapeToConnectionLineWithUnscaledPopoverAnchorPoint:(CGPoint)a3 forEditor:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  sub_100A6620C(v6, x, y);
}

+ (void)dismissMiniShapePickerForEditor:(id)a3
{
  v4 = a3;
  sub_100D42600(a3);
}

- (_TtC8Freeform24CRLMiniShapePickerHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLMiniShapePickerHelper();
  return [(CRLMiniShapePickerHelper *)&v3 init];
}

@end