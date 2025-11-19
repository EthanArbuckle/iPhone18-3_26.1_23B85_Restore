@interface CRLConnectionLineMagnet
- (CGPoint)magnetNormalizedPosition;
- (CRLConnectionLineMagnet)initWithType:(unint64_t)a3 normalizedPosition:(CGPoint)a4;
- (void)setMagnetNormalizedPosition:(CGPoint)a3;
@end

@implementation CRLConnectionLineMagnet

- (CRLConnectionLineMagnet)initWithType:(unint64_t)a3 normalizedPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v13.receiver = self;
  v13.super_class = CRLConnectionLineMagnet;
  v7 = [(CRLConnectionLineMagnet *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->mMagnetType = a3;
    if (!sub_100120888(x, y))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013181EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101318214();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013182A8();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLConnectionLineMagnet initWithType:normalizedPosition:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineMagnet.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:26 isFatal:0 description:"Found non-finite normalized magnet position. Falling back to (0.5, 0.5)."];

      x = 0.5;
      y = 0.5;
    }

    v8->mMagnetNormalizedPosition.x = x;
    v8->mMagnetNormalizedPosition.y = y;
  }

  return v8;
}

- (void)setMagnetNormalizedPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!sub_100120888(a3.x, a3.y))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013182D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013182E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101318378();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLConnectionLineMagnet setMagnetNormalizedPosition:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineMagnet.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:37 isFatal:0 description:"Found non-finite normalized magnet position. Falling back to (0.5, 0.5)."];

    x = 0.5;
    y = 0.5;
  }

  self->mMagnetNormalizedPosition.x = x;
  self->mMagnetNormalizedPosition.y = y;
}

- (CGPoint)magnetNormalizedPosition
{
  x = self->mMagnetNormalizedPosition.x;
  y = self->mMagnetNormalizedPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end