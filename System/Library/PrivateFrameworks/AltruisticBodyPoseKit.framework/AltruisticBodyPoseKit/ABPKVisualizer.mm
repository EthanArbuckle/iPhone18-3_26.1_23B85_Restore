@interface ABPKVisualizer
+ (void)_drawRectOfSize:(int)a3 posx:(int)a4 posy:(int)a5 pImage:(vImage_Buffer *)a6 red:(unsigned __int8)a7 green:(unsigned __int8)a8 blue:(unsigned __int8)a9;
- (ABPKVisualizer)init;
- (BOOL)jointInImageDimensions:(CGSize)a3 imageDimensions:;
- (int)drawBoundingBox:(CGRect)a3 withColor:(__CVBuffer *)a4 OnImage:(__CVBuffer *)a5 andGenerateOverlayImage:;
- (int)drawFaceBbox:(__CVBuffer *)a3 detectedBodies2d:(id)a4 confidences:(id)a5 skeletonDefinition:(id)a6 overlayImage:(__CVBuffer *)a7 color:;
- (int)drawLineFromPoint:(unint64_t)a3 ToPoint:(vImage_Buffer *)a4 withThickness:withColor:OnImage:;
- (void)dealloc;
- (void)drawFaceBboxEdgewithJoints:(id)a3 withSkeletonDefinition:(id)a4 fromPostion:(vImage_Buffer *)a5 toPosition:OnImage:color:;
@end

@implementation ABPKVisualizer

- (ABPKVisualizer)init
{
  v5.receiver = self;
  v5.super_class = ABPKVisualizer;
  v2 = [(ABPKVisualizer *)&v5 init];
  if (v2)
  {
    VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &v2->_pixelTransferSession);
    v2->_pixelBufferPoolBGRA = 0;
    *&v3 = 0xFF00000000;
    *(&v3 + 1) = 0xFF00000000;
    *v2->_highConfidenceColor = v3;
    *v2->_mediumConfidenceColor = xmmword_23EE281D0;
    *v2->_lowConfidenceColor = xmmword_23EE281B0;
  }

  return v2;
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    CFRelease(pixelTransferSession);
  }

  pixelBufferPoolBGRA = self->_pixelBufferPoolBGRA;
  if (pixelBufferPoolBGRA)
  {
    CVPixelBufferPoolRelease(pixelBufferPoolBGRA);
    self->_pixelBufferPoolBGRA = 0;
  }

  pixelBufferPoolYUV = self->_pixelBufferPoolYUV;
  if (pixelBufferPoolYUV)
  {
    CVPixelBufferPoolRelease(pixelBufferPoolYUV);
    self->_pixelBufferPoolYUV = 0;
  }

  v6.receiver = self;
  v6.super_class = ABPKVisualizer;
  [(ABPKVisualizer *)&v6 dealloc];
}

- (BOOL)jointInImageDimensions:(CGSize)a3 imageDimensions:
{
  if (*&a3.width < 0.0 || a3.height <= *&a3.width)
  {
    return 0;
  }

  return v3 > *(&a3.width + 1) && *(&a3.width + 1) >= 0.0;
}

- (int)drawBoundingBox:(CGRect)a3 withColor:(__CVBuffer *)a4 OnImage:(__CVBuffer *)a5 andGenerateOverlayImage:
{
  v25 = v5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, a4, a5))
  {
    v12 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " Could not transfer image. ", buf, 2u);
    }

    return -6660;
  }

  else
  {
    CVPixelBufferLockBaseAddress(a5, 0);
    *buf = CVPixelBufferGetBaseAddress(a5);
    v27 = CVPixelBufferGetHeight(a5);
    v28 = CVPixelBufferGetWidth(a5);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a5);
    *&v15 = x;
    *&v16 = y;
    v17 = COERCE_DOUBLE(__PAIR64__(v16, v15));
    LODWORD(v18) = v15;
    v29 = BytesPerRow;
    *&v19 = x + width;
    v21 = COERCE_DOUBLE(__PAIR64__(v16, LODWORD(v19)));
    v22 = v17;
    v20 = y + height;
    *(&v18 + 1) = v20;
    *(&v19 + 1) = v20;
    v23 = v19;
    v24 = v18;
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v17 withColor:v21 OnImage:v25];
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v21 withColor:v23 OnImage:v25];
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v23 withColor:v24 OnImage:v25];
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v24 withColor:v22 OnImage:v25];
    CVPixelBufferUnlockBaseAddress(a5, 0);
    return 0;
  }
}

- (int)drawLineFromPoint:(unint64_t)a3 ToPoint:(vImage_Buffer *)a4 withThickness:withColor:OnImage:
{
  v8 = v5;
  *&v7 = v4;
  v9 = vsub_f32(v4, v5);
  v21 = (a3 >> 1);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) > v21)
  {
    v12 = vsub_f32(v5, *&v7);
    v13 = vmul_f32(v12, v12);
    v13.f32[0] = sqrtf(vaddv_f32(v13));
    v14 = vmul_n_f32(vdiv_f32(v12, vdup_lane_s32(v13, 0)), v21);
    v15 = v6;
    v16 = BYTE4(v6);
    v17 = BYTE8(v6);
    do
    {
      *&v7 = vadd_f32(v14, *&v7);
      v22 = v7;
      LOBYTE(v20) = v17;
      [objc_opt_class() _drawRectOfSize:a3 posx:*&v7 posy:*(&v7 + 1) pImage:a4 red:v15 green:v16 blue:v20];
      v7 = v22;
      v18 = vsub_f32(*&v22, v8);
    }

    while (sqrtf(vaddv_f32(vmul_f32(v18, v18))) > v21);
  }

  return 0;
}

- (int)drawFaceBbox:(__CVBuffer *)a3 detectedBodies2d:(id)a4 confidences:(id)a5 skeletonDefinition:(id)a6 overlayImage:(__CVBuffer *)a7 color:
{
  v60 = v7;
  v12 = a4;
  v13 = a6;
  if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, a3, a7))
  {
    v14 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_ERROR, " Could not transfer image. ", buf, 2u);
    }

    v15 = -6660;
  }

  else
  {
    CVPixelBufferLockBaseAddress(a7, 0);
    *buf = CVPixelBufferGetBaseAddress(a7);
    Height = CVPixelBufferGetHeight(a7);
    Width = CVPixelBufferGetWidth(a7);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a7);
    v58 = Width;
    v16 = Height;
    v17 = [v12 objectAtIndexedSubscript:0];
    v18 = [v17 objectAtIndexedSubscript:1];
    [v18 floatValue];
    v20 = Height * v19;
    v21 = v20;
    _NF = v20 < 0.0;
    v23 = 0.5;
    if (_NF)
    {
      v23 = -0.5;
    }

    v24 = (v23 + v21);

    v25 = [v12 objectAtIndexedSubscript:17];
    v26 = [v25 objectAtIndexedSubscript:0];
    [v26 floatValue];
    v55 = v27;

    v28 = [v12 objectAtIndexedSubscript:18];
    v29 = [v28 objectAtIndexedSubscript:0];
    [v29 floatValue];
    v30.i32[1] = v55;
    v31 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v30), v58));
    v32 = vmvn_s8(vcgez_f32(v31));
    v33.i64[0] = v32.i32[0];
    v33.i64[1] = v32.i32[1];
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v56 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v33, _Q3, _Q2), vcvtq_f64_f32(v31))));

    v39 = v56.i32[0];
    *&v40 = (v56.i32[0] - v56.i32[1]);
    v41 = v24 + *&v40 * -0.7;
    v42 = 1.0;
    v43 = 1.0;
    if (v41 > 0.0)
    {
      v43 = v24 + *&v40 * -0.7;
      if (v16 <= v41)
      {
        v43 = v16 + -1.0;
      }
    }

    v44 = v24 + *&v40 * 0.9;
    if (v44 > 0.0)
    {
      v42 = v44;
      if (v16 <= v44)
      {
        v42 = v16 + -1.0;
      }
    }

    v45 = (v58 + 7.0 + -1.0);
    if (v58 + 7.0 > v56.u32[1])
    {
      v45 = v56.i32[1];
    }

    if (v56.i32[1] >= 8)
    {
      v46 = v45;
    }

    else
    {
      v46 = 8;
    }

    *&v40 = v56.i32[0];
    if (v56.i32[0] < -6)
    {
      v39 = 8;
    }

    if (v58 + -7.0 <= *&v40)
    {
      v39 = (v58 + -7.0 + -1.0);
    }

    *&v40 = (v46 - 7);
    v47 = v40;
    *&v48 = *&v40;
    *(&v47 + 1) = v43;
    v49 = *&v47;
    v52 = v47;
    *&v50 = (v39 + 7);
    *&v47 = *&v50;
    *(&v47 + 1) = v43;
    *(&v48 + 1) = v42;
    v54 = *&v47;
    v57 = v48;
    *(&v50 + 1) = v42;
    v59 = v50;
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:v12 withSkeletonDefinition:v13 fromPostion:buf toPosition:v49 OnImage:*&v47 color:v60, v52];
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:v12 withSkeletonDefinition:v13 fromPostion:buf toPosition:v53 OnImage:v57 color:v60];
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:v12 withSkeletonDefinition:v13 fromPostion:buf toPosition:v57 OnImage:v59 color:v60];
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:v12 withSkeletonDefinition:v13 fromPostion:buf toPosition:v54 OnImage:v59 color:v60];
    CVPixelBufferUnlockBaseAddress(a7, 0);
    v15 = 0;
  }

  return v15;
}

- (void)drawFaceBboxEdgewithJoints:(id)a3 withSkeletonDefinition:(id)a4 fromPostion:(vImage_Buffer *)a5 toPosition:OnImage:color:
{
  *&v8 = v5;
  v9 = vsub_f32(v5, v6);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) > 2.0)
  {
    v11 = v6;
    v12 = vsub_f32(v6, *&v8);
    v13 = vmul_f32(v12, v12);
    v13.f32[0] = sqrtf(vaddv_f32(v13));
    v14 = vdiv_f32(v12, vdup_lane_s32(v13, 0));
    v15 = vadd_f32(v14, v14);
    v16 = v7;
    v17 = BYTE4(v7);
    v18 = BYTE8(v7);
    do
    {
      *&v8 = vadd_f32(v15, *&v8);
      v21 = v8;
      LOBYTE(v20) = v18;
      [objc_opt_class() _drawRectOfSize:5 posx:*&v8 posy:*(&v8 + 1) pImage:a5 red:v16 green:v17 blue:v20];
      v8 = v21;
      v19 = vsub_f32(*&v21, v11);
    }

    while (sqrtf(vaddv_f32(vmul_f32(v19, v19))) > 2.0);
  }
}

+ (void)_drawRectOfSize:(int)a3 posx:(int)a4 posy:(int)a5 pImage:(vImage_Buffer *)a6 red:(unsigned __int8)a7 green:(unsigned __int8)a8 blue:(unsigned __int8)a9
{
  rowBytes = a6->rowBytes;
  v12 = vmax_s32(vadd_s32(vdup_n_s32(a3 / -2), __PAIR64__(a4, a5)), 0);
  v13 = vdup_n_s32(a3);
  v14 = vadd_s32(v12, v13);
  v15.i64[0] = -1;
  v15.i64[1] = -1;
  v16.i64[0] = v14.i32[0];
  v16.i64[1] = v14.i32[1];
  v17 = vbsl_s8(vmovn_s64(vcgtq_u64(v16, vaddq_s64(*&a6->height, v15))), vadd_s32(vmovn_s64(*&a6->height), vmvn_s8(v12)), v13);
  v18.data = a6->data + rowBytes * v12.u32[0] + (4 * v12.i32[1]);
  v16.i64[0] = v17.i32[0];
  v16.i64[1] = v17.i32[1];
  *&v18.height = v16;
  v18.rowBytes = rowBytes;
  vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &v18, &v18, 1u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(a7, &v18, &v18, 2u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(a8, &v18, &v18, 4u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(a9, &v18, &v18, 8u, 0x10u);
}

@end