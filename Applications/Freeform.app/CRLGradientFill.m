@interface CRLGradientFill
+ (id)linearGradientWithGradientStops:(id)a3;
+ (id)linearGradientWithStartColor:(id)a3 endColor:(id)a4;
+ (id)radialGradientWithGradientStops:(id)a3;
+ (id)radialGradientWithStartColor:(id)a3 endColor:(id)a4;
- (BOOL)hasAlpha;
- (BOOL)isAdvancedGradient;
- (BOOL)isAdvancedGradientIgnoringFlag;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOpaque;
- (BOOL)p_isAnyStopP3;
- (CGAffineTransform)centeredRadialTransformInRect:(SEL)a3;
- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)a3 returningIntegralBounds:(CGRect *)a4;
- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGShading)shadingRef;
- (CRLColor)firstColor;
- (CRLColor)lastColor;
- (CRLGradientFill)init;
- (CRLGradientFill)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5;
- (CRLGradientFill)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)p_insertStopAtFraction:(double)a3;
- (id)p_insertStopAtFraction:(double)a3 withColor:(id)a4;
- (id)p_newColorAtFraction:(double)a3;
- (id)p_newColorInShadingColorSpaceFromColor:(id)a3;
- (id)p_removeStopAtIndex:(unint64_t)a3;
- (id)stopAfterFraction:(double)a3;
- (id)stopBeforeFraction:(double)a3;
- (unint64_t)hash;
- (unint64_t)p_shadingColorSpace;
- (void)dealloc;
- (void)p_endBitmapWrapperContext:(CGContext *)a3 inContext:(CGContext *)a4 withIntegralBounds:(CGRect)a5;
- (void)p_evenlyDistributeStops;
- (void)p_insertGradientStop:(id)a3;
- (void)p_moveStopAtIndex:(unint64_t)a3 toFraction:(double)a4;
- (void)p_removeStop:(id)a3;
- (void)p_reverseStopOrder;
- (void)p_setAlpha:(CGContext *)a3;
- (void)p_setColorOfStopAtIndex:(unint64_t)a3 toColor:(id)a4;
- (void)p_setGradientStops:(id)a3;
- (void)p_setInflectionOfStopAtIndex:(unint64_t)a3 toInflection:(double)a4;
- (void)p_swapStopAtIndex:(unint64_t)a3 withStopAtIndex:(unint64_t)a4;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5;
- (void)releaseShadingRef;
@end

@implementation CRLGradientFill

- (CRLGradientFill)init
{
  v4.receiver = self;
  v4.super_class = CRLGradientFill;
  v2 = [(CRLGradientFill *)&v4 init];
  if (v2)
  {
    v2->mStops = objc_alloc_init(NSMutableArray);
    v2->mShadingColorSpace = 2;
  }

  return v2;
}

- (CRLGradientFill)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5
{
  v8 = [(CRLGradientFill *)self init];
  v9 = v8;
  if (v8)
  {
    mStops = v8->mStops;
    if (mStops)
    {
      [(NSMutableArray *)mStops setArray:a3];
    }

    else
    {
      v9->mStops = [a3 mutableCopy];
    }

    v9->mType = a4;
    v9->mOpacity = a5;
    v9->mShadingColorSpace = 2;
  }

  return v9;
}

- (CRLGradientFill)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5
{
  v9[0] = [CRLGradientFillStop gradientStopWithColor:a3 fraction:0.0];
  v9[1] = [CRLGradientFillStop gradientStopWithColor:a4 fraction:1.0];
  return [(CRLGradientFill *)self initWithGradientStops:[NSArray type:"arrayWithObjects:count:" arrayWithObjects:v9 count:2], a5];
}

- (void)dealloc
{
  [(CRLGradientFill *)self releaseShadingRef];
  v3.receiver = self;
  v3.super_class = CRLGradientFill;
  [(CRLGradientFill *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = sub_100083B3C(&self->mType, 8, [(NSArray *)[(CRLGradientFill *)self gradientStops] hash]);
  v4 = sub_100083B3C(&self->mOpacity, 8, v3);

  return sub_100083B3C(&self->mIsAdvancedGradient, 1, v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v18 = v4;
    v19 = v3;
    v11 = objc_opt_class();
    v12 = sub_100014370(v11, a3);
    if (v12)
    {
      v13 = v12;
      if ([v12 gradientType] == self->mType && ((objc_msgSend(v13, "opacity"), mOpacity = self->mOpacity, v14 == mOpacity) || vabdd_f64(v14, mOpacity) < fabs(mOpacity * 0.000000999999997)))
      {
        LODWORD(v12) = -[NSMutableArray isEqualToArray:](self->mStops, "isEqualToArray:", [v13 gradientStops]);
        if (v12)
        {
          v16 = [v13 isAdvancedGradient];
          LOBYTE(v12) = v16 ^ [(CRLGradientFill *)self isAdvancedGradient]^ 1;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }
  }

  return v12;
}

+ (id)linearGradientWithStartColor:(id)a3 endColor:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithStartColor:a3 endColor:a4 type:0];

  return v4;
}

+ (id)linearGradientWithGradientStops:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithGradientStops:a3 type:0];

  return v3;
}

+ (id)radialGradientWithStartColor:(id)a3 endColor:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithStartColor:a3 endColor:a4 type:1];

  return v4;
}

+ (id)radialGradientWithGradientStops:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithGradientStops:a3 type:1];

  return v3;
}

- (CRLColor)firstColor
{
  v2 = [(NSMutableArray *)self->mStops firstObject];

  return [v2 color];
}

- (CRLColor)lastColor
{
  v2 = [(NSMutableArray *)self->mStops lastObject];

  return [v2 color];
}

- (CGShading)shadingRef
{
  result = self->mShadingRef;
  if (!result)
  {
    *domain = xmmword_101463BB0;
    range[0] = 0.0;
    v11 = 0;
    v13 = 0;
    range[1] = 1.0;
    v12 = 0x3FF0000000000000;
    v14 = 0x3FF0000000000000;
    v15 = 0;
    v16 = 0x3FF0000000000000;
    *&callbacks.version = 0;
    callbacks.evaluate = sub_1004C6E38;
    callbacks.releaseInfo = sub_1004C6EEC;
    v4 = [(CRLGradientFill *)self mutableCopy];
    if (v4 == self)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013838B8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013838CC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLGradientFill shadingRef]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] lineNumber:245 isFatal:0 description:"Creating retain cycle between gradient and its shading ref"];
    }

    v5 = CGFunctionCreate(v4, 1uLL, domain, 4uLL, range, &callbacks);
    if ([(CRLGradientFill *)self p_shadingColorSpace]== 1)
    {
      v6 = sub_1000CCE28();
    }

    else
    {
      v6 = sub_1000CCD4C();
    }

    v7 = v6;
    if ([(CRLGradientFill *)self gradientType])
    {
      v18.x = 0.0;
      v18.y = 0.0;
      v21.x = 0.0;
      v21.y = 0.0;
      Radial = CGShadingCreateRadial(v7, v18, 0.0, v21, 100.0, v5, 1, 1);
    }

    else
    {
      v20.x = 100.0;
      v19.x = 0.0;
      v19.y = 0.0;
      v20.y = 0.0;
      Radial = CGShadingCreateAxial(v7, v19, v20, v5, 1, 1);
    }

    self->mShadingRef = Radial;
    CGFunctionRelease(v5);
    return self->mShadingRef;
  }

  return result;
}

- (unint64_t)p_shadingColorSpace
{
  result = self->mShadingColorSpace;
  if (result == 2)
  {
    result = [(CRLGradientFill *)self p_isAnyStopP3];
    self->mShadingColorSpace = result;
  }

  return result;
}

- (void)releaseShadingRef
{
  CGShadingRelease(self->mShadingRef);
  self->mShadingRef = 0;
  self->mShadingColorSpace = 2;
}

- (id)p_newColorInShadingColorSpaceFromColor:(id)a3
{
  v3 = [(CRLGradientFill *)self p_shadingColorSpace];
  v4 = [a3 colorRGBSpace];
  if (v3 == 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383AD8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101383AEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLGradientFill p_newColorInShadingColorSpaceFromColor:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] lineNumber:286 isFatal:0 description:"Shading color space should not be unspecified.", v14, v15];
    return a3;
  }

  v7 = v4;
  if (v4 != 2 && v4 != v3)
  {
    if (v3 == 1)
    {
      if (v4)
      {
        v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013839C4();
        }

        v9 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013839D8(v8, v9);
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101327A4C();
        }

        [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLGradientFill p_newColorInShadingColorSpaceFromColor:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] lineNumber:299 isFatal:0 description:"expected equality between %{public}s and %{public}s", "originalColorSpace", "CRLColorRGBSpaceSRGB"];
      }

      v10 = sub_1000CCE28();
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v10, kCGRenderingIntentDefault, [a3 CGColor], 0);
      v5 = [[CRLColor alloc] initWithCGColor:CopyByMatchingToColorSpace colorSpace:1];
      CGColorRelease(CopyByMatchingToColorSpace);
      return v5;
    }

    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383988();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v18 = v12;
      v19 = 2082;
      v20 = "[CRLGradientFill p_newColorInShadingColorSpaceFromColor:]";
      v21 = 2082;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m";
      v23 = 1024;
      v24 = 307;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v3;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected combination of source (%zu) and destination (%zu) color spaces for gradient shading.", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_10138399C();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLGradientFill p_newColorInShadingColorSpaceFromColor:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] lineNumber:307 isFatal:0 description:"Unexpected combination of source (%zu) and destination (%zu) color spaces for gradient shading.", v7, v3];
    return a3;
  }

  return a3;
}

- (BOOL)isAdvancedGradient
{
  if (self->mIsAdvancedGradient)
  {
    return 1;
  }

  else
  {
    return [(CRLGradientFill *)self isAdvancedGradientIgnoringFlag];
  }
}

- (BOOL)isAdvancedGradientIgnoringFlag
{
  if (self->mType)
  {
    return 1;
  }

  if ([(NSMutableArray *)self->mStops count]!= 2)
  {
    return 1;
  }

  [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{0), "fraction"}];
  if (v4 != 0.0)
  {
    return 1;
  }

  [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{0), "inflection"}];
  if (v5 != 0.5 && fabs(v5 + -0.5) >= 5.0e-11)
  {
    return 1;
  }

  [-[NSMutableArray lastObject](self->mStops "lastObject")];
  return v6 != 1.0;
}

- (id)stopBeforeFraction:(double)a3
{
  v4 = sub_1004C3240(a3, 0.0, 1.0);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableArray *)self->mStops reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return [(NSMutableArray *)self->mStops firstObject];
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    [v10 fraction];
    if (v11 <= v4)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return [(NSMutableArray *)self->mStops firstObject];
    }
  }
}

- (id)stopAfterFraction:(double)a3
{
  v4 = sub_1004C3240(a3, 0.0, 1.0);
  if (v4 == 1.0)
  {
    mStops = self->mStops;

    return [(NSMutableArray *)mStops lastObject];
  }

  else
  {
    v7 = v4;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->mStops;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v9)
    {
      return [(NSMutableArray *)self->mStops lastObject];
    }

    v10 = v9;
    v11 = *v16;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      [v13 fraction];
      if (v14 > v7)
      {
        return v13;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        return [(NSMutableArray *)self->mStops lastObject];
      }
    }
  }
}

- (id)p_newColorAtFraction:(double)a3
{
  if (a3 == 0.0)
  {
    v4 = [(CRLGradientFill *)self firstColor];
LABEL_5:

    return v4;
  }

  if (a3 == 1.0)
  {
    v4 = [(CRLGradientFill *)self lastColor];
    goto LABEL_5;
  }

  v7 = [(CRLGradientFill *)self stopBeforeFraction:a3];
  v8 = [(CRLGradientFill *)self stopAfterFraction:a3];
  if (v7 == v8)
  {
    v4 = [v7 color];
    goto LABEL_5;
  }

  v9 = v8;
  [v7 fraction];
  v11 = v10;
  [v9 fraction];
  v13 = v12 - v11;
  v14 = 0.0;
  if (v13 > 0.001)
  {
    v15 = sub_1004C3240((a3 - v11) / v13, 0.0, 1.0);
    [v7 inflection];
    v17 = sub_1004C3240(v16, 0.0, 1.0);
    if (v15 >= v17)
    {
      v14 = 0.5;
      if (v17 != 1.0)
      {
        v14 = (v15 - v17) / (1.0 - v17) * 0.5 + 0.5;
      }
    }

    else
    {
      v14 = v15 / v17 * 0.5;
    }
  }

  v18 = [v7 color];
  v19 = [v9 color];

  return [v18 newBlendedColorWithFraction:v19 ofColor:v14];
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  v4 = [CRLAssertionHandler _atomicIncrementAssertCount:a4];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101868AD8);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    *buf = 67110146;
    v15 = v4;
    v16 = 2082;
    v17 = "[CRLGradientFill paintRect:inContext:]";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m";
    v20 = 1024;
    v21 = 421;
    v22 = 2114;
    v23 = NSStringFromClass(v6);
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
    if (qword_101AD5A10 != -1)
    {
      dispatch_once(&qword_101AD5A10, &stru_101868AF8);
    }
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v15 = v4;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v9 = [NSString stringWithUTF8String:"[CRLGradientFill paintRect:inContext:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"];
  v11 = objc_opt_class();
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:421 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v11)];
  v12 = objc_opt_class();
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"Abstract method not overridden by %@: %s" userInfo:NSStringFromClass(v12), "[CRLGradientFill paintRect:inContext:]"], 0];
  objc_exception_throw(v13);
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5
{
  v5 = [CRLAssertionHandler _atomicIncrementAssertCount:a4];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101868B18);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    *buf = 67110146;
    v16 = v5;
    v17 = 2082;
    v18 = "[CRLGradientFill paintRect:inContext:atAngle:]";
    v19 = 2082;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m";
    v21 = 1024;
    v22 = 425;
    v23 = 2114;
    v24 = NSStringFromClass(v7);
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
    if (qword_101AD5A10 != -1)
    {
      dispatch_once(&qword_101AD5A10, &stru_101868B38);
    }
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v16 = v5;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLGradientFill paintRect:inContext:atAngle:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"];
  v12 = objc_opt_class();
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:425 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v12)];
  v13 = objc_opt_class();
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"Abstract method not overridden by %@: %s" userInfo:NSStringFromClass(v13), "[CRLGradientFill paintRect:inContext:atAngle:]"], 0];
  objc_exception_throw(v14);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v4 = [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101868B58);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    *buf = 67110146;
    v15 = v4;
    v16 = 2082;
    v17 = "[CRLGradientFill paintPath:inContext:]";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m";
    v20 = 1024;
    v21 = 429;
    v22 = 2114;
    v23 = NSStringFromClass(v6);
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
    if (qword_101AD5A10 != -1)
    {
      dispatch_once(&qword_101AD5A10, &stru_101868B78);
    }
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v15 = v4;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v9 = [NSString stringWithUTF8String:"[CRLGradientFill paintPath:inContext:]"];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"];
  v11 = objc_opt_class();
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:429 isFatal:0 description:"Abstract method not overridden by %{public}@", NSStringFromClass(v11)];
  v12 = objc_opt_class();
  v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"Abstract method not overridden by %@: %s" userInfo:NSStringFromClass(v12), "[CRLGradientFill paintPath:inContext:]"], 0];
  objc_exception_throw(v13);
}

- (CGAffineTransform)centeredRadialTransformInRect:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = CGRectGetWidth(a4);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v10 = CGRectGetHeight(v19);
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  CGAffineTransformMakeTranslation(retstr, MidX, MidY);
  CGAffineTransformMakeScale(&t1, v9 * 0.00707106781, v10 * 0.00707106781);
  v13 = *&retstr->c;
  *&v16.a = *&retstr->a;
  *&v16.c = v13;
  *&v16.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v18, &t1, &v16);
  v15 = *&v18.c;
  *&retstr->a = *&v18.a;
  *&retstr->c = v15;
  *&retstr->tx = *&v18.tx;
  return result;
}

- (BOOL)isOpaque
{
  [(CRLGradientFill *)self opacity];
  if (v3 == 1.0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(CRLGradientFill *)self gradientStops];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_msgSend(*(*(&v11 + 1) + 8 * v8) "color")];
        if (!v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v9) = 1;
          if (v6)
          {
            goto LABEL_4;
          }

          return v9;
        }
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(CRLGradientFill *)[CRLMutableGradientFill allocWithZone:?]type:"initWithGradientStops:type:opacity:" opacity:self->mStops, self->mType, self->mOpacity];
  [(CRLGradientFill *)v4 i_setAdvancedGradientFlag:[(CRLGradientFill *)self i_advancedGradientFlag]];
  return v4;
}

- (BOOL)hasAlpha
{
  v2 = [(NSMutableArray *)self->mStops objectEnumerator];
  do
  {
    v3 = [v2 nextObject];
    v4 = v3;
  }

  while (v3 && CGColorGetAlpha([objc_msgSend(v3 "color")]) == 1.0);
  return v4 != 0;
}

- (BOOL)p_isAnyStopP3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mStops = self->mStops;
  v3 = [(NSMutableArray *)mStops countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(mStops);
      }

      v3 = [objc_msgSend(*(*(&v8 + 1) + 8 * v6) "color")];
      if (v3 == 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [(NSMutableArray *)mStops countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_101383BA8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101383BBC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLGradientFill startPointForPath:andBounds:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] lineNumber:516 isFatal:0 description:"Subclasses should override."];
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [CRLAssertionHandler _atomicIncrementAssertCount:a3];
  if (qword_101AD5A10 != -1)
  {
    sub_101383C78();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101383C8C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLGradientFill endPointForPath:andBounds:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] lineNumber:521 isFatal:0 description:"Subclasses should override."];
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)p_setAlpha:(CGContext *)a3
{
  [(CRLGradientFill *)self opacity];

  CGContextSetAlpha(a3, v4);
}

- (CGContext)p_beginBitmapWrapperContextInContext:(CGContext *)a3 returningIntegralBounds:(CGRect *)a4
{
  if (!a3)
  {
    return 0;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(a3);
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v15 = CGRectIntegral(ClipBoundingBox);
  if (a4)
  {
    *a4 = v15;
  }

  v16.origin.x = sub_10011FFD8(x, y, width, height, 1.0);
  v17 = CGRectIntegral(v16);
  v9 = 0;
  if (v17.size.width > 0.0 && v17.size.height > 0.0)
  {
    v10 = v17.origin.x;
    v11 = v17.origin.y;
    v12 = sub_10050DF80(3, v17.size.width, v17.size.height);
    v9 = v12;
    if (v12)
    {
      CGContextTranslateCTM(v12, -v10, -v11);
      CGContextScaleCTM(v9, 1.0, 1.0);
    }
  }

  return v9;
}

- (void)p_endBitmapWrapperContext:(CGContext *)a3 inContext:(CGContext *)a4 withIntegralBounds:(CGRect)a5
{
  if (a3)
  {
    if (a4)
    {
      height = a5.size.height;
      width = a5.size.width;
      y = a5.origin.y;
      x = a5.origin.x;
      Image = CGBitmapContextCreateImage(a3);
      if (Image)
      {
        v12 = Image;
        CGContextSaveGState(a4);
        v14.origin.x = x;
        v14.origin.y = y;
        v14.size.width = width;
        v14.size.height = height;
        CGContextDrawImage(a4, v14, v12);
        CGContextRestoreGState(a4);
        CGImageRelease(v12);
      }
    }

    CGContextRelease(a3);
  }
}

- (void)p_setGradientStops:(id)a3
{
  if (self->mStops != a3)
  {
    v5 = [NSMutableArray arrayWithArray:?];
    if ([a3 count])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = [a3 objectAtIndexedSubscript:v6];
        v9 = [v8 color];
        ColorSpace = CGColorGetColorSpace([v9 CGColor]);
        if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
        {
          [v9 redComponent];
          v12 = v11;
          [v9 greenComponent];
          v14 = v13;
          [v9 blueComponent];
          v16 = v15;
          [v9 alphaComponent];
          -[NSMutableArray replaceObjectAtIndex:withObject:](v5, "replaceObjectAtIndex:withObject:", v6, [v8 gradientStopWithColor:{+[CRLColor colorWithRed:green:blue:alpha:](CRLColor, "colorWithRed:green:blue:alpha:", v12, v14, v16, v17)}]);
        }

        v6 = v7;
      }

      while ([a3 count] > v7++);
    }

    [(NSMutableArray *)self->mStops removeAllObjects];
    [(NSMutableArray *)self->mStops addObjectsFromArray:v5];

    [(CRLGradientFill *)self releaseShadingRef];
  }
}

- (void)p_insertGradientStop:(id)a3
{
  if ([(NSMutableArray *)self->mStops count])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = [(NSMutableArray *)self->mStops count];
    mStops = self->mStops;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004C9760;
    v7[3] = &unk_101868C20;
    v7[4] = a3;
    v7[5] = &v8;
    [(NSMutableArray *)mStops enumerateObjectsUsingBlock:v7];
    [(NSMutableArray *)self->mStops insertObject:a3 atIndex:v9[3]];
    [(CRLGradientFill *)self releaseShadingRef];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6 = self->mStops;

    [(NSMutableArray *)v6 addObject:a3];
  }
}

- (void)p_removeStop:(id)a3
{
  if ([(NSMutableArray *)self->mStops count]< 3)
  {
    [NSException raise:NSGenericException format:@"Attempted to remove too many gradient stops. Must have at least 2."];
  }

  else
  {
    [(NSMutableArray *)self->mStops removeObject:a3];
  }

  [(CRLGradientFill *)self releaseShadingRef];
}

- (id)p_removeStopAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mStops count]< 3)
  {
    objc_exception_throw([NSException exceptionWithName:NSInvalidArgumentException reason:@"Attempted to remove too many gradient stops. Must have at least 2." userInfo:0]);
  }

  v5 = [(NSMutableArray *)self->mStops objectAtIndexedSubscript:a3];
  [(NSMutableArray *)self->mStops removeObjectAtIndex:a3];
  [(CRLGradientFill *)self releaseShadingRef];

  return v5;
}

- (id)p_insertStopAtFraction:(double)a3
{
  v5 = [(CRLGradientFill *)self p_newColorAtFraction:?];

  return [(CRLGradientFill *)self p_insertStopAtFraction:v5 withColor:a3];
}

- (id)p_insertStopAtFraction:(double)a3 withColor:(id)a4
{
  v5 = [CRLGradientFillStop gradientStopWithColor:a4 fraction:a3];
  [(CRLGradientFill *)self p_insertGradientStop:v5];
  [(CRLGradientFill *)self releaseShadingRef];
  return v5;
}

- (void)p_reverseStopOrder
{
  v3 = [(NSMutableArray *)self->mStops count];
  v4 = [NSMutableArray arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      -[NSMutableArray addObject:](v4, "addObject:", [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{i), "mutableCopy"}]);
    }
  }

  v6 = 1;
  v7 = v3 - 1;
  do
  {
    v8 = [(NSMutableArray *)v4 objectAtIndexedSubscript:v6 - 1];
    [v8 fraction];
    [v8 setFraction:1.0 - v9];
    if ((v6 - 1) != v7)
    {
      v10 = [(NSMutableArray *)v4 objectAtIndexedSubscript:v7];
      [v10 fraction];
      [v10 setFraction:1.0 - v11];
      [(NSMutableArray *)v4 exchangeObjectAtIndex:v6 - 1 withObjectAtIndex:v7];
    }
  }

  while (v6++ <= --v7);
  if (v3 != 1)
  {
    v13 = 0;
    v14 = v3 - 2;
    do
    {
      v15 = [(NSMutableArray *)v4 objectAtIndexedSubscript:v13];
      [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{v14), "inflection"}];
      [v15 setInflection:1.0 - v16];
      ++v13;
      --v14;
    }

    while (v14 != -1);
  }

  [-[NSMutableArray objectAtIndexedSubscript:](v4 objectAtIndexedSubscript:{v3 - 1), "setInflection:", 0.5}];
  if (v3)
  {
    for (j = 0; j != v3; ++j)
    {
      v18 = [[CRLGradientFillStop alloc] initWithGradientStop:[(NSMutableArray *)v4 objectAtIndexedSubscript:j]];
      [(NSMutableArray *)self->mStops setObject:v18 atIndexedSubscript:j];
    }
  }

  [(CRLGradientFill *)self releaseShadingRef];
}

- (void)p_evenlyDistributeStops
{
  v3 = [(NSMutableArray *)self->mStops count];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mStops = self->mStops;
  v5 = [(NSMutableArray *)mStops countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 1.0 / (v3 - 1);
    v8 = *v12;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(mStops);
        }

        [*(*(&v11 + 1) + 8 * i) setFraction:v9];
        v9 = v7 + v9;
      }

      v6 = [(NSMutableArray *)mStops countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(CRLGradientFill *)self releaseShadingRef];
}

- (void)p_moveStopAtIndex:(unint64_t)a3 toFraction:(double)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setFraction:a4];
  v8 = [[CRLGradientFillStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];

  [(CRLGradientFill *)self releaseShadingRef];
}

- (void)p_swapStopAtIndex:(unint64_t)a3 withStopAtIndex:(unint64_t)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  v8 = -[CRLGradientFillStop initWithGradientStop:]([CRLGradientFillStop alloc], "initWithGradientStop:", [-[NSMutableArray objectAtIndexedSubscript:](self->mStops objectAtIndexedSubscript:{a4), "mutableCopy"}]);
  v9 = [[CRLGradientFillStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];
  [(NSMutableArray *)self->mStops setObject:v9 atIndexedSubscript:a4];

  [(CRLGradientFill *)self releaseShadingRef];
}

- (void)p_setColorOfStopAtIndex:(unint64_t)a3 toColor:(id)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setColor:a4];
  v8 = [[CRLGradientFillStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];

  [(CRLGradientFill *)self releaseShadingRef];
}

- (void)p_setInflectionOfStopAtIndex:(unint64_t)a3 toInflection:(double)a4
{
  v7 = [-[NSMutableArray objectAtIndexedSubscript:](self->mStops "objectAtIndexedSubscript:"mutableCopy"")];
  [v7 setInflection:a4];
  v8 = [[CRLGradientFillStop alloc] initWithGradientStop:v7];
  [(NSMutableArray *)self->mStops setObject:v8 atIndexedSubscript:a3];

  [(CRLGradientFill *)self releaseShadingRef];
}

@end