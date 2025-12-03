@interface CRLCursor
+ (CRLCursor)cursorWithEffect:(id)effect preview:(id)preview;
+ (CRLCursor)cursorWithEffect:(id)effect preview:(id)preview activeScaledRect:(CGRect)rect;
+ (CRLCursor)cursorWithShape:(id)shape activeScaledRect:(CGRect)rect;
+ (CRLCursor)defaultCursor;
+ (CRLCursor)repContentPlatformViewPlaceholder;
+ (id)addPointCursorWithActiveScaledRect:(CGRect)rect;
+ (id)cursorForResizeType:(unint64_t)type activeScaledRect:(CGRect)rect;
+ (id)cursorForRotateType:(unint64_t)type activeScaledRect:(CGRect)rect;
+ (id)moveCursorWithActiveScaledRect:(CGRect)rect;
+ (id)tableResizeCursorForOrientation:(int)orientation activeScaledRect:(CGRect)rect;
- (CGRect)activeScaledRect;
- (CRLCursor)initWithEffect:(id)effect preview:(id)preview activeScaledRect:(CGRect)rect;
- (CRLCursor)initWithShape:(id)shape activeScaledRect:(CGRect)rect;
- (id)description;
- (id)initDefaultCursor;
- (id)initRepContentPlatformViewPlaceholder;
@end

@implementation CRLCursor

- (CRLCursor)initWithEffect:(id)effect preview:(id)preview activeScaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  effectCopy = effect;
  previewCopy = preview;
  if (previewCopy)
  {
    if (effectCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101362C78();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101362C8C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101362D28();
  }

  v14 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v14);
  }

  v15 = [NSString stringWithUTF8String:"[CRLCursor initWithEffect:preview:activeScaledRect:]"];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
  [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:278 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "hoverPreview != nil"];

  if (!effectCopy)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101362D50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362D78();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362E14();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCursor initWithEffect:preview:activeScaledRect:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:279 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "pointerEffect != nil"];
  }

LABEL_22:
  v24.receiver = self;
  v24.super_class = CRLCursor;
  v20 = [(CRLCursor *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_effect, effect);
    objc_storeStrong(&v21->_preview, preview);
    v21->_activeScaledRect.origin.x = x;
    v21->_activeScaledRect.origin.y = y;
    v21->_activeScaledRect.size.width = width;
    v21->_activeScaledRect.size.height = height;
    identifierSuffix = v21->_identifierSuffix;
    v21->_identifierSuffix = &stru_1018BCA28;
  }

  return v21;
}

+ (CRLCursor)cursorWithEffect:(id)effect preview:(id)preview activeScaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  previewCopy = preview;
  effectCopy = effect;
  v13 = [[self alloc] initWithEffect:effectCopy preview:previewCopy activeScaledRect:{x, y, width, height}];

  return v13;
}

+ (CRLCursor)cursorWithEffect:(id)effect preview:(id)preview
{
  previewCopy = preview;
  effectCopy = effect;
  v8 = [self alloc];
  view = [previewCopy view];
  [view frame];
  v10 = [v8 initWithEffect:effectCopy preview:previewCopy activeScaledRect:?];

  return v10;
}

- (CRLCursor)initWithShape:(id)shape activeScaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shapeCopy = shape;
  if (!shapeCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101362E3C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362E50();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362EEC();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLCursor initWithShape:activeScaledRect:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:298 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "shape != nil"];
  }

  v18.receiver = self;
  v18.super_class = CRLCursor;
  v14 = [(CRLCursor *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_shape, shape);
    v15->_activeScaledRect.origin.x = x;
    v15->_activeScaledRect.origin.y = y;
    v15->_activeScaledRect.size.width = width;
    v15->_activeScaledRect.size.height = height;
    identifierSuffix = v15->_identifierSuffix;
    v15->_identifierSuffix = &stru_1018BCA28;

    v15->_constrainedAxes = 0;
  }

  return v15;
}

+ (CRLCursor)cursorWithShape:(id)shape activeScaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shapeCopy = shape;
  v10 = [[self alloc] initWithShape:shapeCopy activeScaledRect:{x, y, width, height}];

  return v10;
}

- (id)initDefaultCursor
{
  v3.receiver = self;
  v3.super_class = CRLCursor;
  return [(CRLCursor *)&v3 init];
}

+ (CRLCursor)defaultCursor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003AD650;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A34D68 != -1)
  {
    dispatch_once(&qword_101A34D68, block);
  }

  v2 = qword_101A34D60;

  return v2;
}

+ (id)cursorForResizeType:(unint64_t)type activeScaledRect:(CGRect)rect
{
  if (type < 4)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    v13 = qword_101A34D70;
    if (!qword_101A34D70)
    {
      v14 = [NSMutableArray arrayWithCapacity:4];
      v15 = +[UIBezierPath bezierPath];
      [v15 moveToPoint:{11.0, 11.0}];
      [v15 addLineToPoint:{1.0, 17.5}];
      [v15 addLineToPoint:{11.0, 24.0}];
      [v15 addLineToPoint:{11.0, 11.0}];
      [v15 closePath];
      [v15 moveToPoint:{24.0, 11.0}];
      [v15 addLineToPoint:{24.0, 24.0}];
      [v15 addLineToPoint:{34.0, 17.5}];
      [v15 addLineToPoint:{24.0, 11.0}];
      [v15 closePath];
      CGAffineTransformMakeTranslation(&v23, -17.5, -17.5);
      [v15 applyTransform:&v23];
      v16 = [v15 copy];
      [v14 setObject:v16 atIndexedSubscript:0];

      v17 = [v15 copy];
      CGAffineTransformMakeRotation(&v23, -0.785398163);
      [v17 applyTransform:&v23];
      [v14 setObject:v17 atIndexedSubscript:1];
      v18 = [v15 copy];
      CGAffineTransformMakeRotation(&v23, 1.57079633);
      [v18 applyTransform:&v23];
      [v14 setObject:v18 atIndexedSubscript:2];
      v19 = [v15 copy];
      CGAffineTransformMakeRotation(&v23, 0.785398163);
      [v19 applyTransform:&v23];
      [v14 setObject:v19 atIndexedSubscript:3];
      v20 = [NSArray arrayWithArray:v14];
      v21 = qword_101A34D70;
      qword_101A34D70 = v20;

      v13 = qword_101A34D70;
    }

    v5 = [v13 objectAtIndexedSubscript:type];
    v6 = [UIPointerShape shapeWithPath:v5];
    height = [CRLCursor cursorWithShape:v6 activeScaledRect:x, y, width, height];
    [height setConstrainedAxes:3];
  }

  else
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:rect.origin.x];
    if (qword_101AD5A10 != -1)
    {
      sub_101362F14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362F28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362FB8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCursor cursorForResizeType:activeScaledRect:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:331 isFatal:0 description:"Asking for invalid cursor type"];
    height = 0;
  }

  return height;
}

+ (id)cursorForRotateType:(unint64_t)type activeScaledRect:(CGRect)rect
{
  if (type < 8)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    v13 = qword_101A34D78;
    if (!qword_101A34D78)
    {
      v14 = [NSMutableArray arrayWithCapacity:8];
      v15 = +[UIBezierPath bezierPath];
      [v15 moveToPoint:{17.84375, 2.40625}];
      [v15 addLineToPoint:{20.3125, 14.0625}];
      [v15 addLineToPoint:{23.84375, 10.53125}];
      [v15 addCurveToPoint:24.21875 controlPoint1:10.875 controlPoint2:{23.966935, 10.642287, 24.100128, 10.756378}];
      [v15 addCurveToPoint:24.21875 controlPoint1:24.3125 controlPoint2:{27.928727, 14.58498, 27.928731, 20.602519}];
      [v15 addCurveToPoint:24.03125 controlPoint1:24.5 controlPoint2:{24.15933, 24.371917, 24.091827, 24.44249}];
      [v15 addLineToPoint:{23.84375, 24.65625}];
      [v15 addLineToPoint:{20.3125, 21.125}];
      [v15 addLineToPoint:{17.84375, 32.8125}];
      [v15 addLineToPoint:{29.53125, 30.34375}];
      [v15 addLineToPoint:{25.96875, 26.78125}];
      [v15 addCurveToPoint:26.34375 controlPoint1:26.4375 controlPoint2:{26.090566, 26.668649, 26.225413, 26.555837}];
      [v15 addCurveToPoint:26.34375 controlPoint1:8.75 controlPoint2:{31.225304, 21.555948, 31.225304, 13.631554}];
      [v15 addLineToPoint:{26.15625, 8.59375}];
      [v15 addLineToPoint:{25.96875, 8.40625}];
      [v15 addLineToPoint:{29.53125, 4.875}];
      [v15 addLineToPoint:{17.84375, 2.40625}];
      [v15 closePath];
      CGAffineTransformMakeTranslation(&v35, -17.5, -17.5);
      [v15 applyTransform:&v35];
      v34 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, 0.0);
      [v34 applyTransform:&v35];
      v16 = [v34 copy];
      [v14 setObject:v16 atIndexedSubscript:0];

      v33 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -0.785398163);
      [v33 applyTransform:&v35];
      v17 = [v33 copy];
      [v14 setObject:v17 atIndexedSubscript:1];

      v18 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -1.57079633);
      [v18 applyTransform:&v35];
      v19 = [v18 copy];
      [v14 setObject:v19 atIndexedSubscript:2];

      v20 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -2.35619449);
      [v20 applyTransform:&v35];
      v21 = [v20 copy];
      [v14 setObject:v21 atIndexedSubscript:3];

      v22 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -3.14159265);
      [v22 applyTransform:&v35];
      v23 = [v22 copy];
      [v14 setObject:v23 atIndexedSubscript:4];

      v24 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -3.92699082);
      [v24 applyTransform:&v35];
      v25 = [v24 copy];
      [v14 setObject:v25 atIndexedSubscript:5];

      v26 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -4.71238898);
      [v26 applyTransform:&v35];
      v27 = [v26 copy];
      [v14 setObject:v27 atIndexedSubscript:6];

      v28 = [v15 copy];
      CGAffineTransformMakeRotation(&v35, -5.49778714);
      [v28 applyTransform:&v35];
      v29 = [v28 copy];
      [v14 setObject:v29 atIndexedSubscript:7];

      v30 = [NSArray arrayWithArray:v14];
      v31 = qword_101A34D78;
      qword_101A34D78 = v30;

      v13 = qword_101A34D78;
    }

    v5 = [v13 objectAtIndexedSubscript:type];
    v6 = [UIPointerShape shapeWithPath:v5];
    height = [CRLCursor cursorWithShape:v6 activeScaledRect:x, y, width, height];
    [height setConstrainedAxes:3];
  }

  else
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:rect.origin.x];
    if (qword_101AD5A10 != -1)
    {
      sub_101362FE0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362FF4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363084();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCursor cursorForRotateType:activeScaledRect:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:387 isFatal:0 description:"Asking for invalid cursor type"];
    height = 0;
  }

  return height;
}

+ (id)moveCursorWithActiveScaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = qword_101A34D80;
  if (!qword_101A34D80)
  {
    v8 = +[UIBezierPath bezierPath];
    [v8 moveToPoint:{17.5, 2.0}];
    [v8 addLineToPoint:{12.0, 10.0}];
    [v8 addLineToPoint:{23.0, 10.0}];
    [v8 addLineToPoint:{17.5, 2.0}];
    [v8 closePath];
    [v8 moveToPoint:{10.0, 12.0}];
    [v8 addLineToPoint:{2.0, 17.5}];
    [v8 addLineToPoint:{10.0, 23.0}];
    [v8 addLineToPoint:{10.0, 12.0}];
    [v8 closePath];
    [v8 moveToPoint:{25.0, 12.0}];
    [v8 addLineToPoint:{25.0, 23.0}];
    [v8 addLineToPoint:{33.0, 17.5}];
    [v8 addLineToPoint:{25.0, 12.0}];
    [v8 closePath];
    [v8 moveToPoint:{12.0, 25.0}];
    [v8 addLineToPoint:{17.5, 33.0}];
    [v8 addLineToPoint:{23.0, 25.0}];
    [v8 addLineToPoint:{12.0, 25.0}];
    [v8 closePath];
    [v8 bounds];
    v13 = sub_100120414(v9, v10, v11, v12);
    CGAffineTransformMakeTranslation(&v20, -v13, -v14);
    [v8 applyTransform:&v20];
    v15 = qword_101A34D80;
    qword_101A34D80 = v8;

    v7 = qword_101A34D80;
  }

  v16 = [v7 copy];
  v17 = [UIPointerShape shapeWithPath:v16];

  height = [CRLCursor cursorWithShape:v17 activeScaledRect:x, y, width, height];
  [height setConstrainedAxes:3];

  return height;
}

+ (id)addPointCursorWithActiveScaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = qword_101A34D88;
  if (!qword_101A34D88)
  {
    v8 = +[UIBezierPath bezierPath];
    [v8 moveToPoint:{17.5, 8.0}];
    [v8 addCurveToPoint:8.0 controlPoint1:17.5 controlPoint2:{12.291914, 7.999999, 8.0, 12.284867}];
    [v8 addCurveToPoint:17.5 controlPoint1:27.0 controlPoint2:{8.0, 22.708087, 12.291914, 27.0}];
    [v8 addCurveToPoint:27.0 controlPoint1:17.5 controlPoint2:{22.715134, 27.0, 27.0, 22.708086}];
    [v8 addCurveToPoint:17.5 controlPoint1:8.0 controlPoint2:{27.000001, 12.284866, 22.715134, 8.0}];
    [v8 closePath];
    [v8 moveToPoint:{17.5, 12.90625}];
    [v8 addCurveToPoint:18.46875 controlPoint1:? controlPoint2:?];
    [v8 addLineToPoint:{18.46875, 16.53125}];
    [v8 addLineToPoint:{21.125, 16.53125}];
    [v8 addCurveToPoint:22.125 controlPoint1:17.5 controlPoint2:{21.724038, 16.53125, 22.125, 16.915059}];
    [v8 addCurveToPoint:21.125 controlPoint1:18.46875 controlPoint2:{22.125, 18.070845, 21.709941, 18.46875}];
    [v8 addLineToPoint:{18.46875, 18.46875}];
    [v8 addLineToPoint:{18.46875, 21.0}];
    [v8 addCurveToPoint:17.5 controlPoint1:22.0 controlPoint2:{18.468749, 21.584938, 18.077893, 22.0}];
    [v8 addCurveToPoint:16.53125 controlPoint1:21.0 controlPoint2:{16.922105, 22.000001, 16.53125, 21.577893}];
    [v8 addLineToPoint:{16.53125, 18.46875}];
    [v8 addLineToPoint:{13.875, 18.46875}];
    [v8 addCurveToPoint:12.84375 controlPoint1:17.5 controlPoint2:{13.290059, 18.468751, 12.84375, 18.070846}];
    [v8 addCurveToPoint:13.875 controlPoint1:16.53125 controlPoint2:{12.843751, 16.915059, 13.275964, 16.53125}];
    [v8 addLineToPoint:{16.53125, 16.53125}];
    [v8 addLineToPoint:{16.53125, 13.90625}];
    [v8 addCurveToPoint:17.5 controlPoint1:12.90625 controlPoint2:{16.531252, 13.32836, 16.922107, 12.90625}];
    [v8 closePath];
    [v8 bounds];
    v13 = sub_100120414(v9, v10, v11, v12);
    CGAffineTransformMakeTranslation(&v20, -v13, -v14);
    [v8 applyTransform:&v20];
    v15 = qword_101A34D88;
    qword_101A34D88 = v8;

    v7 = qword_101A34D88;
  }

  v16 = [v7 copy];
  v17 = [UIPointerShape shapeWithPath:v16];

  height = [CRLCursor cursorWithShape:v17 activeScaledRect:x, y, width, height];

  return height;
}

+ (id)tableResizeCursorForOrientation:(int)orientation activeScaledRect:(CGRect)rect
{
  if (orientation < 2)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    v13 = qword_101A34D90;
    if (!qword_101A34D90)
    {
      v14 = [NSMutableArray arrayWithCapacity:2];
      v15 = +[UIBezierPath bezierPath];
      [v15 moveToPoint:{17.5, 8.0}];
      [v15 addCurveToPoint:16.0 controlPoint1:9.5 controlPoint2:{16.671572, 8.000001, 16.0, 8.671573}];
      [v15 addLineToPoint:{16.0, 24.5}];
      [v15 addCurveToPoint:17.5 controlPoint1:26.0 controlPoint2:{16.0, 25.328428, 16.671573, 26.0}];
      [v15 addCurveToPoint:19.0 controlPoint1:24.5 controlPoint2:{18.328428, 26.000002, 19.0, 25.328427}];
      [v15 addLineToPoint:{19.0, 9.5}];
      [v15 addCurveToPoint:17.5 controlPoint1:8.0 controlPoint2:{19.0, 8.671573, 18.328427, 8.0}];
      [v15 closePath];
      [v15 moveToPoint:{12.0, 10.5}];
      [v15 addLineToPoint:{2.0, 17.0}];
      [v15 addLineToPoint:{12.0, 23.5}];
      [v15 addLineToPoint:{12.0, 10.5}];
      [v15 closePath];
      [v15 moveToPoint:{23.0, 10.5}];
      [v15 addLineToPoint:{23.0, 23.5}];
      [v15 addLineToPoint:{33.0, 17.0}];
      [v15 addLineToPoint:{23.0, 10.5}];
      [v15 closePath];
      CGAffineTransformMakeTranslation(&v23, -17.5, -17.5);
      [v15 applyTransform:&v23];
      v16 = [v15 copy];
      [v14 setObject:v16 atIndexedSubscript:0];

      v17 = [v15 copy];
      CGAffineTransformMakeRotation(&v23, 1.57079633);
      [v17 applyTransform:&v23];
      v18 = [v17 copy];
      [v14 setObject:v18 atIndexedSubscript:1];

      v19 = [NSArray arrayWithArray:v14];
      v20 = qword_101A34D90;
      qword_101A34D90 = v19;

      v13 = qword_101A34D90;
    }

    v5 = [v13 objectAtIndexedSubscript:orientation];
    v21 = [v5 copy];
    v6 = [UIPointerShape shapeWithPath:v21];

    height = [CRLCursor cursorWithShape:v6 activeScaledRect:x, y, width, height];
  }

  else
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:rect.origin.x];
    if (qword_101AD5A10 != -1)
    {
      sub_1013630AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013630C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363150();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCursor tableResizeCursorForOrientation:activeScaledRect:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCursor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:554 isFatal:0 description:"Asking for invalid cursor type"];
    height = 0;
  }

  return height;
}

+ (CRLCursor)repContentPlatformViewPlaceholder
{
  if (qword_101A34DA0 != -1)
  {
    sub_101363178();
  }

  v3 = qword_101A34D98;

  return v3;
}

- (id)initRepContentPlatformViewPlaceholder
{
  v3.receiver = self;
  v3.super_class = CRLCursor;
  return [(CRLCursor *)&v3 init];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(CRLCursor *)self activeScaledRect];
  v5 = NSStringFromCGRect(v12);
  effect = [(CRLCursor *)self effect];
  shape = [(CRLCursor *)self shape];
  identifierSuffix = [(CRLCursor *)self identifierSuffix];
  v9 = [NSString stringWithFormat:@"<%@ %p activeScaledRect=%@ effect=%@ shape=%@ identifierSuffix=%@ constrainedAxes=%lu>", v4, self, v5, effect, shape, identifierSuffix, [(CRLCursor *)self constrainedAxes]];

  return v9;
}

- (CGRect)activeScaledRect
{
  x = self->_activeScaledRect.origin.x;
  y = self->_activeScaledRect.origin.y;
  width = self->_activeScaledRect.size.width;
  height = self->_activeScaledRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end