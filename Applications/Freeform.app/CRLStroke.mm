@interface CRLStroke
+ (CRLStroke)strokeWithColor:(id)a3 width:(double)a4;
+ (CRLStroke)strokeWithColor:(id)a3 width:(double)a4 cap:(unint64_t)a5 join:(unint64_t)a6 pattern:(id)a7;
+ (CRLStroke)strokeWithColor:(id)a3 width:(double)a4 pattern:(id)a5;
+ (id)emptyStroke;
+ (id)i_newEmptyStroke;
+ (id)i_newStroke;
+ (id)stroke;
- (BOOL)canApplyDirectlyToRepRenderable;
- (BOOL)canApplyToShapeRenderable;
- (BOOL)isDash;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNearlyWhite;
- (BOOL)isRoundDash;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3;
- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7;
- (CRLStroke)init;
- (CRLStroke)initWithColor:(id)a3 width:(double)a4 cap:(unint64_t)a5 join:(unint64_t)a6 pattern:(id)a7 miterLimit:(double)a8;
- (NSString)description;
- (_CRLStrokeOutsets)outsets;
- (double)dashSpacing;
- (double)horizontalMarginForSwatch;
- (id)colorForCGContext:(CGContext *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)pathForLineEnd:(id)a3 wrapPath:(BOOL)a4 atPoint:(CGPoint)a5 atAngle:(double)a6 withScale:(double)a7;
- (id)pathToStrokeFromCRLBezierPath:(id)a3;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3;
- (id)strokeLineEnd:(id)a3;
- (unint64_t)hash;
- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4;
- (void)applyToRepRenderable:(id)a3 withScale:(double)a4;
- (void)applyToShapeRenderable:(id)a3 insideStroke:(BOOL)a4 withScale:(double)a5;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)i_setActualWidth:(double)a3;
- (void)i_setCap:(unint64_t)a3;
- (void)i_setPattern:(id)a3;
- (void)i_setPatternPropertiesFromStroke:(id)a3;
- (void)i_setPropertiesFromStroke:(id)a3;
- (void)i_setWidth:(double)a3;
- (void)p_strokePathChunk:(CGPath *)a3 inContext:(CGContext *)a4 wantsInteriorStroke:(BOOL)a5;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
- (void)paintRect:(CGRect)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5;
@end

@implementation CRLStroke

- (CRLStroke)initWithColor:(id)a3 width:(double)a4 cap:(unint64_t)a5 join:(unint64_t)a6 pattern:(id)a7 miterLimit:(double)a8
{
  v14 = a3;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = CRLStroke;
  v16 = [(CRLStroke *)&v25 init];
  if (v16)
  {
    if (a4 < 0.0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136A1E4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136A20C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136A2A0();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLStroke initWithColor:width:cap:join:pattern:miterLimit:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:371 isFatal:0 description:"Stroke width (%f) should not be negative.", *&a4];
    }

    if (a4 < 0.0)
    {
      a4 = 0.0;
    }

    v20 = [v14 copy];
    color = v16->_color;
    v16->_color = v20;

    v16->_width = a4;
    v16->_actualWidth = a4;
    v16->_cap = a5;
    v16->_join = a6;
    v22 = [v15 copy];
    pattern = v16->_pattern;
    v16->_pattern = v22;

    v16->_miterLimit = a8;
    if ([v15 isRoundDash])
    {
      v16->_cap = 1;
    }
  }

  return v16;
}

- (CRLStroke)init
{
  v3 = +[CRLColor blackColor];
  v4 = +[CRLStrokePattern solidPattern];
  v5 = [(CRLStroke *)self initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableStroke allocWithZone:a3];
  v5 = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v7 = v6;
  v8 = [(CRLStroke *)self cap];
  v9 = [(CRLStroke *)self join];
  v10 = [(CRLStroke *)self pattern];
  [(CRLStroke *)self miterLimit];
  v12 = [(CRLStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];

  [(CRLStroke *)self actualWidth];
  [(CRLStroke *)v12 i_setActualWidth:?];
  return v12;
}

- (void)i_setWidth:(double)a3
{
  if (a3 < 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A2C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A2DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136A370();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLStroke i_setWidth:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:443 isFatal:0 description:"Stroke width (%f) should not be negative.", *&a3];
  }

  v8 = 0.0;
  if (a3 >= 0.0)
  {
    v8 = a3;
  }

  self->_width = v8;
}

- (void)i_setCap:(unint64_t)a3
{
  if (self->_cap != a3)
  {
    if ([(CRLStroke *)self isRoundDash])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136A398();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136A3AC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136A440();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLStroke i_setCap:]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:455 isFatal:0 description:"Cannot change cap style on a round-dash stroke."];
    }

    else
    {
      self->_cap = a3;
    }
  }
}

- (void)i_setPattern:(id)a3
{
  v10 = a3;
  v4 = [(CRLStroke *)self pattern];

  v5 = v10;
  if (v4 != v10)
  {
    v6 = [(CRLStroke *)self isRoundDash];
    v7 = [v10 copy];
    pattern = self->_pattern;
    self->_pattern = v7;

    if ([v10 isRoundDash])
    {
      v5 = v10;
      if (v6)
      {
        goto LABEL_8;
      }

      v9 = 1;
    }

    else
    {
      v5 = v10;
      if (!v6)
      {
        goto LABEL_8;
      }

      v9 = 0;
    }

    [(CRLStroke *)self i_setCap:v9];
    v5 = v10;
  }

LABEL_8:
}

- (void)i_setActualWidth:(double)a3
{
  if (a3 < 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A468();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A47C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136A510();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLStroke i_setActualWidth:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:497 isFatal:0 description:"Actual stroke width (%f) should not be negative.", *&a3];
  }

  v8 = 0.0;
  if (a3 >= 0.0)
  {
    v8 = a3;
  }

  self->_actualWidth = v8;
}

+ (id)i_newStroke
{
  v2 = [a1 alloc];
  v3 = +[CRLColor blackColor];
  v4 = +[CRLStrokePattern solidPattern];
  v5 = [v2 initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)i_newEmptyStroke
{
  v2 = [a1 alloc];
  v3 = +[CRLColor blackColor];
  v4 = +[CRLStrokePattern emptyPattern];
  v5 = [v2 initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)stroke
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003ED804;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34E60 != -1)
  {
    dispatch_once(&qword_101A34E60, block);
  }

  v2 = qword_101A34E68;

  return v2;
}

+ (id)emptyStroke
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003ED8DC;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34E70 != -1)
  {
    dispatch_once(&qword_101A34E70, block);
  }

  v2 = qword_101A34E78;

  return v2;
}

+ (CRLStroke)strokeWithColor:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v7 = +[CRLStrokePattern solidPattern];
  v8 = [v6 initWithColor:v5 width:0 cap:0 join:v7 pattern:a4];

  return v8;
}

+ (CRLStroke)strokeWithColor:(id)a3 width:(double)a4 pattern:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithColor:v8 width:0 cap:0 join:v7 pattern:a4];

  return v9;
}

+ (CRLStroke)strokeWithColor:(id)a3 width:(double)a4 cap:(unint64_t)a5 join:(unint64_t)a6 pattern:(id)a7
{
  v11 = a7;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithColor:v12 width:a5 cap:a6 join:v11 pattern:a4];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [objc_opt_class() mutableClass];
  if (v5 != [objc_opt_class() mutableClass])
  {
    goto LABEL_5;
  }

  v7 = [(CRLStroke *)self supportsWidth];
  v8 = [(CRLStroke *)v4 supportsWidth];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_5;
    }

    [(CRLStroke *)self width];
    v10 = v9;
    [(CRLStroke *)v4 width];
    if (v10 != v11 && vabdd_f64(v10, v11) >= 0.00999999978)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
    goto LABEL_5;
  }

  v12 = [(CRLStroke *)self supportsLineOptions];
  v13 = [(CRLStroke *)v4 supportsLineOptions];
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = [(CRLStroke *)self cap];
    if (v14 != [(CRLStroke *)v4 cap])
    {
      goto LABEL_5;
    }

    v15 = [(CRLStroke *)self join];
    if (v15 != [(CRLStroke *)v4 join])
    {
      goto LABEL_5;
    }

    [(CRLStroke *)self miterLimit];
    v17 = v16;
    [(CRLStroke *)v4 miterLimit];
    if (v17 != v18)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v19 = [(CRLStroke *)self supportsPattern];
  v20 = [(CRLStroke *)v4 supportsPattern];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_5;
    }

    v21 = [(CRLStroke *)self pattern];
    v22 = [(CRLStroke *)v4 pattern];
    v23 = [v21 isEqual:v22];

    if ((v23 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v20)
  {
    goto LABEL_5;
  }

  v24 = [(CRLStroke *)self supportsColor];
  v25 = [(CRLStroke *)v4 supportsColor];
  if (v24)
  {
    if (v25)
    {
      color = self->_color;
      v27 = [(CRLStroke *)v4 color];
      if (!(color | v27))
      {
        goto LABEL_30;
      }

      v28 = v27;
      v29 = [(CRLColor *)color isEqual:v27];

      if (v29)
      {
        goto LABEL_30;
      }
    }
  }

  else if ((v25 & 1) == 0)
  {
LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

LABEL_5:
  v6 = 0;
LABEL_31:

  return v6;
}

- (unint64_t)hash
{
  if ([(CRLStroke *)self supportsColor])
  {
    v3 = [(CRLColor *)self->_color hash];
  }

  else
  {
    v3 = 0xCBF29CE484222325;
  }

  if ([(CRLStroke *)self supportsLineOptions])
  {
    v4 = sub_100083B3C(&self->_cap, 8, v3);
    v5 = sub_100083B3C(&self->_join, 8, v4);
    v3 = sub_100083B3C(&self->_miterLimit, 8, v5);
  }

  if ([(CRLStroke *)self supportsPattern])
  {
    return [(CRLStrokePattern *)self->_pattern hash]^ v3;
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLStroke *)self pattern];
  [(CRLStroke *)self width];
  v7 = v6;
  v8 = [(CRLStroke *)self color];
  v9 = sub_10050FC30([(CRLStroke *)self cap]);
  v10 = sub_10050FC54([(CRLStroke *)self join]);
  v11 = [NSString stringWithFormat:@"<%@ %p pattern=<%@>' width=%f color=<%@> cap=%@ join=%@>", v4, self, v5, v7, v8, v9, v10];

  return v11;
}

- (double)dashSpacing
{
  pattern = self->_pattern;
  v4 = 0.0;
  if (pattern && [(CRLStrokePattern *)pattern count]== 2)
  {
    return [(CRLStrokePattern *)self->_pattern pattern][1];
  }

  return v4;
}

- (BOOL)isDash
{
  v3 = [(CRLStrokePattern *)self->_pattern isDash];
  if (v3)
  {
    LOBYTE(v3) = self->_cap != 1;
  }

  return v3;
}

- (BOOL)isRoundDash
{
  v3 = [(CRLStrokePattern *)self->_pattern isRoundDash];
  if (v3)
  {
    LOBYTE(v3) = self->_cap == 1;
  }

  return v3;
}

- (id)pathToStrokeFromCRLBezierPath:(id)a3
{
  v4 = a3;
  v5 = -[CRLStroke pathToStrokeFromCGPath:](self, "pathToStrokeFromCGPath:", [v4 CGPath]);
  if (v5 == [v4 CGPath])
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(CRLBezierPath);
    [v4 copyPathAttributesTo:v6];
    v7 = [CRLBezierPath bezierPathWithCGPath:v5];
    [(CRLBezierPath *)v6 appendBezierPath:v7];
  }

  return v6;
}

- (_CRLStrokeOutsets)outsets
{
  v3 = [(CRLStroke *)self supportsWidth];
  v4 = 0.0;
  if (v3)
  {
    [(CRLStroke *)self width];
    v4 = v5 * 0.5;
  }

  v6 = v4;
  v7 = v4;
  v8 = v4;
  result.var3 = v8;
  result.var2 = v7;
  result.var1 = v6;
  result.var0 = v4;
  return result;
}

- (void)i_setPropertiesFromStroke:(id)a3
{
  v4 = a3;
  v5 = [v4 color];
  [(CRLStroke *)self setI_color:v5];

  [v4 width];
  [(CRLStroke *)self i_setWidth:?];
  -[CRLStroke setI_join:](self, "setI_join:", [v4 join]);
  [v4 miterLimit];
  [(CRLStroke *)self setI_miterLimit:?];
  [v4 actualWidth];
  [(CRLStroke *)self i_setActualWidth:?];
  v6 = [v4 pattern];
  [(CRLStroke *)self i_setPattern:v6];

  v7 = [v4 cap];

  [(CRLStroke *)self i_setCap:v7];
}

- (void)i_setPatternPropertiesFromStroke:(id)a3
{
  v4 = a3;
  -[CRLStroke setI_join:](self, "setI_join:", [v4 join]);
  [v4 miterLimit];
  [(CRLStroke *)self setI_miterLimit:?];
  v5 = [v4 pattern];
  [(CRLStroke *)self i_setPattern:v5];

  v6 = [v4 cap];

  [(CRLStroke *)self i_setCap:v6];
}

- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4
{
  v4 = a4;
  v7 = [(CRLStroke *)self colorForCGContext:?];
  CGContextSetStrokeColorWithColor(a3, [v7 CGColor]);
  width = self->_width;
  if (v4)
  {
    width = width + width;
  }

  CGContextSetLineWidth(a3, width);
  v9 = sub_10019FE64(self->_join);
  CGContextSetLineJoin(a3, v9);
  CGContextSetMiterLimit(a3, self->_miterLimit);
  cap = self->_cap;
  [(CRLStrokePattern *)self->_pattern i_applyToContext:a3 lineWidth:&cap capStyle:self->_width * (self->_actualWidth / self->_width)];
  v10 = sub_10019FE64(cap);
  CGContextSetLineCap(a3, v10);
}

- (id)strokeLineEnd:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = v4;
  if (v4 && [v4 rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v5, "rangeOfString:", @":"}];
    v6 = [CRLLineEnd lineEndWithIdentifier:v7];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)colorForCGContext:(CGContext *)a3
{
  if (sub_1005106C8(a3))
  {
    [objc_opt_class() colorOnSuppressedBackgrounds];
  }

  else
  {
    [(CRLStroke *)self color];
  }
  v4 = ;

  return v4;
}

- (void)paintRect:(CGRect)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5
{
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGPathAddRect(Mutable, 0, v14);
  [(CRLStroke *)self paintPath:Mutable wantsInteriorStroke:v6 inContext:a5];

  CGPathRelease(Mutable);
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v9 = a4;
  if ([(CRLStroke *)self shouldRender:a3])
  {
    CGContextSaveGState(a5);
    if (sub_1001903CC(a3) > 0x9C40)
    {
      v12 = [CRLBezierPath bezierPathWithCGPath:a3];
      v13 = [v12 pathSplitAtSubpathBoundariesWithSoftElementLimit:40000 hardElementLimit:50000];
      v14 = [(CRLStroke *)self color];
      [v14 alphaComponent];
      v16 = v15;

      if (v16 >= 1.0)
      {
        [(CRLStroke *)self applyToContext:a5 insideStroke:v9];
      }

      else
      {
        v17 = [(CRLStroke *)self color];
        [v17 alphaComponent];
        CGContextSetAlpha(a5, v18);

        CGContextBeginTransparencyLayer(a5, 0);
        v19 = [(CRLStroke *)self mutableCopy];
        v20 = [v19 color];
        v21 = [v20 colorWithAlphaComponent:1.0];
        [v19 setColor:v21];

        [v19 applyToContext:a5 insideStroke:v9];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v29;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v29 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v28 + 1) + 8 * i);
            -[CRLStroke p_strokePathChunk:inContext:wantsInteriorStroke:](self, "p_strokePathChunk:inContext:wantsInteriorStroke:", [v27 CGPath], a5, v9);
          }

          v24 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v24);
      }

      if (v16 < 1.0)
      {
        CGContextEndTransparencyLayer(a5);
      }
    }

    else
    {
      [(CRLStroke *)self applyToContext:a5 insideStroke:v9];
      [(CRLStroke *)self p_strokePathChunk:a3 inContext:a5 wantsInteriorStroke:v9];
    }

    CGContextRestoreGState(a5);
  }
}

- (void)p_strokePathChunk:(CGPath *)a3 inContext:(CGContext *)a4 wantsInteriorStroke:(BOOL)a5
{
  v5 = a5;
  CGContextSaveGState(a4);
  if (v5)
  {
    CGContextAddPath(a4, a3);
    CGContextClip(a4);
  }

  CGContextAddPath(a4, a3);
  CGContextStrokePath(a4);

  CGContextRestoreGState(a4);
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  CGContextSaveGState(a7);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, x, y);
  v20 = v22;
  CGAffineTransformScale(&transform, &v20, a6, a6);
  v22 = transform;
  v20 = transform;
  CGAffineTransformRotate(&transform, &v20, a5);
  v22 = transform;
  [v14 endPoint];
  v16 = -v15;
  [v14 endPoint];
  v20 = v22;
  CGAffineTransformTranslate(&transform, &v20, v16, -v17);
  v22 = transform;
  CGContextConcatCTM(a7, &transform);
  v18 = [v14 path];
  CGContextAddPath(a7, [v18 CGPath]);

  if ([v14 isFilled])
  {
    CGContextFillPath(a7);
  }

  else
  {
    [(CRLStroke *)self width];
    CGContextSetLineWidth(a7, v19 / a6);
    CGContextSetLineJoin(a7, [v14 lineJoin]);
    CGContextStrokePath(a7);
  }

  CGContextRestoreGState(a7);
}

- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, x, y);
  t1 = v35;
  CGAffineTransformScale(&v34, &t1, a6, a6);
  v35 = v34;
  t1 = v34;
  CGAffineTransformRotate(&v34, &t1, a5);
  v35 = v34;
  [v13 endPoint];
  v15 = -v14;
  [v13 endPoint];
  t1 = v35;
  CGAffineTransformTranslate(&v34, &t1, v15, -v16);
  v35 = v34;
  t1 = v34;
  v17 = *&a7->c;
  *&v32.a = *&a7->a;
  *&v32.c = v17;
  *&v32.tx = *&a7->tx;
  CGAffineTransformConcat(&v34, &t1, &v32);
  v35 = v34;
  v18 = [v13 path];
  v19 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v18 CGPath]);

  v34 = v35;
  [v19 transformUsingAffineTransform:&v34];
  if ([v13 isFilled])
  {
    [v19 bounds];
  }

  else
  {
    [(CRLStroke *)self width];
    [v19 setLineWidth:?];
    [v19 setLineJoinStyle:{sub_10019FE7C(objc_msgSend(v13, "lineJoin"))}];
    [v19 boundsIncludingStroke];
  }

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)pathForLineEnd:(id)a3 wrapPath:(BOOL)a4 atPoint:(CGPoint)a5 atAngle:(double)a6 withScale:(double)a7
{
  y = a5.y;
  x = a5.x;
  v13 = a3;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeTranslation(&v23, x, y);
  v21 = v23;
  CGAffineTransformScale(&v22, &v21, a7, a7);
  v23 = v22;
  v21 = v22;
  CGAffineTransformRotate(&v22, &v21, a6);
  v23 = v22;
  [v13 endPoint];
  v15 = -v14;
  [v13 endPoint];
  v21 = v23;
  CGAffineTransformTranslate(&v22, &v21, v15, -v16);
  v23 = v22;
  if (a4)
  {
    [v13 wrapPath];
  }

  else
  {
    [v13 path];
  }
  v17 = ;
  v18 = [v17 copy];

  v22 = v23;
  [v18 transformUsingAffineTransform:&v22];
  if ([v13 isFilled])
  {
    [v18 setLineWidth:0.0];
  }

  else
  {
    [(CRLStroke *)self width];
    [v18 setLineWidth:?];
    [v18 setLineJoinStyle:{sub_10019FE7C(objc_msgSend(v13, "lineJoin"))}];
    v19 = [v18 strokedCopy];

    v18 = v19;
  }

  return v18;
}

- (double)horizontalMarginForSwatch
{
  v2 = [(CRLStroke *)self pattern];
  v3 = [v2 isRoundDash];

  result = 0.0;
  if (v3)
  {
    return -3.0;
  }

  return result;
}

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLStroke *)self horizontalMarginForSwatch];
  v11 = v10;
  if ([(CRLStroke *)self isNullStroke])
  {
    CGContextSaveGState(a4);
    v12 = (height + -35.0) * 0.5;
    v13 = y + floorf(v12) + 0.5;
    v14 = width + v11 * -2.0 + -1.0;
    v15 = [(CRLStroke *)self color];
    CGContextSetStrokeColorWithColor(a4, [v15 CGColor]);

    *lengths = xmmword_101465790;
    CGContextSetLineWidth(a4, 1.0);
    CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
    v41.origin.x = x + v11 + 0.5;
    v41.origin.y = v13;
    v41.size.width = v14;
    v41.size.height = 35.0;
    CGContextStrokeRect(a4, v41);
    CGContextRestoreGState(a4);
    v16 = [(CRLStroke *)self color];
    CGContextSetFillColorWithColor(a4, [v16 CGColor]);

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"NONE_STROKE_LABEL" value:@"None" table:0];

    UIGraphicsPushContext(a4);
    v19 = [UIFont boldSystemFontOfSize:16.0];
    v37 = NSFontAttributeName;
    v38 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v18 sizeWithAttributes:v20];
    *&v21 = (v14 - v21) * 0.5;
    *&v22 = (35.0 - v22) * 0.5;
    [v18 drawAtPoint:v20 withAttributes:{x + v11 + 0.5 + floorf(*&v21), v13 + floorf(*&v22)}];
    UIGraphicsPopContext();
  }

  else
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    *&v23 = CGRectInset(v42, v11, 0.0);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MidY = CGRectGetMidY(v43);
    [(CRLStroke *)self width];
    v26 = MidY + v25 * -0.5;
    [(CRLStroke *)self width];
    v28 = v27;
    v29 = [(CRLStroke *)self pattern];
    [(CRLStroke *)self width];
    [v29 p_renderableLengthForUnclippedPatternWithLineWidth:? withinAvailableLength:?];
    v31 = v30;

    Mutable = CGPathCreateMutable();
    v44.origin.x = v23;
    v44.origin.y = v26;
    v44.size.width = v31;
    v44.size.height = v28;
    MinX = CGRectGetMinX(v44);
    v45.origin.x = v23;
    v45.origin.y = v26;
    v45.size.width = v31;
    v45.size.height = v28;
    v34 = CGRectGetMidY(v45);
    CGPathMoveToPoint(Mutable, 0, MinX, v34);
    v46.origin.x = v23;
    v46.origin.y = v26;
    v46.size.width = v31;
    v46.size.height = v28;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v23;
    v47.origin.y = v26;
    v47.size.width = v31;
    v47.size.height = v28;
    v36 = CGRectGetMidY(v47);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v36);
    [(CRLStroke *)self paintPath:Mutable inContext:a4];

    CGPathRelease(Mutable);
  }
}

- (BOOL)isNearlyWhite
{
  if ([(CRLStroke *)self isNullStroke])
  {
    return 0;
  }

  v4 = [(CRLStroke *)self color];
  v5 = [v4 isNearlyWhite];

  return v5;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)a3
{
  if ([(CRLStroke *)self isNullStroke])
  {
    return 0;
  }

  v6 = [(CRLStroke *)self color];
  v7 = [v6 requiresOutlineOnBackgroundWithAppearance:a3];

  return v7;
}

- (BOOL)canApplyDirectlyToRepRenderable
{
  if (![(CRLStroke *)self shouldRender])
  {
    return 1;
  }

  v3 = [(CRLStroke *)self color];
  v4 = [v3 isOpaque];

  v5 = [(CRLStroke *)self pattern];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 patternType] != 1;
  }

  v8 = [(CRLStroke *)self cap];
  v9 = (v8 | [(CRLStroke *)self join]) == 0;
  if (v6)
  {
    v9 = 0;
  }

  if (v4)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applyToRepRenderable:(id)a3 withScale:(double)a4
{
  v6 = a3;
  if (![(CRLStroke *)self canApplyDirectlyToRepRenderable])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A538();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A54C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136A5E0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLStroke applyToRepRenderable:withScale:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1056 isFatal:0 description:"Applying stroke with unsupported properties to renderable"];
  }

  if ([(CRLStroke *)self shouldRender])
  {
    v10 = [(CRLStroke *)self color];
    [v6 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    [(CRLStroke *)self width];
    v12 = v11 * a4;
  }

  else
  {
    [v6 setBorderColor:0];
    v12 = 0.0;
  }

  [v6 setBorderWidth:v12];
}

- (BOOL)canApplyToShapeRenderable
{
  if (([(CRLStroke *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [(CRLStroke *)self isMemberOfClass:v4];
}

- (void)applyToShapeRenderable:(id)a3 insideStroke:(BOOL)a4 withScale:(double)a5
{
  v6 = a4;
  v8 = a3;
  if (![(CRLStroke *)self canApplyToShapeRenderable])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A608();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A61C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136A6B0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLStroke applyToShapeRenderable:insideStroke:withScale:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1082 isFatal:0 description:"don't try to apply this stroke to a shape renderable"];
  }

  if ([(CRLStroke *)self shouldRender])
  {
    [(CRLStroke *)self width];
    v13 = v12 * a5;
    v14 = [(CRLStroke *)self color];
    [v8 setStrokeColor:{objc_msgSend(v14, "CGColor")}];

    v15 = v13 + v13;
    if (!v6)
    {
      v15 = v13;
    }

    [v8 setLineWidth:v15];
    [(CRLStroke *)self miterLimit];
    [v8 setMiterLimit:?];
    [v8 setCGLineCap:{sub_10019FE64(-[CRLStroke cap](self, "cap"))}];
    [v8 setCGLineJoin:{sub_10019FE64(-[CRLStroke join](self, "join"))}];
    if ([(CRLStroke *)self supportsPattern])
    {
      v16 = [(CRLStroke *)self pattern];
      [v16 p_applyToShapeRenderable:v8 lineWidth:v13];
    }

    else
    {
      [v8 setLineDashPattern:0];
    }
  }

  else
  {
    [v8 setStrokeColor:0];
  }
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)a3
{
  v3 = fmin(a3->a, a3->d);
  v4 = [(CRLStroke *)self mutableCopy];
  [v4 width];
  [v4 setWidth:{fmax(floor(v3 * v5), 0.25)}];

  return v4;
}

@end