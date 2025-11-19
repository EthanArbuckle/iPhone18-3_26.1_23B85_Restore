@interface ARSegmentationData
- (ARSegmentationData)initWithTimestamp:(double)a3 segmentationBuffer:(__CVBuffer *)a4 confidenceBuffer:(__CVBuffer *)a5 uncertaintyBuffer:(__CVBuffer *)a6 source:(int64_t)a7;
- (BOOL)hasSegmentedPeople;
- (NSDictionary)tracingEntry;
- (NSString)description;
- (uint64_t)resampleSemanticsToDepthCPU:(float32x4_t)a3 depthToSemantics:(float32x4_t)a4 semanticsIntrinsics:(float32x4_t)a5 depthIntrinsics:(float32x4_t)a6;
- (void)adjustedIntrinics;
- (void)dealloc;
- (void)setConfidenceSampledForDepth:(__CVBuffer *)a3;
- (void)setMaskedSemanticsSampledForDepth:(__CVBuffer *)a3;
- (void)setNormalsBuffer:(__CVBuffer *)a3;
- (void)setSemanticsSampledForDepth:(__CVBuffer *)a3;
- (void)setUncertaintySampledForDepth:(__CVBuffer *)a3;
@end

@implementation ARSegmentationData

- (ARSegmentationData)initWithTimestamp:(double)a3 segmentationBuffer:(__CVBuffer *)a4 confidenceBuffer:(__CVBuffer *)a5 uncertaintyBuffer:(__CVBuffer *)a6 source:(int64_t)a7
{
  v15.receiver = self;
  v15.super_class = ARSegmentationData;
  v12 = [(ARSegmentationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_timestamp = a3;
    v12->_segmentationBuffer = CVPixelBufferRetain(a4);
    if (a5)
    {
      v13->_confidenceBuffer = CVPixelBufferRetain(a5);
    }

    if (a6)
    {
      v13->_uncertaintyBuffer = CVPixelBufferRetain(a6);
    }

    v13->_source = a7;
  }

  return v13;
}

- (BOOL)hasSegmentedPeople
{
  if (self->_hasSegmentedPeopleComputed)
  {
    return self->_hasSegmentedPeople;
  }

  else
  {
    segmentationBuffer = self->_segmentationBuffer;
    BytesPerRow = CVPixelBufferGetBytesPerRow(segmentationBuffer);
    Width = CVPixelBufferGetWidth(segmentationBuffer);
    Height = CVPixelBufferGetHeight(segmentationBuffer);
    CVPixelBufferLockBaseAddress(segmentationBuffer, 1uLL);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __bufferContainsSegmentedPeople_block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0l;
    v16 = segmentationBuffer;
    BaseAddress = CVPixelBufferGetBaseAddress(segmentationBuffer);
    if (Height)
    {
      v9 = 0;
      v3 = 1;
      while (Width < 0x41)
      {
        v10 = 0;
LABEL_11:
        if (v10 < Width)
        {
          while (BaseAddress[v10] != 255)
          {
            if (Width == ++v10)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_16;
        }

LABEL_14:
        ++v9;
        BaseAddress += BytesPerRow;
        v3 = v9 < Height;
        if (v9 == Height)
        {
          goto LABEL_15;
        }
      }

      v10 = 0;
      while (1)
      {
        v11 = vmaxq_u8(vmaxq_u8(*&BaseAddress[v10], *&BaseAddress[v10 + 32]), vmaxq_u8(*&BaseAddress[v10 + 16], *&BaseAddress[v10 + 48]));
        v11.i8[0] = vmaxvq_u8(v11);
        if (v11.i32[0] == 255)
        {
          break;
        }

        v10 += 64;
        if (v10 > Width - 64)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_15:
      v3 = 0;
    }

LABEL_16:
    v14(v13);
    self->_hasSegmentedPeople = v3;
    self->_hasSegmentedPeopleComputed = 1;
  }

  return v3;
}

- (void)adjustedIntrinics
{
  v2 = *(a1 + 96);
  if (v2)
  {
    [v2 cameraIntrinsics];
    v14 = v4;
    v15 = v3;
    v13 = v5;
    [*(a1 + 96) imageResolution];
    v7 = v6;
    v9 = v8;
    v10 = *(a1 + 24);
    if (v10)
    {
      Width = CVPixelBufferGetWidth(v10);
      Height = CVPixelBufferGetHeight(v10);
    }

    else
    {
      Width = *MEMORY[0x1E695F060];
      Height = *(MEMORY[0x1E695F060] + 8);
    }

    ARAdjustIntrinsicsForViewportSize(v15, v14, v13, v7, v9, Width, Height);
  }
}

- (uint64_t)resampleSemanticsToDepthCPU:(float32x4_t)a3 depthToSemantics:(float32x4_t)a4 semanticsIntrinsics:(float32x4_t)a5 depthIntrinsics:(float32x4_t)a6
{
  v80[1] = *MEMORY[0x1E69E9840];
  if (a10)
  {
    v19 = a1[3] == 0;
  }

  else
  {
    v19 = 1;
  }

  result = !v19;
  if (!v19)
  {
    v75 = result;
    v81.columns[1] = a17;
    v81.columns[2] = a18;
    v81.columns[0] = a16;
    v82 = __invert_f3(v81);
    v64 = v82.columns[1];
    v65 = v82.columns[0];
    v63 = v82.columns[2];
    Width = CVPixelBufferGetWidth(a10);
    Height = CVPixelBufferGetHeight(a10);
    v24 = CVPixelBufferGetWidth(a1[3]);
    v25 = CVPixelBufferGetHeight(a1[3]);
    pixelBufferOut = 0;
    v79 = *MEMORY[0x1E69660D8];
    v80[0] = MEMORY[0x1E695E0F8];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    v27 = *MEMORY[0x1E695E480];
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1[3]);
    CVPixelBufferCreate(v27, Width, Height, PixelFormatType, v26, &pixelBufferOut);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    v77 = 0;
    v29 = a1[4];
    if (v29)
    {
      v30 = CVPixelBufferGetPixelFormatType(v29);
      v31 = Height;
      CVPixelBufferCreate(v27, Width, Height, v30, v26, &v77);
      CVPixelBufferLockBaseAddress(v77, 0);
      v62 = CVPixelBufferGetBytesPerRow(a1[4]) >> 2;
      v57 = CVPixelBufferGetBytesPerRow(v77) >> 2;
      CVPixelBufferLockBaseAddress(a1[4], 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(a1[4]);
      v32 = CVPixelBufferGetBaseAddress(v77);
    }

    else
    {
      v31 = Height;
      v32 = 0;
      BaseAddress = 0;
      v62 = 0;
      v57 = 0;
    }

    v76 = 0;
    v33 = a1[5];
    v74 = v26;
    v59 = v31;
    if (v33)
    {
      v34 = CVPixelBufferGetPixelFormatType(v33);
      CVPixelBufferCreate(v27, Width, v31, v34, v26, &v76);
      CVPixelBufferLockBaseAddress(v76, 0);
      v60 = CVPixelBufferGetBytesPerRow(a1[5]) >> 2;
      v56 = CVPixelBufferGetBytesPerRow(v76) >> 2;
      CVPixelBufferLockBaseAddress(a1[5], 1uLL);
      v35 = CVPixelBufferGetBaseAddress(a1[5]);
      v36 = CVPixelBufferGetBaseAddress(v76);
    }

    else
    {
      v36 = 0;
      v35 = 0;
      v56 = 0;
      v60 = 0;
    }

    BytesPerRow = CVPixelBufferGetBytesPerRow(a10);
    v37 = CVPixelBufferGetBytesPerRow(a1[3]);
    v58 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    CVPixelBufferLockBaseAddress(a1[3], 1uLL);
    CVPixelBufferLockBaseAddress(a10, 1uLL);
    pixelBuffer = a10;
    v38 = CVPixelBufferGetBaseAddress(a10);
    v39 = CVPixelBufferGetBaseAddress(a1[3]);
    v40 = CVPixelBufferGetBaseAddress(pixelBufferOut);
    if (v59)
    {
      v42 = 0;
      do
      {
        if (Width)
        {
          v43 = 0;
          v41.f32[0] = v42;
          v41 = vdupq_lane_s32(*v41.f32, 0);
          do
          {
            v44 = vmulq_n_f32(vaddq_f32(v63, vmlaq_f32(vmulq_n_f32(v65, v43), v41, v64)), v38[v43]);
            v45 = vaddq_f32(a5, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v44.f32[0]), a3, *v44.f32, 1), a4, v44, 2));
            v46 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v45.f32[0]), a7, *v45.f32, 1), a8, v45, 2);
            v47 = vdivq_f32(v46, vdupq_laneq_s32(v46, 2)).u64[0];
            v48 = *(&v47 + 1);
            if ((v48 & 0x80000000) == 0)
            {
              v49 = *&v47;
              if ((v49 & 0x80000000) == 0 && v25 > v48 && v24 > v49)
              {
                v40[v43] = v39[v37 * v48 + v49];
                if (a1[4])
                {
                  *&v32[4 * v43] = BaseAddress[v62 * v48 + v49];
                }

                if (a1[5])
                {
                  *&v36[4 * v43] = v35[v60 * v48 + v49];
                }
              }
            }

            ++v43;
          }

          while (Width != v43);
        }

        ++v42;
        v36 += 4 * v56;
        v32 += 4 * v57;
        v40 += v58;
        v38 += BytesPerRow >> 2;
      }

      while (v42 != v59);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(a1[3], 1uLL);
    v50 = a1[4];
    if (v50)
    {
      CVPixelBufferUnlockBaseAddress(v50, 1uLL);
    }

    v51 = a1[5];
    if (v51)
    {
      CVPixelBufferUnlockBaseAddress(v51, 1uLL);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v52 = a1[8];
    if (v52)
    {
      CVPixelBufferRelease(v52);
    }

    a1[8] = pixelBufferOut;
    if (a1[4])
    {
      CVPixelBufferUnlockBaseAddress(v77, 0);
      v53 = a1[9];
      if (v53)
      {
        CVPixelBufferRelease(v53);
      }

      a1[9] = v77;
    }

    if (a1[5])
    {
      CVPixelBufferUnlockBaseAddress(v76, 0);
      v54 = a1[10];
      if (v54)
      {
        CVPixelBufferRelease(v54);
      }

      a1[10] = v76;
    }

    return v75;
  }

  return result;
}

- (void)setNormalsBuffer:(__CVBuffer *)a3
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != a3)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setSemanticsSampledForDepth:(__CVBuffer *)a3
{
  semanticsSampledForDepth = self->_semanticsSampledForDepth;
  if (semanticsSampledForDepth != a3)
  {
    CVPixelBufferRelease(semanticsSampledForDepth);
    self->_semanticsSampledForDepth = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setConfidenceSampledForDepth:(__CVBuffer *)a3
{
  confidenceSampledForDepth = self->_confidenceSampledForDepth;
  if (confidenceSampledForDepth != a3)
  {
    CVPixelBufferRelease(confidenceSampledForDepth);
    self->_confidenceSampledForDepth = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setUncertaintySampledForDepth:(__CVBuffer *)a3
{
  uncertaintySampledForDepth = self->_uncertaintySampledForDepth;
  if (uncertaintySampledForDepth != a3)
  {
    CVPixelBufferRelease(uncertaintySampledForDepth);
    self->_uncertaintySampledForDepth = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setMaskedSemanticsSampledForDepth:(__CVBuffer *)a3
{
  maskedSemanticsSampledForDepth = self->_maskedSemanticsSampledForDepth;
  if (maskedSemanticsSampledForDepth != a3)
  {
    CVPixelBufferRelease(maskedSemanticsSampledForDepth);
    self->_maskedSemanticsSampledForDepth = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_segmentationBuffer);
  CVPixelBufferRelease(self->_confidenceBuffer);
  CVPixelBufferRelease(self->_uncertaintyBuffer);
  CVPixelBufferRelease(self->_normalsBuffer);
  CVPixelBufferRelease(self->_semanticsSampledForDepth);
  CVPixelBufferRelease(self->_confidenceSampledForDepth);
  CVPixelBufferRelease(self->_uncertaintySampledForDepth);
  CVPixelBufferRelease(self->_maskedSemanticsSampledForDepth);
  v3.receiver = self;
  v3.super_class = ARSegmentationData;
  [(ARSegmentationData *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(ARSegmentationData *)self timestamp];
  v7 = [v3 stringWithFormat:@"%@(%p): %f", v5, self, v6];

  return v7;
}

- (NSDictionary)tracingEntry
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v4 = [v3 mutableCopy];

  v11[0] = @"width";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{CVPixelBufferGetWidth(-[ARSegmentationData segmentationBuffer](self, "segmentationBuffer"))}];
  v11[1] = @"height";
  v12[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{CVPixelBufferGetHeight(-[ARSegmentationData segmentationBuffer](self, "segmentationBuffer"))}];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 setObject:v7 forKeyedSubscript:@"imageResolution"];

  PixelFormatType = CVPixelBufferGetPixelFormatType([(ARSegmentationData *)self segmentationBuffer]);
  v9 = AROSTypeToString(PixelFormatType);
  [v4 setObject:v9 forKeyedSubscript:@"pixelBufferFormat"];

  return v4;
}

@end