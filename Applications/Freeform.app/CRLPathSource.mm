@interface CRLPathSource
+ (id)pathSourceForShapeType:(int64_t)type naturalSize:(CGSize)size;
- (BOOL)canUseToChangeShape;
- (BOOL)isCircular;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRectangular;
- (CGAffineTransform)pathFlipTransform;
- (CGSize)naturalSize;
- (CRLBezierPath)bezierPath;
- (CRLBezierPath)bezierPathWithoutFlips;
- (CRLBezierPath)interiorWrapPath;
- (NSString)inferredAccessibilityDescription;
- (double)uniformScaleForScalingToNaturalSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)interiorWrapPathForInset:(double)inset joinStyle:(unint64_t)style;
- (unint64_t)hash;
- (void)setNaturalSize:(CGSize)size;
@end

@implementation CRLPathSource

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    [v4 setHasHorizontalFlip:{-[CRLPathSource hasHorizontalFlip](self, "hasHorizontalFlip")}];
    [v4 setHasVerticalFlip:{-[CRLPathSource hasVerticalFlip](self, "hasVerticalFlip")}];
    localizationKey = [(CRLPathSource *)self localizationKey];
    [v4 setLocalizationKey:localizationKey];

    userDefinedIdentifier = [(CRLPathSource *)self userDefinedIdentifier];
    [v4 setUserDefinedIdentifier:userDefinedIdentifier];

    userDefinedName = [(CRLPathSource *)self userDefinedName];
    [v4 setUserDefinedName:userDefinedName];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      hasHorizontalFlip = [(CRLPathSource *)self hasHorizontalFlip];
      if (hasHorizontalFlip == [(CRLPathSource *)v7 hasHorizontalFlip])
      {
        hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
        v6 = hasVerticalFlip ^ [(CRLPathSource *)v7 hasVerticalFlip]^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  hasHorizontalFlip = [(CRLPathSource *)self hasHorizontalFlip];
  hasVerticalFlip = [(CRLPathSource *)self hasVerticalFlip];
  v3 = sub_1001821F8(&hasHorizontalFlip, 1);
  return sub_100083B3C(&hasVerticalFlip, 1, v3);
}

- (BOOL)isRectangular
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870078);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLPathSource isRectangular]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
    v25 = 1024;
    v26 = 108;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870098);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLPathSource isRectangular]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:108 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLPathSource isRectangular]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (BOOL)isCircular
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018700B8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLPathSource isCircular]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
    v25 = 1024;
    v26 = 118;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018700D8);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLPathSource isCircular]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:118 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLPathSource isCircular]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (CRLBezierPath)bezierPath
{
  bezierPathWithoutFlips = [(CRLPathSource *)self bezierPathWithoutFlips];
  [(CRLPathSource *)self pathFlipTransform];
  [bezierPathWithoutFlips transformUsingAffineTransform:&v5];

  return bezierPathWithoutFlips;
}

- (CRLBezierPath)bezierPathWithoutFlips
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018700F8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLPathSource bezierPathWithoutFlips]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
    v25 = 1024;
    v26 = 133;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870118);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLPathSource bezierPathWithoutFlips]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:133 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLPathSource bezierPathWithoutFlips]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (CRLBezierPath)interiorWrapPath
{
  bezierPath = [(CRLPathSource *)self bezierPath];
  if ([bezierPath elementCount] >= 5001)
  {
    [(CRLPathSource *)self naturalSize];
    v4 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];

    bezierPath = v4;
  }

  return bezierPath;
}

- (id)interiorWrapPathForInset:(double)inset joinStyle:(unint64_t)style
{
  interiorWrapPath = [(CRLPathSource *)self interiorWrapPath];
  v7 = [interiorWrapPath bezierPathByRemovingSmallSubpathsForInteriorWrapsForInset:inset];

  [v7 bounds];
  v10 = inset + inset;
  if (inset > 0.0 && v8 > v10 && v9 > v10)
  {
    v13 = [v7 bezierPathByOffsettingPath:style joinStyle:-inset];

    v7 = v13;
  }

  return v7;
}

- (CGSize)naturalSize
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870138);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLPathSource naturalSize]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
    v25 = 1024;
    v26 = 168;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870158);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLPathSource naturalSize]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:168 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLPathSource naturalSize]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)setNaturalSize:(CGSize)size
{
  v3 = [CRLAssertionHandler _atomicIncrementAssertCount:size.width];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870178);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 67110146;
    v21 = v3;
    v22 = 2082;
    v23 = "[CRLPathSource setNaturalSize:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
    v26 = 1024;
    v27 = 172;
    v28 = 2114;
    v29 = v7;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870198);
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v3;
    v22 = 2114;
    v23 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v11 = [NSString stringWithUTF8String:"[CRLPathSource setNaturalSize:]"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:172 isFatal:0 description:"Abstract method not overridden by %{public}@", v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v16, "[CRLPathSource setNaturalSize:]"];
  v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
  v19 = v18;

  objc_exception_throw(v18);
}

- (double)uniformScaleForScalingToNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CRLPathSource *)self naturalSize];
  v7 = 1.0;
  if (v5 <= 1.0 || v6 <= 1.0)
  {
    return v7;
  }

  v9 = width / v5;
  v10 = height / v6;
  if (v9 >= 1.0 || v10 >= 1.0)
  {
    v12 = v10 <= 1.0 || v9 <= 1.0;
    v13 = fmin(v9, v10);
    if (!v12)
    {
      return v13;
    }

    return v7;
  }

  return fmax(v9, v10);
}

- (CGAffineTransform)pathFlipTransform
{
  v22 = *&CGAffineTransformIdentity.c;
  v23 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v22;
  v21 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v21;
  hasHorizontalFlip = [(CRLPathSource *)self hasHorizontalFlip];
  result = [(CRLPathSource *)self hasVerticalFlip];
  v7 = result;
  if ((hasHorizontalFlip & 1) != 0 || result)
  {
    if (hasHorizontalFlip)
    {
      v8 = -1.0;
    }

    else
    {
      v8 = 1.0;
    }

    y = CGPointZero.y;
    [(CRLPathSource *)self naturalSize];
    v11 = v10;
    v13 = v12;
    v26.origin.x = CGPointZero.x;
    v26.origin.y = y;
    v26.size.width = v11;
    v26.size.height = v13;
    MidX = CGRectGetMidX(v26);
    v27.origin.x = CGPointZero.x;
    v27.origin.y = y;
    v27.size.width = v11;
    v27.size.height = v13;
    MidY = CGRectGetMidY(v27);
    *&v25.a = v23;
    *&v25.c = v22;
    *&v25.tx = v21;
    CGAffineTransformTranslate(retstr, &v25, MidX, MidY);
    if (v7)
    {
      v16 = -1.0;
    }

    else
    {
      v16 = 1.0;
    }

    v17 = *&retstr->c;
    *&v24.a = *&retstr->a;
    *&v24.c = v17;
    *&v24.tx = *&retstr->tx;
    CGAffineTransformScale(&v25, &v24, v8, v16);
    v18 = *&v25.c;
    *&retstr->a = *&v25.a;
    *&retstr->c = v18;
    *&retstr->tx = *&v25.tx;
    v19 = *&retstr->c;
    *&v24.a = *&retstr->a;
    *&v24.c = v19;
    *&v24.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v25, &v24, -MidX, -MidY);
    v20 = *&v25.c;
    *&retstr->a = *&v25.a;
    *&retstr->c = v20;
    *&retstr->tx = *&v25.tx;
  }

  return result;
}

+ (id)pathSourceForShapeType:(int64_t)type naturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = size.height / 100.0;
  switch(type)
  {
    case 0:
    case 3:
      v9 = [CRLBezierPath bezierPathWithRect:sub_10011ECB4()];
      v4 = [CRLBezierPathSource pathSourceWithBezierPath:v9];
      [(CRLEditableBezierPathSource *)v4 setNaturalSize:width, height];
      goto LABEL_23;
    case 1:
    case 15:
    case 16:
    case 20:
      v9 = [CRLBezierPath bezierPathWithStart:CGPointZero.x end:CGPointZero.y, sqrt(width * width + size.height * size.height), 0.0];
      goto LABEL_22;
    case 2:
    case 18:
    case 19:
      v10 = [CRLConnectionLinePathSource pathSourceAtAngleOfSize:type == 18 forType:width, size.height];
      v4 = v10;
      if (type == 2)
      {
        [(CRLEditableBezierPathSource *)v10 bend];
      }

      break;
    case 4:
      v14 = [CRLScalarPathSource roundedRectangleWithScalar:1 naturalSize:15.0 continuousCurve:width, size.height];
      goto LABEL_16;
    case 5:
      v15 = [CRLBezierPath bezierPathWithOvalInRect:0.0, 0.0, width, size.height];
      v9 = v15;
      goto LABEL_21;
    case 6:
      v9 = +[CRLBezierPath bezierPath];
      [v9 moveToPoint:{width * 0.5, 0.0}];
      [v9 lineToPoint:{width, height}];
      v13 = 0.0;
      v12 = v9;
      goto LABEL_18;
    case 7:
      v9 = +[CRLBezierPath bezierPath];
      [v9 moveToPoint:{0.0, 0.0}];
      [v9 lineToPoint:{0.0, width}];
      v12 = v9;
      v13 = width;
LABEL_18:
      v11 = height;
      goto LABEL_19;
    case 8:
      v14 = [CRLPointPathSource rightSingleArrowWithPoint:v8 * 64.0 naturalSize:0.34, width, size.height];
      goto LABEL_16;
    case 9:
      v14 = [CRLPointPathSource doubleArrowWithPoint:v8 * 44.0 naturalSize:0.34, width, size.height];
      goto LABEL_16;
    case 10:
      v9 = +[CRLBezierPath bezierPath];
      [v9 moveToPoint:{0.0, height * 0.5}];
      [v9 lineToPoint:{width * 0.5, height}];
      [v9 lineToPoint:{width, height * 0.5}];
      v11 = 0.0;
      v12 = v9;
      v13 = width * 0.5;
LABEL_19:
      [v12 lineToPoint:{v13, v11}];
      v15 = v9;
LABEL_21:
      [v15 closePath];
LABEL_22:
      v4 = [CRLBezierPathSource pathSourceWithBezierPath:v9];
      goto LABEL_23;
    case 11:
      v14 = [CRLCalloutPathSource quoteBubbleWithTailPosition:v8 tailSize:v8 * 96.0 naturalSize:v8 * 10.0, width, size.height * 0.8];
      goto LABEL_16;
    case 12:
      v14 = [CRLCalloutPathSource calloutWithCornerRadius:5.0 tailPosition:v8 * -20.0 tailSize:v8 * 50.0 naturalSize:v8 * 10.0, width, size.height];
      goto LABEL_16;
    case 13:
      v14 = [CRLScalarPathSource regularPolygonWithScalar:5.0 naturalSize:width, size.height];
      goto LABEL_16;
    case 14:
      v14 = [CRLPointPathSource starWithPoint:5.0 naturalSize:0.382, width, size.height];
LABEL_16:
      v4 = v14;
      break;
    case 17:
      v4 = objc_alloc_init(CRLEditableBezierPathSource);
      v9 = [CRLBezierNode bezierNodeWithPoint:CGPointZero.x, CGPointZero.y];
      [(CRLEditableBezierPathSource *)v4 addNode:v9];
LABEL_23:

      break;
    case 21:
      v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101395E88();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101395E9C(v17, v18);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101395F48();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v19, v17);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Should not be trying to get the path of a custom shape from here!", v20, v21, v22, v23, v24, v25, v26, "+[CRLPathSource pathSourceForShapeType:naturalSize:]");
      v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPathSource pathSourceForShapeType:naturalSize:]");
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:309 isFatal:1 description:"Should not be trying to get the path of a custom shape from here!"];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v29, v30);
      abort();
    default:
      break;
  }

  return v4;
}

- (BOOL)canUseToChangeShape
{
  bezierPath = [(CRLPathSource *)self bezierPath];
  if ([bezierPath isEmpty])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    bezierPath2 = [(CRLPathSource *)self bezierPath];
    v4 = [bezierPath2 isLineSegment] ^ 1;
  }

  return v4;
}

- (NSString)inferredAccessibilityDescription
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018701F8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLPathSource inferredAccessibilityDescription]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m";
    v25 = 1024;
    v26 = 325;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101870218);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLPathSource inferredAccessibilityDescription]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSource.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:325 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLPathSource inferredAccessibilityDescription]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

@end