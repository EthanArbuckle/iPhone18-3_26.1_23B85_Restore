@interface AKTSDBrushStroke
+ (AKTSDBrushStroke)strokeWithName:(id)a3 color:(id)a4 width:(double)a5;
+ (AKTSDBrushStroke)strokeWithType:(int64_t)a3 color:(id)a4 width:(double)a5;
+ (id)cacheDirectory;
+ (void)loadBrush:(id)a3;
+ (void)loadLineEndsForBrush:(id)a3 inSVGDoc:(_xmlDoc *)a4;
+ (void)loadSectionsForBrush:(id)a3 inSVGDoc:(_xmlDoc *)a4;
- (AKTSDBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 join:(int)a6 miterLimit:(double)a7;
- (id)brushBoundsForId:(id)a3;
- (id)brushPathsForId:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)strokeLineEnd:(id)a3;
- (void)brushPath:(id)a3 inContext:(CGContext *)a4;
- (void)brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 into:(id)a6 sectionIndex:(unint64_t *)a7 viewScale:(double)a8;
- (void)brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 withScaling:(id)a6 inElementRange:(_NSRange)a7 into:(id)a8 viewScale:(double)a9;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
@end

@implementation AKTSDBrushStroke

+ (AKTSDBrushStroke)strokeWithName:(id)a3 color:(id)a4 width:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(objc_opt_class()) initWithName:v7 color:v8 width:0 join:a5 miterLimit:10.0];

  return v9;
}

+ (AKTSDBrushStroke)strokeWithType:(int64_t)a3 color:(id)a4 width:(double)a5
{
  v7 = a4;
  if (a3 <= 1)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      v10 = @"Chalk2";
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = @"Feathered Brush";
    v9 = @"Dry Brush";
    if (a3 != 4)
    {
      v9 = 0;
    }

    if (a3 != 3)
    {
      v8 = v9;
    }

    if (a3 == 2)
    {
      v10 = @"Pen";
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = [objc_alloc(objc_opt_class()) initWithName:v10 color:v7 width:0 join:a5 miterLimit:10.0];
LABEL_14:

  return v11;
}

- (AKTSDBrushStroke)initWithName:(id)a3 color:(id)a4 width:(double)a5 join:(int)a6 miterLimit:(double)a7
{
  v12 = a3;
  v13 = a4;
  v18.receiver = self;
  v18.super_class = AKTSDBrushStroke;
  v14 = [(AKTSDBrushStroke *)&v18 init];
  if (v14)
  {
    v15 = [v12 copy];
    strokeName = v14->_strokeName;
    v14->_strokeName = v15;

    objc_storeStrong(&v14->_color, a4);
    v14->_join = a6;
    v14->_width = a5;
    v14->_miterLimit = a7;
  }

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AKTSDMutableBrushStroke alloc];
  v5 = [(AKTSDBrushStroke *)self strokeName];
  v6 = [(AKTSDBrushStroke *)self color];
  [(AKTSDBrushStroke *)self width];
  v8 = v7;
  v9 = [(AKTSDBrushStroke *)self join];
  [(AKTSDBrushStroke *)self miterLimit];
  v11 = [(AKTSDBrushStroke *)v4 initWithName:v5 color:v6 width:v9 join:v8 miterLimit:v10];

  return v11;
}

+ (id)cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"Brushes"];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

+ (void)loadBrush:(id)a3
{
  v3 = a3;
  v4 = sub_23F454DFC();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F454E40;
  block[3] = &unk_278C7BD50;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

+ (void)loadLineEndsForBrush:(id)a3 inSVGDoc:(_xmlDoc *)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v50 = a3;
  v54 = a4;
  sub_23F455328(a4, @"//svg:path['_wrap'=substring(@id,string-length(@id)-4)]");
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v5 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v5)
  {
    v49 = *v61;
    do
    {
      v51 = v5;
      for (i = 0; i != v51; ++i)
      {
        if (*v61 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v60 + 1) + 8 * i) objectForKey:@"nodeAttributes"];
        v8 = [v7 objectForKey:@"d"];
        v9 = [v7 objectForKey:@"id"];
        v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 5}];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"//svg:path[@id='%@_end']", v10];
        v57 = sub_23F455328(v54, v11);

        v12 = [v57 lastObject];
        v13 = [v12 objectForKey:@"nodeAttributes"];

        v56 = [v13 objectForKey:@"d"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"//svg:rect[@id='%@_end_bounds']", v10];
        v15 = sub_23F455328(v54, v14);

        v16 = [v15 lastObject];
        v17 = [v16 objectForKey:@"nodeAttributes"];

        v18 = [v17 objectForKey:@"x"];
        [v18 floatValue];
        v20 = v19;

        v21 = [v17 objectForKey:@"y"];
        [v21 floatValue];
        v23 = v22;

        v24 = [v17 objectForKey:@"width"];
        [v24 floatValue];
        v26 = v25;

        v27 = [v17 objectForKey:@"height"];
        [v27 floatValue];
        v29 = v28;

        v30 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@" "];

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v50, v30];

        v53 = v26;
        v32 = v20;
        v33 = v29;
        v34 = *(MEMORY[0x277CBF2C0] + 16);
        *&v58.a = *MEMORY[0x277CBF2C0];
        *&v58.c = v34;
        *&v58.tx = *(MEMORY[0x277CBF2C0] + 32);
        CGAffineTransformTranslate(&m, &v58, 0.0, -0.5);
        v58 = m;
        CGAffineTransformScale(&m, &v58, 2.0 / v33, 2.0 / v33);
        v58 = m;
        v52 = v23;
        CGAffineTransformTranslate(&m, &v58, -v20, -v23);
        v58 = m;
        CGAffineTransformRotate(&m, &v58, -1.57079633);
        a = m.a;
        b = m.b;
        c = m.c;
        d = m.d;
        tx = m.tx;
        ty = m.ty;
        v41 = sub_23F4A3C30(v8);
        v55 = a;
        m.a = a;
        m.b = b;
        m.c = c;
        m.d = d;
        m.tx = tx;
        m.ty = ty;
        Mutable = CGPathCreateMutable();
        CGPathAddPath(Mutable, &m, v41);
        v43 = sub_23F4A3C30(v56);
        m.a = a;
        m.b = b;
        m.c = c;
        m.d = d;
        m.tx = tx;
        m.ty = ty;
        v44 = CGPathCreateMutable();
        CGPathAddPath(v44, &m, v43);
        v66.origin.x = v32;
        v66.origin.y = v52;
        v66.size.width = v53;
        v66.size.height = v33;
        MaxX = CGRectGetMaxX(v66);
        v67.origin.x = v32;
        v67.origin.y = v52;
        v67.size.width = v53;
        v67.size.height = v33;
        MidY = CGRectGetMidY(v67);
        v47 = [AKTSDLineEnd lineEndWithPath:v44 wrapPath:Mutable endPoint:1 isFilled:v31 identifier:tx + c * MidY + v55 * MaxX, ty + d * MidY + b * MaxX];
        [qword_27E39B660 setObject:v47 forKey:v31];
        CGPathRelease(v43);
        CGPathRelease(v44);
        CGPathRelease(v41);
        CGPathRelease(Mutable);
      }

      v5 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v5);
  }
}

+ (void)loadSectionsForBrush:(id)a3 inSVGDoc:(_xmlDoc *)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v4 = [qword_27E39B670 objectForKey:?];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [qword_27E39B670 setObject:v4 forKey:v37];
  }

  v43 = v4;
  v5 = [qword_27E39B678 objectForKey:v37];
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [qword_27E39B678 setObject:v5 forKey:v37];
  }

  v42 = v5;
  sub_23F455328(a4, @"//svg:path['_section'=substring(@id,string-length(@id)-7)]");
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v6 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v6)
  {
    v39 = *v50;
    do
    {
      v41 = v6;
      for (i = 0; i != v41; ++i)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v49 + 1) + 8 * i) objectForKey:@"nodeAttributes"];
        v44 = [v8 objectForKey:@"d"];
        v9 = [v8 objectForKey:@"id"];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"//svg:rect[@id='%@_bounds']", v9];
        v45 = sub_23F455328(a4, v10);

        v11 = [v45 lastObject];
        v12 = [v11 objectForKey:@"nodeAttributes"];

        v13 = [v12 objectForKey:@"x"];
        [v13 floatValue];
        v15 = v14;

        v16 = [v12 objectForKey:@"y"];
        [v16 floatValue];
        v18 = v17;

        v19 = [v12 objectForKey:@"width"];
        [v19 floatValue];
        v21 = v20;

        v22 = [v12 objectForKey:@"height"];
        [v22 floatValue];
        v24 = v23;

        v25 = sub_23F4A3C30(v44);
        v26 = [AKTSDBezierPath bezierPathWithCGPath:v25];
        v27 = v15;
        v28 = v18;
        v29 = v21;
        v30 = v24;
        v31 = *(MEMORY[0x277CBF2C0] + 16);
        *&v48.a = *MEMORY[0x277CBF2C0];
        *&v48.c = v31;
        *&v48.tx = *(MEMORY[0x277CBF2C0] + 32);
        *&v47.a = *&v48.a;
        *&v47.c = v31;
        *&v47.tx = *&v48.tx;
        CGAffineTransformTranslate(&v48, &v47, 0.0, -0.5);
        v46 = v48;
        CGAffineTransformScale(&v47, &v46, 1.0 / v29, 1.0 / v30);
        v48 = v47;
        v46 = v47;
        CGAffineTransformTranslate(&v47, &v46, -v27, -v28);
        v48 = v47;
        [v26 transformUsingAffineTransform:&v47];
        v32 = [v9 substringToIndex:{objc_msgSend(v9, "rangeOfString:", @"_"}];
        v33 = v26;
        v34 = [v43 objectForKey:v32];
        if (!v34)
        {
          v34 = [MEMORY[0x277CBEB18] array];
          [v43 setObject:v34 forKey:v32];
        }

        v35 = [v42 objectForKey:v32];
        if (!v35)
        {
          v35 = [MEMORY[0x277CBEB18] array];
          [v42 setObject:v35 forKey:v32];
        }

        [v34 addObject:v33];
        v36 = [MEMORY[0x277CCAE60] valueWithCGRect:{v27, v28, v29, v30}];
        [v35 addObject:v36];

        CGPathRelease(v25);
      }

      v6 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v6);
  }
}

- (id)brushPathsForId:(id)a3
{
  v4 = a3;
  v5 = [(AKTSDBrushStroke *)self strokeName];
  [AKTSDBrushStroke loadBrush:v5];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_23F456390;
  v17 = sub_23F4563A0;
  v18 = 0;
  v6 = sub_23F454DFC();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23F4563A8;
  v10[3] = &unk_278C7BD78;
  v11 = v4;
  v12 = &v13;
  v7 = v4;
  dispatch_sync(v6, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)brushBoundsForId:(id)a3
{
  v4 = a3;
  v5 = [(AKTSDBrushStroke *)self strokeName];
  [AKTSDBrushStroke loadBrush:v5];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_23F456390;
  v17 = sub_23F4563A0;
  v18 = 0;
  v6 = sub_23F454DFC();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23F456564;
  v10[3] = &unk_278C7BD78;
  v11 = v4;
  v12 = &v13;
  v7 = v4;
  dispatch_sync(v6, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)strokeLineEnd:(id)a3
{
  v4 = a3;
  if ([v4 isNone])
  {
    v5 = v4;
  }

  else
  {
    v6 = [v4 identifier];
    v7 = [(AKTSDBrushStroke *)self strokeName];
    v8 = [v6 hasPrefix:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v6 rangeOfString:@":"];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [v6 substringFromIndex:v9 + v10];

        v6 = v11;
      }

      v12 = MEMORY[0x277CCACA8];
      v13 = [(AKTSDBrushStroke *)self strokeName];
      v14 = [v12 stringWithFormat:@"%@:%@", v13, v6];

      v6 = v14;
    }

    v15 = [(AKTSDBrushStroke *)self strokeName];
    [AKTSDBrushStroke loadBrush:v15];

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_23F456390;
    v26 = sub_23F4563A0;
    v27 = 0;
    v16 = sub_23F454DFC();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23F45680C;
    block[3] = &unk_278C7BD78;
    v20 = v6;
    v21 = &v22;
    v17 = v6;
    dispatch_sync(v16, block);

    v5 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  return v5;
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  CGContextSaveGState(a7);
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeTranslation(&v20, x, y);
  v18 = v20;
  CGAffineTransformScale(&transform, &v18, a6, a6);
  v20 = transform;
  v18 = transform;
  CGAffineTransformRotate(&transform, &v18, a5);
  v20 = transform;
  [v13 endPoint];
  v15 = v14;
  [v13 endPoint];
  CGAffineTransformTranslate(&transform, &v18, -v15, -v16);
  v20 = transform;
  CGContextConcatCTM(a7, &transform);
  CGContextAddPath(a7, [v13 path]);
  if ([v13 isFilled])
  {
    CGContextFillPath(a7);
  }

  else
  {
    [(AKTSDBrushStroke *)self width];
    CGContextSetLineWidth(a7, v17 / a6);
    CGContextSetLineJoin(a7, [v13 lineJoin]);
    CGContextStrokePath(a7);
  }

  CGContextRestoreGState(a7);
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  v8 = a8;
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v23 = v15;
  if (v8)
  {
    v16 = [v15 identifier];
    v17 = [v16 rangeOfString:@":"];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v23;
    }

    else
    {
      v21 = [v16 substringFromIndex:v17 + v18];

      v22 = [AKTSDLineEnd lineEndWithIdentifier:v21];

      v16 = v21;
      v19 = v22;
    }

    v24 = v19;
    [(AKTSDBrushStroke *)self paintLineEnd:x atPoint:y atAngle:a5 withScale:a6 inContext:?];
  }

  else
  {
    v20 = [(AKTSDBrushStroke *)self strokeLineEnd:v15];

    v24 = v20;
    [(AKTSDBrushStroke *)self paintLineEnd:v20 atPoint:a7 atAngle:x withScale:y inContext:a5, a6];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AKTSDBrushStroke *)self strokeName];
  [(AKTSDBrushStroke *)self width];
  v8 = [v3 stringWithFormat:@"<%@ %p strokeName='%@' width=%f>", v5, self, v6, v7];

  return v8;
}

- (void)brushSection:(id)a3 sectionIndex:(unint64_t)a4 ontoPath:(id)a5 withScaling:(id)a6 inElementRange:(_NSRange)a7 into:(id)a8 viewScale:(double)a9
{
  length = a7.length;
  location = a7.location;
  var1 = a6.var1;
  var0 = a6.var0;
  v25 = a3;
  v17 = a5;
  v18 = a8;
  v19 = [(AKTSDBrushStroke *)self strokeName];
  v20 = [(AKTSDBrushStroke *)self brushPathsForId:v19];

  v21 = [v20 objectForKeyedSubscript:v25];
  v22 = [v21 objectAtIndexedSubscript:a4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 lineWidth];
    v24 = [v22 objectAtIndexedSubscript:v23 < 15.0];

    v22 = v24;
  }

  [v22 recursiveSubdivideOntoPath:v17 withScaling:location inElementRange:length into:{v18, var0, var1}];
}

- (void)brushPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 into:(id)a6 sectionIndex:(unint64_t *)a7 viewScale:(double)a8
{
  length = a5.length;
  location = a5.location;
  var1 = a4.var1;
  var0 = a4.var0;
  v88 = a3;
  v16 = a6;
  if ([v88 elementCount] >= 2)
  {
    [v88 lineWidth];
    v18 = v17;
    v19 = [(AKTSDBrushStroke *)self strokeName];
    v86 = [(AKTSDBrushStroke *)self brushPathsForId:v19];

    v20 = [(AKTSDBrushStroke *)self strokeName];
    v87 = length;
    v85 = [(AKTSDBrushStroke *)self brushBoundsForId:v20];

    v21 = [v86 objectForKey:@"middle"];
    v83 = 0.0;
    if ([v21 count] >= 2)
    {
      v22 = [v85 objectForKeyedSubscript:@"middle"];
      v23 = [v22 lastObject];
      [v23 CGRectValue];
      v25 = v24;
      v27 = v26;

      v83 = v25 / v27;
    }

    if (v18 < 5.0)
    {
      v28 = [v86 objectForKey:@"small"];
      if (v28)
      {
        v84 = v28;
        v29 = [v28 count];
        [v88 length];
        v31 = v30;
        v32 = [v85 objectForKeyedSubscript:@"small"];
        v33 = [v32 lastObject];
        v34 = v16;
        [v33 CGRectValue];
        v36 = v35;
        v38 = v37;

        v39 = var1 * v31 / (v18 * (v36 / v38));
        v40 = v39;
        if (v39 >= 1)
        {
          v41 = 0;
          v42 = 1.0 / v39;
          v43 = *a7;
          do
          {
            [(AKTSDBrushStroke *)self brushSection:@"small" sectionIndex:v43 % v29 ontoPath:v88 withScaling:location inElementRange:v87 into:v34 viewScale:var0 + v42 * v41 * var1, var1 * v42, a8];
            v44 = 1664525 * *a7 + 1013904223;
            if (v44 % v29 == *a7 % v29)
            {
              v43 = v44 + 1;
            }

            else
            {
              v43 = 1664525 * *a7 + 1013904223;
            }

            *a7 = v43;
            ++v41;
          }

          while (v40 != v41);
        }

        v16 = v34;
        v45 = v84;
        goto LABEL_40;
      }
    }

    v46 = [v86 objectForKey:@"end"];

    if (v46)
    {
      v82 = v21;
      v47 = [v85 objectForKeyedSubscript:@"start"];
      v48 = [v47 lastObject];
      [v48 CGRectValue];
      v50 = v49;
      v52 = v51;

      v53 = [v85 objectForKeyedSubscript:@"end"];
      v54 = [v53 lastObject];
      [v54 CGRectValue];
      v56 = v55;
      v58 = v57;
      v81 = v18;

      [v88 length];
      v60 = v50 / v52;
      v61 = v56 / v58;
      v62 = var1 * v59;
      v63 = v60 + v56 / v58;
      v64 = v81 * v60 / (var1 * v59);
      if (v64 <= v60 / v63)
      {
        v65 = v81 * v60 / (var1 * v59);
      }

      else
      {
        v65 = v60 / v63;
      }

      [(AKTSDBrushStroke *)self brushSection:@"start" sectionIndex:0 ontoPath:v88 withScaling:location inElementRange:length into:v16 viewScale:var0 + var1 * 0.0, var1 * v65, a8];
      v66 = v61 / v63;
      if (v81 * v61 / v62 <= v61 / v63)
      {
        v66 = v81 * v61 / v62;
      }

      [(AKTSDBrushStroke *)self brushSection:@"end" sectionIndex:0 ontoPath:v88 withScaling:location inElementRange:length into:v16 viewScale:var0 + (1.0 - v66) * var1, var1 * v66, a8];
      v67 = [v21 count];
      v68 = ((v62 - v63 * v81) / (v81 * v83) + 1.0);
      v69 = (1.0 - v81 * v63 / v62) / v68;
      if (v67 > 1)
      {
        if (v68 >= 1)
        {
          v70 = v16;
          v71 = 0;
          v72 = *a7;
          do
          {
            [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:v72 % v67 ontoPath:v88 withScaling:location inElementRange:v87 into:v70 viewScale:var0 + (v64 + v71 * v69) * var1, var1 * v69, a8];
            v73 = 1664525 * *a7 + 1013904223;
            if (v73 % v67 == *a7 % v67)
            {
              v72 = v73 + 1;
            }

            else
            {
              v72 = 1664525 * *a7 + 1013904223;
            }

            *a7 = v72;
            ++v71;
          }

          while (v68 != v71);
          v45 = 0;
          v16 = v70;
          goto LABEL_37;
        }

LABEL_36:
        v45 = 0;
LABEL_37:
        v21 = v82;
LABEL_40:

        goto LABEL_41;
      }

      if (v68 < 1)
      {
        goto LABEL_36;
      }

      v80 = 0;
      v21 = v82;
      do
      {
        [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:0 ontoPath:v88 withScaling:location inElementRange:length into:v16 viewScale:var0 + (v64 + v80++ * v69) * var1, var1 * v69, a8];
      }

      while (v68 != v80);
    }

    else if (v83 <= 0.0)
    {
      [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:0 ontoPath:v88 withScaling:location inElementRange:length into:v16 viewScale:var0, var1, a8];
    }

    else
    {
      [v88 length];
      v75 = var1 * v74 / (v18 * v83);
      v76 = v75;
      if (v75 >= 1)
      {
        v77 = v16;
        v78 = 0;
        v79 = 1.0 / v75;
        do
        {
          [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:0 ontoPath:v88 withScaling:location inElementRange:v87 into:v77 viewScale:var0 + v79 * v78++ * var1, var1 * v79, a8];
        }

        while (v76 != v78);
        v45 = 0;
        v16 = v77;
        goto LABEL_40;
      }
    }

    v45 = 0;
    goto LABEL_40;
  }

LABEL_41:
}

- (void)brushPath:(id)a3 inContext:(CGContext *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(AKTSDBrushStroke *)self strokeName];
  [AKTSDBrushStroke loadBrush:v7];

  [(AKTSDBrushStroke *)self width];
  [v6 setLineWidth:?];
  [(AKTSDBrushStroke *)self miterLimit];
  [v6 setMiterLimit:?];
  memset(&v54, 0, sizeof(v54));
  CGContextGetCTM(&v54, a4);
  a = v54.a;
  b = v54.b;
  v10 = +[AKTSDBezierPath bezierPath];
  [v6 lineWidth];
  [v10 setLineWidth:?];
  [v10 setWindingRule:0];
  v53 = 0;
  [v6 length];
  v12 = v11;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v13 = sub_23F454DFC();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F457AD4;
  block[3] = &unk_278C7BD78;
  block[4] = self;
  block[5] = &v49;
  dispatch_sync(v13, block);

  v14 = *MEMORY[0x277CBF348];
  v15 = *(MEMORY[0x277CBF348] + 8);
  v47 = *MEMORY[0x277CBF348];
  v16 = [v6 elementCount];
  v46 = sqrt(b * b + a * a);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    v45 = v12;
    v20 = 0.0;
    while (1)
    {
      v21 = v20;
      v22 = [v6 elementAtIndex:v18 associatedPoints:{&v56, *&v45}];
      [v6 lengthOfElement:v18];
      v20 = v20 + v23 / v12;
      switch(v22)
      {
        case 3:
          v56 = v47;
          break;
        case 2:
          if (*(v50 + 24) == 1)
          {
            v24 = v55;
            v25 = sub_23F4659D0(*&v56, *(&v56 + 1), *&v55);
            v27 = v26;
            v28 = sub_23F4659E8(v25, v26);
            if (v28 >= 1.0)
            {
              v31 = sub_23F4659DC(v25, v27, 1.0 / v28);
            }

            else
            {
              v29 = sub_23F4659D0(v57, v58, *&v24);
              v31 = sub_23F465A1C(v29, v30);
            }

            v12 = v45;
            if (v18 < 2 || (sub_23F465A3C(v14, v15, v31, v32) < 0.99 ? (v39 = (~v17 + v18) < 1) : (v39 = 1), v39 || v21 - v19 <= 0.0))
            {
              v21 = v19;
            }

            else
            {
              [(AKTSDBrushStroke *)self brushPath:v6 withScaling:v17 inElementRange:v18 - v17 into:v10 sectionIndex:&v53 viewScale:v19, v21 - v19, v46];
              v17 = v18 - 1;
            }

            v40 = sub_23F4659D0(*&v59, *(&v59 + 1), v57);
            v14 = sub_23F465A1C(v40, v41);
            v15 = v42;
            v19 = v21;
          }

          v55 = v59;
          goto LABEL_34;
        case 0:
          if ((v18 - v17) >= 1)
          {
            [(AKTSDBrushStroke *)self brushPath:v6 withScaling:v17 inElementRange:v19 into:v20 - v19 sectionIndex:v46 viewScale:?];
            v19 = v20;
            v17 = v18;
          }

          v55 = v56;
          v47 = v56;
          goto LABEL_34;
      }

      if (*(v50 + 24) != 1)
      {
        break;
      }

      v33 = v15;
      v34 = sub_23F4659D0(*&v56, *(&v56 + 1), *&v55);
      v37 = sub_23F465A1C(v34, v35);
      v15 = v36;
      if (v18 < 2)
      {
        goto LABEL_22;
      }

      v38 = sub_23F465A3C(v14, v33, v37, v36) >= 0.99 || (~v17 + v18) < 1;
      if (v38 || v21 - v19 <= 0.0)
      {
        goto LABEL_22;
      }

      [(AKTSDBrushStroke *)self brushPath:v6 withScaling:v17 inElementRange:v18 - v17 into:v10 sectionIndex:&v53 viewScale:v19, v21 - v19, v46];
      v17 = v18 - 1;
LABEL_23:
      v55 = v56;
      v14 = v37;
      v19 = v21;
LABEL_34:
      if (v16 == ++v18)
      {
        goto LABEL_39;
      }
    }

    v37 = v14;
LABEL_22:
    v21 = v19;
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 0;
  v20 = 0.0;
  v19 = 0.0;
LABEL_39:
  if ((v16 + ~v17) >= 1)
  {
    [(AKTSDBrushStroke *)self brushPath:v6 withScaling:v17 inElementRange:v19 into:v20 - v19 sectionIndex:v46 viewScale:?];
  }

  CGContextAddPath(a4, [v10 CGPath]);
  v43 = [(AKTSDBrushStroke *)self color];
  v44 = v43;
  CGContextSetFillColorWithColor(a4, [v43 CGColor]);

  CGContextFillPath(a4);
  _Block_object_dispose(&v49, 8);
}

@end