@interface CHTextInputGestureAccessibility
+ (BOOL)isEditGestureForDrawing:(id)a3 targetContentInfo:(id)a4 tentativeResultType:(int64_t)a5;
@end

@implementation CHTextInputGestureAccessibility

+ (BOOL)isEditGestureForDrawing:(id)a3 targetContentInfo:(id)a4 tentativeResultType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___CHTextInputGestureAccessibility;
    v10 = objc_msgSendSuper2(&v12, sel_isEditGestureForDrawing_targetContentInfo_tentativeResultType_, v8, v9, a5);
  }

  return v10;
}

@end