@interface VNInstanceMaskObservation
- (BOOL)isEqual:(id)a3;
- (CVPixelBufferRef)generateMaskForInstances:(NSIndexSet *)instances error:(NSError *)error;
- (CVPixelBufferRef)generateMaskedImageOfInstances:(void *)a3 imageBuffer:(int)a4 inPlace:(int)a5 croppedToInstancesExtent:(double *)a6 returnCropRect:(void *)a7 error:;
- (CVPixelBufferRef)generateScaledMaskForImageForInstances:(NSIndexSet *)instances fromRequestHandler:(VNImageRequestHandler *)requestHandler error:(NSError *)error;
- (NSIndexSet)allInstances;
- (VNInstanceMaskObservation)initWithCoder:(id)a3;
- (VNInstanceMaskObservation)initWithOriginatingRequestSpecifier:(id)a3 instanceLowResMaskArray:(id)a4 instanceFeatureKeyIndexMap:(id)a5 instanceCategoryKeyIndexMap:(id)a6 instanceMask:(__CVBuffer *)a7 numComponents:(unint64_t)a8 regionOfInterest:(CGRect)a9;
- (VNInstanceMaskObservation)initWithOriginatingRequestSpecifier:(id)a3 instanceLowResMaskArray:(id)a4 instanceMask:(__CVBuffer *)a5 numComponents:(unint64_t)a6 regionOfInterest:(CGRect)a7;
- (VNInstanceMaskObservation)initWithOriginatingRequestSpecifier:(id)a3 lowResMask:(__CVBuffer *)a4 instanceMask:(__CVBuffer *)a5 numComponents:(unint64_t)a6 regionOfInterest:(CGRect)a7;
- (__CVBuffer)generateMaskedImageOfInstances:(id)a3 fromRequestHandler:(id)a4 inPlace:(BOOL)a5 croppedToInstancesExtent:(BOOL)a6 returnCropRect:(CGRect *)a7 error:(id *)a8;
- (__CVBuffer)generateScaledMaskForImageForInstances:(id)a3 imageBuffer:(id)a4 croppedToInstancesExtent:(BOOL)a5 error:(id *)a6;
- (id)_maskProductionResourcesAndReturnError:(void *)a1;
- (id)description;
- (id)instanceAtPoint:(CGPoint)a3 error:(id *)a4;
- (id)instancesForCategory:(id)a3 error:(id *)a4;
- (id)instancesForFeature:(id)a3 error:(id *)a4;
- (id)vn_cloneObject;
- (id)vn_deepCloneObjectWithError:(id *)a3;
- (uint64_t)_cropInOutPixelBuffer:(void *)a3 normalizedBoundingBox:(double *)a4 maskProductionResources:(void *)a5 returnCropRect:(double)a6 error:(double)a7;
- (uint64_t)_upsampleLowResMask:(uint64_t)a3 reference:(void *)a4 maskProductionResources:(uint64_t)a5 error:;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNInstanceMaskObservation

- (id)instancesForCategory:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (self->_numComponents != 1)
  {
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_instanceCategoriesMap objectAtIndexedSubscript:v7];
      v9 = [v8 containsObject:v5];

      ++v7;
      if (v9)
      {
        [v6 addIndex:v7];
      }
    }

    while (self->_numComponents - 1 > v7);
  }

  return v6;
}

- (id)instancesForFeature:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (self->_numComponents != 1)
  {
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_instanceSegmentationMaskFeatureMap objectAtIndexedSubscript:v7];
      v9 = [v8 isEqualToString:v5];

      ++v7;
      if (v9)
      {
        [v6 addIndex:v7];
      }
    }

    while (self->_numComponents - 1 > v7);
  }

  return v6;
}

- (id)instanceAtPoint:(CGPoint)a3 error:(id *)a4
{
  y = a3.y;
  x = a3.x;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 1.0;
  v28.size.height = 1.0;
  v27.x = x;
  v27.y = y;
  if (!CGRectContainsPoint(v28, v27))
  {
    if (a4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@" pointOfInterest value is out of bounds: %f, %f", *&x, *&y];
      *a4 = [VNError errorWithCode:4 message:v24];
    }

    v23 = 0;
    goto LABEL_21;
  }

  v8 = [(VNInstanceMaskObservation *)self instanceMask];
  CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  VisionCoreImagePointForNormalizedPoint();
  if (self->_numComponents == 1)
  {
LABEL_16:
    v21 = objc_alloc(MEMORY[0x1E696AC90]);
    v22 = 0;
    goto LABEL_17;
  }

  v12 = 0;
  v13 = v10;
  v14 = (Height - v11);
  while (1)
  {
    v15 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask _alphaMaskAtIndex:v12];
    if (((v13 | v14) & 0x80000000) != 0)
    {
      goto LABEL_15;
    }

    v16 = v15;
    if (CVPixelBufferGetWidth(v15) <= v13 || CVPixelBufferGetHeight(v16) <= v14)
    {
      goto LABEL_15;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(v16);
    CVPixelBufferLockBaseAddress(v16, 1uLL);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v16);
    if (PixelFormatType == 1278226534)
    {
      break;
    }

    if (PixelFormatType == 1278226488)
    {
      v19 = *(CVPixelBufferGetBaseAddress(v16) + BytesPerRow * v14 + v13);
      CVPixelBufferUnlockBaseAddress(v16, 0);
      if (v19)
      {
        goto LABEL_24;
      }
    }

    else if (a4)
    {
      *a4 = [VNError errorForInvalidOptionWithLocalizedDescription:@"Unsupported output format specified. Please use kCVPixelFormatType_OneComponent32Float or kCVPixelFormatType_OneComponent8"];
    }

LABEL_15:
    if (self->_numComponents - 1 <= ++v12)
    {
      goto LABEL_16;
    }
  }

  v20 = *(CVPixelBufferGetBaseAddress(v16) + ((BytesPerRow >> 2) * v14) + v13);
  CVPixelBufferUnlockBaseAddress(v16, 0);
  if (v20 == 0.0)
  {
    goto LABEL_15;
  }

LABEL_24:
  v21 = objc_alloc(MEMORY[0x1E696AC90]);
  v22 = (v12 + 1);
LABEL_17:
  v23 = [v21 initWithIndex:v22];
LABEL_21:

  return v23;
}

- (__CVBuffer)generateMaskedImageOfInstances:(id)a3 fromRequestHandler:(id)a4 inPlace:(BOOL)a5 croppedToInstancesExtent:(BOOL)a6 returnCropRect:(CGRect *)a7 error:(id *)a8
{
  v10 = a6;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 imageBuffer];
    v18 = [(VNInstanceMaskObservation *)self generateMaskedImageOfInstances:v14 imageBuffer:v17 inPlace:v11 croppedToInstancesExtent:v10 returnCropRect:&a7->origin.x error:a8];
  }

  else if (a8)
  {
    [VNError errorForInvalidArgument:0 named:@"requestHandler"];
    *a8 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (CVPixelBufferRef)generateMaskedImageOfInstances:(void *)a3 imageBuffer:(int)a4 inPlace:(int)a5 croppedToInstancesExtent:(double *)a6 returnCropRect:(void *)a7 error:
{
  v13 = a2;
  v14 = a3;
  v15 = v14;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (v13)
  {
    if (v14)
    {
      v16 = [(VNInstanceMaskObservation *)a1 _maskProductionResourcesAndReturnError:a7];
      v17 = v16;
      if (!v16)
      {
        v22 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v44 = v16;
      v42 = *(a1 + 136);
      v43 = *(a1 + 120);
      v18 = [v15 width];
      v19 = [v15 height];
      v41 = a5;
      if (a4)
      {
        v80.origin.x = 0.0;
        v80.origin.y = 0.0;
        v80.size.width = 1.0;
        v80.size.height = 1.0;
        v20 = !CGRectEqualToRect(*(a1 + 120), v80);
      }

      else
      {
        v20 = 0;
      }

      v23.i64[0] = v18;
      v23.i64[1] = v19;
      v24 = vcvtq_f64_u64(v23);
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v78 = 0;
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v74 = 0;
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __126__VNInstanceMaskObservation_generateMaskedImageOfInstances_imageBuffer_inPlace_croppedToInstancesExtent_returnCropRect_error___block_invoke;
      aBlock[3] = &unk_1E77B2908;
      v57 = a4;
      v50 = &v75;
      v55 = vmulq_f64(v43, v24);
      v56 = vmulq_f64(v42, v24);
      v51 = &v71;
      v46 = v15;
      v47 = a1;
      v58 = v20;
      v48 = v13;
      v52 = &v67;
      v17 = v44;
      v25 = v44;
      v49 = v25;
      v53 = &v63;
      v54 = &v59;
      v26 = _Block_copy(aBlock);
      if ((VNExecuteBlock(v26, a7) & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v41)
      {
        v79.origin.x = calculateCropSizeOfPixelBuffer(v72[3], a7);
        x = v79.origin.x;
        y = v79.origin.y;
        width = v79.size.width;
        height = v79.size.height;
        if (CGRectIsNull(v79))
        {
          goto LABEL_29;
        }

        v31 = CVPixelBufferGetWidth(v72[3]);
        v32 = CVPixelBufferGetHeight(v72[3]);
        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        if (v31)
        {
          v34 = x / v31;
          v35 = width / v31;
        }

        if (v32)
        {
          v33 = y / v32;
          v36 = height / v32;
        }

        else
        {
          v36 = 0.0;
        }
      }

      else
      {
        v35 = 1.0;
        v34 = 0.0;
        v33 = 0.0;
        v36 = 1.0;
      }

      if (*(v60 + 24) == 1)
      {
        v37 = [v25 completionSemaphore];
        dispatch_semaphore_wait(v37, 0xFFFFFFFFFFFFFFFFLL);
      }

      if (!v41 || (a4 & 1) != 0 || [(VNInstanceMaskObservation *)a1 _cropInOutPixelBuffer:v25 normalizedBoundingBox:a6 maskProductionResources:a7 returnCropRect:v34 error:v33, v35, v36])
      {
        v38 = 1;
LABEL_30:
        if (*(v60 + 24) == 1)
        {
          v39 = [v25 completionSemaphore];
          dispatch_semaphore_wait(v39, 0);
        }

        CVPixelBufferRelease(v68[3]);
        v68[3] = 0;
        CVPixelBufferRelease(v72[3]);
        v72[3] = 0;
        CVPixelBufferRelease(v76[3]);
        v76[3] = 0;
        if (v38)
        {
          v22 = v64[3];
        }

        else
        {
          v22 = 0;
        }

        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);
        _Block_object_dispose(&v67, 8);
        _Block_object_dispose(&v71, 8);
        _Block_object_dispose(&v75, 8);
        goto LABEL_36;
      }

LABEL_29:
      v38 = 0;
      goto LABEL_30;
    }

    if (a7)
    {
      v21 = [VNError errorForInvalidArgument:0 named:@"imageBuffer"];
      goto LABEL_11;
    }

LABEL_12:
    v22 = 0;
    goto LABEL_37;
  }

  if (!a7)
  {
    goto LABEL_12;
  }

  v21 = [VNError errorForInvalidArgument:0 named:@"instances"];
LABEL_11:
  v22 = 0;
  *a7 = v21;
LABEL_37:

  return v22;
}

- (id)_maskProductionResourcesAndReturnError:(void *)a1
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[19];
    if (v4)
    {
      goto LABEL_21;
    }

    v5 = objc_alloc_init(objc_opt_self());
    v6 = +[VNProcessingDevice defaultMetalDevice];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 metalDevice];
    }

    else
    {
      v8 = 0;
    }

    v9 = [VNMetalContext metalContextForDevice:v8 error:a2];
    v10 = v5[2];
    v5[2] = v9;

    v11 = v5[2];
    if (v11)
    {
      v12 = [(VNMetalContext *)v11 computePipelineStateForFunctionWithName:a2 error:?];
      v13 = v5[4];
      v5[4] = v12;

      if (v5[4])
      {
        v14 = [(VNMetalContext *)v5[2] computePipelineStateForFunctionWithName:a2 error:?];
        v15 = v5[5];
        v5[5] = v14;

        if (v5[5])
        {
          v16 = dispatch_semaphore_create(0);
          v17 = v5[1];
          v5[1] = v16;

          if (v5[1])
          {
            v18 = [VNBGRBilinearUpsampler alloc];
            v19 = v5[2];
            if (v19)
            {
              v19 = v19[1];
            }

            v20 = v19;
            v21 = [(VNBGRBilinearUpsampler *)v18 initWithMetalDevice:v20];
            v22 = v5[3];
            v5[3] = v21;

            if (v5[3])
            {
              v23 = v5;
              goto LABEL_20;
            }

            if (a2)
            {
              v24 = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create bilinear upsampler"];
              goto LABEL_18;
            }
          }

          else if (a2)
          {
            v24 = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create execution completion semaphore"];
LABEL_18:
            v23 = 0;
            *a2 = v24;
            goto LABEL_20;
          }
        }
      }
    }

    v23 = 0;
LABEL_20:

    v25 = v3[19];
    v3[19] = v23;

    v4 = v3[19];
    if (!v4)
    {
      v26 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v26 = v4;
LABEL_22:
    objc_sync_exit(v3);

    goto LABEL_23;
  }

  v26 = 0;
LABEL_23:

  return v26;
}

uint64_t __126__VNInstanceMaskObservation_generateMaskedImageOfInstances_imageBuffer_inPlace_croppedToInstancesExtent_returnCropRect_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 136);
  v5 = *(a1 + 32);
  if (v4 != 1)
  {
    *(*(*(a1 + 64) + 8) + 24) = [v5 croppedBufferWithWidth:*(a1 + 120) height:*(a1 + 128) format:1111970369 cropRect:0 options:a2 error:{*(a1 + 104), *(a1 + 112)}];
    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      if (a2)
      {
        v18 = [VNError errorForMemoryAllocationFailureWithLocalizedDescription:@"Could not create target buffer"];
        v19 = v18;
        result = 0;
        *a2 = v18;
        return result;
      }

      return 0;
    }

LABEL_9:
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) generateMaskForInstances:*(a1 + 48) error:a2];
    if (!*(*(*(a1 + 72) + 8) + 24))
    {
      return 0;
    }

    if (*(a1 + 137) == 1)
    {
      v9 = *(a1 + 40);
      v11 = v9[15];
      v10 = v9[16];
      v13 = v9[17];
      v12 = v9[18];
      v14 = [*(a1 + 32) width];
      v15 = [*(a1 + 32) height];
      v16 = [*(a1 + 32) croppedBufferWithWidth:(v13 * v14) height:(v12 * v15) format:1111970369 cropRect:0 options:a2 error:{v11 * v14, v10 * v15}];
      if (!v16)
      {
        v17 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v16 = CVPixelBufferRetain(*(*(*(a1 + 64) + 8) + 24));
    }

    *(*(*(a1 + 80) + 8) + 24) = [(VNInstanceMaskObservation *)*(a1 + 40) _upsampleLowResMask:v16 reference:*(a1 + 56) maskProductionResources:a2 error:?];
    v17 = *(*(*(a1 + 80) + 8) + 24) != 0;
LABEL_17:
    CVPixelBufferRelease(v16);
    if (v17)
    {
      if (*(a1 + 136) == 1)
      {
        *(*(*(a1 + 88) + 8) + 24) = CVPixelBufferRetain(*(*(*(a1 + 64) + 8) + 24));
        goto LABEL_23;
      }

      Width = CVPixelBufferGetWidth(*(*(*(a1 + 64) + 8) + 24));
      Height = CVPixelBufferGetHeight(*(*(*(a1 + 64) + 8) + 24));
      PixelFormatType = CVPixelBufferGetPixelFormatType(*(*(*(a1 + 64) + 8) + 24));
      *(*(*(a1 + 88) + 8) + 24) = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:Height height:PixelFormatType pixelFormatType:a2 error:?];
      if (*(*(*(a1 + 88) + 8) + 24))
      {
        v23 = *MEMORY[0x1E6965CE8];
        if (CVBufferHasAttachment(*(*(*(a1 + 64) + 8) + 24), *MEMORY[0x1E6965CE8]))
        {
          attachmentMode[0] = kCVAttachmentMode_ShouldNotPropagate;
          v24 = CVBufferCopyAttachment(*(*(*(a1 + 64) + 8) + 24), v23, attachmentMode);
          CVBufferSetAttachment(*(*(*(a1 + 88) + 8) + 24), v23, v24, attachmentMode[0]);
          CFRelease(v24);
        }

LABEL_23:
        if (*(a1 + 137) == 1)
        {
          [*(a1 + 32) width];
          [*(a1 + 32) height];
          VisionCoreImagePointForNormalizedPoint();
          v26.f64[1] = v25;
          *&v26.f64[0] = vmovn_s64(vcvtq_s64_f64(v26));
          HIWORD(v39) = WORD2(v26.f64[0]);
          LOWORD(v39) = LOWORD(v26.f64[0]);
          v27 = v39;
        }

        else
        {
          v27 = 0;
        }

        v28 = *(a1 + 40);
        v29 = *(*(*(a1 + 64) + 8) + 24);
        v30 = *(*(*(a1 + 88) + 8) + 24);
        v31 = *(*(*(a1 + 80) + 8) + 24);
        v32 = *(a1 + 56);
        v33 = v32;
        if (v28)
        {
          v34 = [v32 metalContext];
          *attachmentMode = MEMORY[0x1E69E9820];
          v41 = 3221225472;
          v42 = __123__VNInstanceMaskObservation__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_maskProductionResources_error___block_invoke;
          v43 = &unk_1E77B3C78;
          v44 = v34;
          v46 = v29;
          v47 = v30;
          v48 = v31;
          v35 = v33;
          v45 = v35;
          v49 = v27;
          v36 = v34;
          v37 = _Block_copy(attachmentMode);
          v38 = VNExecuteBlock(v37, a2);

          if (v38)
          {
            result = 1;
            *(*(*(a1 + 96) + 8) + 24) = 1;
            return result;
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = CVPixelBufferRetain([v5 originalPixelBuffer]);
  v6 = *(*(*(a1 + 64) + 8) + 24);
  if (v6 && CVPixelBufferGetPixelFormatType(v6) == 1111970369 && CVPixelBufferGetIOSurface(*(*(*(a1 + 64) + 8) + 24)))
  {
    goto LABEL_9;
  }

  if (a2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 136)];
    *a2 = [VNError errorForInvalidOption:v7 named:@"inPlace" localizedDescription:@"Conditions for in-place execution not met"];
  }

  CVPixelBufferRelease(*(*(*(a1 + 64) + 8) + 24));
  result = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  return result;
}

- (uint64_t)_cropInOutPixelBuffer:(void *)a3 normalizedBoundingBox:(double *)a4 maskProductionResources:(void *)a5 returnCropRect:(double)a6 error:(double)a7
{
  v56[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  if (a1)
  {
    v44 = a2;
    v17 = *a2;
    Width = CVPixelBufferGetWidth(*a2);
    Height = CVPixelBufferGetHeight(v17);
    v57.origin.x = a6 * Width;
    v57.size.width = a8 * Width;
    v57.origin.y = (1.0 - a7 - a9) * Height;
    v57.size.height = a9 * Height;
    v58 = CGRectIntegral(v57);
    x = v58.origin.x;
    y = v58.origin.y;
    v22 = v58.size.width;
    v23 = v58.size.height;
    if (a4)
    {
      v24 = CVPixelBufferGetHeight(v17);
      *a4 = x;
      a4[1] = v24 - y - v23;
      a4[2] = v22;
      a4[3] = v23;
    }

    v25 = objc_autoreleasePoolPush();
    v26 = [v16 metalContext];
    v54 = 0;
    v27 = [VNMetalContext bindPixelBufferToMTL2DTexture:v26 pixelFormat:v17 plane:80 error:&v54];
    v28 = v54;
    if (v27)
    {
      v53 = v28;
      v29 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v22 height:v23 pixelFormatType:1111970369 error:&v53];
      v30 = v53;

      if (v29)
      {
        v52 = v30;
        v31 = [VNMetalContext bindPixelBufferToMTL2DTexture:v26 pixelFormat:v29 plane:80 error:&v52];
        v28 = v52;

        if (v31)
        {
          v51 = v28;
          v43 = [(VNMetalContext *)v26 commandQueueReturnError:?];
          v32 = v51;

          v33 = v43 != 0;
          if (v43)
          {
            v40 = v32;
            v42 = [v43 commandBuffer];
            v41 = [v16 cropCopyingComputeState];
            v39 = [v31 width];
            v34 = [v31 height];
            v56[0] = v27;
            v56[1] = v31;
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __118__VNInstanceMaskObservation__cropInOutPixelBuffer_normalizedBoundingBox_maskProductionResources_returnCropRect_error___block_invoke;
            v48[3] = &__block_descriptor_36_e36_v16__0___MTLComputeCommandEncoder__8l;
            v50 = y;
            v49 = x;
            [VNMetalContext encodeCommandsForBuffer:v26 state:v42 label:v41 width:v39 height:v34 textures:v35 buffers:v48 block:?];

            v32 = v40;
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __118__VNInstanceMaskObservation__cropInOutPixelBuffer_normalizedBoundingBox_maskProductionResources_returnCropRect_error___block_invoke_2;
            v46[3] = &unk_1E77B5F28;
            v47 = v16;
            [v42 addCompletedHandler:v46];
            [v42 commit];
            [v42 waitUntilCompleted];
          }

          else
          {
            v55 = 0;
          }

          v28 = v32;
        }

        else
        {
          v33 = 0;
          v55 = 0;
        }
      }

      else
      {
        v33 = 0;
        v55 = 0;
        v28 = v30;
      }
    }

    else
    {
      v29 = 0;
      v33 = 0;
      v55 = 0;
    }

    objc_autoreleasePoolPop(v25);
    CVPixelBufferRelease(v17);
    *v44 = v29;
    if (a5 && v28)
    {
      v36 = v28;
      *a5 = v28;
    }

    if (v33)
    {
      v55 = 1;
    }

    v37 = v55;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void __118__VNInstanceMaskObservation__cropInOutPixelBuffer_normalizedBoundingBox_maskProductionResources_returnCropRect_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) completionSemaphore];
  dispatch_semaphore_signal(v1);
}

- (uint64_t)_upsampleLowResMask:(uint64_t)a3 reference:(void *)a4 maskProductionResources:(uint64_t)a5 error:
{
  v9 = a4;
  if (a1)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = [*(a1 + 96) isSingleMask];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__VNInstanceMaskObservation__upsampleLowResMask_reference_maskProductionResources_error___block_invoke;
    v14[3] = &unk_1E77B28E0;
    v19 = a3;
    v20 = a2;
    v17 = &v23;
    v18 = v21;
    v15 = v9;
    v16 = a1;
    v10 = _Block_copy(v14);
    v11 = VNExecuteBlock(v10, a5);
    v12 = v24[3];
    if ((v11 & 1) == 0)
    {
      CVPixelBufferRelease(v24[3]);
      v12 = 0;
      v24[3] = 0;
    }

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __123__VNInstanceMaskObservation__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_maskProductionResources_error___block_invoke(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = [VNMetalContext bindPixelBufferToMTL2DTexture:*(a1 + 48) pixelFormat:80 plane:a2 error:?];
  if (v4)
  {
    v5 = [VNMetalContext bindPixelBufferToMTL2DTexture:*(a1 + 56) pixelFormat:80 plane:a2 error:?];
    if (v5)
    {
      v6 = [VNMetalContext bindPixelBufferToMTL2DTexture:*(a1 + 64) pixelFormat:55 plane:a2 error:?];
      if (v6)
      {
        v7 = [(VNMetalContext *)*(a1 + 32) commandQueueReturnError:a2];
        v8 = v7;
        v9 = v7 != 0;
        if (v7)
        {
          v10 = [v7 commandBuffer];
          v16 = *(a1 + 32);
          v17 = v10;
          v11 = [*(a1 + 40) applyMaskComputeState];
          v12 = [v6 width];
          v13 = [v6 height];
          v22[0] = v6;
          v22[1] = v4;
          v22[2] = v5;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __123__VNInstanceMaskObservation__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_maskProductionResources_error___block_invoke_2;
          v20[3] = &__block_descriptor_36_e36_v16__0___MTLComputeCommandEncoder__8l;
          v21 = *(a1 + 72);
          [VNMetalContext encodeCommandsForBuffer:v16 state:v17 label:v11 width:v12 height:v13 textures:v14 buffers:v20 block:?];

          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __123__VNInstanceMaskObservation__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_maskProductionResources_error___block_invoke_3;
          v18[3] = &unk_1E77B5F28;
          v19 = *(a1 + 40);
          [v17 addCompletedHandler:v18];
          [v17 commit];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __123__VNInstanceMaskObservation__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_maskProductionResources_error___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) completionSemaphore];
  dispatch_semaphore_signal(v1);
}

uint64_t __89__VNInstanceMaskObservation__upsampleLowResMask_reference_maskProductionResources_error___block_invoke(uint64_t a1, void *a2)
{
  v26[17] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(*(a1 + 64));
  Height = CVPixelBufferGetHeight(*(a1 + 64));
  *(*(*(a1 + 48) + 8) + 24) = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:Height height:1278226534 pixelFormatType:a2 error:?];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    CVPixelBufferLockBaseAddress(*(a1 + 72), 1uLL);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v23 = vdupq_n_s64(1uLL);
      v24 = CVPixelBufferGetHeight(*(a1 + 72));
      v25 = CVPixelBufferGetWidth(*(a1 + 72));
      memset(v20, 0, sizeof(v20));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v20, &v23, v26, 4uLL);
    }

    v22 = *(a1 + 72);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v21 = *(*(*(a1 + 48) + 8) + 24);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v9 = [*(a1 + 32) metalContext];
    v10 = v9;
    if (v9)
    {
      v11 = [(VNMetalContext *)v9 bindPixelBuffersToTextures:v7 error:a2];
      if (v11)
      {
        v12 = [(VNMetalContext *)v10 bindPixelBuffersToTextures:v8 error:a2];
        if (v12)
        {
          v13 = [(VNMetalContext *)v10 bindPixelBufferToMTL2DTexture:a2 error:?];
          if (v13)
          {
            v14 = [(VNMetalContext *)v10 createGuidedFilterForTextures:v11 referenceTexture:v13 error:a2];
            if (v14 && [(VNMetalContext *)v10 upsampleTextures:v11 referenceTexture:v13 constraintsTextures:0 upsampledTextures:v12 filter:v14 waitForCompletion:1 error:a2])
            {

              v6 = 1;
LABEL_20:
              CVPixelBufferUnlockBaseAddress(*(a1 + 72), 1uLL);
              return v6;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      if (a2)
      {
        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = [v15 initWithFormat:@"%@ does not have a metal context", v17];

        *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v18];
      }
    }

    v6 = 0;
    goto LABEL_20;
  }

  return 0;
}

- (__CVBuffer)generateScaledMaskForImageForInstances:(id)a3 imageBuffer:(id)a4 croppedToInstancesExtent:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    v12 = [(VNInstanceMaskObservation *)self _maskProductionResourcesAndReturnError:a6];
    if (v12)
    {
      v33 = 0;
      x = self->_regionOfInterest.origin.x;
      y = self->_regionOfInterest.origin.y;
      width = self->_regionOfInterest.size.width;
      height = self->_regionOfInterest.size.height;
      v17 = [v11 width];
      v18 = [v11 height];
      v19 = [v11 croppedBufferWithWidth:(width * v17) height:(height * v18) format:1111970369 cropRect:0 options:a6 error:{x * v17, y * v18}];
      if (v19)
      {
        v20 = [(VNInstanceMaskObservation *)self generateMaskForInstances:v10 error:a6];
        if (v20)
        {
          v33 = [(VNInstanceMaskObservation *)self _upsampleLowResMask:v20 reference:v19 maskProductionResources:v12 error:a6];
          if (!v7)
          {
            goto LABEL_12;
          }

          v34.origin.x = calculateCropSizeOfPixelBuffer(v20, a6);
          v21 = v34.origin.x;
          v22 = v34.origin.y;
          v23 = v34.size.width;
          v24 = v34.size.height;
          if (CGRectIsNull(v34))
          {
            goto LABEL_18;
          }

          v25 = CVPixelBufferGetWidth(v20);
          v26 = CVPixelBufferGetHeight(v20);
          v27 = 0.0;
          v28 = 0.0;
          v29 = 0.0;
          if (v25)
          {
            v28 = v21 / v25;
            v29 = v23 / v25;
          }

          v30 = 0.0;
          if (v26)
          {
            v27 = v22 / v26;
            v30 = v24 / v26;
          }

          if (![(VNInstanceMaskObservation *)self _cropInOutPixelBuffer:v12 normalizedBoundingBox:0 maskProductionResources:a6 returnCropRect:v28 error:v27, v29, v30])
          {
LABEL_18:
            v31 = 0;
          }

          else
          {
LABEL_12:
            v31 = 1;
          }

          CVPixelBufferRelease(v20);
        }

        else
        {
          v31 = 0;
        }

        CVPixelBufferRelease(v19);
        if (v31)
        {
          v19 = v33;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else if (a6)
  {
    [VNError errorForInvalidArgument:0 named:@"instances"];
    *a6 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (CVPixelBufferRef)generateScaledMaskForImageForInstances:(NSIndexSet *)instances fromRequestHandler:(VNImageRequestHandler *)requestHandler error:(NSError *)error
{
  v8 = instances;
  v9 = requestHandler;
  v10 = v9;
  if (self)
  {
    if (v9)
    {
      v11 = [(VNImageRequestHandler *)v9 imageBuffer];
      self = [(VNInstanceMaskObservation *)self generateScaledMaskForImageForInstances:v8 imageBuffer:v11 croppedToInstancesExtent:0 error:error];
    }

    else if (error)
    {
      [VNError errorForInvalidArgument:0 named:@"requestHandler"];
      *error = self = 0;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (CVPixelBufferRef)generateMaskForInstances:(NSIndexSet *)instances error:(NSError *)error
{
  v70 = instances;
  if (v70)
  {
    v6 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask isSingleMask];
    v7 = v70;
    if (v6)
    {
      pixelBuffer = 0;
      v8 = self;
      v9 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask _alphaMaskAtIndex:0];
      Width = CVPixelBufferGetWidth(v9);
      Height = CVPixelBufferGetHeight(v9);
      PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
      v13 = VNCVPixelBufferCreateUsingIOSurface(Width, Height, PixelFormatType, 0, &pixelBuffer);
      if (!v13)
      {
        CVPixelBufferLockBaseAddress(self->_instanceMask, 1uLL);
        CVPixelBufferLockBaseAddress(v9, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        v25 = [(NSIndexSet *)v7 containsIndex:0];
        std::vector<BOOL>::vector(__p, self->_numComponents);
        if (self->_numComponents >= 2)
        {
          v26 = 1;
          do
          {
            v27 = [(NSIndexSet *)v7 containsIndex:v26];
            v28 = v26 >> 6;
            v29 = 1 << v26;
            if (v25 == v27)
            {
              v30 = *(__p[0] + v28) & ~v29;
            }

            else
            {
              v30 = *(__p[0] + v28) | v29;
            }

            *(__p[0] + v28) = v30;
            ++v26;
          }

          while (v26 < self->_numComponents);
        }

        v31 = v7;
        BaseAddress = CVPixelBufferGetBaseAddress(v8->_instanceMask);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
        v34 = CVPixelBufferGetHeight(v9);
        v35 = CVPixelBufferGetWidth(v9);
        v36 = CVPixelBufferGetBaseAddress(v9);
        v37 = CVPixelBufferGetBaseAddress(pixelBuffer);
        if (v34)
        {
          v38 = 0;
          v39 = __p[0];
          v40 = v37;
          do
          {
            if (v35)
            {
              for (i = 0; i != v35; ++i)
              {
                if ((*&v39[(BaseAddress[i] >> 3) & 0x18] >> BaseAddress[i]))
                {
                  v42 = *&v36[4 * i];
                }

                else
                {
                  v42 = 0;
                }

                *&v40[4 * i] = v42;
              }
            }

            ++v38;
            v40 += BytesPerRow;
            v36 += BytesPerRow;
            BaseAddress += v35;
          }

          while (v38 != v34);
          if (v25)
          {
            for (j = 0; j != v34; ++j)
            {
              if (v35)
              {
                v44 = &v37[j * BytesPerRow];
                v45 = v35;
                do
                {
                  *v44 = 1.0 - *v44;
                  ++v44;
                  --v45;
                }

                while (v45);
              }
            }
          }
        }

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        CVPixelBufferUnlockBaseAddress(v8->_instanceMask, 1uLL);
        CVPixelBufferUnlockBaseAddress(v9, 1uLL);
        v17 = pixelBuffer;
        v7 = v31;
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        goto LABEL_62;
      }

      if (error)
      {
        v14 = CVPixelBufferGetWidth(v9);
        v15 = CVPixelBufferGetHeight(v9);
        v16 = [VNError errorForCVReturnCode:v13 width:v14 height:v15 pixelFormat:CVPixelBufferGetPixelFormatType(v9) localizedDescription:@"failed to create the combined mask for instances buffer"];
LABEL_11:
        v17 = 0;
        *error = v16;
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
      __p[0] = 0;
      v69 = self;
      v18 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask _alphaMaskAtIndex:0];
      v19 = CVPixelBufferGetWidth(v18);
      v20 = CVPixelBufferGetHeight(v18);
      v21 = CVPixelBufferGetPixelFormatType(v18);
      UsingIOSurface = VNCVPixelBufferCreateUsingIOSurface(v19, v20, v21, 0, __p);
      if (!UsingIOSurface)
      {
        CVPixelBufferLockBaseAddress(__p[0], 0);
        v46 = CVPixelBufferGetBytesPerRow(__p[0]);
        v47 = CVPixelBufferGetHeight(__p[0]);
        v48 = CVPixelBufferGetWidth(__p[0]);
        v49 = CVPixelBufferGetBaseAddress(__p[0]);
        bzero(v49, v47 * v46);
        lowResAlphaMask = self->_lowResAlphaMask;
        if (lowResAlphaMask)
        {
          v51 = [(NSArray *)lowResAlphaMask->_instanceLowResMaskArray count];
        }

        else
        {
          v51 = 0;
        }

        v52 = v7;
        v53 = [(NSIndexSet *)v7 containsIndex:0];
        if (v51)
        {
          v54 = 0;
          do
          {
            v55 = v54 + 1;
            if (v53 != [(NSIndexSet *)v52 containsIndex:v54 + 1])
            {
              v56 = [(_VNLowResAlphaMask *)v69->_lowResAlphaMask _alphaMaskAtIndex:v54];
              CVPixelBufferLockBaseAddress(v56, 1uLL);
              v57 = CVPixelBufferGetBaseAddress(v56);
              if (v47)
              {
                for (k = 0; k != v47; ++k)
                {
                  if (v48)
                  {
                    v59 = &v49[k * v46];
                    v60 = &v57[k * v46];
                    v61 = v48;
                    do
                    {
                      v62 = *v60++;
                      v63 = v62 + *v59;
                      if (v63 >= 1.0)
                      {
                        v63 = 1.0;
                      }

                      *v59++ = v63;
                      --v61;
                    }

                    while (v61);
                  }
                }
              }

              CVPixelBufferUnlockBaseAddress(v56, 1uLL);
            }

            v54 = v55;
          }

          while (v55 != v51);
        }

        if (v47)
        {
          v64 = v53;
        }

        else
        {
          v64 = 0;
        }

        if (v64)
        {
          v65 = 0;
          do
          {
            if (v48)
            {
              v66 = &v49[v65 * v46];
              v67 = v48;
              do
              {
                *v66 = 1.0 - *v66;
                ++v66;
                --v67;
              }

              while (v67);
            }

            ++v65;
          }

          while (v65 != v47);
        }

        CVPixelBufferUnlockBaseAddress(__p[0], 0);
        v17 = __p[0];
        v7 = v52;
        goto LABEL_62;
      }

      if (error)
      {
        v23 = CVPixelBufferGetWidth(v18);
        v24 = CVPixelBufferGetHeight(v18);
        v16 = [VNError errorForCVReturnCode:UsingIOSurface width:v23 height:v24 pixelFormat:CVPixelBufferGetPixelFormatType(v18) localizedDescription:@"failed to create the combined mask for instances buffer"];
        goto LABEL_11;
      }
    }

    v17 = 0;
    goto LABEL_62;
  }

  if (error)
  {
    [VNError errorForInvalidArgument:0 named:@"instances"];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_63:

  return v17;
}

- (NSIndexSet)allInstances
{
  numComponents = self->_numComponents;
  if (numComponents > 1)
  {
    [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, numComponents - 1}];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v3 = ;

  return v3;
}

- (id)vn_deepCloneObjectWithError:(id *)a3
{
  v22.receiver = self;
  v22.super_class = VNInstanceMaskObservation;
  v5 = [(VNObservation *)&v22 vn_cloneObject];
  if (v5)
  {
    instanceMask = self->_instanceMask;
    objc_opt_self();
    Width = CVPixelBufferGetWidth(instanceMask);
    Height = CVPixelBufferGetHeight(instanceMask);
    PixelFormatType = CVPixelBufferGetPixelFormatType(instanceMask);
    v10 = CVPixelBufferGetAttributes();
    v11 = CVBufferCopyAttachments(instanceMask, kCVAttachmentMode_ShouldNotPropagate);
    buffer = 0;
    v12 = VNCVPixelBufferCreateUsingIOSurface(Width, Height, PixelFormatType, v10, &buffer);
    if (v12)
    {
      if (a3)
      {
        *a3 = [VNError errorForCVReturnCode:v12 localizedDescription:@"failed to create pixel buffer"];
      }

LABEL_6:
      v13 = 0;
      goto LABEL_12;
    }

    if (v11)
    {
      CVBufferSetAttachments(buffer, v11, kCVAttachmentMode_ShouldNotPropagate);
    }

    CVPixelBufferLockBaseAddress(buffer, 0);
    CVPixelBufferLockBaseAddress(instanceMask, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(instanceMask);
    BaseAddress = CVPixelBufferGetBaseAddress(instanceMask);
    v16 = CVPixelBufferGetBaseAddress(buffer);
    memcpy(BaseAddress, v16, ((Height << 32) * BytesPerRow) >> 32);
    CVPixelBufferUnlockBaseAddress(instanceMask, 0);
    CVPixelBufferUnlockBaseAddress(buffer, 0);
    v17 = buffer;

    if (!v17)
    {
      goto LABEL_6;
    }

    *(v5 + 104) = v17;
    v18 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask copy];
    v19 = *(v5 + 96);
    *(v5 + 96) = v18;

    size = self->_regionOfInterest.size;
    *(v5 + 120) = self->_regionOfInterest.origin;
    *(v5 + 136) = size;
    *(v5 + 112) = self->_numComponents;
  }

  v13 = v5;
LABEL_12:

  return v13;
}

- (id)vn_cloneObject
{
  v8.receiver = self;
  v8.super_class = VNInstanceMaskObservation;
  v3 = [(VNObservation *)&v8 vn_cloneObject];
  if (v3)
  {
    v4 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask copy];
    v5 = *(v3 + 96);
    *(v3 + 96) = v4;

    *(v3 + 104) = CVPixelBufferRetain(self->_instanceMask);
    size = self->_regionOfInterest.size;
    *(v3 + 120) = self->_regionOfInterest.origin;
    *(v3 + 136) = size;
    *(v3 + 112) = self->_numComponents;
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = VNInstanceMaskObservation;
  v4 = [(VNObservation *)&v7 description];
  [v3 appendString:v4];

  v5 = CFCopyDescription(self->_instanceMask);
  [v3 appendFormat:@" %@ %ld", v5, self->_numComponents];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_VNLowResAlphaMask *)self->_lowResAlphaMask isEqual:v5->_lowResAlphaMask]&& [VNCVPixelBufferConversionHelpers isCVPixelBuffer:self->_instanceMask equalToCVPixelBuffer:v5->_instanceMask]&& self->_numComponents == v5->_numComponents && CGRectEqualToRect(self->_regionOfInterest, v5->_regionOfInterest);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = VNInstanceMaskObservation;
  v3 = self->_numComponents ^ __ROR8__(+[VNCVPixelBufferConversionHelpers computeHashForCVPixelBuffer:](VNCVPixelBufferConversionHelpers, "computeHashForCVPixelBuffer:", self->_instanceMask) ^ __ROR8__(+[_VNLowResAlphaMask hash]^ __ROR8__([(VNObservation *)&v11 hash], 51), 51), 51);
  x = self->_regionOfInterest.origin.x;
  if (x == 0.0)
  {
    x = 0.0;
  }

  y = self->_regionOfInterest.origin.y;
  if (y == 0.0)
  {
    y = 0.0;
  }

  v6 = *&y ^ __ROR8__(*&x, 51);
  width = self->_regionOfInterest.size.width;
  if (width == 0.0)
  {
    width = 0.0;
  }

  v8 = *&width ^ __ROR8__(v6, 51);
  height = self->_regionOfInterest.size.height;
  if (height == 0.0)
  {
    height = 0.0;
  }

  return *&height ^ __ROR8__(v8, 51) ^ __ROR8__(v3, 51);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNInstanceMaskObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_lowResAlphaMask forKey:@"lowAlphaResMask"];
  [v4 vn_encodePixelBuffer:self->_instanceMask forKey:@"instanceMask"];
  [v4 encodeInt64:self->_numComponents forKey:@"numComponents"];
  [v4 vn_encodeRect:@"regionOfInterest" forKey:{self->_regionOfInterest.origin.x, self->_regionOfInterest.origin.y, self->_regionOfInterest.size.width, self->_regionOfInterest.size.height}];
}

- (VNInstanceMaskObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VNInstanceMaskObservation;
  v5 = [(VNObservation *)&v19 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    if ([v4 containsValueForKey:@"lowResMask"])
    {
      v7 = [v4 vn_decodePixelBufferForKey:@"lowResMask"];
      v8 = [[_VNLowResAlphaMask alloc] initWithSingleAlphaMask:v7];
      lowResAlphaMask = v5->_lowResAlphaMask;
      v5->_lowResAlphaMask = v8;

      CVPixelBufferRelease(v7);
    }

    else
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lowAlphaResMask"];
      v11 = v5->_lowResAlphaMask;
      v5->_lowResAlphaMask = v10;
    }

    v12 = [v4 vn_decodePixelBufferForKey:@"instanceMask"];
    v5->_instanceMask = v12;
    if (!v12)
    {
      v17 = 0;
      goto LABEL_9;
    }

    v5->_numComponents = [v4 decodeInt64ForKey:@"numComponents"];
    [v4 vn_decodeRectForKey:@"regionOfInterest"];
    v5->_regionOfInterest.origin.x = v13;
    v5->_regionOfInterest.origin.y = v14;
    v5->_regionOfInterest.size.width = v15;
    v5->_regionOfInterest.size.height = v16;
  }

  v17 = v5;
LABEL_9:

  return v17;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_instanceMask);
  self->_instanceMask = 0;
  v3.receiver = self;
  v3.super_class = VNInstanceMaskObservation;
  [(VNInstanceMaskObservation *)&v3 dealloc];
}

- (VNInstanceMaskObservation)initWithOriginatingRequestSpecifier:(id)a3 instanceLowResMaskArray:(id)a4 instanceFeatureKeyIndexMap:(id)a5 instanceCategoryKeyIndexMap:(id)a6 instanceMask:(__CVBuffer *)a7 numComponents:(unint64_t)a8 regionOfInterest:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v28.receiver = self;
  v28.super_class = VNInstanceMaskObservation;
  v23 = [(VNObservation *)&v28 initWithOriginatingRequestSpecifier:v19];
  if (v23)
  {
    if ([v20 count] != a8 - 1)
    {
      v26 = 0;
      goto LABEL_6;
    }

    v24 = [[_VNLowResAlphaMask alloc] initWithAlphaMaskArray:v20];
    lowResAlphaMask = v23->_lowResAlphaMask;
    v23->_lowResAlphaMask = v24;

    v23->_instanceMask = CVPixelBufferRetain(a7);
    v23->_numComponents = a8;
    v23->_regionOfInterest.origin.x = x;
    v23->_regionOfInterest.origin.y = y;
    v23->_regionOfInterest.size.width = width;
    v23->_regionOfInterest.size.height = height;
    objc_storeStrong(&v23->_instanceSegmentationMaskFeatureMap, a5);
    objc_storeStrong(&v23->_instanceCategoriesMap, a6);
  }

  v26 = v23;
LABEL_6:

  return v26;
}

- (VNInstanceMaskObservation)initWithOriginatingRequestSpecifier:(id)a3 instanceLowResMaskArray:(id)a4 instanceMask:(__CVBuffer *)a5 numComponents:(unint64_t)a6 regionOfInterest:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v18 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v19 = [(VNInstanceMaskObservation *)self initWithOriginatingRequestSpecifier:v15 instanceLowResMaskArray:v16 instanceFeatureKeyIndexMap:v17 instanceCategoryKeyIndexMap:v18 instanceMask:a5 numComponents:a6 regionOfInterest:x, y, width, height];

  return v19;
}

- (VNInstanceMaskObservation)initWithOriginatingRequestSpecifier:(id)a3 lowResMask:(__CVBuffer *)a4 instanceMask:(__CVBuffer *)a5 numComponents:(unint64_t)a6 regionOfInterest:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a3;
  v20.receiver = self;
  v20.super_class = VNInstanceMaskObservation;
  v16 = [(VNObservation *)&v20 initWithOriginatingRequestSpecifier:v15];
  if (v16)
  {
    v17 = [[_VNLowResAlphaMask alloc] initWithSingleAlphaMask:a4];
    lowResAlphaMask = v16->_lowResAlphaMask;
    v16->_lowResAlphaMask = v17;

    v16->_instanceMask = CVPixelBufferRetain(a5);
    v16->_numComponents = a6;
    v16->_regionOfInterest.origin.x = x;
    v16->_regionOfInterest.origin.y = y;
    v16->_regionOfInterest.size.width = width;
    v16->_regionOfInterest.size.height = height;
  }

  return v16;
}

@end