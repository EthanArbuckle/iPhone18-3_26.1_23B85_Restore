@interface AKBitmapFIFO
- (AKBitmapFIFO)initWithFIFO:(id)a3;
- (CGPath)newPathFromCurrentBitmap;
- (CGPoint)_convertPointToScreenBacking:(CGPoint)a3;
- (CGRect)bitmapRectInView;
- (CGRect)unionDirtyRect;
- (CGSize)bitmapSize;
- (void)_addPointToBitmap:(AKBitmapFIFO *)self;
- (void)_addSinglePointToBitmap:(AKBitmapFIFO *)self;
- (void)_addToDirtyRect:(CGRect)a3;
- (void)_applyDirtyRectToView;
- (void)_clearAllBitmapData;
- (void)_clearCachedPath;
- (void)_createBitmapContextIfNecessary;
- (void)_createBitmapIfNecessary;
- (void)_updateBitmapSizeFromViewIfNecessary;
- (void)addPoint:(AKBitmapFIFO *)self;
- (void)clear;
- (void)flush;
- (void)setIsInLiveDraw:(BOOL)a3;
- (void)setView:(id)a3;
- (void)teardown;
@end

@implementation AKBitmapFIFO

- (AKBitmapFIFO)initWithFIFO:(id)a3
{
  v8.receiver = self;
  v8.super_class = AKBitmapFIFO;
  v3 = [(CHPointFIFO *)&v8 initWithFIFO:a3];
  v4 = v3;
  if (v3)
  {
    [(AKBitmapFIFO *)v3 setBitmapSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(AKBitmapFIFO *)v4 setBitmapSizeHasBeenUpdatedOnceForLiveDraw:0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v7[0] = *MEMORY[0x277CBF2C0];
    v7[1] = v5;
    v7[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(AKBitmapFIFO *)v4 setViewToBitmapTransform:v7];
    [(AKBitmapFIFO *)v4 setBitmapSizeMultiplier:1.0];
    [(AKBitmapFIFO *)v4 setLastPoint:0.0];
    [(AKBitmapFIFO *)v4 setUnionDirtyRect:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  }

  return v4;
}

- (void)teardown
{
  [(AKBitmapFIFO *)self setView:0];

  [(AKBitmapFIFO *)self _clearAllBitmapData];
}

- (void)addPoint:(AKBitmapFIFO *)self
{
  v4 = v2;
  [(AKBitmapFIFO *)self _clearCachedPath];
  [(AKBitmapFIFO *)self _createBitmapContextIfNecessary];
  [(AKBitmapFIFO *)self _addPointToBitmap:v4];

  MEMORY[0x2821F9670](self, sel_emitPoint_);
}

- (void)flush
{
  v3.receiver = self;
  v3.super_class = AKBitmapFIFO;
  [(CHPointFIFO *)&v3 flush];
  [(AKBitmapFIFO *)self setLastPoint:0.0];
  [(AKBitmapFIFO *)self resetDirtyRect];
}

- (void)clear
{
  v4.receiver = self;
  v4.super_class = AKBitmapFIFO;
  [(CHPointFIFO *)&v4 clear];
  [(AKBitmapFIFO *)self _clearCachedPath];
  [(AKBitmapFIFO *)self _clearAllBitmapData];
  v3 = [(AKBitmapFIFO *)self view];
  [v3 setNeedsDisplay];

  [(AKBitmapFIFO *)self setLastPoint:0.0];
  [(AKBitmapFIFO *)self resetDirtyRect];
}

- (void)setIsInLiveDraw:(BOOL)a3
{
  if (self->_isInLiveDraw != a3)
  {
    self->_isInLiveDraw = a3;
    [(AKBitmapFIFO *)self setBitmapSizeHasBeenUpdatedOnceForLiveDraw:0];
  }
}

- (void)setView:(id)a3
{
  v5 = a3;
  if (self->_view != v5)
  {
    v6 = v5;
    [(AKBitmapFIFO *)self clear];
    objc_storeStrong(&self->_view, a3);
    [(AKBitmapFIFO *)self _updateBitmapSizeFromViewIfNecessary];
    v5 = v6;
  }
}

- (CGRect)bitmapRectInView
{
  v3 = [(AKBitmapFIFO *)self view];
  [v3 bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (![AKGeometryHelper isUnpresentableRect:?])
  {
    v12 = *MEMORY[0x277CBF348];
    v13 = *(MEMORY[0x277CBF348] + 8);
    [(AKBitmapFIFO *)self _convertPointToScreenBacking:1.0, 0.0];
    v15 = v14;
    v17 = v16;
    [(AKBitmapFIFO *)self _convertPointToScreenBacking:v12, v13];
    v19 = vabdd_f64(v15, v18);
    v21 = vabdd_f64(v17, v20);
    if (v19 < v21)
    {
      v19 = v21;
    }

    v22 = 1.0 / v19 * -200.0;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectInset(v27, v22, v22);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPath)newPathFromCurrentBitmap
{
  cachedPath = self->_cachedPath;
  if (!cachedPath)
  {
    v4 = [[AKPotrace alloc] initWithCGImage:[(AKBitmapFIFO *)self currentBitmap] flipped:1 whiteIsInside:1];
    v5 = v4;
    if (v4)
    {
      [(AKPotrace *)v4 setTurdsize:0];
      v6 = [(AKPotrace *)v5 CGPath];
      memset(&v9, 0, sizeof(v9));
      [(AKBitmapFIFO *)self viewToBitmapTransform];
      CGAffineTransformInvert(&v9, &v8);
      self->_cachedPath = MEMORY[0x245CAE590](v6, &v9);
    }

    cachedPath = self->_cachedPath;
  }

  return CGPathCreateMutableCopy(cachedPath);
}

- (void)_clearCachedPath
{
  cachedPath = self->_cachedPath;
  if (cachedPath)
  {
    CGPathRelease(cachedPath);
    self->_cachedPath = 0;
  }
}

- (CGPoint)_convertPointToScreenBacking:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(AKBitmapFIFO *)self view];
  v6 = [v5 window];
  [v5 convertPoint:v6 toView:{x, y}];
  [v6 convertPoint:0 toWindow:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_updateBitmapSizeFromViewIfNecessary
{
  if (![(AKBitmapFIFO *)self isInLiveDraw]|| ![(AKBitmapFIFO *)self bitmapSizeHasBeenUpdatedOnceForLiveDraw])
  {
    [(AKBitmapFIFO *)self bitmapRectInView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (![AKGeometryHelper isUnpresentableRect:?])
    {
      memset(&v65, 0, sizeof(v65));
      v66.origin.x = v4;
      v66.origin.y = v6;
      v66.size.width = v8;
      v66.size.height = v10;
      v11 = -CGRectGetMidX(v66);
      v67.origin.x = v4;
      v67.origin.y = v6;
      v67.size.width = v8;
      v67.size.height = v10;
      MidY = CGRectGetMidY(v67);
      CGAffineTransformMakeTranslation(&v65, v11, -MidY);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_23F488F98;
      v64[3] = &unk_278C7BDC8;
      v64[4] = self;
      v13 = [AKGeometryHelper exifOrientationWithConversionBlock:v64];
      memset(&v63, 0, sizeof(v63));
      [AKGeometryHelper affineTransformForExifOrientation:v13 aboutCenter:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      v68.origin.x = v4;
      v68.origin.y = v6;
      v68.size.width = v8;
      v68.size.height = v10;
      MinX = CGRectGetMinX(v68);
      v69.origin.x = v4;
      v69.origin.y = v6;
      v69.size.width = v8;
      v69.size.height = v10;
      MinY = CGRectGetMinY(v69);
      v70.origin.x = v4;
      v70.origin.y = v6;
      v70.size.width = v8;
      v70.size.height = v10;
      MaxX = CGRectGetMaxX(v70);
      v71.origin.x = v4;
      v71.origin.y = v6;
      v71.size.width = v8;
      v71.size.height = v10;
      MaxY = CGRectGetMaxY(v71);
      [(AKBitmapFIFO *)self _convertPointToScreenBacking:MinX, MinY];
      v19 = v18;
      v21 = v20;
      [(AKBitmapFIFO *)self _convertPointToScreenBacking:MaxX, MaxY];
      v72.size.width = v22 - v19;
      v72.size.height = v23 - v21;
      v72.origin.x = v19;
      v72.origin.y = v21;
      v73 = CGRectStandardize(v72);
      x = v73.origin.x;
      y = v73.origin.y;
      width = v73.size.width;
      height = v73.size.height;
      v62 = v63;
      v73.origin.x = v4;
      v73.origin.y = v6;
      v73.size.width = v8;
      v73.size.height = v10;
      v74 = CGRectApplyAffineTransform(v73, &v62);
      v54 = v6;
      v55 = v4;
      v28 = v74.origin.x;
      v49 = v74.origin.y;
      rect = v74.origin.x;
      rect_16 = v10;
      rect_24 = v8;
      v29 = v74.size.width;
      v30 = v74.size.height;
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      v31 = CGRectGetWidth(v74);
      v75.origin.x = v28;
      v75.origin.y = v49;
      v75.size.width = v29;
      v75.size.height = v30;
      rect_8 = v31 / CGRectGetWidth(v75);
      v76.origin.x = x;
      v32 = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v33 = CGRectGetHeight(v76);
      v77.origin.x = rect;
      v77.origin.y = v49;
      v77.size.width = v29;
      v77.size.height = v30;
      v34 = CGRectGetHeight(v77);
      memset(&v62, 0, sizeof(v62));
      CGAffineTransformMakeScale(&v62, rect_8, v33 / v34);
      memset(&v61, 0, sizeof(v61));
      v78.origin.x = v32;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      v35 = CGRectGetWidth(v78) * 0.5;
      v79.origin.x = v32;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      v36 = CGRectGetHeight(v79);
      CGAffineTransformMakeTranslation(&v61, v35, v36 * 0.5);
      memset(&v60, 0, sizeof(v60));
      [(AKBitmapFIFO *)self bitmapSizeMultiplier];
      v38 = v37;
      [(AKBitmapFIFO *)self bitmapSizeMultiplier];
      CGAffineTransformMakeScale(&v60, v38, v39);
      v40 = *(MEMORY[0x277CBF2C0] + 16);
      *&v59.a = *MEMORY[0x277CBF2C0];
      *&v59.c = v40;
      *&v59.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.a = *&v59.a;
      *&t1.c = v40;
      *&t1.tx = *&v59.tx;
      t2 = v65;
      CGAffineTransformConcat(&v59, &t1, &t2);
      t2 = v59;
      v56 = v63;
      CGAffineTransformConcat(&t1, &t2, &v56);
      v59 = t1;
      t2 = t1;
      v56 = v62;
      CGAffineTransformConcat(&t1, &t2, &v56);
      v59 = t1;
      t2 = t1;
      v56 = v61;
      CGAffineTransformConcat(&t1, &t2, &v56);
      v59 = t1;
      t2 = t1;
      v56 = v60;
      CGAffineTransformConcat(&t1, &t2, &v56);
      v59 = t1;
      v80.origin.y = v54;
      v80.origin.x = v55;
      v80.size.height = rect_16;
      v80.size.width = rect_24;
      v81 = CGRectApplyAffineTransform(v80, &t1);
      v41 = v81.origin.x;
      v42 = v81.origin.y;
      v43 = v81.size.width;
      v44 = v81.size.height;
      v45 = floor(CGRectGetWidth(v81));
      v82.origin.x = v41;
      v82.origin.y = v42;
      v82.size.width = v43;
      v82.size.height = v44;
      v46 = floor(CGRectGetHeight(v82));
      if (![AKGeometryHelper isUnpresentableRect:0.0, 0.0, v45, v46])
      {
        [(AKBitmapFIFO *)self bitmapSize];
        if (v45 != v48 || v46 != v47 || ([(AKBitmapFIFO *)self viewToBitmapTransform], t2 = v59, !CGAffineTransformEqualToTransform(&t2, &t1)))
        {
          [(AKBitmapFIFO *)self setBitmapSize:v45, v46];
          t1 = v59;
          [(AKBitmapFIFO *)self setViewToBitmapTransform:&t1];
          [(AKBitmapFIFO *)self _clearAllBitmapData];
          if ([(AKBitmapFIFO *)self isInLiveDraw])
          {
            [(AKBitmapFIFO *)self setBitmapSizeHasBeenUpdatedOnceForLiveDraw:1];
          }
        }
      }
    }
  }
}

- (void)_addPointToBitmap:(AKBitmapFIFO *)self
{
  v14 = v2;
  CGImageRelease(self->_bitmapImage);
  self->_bitmapImage = 0;
  [(AKBitmapFIFO *)self lastPoint];
  v5 = v4;
  if (v4.f32[0] != 0.0 || v4.f32[1] != 0.0 || v4.f32[2] != 0.0)
  {
    v4.i32[0] = v14.i32[2];
    if (v4.f32[2] < v14.f32[2])
    {
      v4.f32[0] = v4.f32[2];
    }

    v6 = fmax(v4.f32[0] * 0.25, 0.01);
    v16 = vsubq_f32(v14, v5);
    v18 = v5;
    *v7.i32 = hypotf(v16.f32[0], v16.f32[1]);
    v8 = v18;
    v9 = *v7.i32;
    if (v6 < *v7.i32)
    {
      v10 = vcvtmd_u64_f64(v9 / v6);
      v11.i64[0] = vdivq_f32(v16, vdupq_lane_s32(v7, 0)).u64[0];
      v11.i64[1] = v16.i64[1];
      if (v16.f32[2] != 0.0)
      {
        v11.f32[2] = v16.f32[2] / v16.f32[2];
      }

      if (v10)
      {
        v12 = v9 / (v10 + 1);
        v17 = vmulq_n_f32(v11, v12);
        for (i = 1; i <= v10; ++i)
        {
          [(AKBitmapFIFO *)self _addSinglePointToBitmap:*vmlaq_n_f32(v8, v17, i).i64, *&v14];
          v8 = v18;
        }
      }
    }
  }

  [(AKBitmapFIFO *)self _addSinglePointToBitmap:*v14.i64, *&v14];
  [(AKBitmapFIFO *)self setLastPoint:v15];

  MEMORY[0x2821F9670](self, sel__applyDirtyRectToView);
}

- (void)_createBitmapContextIfNecessary
{
  [(AKBitmapFIFO *)self _updateBitmapSizeFromViewIfNecessary];
  [(AKBitmapFIFO *)self bitmapSize];
  v4 = v3;
  v5 = round(v3);
  [(AKBitmapFIFO *)self bitmapSize];
  v7 = v6;
  if (![AKGeometryHelper isUnpresentableRect:0.0, 0.0, v5, round(v6)]&& !self->_bitmapContext)
  {
    v8 = vcvtad_u64_f64(v4);
    v9 = vcvtad_u64_f64(v7);
    if (self->_bitmapDataPtr || is_mul_ok(v8, v9) && (v13 = malloc_type_calloc(v8 * v9, 1uLL, 0x100004077774924uLL), (self->_bitmapDataPtr = v13) != 0))
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      if (DeviceGray)
      {
        v11 = DeviceGray;
        if (!self->_bitmapContext)
        {
          v12 = CGBitmapContextCreate(self->_bitmapDataPtr, v8, v9, 8uLL, v8, DeviceGray, 0);
          self->_bitmapContext = v12;
          if (!v12)
          {
            [(AKBitmapFIFO *)self _clearAllBitmapData];
          }
        }

        CGColorSpaceRelease(v11);
      }
    }

    else
    {

      [(AKBitmapFIFO *)self _clearAllBitmapData];
    }
  }
}

- (void)_createBitmapIfNecessary
{
  if (!self->_bitmapImage)
  {
    [(AKBitmapFIFO *)self _createBitmapContextIfNecessary];
    bitmapContext = self->_bitmapContext;
    if (bitmapContext)
    {
      self->_bitmapImage = CGBitmapContextCreateImage(bitmapContext);
    }
  }
}

- (void)_clearAllBitmapData
{
  bitmapImage = self->_bitmapImage;
  if (bitmapImage)
  {
    CGImageRelease(bitmapImage);
    self->_bitmapImage = 0;
  }

  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CGContextRelease(bitmapContext);
    self->_bitmapContext = 0;
  }

  bitmapDataPtr = self->_bitmapDataPtr;
  if (bitmapDataPtr)
  {
    free(bitmapDataPtr);
    self->_bitmapDataPtr = 0;
  }
}

- (void)_addSinglePointToBitmap:(AKBitmapFIFO *)self
{
  v14 = v2;
  bitmapContext = self->_bitmapContext;
  v5 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(bitmapContext, [v5 CGColor]);

  CGContextSaveGState(self->_bitmapContext);
  v6 = self->_bitmapContext;
  [(AKBitmapFIFO *)self viewToBitmapTransform];
  CGContextConcatCTM(v6, &transform);
  v16.origin.x = *&v14 - *(&v14 + 2) * 0.5;
  v16.origin.y = *(&v14 + 1) - *(&v14 + 2) * 0.5;
  v16.size.width = *(&v14 + 2);
  v16.size.height = *(&v14 + 2);
  CGContextFillEllipseInRect(self->_bitmapContext, v16);
  [(AKBitmapFIFO *)self shadowRadiusInView];
  v8 = *&v14 - (*(&v14 + 2) + v7 * 2.0) * 0.5;
  [(AKBitmapFIFO *)self shadowRadiusInView];
  v10 = *(&v14 + 1) - (*(&v14 + 2) + v9 * 2.0) * 0.5;
  [(AKBitmapFIFO *)self shadowRadiusInView];
  v12 = *(&v14 + 2) + v11 * 2.0;
  [(AKBitmapFIFO *)self shadowRadiusInView];
  [(AKBitmapFIFO *)self _addToDirtyRect:v8, v10, v12, *(&v14 + 2) + v13 * 2.0];
  CGContextRestoreGState(self->_bitmapContext);
}

- (void)_addToDirtyRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AKBitmapFIFO *)self unionDirtyRect];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v10 = CGRectUnion(v9, v11);

  [(AKBitmapFIFO *)self setUnionDirtyRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (void)_applyDirtyRectToView
{
  [(AKBitmapFIFO *)self unionDirtyRect];
  if (!CGRectIsNull(v5))
  {
    v3 = [(AKBitmapFIFO *)self view];
    [(AKBitmapFIFO *)self unionDirtyRect];
    [v3 setNeedsDisplayInRect:?];
  }
}

- (CGSize)bitmapSize
{
  objc_copyStruct(v4, &self->_bitmapSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)unionDirtyRect
{
  objc_copyStruct(v6, &self->_unionDirtyRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end