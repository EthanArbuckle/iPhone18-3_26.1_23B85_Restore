@interface CRLBrushStrokeLayoutOptions
- (CRLBrushStrokeLayoutOptions)init;
- (void)setStrokeEnd:(double)end;
@end

@implementation CRLBrushStrokeLayoutOptions

- (CRLBrushStrokeLayoutOptions)init
{
  v3.receiver = self;
  v3.super_class = CRLBrushStrokeLayoutOptions;
  result = [(CRLBrushStrokeLayoutOptions *)&v3 init];
  if (result)
  {
    result->_strokeEnd = 1.0;
  }

  return result;
}

- (void)setStrokeEnd:(double)end
{
  v5 = sub_1004C3240(end, 0.0, 1.0);
  self->_strokeEnd = v5;
  if (v5 != end)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138B730();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138B744();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138B7EC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLBrushStrokeLayoutOptions setStrokeEnd:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBrushStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:146 isFatal:0 description:"strokeEnd (%f) should be between 0 and 1 inclusive.", *&end];
  }
}

@end