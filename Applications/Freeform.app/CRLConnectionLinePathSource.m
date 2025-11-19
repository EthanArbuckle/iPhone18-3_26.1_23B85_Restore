@interface CRLConnectionLinePathSource
+ (id)pathSourceAtAngleOfSize:(CGSize)a3 forType:(int64_t)a4;
+ (id)pathSourceOfLength:(double)a3;
- (CGPoint)fixedPointForControlKnobChange;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)getNewNormalizedPositionForMagnet:(BOOL)a3 withPreviousLayout:(id)a4 onNewLayout:(id)a5;
- (CRLConnectionLinePathSource)initWithBezierPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)crlaxLabelComponentForKnobTag:(unint64_t)a3;
- (id)crlaxUserInputLabelForKnobTag:(unint64_t)a3;
- (id)description;
- (int64_t)pathElementIndexForKnobTag:(unint64_t)a3;
- (void)bend;
- (void)p_setBezierPath:(id)a3;
- (void)scaleToNaturalSize:(CGSize)a3;
- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4;
@end

@implementation CRLConnectionLinePathSource

- (CRLConnectionLinePathSource)initWithBezierPath:(id)a3
{
  v4 = a3;
  if ([v4 elementCount] < 1)
  {
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    [v4 controlPointBounds];
  }

  v7 = width == CGSizeZero.width && height == CGSizeZero.height;
  if (v7 || (sub_100122890() & 1) != 0 || [v4 elementCount] != 3)
  {
    if ([v4 elementCount] == 2 && objc_msgSend(v4, "elementAtIndex:", 1) == 2)
    {
      [v4 elementAtIndex:1 allPoints:v19];
      v8 = +[CRLBezierPath bezierPath];

      [v8 moveToPoint:*v19];
      [v8 lineToPoint:{sub_10011F20C(v19, 0.5)}];
      v9 = v20;
      v10 = v21;
      v11 = v8;
    }

    else
    {
      v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013565A0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013565B4(v4, v12);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135666C();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLConnectionLinePathSource initWithBezierPath:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLinePathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:46 isFatal:0 description:"Ignoring invalid bezier path %@", v4];

      v8 = +[CRLBezierPath bezierPath];

      [v8 moveToPoint:{CGPointZero.x, CGPointZero.y}];
      [v8 lineToPoint:{50.0, 50.0}];
      v9 = 100.0;
      v11 = v8;
      v10 = 100.0;
    }

    [v11 lineToPoint:{v9, v10}];
    v4 = v8;
  }

  v18.receiver = self;
  v18.super_class = CRLConnectionLinePathSource;
  v16 = [(CRLBezierPathSource *)&v18 initWithBezierPath:v4];

  return v16;
}

- (CGPoint)getNewNormalizedPositionForMagnet:(BOOL)a3 withPreviousLayout:(id)a4 onNewLayout:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    v10 = [(CRLConnectionLinePathSource *)self headMagnet];

    if (!v10)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101356768();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135677C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101356814();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLConnectionLinePathSource getNewNormalizedPositionForMagnet:withPreviousLayout:onNewLayout:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLinePathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:60 isFatal:0 description:"invalid nil value for '%{public}s'", "self.headMagnet"];
    }

    v14 = [(CRLConnectionLinePathSource *)self headMagnet];
  }

  else
  {
    v15 = [(CRLConnectionLinePathSource *)self tailMagnet];

    if (!v15)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101356694();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013566A8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101356740();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLConnectionLinePathSource getNewNormalizedPositionForMagnet:withPreviousLayout:onNewLayout:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLinePathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:63 isFatal:0 description:"invalid nil value for '%{public}s'", "self.tailMagnet"];
    }

    v14 = [(CRLConnectionLinePathSource *)self tailMagnet];
  }

  v19 = v14;
  [v14 magnetNormalizedPosition];
  v21 = v20;
  v23 = v22;

  v24 = [v8 pureGeometry];
  v25 = v24;
  if (v24)
  {
    [v24 fullTransform];
    a = v43.a;
    b = v43.b;
    c = v43.c;
    d = v43.d;
    tx = v43.tx;
    ty = v43.ty;
  }

  else
  {
    ty = 0.0;
    d = 0.0;
    b = 0.0;
    tx = 0.0;
    c = 0.0;
    a = 0.0;
  }

  if (v9)
  {
    [v9 pureTransformInRoot];
  }

  else
  {
    memset(&v42, 0, sizeof(v42));
  }

  CGAffineTransformInvert(&v43, &v42);
  v41 = vaddq_f64(*&v43.tx, vmlaq_n_f64(vmulq_n_f64(*&v43.c, ty + v23 * d + b * v21), *&v43.a, tx + v23 * c + a * v21));
  v32 = [v9 pureGeometry];
  [v32 size];
  v33 = sub_10011ECB4();
  v36 = sub_100121720(v41.f64[0], v41.f64[1], v33, v34, v35);
  v38 = v37;

  v39 = v36;
  v40 = v38;
  result.y = v40;
  result.x = v39;
  return result;
}

+ (id)pathSourceOfLength:(double)a3
{
  v4 = +[CRLBezierPath bezierPath];
  [v4 moveToPoint:{0.0, 0.0}];
  [v4 lineToPoint:{a3 * 0.5, 0.0}];
  [v4 lineToPoint:{a3, 0.0}];
  v5 = [[CRLConnectionLinePathSource alloc] initWithBezierPath:v4];

  return v5;
}

+ (id)pathSourceAtAngleOfSize:(CGSize)a3 forType:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = +[CRLBezierPath bezierPath];
  v8 = v7;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    [v7 moveToPoint:{0.0, 0.0}];
    [v8 lineToPoint:{0.0, height}];
  }

  else
  {
    [v7 moveToPoint:{0.0, height}];
    [v8 lineToPoint:{width * 0.5, height * 0.5}];
    height = 0.0;
  }

  [v8 lineToPoint:{width, height}];
LABEL_6:
  v9 = [[CRLConnectionLinePathSource alloc] initWithBezierPath:v8];
  [(CRLConnectionLinePathSource *)v9 setType:a4];

  return v9;
}

- (void)bend
{
  [(CRLConnectionLinePathSource *)self getControlKnobPosition:12];
  v4 = v3;
  v6 = v5;
  [(CRLConnectionLinePathSource *)self getControlKnobPosition:10];
  v8 = v7;
  [(CRLConnectionLinePathSource *)self getControlKnobPosition:11];
  v11 = sub_10011F31C(v9, v10, v8);
  v13 = sub_10011F2FC(v11, v12);
  v15 = sub_10012104C(1, v13, v14);
  v17 = v15;
  v18 = v16;
  if (v16 > 0.0)
  {
    v17 = sub_10011F340(v15, v16, -1.0);
    v18 = v19;
  }

  [(CRLBezierPathSource *)self naturalSize];
  v21 = v20;
  [(CRLBezierPathSource *)self naturalSize];
  v23 = v22;
  [(CRLBezierPathSource *)self naturalSize];
  v25 = v24;
  [(CRLBezierPathSource *)self naturalSize];
  v27 = sub_10011F340(v17, v18, sqrt(v25 * v26 + v21 * v23) * 0.3);
  v28 = sub_10011F334(v4, v6, v27);

  [(CRLConnectionLinePathSource *)self setControlKnobPosition:12 toPoint:v28];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CRLConnectionLinePathSource;
  v4 = [(CRLBezierPathSource *)&v8 copyWithZone:a3];
  [v4 setType:{-[CRLConnectionLinePathSource type](self, "type")}];
  [(CRLConnectionLinePathSource *)self outsetFrom];
  [v4 setOutsetFrom:?];
  [(CRLConnectionLinePathSource *)self outsetTo];
  [v4 setOutsetTo:?];
  v5 = [(CRLConnectionLinePathSource *)self headMagnet];
  [v4 setHeadMagnet:v5];

  v6 = [(CRLConnectionLinePathSource *)self tailMagnet];
  [v4 setTailMagnet:v6];

  [v4 setUserDidSetControlPoint:{-[CRLConnectionLinePathSource userDidSetControlPoint](self, "userDidSetControlPoint")}];
  return v4;
}

- (int64_t)pathElementIndexForKnobTag:(unint64_t)a3
{
  if (a3 - 10 > 2)
  {
    return -1;
  }

  else
  {
    return qword_101464CB0[a3 - 10];
  }
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v7 = CGPointZero;
  v4 = [(CRLConnectionLinePathSource *)self pathElementIndexForKnobTag:a3];
  if ((v4 & 0x8000000000000000) == 0)
  {
    [(CRLBezierPath *)self->super.mPath elementAtIndex:v4 associatedPoints:&v7];
  }

  y = v7.y;
  x = v7.x;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4
{
  v5 = [(CRLConnectionLinePathSource *)self pathElementIndexForKnobTag:a3, *&a4.x, *&a4.y];
  if ((v5 & 0x8000000000000000) == 0)
  {
    [(CRLBezierPath *)self->super.mPath setAssociatedPoints:&v6 atIndex:v5];
  }
}

- (void)scaleToNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CRLBezierPath *)self->super.mPath bounds];
  v8 = width / v7;
  v9 = 0.0;
  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  memset(&v12.c, 0, 32);
  if (v6 != 0.0)
  {
    v9 = height / v6;
  }

  *&v12.a = 0uLL;
  CGAffineTransformMakeScale(&v12, v8, v9);
  mPath = self->super.mPath;
  v11 = v12;
  [(CRLBezierPath *)mPath transformUsingAffineTransform:&v11];
  [(CRLBezierPathSource *)self setNaturalSize:width, height];
}

- (CGPoint)fixedPointForControlKnobChange
{
  v4 = 0.0;
  v5 = 0.0;
  [(CRLBezierPath *)self->super.mPath elementAtIndex:0 associatedPoints:&v4];
  v2 = v4;
  v3 = v5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)p_setBezierPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135683C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356850();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013568E8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLConnectionLinePathSource p_setBezierPath:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLinePathSource.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:222 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];
  }

  if ([(CRLBezierPath *)v4 elementCount]== 2 && [(CRLBezierPath *)v4 elementAtIndex:1]== 2)
  {
    [(CRLBezierPath *)v4 elementAtIndex:1 allPoints:v15];
    v8 = +[CRLBezierPath bezierPath];
    [(CRLBezierPath *)v8 moveToPoint:*v15];
    [(CRLBezierPath *)v8 lineToPoint:sub_10011F20C(v15, 0.5)];
    [(CRLBezierPath *)v8 lineToPoint:v16, v17];

    v4 = v8;
  }

  mPath = self->super.mPath;
  self->super.mPath = v4;
  v10 = v4;

  [(CRLBezierPath *)self->super.mPath bounds];
  v12 = v11;
  v14 = v13;

  self->super.mNaturalSize.width = v12;
  self->super.mNaturalSize.height = v14;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CRLConnectionLinePathSource;
  v3 = [(CRLBezierPathSource *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = [(CRLConnectionLinePathSource *)self type];
  v6 = @"curved";
  if (v5 == 1)
  {
    v6 = @"orthogonal";
  }

  v7 = [NSString stringWithFormat:@" connection type: %@", v6];;
  [v4 appendString:v7];

  return v4;
}

- (id)crlaxLabelComponentForKnobTag:(unint64_t)a3
{
  v3 = [(CRLConnectionLinePathSource *)self type];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = @"Path control";
  }

  else
  {
    v6 = @"Curvature control";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:0];

  return v7;
}

- (id)crlaxUserInputLabelForKnobTag:(unint64_t)a3
{
  v3 = [(CRLConnectionLinePathSource *)self type];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = @"Path";
  }

  else
  {
    v6 = @"Curvature";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:0];

  return v7;
}

@end