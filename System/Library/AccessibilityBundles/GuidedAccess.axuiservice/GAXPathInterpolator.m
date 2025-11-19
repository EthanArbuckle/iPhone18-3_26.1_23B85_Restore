@interface GAXPathInterpolator
- (CGPoint)_pointFromStartingPointAtDistance:(double)a3 inPath:(id)a4;
- (GAXPathInterpolator)init;
- (GAXPathInterpolator)initWithStartingPath:(id)a3 endingPath:(id)a4;
- (id)_enhancedByAddingPointsMatchingPath:(id)a3 originalPath:(id)a4;
- (id)interpolatedPathForProgress:(float)a3;
- (void)dealloc;
- (void)setInterpolationPathElementMappings:(void *)a3;
@end

@implementation GAXPathInterpolator

- (GAXPathInterpolator)init
{
  v4.receiver = self;
  v4.super_class = GAXPathInterpolator;
  v2 = [(GAXPathInterpolator *)&v4 init];
  if (v2)
  {
  }

  return 0;
}

- (GAXPathInterpolator)initWithStartingPath:(id)a3 endingPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GAXPathInterpolator;
  v8 = [(GAXPathInterpolator *)&v14 init];
  if (v8)
  {
    v9 = v8;
    [(GAXPathInterpolator *)v8 setStartingPath:v6];
    [(GAXPathInterpolator *)v9 setEndingPath:v7];
    v10 = AXCArrayCreate();
    [(GAXPathInterpolator *)v9 setInterpolationPathElementMappings:v10];
    if (([v6 isEmpty] & 1) == 0 && (v12 = objc_msgSend(v7, "isEmpty"), v10) && !v12 || (v9, v9 = 0, v11 = 0, v10))
    {
      CFRelease(v10);
      v11 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(GAXPathInterpolator *)self setInterpolationPathElementMappings:0];
  v3.receiver = self;
  v3.super_class = GAXPathInterpolator;
  [(GAXPathInterpolator *)&v3 dealloc];
}

- (void)setInterpolationPathElementMappings:(void *)a3
{
  interpolationPathElementMappings = self->_interpolationPathElementMappings;
  if (interpolationPathElementMappings != a3)
  {
    if (interpolationPathElementMappings)
    {
      CFRelease(interpolationPathElementMappings);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_interpolationPathElementMappings = v6;
  }
}

- (CGPoint)_pointFromStartingPointAtDistance:(double)a3 inPath:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = &unk_545BF;
  v18 = CGPointZero;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3010000000;
  v12[3] = &unk_545BF;
  v13 = v18;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_194B8;
  v10[3] = &unk_5D6E8;
  *&v10[7] = a3;
  v10[4] = v11;
  v10[5] = &v14;
  v10[6] = v12;
  [v5 enumerateLinePointsContextsUsingBlock:v10];
  v6 = v15[4];
  v7 = v15[5];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_enhancedByAddingPointsMatchingPath:(id)a3 originalPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x5010000000;
  v16[3] = &unk_545BF;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_196A8;
  v12[3] = &unk_5D738;
  v7 = objc_opt_new();
  v13 = v7;
  v15 = v16;
  v8 = v5;
  v14 = v8;
  [v6 enumerateLinePointsContextsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  _Block_object_dispose(v16, 8);

  return v10;
}

- (id)interpolatedPathForProgress:(float)a3
{
  v5 = [(GAXPathInterpolator *)self startingPath];
  v6 = [(GAXPathInterpolator *)self endingPath];
  context = objc_autoreleasePoolPush();
  v7 = [(GAXPathInterpolator *)self interpolationPathElementMappings];
  Count = AXCArrayGetCount();
  if (Count)
  {
    v9 = Count;
    v51 = v6;
  }

  else
  {
    v10 = [v6 equivalentPathForDirection:{objc_msgSend(v5, "direction")}];

    v11 = [(GAXPathInterpolator *)self _enhancedByAddingPointsMatchingPath:v10 originalPath:v5];
    v12 = [(GAXPathInterpolator *)self _enhancedByAddingPointsMatchingPath:v5 originalPath:v10];
    v13 = v11;

    v14 = v12;
    v67 = 0;
    v68 = &v67;
    v69 = 0x5010000000;
    v70 = &unk_545BF;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 1;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_19DAC;
    v62[3] = &unk_5D760;
    v62[4] = &v67;
    v62[5] = &v63;
    [v13 enumerateLinePointsContextsUsingBlock:v62];
    v15 = v14;
    if ((v64[3] & 1) == 0)
    {
      [v13 boundsCenter];
      v17 = v16;
      v19 = v18;
      [v14 boundsCenter];
      v21 = v20;
      v23 = v22;
      GAX_CGPointGetAngleFormedBySegmentToPoint(v17, v19, v68[4]);
      *(v68 + 7) = v24;
      v25 = AXCArrayCreate();
      v26 = v25;
      v15 = v14;
      if (v25)
      {
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_19DDC;
        v61[3] = &unk_5D788;
        v61[4] = &v67;
        v61[5] = v21;
        v61[6] = v23;
        v61[7] = v25;
        [v14 enumerateLineSegmentContextsUsingBlock:v61];
        v27 = AXCArrayGetCount();
        v15 = v14;
        if (v27)
        {
          v50 = v13;
          v52 = v14;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 1.79769313e308;
          do
          {
            if (v29 >= AXCArrayGetCount())
            {
              v48 = AXCArrayGetCount();
              v49 = v29;
              v47 = v26;
              _AXAssert();
            }

            UnderlyingArray = _AXCArrayGetUnderlyingArray();
            v33 = *(UnderlyingArray + v28 + 32);
            GAX_CGPointGetMiddleOfSegmentToPoint(*(UnderlyingArray + v28), *(UnderlyingArray + v28 + 8), *(UnderlyingArray + v28 + 48));
            AX_CGPointGetDistanceToPoint();
            if (v34 < v31)
            {
              v30 = v33;
              v31 = v34;
            }

            ++v29;
            v28 += 120;
          }

          while (v27 != v29);
          v35 = v31 >= 1.79769313e308 || v30 == 0;
          v13 = v50;
          v14 = v52;
          v15 = v52;
          if (!v35)
          {
            v15 = [v52 equivalentPathStartingWithElementAtIndex:v30];
          }
        }

        CFRelease(v26);
      }
    }

    [v13 length];
    v37 = v36;
    [v15 length];
    v39 = v38;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_19ED4;
    v54[3] = &unk_5D7B0;
    v5 = v13;
    v55 = v5;
    v56 = self;
    v58 = v37;
    v59 = v39;
    v40 = v15;
    v57 = v40;
    v60 = v7;
    [v5 enumerateElementsUsingBlock:v54];
    v9 = AXCArrayGetCount();
    v51 = v40;

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v67, 8);
  }

  v41 = objc_opt_new();
  if (v9)
  {
    v42 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (i >= AXCArrayGetCount())
      {
        AXCArrayGetCount();
        _AXAssert();
      }

      v44 = _AXCArrayGetUnderlyingArray();
      v45 = *(v44 + v42);
      if (v45 > 1)
      {
        if (v45 == 4)
        {
          [v41 closePath];
        }
      }

      else
      {
        [v41 appendElementOfType:v45 withSinglePoint:{GAX_CGPointGetInterpolatedPointInSegmentToPoint(*(v44 + v42 + 8), *(v44 + v42 + 16), *(v44 + v42 + 24), *(v44 + v42 + 32), a3)}];
      }

      v42 += 40;
    }
  }

  objc_autoreleasePoolPop(context);

  return v41;
}

@end