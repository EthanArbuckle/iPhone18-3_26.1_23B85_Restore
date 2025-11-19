@interface CRLFill
- (int64_t)fillType;
- (void)applyToRenderable:(id)a3 withScale:(double)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation CRLFill

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddRect(Mutable, 0, v12);
  [(CRLFill *)self paintPath:Mutable inContext:a4];

  CGPathRelease(Mutable);
}

- (void)applyToRenderable:(id)a3 withScale:(double)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_101362704();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101362718();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013627AC();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLFill applyToRenderable:withScale:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLFill.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:72 isFatal:0 description:"called -applyToRenderable:withScale: on a CRLFill that can't"];
}

- (int64_t)fillType
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013627D4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013627E8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10136287C();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EFC0(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLFill fillType]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLFill.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:112 isFatal:0 description:"subclasses must override"];

  return 4;
}

@end