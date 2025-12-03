@interface AKTSDBrushStroke
+ (AKTSDBrushStroke)strokeWithName:(id)name color:(id)color width:(double)width;
+ (AKTSDBrushStroke)strokeWithType:(int64_t)type color:(id)color width:(double)width;
+ (id)cacheDirectory;
+ (void)loadBrush:(id)brush;
+ (void)loadLineEndsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc;
+ (void)loadSectionsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc;
- (AKTSDBrushStroke)initWithName:(id)name color:(id)color width:(double)width join:(int)join miterLimit:(double)limit;
- (id)brushBoundsForId:(id)id;
- (id)brushPathsForId:(id)id;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)strokeLineEnd:(id)end;
- (void)brushPath:(id)path inContext:(CGContext *)context;
- (void)brushPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into sectionIndex:(unint64_t *)index viewScale:(double)scale;
- (void)brushSection:(id)section sectionIndex:(unint64_t)index ontoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into viewScale:(double)scale;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
@end

@implementation AKTSDBrushStroke

+ (AKTSDBrushStroke)strokeWithName:(id)name color:(id)color width:(double)width
{
  nameCopy = name;
  colorCopy = color;
  v9 = [objc_alloc(objc_opt_class()) initWithName:nameCopy color:colorCopy width:0 join:width miterLimit:10.0];

  return v9;
}

+ (AKTSDBrushStroke)strokeWithType:(int64_t)type color:(id)color width:(double)width
{
  colorCopy = color;
  if (type <= 1)
  {
    v11 = 0;
    if (!type)
    {
      goto LABEL_14;
    }

    if (type == 1)
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
    if (type != 4)
    {
      v9 = 0;
    }

    if (type != 3)
    {
      v8 = v9;
    }

    if (type == 2)
    {
      v10 = @"Pen";
    }

    else
    {
      v10 = v8;
    }
  }

  v11 = [objc_alloc(objc_opt_class()) initWithName:v10 color:colorCopy width:0 join:width miterLimit:10.0];
LABEL_14:

  return v11;
}

- (AKTSDBrushStroke)initWithName:(id)name color:(id)color width:(double)width join:(int)join miterLimit:(double)limit
{
  nameCopy = name;
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = AKTSDBrushStroke;
  v14 = [(AKTSDBrushStroke *)&v18 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    strokeName = v14->_strokeName;
    v14->_strokeName = v15;

    objc_storeStrong(&v14->_color, color);
    v14->_join = join;
    v14->_width = width;
    v14->_miterLimit = limit;
  }

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AKTSDMutableBrushStroke alloc];
  strokeName = [(AKTSDBrushStroke *)self strokeName];
  color = [(AKTSDBrushStroke *)self color];
  [(AKTSDBrushStroke *)self width];
  v8 = v7;
  join = [(AKTSDBrushStroke *)self join];
  [(AKTSDBrushStroke *)self miterLimit];
  v11 = [(AKTSDBrushStroke *)v4 initWithName:strokeName color:color width:join join:v8 miterLimit:v10];

  return v11;
}

+ (id)cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"Brushes"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

+ (void)loadBrush:(id)brush
{
  brushCopy = brush;
  v4 = sub_23F454DFC();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F454E40;
  block[3] = &unk_278C7BD50;
  v7 = brushCopy;
  v5 = brushCopy;
  dispatch_sync(v4, block);
}

+ (void)loadLineEndsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc
{
  v65 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  docCopy = doc;
  sub_23F455328(doc, @"//svg:path['_wrap'=substring(@id,string-length(@id)-4)]");
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
        v57 = sub_23F455328(docCopy, v11);

        lastObject = [v57 lastObject];
        v13 = [lastObject objectForKey:@"nodeAttributes"];

        v56 = [v13 objectForKey:@"d"];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"//svg:rect[@id='%@_end_bounds']", v10];
        v15 = sub_23F455328(docCopy, v14);

        lastObject2 = [v15 lastObject];
        v17 = [lastObject2 objectForKey:@"nodeAttributes"];

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

        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", brushCopy, v30];

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
        maxX = [AKTSDLineEnd lineEndWithPath:v44 wrapPath:Mutable endPoint:1 isFilled:v31 identifier:tx + c * MidY + v55 * MaxX, ty + d * MidY + b * MaxX];
        [qword_27E39B660 setObject:maxX forKey:v31];
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

+ (void)loadSectionsForBrush:(id)brush inSVGDoc:(_xmlDoc *)doc
{
  v54 = *MEMORY[0x277D85DE8];
  brushCopy = brush;
  dictionary = [qword_27E39B670 objectForKey:?];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [qword_27E39B670 setObject:dictionary forKey:brushCopy];
  }

  v43 = dictionary;
  dictionary2 = [qword_27E39B678 objectForKey:brushCopy];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [qword_27E39B678 setObject:dictionary2 forKey:brushCopy];
  }

  v42 = dictionary2;
  sub_23F455328(doc, @"//svg:path['_section'=substring(@id,string-length(@id)-7)]");
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
        v45 = sub_23F455328(doc, v10);

        lastObject = [v45 lastObject];
        v12 = [lastObject objectForKey:@"nodeAttributes"];

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
        array = [v43 objectForKey:v32];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v43 setObject:array forKey:v32];
        }

        array2 = [v42 objectForKey:v32];
        if (!array2)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          [v42 setObject:array2 forKey:v32];
        }

        [array addObject:v33];
        v36 = [MEMORY[0x277CCAE60] valueWithCGRect:{v27, v28, v29, v30}];
        [array2 addObject:v36];

        CGPathRelease(v25);
      }

      v6 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v6);
  }
}

- (id)brushPathsForId:(id)id
{
  idCopy = id;
  strokeName = [(AKTSDBrushStroke *)self strokeName];
  [AKTSDBrushStroke loadBrush:strokeName];

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
  v11 = idCopy;
  v12 = &v13;
  v7 = idCopy;
  dispatch_sync(v6, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)brushBoundsForId:(id)id
{
  idCopy = id;
  strokeName = [(AKTSDBrushStroke *)self strokeName];
  [AKTSDBrushStroke loadBrush:strokeName];

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
  v11 = idCopy;
  v12 = &v13;
  v7 = idCopy;
  dispatch_sync(v6, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  if ([endCopy isNone])
  {
    v5 = endCopy;
  }

  else
  {
    identifier = [endCopy identifier];
    strokeName = [(AKTSDBrushStroke *)self strokeName];
    v8 = [identifier hasPrefix:strokeName];

    if ((v8 & 1) == 0)
    {
      v9 = [identifier rangeOfString:@":"];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [identifier substringFromIndex:v9 + v10];

        identifier = v11;
      }

      v12 = MEMORY[0x277CCACA8];
      strokeName2 = [(AKTSDBrushStroke *)self strokeName];
      v14 = [v12 stringWithFormat:@"%@:%@", strokeName2, identifier];

      identifier = v14;
    }

    strokeName3 = [(AKTSDBrushStroke *)self strokeName];
    [AKTSDBrushStroke loadBrush:strokeName3];

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
    v20 = identifier;
    v21 = &v22;
    v17 = identifier;
    dispatch_sync(v16, block);

    v5 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  return v5;
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context
{
  y = point.y;
  x = point.x;
  endCopy = end;
  CGContextSaveGState(context);
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeTranslation(&v20, x, y);
  v18 = v20;
  CGAffineTransformScale(&transform, &v18, scale, scale);
  v20 = transform;
  v18 = transform;
  CGAffineTransformRotate(&transform, &v18, angle);
  v20 = transform;
  [endCopy endPoint];
  v15 = v14;
  [endCopy endPoint];
  CGAffineTransformTranslate(&transform, &v18, -v15, -v16);
  v20 = transform;
  CGContextConcatCTM(context, &transform);
  CGContextAddPath(context, [endCopy path]);
  if ([endCopy isFilled])
  {
    CGContextFillPath(context);
  }

  else
  {
    [(AKTSDBrushStroke *)self width];
    CGContextSetLineWidth(context, v17 / scale);
    CGContextSetLineJoin(context, [endCopy lineJoin]);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  y = point.y;
  x = point.x;
  endCopy = end;
  v23 = endCopy;
  if (drawingCopy)
  {
    identifier = [endCopy identifier];
    v17 = [identifier rangeOfString:@":"];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v23;
    }

    else
    {
      v21 = [identifier substringFromIndex:v17 + v18];

      v22 = [AKTSDLineEnd lineEndWithIdentifier:v21];

      identifier = v21;
      v19 = v22;
    }

    v24 = v19;
    [(AKTSDBrushStroke *)self paintLineEnd:x atPoint:y atAngle:angle withScale:scale inContext:?];
  }

  else
  {
    v20 = [(AKTSDBrushStroke *)self strokeLineEnd:endCopy];

    v24 = v20;
    [(AKTSDBrushStroke *)self paintLineEnd:v20 atPoint:context atAngle:x withScale:y inContext:angle, scale];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  strokeName = [(AKTSDBrushStroke *)self strokeName];
  [(AKTSDBrushStroke *)self width];
  v8 = [v3 stringWithFormat:@"<%@ %p strokeName='%@' width=%f>", v5, self, strokeName, v7];

  return v8;
}

- (void)brushSection:(id)section sectionIndex:(unint64_t)index ontoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into viewScale:(double)scale
{
  length = range.length;
  location = range.location;
  var1 = scaling.var1;
  var0 = scaling.var0;
  sectionCopy = section;
  pathCopy = path;
  intoCopy = into;
  strokeName = [(AKTSDBrushStroke *)self strokeName];
  v20 = [(AKTSDBrushStroke *)self brushPathsForId:strokeName];

  v21 = [v20 objectForKeyedSubscript:sectionCopy];
  v22 = [v21 objectAtIndexedSubscript:index];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [pathCopy lineWidth];
    v24 = [v22 objectAtIndexedSubscript:v23 < 15.0];

    v22 = v24;
  }

  [v22 recursiveSubdivideOntoPath:pathCopy withScaling:location inElementRange:length into:{intoCopy, var0, var1}];
}

- (void)brushPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into sectionIndex:(unint64_t *)index viewScale:(double)scale
{
  length = range.length;
  location = range.location;
  var1 = scaling.var1;
  var0 = scaling.var0;
  pathCopy = path;
  intoCopy = into;
  if ([pathCopy elementCount] >= 2)
  {
    [pathCopy lineWidth];
    v18 = v17;
    strokeName = [(AKTSDBrushStroke *)self strokeName];
    v86 = [(AKTSDBrushStroke *)self brushPathsForId:strokeName];

    strokeName2 = [(AKTSDBrushStroke *)self strokeName];
    v87 = length;
    v85 = [(AKTSDBrushStroke *)self brushBoundsForId:strokeName2];

    v21 = [v86 objectForKey:@"middle"];
    v83 = 0.0;
    if ([v21 count] >= 2)
    {
      v22 = [v85 objectForKeyedSubscript:@"middle"];
      lastObject = [v22 lastObject];
      [lastObject CGRectValue];
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
        [pathCopy length];
        v31 = v30;
        v32 = [v85 objectForKeyedSubscript:@"small"];
        lastObject2 = [v32 lastObject];
        v34 = intoCopy;
        [lastObject2 CGRectValue];
        v36 = v35;
        v38 = v37;

        v39 = var1 * v31 / (v18 * (v36 / v38));
        v40 = v39;
        if (v39 >= 1)
        {
          v41 = 0;
          v42 = 1.0 / v39;
          v43 = *index;
          do
          {
            [(AKTSDBrushStroke *)self brushSection:@"small" sectionIndex:v43 % v29 ontoPath:pathCopy withScaling:location inElementRange:v87 into:v34 viewScale:var0 + v42 * v41 * var1, var1 * v42, scale];
            v44 = 1664525 * *index + 1013904223;
            if (v44 % v29 == *index % v29)
            {
              v43 = v44 + 1;
            }

            else
            {
              v43 = 1664525 * *index + 1013904223;
            }

            *index = v43;
            ++v41;
          }

          while (v40 != v41);
        }

        intoCopy = v34;
        v45 = v84;
        goto LABEL_40;
      }
    }

    v46 = [v86 objectForKey:@"end"];

    if (v46)
    {
      v82 = v21;
      v47 = [v85 objectForKeyedSubscript:@"start"];
      lastObject3 = [v47 lastObject];
      [lastObject3 CGRectValue];
      v50 = v49;
      v52 = v51;

      v53 = [v85 objectForKeyedSubscript:@"end"];
      lastObject4 = [v53 lastObject];
      [lastObject4 CGRectValue];
      v56 = v55;
      v58 = v57;
      v81 = v18;

      [pathCopy length];
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

      [(AKTSDBrushStroke *)self brushSection:@"start" sectionIndex:0 ontoPath:pathCopy withScaling:location inElementRange:length into:intoCopy viewScale:var0 + var1 * 0.0, var1 * v65, scale];
      v66 = v61 / v63;
      if (v81 * v61 / v62 <= v61 / v63)
      {
        v66 = v81 * v61 / v62;
      }

      [(AKTSDBrushStroke *)self brushSection:@"end" sectionIndex:0 ontoPath:pathCopy withScaling:location inElementRange:length into:intoCopy viewScale:var0 + (1.0 - v66) * var1, var1 * v66, scale];
      v67 = [v21 count];
      v68 = ((v62 - v63 * v81) / (v81 * v83) + 1.0);
      v69 = (1.0 - v81 * v63 / v62) / v68;
      if (v67 > 1)
      {
        if (v68 >= 1)
        {
          v70 = intoCopy;
          v71 = 0;
          v72 = *index;
          do
          {
            [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:v72 % v67 ontoPath:pathCopy withScaling:location inElementRange:v87 into:v70 viewScale:var0 + (v64 + v71 * v69) * var1, var1 * v69, scale];
            v73 = 1664525 * *index + 1013904223;
            if (v73 % v67 == *index % v67)
            {
              v72 = v73 + 1;
            }

            else
            {
              v72 = 1664525 * *index + 1013904223;
            }

            *index = v72;
            ++v71;
          }

          while (v68 != v71);
          v45 = 0;
          intoCopy = v70;
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
        [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:0 ontoPath:pathCopy withScaling:location inElementRange:length into:intoCopy viewScale:var0 + (v64 + v80++ * v69) * var1, var1 * v69, scale];
      }

      while (v68 != v80);
    }

    else if (v83 <= 0.0)
    {
      [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:0 ontoPath:pathCopy withScaling:location inElementRange:length into:intoCopy viewScale:var0, var1, scale];
    }

    else
    {
      [pathCopy length];
      v75 = var1 * v74 / (v18 * v83);
      v76 = v75;
      if (v75 >= 1)
      {
        v77 = intoCopy;
        v78 = 0;
        v79 = 1.0 / v75;
        do
        {
          [(AKTSDBrushStroke *)self brushSection:@"middle" sectionIndex:0 ontoPath:pathCopy withScaling:location inElementRange:v87 into:v77 viewScale:var0 + v79 * v78++ * var1, var1 * v79, scale];
        }

        while (v76 != v78);
        v45 = 0;
        intoCopy = v77;
        goto LABEL_40;
      }
    }

    v45 = 0;
    goto LABEL_40;
  }

LABEL_41:
}

- (void)brushPath:(id)path inContext:(CGContext *)context
{
  v60 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  strokeName = [(AKTSDBrushStroke *)self strokeName];
  [AKTSDBrushStroke loadBrush:strokeName];

  [(AKTSDBrushStroke *)self width];
  [pathCopy setLineWidth:?];
  [(AKTSDBrushStroke *)self miterLimit];
  [pathCopy setMiterLimit:?];
  memset(&v54, 0, sizeof(v54));
  CGContextGetCTM(&v54, context);
  a = v54.a;
  b = v54.b;
  v10 = +[AKTSDBezierPath bezierPath];
  [pathCopy lineWidth];
  [v10 setLineWidth:?];
  [v10 setWindingRule:0];
  v53 = 0;
  [pathCopy length];
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
  elementCount = [pathCopy elementCount];
  v46 = sqrt(b * b + a * a);
  if (elementCount >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    v45 = v12;
    v20 = 0.0;
    while (1)
    {
      v21 = v20;
      v22 = [pathCopy elementAtIndex:v18 associatedPoints:{&v56, *&v45}];
      [pathCopy lengthOfElement:v18];
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
              [(AKTSDBrushStroke *)self brushPath:pathCopy withScaling:v17 inElementRange:v18 - v17 into:v10 sectionIndex:&v53 viewScale:v19, v21 - v19, v46];
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
            [(AKTSDBrushStroke *)self brushPath:pathCopy withScaling:v17 inElementRange:v19 into:v20 - v19 sectionIndex:v46 viewScale:?];
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

      [(AKTSDBrushStroke *)self brushPath:pathCopy withScaling:v17 inElementRange:v18 - v17 into:v10 sectionIndex:&v53 viewScale:v19, v21 - v19, v46];
      v17 = v18 - 1;
LABEL_23:
      v55 = v56;
      v14 = v37;
      v19 = v21;
LABEL_34:
      if (elementCount == ++v18)
      {
        goto LABEL_39;
      }
    }

    v37 = v14;
LABEL_22:
    v21 = v19;
    goto LABEL_23;
  }

  elementCount = 0;
  v17 = 0;
  v20 = 0.0;
  v19 = 0.0;
LABEL_39:
  if ((elementCount + ~v17) >= 1)
  {
    [(AKTSDBrushStroke *)self brushPath:pathCopy withScaling:v17 inElementRange:v19 into:v20 - v19 sectionIndex:v46 viewScale:?];
  }

  CGContextAddPath(context, [v10 CGPath]);
  color = [(AKTSDBrushStroke *)self color];
  v44 = color;
  CGContextSetFillColorWithColor(context, [color CGColor]);

  CGContextFillPath(context);
  _Block_object_dispose(&v49, 8);
}

@end