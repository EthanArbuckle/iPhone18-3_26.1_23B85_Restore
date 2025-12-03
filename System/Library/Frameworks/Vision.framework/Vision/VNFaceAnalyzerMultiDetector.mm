@interface VNFaceAnalyzerMultiDetector
+ (float)faceBoundingBoxScalingFactorForFaceObservation:(unint64_t)observation;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)_isFaceprintJunk:(shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)junk;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (CGRect)calculateCropRectForInputFace:(id)face imageBuffer:(id)buffer options:(id)options error:(id *)error;
- (id).cxx_construct;
- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
@end

@implementation VNFaceAnalyzerMultiDetector

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  return self;
}

- (vImage_Buffer)prepare_vImageBufferForCVPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  espresso_network_query_blob_dimensions();
  v7 = 0;
  v8 = [objc_opt_class() numberOfImageChannels] * v7;
  v9 = malloc_type_calloc(v8 * v7 + 32, 1uLL, 0x4C34B024uLL);
  if (!v9)
  {
    if (!error)
    {
      return 0;
    }

    +[VNError errorForMemoryAllocationFailure];
    *error = v10 = 0;
    return v10;
  }

  v10 = v9;
  v9->data = &v9[1];
  v9->height = 0;
  v9->width = v7;
  v9->rowBytes = v8;
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  *&v38 = CVPixelBufferGetWidth(buffer);
  *(&v38 + 1) = CVPixelBufferGetBytesPerRow(buffer);
  ptr = self->_mFaceFrontalizerImpl.__ptr_;
  v12 = ImageProcessing_reallocVImageBuffer(ptr + 40, v38, Height, 4);
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_34;
  }

  if (*(ptr + 18) != 6)
  {
    v12 = 1399;
    goto LABEL_35;
  }

  if (!BaseAddress)
  {
    goto LABEL_33;
  }

  v13 = v38;
  if (!v38)
  {
    goto LABEL_33;
  }

  v14 = Height;
  v12 = 4221;
  if (!Height || *(&v38 + 1) < 2uLL)
  {
    goto LABEL_34;
  }

  v15 = *(ptr + 5);
  if (!v15 || (v16 = *(ptr + 7)) == 0 || (v17 = *(ptr + 6)) == 0 || (v18 = *(ptr + 8), v18 < 2))
  {
LABEL_33:
    v12 = 4221;
    goto LABEL_34;
  }

  v35[0] = 0;
  v33 = vrndp_f32(__PAIR64__(v38, Height));
  v35[1] = v33;
  v34[0] = ImageProcessing_rect2DMakefromImage(&BaseAddress);
  v34[1] = v19;
  v34[2] = v20;
  v34[3] = v21;
  Geometry2D_intersectRect2D(v35, v34);
  v12 = 4220;
  if (v33.f32[0] == v17 && v33.f32[1] == v16)
  {
    if (v33.f32[0] - 1 >= v14 - 1)
    {
      v23 = v14 - 1;
    }

    else
    {
      v23 = v33.f32[0] - 1;
    }

    PointerToPoint = ImageProcessing_getPointerToPoint(&BaseAddress, 4, 0.0, 0.0);
    v25 = ImageProcessing_getPointerToPoint(ptr + 5, 4, 0.0, 0.0);
    if (!PointerToPoint || (v26 = v25) == 0)
    {
      syslog(5, "Round ROI: %.2f %.2f %.2f %.2f", 0.0, 0.0, v33.f32[1], v33.f32[0]);
      v12 = 4220;
      goto LABEL_34;
    }

    if (v33.f32[1] - 1 >= v13 - 1)
    {
      v27 = v13 - 1;
    }

    else
    {
      v27 = v33.f32[1] - 1;
    }

    bzero(v15, v18 * v17);
    v28 = 4 * v27;
    v29 = v23 + 1;
    do
    {
      memcpy(v26, PointerToPoint, v28 + 4);
      PointerToPoint += *(&v38 + 1);
      v26 += *(ptr + 8);
      --v29;
    }

    while (v29);
    if (!vImageScale_ARGB8888((ptr + 40), v10, 0, 0x20u))
    {
      v30 = 6;
      v12 = 4224;
      goto LABEL_36;
    }

    v12 = 1402;
LABEL_35:
    v30 = 0;
LABEL_36:
    *(ptr + 19) = v30;
    goto LABEL_37;
  }

LABEL_34:
  if (v12 != 128)
  {
    goto LABEL_35;
  }

LABEL_37:
  free(*(ptr + 5));
  *(ptr + 56) = 0u;
  *(ptr + 40) = 0u;
  if (v12 == 128)
  {
    v31 = 0;
  }

  else
  {
    if (error)
    {
      *error = VNErrorForCVMLStatus(v12);
    }

    v31 = v10;
    v10 = 0;
  }

  free(v31);
  return v10;
}

- (CGRect)calculateCropRectForInputFace:(id)face imageBuffer:(id)buffer options:(id)options error:(id *)error
{
  faceCopy = face;
  bufferCopy = buffer;
  optionsCopy = options;
  width = [bufferCopy width];
  height = [bufferCopy height];
  [faceCopy unalignedBoundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [objc_opt_class() faceBoundingBoxScalingFactorForFaceObservation:{objc_msgSend(faceCopy, "requestRevision")}];
  v35.size.width = v18 * width;
  v35.origin.y = v16 * height;
  v35.size.height = v20 * height;
  v22 = (v21 + -1.0);
  v23 = -(v35.size.width * v22) * 0.5;
  v24 = -(v35.size.height * v22) * 0.5;
  v35.origin.x = v14 * width;
  v36 = CGRectInset(v35, v23, v24);
  v37 = CGRectIntegral(v36);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  espresso_network_query_blob_dimensions();
  v29 = fmaxf(0, 0);
  if (fmax(width, height) < v29)
  {
    [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNDetectorInternalProcessOption_RecordImageTooSmallWarning"];
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:vcvtas_u32_f32(v29)];
    [optionsCopy setObject:v30 forKeyedSubscript:@"VNDetectorInternalProcessOption_DesiredMinimumFacePrintingLongDimension"];
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)_isFaceprintJunk:(shared_ptr<vision::mod::ImageDescriptorBufferAbstract>)junk
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *junk.var0;
  memcpy(__dst, &unk_1A603AC48, sizeof(__dst));
  if (*(v3 + 72) != 1 || (*(*v3 + 104))(v3) != 512)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 5244;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  __C = 0.0;
  vDSP_dotpr(*(v3 + 56), 1, __dst, 1, &__C, 0x80uLL);
  return (__C + 1.2744) < 0.2;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = VNFaceAnalyzerMultiDetector;
  if ([(VNFaceAnalyzerMultiDetectorBase *)&v8 completeInitializationForSession:sessionCopy error:error])
  {
    operator new();
  }

  return 0;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (objc_opt_class() == self)
  {
    v13 = @"VNComputeStageMain";
    v8 = +[VNComputeDeviceUtilities mostPerformantComputeDevice];
    v12 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v14[0] = v9;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___VNFaceAnalyzerMultiDetector;
    v7 = objc_msgSendSuper2(&v11, sel_supportedComputeStageDevicesForOptions_error_, optionsCopy, error);
  }

  return v7;
}

+ (float)faceBoundingBoxScalingFactorForFaceObservation:(unint64_t)observation
{
  result = 1.765;
  v4 = 1.0;
  if (observation - 1 < 3)
  {
    v4 = 1.765;
  }

  if (observation - 3737841664u > 6 || ((1 << observation) & 0x75) == 0)
  {
    return v4;
  }

  return result;
}

@end