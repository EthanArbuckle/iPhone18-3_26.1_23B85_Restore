@interface PKStroke
+ (id)crl_strokePathsExcludingNonMaskedPathRangesForPKStroke:(id)a3;
- (CRLFill)crl_fill;
- (double)crl_averageActualWidth;
- (double)crl_maximumActualWidth;
- (double)crl_particleOffset;
- (double)crl_particleOffsetAt:(double)a3 forSecondaryParticles:(BOOL)a4;
- (double)crl_secondaryParticleOffset;
- (id)crl_copyWithNewParticleOffset:(double)a3 secondaryParticleOffset:(double)a4;
- (id)crl_strokeForTracingWithOutset:(double)a3 shouldIgnoreMask:(BOOL)a4;
@end

@implementation PKStroke

- (double)crl_averageActualWidth
{
  v3 = [(PKStroke *)self path];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = [v3 objectAtIndexedSubscript:v6];
      [v12 size];
      v7 = v7 + v13;
      v8 = v8 + v14;
      [v12 force];
      v9 = v9 + v15;
      [v12 _edgeWidth];
      v10 = v10 + v16;
      [v12 _radius2];
      v11 = v11 + v17;

      ++v6;
    }

    while (v5 != v6);
    v37 = v11 / v5;
    v18 = 0.0;
    v19 = [[PKStrokePoint alloc] initWithLocation:CGPointZero.x timeOffset:CGPointZero.y size:0.0 opacity:v7 / v5 force:v8 / v5 azimuth:1.0 altitude:v9 / v5 edgeWidth:0.0 radius2:{0x3FE921FB54442D18, v10 / v5, *&v37}];
    v20 = [PKStrokePath alloc];
    v39[0] = v19;
    v39[1] = v19;
    v21 = [NSArray arrayWithObjects:v39 count:2];
    v22 = +[NSDate date];
    v23 = [v20 initWithControlPoints:v21 creationDate:v22];

    v24 = [PKStroke alloc];
    v25 = [(PKStroke *)self ink];
    [(PKStroke *)self transform];
    v26 = [v24 initWithInk:v25 strokePath:v23 transform:v38 mask:0];

    [v26 renderBounds];
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    if (!CGRectIsNull(v40))
    {
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v31 = CGRectGetWidth(v41);
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v32 = (v31 + CGRectGetHeight(v42)) * 0.5;
      v33 = [(PKStroke *)self ink];
      v34 = [v33 inkType];
      v35 = [v34 isEqual:PKInkTypeWatercolor];

      if (v35)
      {
        v18 = v32 * 0.5;
      }

      else
      {
        v18 = v32;
      }
    }
  }

  else
  {
    v18 = 0.0;
  }

  return v18;
}

- (double)crl_maximumActualWidth
{
  v3 = [(PKStroke *)self path];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0.0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0.0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0.0;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v17 = [v3 objectAtIndexedSubscript:v6];
      [v17 size];
      if (v18 > v8)
      {
        v7 = v6;
        v8 = v18;
      }

      if (v19 > v9)
      {
        v10 = v6;
        v9 = v19;
      }

      [v17 force];
      if (v20 > v11)
      {
        [v17 force];
        v11 = v21;
        v12 = v6;
      }

      [v17 _edgeWidth];
      if (v22 > v13)
      {
        [v17 _edgeWidth];
        v13 = v23;
        v14 = v6;
      }

      [v17 _radius2];
      if (v24 > v15)
      {
        [v17 _radius2];
        v15 = v25;
        v16 = v6;
      }

      ++v6;
    }

    while (v5 != v6);
    v26 = +[NSMutableIndexSet indexSet];
    v27 = v26;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v26 addIndex:v7];
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v27 addIndex:v10];
    }

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v27 addIndex:v12];
    }

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v27 addIndex:v14];
    }

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v27 addIndex:v16];
    }

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v32 = [v27 firstIndex];
    if (v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v32;
      v67 = CGPointZero.y;
      do
      {
        r1 = height;
        v69 = width;
        v70 = x;
        v34 = [v3 objectAtIndexedSubscript:v33];
        v35 = [PKStrokePoint alloc];
        [v34 size];
        v37 = v36;
        v39 = v38;
        [v34 opacity];
        v41 = v40;
        [v34 force];
        v43 = v42;
        [v34 azimuth];
        v45 = v44;
        [v34 altitude];
        v47 = v46;
        [v34 _edgeWidth];
        v49 = v48;
        [v34 _radius2];
        v51 = [v35 initWithLocation:CGPointZero.x timeOffset:v67 size:0.0 opacity:v37 force:v39 azimuth:v41 altitude:v43 edgeWidth:v45 radius2:{v47, v49, v50}];
        v52 = [PKStrokePath alloc];
        v72[0] = v51;
        v72[1] = v51;
        v53 = [NSArray arrayWithObjects:v72 count:2];
        v54 = +[NSDate date];
        v55 = [v52 initWithControlPoints:v53 creationDate:v54];

        v56 = [PKStroke alloc];
        v57 = [(PKStroke *)self ink];
        [(PKStroke *)self transform];
        v58 = [v56 initWithInk:v57 strokePath:v55 transform:v71 mask:0];

        [v58 renderBounds];
        v78.origin.x = v59;
        v78.origin.y = v60;
        v78.size.width = v61;
        v78.size.height = v62;
        v73.size.width = v69;
        v73.origin.x = v70;
        v73.origin.y = y;
        v73.size.height = r1;
        v74 = CGRectUnion(v73, v78);
        x = v74.origin.x;
        y = v74.origin.y;
        width = v74.size.width;
        height = v74.size.height;
        v33 = [v27 indexGreaterThanIndex:v33];
      }

      while (v33 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    v63 = 0.0;
    if (!CGRectIsNull(v75))
    {
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v64 = CGRectGetWidth(v76);
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v65 = CGRectGetHeight(v77);
      v63 = sqrt(v64 * v64 + v65 * v65);
    }
  }

  else
  {
    v63 = 0.0;
  }

  return v63;
}

- (CRLFill)crl_fill
{
  v3 = objc_opt_class();
  v4 = objc_getAssociatedObject(self, off_1019ED878);
  v5 = sub_100013F00(v3, v4);

  return v5;
}

- (double)crl_particleOffset
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178874;
  block[3] = &unk_10183AB38;
  block[4] = self;
  if (qword_101A34708 != -1)
  {
    dispatch_once(&qword_101A34708, block);
  }

  if (!byte_101A34700)
  {
    return 0.0;
  }

  [(PKStroke *)self _particleOffset];
  return result;
}

- (double)crl_secondaryParticleOffset
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178954;
  block[3] = &unk_10183AB38;
  block[4] = self;
  if (qword_101A34718 != -1)
  {
    dispatch_once(&qword_101A34718, block);
  }

  if (!byte_101A34710)
  {
    return 0.0;
  }

  [(PKStroke *)self _secondaryParticleOffset];
  return result;
}

- (id)crl_copyWithNewParticleOffset:(double)a3 secondaryParticleOffset:(double)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178A60;
  block[3] = &unk_10183AB38;
  block[4] = self;
  if (qword_101A34728 != -1)
  {
    dispatch_once(&qword_101A34728, block);
  }

  if (byte_101A34720)
  {
    v7 = [(PKStroke *)self _copyWithNewParticleOffset:a3 secondaryParticleOffset:a4];
  }

  else
  {
    v7 = [(PKStroke *)self copy];
  }

  return v7;
}

- (double)crl_particleOffsetAt:(double)a3 forSecondaryParticles:(BOOL)a4
{
  v4 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100178B58;
  block[3] = &unk_10183AB38;
  block[4] = self;
  if (qword_101A34738 != -1)
  {
    dispatch_once(&qword_101A34738, block);
  }

  if (!byte_101A34730)
  {
    return 0.0;
  }

  [(PKStroke *)self _particleOffsetAt:v4 forSecondaryParticles:a3];
  return result;
}

- (id)crl_strokeForTracingWithOutset:(double)a3 shouldIgnoreMask:(BOOL)a4
{
  v7 = [(PKStroke *)self path];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    [(PKStroke *)self transform];
    v10 = sub_100139A00(v64);
    if (v10 == 0.0)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132347C();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013234A4(v11, v12);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101323550();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v13, v11);
      }

      v14 = [NSString stringWithUTF8String:"[PKStroke(CRLAdditions) crl_strokeForTracingWithOutset:shouldIgnoreMask:]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/PKStroke_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:311 isFatal:0 description:"the scale on a PKStroke should not be 0"];

      v10 = 1.0;
    }

    v60 = a3;
    v61 = a3 / v10 + a3 / v10;
    v16 = objc_opt_new();
    for (i = 0; i != v9; ++i)
    {
      v18 = [v7 objectAtIndexedSubscript:i];
      [v18 size];
      v20 = v61 + v19;
      if (v20 < 3.0)
      {
        v20 = 3.0;
      }

      v63 = v20;
      [v18 size];
      v22 = v61 + v21;
      if (v61 + v21 < 3.0)
      {
        v22 = 3.0;
      }

      v62 = v22;
      v23 = [PKStrokePoint alloc];
      [v18 location];
      v25 = v24;
      v27 = v26;
      [v18 timeOffset];
      v29 = v28;
      [v18 opacity];
      v31 = v30;
      [v18 force];
      v33 = v32;
      [v18 azimuth];
      v35 = v34;
      [v18 altitude];
      v37 = v36;
      [v18 _edgeWidth];
      v39 = v38;
      [v18 _radius2];
      v41 = [v23 initWithLocation:v25 timeOffset:v27 size:v29 opacity:v63 force:v62 azimuth:v31 altitude:v33 edgeWidth:v35 radius2:{v37, v39, v40}];
      [v16 addObject:v41];
    }

    v42 = [PKStrokePath alloc];
    v43 = [v7 creationDate];
    v44 = [v42 initWithControlPoints:v16 creationDate:v43];

    v45 = +[CRLColor blackColor];
    v46 = [v45 UIColor];

    v47 = [[PKInk alloc] initWithInkType:PKInkTypePen color:v46];
    if (!a4)
    {
      v48 = [(PKStroke *)self mask];
      if (!v48)
      {
LABEL_22:
        v51 = [v48 CGPath];
        if (v51)
        {
          v52 = [UIBezierPath bezierPathWithCGPath:v51];
        }

        else
        {
          v52 = 0;
        }

        v54 = [PKStroke alloc];
        [(PKStroke *)self transform];
        v55 = [v54 initWithInk:v47 strokePath:v44 transform:v64 mask:v52];
        v56 = [(PKStroke *)self _renderGroupID];
        [v55 _setRenderGroupID:v56];

        [(PKStroke *)self _anchorPointForTexture];
        v53 = [v55 copyWithNewAnchorPointForTexture:?];

        goto LABEL_27;
      }

      v49 = [(PKStroke *)self mask];
      v50 = [v49 isEmpty];

      if ((v50 & 1) == 0)
      {
        v58 = [(PKStroke *)self mask];
        v59 = +[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v58 CGPath]);

        v48 = [v59 bezierPathByOffsettingPath:1 joinStyle:v60];

        goto LABEL_22;
      }
    }

    v48 = 0;
    goto LABEL_22;
  }

  v53 = self;
LABEL_27:

  return v53;
}

+ (id)crl_strokePathsExcludingNonMaskedPathRangesForPKStroke:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 maskedPathRanges];
  v24 = v3;
  v6 = [v3 path];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        [v12 lowerBound];
        v14 = vcvtpd_u64_f64(v13);
        [v12 upperBound];
        v16 = v15;
        v17 = objc_alloc_init(NSMutableArray);
        while (v14 <= v16)
        {
          v18 = [v6 objectAtIndexedSubscript:v14];
          [v17 addObject:v18];

          ++v14;
        }

        if ([v17 count])
        {
          v19 = [PKStrokePath alloc];
          v20 = [v17 copy];
          v21 = [v6 creationDate];
          v22 = [v19 initWithControlPoints:v20 creationDate:v21];

          [v4 addObject:v22];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v4;
}

@end