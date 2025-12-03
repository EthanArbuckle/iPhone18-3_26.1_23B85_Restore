@interface CRLStroke
+ (CRLStroke)strokeWithColor:(id)color width:(double)width;
+ (CRLStroke)strokeWithColor:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern;
+ (CRLStroke)strokeWithColor:(id)color width:(double)width pattern:(id)pattern;
+ (id)emptyStroke;
+ (id)i_newEmptyStroke;
+ (id)i_newStroke;
+ (id)stroke;
- (BOOL)canApplyDirectlyToRepRenderable;
- (BOOL)canApplyToShapeRenderable;
- (BOOL)isDash;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNearlyWhite;
- (BOOL)isRoundDash;
- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance;
- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform;
- (CRLStroke)init;
- (CRLStroke)initWithColor:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern miterLimit:(double)limit;
- (NSString)description;
- (_CRLStrokeOutsets)outsets;
- (double)dashSpacing;
- (double)horizontalMarginForSwatch;
- (id)colorForCGContext:(CGContext *)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)pathForLineEnd:(id)end wrapPath:(BOOL)path atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale;
- (id)pathToStrokeFromCRLBezierPath:(id)path;
- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform;
- (id)strokeLineEnd:(id)end;
- (unint64_t)hash;
- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)applyToRepRenderable:(id)renderable withScale:(double)scale;
- (void)applyToShapeRenderable:(id)renderable insideStroke:(BOOL)stroke withScale:(double)scale;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)i_setActualWidth:(double)width;
- (void)i_setCap:(unint64_t)cap;
- (void)i_setPattern:(id)pattern;
- (void)i_setPatternPropertiesFromStroke:(id)stroke;
- (void)i_setPropertiesFromStroke:(id)stroke;
- (void)i_setWidth:(double)width;
- (void)p_strokePathChunk:(CGPath *)chunk inContext:(CGContext *)context wantsInteriorStroke:(BOOL)stroke;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
- (void)paintRect:(CGRect)rect wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context;
@end

@implementation CRLStroke

- (CRLStroke)initWithColor:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern miterLimit:(double)limit
{
  colorCopy = color;
  patternCopy = pattern;
  v25.receiver = self;
  v25.super_class = CRLStroke;
  v16 = [(CRLStroke *)&v25 init];
  if (v16)
  {
    if (width < 0.0)
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
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:371 isFatal:0 description:"Stroke width (%f) should not be negative.", *&width];
    }

    if (width < 0.0)
    {
      width = 0.0;
    }

    v20 = [colorCopy copy];
    color = v16->_color;
    v16->_color = v20;

    v16->_width = width;
    v16->_actualWidth = width;
    v16->_cap = cap;
    v16->_join = join;
    v22 = [patternCopy copy];
    pattern = v16->_pattern;
    v16->_pattern = v22;

    v16->_miterLimit = limit;
    if ([patternCopy isRoundDash])
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableStroke allocWithZone:zone];
  color = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v7 = v6;
  v8 = [(CRLStroke *)self cap];
  join = [(CRLStroke *)self join];
  pattern = [(CRLStroke *)self pattern];
  [(CRLStroke *)self miterLimit];
  v12 = [(CRLStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];

  [(CRLStroke *)self actualWidth];
  [(CRLStroke *)v12 i_setActualWidth:?];
  return v12;
}

- (void)i_setWidth:(double)width
{
  if (width < 0.0)
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
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:443 isFatal:0 description:"Stroke width (%f) should not be negative.", *&width];
  }

  widthCopy = 0.0;
  if (width >= 0.0)
  {
    widthCopy = width;
  }

  self->_width = widthCopy;
}

- (void)i_setCap:(unint64_t)cap
{
  if (self->_cap != cap)
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
      self->_cap = cap;
    }
  }
}

- (void)i_setPattern:(id)pattern
{
  patternCopy = pattern;
  pattern = [(CRLStroke *)self pattern];

  v5 = patternCopy;
  if (pattern != patternCopy)
  {
    isRoundDash = [(CRLStroke *)self isRoundDash];
    v7 = [patternCopy copy];
    pattern = self->_pattern;
    self->_pattern = v7;

    if ([patternCopy isRoundDash])
    {
      v5 = patternCopy;
      if (isRoundDash)
      {
        goto LABEL_8;
      }

      v9 = 1;
    }

    else
    {
      v5 = patternCopy;
      if (!isRoundDash)
      {
        goto LABEL_8;
      }

      v9 = 0;
    }

    [(CRLStroke *)self i_setCap:v9];
    v5 = patternCopy;
  }

LABEL_8:
}

- (void)i_setActualWidth:(double)width
{
  if (width < 0.0)
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
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:497 isFatal:0 description:"Actual stroke width (%f) should not be negative.", *&width];
  }

  widthCopy = 0.0;
  if (width >= 0.0)
  {
    widthCopy = width;
  }

  self->_actualWidth = widthCopy;
}

+ (id)i_newStroke
{
  v2 = [self alloc];
  v3 = +[CRLColor blackColor];
  v4 = +[CRLStrokePattern solidPattern];
  v5 = [v2 initWithColor:v3 width:0 cap:0 join:v4 pattern:1.0];

  return v5;
}

+ (id)i_newEmptyStroke
{
  v2 = [self alloc];
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
  block[4] = self;
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
  block[4] = self;
  if (qword_101A34E70 != -1)
  {
    dispatch_once(&qword_101A34E70, block);
  }

  v2 = qword_101A34E78;

  return v2;
}

+ (CRLStroke)strokeWithColor:(id)color width:(double)width
{
  colorCopy = color;
  v6 = objc_alloc(objc_opt_class());
  v7 = +[CRLStrokePattern solidPattern];
  v8 = [v6 initWithColor:colorCopy width:0 cap:0 join:v7 pattern:width];

  return v8;
}

+ (CRLStroke)strokeWithColor:(id)color width:(double)width pattern:(id)pattern
{
  patternCopy = pattern;
  colorCopy = color;
  v9 = [objc_alloc(objc_opt_class()) initWithColor:colorCopy width:0 cap:0 join:patternCopy pattern:width];

  return v9;
}

+ (CRLStroke)strokeWithColor:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern
{
  patternCopy = pattern;
  colorCopy = color;
  v13 = [objc_alloc(objc_opt_class()) initWithColor:colorCopy width:cap cap:join join:patternCopy pattern:width];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  mutableClass = [objc_opt_class() mutableClass];
  if (mutableClass != [objc_opt_class() mutableClass])
  {
    goto LABEL_5;
  }

  supportsWidth = [(CRLStroke *)self supportsWidth];
  supportsWidth2 = [(CRLStroke *)equalCopy supportsWidth];
  if (supportsWidth)
  {
    if (!supportsWidth2)
    {
      goto LABEL_5;
    }

    [(CRLStroke *)self width];
    v10 = v9;
    [(CRLStroke *)equalCopy width];
    if (v10 != v11 && vabdd_f64(v10, v11) >= 0.00999999978)
    {
      goto LABEL_5;
    }
  }

  else if (supportsWidth2)
  {
    goto LABEL_5;
  }

  supportsLineOptions = [(CRLStroke *)self supportsLineOptions];
  supportsLineOptions2 = [(CRLStroke *)equalCopy supportsLineOptions];
  if (supportsLineOptions)
  {
    if (!supportsLineOptions2)
    {
      goto LABEL_5;
    }

    v14 = [(CRLStroke *)self cap];
    if (v14 != [(CRLStroke *)equalCopy cap])
    {
      goto LABEL_5;
    }

    join = [(CRLStroke *)self join];
    if (join != [(CRLStroke *)equalCopy join])
    {
      goto LABEL_5;
    }

    [(CRLStroke *)self miterLimit];
    v17 = v16;
    [(CRLStroke *)equalCopy miterLimit];
    if (v17 != v18)
    {
      goto LABEL_5;
    }
  }

  else if (supportsLineOptions2)
  {
    goto LABEL_5;
  }

  supportsPattern = [(CRLStroke *)self supportsPattern];
  supportsPattern2 = [(CRLStroke *)equalCopy supportsPattern];
  if (supportsPattern)
  {
    if (!supportsPattern2)
    {
      goto LABEL_5;
    }

    pattern = [(CRLStroke *)self pattern];
    pattern2 = [(CRLStroke *)equalCopy pattern];
    v23 = [pattern isEqual:pattern2];

    if ((v23 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (supportsPattern2)
  {
    goto LABEL_5;
  }

  supportsColor = [(CRLStroke *)self supportsColor];
  supportsColor2 = [(CRLStroke *)equalCopy supportsColor];
  if (supportsColor)
  {
    if (supportsColor2)
    {
      color = self->_color;
      color = [(CRLStroke *)equalCopy color];
      if (!(color | color))
      {
        goto LABEL_30;
      }

      v28 = color;
      v29 = [(CRLColor *)color isEqual:color];

      if (v29)
      {
        goto LABEL_30;
      }
    }
  }

  else if ((supportsColor2 & 1) == 0)
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
  pattern = [(CRLStroke *)self pattern];
  [(CRLStroke *)self width];
  v7 = v6;
  color = [(CRLStroke *)self color];
  v9 = sub_10050FC30([(CRLStroke *)self cap]);
  v10 = sub_10050FC54([(CRLStroke *)self join]);
  v11 = [NSString stringWithFormat:@"<%@ %p pattern=<%@>' width=%f color=<%@> cap=%@ join=%@>", v4, self, pattern, v7, color, v9, v10];

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
  isDash = [(CRLStrokePattern *)self->_pattern isDash];
  if (isDash)
  {
    LOBYTE(isDash) = self->_cap != 1;
  }

  return isDash;
}

- (BOOL)isRoundDash
{
  isRoundDash = [(CRLStrokePattern *)self->_pattern isRoundDash];
  if (isRoundDash)
  {
    LOBYTE(isRoundDash) = self->_cap == 1;
  }

  return isRoundDash;
}

- (id)pathToStrokeFromCRLBezierPath:(id)path
{
  pathCopy = path;
  v5 = -[CRLStroke pathToStrokeFromCGPath:](self, "pathToStrokeFromCGPath:", [pathCopy CGPath]);
  if (v5 == [pathCopy CGPath])
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = objc_alloc_init(CRLBezierPath);
    [pathCopy copyPathAttributesTo:v6];
    v7 = [CRLBezierPath bezierPathWithCGPath:v5];
    [(CRLBezierPath *)v6 appendBezierPath:v7];
  }

  return v6;
}

- (_CRLStrokeOutsets)outsets
{
  supportsWidth = [(CRLStroke *)self supportsWidth];
  v4 = 0.0;
  if (supportsWidth)
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

- (void)i_setPropertiesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  color = [strokeCopy color];
  [(CRLStroke *)self setI_color:color];

  [strokeCopy width];
  [(CRLStroke *)self i_setWidth:?];
  -[CRLStroke setI_join:](self, "setI_join:", [strokeCopy join]);
  [strokeCopy miterLimit];
  [(CRLStroke *)self setI_miterLimit:?];
  [strokeCopy actualWidth];
  [(CRLStroke *)self i_setActualWidth:?];
  pattern = [strokeCopy pattern];
  [(CRLStroke *)self i_setPattern:pattern];

  v7 = [strokeCopy cap];

  [(CRLStroke *)self i_setCap:v7];
}

- (void)i_setPatternPropertiesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  -[CRLStroke setI_join:](self, "setI_join:", [strokeCopy join]);
  [strokeCopy miterLimit];
  [(CRLStroke *)self setI_miterLimit:?];
  pattern = [strokeCopy pattern];
  [(CRLStroke *)self i_setPattern:pattern];

  v6 = [strokeCopy cap];

  [(CRLStroke *)self i_setCap:v6];
}

- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  v7 = [(CRLStroke *)self colorForCGContext:?];
  CGContextSetStrokeColorWithColor(context, [v7 CGColor]);
  width = self->_width;
  if (strokeCopy)
  {
    width = width + width;
  }

  CGContextSetLineWidth(context, width);
  v9 = sub_10019FE64(self->_join);
  CGContextSetLineJoin(context, v9);
  CGContextSetMiterLimit(context, self->_miterLimit);
  cap = self->_cap;
  [(CRLStrokePattern *)self->_pattern i_applyToContext:context lineWidth:&cap capStyle:self->_width * (self->_actualWidth / self->_width)];
  v10 = sub_10019FE64(cap);
  CGContextSetLineCap(context, v10);
}

- (id)strokeLineEnd:(id)end
{
  endCopy = end;
  identifier = [endCopy identifier];
  v5 = identifier;
  if (identifier && [identifier rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v5, "rangeOfString:", @":"}];
    v6 = [CRLLineEnd lineEndWithIdentifier:v7];
  }

  else
  {
    v6 = endCopy;
  }

  return v6;
}

- (id)colorForCGContext:(CGContext *)context
{
  if (sub_1005106C8(context))
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

- (void)paintRect:(CGRect)rect wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context
{
  strokeCopy = stroke;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGPathAddRect(Mutable, 0, v14);
  [(CRLStroke *)self paintPath:Mutable wantsInteriorStroke:strokeCopy inContext:context];

  CGPathRelease(Mutable);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  strokeCopy = stroke;
  if ([(CRLStroke *)self shouldRender:path])
  {
    CGContextSaveGState(context);
    if (sub_1001903CC(path) > 0x9C40)
    {
      v12 = [CRLBezierPath bezierPathWithCGPath:path];
      v13 = [v12 pathSplitAtSubpathBoundariesWithSoftElementLimit:40000 hardElementLimit:50000];
      color = [(CRLStroke *)self color];
      [color alphaComponent];
      v16 = v15;

      if (v16 >= 1.0)
      {
        [(CRLStroke *)self applyToContext:context insideStroke:strokeCopy];
      }

      else
      {
        color2 = [(CRLStroke *)self color];
        [color2 alphaComponent];
        CGContextSetAlpha(context, v18);

        CGContextBeginTransparencyLayer(context, 0);
        v19 = [(CRLStroke *)self mutableCopy];
        color3 = [v19 color];
        v21 = [color3 colorWithAlphaComponent:1.0];
        [v19 setColor:v21];

        [v19 applyToContext:context insideStroke:strokeCopy];
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
            -[CRLStroke p_strokePathChunk:inContext:wantsInteriorStroke:](self, "p_strokePathChunk:inContext:wantsInteriorStroke:", [v27 CGPath], context, strokeCopy);
          }

          v24 = [v22 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v24);
      }

      if (v16 < 1.0)
      {
        CGContextEndTransparencyLayer(context);
      }
    }

    else
    {
      [(CRLStroke *)self applyToContext:context insideStroke:strokeCopy];
      [(CRLStroke *)self p_strokePathChunk:path inContext:context wantsInteriorStroke:strokeCopy];
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_strokePathChunk:(CGPath *)chunk inContext:(CGContext *)context wantsInteriorStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  CGContextSaveGState(context);
  if (strokeCopy)
  {
    CGContextAddPath(context, chunk);
    CGContextClip(context);
  }

  CGContextAddPath(context, chunk);
  CGContextStrokePath(context);

  CGContextRestoreGState(context);
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  y = point.y;
  x = point.x;
  endCopy = end;
  CGContextSaveGState(context);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, x, y);
  v20 = v22;
  CGAffineTransformScale(&transform, &v20, scale, scale);
  v22 = transform;
  v20 = transform;
  CGAffineTransformRotate(&transform, &v20, angle);
  v22 = transform;
  [endCopy endPoint];
  v16 = -v15;
  [endCopy endPoint];
  v20 = v22;
  CGAffineTransformTranslate(&transform, &v20, v16, -v17);
  v22 = transform;
  CGContextConcatCTM(context, &transform);
  path = [endCopy path];
  CGContextAddPath(context, [path CGPath]);

  if ([endCopy isFilled])
  {
    CGContextFillPath(context);
  }

  else
  {
    [(CRLStroke *)self width];
    CGContextSetLineWidth(context, v19 / scale);
    CGContextSetLineJoin(context, [endCopy lineJoin]);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform
{
  y = point.y;
  x = point.x;
  endCopy = end;
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeTranslation(&v35, x, y);
  t1 = v35;
  CGAffineTransformScale(&v34, &t1, scale, scale);
  v35 = v34;
  t1 = v34;
  CGAffineTransformRotate(&v34, &t1, angle);
  v35 = v34;
  [endCopy endPoint];
  v15 = -v14;
  [endCopy endPoint];
  t1 = v35;
  CGAffineTransformTranslate(&v34, &t1, v15, -v16);
  v35 = v34;
  t1 = v34;
  v17 = *&transform->c;
  *&v32.a = *&transform->a;
  *&v32.c = v17;
  *&v32.tx = *&transform->tx;
  CGAffineTransformConcat(&v34, &t1, &v32);
  v35 = v34;
  path = [endCopy path];
  v19 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [path CGPath]);

  v34 = v35;
  [v19 transformUsingAffineTransform:&v34];
  if ([endCopy isFilled])
  {
    [v19 bounds];
  }

  else
  {
    [(CRLStroke *)self width];
    [v19 setLineWidth:?];
    [v19 setLineJoinStyle:{sub_10019FE7C(objc_msgSend(endCopy, "lineJoin"))}];
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

- (id)pathForLineEnd:(id)end wrapPath:(BOOL)path atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale
{
  y = point.y;
  x = point.x;
  endCopy = end;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeTranslation(&v23, x, y);
  v21 = v23;
  CGAffineTransformScale(&v22, &v21, scale, scale);
  v23 = v22;
  v21 = v22;
  CGAffineTransformRotate(&v22, &v21, angle);
  v23 = v22;
  [endCopy endPoint];
  v15 = -v14;
  [endCopy endPoint];
  v21 = v23;
  CGAffineTransformTranslate(&v22, &v21, v15, -v16);
  v23 = v22;
  if (path)
  {
    [endCopy wrapPath];
  }

  else
  {
    [endCopy path];
  }
  v17 = ;
  v18 = [v17 copy];

  v22 = v23;
  [v18 transformUsingAffineTransform:&v22];
  if ([endCopy isFilled])
  {
    [v18 setLineWidth:0.0];
  }

  else
  {
    [(CRLStroke *)self width];
    [v18 setLineWidth:?];
    [v18 setLineJoinStyle:{sub_10019FE7C(objc_msgSend(endCopy, "lineJoin"))}];
    strokedCopy = [v18 strokedCopy];

    v18 = strokedCopy;
  }

  return v18;
}

- (double)horizontalMarginForSwatch
{
  pattern = [(CRLStroke *)self pattern];
  isRoundDash = [pattern isRoundDash];

  result = 0.0;
  if (isRoundDash)
  {
    return -3.0;
  }

  return result;
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CRLStroke *)self horizontalMarginForSwatch];
  v11 = v10;
  if ([(CRLStroke *)self isNullStroke])
  {
    CGContextSaveGState(context);
    v12 = (height + -35.0) * 0.5;
    v13 = y + floorf(v12) + 0.5;
    v14 = width + v11 * -2.0 + -1.0;
    color = [(CRLStroke *)self color];
    CGContextSetStrokeColorWithColor(context, [color CGColor]);

    *lengths = xmmword_101465790;
    CGContextSetLineWidth(context, 1.0);
    CGContextSetLineDash(context, 0.0, lengths, 2uLL);
    v41.origin.x = x + v11 + 0.5;
    v41.origin.y = v13;
    v41.size.width = v14;
    v41.size.height = 35.0;
    CGContextStrokeRect(context, v41);
    CGContextRestoreGState(context);
    color2 = [(CRLStroke *)self color];
    CGContextSetFillColorWithColor(context, [color2 CGColor]);

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"NONE_STROKE_LABEL" value:@"None" table:0];

    UIGraphicsPushContext(context);
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
    pattern = [(CRLStroke *)self pattern];
    [(CRLStroke *)self width];
    [pattern p_renderableLengthForUnclippedPatternWithLineWidth:? withinAvailableLength:?];
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
    [(CRLStroke *)self paintPath:Mutable inContext:context];

    CGPathRelease(Mutable);
  }
}

- (BOOL)isNearlyWhite
{
  if ([(CRLStroke *)self isNullStroke])
  {
    return 0;
  }

  color = [(CRLStroke *)self color];
  isNearlyWhite = [color isNearlyWhite];

  return isNearlyWhite;
}

- (BOOL)requiresOutlineOnBackgroundWithAppearance:(unint64_t)appearance
{
  if ([(CRLStroke *)self isNullStroke])
  {
    return 0;
  }

  color = [(CRLStroke *)self color];
  v7 = [color requiresOutlineOnBackgroundWithAppearance:appearance];

  return v7;
}

- (BOOL)canApplyDirectlyToRepRenderable
{
  if (![(CRLStroke *)self shouldRender])
  {
    return 1;
  }

  color = [(CRLStroke *)self color];
  isOpaque = [color isOpaque];

  pattern = [(CRLStroke *)self pattern];
  if ([pattern count])
  {
    v6 = 1;
  }

  else
  {
    v6 = [pattern patternType] != 1;
  }

  v8 = [(CRLStroke *)self cap];
  v9 = (v8 | [(CRLStroke *)self join]) == 0;
  if (v6)
  {
    v9 = 0;
  }

  if (isOpaque)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applyToRepRenderable:(id)renderable withScale:(double)scale
{
  renderableCopy = renderable;
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
    color = [(CRLStroke *)self color];
    [renderableCopy setBorderColor:{objc_msgSend(color, "CGColor")}];

    [(CRLStroke *)self width];
    v12 = v11 * scale;
  }

  else
  {
    [renderableCopy setBorderColor:0];
    v12 = 0.0;
  }

  [renderableCopy setBorderWidth:v12];
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

- (void)applyToShapeRenderable:(id)renderable insideStroke:(BOOL)stroke withScale:(double)scale
{
  strokeCopy = stroke;
  renderableCopy = renderable;
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
    v13 = v12 * scale;
    color = [(CRLStroke *)self color];
    [renderableCopy setStrokeColor:{objc_msgSend(color, "CGColor")}];

    v15 = v13 + v13;
    if (!strokeCopy)
    {
      v15 = v13;
    }

    [renderableCopy setLineWidth:v15];
    [(CRLStroke *)self miterLimit];
    [renderableCopy setMiterLimit:?];
    [renderableCopy setCGLineCap:{sub_10019FE64(-[CRLStroke cap](self, "cap"))}];
    [renderableCopy setCGLineJoin:{sub_10019FE64(-[CRLStroke join](self, "join"))}];
    if ([(CRLStroke *)self supportsPattern])
    {
      pattern = [(CRLStroke *)self pattern];
      [pattern p_applyToShapeRenderable:renderableCopy lineWidth:v13];
    }

    else
    {
      [renderableCopy setLineDashPattern:0];
    }
  }

  else
  {
    [renderableCopy setStrokeColor:0];
  }
}

- (id)strokeByTransformingByTransform:(CGAffineTransform *)transform
{
  v3 = fmin(transform->a, transform->d);
  v4 = [(CRLStroke *)self mutableCopy];
  [v4 width];
  [v4 setWidth:{fmax(floor(v3 * v5), 0.25)}];

  return v4;
}

@end