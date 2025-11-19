@interface UIGestureRecognizer
- (CGPoint)unscaledLocationForICC:(id)a3;
- (CRLGestureDelegate)gestureDelegate;
- (NSString)gestureKind;
- (UIGestureRecognizer)initWithGestureDispatcher:(id)a3 gestureKind:(id)a4;
- (id)cachedGestureTarget;
- (void)setCachedGestureTarget:(id)a3;
- (void)setGestureDelegate:(id)a3;
@end

@implementation UIGestureRecognizer

- (UIGestureRecognizer)initWithGestureDispatcher:(id)a3 gestureKind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIGestureRecognizer *)self initWithTarget:v6 action:"handleGesture:"];
  v9 = v8;
  if (v8)
  {
    [(UIGestureRecognizer *)v8 setGestureDelegate:v6];
    [(UIGestureRecognizer *)v9 setGestureKind:v7];
    [(UIGestureRecognizer *)v9 setName:v7];
  }

  return v9;
}

- (NSString)gestureKind
{
  v2 = objc_getAssociatedObject(self, &unk_101A34790);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"CRLWPUndefinedGestureKind";
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setCachedGestureTarget:(id)a3
{
  v4 = a3;
  value = [[TSDCachedGestureTargetHolder alloc] initWithTarget:v4];

  objc_setAssociatedObject(self, &unk_101A34791, value, 0x301);
}

- (id)cachedGestureTarget
{
  v2 = objc_getAssociatedObject(self, &unk_101A34791);
  v3 = [v2 weakCachedGestureTarget];

  return v3;
}

- (CGPoint)unscaledLocationForICC:(id)a3
{
  v4 = a3;
  v5 = [v4 canvasView];
  [(UIGestureRecognizer *)self locationInView:v5];
  [v4 convertBoundsToUnscaledPoint:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CRLGestureDelegate)gestureDelegate
{
  v2 = [(UIGestureRecognizer *)self delegate];
  v9 = sub_1003035DC(v2, 1, v3, v4, v5, v6, v7, v8, &OBJC_PROTOCOL___CRLGestureDelegate);

  return v9;
}

- (void)setGestureDelegate:(id)a3
{
  v9 = sub_1003035DC(a3, 1, a3, v3, v4, v5, v6, v7, &OBJC_PROTOCOL___UIGestureRecognizerDelegate);
  if (!v9)
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327870();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327884(v10, v11);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101327940();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v12, v10);
    }

    v13 = [NSString stringWithUTF8String:"[UIGestureRecognizer(CRLGestureDispatcher) setGestureDelegate:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/UIGestureRecognizer+Text.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:84 isFatal:0 description:"invalid nil value for '%{public}s'", "grDelegate"];
  }

  [(UIGestureRecognizer *)self setDelegate:v9];
}

@end