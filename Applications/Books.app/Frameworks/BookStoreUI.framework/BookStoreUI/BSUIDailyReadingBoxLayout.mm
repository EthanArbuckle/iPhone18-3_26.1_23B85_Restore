@interface BSUIDailyReadingBoxLayout
- ($C9FAB8CAB2AF31EF60403A04CE35D411)computeIntrinsicHeight;
- (BSUIDailyReadingBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (double)_endCapHeight;
- (double)_layoutAndComputeIntrinsicHeight;
- (double)_specifiedOrContainingWidth;
- (double)arcRadius;
- (double)chordLengthAtHeightFromTop:(double)a3;
- (double)computeIntrinsicAspectRatio;
- (double)highestPointOfArcForWidth:(double)a3;
- (double)maximumDefaultYForLayout;
- (double)minimumTextSeparation;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
- (void)_computeIntrinsicContentSize;
- (void)_layoutToBaseOfControlIfPossible;
- (void)computeLayout;
- (void)onInvalidateIntrinsicSize;
@end

@implementation BSUIDailyReadingBoxLayout

- (BSUIDailyReadingBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v6.receiver = self;
  v6.super_class = BSUIDailyReadingBoxLayout;
  result = [(BSUIDailyReadingBoxLayout *)&v6 initWithModel:a3 parent:a4 controller:a5];
  if (result)
  {
    result->_intrinsicContentSize = CGSizeZero;
  }

  return result;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  if (a3 < 3)
  {
    v23 = 0;
  }

  else
  {
    [(BSUIDailyReadingBoxLayout *)self renderModelSizeWithContext:v6];
    v8 = v7;
    v10 = v9;
    v11 = objc_alloc_init(NSMutableArray);
    [(BSUIDailyReadingBoxLayout *)self computedNaturalSize];
    memset(&v29, 0, sizeof(v29));
    CGAffineTransformMakeTranslation(&v29, v12 * 0.5, v13 * 0.5);
    v28 = v29;
    [(BSUIDailyReadingBoxLayout *)self appendChildRenderModelCompatibleWithKind:3 context:v6 transform:&v28 toModels:v11];
    v28.a = 0.0;
    *&v28.b = &v28;
    *&v28.c = 0x3032000000;
    *&v28.d = sub_3A0C8;
    *&v28.tx = sub_3A0D8;
    *&v28.ty = objc_alloc_init(NSMutableArray);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_3A0E0;
    v27[3] = &unk_388350;
    v27[4] = &v28;
    [v11 enumerateObjectsUsingBlock:v27];
    v14 = [(BSUIDailyReadingBoxLayout *)self controller];
    v15 = [v14 manager];
    v16 = [v15 resourceRegistry];
    v17 = [v16 fileProviderForKind:@"mica-provider"];

    v18 = [_BSUIDailyReadingLayerConfig alloc];
    v19 = [(BSUIDailyReadingBoxLayout *)self box];
    v20 = [v19 dailyReadingMetrics];
    v21 = [(_BSUIDailyReadingLayerConfig *)v18 initWithMetrics:v20 timeTextYOffset:v17 micaFileProvider:self->_timeTextYOffset];

    v22 = [TUIRenderModelLayer alloc];
    v23 = [v22 initWithSubmodels:*(*&v28.b + 40) config:v21 erasableInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v23 setSize:{v8, v10}];
    v24 = [(BSUIDailyReadingBoxLayout *)self box];
    v25 = [v24 identifier];
    [v23 setIdentifier:v25];

    _Block_object_dispose(&v28, 8);
  }

  return v23;
}

- (double)computeIntrinsicAspectRatio
{
  [(BSUIDailyReadingBoxLayout *)self _computeIntrinsicContentSize];
  width = self->_intrinsicContentSize.width;
  result = 1.0;
  if (width > 0.0)
  {
    result = self->_intrinsicContentSize.height / width;
  }

  if (result < 0.5)
  {
    return 0.5;
  }

  return result;
}

- (double)_endCapHeight
{
  v2 = [(BSUIDailyReadingBoxLayout *)self box];
  v3 = [v2 dailyReadingMetrics];
  v4 = [v3 progressBarWidth];
  [v4 floatValue];
  v6 = v5 * 0.5;

  return v6;
}

- (double)arcRadius
{
  [(BSUIDailyReadingBoxLayout *)self _specifiedOrContainingWidth];
  v4 = v3;
  v5 = [(BSUIDailyReadingBoxLayout *)self box];
  v6 = [v5 dailyReadingMetrics];
  v7 = [v6 progressBarWidth];
  [v7 floatValue];
  v9 = v4 - (v8 + v8);

  return v9 * 0.5;
}

- (double)highestPointOfArcForWidth:(double)a3
{
  [(BSUIDailyReadingBoxLayout *)self arcRadius];
  v5 = result - sqrt(result * result - a3 * 0.5 * (a3 * 0.5));
  if (v5 < result)
  {
    return v5;
  }

  return result;
}

- (double)chordLengthAtHeightFromTop:(double)a3
{
  [(BSUIDailyReadingBoxLayout *)self _specifiedOrContainingWidth];
  v6 = v5;
  [(BSUIDailyReadingBoxLayout *)self arcRadius];
  if (a3 > 0.0 && v7 > a3)
  {
    v9 = sqrt((v7 + v7) * a3 - a3 * a3);
    return v9 + v9;
  }

  return v6;
}

- (double)maximumDefaultYForLayout
{
  v3 = [(BSUIDailyReadingBoxLayout *)self box];
  v4 = [v3 dailyReadingMetrics];
  v5 = [v4 useLargeLayoutMode];

  if (v5)
  {
    v6 = [(BSUIDailyReadingBoxLayout *)self box];
    v7 = [v6 dailyReadingMetrics];
    v8 = [v7 progressBarWidth];
    [v8 floatValue];
    v10 = v9 + 162.0;
  }

  else
  {
    [(BSUIDailyReadingBoxLayout *)self arcRadius];
    v12 = v11;
    v13 = [(BSUIDailyReadingBoxLayout *)self box];
    v14 = [v13 dailyReadingMetrics];
    v15 = [v14 progressBarWidth];
    [v15 floatValue];
    v17 = v12 + v16;

    [(BSUIDailyReadingBoxLayout *)self _endCapHeight];
    v10 = v17 + v18 + -1.0;
  }

  return ceil(v10);
}

- (double)minimumTextSeparation
{
  v3 = [(BSUIDailyReadingBoxLayout *)self box];
  v4 = [v3 dailyReadingMetrics];
  v5 = [v4 axValue];
  v6 = [v5 integerValue];

  v7 = 10.0;
  if (v6 >= 5)
  {
    v8 = [(BSUIDailyReadingBoxLayout *)self box];
    v9 = [v8 dailyReadingMetrics];
    v10 = [v9 axValue];
    [v10 floatValue];
    v7 = v11 * 0.25 * 10.0;
  }

  return v7;
}

- (double)_specifiedOrContainingWidth
{
  [(BSUIDailyReadingBoxLayout *)self containingWidth];
  v4 = v3;
  v5 = COERCE_FLOAT([(BSUIDailyReadingBoxLayout *)self specifiedWidth]);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = [(BSUIDailyReadingBoxLayout *)self box];
  v8 = [v7 dailyReadingMetrics];
  v9 = [v8 arcWidth];
  [v9 floatValue];
  v11 = v10;

  result = v11;
  if (v6 < v11)
  {
    result = v6;
  }

  if (v11 <= 0.0)
  {
    return v6;
  }

  return result;
}

- (void)onInvalidateIntrinsicSize
{
  v3.receiver = self;
  v3.super_class = BSUIDailyReadingBoxLayout;
  [(BSUIDailyReadingBoxLayout *)&v3 onInvalidateIntrinsicSize];
  self->_intrinsicContentSize = CGSizeZero;
}

- (void)_computeIntrinsicContentSize
{
  p_intrinsicContentSize = &self->_intrinsicContentSize;
  height = CGSizeZero.height;
  if (CGSizeZero.width == self->_intrinsicContentSize.width && height == self->_intrinsicContentSize.height)
  {
    [(BSUIDailyReadingBoxLayout *)self _specifiedOrContainingWidth:CGSizeZero.width];
    v7 = v6;
    v8 = COERCE_FLOAT([(BSUIDailyReadingBoxLayout *)self specifiedHeight]);
    p_intrinsicContentSize->width = v7;
    p_intrinsicContentSize->height = v8;
  }
}

- (void)_layoutToBaseOfControlIfPossible
{
  v19 = [(BSUIDailyReadingBoxLayout *)self box];
  v3 = [v19 dailyReadingMetrics];
  if (([v3 iconMode] & 1) == 0)
  {
    v4 = [(BSUIDailyReadingBoxLayout *)self children];
    v5 = [v4 count];

    if (v5 < 3)
    {
      return;
    }

    objc_opt_class();
    v6 = [(BSUIDailyReadingBoxLayout *)self children];
    v7 = [v6 objectAtIndex:0];
    v19 = BUDynamicCast();

    objc_opt_class();
    v8 = [(BSUIDailyReadingBoxLayout *)self children];
    v9 = [v8 objectAtIndex:1];
    v3 = BUDynamicCast();

    objc_opt_class();
    v10 = [(BSUIDailyReadingBoxLayout *)self children];
    v11 = [v10 objectAtIndex:2];
    v12 = BUDynamicCast();

    [v12 computedOrigin];
    v14 = v13;
    [v12 computedNaturalSize];
    v16 = v14 + v15;
    [(BSUIDailyReadingBoxLayout *)self maximumDefaultYForLayout];
    if (v16 < v17)
    {
      v18 = v17 - v16;
      [v19 computedOrigin];
      [v19 setComputedOrigin:?];
      [v3 computedOrigin];
      [v3 setComputedOrigin:?];
      [v12 computedOrigin];
      [v12 setComputedOrigin:?];
      self->_timeTextYOffset = v18 + self->_timeTextYOffset;
    }
  }
}

- (double)_layoutAndComputeIntrinsicHeight
{
  [(BSUIDailyReadingBoxLayout *)self _specifiedOrContainingWidth];
  v4 = v3;
  v5 = [(BSUIDailyReadingBoxLayout *)self box];
  v6 = [v5 dailyReadingMetrics];
  if ([v6 iconMode])
  {
LABEL_68:

    return v4;
  }

  v7 = [(BSUIDailyReadingBoxLayout *)self children];
  v8 = [v7 count];

  if (v8 == &dword_4)
  {
    v9 = [(BSUIDailyReadingBoxLayout *)self box];
    v10 = [v9 dailyReadingMetrics];
    v11 = [v10 isAX];

    v12 = [(BSUIDailyReadingBoxLayout *)self box];
    v13 = [v12 dailyReadingMetrics];
    v14 = [v13 useNarrowLayoutMode];

    [(BSUIDailyReadingBoxLayout *)self minimumTextSeparation];
    v16 = v15;
    v17 = [(BSUIDailyReadingBoxLayout *)self children];
    v5 = [v17 objectAtIndex:0];

    v18 = [v5 box];
    [v5 invalidateLayout];
    [v5 validateLayout];
    [(BSUIDailyReadingBoxLayout *)self arcRadius];
    v20 = v19;
    -[BSUIDailyReadingBoxLayout highestPointOfArcForWidth:](self, "highestPointOfArcForWidth:", COERCE_FLOAT([v5 computedWidth]));
    v22 = v21;
    if (v14)
    {
      v23 = 10.0;
    }

    else
    {
      v23 = 15.0;
    }

    v24 = [(BSUIDailyReadingBoxLayout *)self box];
    v25 = [v24 dailyReadingMetrics];
    v26 = [v25 progressBarWidth];
    [v26 floatValue];
    v28 = v22 + v23 + v27;

    if (v28 > v20)
    {
      v29 = [(BSUIDailyReadingBoxLayout *)self box];
      v30 = [v29 dailyReadingMetrics];
      v31 = [v30 progressBarWidth];
      [v31 floatValue];
      v28 = v20 + v32 + 10.0;
    }

    v33 = 4286578687;
    [(BSUIDailyReadingBoxLayout *)self chordLengthAtHeightFromTop:v28];
    v35 = v34;
    [v18 setAllowShrinkToFit:1];
    v36 = v35 * 0.5;
    v37 = 4286578687;
    if (v35 > -3.40282347e38)
    {
      v37 = 2139095039;
      if (v35 < 3.40282347e38)
      {
        *&v38 = v35;
        v37 = v38;
      }
    }

    if (v36 <= -3.40282347e38)
    {
      *&v40 = -3.4028e38;
    }

    else
    {
      if (v36 < 3.40282347e38)
      {
        v39 = v36;
        goto LABEL_17;
      }

      *&v40 = 3.4028e38;
    }

    v39 = *&v40;
LABEL_17:
    if (v35 <= -3.40282347e38)
    {
      *&v42 = -3.4028e38;
    }

    else
    {
      if (v35 < 3.40282347e38)
      {
        v41 = v35;
LABEL_23:
        [v18 setWidth:{v37 | (LODWORD(v39) << 32), LODWORD(v41) | 0xF000000000000}];
        [v5 computedNaturalSize];
        [v5 setComputedNaturalSize:v35];
        [v5 invalidateLayout];
        [v5 validateLayout];
        [v5 computedNaturalSize];
        v44 = v43;
        v45 = v4 * 0.5;
        [v5 setComputedOrigin:{floor(v4 * 0.5 - v46 * 0.5), floor(v28)}];
        v47 = v28 + v44;

        v48 = [(BSUIDailyReadingBoxLayout *)self children];
        v6 = [v48 objectAtIndex:1];

        v49 = [v6 box];
        [v6 invalidateLayout];
        [v6 validateLayout];
        [(BSUIDailyReadingBoxLayout *)self chordLengthAtHeightFromTop:v28 + v44];
        v51 = v50;
        [v49 setAllowShrinkToFit:1];
        [v49 setMaxLines:1];
        v52 = v51 * 0.5;
        v53 = 4286578687;
        if (v51 > -3.40282347e38)
        {
          v53 = 2139095039;
          if (v51 < 3.40282347e38)
          {
            *&v54 = v51;
            v53 = v54;
          }
        }

        if (v52 <= -3.40282347e38)
        {
          *&v56 = -3.4028e38;
        }

        else
        {
          if (v52 < 3.40282347e38)
          {
            v55 = v52;
            goto LABEL_32;
          }

          *&v56 = 3.4028e38;
        }

        v55 = *&v56;
LABEL_32:
        if (v51 <= -3.40282347e38)
        {
          *&v58 = -3.4028e38;
        }

        else
        {
          if (v51 < 3.40282347e38)
          {
            v57 = v51;
            goto LABEL_38;
          }

          *&v58 = 3.4028e38;
        }

        v57 = *&v58;
LABEL_38:
        [v49 setWidth:{v53 | (LODWORD(v55) << 32), LODWORD(v57) | 0xF000000000000}];
        [v6 computedNaturalSize];
        if (v59 > v51)
        {
          v59 = v51;
        }

        [v6 setComputedNaturalSize:v59];
        [v6 invalidateLayout];
        [v6 validateLayout];
        [v6 computedNaturalSize];
        v61 = v60;
        v63 = v45 - v62 * 0.5;
        v64 = v16 + v60;
        v65 = 57.0;
        if (!v14)
        {
          v65 = 66.0;
        }

        v66 = v65 - v61;
        if (v64 >= 66.0)
        {
          v67 = v16;
        }

        else
        {
          v67 = v66;
        }

        v68 = v47 + v67;
        v69 = floor(v47 + v67);
        [v6 setComputedOrigin:{floor(v63), v69}];
        self->_timeTextYOffset = v69;
        v70 = v61 + v68;

        v71 = [(BSUIDailyReadingBoxLayout *)self children];
        v72 = [v71 objectAtIndex:2];

        v73 = [v72 box];
        [v72 invalidateLayout];
        [v72 validateLayout];
        [(BSUIDailyReadingBoxLayout *)self chordLengthAtHeightFromTop:v61 + v68];
        v75 = v74;
        if (v11)
        {
          v76 = 2;
        }

        else
        {
          v76 = 1;
        }

        [v73 setMaxLines:v76];
        v77 = v75 * 0.5;
        if (v75 > -3.40282347e38)
        {
          v33 = 2139095039;
          if (v75 < 3.40282347e38)
          {
            *&v78 = v75;
            v33 = v78;
          }
        }

        if (v77 <= -3.40282347e38)
        {
          *&v80 = -3.4028e38;
        }

        else
        {
          if (v77 < 3.40282347e38)
          {
            v79 = v77;
            goto LABEL_57;
          }

          *&v80 = 3.4028e38;
        }

        v79 = *&v80;
LABEL_57:
        if (v75 <= -3.40282347e38)
        {
          *&v82 = -3.4028e38;
        }

        else
        {
          if (v75 < 3.40282347e38)
          {
            v81 = v75;
LABEL_63:
            [v73 setWidth:{v33 | (LODWORD(v79) << 32), LODWORD(v81) | 0xF000000000000}];
            [v72 computedNaturalSize];
            [v72 setComputedNaturalSize:v75];
            [v72 invalidateLayout];
            [v72 validateLayout];
            [v72 computedNaturalSize];
            v84 = v45 + v83 * -0.5;
            v86 = v16 + v85;
            v87 = 24.0 - v85;
            if (v86 >= 24.0)
            {
              v87 = v16;
            }

            [v72 setComputedOrigin:{floor(v84), floor(v70 + v87)}];

            [(BSUIDailyReadingBoxLayout *)self maximumDefaultYForLayout];
            v89 = v88;
            [v72 computedFrame];
            v90 = ceil(CGRectGetMaxY(v92));
            if (v90 < v89)
            {
              v90 = v89;
            }

            v4 = v16 + v90;

            goto LABEL_68;
          }

          *&v82 = 3.4028e38;
        }

        v81 = *&v82;
        goto LABEL_63;
      }

      *&v42 = 3.4028e38;
    }

    v41 = *&v42;
    goto LABEL_23;
  }

  return v4;
}

- ($C9FAB8CAB2AF31EF60403A04CE35D411)computeIntrinsicHeight
{
  [(BSUIDailyReadingBoxLayout *)self _computeIntrinsicContentSize];
  height = self->_intrinsicContentSize.height;
  if (height <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (height < 3.40282347e38)
    {
      *&v5 = height;
      return (v5 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (void)computeLayout
{
  [(BSUIDailyReadingBoxLayout *)self _specifiedOrContainingWidth];
  v4 = v3;
  v5 = [(BSUIDailyReadingBoxLayout *)self box];
  v6 = [v5 dailyReadingMetrics];
  [v6 setUseLargeLayoutMode:v4 >= 350.0];

  v7 = [(BSUIDailyReadingBoxLayout *)self box];
  v8 = [v7 dailyReadingMetrics];
  [v8 setUseNarrowLayoutMode:v4 <= 256.0];

  v12.receiver = self;
  v12.super_class = BSUIDailyReadingBoxLayout;
  [(BSUIDailyReadingBoxLayout *)&v12 computeLayout];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (CGSizeZero.width == self->_intrinsicContentSize.width && height == self->_intrinsicContentSize.height)
  {
    [(BSUIDailyReadingBoxLayout *)self _layoutAndComputeIntrinsicHeight:CGSizeZero.width];
  }

  [(BSUIDailyReadingBoxLayout *)self _layoutToBaseOfControlIfPossible:width];
}

@end