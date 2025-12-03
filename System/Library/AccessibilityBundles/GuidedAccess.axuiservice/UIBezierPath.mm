@interface UIBezierPath
+ (UIBezierPath)bezierPathWithPoints:(id)points;
+ (id)smoothPathForFingerPath:(id)path;
+ (void)_enumerateShapeRecognizersUsingBlock:(id)block;
+ (void)_enumerateShapeSimplifiersUsingBlock:(id)block;
+ (void)_enumerateShapeSmoothersUsingBlock:(id)block;
- (BOOL)_gaxIsSimpleRectangle;
- (BOOL)containsPath:(id)path withMarginOfError:(double)error;
- (BOOL)intersectsPath:(id)path;
- (BOOL)isEqualPoints:(id)points;
- (CGPoint)_pointOnPathAtIntersectionOfCenterAndPoint:(CGPoint)point;
- (CGPoint)bottomLeftPoint;
- (CGPoint)bottomLeftPointOnPath;
- (CGPoint)bottomRightPoint;
- (CGPoint)bottomRightPointOnPath;
- (CGPoint)boundsCenter;
- (CGPoint)topLeftPoint;
- (CGPoint)topLeftPointOnPath;
- (CGPoint)topRightPoint;
- (CGPoint)topRightPointOnPath;
- (UIBezierPath)bezierPathWithUniformInset:(double)inset;
- (double)distanceFromStartingPointForPointWithElementIndex:(unint64_t)index;
- (double)length;
- (id)_gaxPathContext;
- (id)bezierPathByApplyingTransformation:(id)transformation;
- (id)bezierPathConstrainedToFrame:(CGRect)frame;
- (id)description;
- (id)equivalentPathForDirection:(int)direction;
- (id)equivalentPathStartingWithElementAtIndex:(unint64_t)index;
- (id)equivalentPathStartingWithFirstElementMatchingCondition:(id)condition;
- (int)direction;
- (unint64_t)numberOfElements;
- (void)_gaxSetSimpleRectangle:(BOOL)rectangle;
- (void)appendElementOfType:(int)type withSinglePoint:(CGPoint)point;
- (void)copyBezierPathPointsExcludingControlPoints;
- (void)enumerateElementsUsingBlock:(id)block;
- (void)enumerateLinePointsContextsUsingBlock:(id)block;
- (void)enumerateLineSegmentContextsUsingBlock:(id)block;
@end

@implementation UIBezierPath

+ (void)_enumerateShapeSimplifiersUsingBlock:(id)block
{
  v6 = 0;
  blockCopy = block;
  v5 = objc_opt_class();
  (*(block + 2))(blockCopy, v5, &v6);
}

+ (void)_enumerateShapeRecognizersUsingBlock:(id)block
{
  blockCopy = block;
  v6 = 0;
  v4 = objc_opt_class();
  blockCopy[2](blockCopy, v4, &v6);
  if ((v6 & 1) == 0)
  {
    v5 = objc_opt_class();
    blockCopy[2](blockCopy, v5, &v6);
  }
}

+ (void)_enumerateShapeSmoothersUsingBlock:(id)block
{
  v6 = 0;
  blockCopy = block;
  v5 = objc_opt_class();
  (*(block + 2))(blockCopy, v5, &v6);
}

+ (id)smoothPathForFingerPath:(id)path
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1AD30;
  v26 = sub_1AD40;
  pathCopy = path;
  v27 = pathCopy;
  v5 = objc_autoreleasePoolPush();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1AD48;
  v21[3] = &unk_5D818;
  v21[4] = &v22;
  [self _enumerateShapeSimplifiersUsingBlock:v21];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_1AD30;
  v19[4] = sub_1AD40;
  v20 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1AD30;
  v16 = sub_1AD40;
  v17 = v23[5];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1ADC0;
  v10[3] = &unk_5D868;
  v10[4] = &v22;
  v10[5] = v19;
  v10[6] = v18;
  v10[7] = &v12;
  v10[8] = v11;
  [self _enumerateShapeRecognizersUsingBlock:v10];
  v6 = v13[5];
  if (v6 && v6 != v23[5])
  {
    objc_storeStrong(v23 + 5, v6);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B108;
  v9[3] = &unk_5D818;
  v9[4] = &v22;
  [self _enumerateShapeSmoothersUsingBlock:v9];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v19, 8);

  objc_autoreleasePoolPop(v5);
  v7 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v7;
}

+ (UIBezierPath)bezierPathWithPoints:(id)points
{
  pointsCopy = points;
  v4 = +[UIBezierPath bezierPath];
  if (pointsCopy)
  {
    [pointsCopy CGPointValue];
    [v4 moveToPoint:?];
    v10 = &v13;
    v5 = v12;
    if (v5)
    {
      v6 = v5;
      do
      {
        [v6 CGPointValue];
        [v4 addLineToPoint:?];
        v7 = v10++;
        v8 = *v7;

        v6 = v8;
      }

      while (v8);
    }

    [v4 closePath];
  }

  return v4;
}

- (CGPoint)boundsCenter
{
  [(UIBezierPath *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (unint64_t)numberOfElements
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_27DB4;
  v4[3] = &unk_5DD00;
  v4[4] = &v5;
  [(UIBezierPath *)self enumerateElementsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)enumerateElementsUsingBlock:(id)block
{
  selfCopy = self;
  blockCopy = block;
  [(UIBezierPath *)self CGPath];
  AX_CGPathEnumerateElementsUsingBlock();
}

- (CGPoint)topLeftPoint
{
  [(UIBezierPath *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MinX = CGRectGetMinX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MinY = CGRectGetMinY(v11);
  v8 = MinX;
  result.y = MinY;
  result.x = v8;
  return result;
}

- (CGPoint)topRightPoint
{
  [(UIBezierPath *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MaxX = CGRectGetMaxX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MinY = CGRectGetMinY(v11);
  v8 = MaxX;
  result.y = MinY;
  result.x = v8;
  return result;
}

- (CGPoint)bottomRightPoint
{
  [(UIBezierPath *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MaxX = CGRectGetMaxX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MaxY = CGRectGetMaxY(v11);
  v8 = MaxX;
  result.y = MaxY;
  result.x = v8;
  return result;
}

- (CGPoint)bottomLeftPoint
{
  [(UIBezierPath *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MinX = CGRectGetMinX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MaxY = CGRectGetMaxY(v11);
  v8 = MinX;
  result.y = MaxY;
  result.x = v8;
  return result;
}

- (CGPoint)topLeftPointOnPath
{
  [(UIBezierPath *)self topLeftPoint];

  [(UIBezierPath *)self _pointOnPathAtIntersectionOfCenterAndPoint:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)topRightPointOnPath
{
  [(UIBezierPath *)self topRightPoint];

  [(UIBezierPath *)self _pointOnPathAtIntersectionOfCenterAndPoint:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)bottomRightPointOnPath
{
  [(UIBezierPath *)self bottomRightPoint];

  [(UIBezierPath *)self _pointOnPathAtIntersectionOfCenterAndPoint:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)bottomLeftPointOnPath
{
  [(UIBezierPath *)self bottomLeftPoint];

  [(UIBezierPath *)self _pointOnPathAtIntersectionOfCenterAndPoint:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)length
{
  _gaxPathContext = [(UIBezierPath *)self _gaxPathContext];
  v3 = 0.0;
  if ([_gaxPathContext linePointsContexts])
  {
    Count = AXCArrayGetCount();
    if (Count)
    {
      v5 = Count - 1;
      if (Count - 1 >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      v3 = *(_AXCArrayGetUnderlyingArray() + 48 * v5 + 16);
    }
  }

  return v3;
}

- (double)distanceFromStartingPointForPointWithElementIndex:(unint64_t)index
{
  _gaxPathContext = [(UIBezierPath *)self _gaxPathContext];
  linePointsContexts = [_gaxPathContext linePointsContexts];
  linePointsIndicesPerElementIndices = [_gaxPathContext linePointsIndicesPerElementIndices];
  v7 = 0.0;
  if (linePointsContexts && linePointsIndicesPerElementIndices && AXCArrayGetCount() > index)
  {
    if (AXCArrayGetCount() <= index)
    {
      AXCArrayGetCount();
      _AXAssert();
    }

    v8 = *(_AXCArrayGetUnderlyingArray() + 8 * index);
    if (v8 < AXCArrayGetCount())
    {
      if (v8 >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      v7 = *(_AXCArrayGetUnderlyingArray() + 48 * v8 + 16);
    }
  }

  return v7;
}

- (BOOL)containsPath:(id)path withMarginOfError:(double)error
{
  pathCopy = path;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (error == 0.0 && -[UIBezierPath _gaxIsSimpleRectangle](self, "_gaxIsSimpleRectangle") && [pathCopy _gaxIsSimpleRectangle])
  {
    [(UIBezierPath *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [pathCopy bounds];
    v27.origin.x = v15;
    v27.origin.y = v16;
    v27.size.width = v17;
    v27.size.height = v18;
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    v19 = CGRectContainsRect(v26, v27);
    *(v23 + 24) = v19;
  }

  else
  {
    *(v23 + 24) = 1;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_28400;
    v21[3] = &unk_5DD28;
    *&v21[6] = error;
    v21[4] = self;
    v21[5] = &v22;
    [pathCopy enumerateElementsUsingBlock:v21];
    v19 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);

  return v19 & 1;
}

- (BOOL)intersectsPath:(id)path
{
  pathCopy = path;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (-[UIBezierPath _gaxIsSimpleRectangle](self, "_gaxIsSimpleRectangle") && [pathCopy _gaxIsSimpleRectangle])
  {
    [(UIBezierPath *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [pathCopy bounds];
    v29.origin.x = v13;
    v29.origin.y = v14;
    v29.size.width = v15;
    v29.size.height = v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v17 = CGRectIntersectsRect(v28, v29);
    *(v25 + 24) = v17;
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_286A8;
    v21[3] = &unk_5DD50;
    v18 = pathCopy;
    v22 = v18;
    v23 = &v24;
    [(UIBezierPath *)self enumerateElementsUsingBlock:v21];
    if ((v25[3] & 1) == 0)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_286FC;
      v20[3] = &unk_5DD50;
      v20[4] = self;
      v20[5] = &v24;
      [v18 enumerateElementsUsingBlock:v20];
    }

    v17 = *(v25 + 24);
  }

  _Block_object_dispose(&v24, 8);

  return v17 & 1;
}

- (int)direction
{
  selfCopy = self;
  [(UIBezierPath *)self boundsCenter];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_28824;
  v6[3] = &unk_5DD78;
  v6[4] = &v7;
  v6[5] = v3;
  v6[6] = v4;
  [(UIBezierPath *)selfCopy enumerateLineSegmentContextsUsingBlock:v6];
  LODWORD(selfCopy) = v8[3] < 0.0;
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (id)equivalentPathForDirection:(int)direction
{
  if ([(UIBezierPath *)self direction]== direction)
  {
    selfCopy = self;
  }

  else
  {
    v5 = AXCArrayCreate();
    v6 = AXCArrayCreate();
    v7 = v6;
    selfCopy = 0;
    if (v5 && v6)
    {
      selfCopy = +[UIBezierPath bezierPath];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_28B5C;
      v20[3] = &unk_5DDA0;
      v20[5] = v5;
      v20[6] = v7;
      v20[4] = &v21;
      [(UIBezierPath *)self enumerateElementsUsingBlock:v20];
      v8 = v22[3];
      if (v8)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = -1;
        do
        {
          v13 = v8 + v12;
          if (v13 >= AXCArrayGetCount())
          {
            AXCArrayGetCount();
            _AXAssert();
          }

          v14 = *(_AXCArrayGetUnderlyingArray() + 4 * v13);
          if (v13 >= AXCArrayGetCount())
          {
            AXCArrayGetCount();
            _AXAssert();
          }

          UnderlyingArray = _AXCArrayGetUnderlyingArray();
          if (v14 == 4)
          {
            v10 = 1;
          }

          else
          {
            v16 = (UnderlyingArray + 16 * v13);
            v17 = *v16;
            v18 = v16[1];
            if (v14 == 1)
            {
              [(UIBezierPath *)selfCopy appendElementOfType:(v9 & 1) == 0 withSinglePoint:v17, v18];
              v9 = 0;
            }

            else if (!v14)
            {
              [(UIBezierPath *)selfCopy appendElementOfType:1 withSinglePoint:v17, v18];
              if (v10)
              {
                [(UIBezierPath *)selfCopy closePath];
              }

              v10 = 0;
              v9 = 1;
            }
          }

          ++v11;
          v8 = v22[3];
          --v12;
        }

        while (v11 < v8);
      }

      _Block_object_dispose(&v21, 8);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return selfCopy;
}

- (UIBezierPath)bezierPathWithUniformInset:(double)inset
{
  if ([(UIBezierPath *)self _gaxIsSimpleRectangle])
  {
    [(UIBezierPath *)self bounds];
    v12 = CGRectInset(v11, inset, inset);
    v5 = [UIBezierPath bezierPathWithRect:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  }

  else
  {
    [(UIBezierPath *)self boundsCenter];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_28CF4;
    v9[3] = &unk_5DDC0;
    v9[4] = v6;
    v9[5] = v7;
    *&v9[6] = inset;
    v5 = [(UIBezierPath *)self bezierPathByApplyingTransformation:v9];
  }

  return v5;
}

- (id)bezierPathByApplyingTransformation:(id)transformation
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_28E3C;
  v9[3] = &unk_5DDE8;
  transformationCopy = transformation;
  v4 = objc_opt_new();
  v10 = v4;
  v5 = transformationCopy;
  [(UIBezierPath *)self enumerateElementsUsingBlock:v9];
  v6 = v10;
  v7 = v4;

  return v4;
}

- (id)equivalentPathStartingWithElementAtIndex:(unint64_t)index
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_29054;
  v14[3] = &unk_5DE10;
  v16 = v18;
  indexCopy = index;
  v5 = objc_opt_new();
  v15 = v5;
  [(UIBezierPath *)self enumerateElementsUsingBlock:v14];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_29114;
  v10[3] = &unk_5DE10;
  v12 = v18;
  indexCopy2 = index;
  v6 = v5;
  v11 = v6;
  [(UIBezierPath *)self enumerateElementsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  _Block_object_dispose(v18, 8);

  return v8;
}

- (id)equivalentPathStartingWithFirstElementMatchingCondition:(id)condition
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_29320;
  v10 = &unk_5DE38;
  conditionCopy = condition;
  v11 = conditionCopy;
  v12 = &v13;
  [(UIBezierPath *)self enumerateElementsUsingBlock:&v7];
  if (v14[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(UIBezierPath *)self equivalentPathStartingWithElementAtIndex:v7, v8, v9, v10];
  }

  _Block_object_dispose(&v13, 8);

  return v5;
}

- (id)bezierPathConstrainedToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIBezierPath *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  v86.origin.x = v9;
  v86.origin.y = v11;
  v86.size.width = v13;
  v86.size.height = v15;
  if (CGRectContainsRect(v76, v86))
  {
    selfCopy = self;
LABEL_3:
    v17 = selfCopy;
    goto LABEL_16;
  }

  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v87.origin.x = v9;
  v87.origin.y = v11;
  v87.size.width = v13;
  v87.size.height = v15;
  if (!CGRectIntersectsRect(v77, v87))
  {
    v17 = 0;
    goto LABEL_16;
  }

  if ([(UIBezierPath *)self _gaxIsSimpleRectangle])
  {
    v78.origin.x = v9;
    v78.origin.y = v11;
    v78.size.width = v13;
    v78.size.height = v15;
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    v79 = CGRectIntersection(v78, v88);
    selfCopy = [UIBezierPath bezierPathWithRect:v79.origin.x, v79.origin.y, v79.size.width, v79.size.height];
    goto LABEL_3;
  }

  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  MidX = CGRectGetMidX(v80);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  MidY = CGRectGetMidY(v81);
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  MaxX = CGRectGetMaxX(v83);
  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  MinY = CGRectGetMinY(v84);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  MaxY = CGRectGetMaxY(v85);
  v38 = MidX;
  GAX_CGPointGetAngleFormedBySegmentToPoint(MidX, MidY, MinX);
  v37 = v21;
  GAX_CGPointGetAngleFormedBySegmentToPoint(MidX, MidY, MaxX);
  v35 = v22;
  GAX_CGPointGetAngleFormedBySegmentToPoint(MidX, MidY, MaxX);
  v24 = v23;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v38, MidY, MinX);
  v74[0] = 1;
  v74[1] = v37;
  v74[2] = v35;
  v74[3] = 2;
  v74[4] = v35;
  v74[5] = v24;
  v74[6] = 3;
  v74[7] = v24;
  v74[8] = v25;
  v74[9] = 4;
  v74[10] = v25;
  v74[11] = 0x400921FB54442D18;
  v74[12] = 4;
  v74[13] = 0xC00921FB54442D18;
  v74[14] = v37;
  v73[0] = 1;
  *&v73[1] = MinX;
  *&v73[2] = MinY;
  *&v73[3] = MaxX;
  *&v73[4] = MinY;
  v73[5] = 2;
  *&v73[6] = MaxX;
  *&v73[7] = MinY;
  *&v73[8] = MaxX;
  *&v73[9] = MaxY;
  v73[10] = 3;
  *&v73[11] = MaxX;
  *&v73[12] = MaxY;
  *&v73[13] = MinX;
  *&v73[14] = MaxY;
  v73[15] = 4;
  *&v73[16] = MinX;
  *&v73[17] = MaxY;
  *&v73[18] = MinX;
  *&v73[19] = MinY;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_29A98;
  v72[3] = &unk_5DE58;
  v72[4] = 4;
  v72[5] = v73;
  v26 = objc_retainBlock(v72);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_29BB0;
  v71[3] = &unk_5DE78;
  *&v71[4] = v38;
  *&v71[5] = MidY;
  v71[6] = 5;
  v71[7] = v74;
  v27 = objc_retainBlock(v71);
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_29C28;
  v70[3] = &unk_5DE98;
  v70[4] = 4;
  v70[5] = v73;
  v28 = objc_retainBlock(v70);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_29CC8;
  v69[3] = &unk_5DEB8;
  *&v69[4] = x;
  *&v69[5] = y;
  *&v69[6] = width;
  *&v69[7] = height;
  v29 = [(UIBezierPath *)self equivalentPathStartingWithFirstElementMatchingCondition:v69];
  v30 = AXCArrayCreate();
  v31 = v30;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v68[3] = 0;
  if (v29 && v30)
  {
    v32 = objc_opt_new();
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3010000000;
    v66[3] = &unk_545BF;
    v67 = CGPointZero;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3010000000;
    v64[3] = &unk_545BF;
    v65 = v67;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2020000000;
    v63 = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v61[3] = 1;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_29CE8;
    v41[3] = &unk_5DEE0;
    v46 = v66;
    v47 = v64;
    v33 = v32;
    v52 = x;
    v53 = y;
    v54 = width;
    v55 = height;
    v42 = v33;
    v48 = v62;
    v49 = &v57;
    v43 = v26;
    v44 = v27;
    v50 = v61;
    v51 = v68;
    v56 = v31;
    v45 = v28;
    [v29 enumerateElementsUsingBlock:v41];
    if ((v58[3] & 1) == 0)
    {
      [(UIBezierPath *)v33 closePath];
    }

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(v61, 8);
    _Block_object_dispose(v62, 8);
    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v66, 8);
    goto LABEL_14;
  }

  v33 = 0;
  v17 = 0;
  if (v30)
  {
LABEL_14:
    CFRelease(v31);
    v17 = v33;
  }

  _Block_object_dispose(v68, 8);

LABEL_16:

  return v17;
}

- (void)enumerateLinePointsContextsUsingBlock:(id)block
{
  blockCopy = block;
  _gaxPathContext = [(UIBezierPath *)self _gaxPathContext];
  if ([_gaxPathContext linePointsContexts])
  {
    Count = AXCArrayGetCount();
    if (Count)
    {
      v7 = Count;
      v8 = Count - 1;
      if (Count - 1 >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      if (*(_AXCArrayGetUnderlyingArray() + 48 * v8 + 16) > 0.0)
      {
        v9 = 0;
        v10 = 0;
        v17 = 0;
        do
        {
          if (v10 >= AXCArrayGetCount())
          {
            AXCArrayGetCount();
            _AXAssert();
          }

          UnderlyingArray = _AXCArrayGetUnderlyingArray();
          v12 = *(UnderlyingArray + v9 + 32);
          v15 = *(UnderlyingArray + v9 + 16);
          v16 = v12;
          v13 = blockCopy[2];
          v14[0] = *(UnderlyingArray + v9);
          v14[1] = v15;
          v14[2] = v12;
          v14[3] = v14[0];
          v13(blockCopy, v14, v10++, &v17);
          if (v10 >= v7)
          {
            break;
          }

          v9 += 48;
        }

        while ((v17 & 1) == 0);
      }
    }
  }
}

- (void)enumerateLineSegmentContextsUsingBlock:(id)block
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x5010000000;
  v9[3] = &unk_545BF;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2A458;
  v5[3] = &unk_5DF08;
  v7 = v9;
  blockCopy = block;
  v6 = blockCopy;
  v8 = v13;
  [(UIBezierPath *)self enumerateLinePointsContextsUsingBlock:v5];

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v13, 8);
}

- (void)appendElementOfType:(int)type withSinglePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (type != 1)
  {
    if (type)
    {
      return;
    }

    goto LABEL_5;
  }

  if ([(UIBezierPath *)self isEmpty])
  {
LABEL_5:

    [(UIBezierPath *)self moveToPoint:x, y];
    return;
  }

  [(UIBezierPath *)self addLineToPoint:x, y];
}

- (void)copyBezierPathPointsExcludingControlPoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = AXCArrayCreate();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2A6C4;
  v5[3] = &unk_5DD00;
  v5[4] = &v6;
  [(UIBezierPath *)self enumerateElementsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)description
{
  copyBezierPathPointsExcludingControlPoints = [(UIBezierPath *)self copyBezierPathPointsExcludingControlPoints];
  AXCArraySort();
  v14.receiver = self;
  v14.super_class = UIBezierPath;
  v4 = [(UIBezierPath *)&v14 description];
  v5 = [NSMutableString stringWithString:v4];

  Count = AXCArrayGetCount();
  if (Count)
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      if (i >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        v13 = i;
        _AXAssert();
      }

      UnderlyingArray = _AXCArrayGetUnderlyingArray();
      if (i)
      {
        v11 = @", (%.1f, %.1f)";
      }

      else
      {
        v11 = @" Point(s): (%.1f, %.1f)";
      }

      [v5 appendFormat:v11, *(UnderlyingArray + v8), *(UnderlyingArray + v8 + 8), v13];
      v8 += 16;
    }
  }

  CFRelease(copyBezierPathPointsExcludingControlPoints);

  return v5;
}

- (BOOL)isEqualPoints:(id)points
{
  pointsCopy = points;
  copyBezierPathPointsExcludingControlPoints = [(UIBezierPath *)self copyBezierPathPointsExcludingControlPoints];
  copyBezierPathPointsExcludingControlPoints2 = [pointsCopy copyBezierPathPointsExcludingControlPoints];
  Count = AXCArrayGetCount();
  v8 = AXCArrayGetCount();
  v9 = Count == v8;
  if (Count == v8 && (AXCArraySort(), AXCArraySort(), Count))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v11 >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      UnderlyingArray = _AXCArrayGetUnderlyingArray();
      v14 = *(UnderlyingArray + v10);
      v13 = *(UnderlyingArray + v10 + 8);
      if (v11 >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      v15 = _AXCArrayGetUnderlyingArray();
      if (v14 != *(v15 + v10) || v13 != *(v15 + v10 + 8))
      {
        break;
      }

      ++v11;
      v10 += 16;
      if (Count == v11)
      {
        goto LABEL_11;
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_11:
    CFRelease(copyBezierPathPointsExcludingControlPoints);
    CFRelease(copyBezierPathPointsExcludingControlPoints2);
  }

  return v9;
}

- (BOOL)_gaxIsSimpleRectangle
{
  v2 = objc_getAssociatedObject(self, &unk_42050);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)_gaxSetSimpleRectangle:(BOOL)rectangle
{
  v4 = [NSNumber numberWithBool:rectangle];
  objc_setAssociatedObject(self, &unk_42050, v4, &dword_0 + 1);
}

- (id)_gaxPathContext
{
  v3 = objc_getAssociatedObject(self, &unk_42051);
  lastSeenCGPath = [(GAXPathContext *)v3 lastSeenCGPath];
  cGPath = [(UIBezierPath *)self CGPath];
  if (lastSeenCGPath == cGPath)
  {
    v6 = v3;
  }

  else
  {
    v6 = [[GAXPathContext alloc] initWithLastSeenCGPath:cGPath];

    if (v6)
    {
      [(UIBezierPath *)self boundsCenter];
      v8 = v7;
      v10 = v9;
      linePointsContexts = [(GAXPathContext *)v6 linePointsContexts];
      linePointsIndicesPerElementIndices = [(GAXPathContext *)v6 linePointsIndicesPerElementIndices];
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v26[3] = 0;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x3010000000;
      v24[3] = &unk_545BF;
      v25 = CGPointZero;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_2AE14;
      v23[3] = &unk_5DF90;
      v23[4] = v26;
      v23[5] = v24;
      v23[6] = v8;
      v23[7] = v10;
      v23[8] = linePointsContexts;
      v23[9] = linePointsIndicesPerElementIndices;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3010000000;
      v21[3] = &unk_545BF;
      v22 = v25;
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x2020000000;
      v20 = 0;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_2AF2C;
      v15[3] = &unk_5DFB8;
      v13 = objc_retainBlock(v23);
      v16 = v13;
      v17 = v21;
      v18 = v19;
      [(UIBezierPath *)self enumerateElementsUsingBlock:v15];
      objc_setAssociatedObject(self, &unk_42051, v6, &dword_0 + 1);

      _Block_object_dispose(v19, 8);
      _Block_object_dispose(v21, 8);

      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v26, 8);
    }
  }

  return v6;
}

- (CGPoint)_pointOnPathAtIntersectionOfCenterAndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIBezierPath *)self boundsCenter];
  v5 = v4;
  v7 = v6;
  GAX_CGPointGetAngleFormedBySegmentToPoint(v4, v6, x);
  v32 = 0;
  v33 = &v32;
  v34 = 0x9810000000;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = &unk_545BF;
  v43 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_2B26C;
  v19[3] = &unk_5DFE0;
  *&v19[8] = x;
  *&v19[9] = y;
  v15 = v8;
  *&v19[10] = v8;
  *&v19[11] = v5;
  *&v19[12] = v7;
  v19[4] = &v32;
  v19[5] = &v24;
  v19[6] = &v20;
  v19[7] = &v28;
  [(UIBezierPath *)self enumerateLineSegmentContextsUsingBlock:v19];
  if (*(v29 + 24) == 1)
  {
    v9 = v25[3];
    v10 = v33[2];
    v11 = vdivq_f64(vsubq_f64(v33[5], v10), vdupq_lane_s64(COERCE__INT64(v21[3] - v9), 0));
    v18 = vmlaq_n_f64(vmlsq_lane_f64(v10, v11, v9, 0), v11, v15);
  }

  else
  {
    v12.f64[0] = x;
    v12.f64[1] = y;
    v18 = v12;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  v14 = v18.f64[1];
  v13 = v18.f64[0];
  result.y = v14;
  result.x = v13;
  return result;
}

@end