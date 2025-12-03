@interface CRLStrokePattern
+ (CRLStrokePattern)strokePatternWithPattern:(const double *)pattern count:(unint64_t)count phase:(double)phase;
+ (id)dashPatternWithSpacing:(double)spacing;
+ (id)emptyPattern;
+ (id)longDashPattern;
+ (id)mediumDashPattern;
+ (id)roundDashPattern;
+ (id)roundDashPatternWithSpacing:(double)spacing;
+ (id)shortDashPattern;
+ (id)solidPattern;
- (BOOL)isDash;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRoundDash;
- (CRLStrokePattern)initWithPatternType:(int64_t)type pattern:(const double *)pattern count:(unint64_t)count phase:(double)phase;
- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)width withinAvailableLength:(double)length;
- (id)description;
- (id)p_patternString;
- (id)p_typeString;
- (unint64_t)hash;
- (void)applyToShapeRenderable:(id)renderable;
- (void)i_applyToContext:(CGContext *)context lineWidth:(double)width capStyle:(unint64_t *)style;
- (void)p_applyToShapeRenderable:(id)renderable lineWidth:(double)width;
@end

@implementation CRLStrokePattern

- (CRLStrokePattern)initWithPatternType:(int64_t)type pattern:(const double *)pattern count:(unint64_t)count phase:(double)phase
{
  v16.receiver = self;
  v16.super_class = CRLStrokePattern;
  v9 = [(CRLStrokePattern *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    if (count >= 7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101369F94();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101369FBC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136A05C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLStrokePattern initWithPatternType:pattern:count:phase:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:46 isFatal:0 description:"Pattern should have no more than CRL_MAX_STROKE_PATTERN (%d) elements", 6];
    }

    countCopy = 6;
    if (count < 6)
    {
      countCopy = count;
    }

    v10->_count = countCopy;
    if (pattern)
    {
      memcpy(v10->_pattern, pattern, 8 * countCopy);
    }
  }

  return v10;
}

+ (id)solidPattern
{
  if (qword_101A34E00 != -1)
  {
    sub_10136A084();
  }

  v3 = qword_101A34E08;

  return v3;
}

+ (id)emptyPattern
{
  if (qword_101A34E10 != -1)
  {
    sub_10136A098();
  }

  v3 = qword_101A34E18;

  return v3;
}

+ (id)shortDashPattern
{
  if (qword_101A34E20 != -1)
  {
    sub_10136A0AC();
  }

  v3 = qword_101A34E28;

  return v3;
}

+ (id)mediumDashPattern
{
  if (qword_101A34E30 != -1)
  {
    sub_10136A0C0();
  }

  v3 = qword_101A34E38;

  return v3;
}

+ (id)longDashPattern
{
  if (qword_101A34E40 != -1)
  {
    sub_10136A0D4();
  }

  v3 = qword_101A34E48;

  return v3;
}

+ (id)roundDashPattern
{
  if (qword_101A34E50 != -1)
  {
    sub_10136A0E8();
  }

  v3 = qword_101A34E58;

  return v3;
}

+ (id)roundDashPatternWithSpacing:(double)spacing
{
  v5[0] = 0x3F50624DD2F1A9FCLL;
  *&v5[1] = spacing;
  v3 = [CRLStrokePattern strokePatternWithPattern:v5 count:2 phase:0.0];

  return v3;
}

+ (id)dashPatternWithSpacing:(double)spacing
{
  *v5 = spacing;
  *&v5[1] = spacing;
  v3 = [CRLStrokePattern strokePatternWithPattern:v5 count:2 phase:0.0];

  return v3;
}

+ (CRLStrokePattern)strokePatternWithPattern:(const double *)pattern count:(unint64_t)count phase:(double)phase
{
  v5 = [[CRLStrokePattern alloc] initWithPattern:pattern count:count phase:phase];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);
  if (!equalCopy)
  {
    goto LABEL_22;
  }

  if (equalCopy == self)
  {
LABEL_23:
    LOBYTE(v22) = 1;
    goto LABEL_24;
  }

  if (-[CRLStrokePattern patternType](self, "patternType") && (v7 = -[CRLStrokePattern patternType](self, "patternType"), v7 != [v6 patternType]) || (-[CRLStrokePattern phase](self, "phase"), v9 = v8, objc_msgSend(v6, "phase"), v9 != v10) && vabdd_f64(v9, v10) >= 0.00999999978 || (v11 = -[CRLStrokePattern count](self, "count"), v11 != objc_msgSend(v6, "count")))
  {
LABEL_22:
    LOBYTE(v22) = 0;
    goto LABEL_24;
  }

  v12 = [(CRLStrokePattern *)self count];
  v13 = v12;
  if (v12 >= 6)
  {
    v14 = 6;
  }

  else
  {
    v14 = v12;
  }

  pattern = [v6 pattern];
  if (!v13)
  {
    goto LABEL_23;
  }

  pattern = self->_pattern;
  v17 = v14 - 1;
  do
  {
    v18 = *pattern++;
    v19 = v18;
    v20 = *pattern++;
    v21 = v19 == v20;
    v22 = vabdd_f64(v19, v20) < 0.00999999978 || v21;
    v24 = v17-- != 0;
  }

  while (v22 && v24);
LABEL_24:

  return v22;
}

- (unint64_t)hash
{
  v3 = sub_1001821F8(&self->_count, 8);

  return sub_100083B3C(&self->_type, 8, v3);
}

- (id)description
{
  p_patternString = [(CRLStrokePattern *)self p_patternString];
  p_typeString = [(CRLStrokePattern *)self p_typeString];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@ (%p) pattern: %@ count: %ld phase: %f type: %@", v6, self, p_patternString, self->_count, *&self->_phase, p_typeString];

  return v7;
}

- (id)p_patternString
{
  if (self->_count)
  {
    v3 = 0;
    v4 = @"none";
    pattern = self->_pattern;
    do
    {
      if (v3)
      {
        [NSString stringWithFormat:@"%@, %f", v4, *&pattern[v3]];
      }

      else
      {
        [NSString stringWithFormat:@"%f", *pattern, v8];
      }
      v6 = ;

      ++v3;
      v4 = v6;
    }

    while (v3 < self->_count);
  }

  else
  {
    v6 = @"none";
  }

  return v6;
}

- (id)p_typeString
{
  type = self->_type;
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_10185F3C0 + type);
  }
}

- (BOOL)isDash
{
  if (self->_count != 2)
  {
    return 0;
  }

  v2 = self->_pattern[0];
  v3 = self->_pattern[1];
  if (v2 != v3 && vabdd_f64(v2, v3) >= 0.0001)
  {
    return 0;
  }

  if (fabs(v2 + -0.001) >= 0.0001)
  {
    return v2 != 0.001;
  }

  return 0;
}

- (BOOL)isRoundDash
{
  if (self->_count != 2)
  {
    return 0;
  }

  result = 0;
  v4 = self->_pattern[0];
  v5 = self->_pattern[1];
  if (v4 != v5 && vabdd_f64(v4, v5) >= 0.0001)
  {
    return fabs(v4 + -0.001) < 0.0001 || v4 == 0.001;
  }

  return result;
}

- (void)i_applyToContext:(CGContext *)context lineWidth:(double)width capStyle:(unint64_t *)style
{
  v19 = 0u;
  v20 = 0u;
  *lengths = 0u;
  pattern = [(CRLStrokePattern *)self pattern];
  count = self->_count;
  if (count)
  {
    v11 = lengths;
    do
    {
      v12 = *pattern++;
      *v11++ = v12 * width;
      --count;
    }

    while (count);
  }

  phase = self->_phase;
  if ([(CRLStrokePattern *)self isRoundDash])
  {
    memset(&v17, 0, sizeof(v17));
    CGContextGetCTM(&v17, context);
    v16 = v17;
    v14 = sub_100139A00(&v16.a);
    if (style && *style == 1 && v14 * width <= 2.0)
    {
      lengths[0] = width;
      *style = 0;
      v15 = 0.0;
    }

    else
    {
      lengths[1] = lengths[1] + width;
      v15 = 0.5;
    }
  }

  else
  {
    v15 = phase * width;
  }

  CGContextSetLineDash(context, v15, lengths, self->_count);
}

- (double)p_renderableLengthForUnclippedPatternWithLineWidth:(double)width withinAvailableLength:(double)length
{
  if ([(CRLStrokePattern *)self count]== 2)
  {
    v7 = *[(CRLStrokePattern *)self pattern]* width;
    v8 = [(CRLStrokePattern *)self pattern][1] * width;
    [(CRLStrokePattern *)self phase];
    v10 = v9 * width;
    isRoundDash = [(CRLStrokePattern *)self isRoundDash];
    if (isRoundDash)
    {
      v12 = v7 + width;
    }

    else
    {
      v12 = v7;
    }

    v13 = 0.5;
    if (!isRoundDash)
    {
      v13 = v10;
    }

    v14 = length - (v8 + v12 - v13);
    v15 = v8 + v12;
    v16 = fmodf(v14, v15);
    v17 = v16;
    if (v16 > 0.0 && v16 < 5.0 && v12 > v17)
    {
      length = length - v17;
      if ([(CRLStrokePattern *)self isRoundDash])
      {
        return length + v8 * -0.5;
      }
    }
  }

  return length;
}

- (void)applyToShapeRenderable:(id)renderable
{
  renderableCopy = renderable;
  if (!renderableCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136A0FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136A110();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136A1BC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLStrokePattern applyToShapeRenderable:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStroke.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:324 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeRenderable"];
  }

  [renderableCopy lineWidth];
  [(CRLStrokePattern *)self p_applyToShapeRenderable:renderableCopy lineWidth:?];
}

- (void)p_applyToShapeRenderable:(id)renderable lineWidth:(double)width
{
  renderableCopy = renderable;
  if ([(CRLStrokePattern *)self patternType]== 1)
  {
    [renderableCopy setLineDashPattern:0];
  }

  else if (![(CRLStrokePattern *)self patternType])
  {
    [renderableCopy setLineDashPhase:self->_phase * width];
    v6 = objc_alloc_init(NSMutableArray);
    pattern = [(CRLStrokePattern *)self pattern];
    if (self->_count)
    {
      v8 = pattern;
      v9 = 0;
      do
      {
        v10 = v8[v9] * width;
        if (v9 == 1 && [(CRLStrokePattern *)self isRoundDash])
        {
          [renderableCopy setLineDashPhase:0.5];
          v10 = v10 + width;
        }

        v11 = [NSNumber numberWithDouble:v10];
        [v6 addObject:v11];

        ++v9;
      }

      while (v9 < self->_count);
    }

    [renderableCopy setLineDashPattern:v6];
  }
}

@end