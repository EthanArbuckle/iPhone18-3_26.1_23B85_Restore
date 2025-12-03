@interface AKRoundedPath
+ (id)pathWithEllipseInRect:(CGRect)rect;
+ (id)pathWithRect:(CGRect)rect;
+ (id)pathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius;
- (AKRoundedPath)initWithPoints:(CGPoint *)points count:(int64_t)count;
- (AKRoundedPath)initWithRect:(CGRect)rect cornerRadii:(id)radii smoothPillShapes:(BOOL)shapes;
- (CGRect)boundingRect;
- (void)addContinuousCornerToPath:(CGPath *)path trueCorner:(CGPoint)corner cornerRadius:(CGSize)radius corners:(unint64_t)corners portion:(unint64_t)portion clockwise:(BOOL)clockwise fullRadius:(BOOL)fullRadius;
- (void)addLineToPointX:(double)x y:(double)y;
@end

@implementation AKRoundedPath

+ (id)pathWithRect:(CGRect)rect
{
  v16[8] = *MEMORY[0x277D85DE8];
  rect = rect;
  selfCopy = self;
  v13[5] = a2;
  v13[4] = COERCE_ID(CGRectGetMinX(rect));
  v13[3] = COERCE_ID(CGRectGetMinY(rect));
  v13[2] = COERCE_ID(CGRectGetMaxX(rect));
  v13[1] = COERCE_ID(CGRectGetMaxY(rect));
  CGPointMake();
  v16[0] = v3;
  v16[1] = v4;
  CGPointMake();
  v16[2] = v5;
  v16[3] = v6;
  CGPointMake();
  v16[4] = v7;
  v16[5] = v8;
  CGPointMake();
  v16[6] = v9;
  v16[7] = v10;
  v13[0] = [[selfCopy alloc] initWithPoints:v16 count:4];
  [v13[0] closeSubpath];
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)pathWithEllipseInRect:(CGRect)rect
{
  v3 = objc_alloc_init(self);

  return v3;
}

- (AKRoundedPath)initWithPoints:(CGPoint *)points count:(int64_t)count
{
  v13 = a2;
  pointsCopy = points;
  countCopy = count;
  v14 = 0;
  v10.receiver = self;
  v10.super_class = AKRoundedPath;
  v8 = [(AKRoundedPath *)&v10 init];
  v14 = v8;
  objc_storeStrong(&v14, v8);
  if (v8)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    points = v14->_points;
    v14->_points = v4;
    MEMORY[0x277D82BD8](points);
    for (i = 0; i < countCopy; ++i)
    {
      [(AKRoundedPath *)v14 addLineToPointX:pointsCopy[i].x y:pointsCopy[i].y];
    }
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (void)addLineToPointX:(double)x y:(double)y
{
  selfCopy = self;
  v5[3] = a2;
  v5[2] = *&x;
  v5[1] = *&y;
  v5[0] = [AKCurvePoint pointWithX:x y:y];
  points = [(AKRoundedPath *)selfCopy points];
  [(NSMutableArray *)points addObject:v5[0]];
  MEMORY[0x277D82BD8](points);
  objc_storeStrong(v5, 0);
}

- (CGRect)boundingRect
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26 = a2;
  v25 = 1.79769313e308;
  v24 = 1.79769313e308;
  v23 = 0.0;
  v22 = 0.0;
  memset(__b, 0, sizeof(__b));
  obj = [(AKRoundedPath *)selfCopy points];
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v19)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v19;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v16);
      [v21 x];
      if (v2 < v25)
      {
        [v21 x];
        v25 = v3;
      }

      [v21 x];
      if (v4 > v23)
      {
        [v21 x];
        v23 = v5;
      }

      [v21 y];
      if (v6 < v24)
      {
        [v21 y];
        v24 = v7;
      }

      [v21 y];
      if (v8 > v22)
      {
        [v21 y];
        v22 = v9;
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  CGRectMake();
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  *MEMORY[0x277D85DE8];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (id)pathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius
{
  v11[4] = *MEMORY[0x277D85DE8];
  rectCopy = rect;
  selfCopy = self;
  v8[4] = a2;
  v8[3] = *&radius;
  v8[1] = *&radius;
  v8[2] = *&radius;
  v8[0] = [MEMORY[0x277CCAE60] valueWithSize:{radius, radius}];
  v5 = [selfCopy alloc];
  v11[0] = v8[0];
  v11[1] = v8[0];
  v11[2] = v8[0];
  v11[3] = v8[0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v7 = [v5 initWithRect:rectCopy.origin.x cornerRadii:rectCopy.origin.y smoothPillShapes:{rectCopy.size.width, rectCopy.size.height}];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v8, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (AKRoundedPath)initWithRect:(CGRect)rect cornerRadii:(id)radii smoothPillShapes:(BOOL)shapes
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, radii);
  shapesCopy = shapes;
  Mutable = CGPathCreateMutable();
  v42 = [location[0] objectAtIndex:?];
  [v42 sizeValue];
  v89 = v5;
  v90 = v6;
  v41 = [location[0] objectAtIndex:0];
  [v41 sizeValue];
  v87 = v7;
  v88 = v8;
  CGSizeMake();
  v91 = v9;
  v92 = v10;
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  v44 = [location[0] objectAtIndex:?];
  [v44 sizeValue];
  v83 = v11;
  v84 = v12;
  v43 = [location[0] objectAtIndex:1];
  [v43 sizeValue];
  v81 = v13;
  v82 = v14;
  CGSizeMake();
  v85 = v15;
  v86 = v16;
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  v46 = [location[0] objectAtIndex:?];
  [v46 sizeValue];
  v77 = v17;
  v78 = v18;
  v45 = [location[0] objectAtIndex:3];
  [v45 sizeValue];
  v75 = v19;
  v76 = v20;
  CGSizeMake();
  v79 = v21;
  v80 = v22;
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  v48 = [location[0] objectAtIndex:?];
  [v48 sizeValue];
  v71 = v23;
  v72 = v24;
  v47 = [location[0] objectAtIndex:2];
  [v47 sizeValue];
  v69 = v25;
  v70 = v26;
  CGSizeMake();
  v73 = v27;
  v74 = v28;
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  v68 = 3;
  v67 = 3;
  v66 = 3;
  v65 = 3;
  v64 = 0;
  v63 = 0;
  if (v91 + v85 >= rectCopy.size.width)
  {
    v62 = rectCopy.size.width * 0.5;
    v91 = rectCopy.size.width * 0.5;
    v85 = rectCopy.size.width * 0.5;
    v68 &= 1u;
    v67 &= 2u;
    v64 = 1;
  }

  if (v73 + v79 >= rectCopy.size.width)
  {
    v61 = rectCopy.size.width * 0.5;
    v73 = rectCopy.size.width * 0.5;
    v79 = rectCopy.size.width * 0.5;
    v65 &= 2u;
    v66 &= 1u;
    v64 = 1;
  }

  if (v92 + v74 >= rectCopy.size.height)
  {
    v60 = rectCopy.size.height * 0.5;
    v92 = rectCopy.size.height * 0.5;
    v74 = rectCopy.size.height * 0.5;
    v68 &= 2u;
    v65 &= 1u;
    v63 = 1;
  }

  if (v86 + v80 >= rectCopy.size.height)
  {
    v59 = rectCopy.size.height * 0.5;
    v86 = rectCopy.size.height * 0.5;
    v80 = rectCopy.size.height * 0.5;
    v67 &= 1u;
    v66 &= 2u;
    v63 = 1;
  }

  v39 = 0;
  if (!v68)
  {
    v39 = 0;
    if (!v67)
    {
      v39 = 0;
      if (!v66)
      {
        v39 = v65 == 0;
      }
    }
  }

  v58 = v39;
  if (v39 || !shapesCopy)
  {
    v64 = 0;
    v63 = 0;
  }

  CGRectGetMinX(rectCopy);
  CGRectGetMinY(rectCopy);
  CGPointMake();
  v56 = v29;
  y = v30;
  CGRectGetMaxX(rectCopy);
  CGRectGetMinY(rectCopy);
  CGPointMake();
  v54 = v31;
  v55 = v32;
  CGRectGetMinX(rectCopy);
  CGRectGetMaxY(rectCopy);
  CGPointMake();
  v52 = v33;
  v53 = v34;
  CGRectGetMaxX(rectCopy);
  CGRectGetMaxY(rectCopy);
  CGPointMake();
  x = v35;
  v51 = v36;
  if (v64)
  {
    v56 = v56 + v91 * 0.05;
    v54 = v54 - v85 * 0.05;
    v52 = v52 + v73 * 0.05;
    x = x - v79 * 0.05;
  }

  else if (v63)
  {
    y = y + v92 * 0.05;
    v55 = v55 + v86 * 0.05;
    v53 = v53 - v74 * 0.05;
    v51 = v51 - v80 * 0.05;
  }

  CGPathMoveToPoint(Mutable, 0, v56 + v91, y);
  CGPathAddLineToPoint(Mutable, 0, v54 - v85, v55);
  if (!__CGSizeEqualToSize(v85, v86, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:2 cornerRadius:v67 corners:0 portion:v58 clockwise:v54 fullRadius:{v55, v85, v86}];
  }

  CGPathAddLineToPoint(Mutable, 0, x, v51 - v80);
  if (!__CGSizeEqualToSize(v79, v80, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:8 cornerRadius:v66 corners:0 portion:v58 clockwise:x fullRadius:{v51, v79, v80}];
  }

  CGPathAddLineToPoint(Mutable, 0, v52 + v73, v53);
  if (!__CGSizeEqualToSize(v73, v74, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:4 cornerRadius:v65 corners:0 portion:v58 clockwise:v52 fullRadius:{v53, v73, v74}];
  }

  CGPathAddLineToPoint(Mutable, 0, v56, y + v92);
  if (!__CGSizeEqualToSize(v91, v92, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [selfCopy addContinuousCornerToPath:Mutable trueCorner:1 cornerRadius:v68 corners:0 portion:v58 clockwise:v56 fullRadius:{y, v91, v92}];
  }

  CGPathAddLineToPoint(Mutable, 0, v56 + v91, y);
  v49 = objc_alloc_init(AKRoundedPath);
  [(AKRoundedPath *)v49 setCGPath:Mutable];
  CGPathRelease(Mutable);
  v38 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v38;
}

- (void)addContinuousCornerToPath:(CGPath *)path trueCorner:(CGPoint)corner cornerRadius:(CGSize)radius corners:(unint64_t)corners portion:(unint64_t)portion clockwise:(BOOL)clockwise fullRadius:(BOOL)fullRadius
{
  cornerCopy = corner;
  radiusCopy = radius;
  selfCopy = self;
  v118 = a2;
  pathCopy = path;
  cornersCopy = corners;
  portionCopy = portion;
  clockwiseCopy = clockwise;
  fullRadiusCopy = fullRadius;
  v112 = 0.0;
  v111 = 50.0;
  width = radius.width;
  height = radius.height;
  if (radius.width >= radius.height)
  {
    v45 = height;
  }

  else
  {
    v45 = width;
  }

  v107 = v45;
  v110 = v45;
  v106 = v45;
  v105 = 1.0;
  if (!fullRadiusCopy)
  {
    v106 = v106 * 0.95;
    v105 = 0.980263;
  }

  v104 = v106 * (1.0 - v105);
  v103 = 0uLL;
  v103 = *MEMORY[0x277CBF348];
  switch(cornersCopy)
  {
    case 1uLL:
      v112 = 180.0;
      break;
    case 2uLL:
      v112 = 270.0;
      break;
    case 4uLL:
      v112 = 90.0;
      break;
    case 8uLL:
      v112 = 0.0;
      break;
  }

  if (portionCopy)
  {
    if (portionCopy == 1)
    {
      v111 = v111 + 20.0;
      v112 = v112 + 20.0;
      *&v103 = -v104;
    }

    else if (portionCopy == 2)
    {
      v111 = v111 + 20.0;
      *(&v103 + 1) = -v104;
    }

    else
    {
      v112 = v112 + 20.0;
      v106 = v106 / 1.528665;
    }
  }

  else
  {
    v111 = v111 + 40.0;
    *&v103 = -v104;
    *(&v103 + 1) = -v104;
  }

  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  *&v102 = _interiorPointForCorner(cornersCopy, *&v103);
  *(&v102 + 1) = v11;
  v103 = v102;
  v101 = 0.33 * v106 * 0.666666667;
  v100 = sqrtf(1.1089);
  v99 = v100 * v101;
  v98 = 0.33 * v101 / v100;
  v97 = v98 + v106 / v100;
  v96 = v97 * 0.67;
  v95 = v97 * 0.67 + v99 + v99 + v99 + v99;
  v94 = v97 * 0.67 + v99 + v99;
  v93 = v97 * 0.67 + v100 * v101;
  v92 = v97 * 0.67 + v98 * 0.33;
  v91 = v98;
  CGPointMake();
  v87 = v12;
  v88 = v13;
  v89 = _interiorPointForCorner(cornersCopy, v12);
  v90 = v14;
  CGPointMake();
  v83 = v15;
  v84 = v16;
  v85 = _interiorPointForCorner(cornersCopy, v15);
  v86 = v17;
  CGPointMake();
  v79 = v18;
  v80 = v19;
  v81 = _interiorPointForCorner(cornersCopy, v18);
  v82 = v20;
  CGPointMake();
  v75 = v21;
  v76 = v22;
  x = _interiorPointForCorner(cornersCopy, v21);
  y = v23;
  CGPointMake();
  v71 = v24;
  v72 = v25;
  cp2x = _interiorPointForCorner(cornersCopy, v24);
  cp2y = v26;
  CGPointMake();
  v67 = v27;
  v68 = v28;
  cp1x = _interiorPointForCorner(cornersCopy, v27);
  cp1y = v29;
  CGPointMake();
  v63 = v30;
  v64 = v31;
  v65 = _interiorPointForCorner(cornersCopy, v30);
  v66 = v32;
  CGPointMake();
  v59 = v33;
  v60 = v34;
  v61 = _interiorPointForCorner(cornersCopy, v33);
  v62 = v35;
  CGPointMake();
  v55 = v36;
  v56 = v37;
  v57 = _interiorPointForCorner(cornersCopy, v36);
  v58 = v38;
  CGPointMake();
  v51 = v39;
  v52 = v40;
  v53 = _interiorPointForCorner(cornersCopy, v39);
  v54 = v41;
  CGPointMake();
  v47 = v42;
  v48 = v43;
  v49 = _interiorPointForCorner(cornersCopy, v42);
  v50 = v44;
  memset(&__b, 0, sizeof(__b));
  CGAffineTransformMakeTranslation(&__b, *&v103, *(&v103 + 1));
  if (clockwiseCopy)
  {
    if (portionCopy)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, cp1x, cp1y, cp2x, cp2y, x, y);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v49, v50, v49, v50, v49, v50);
    }

    CGPathAddArc(pathCopy, &__b, v57, v58, v106 * v105, (v112 + v111) * 0.0174532925, v112 * 0.0174532925, 1);
    if ((portionCopy & 2) != 0)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, v85, v86, v89, v90, v61, v62);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v53, v54, v53, v54, v53, v54);
    }
  }

  else
  {
    if (portionCopy)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, v89, v90, v85, v86, v81, v82);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v53, v54, v53, v54, v53, v54);
    }

    CGPathAddArc(pathCopy, &__b, v57, v58, v106 * v105, v112 * 0.0174532925, (v112 + v111) * 0.0174532925, 0);
    if ((portionCopy & 2) != 0)
    {
      CGPathAddCurveToPoint(pathCopy, &__b, cp2x, cp2y, cp1x, cp1y, v65, v66);
    }

    else
    {
      CGPathAddCurveToPoint(pathCopy, 0, v49, v50, v49, v50, v49, v50);
    }
  }
}

@end