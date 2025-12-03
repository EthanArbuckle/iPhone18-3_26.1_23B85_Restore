@interface CHTextInputGestureAccessibility
+ (BOOL)isEditGestureForDrawing:(id)drawing targetContentInfo:(id)info tentativeResultType:(int64_t)type;
@end

@implementation CHTextInputGestureAccessibility

+ (BOOL)isEditGestureForDrawing:(id)drawing targetContentInfo:(id)info tentativeResultType:(int64_t)type
{
  drawingCopy = drawing;
  infoCopy = info;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___CHTextInputGestureAccessibility;
    v10 = objc_msgSendSuper2(&v12, sel_isEditGestureForDrawing_targetContentInfo_tentativeResultType_, drawingCopy, infoCopy, type);
  }

  return v10;
}

@end