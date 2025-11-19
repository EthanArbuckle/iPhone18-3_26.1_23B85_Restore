@interface AKRoundedPath
+ (id)pathWithEllipseInRect:(CGRect)a3;
+ (id)pathWithRect:(CGRect)a3;
+ (id)pathWithRoundedRect:(CGRect)a3 cornerRadius:(double)a4;
- (AKRoundedPath)initWithPoints:(CGPoint *)a3 count:(int64_t)a4;
- (AKRoundedPath)initWithRect:(CGRect)a3 cornerRadii:(id)a4 smoothPillShapes:(BOOL)a5;
- (CGRect)boundingRect;
- (void)addContinuousCornerToPath:(CGPath *)a3 trueCorner:(CGPoint)a4 cornerRadius:(CGSize)a5 corners:(unint64_t)a6 portion:(unint64_t)a7 clockwise:(BOOL)a8 fullRadius:(BOOL)a9;
- (void)addLineToPointX:(double)a3 y:(double)a4;
@end

@implementation AKRoundedPath

+ (id)pathWithRect:(CGRect)a3
{
  v16[8] = *MEMORY[0x277D85DE8];
  rect = a3;
  v14 = a1;
  v13[5] = a2;
  v13[4] = COERCE_ID(CGRectGetMinX(a3));
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
  v13[0] = [[v14 alloc] initWithPoints:v16 count:4];
  [v13[0] closeSubpath];
  v12 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)pathWithEllipseInRect:(CGRect)a3
{
  v3 = objc_alloc_init(a1);

  return v3;
}

- (AKRoundedPath)initWithPoints:(CGPoint *)a3 count:(int64_t)a4
{
  v13 = a2;
  v12 = a3;
  v11 = a4;
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
    for (i = 0; i < v11; ++i)
    {
      [(AKRoundedPath *)v14 addLineToPointX:v12[i].x y:v12[i].y];
    }
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (void)addLineToPointX:(double)a3 y:(double)a4
{
  v6 = self;
  v5[3] = a2;
  v5[2] = *&a3;
  v5[1] = *&a4;
  v5[0] = [AKCurvePoint pointWithX:a3 y:a4];
  v4 = [(AKRoundedPath *)v6 points];
  [(NSMutableArray *)v4 addObject:v5[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v5, 0);
}

- (CGRect)boundingRect
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = self;
  v26 = a2;
  v25 = 1.79769313e308;
  v24 = 1.79769313e308;
  v23 = 0.0;
  v22 = 0.0;
  memset(__b, 0, sizeof(__b));
  obj = [(AKRoundedPath *)v27 points];
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

+ (id)pathWithRoundedRect:(CGRect)a3 cornerRadius:(double)a4
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v9 = a1;
  v8[4] = a2;
  v8[3] = *&a4;
  v8[1] = *&a4;
  v8[2] = *&a4;
  v8[0] = [MEMORY[0x277CCAE60] valueWithSize:{a4, a4}];
  v5 = [v9 alloc];
  v11[0] = v8[0];
  v11[1] = v8[0];
  v11[2] = v8[0];
  v11[3] = v8[0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v7 = [v5 initWithRect:v10.origin.x cornerRadii:v10.origin.y smoothPillShapes:{v10.size.width, v10.size.height}];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v8, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (AKRoundedPath)initWithRect:(CGRect)a3 cornerRadii:(id)a4 smoothPillShapes:(BOOL)a5
{
  v97 = a3;
  v96 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v94 = a5;
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
  if (v91 + v85 >= v97.size.width)
  {
    v62 = v97.size.width * 0.5;
    v91 = v97.size.width * 0.5;
    v85 = v97.size.width * 0.5;
    v68 &= 1u;
    v67 &= 2u;
    v64 = 1;
  }

  if (v73 + v79 >= v97.size.width)
  {
    v61 = v97.size.width * 0.5;
    v73 = v97.size.width * 0.5;
    v79 = v97.size.width * 0.5;
    v65 &= 2u;
    v66 &= 1u;
    v64 = 1;
  }

  if (v92 + v74 >= v97.size.height)
  {
    v60 = v97.size.height * 0.5;
    v92 = v97.size.height * 0.5;
    v74 = v97.size.height * 0.5;
    v68 &= 2u;
    v65 &= 1u;
    v63 = 1;
  }

  if (v86 + v80 >= v97.size.height)
  {
    v59 = v97.size.height * 0.5;
    v86 = v97.size.height * 0.5;
    v80 = v97.size.height * 0.5;
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
  if (v39 || !v94)
  {
    v64 = 0;
    v63 = 0;
  }

  CGRectGetMinX(v97);
  CGRectGetMinY(v97);
  CGPointMake();
  v56 = v29;
  y = v30;
  CGRectGetMaxX(v97);
  CGRectGetMinY(v97);
  CGPointMake();
  v54 = v31;
  v55 = v32;
  CGRectGetMinX(v97);
  CGRectGetMaxY(v97);
  CGPointMake();
  v52 = v33;
  v53 = v34;
  CGRectGetMaxX(v97);
  CGRectGetMaxY(v97);
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
    [v96 addContinuousCornerToPath:Mutable trueCorner:2 cornerRadius:v67 corners:0 portion:v58 clockwise:v54 fullRadius:{v55, v85, v86}];
  }

  CGPathAddLineToPoint(Mutable, 0, x, v51 - v80);
  if (!__CGSizeEqualToSize(v79, v80, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [v96 addContinuousCornerToPath:Mutable trueCorner:8 cornerRadius:v66 corners:0 portion:v58 clockwise:x fullRadius:{v51, v79, v80}];
  }

  CGPathAddLineToPoint(Mutable, 0, v52 + v73, v53);
  if (!__CGSizeEqualToSize(v73, v74, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [v96 addContinuousCornerToPath:Mutable trueCorner:4 cornerRadius:v65 corners:0 portion:v58 clockwise:v52 fullRadius:{v53, v73, v74}];
  }

  CGPathAddLineToPoint(Mutable, 0, v56, y + v92);
  if (!__CGSizeEqualToSize(v91, v92, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)))
  {
    [v96 addContinuousCornerToPath:Mutable trueCorner:1 cornerRadius:v68 corners:0 portion:v58 clockwise:v56 fullRadius:{y, v91, v92}];
  }

  CGPathAddLineToPoint(Mutable, 0, v56 + v91, y);
  v49 = objc_alloc_init(AKRoundedPath);
  [(AKRoundedPath *)v49 setCGPath:Mutable];
  CGPathRelease(Mutable);
  v38 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v96, 0);
  return v38;
}

- (void)addContinuousCornerToPath:(CGPath *)a3 trueCorner:(CGPoint)a4 cornerRadius:(CGSize)a5 corners:(unint64_t)a6 portion:(unint64_t)a7 clockwise:(BOOL)a8 fullRadius:(BOOL)a9
{
  v121 = a4;
  v120 = a5;
  v119 = self;
  v118 = a2;
  v117 = a3;
  v116 = a6;
  v115 = a7;
  v114 = a8;
  v113 = a9;
  v112 = 0.0;
  v111 = 50.0;
  width = a5.width;
  height = a5.height;
  if (a5.width >= a5.height)
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
  if (!v113)
  {
    v106 = v106 * 0.95;
    v105 = 0.980263;
  }

  v104 = v106 * (1.0 - v105);
  v103 = 0uLL;
  v103 = *MEMORY[0x277CBF348];
  switch(v116)
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

  if (v115)
  {
    if (v115 == 1)
    {
      v111 = v111 + 20.0;
      v112 = v112 + 20.0;
      *&v103 = -v104;
    }

    else if (v115 == 2)
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
  *&v102 = _interiorPointForCorner(v116, *&v103);
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
  v89 = _interiorPointForCorner(v116, v12);
  v90 = v14;
  CGPointMake();
  v83 = v15;
  v84 = v16;
  v85 = _interiorPointForCorner(v116, v15);
  v86 = v17;
  CGPointMake();
  v79 = v18;
  v80 = v19;
  v81 = _interiorPointForCorner(v116, v18);
  v82 = v20;
  CGPointMake();
  v75 = v21;
  v76 = v22;
  x = _interiorPointForCorner(v116, v21);
  y = v23;
  CGPointMake();
  v71 = v24;
  v72 = v25;
  cp2x = _interiorPointForCorner(v116, v24);
  cp2y = v26;
  CGPointMake();
  v67 = v27;
  v68 = v28;
  cp1x = _interiorPointForCorner(v116, v27);
  cp1y = v29;
  CGPointMake();
  v63 = v30;
  v64 = v31;
  v65 = _interiorPointForCorner(v116, v30);
  v66 = v32;
  CGPointMake();
  v59 = v33;
  v60 = v34;
  v61 = _interiorPointForCorner(v116, v33);
  v62 = v35;
  CGPointMake();
  v55 = v36;
  v56 = v37;
  v57 = _interiorPointForCorner(v116, v36);
  v58 = v38;
  CGPointMake();
  v51 = v39;
  v52 = v40;
  v53 = _interiorPointForCorner(v116, v39);
  v54 = v41;
  CGPointMake();
  v47 = v42;
  v48 = v43;
  v49 = _interiorPointForCorner(v116, v42);
  v50 = v44;
  memset(&__b, 0, sizeof(__b));
  CGAffineTransformMakeTranslation(&__b, *&v103, *(&v103 + 1));
  if (v114)
  {
    if (v115)
    {
      CGPathAddCurveToPoint(v117, &__b, cp1x, cp1y, cp2x, cp2y, x, y);
    }

    else
    {
      CGPathAddCurveToPoint(v117, 0, v49, v50, v49, v50, v49, v50);
    }

    CGPathAddArc(v117, &__b, v57, v58, v106 * v105, (v112 + v111) * 0.0174532925, v112 * 0.0174532925, 1);
    if ((v115 & 2) != 0)
    {
      CGPathAddCurveToPoint(v117, &__b, v85, v86, v89, v90, v61, v62);
    }

    else
    {
      CGPathAddCurveToPoint(v117, 0, v53, v54, v53, v54, v53, v54);
    }
  }

  else
  {
    if (v115)
    {
      CGPathAddCurveToPoint(v117, &__b, v89, v90, v85, v86, v81, v82);
    }

    else
    {
      CGPathAddCurveToPoint(v117, 0, v53, v54, v53, v54, v53, v54);
    }

    CGPathAddArc(v117, &__b, v57, v58, v106 * v105, v112 * 0.0174532925, (v112 + v111) * 0.0174532925, 0);
    if ((v115 & 2) != 0)
    {
      CGPathAddCurveToPoint(v117, &__b, cp2x, cp2y, cp1x, cp1y, v65, v66);
    }

    else
    {
      CGPathAddCurveToPoint(v117, 0, v49, v50, v49, v50, v49, v50);
    }
  }
}

@end