@interface VideoRelightingMetal
- (CGRect)primaryCaptureRect;
- (VideoRelightingMetal)initWithMetalContext:(void *)a3;
- (id).cxx_construct;
- (id)create3DTextureWithSize:(unint64_t)a3;
- (id)getInternalColorCube:(int)a3;
- (id)loadCube:(id)a3;
- (void)configureRenderPipeline;
- (void)createTexturesWith:(unint64_t)a3 imgHeight:(unint64_t)a4;
- (void)encodeAlphaBlendRGBATextureArrayToCommandBuffer:(id)a3 inTexFirst:(id)a4 inTexSecond:(id)a5 outTex:(id)a6 alpha:(const float *)a7;
- (void)encodeCountKernelToCommandBuffer:(id)a3;
- (void)encodeLerpNearFarMapsToCommandBuffer:(id)a3;
- (void)encodeRelightKernelToCommandBuffer:(id)a3 isAfterPreviewStitcher:(BOOL)a4 applyRotation:(BOOL)a5;
- (void)encodeSlideKernelToCommandBuffer:(id)a3;
- (void)encodeTCKernelToCommandBuffer:(id)a3;
- (void)encodeVertCountKernelToCommandBuffer:(id)a3;
- (void)generateModelNormals;
- (void)initCommon;
- (void)initKernelFunctions;
- (void)loadRGBTransformMapsForEffectVersion:(BOOL)a3;
- (void)loadRGBTransformMapsOnceTo:(id *)a3 namePrefix:(const void *)a4 forIntermediateResults:(BOOL)a5;
- (void)renderWithSrcImage:(__CVBuffer *)a3 srcAlpha:(__CVBuffer *)a4 trustAlpha:(BOOL)a5 isAfterPreviewStitcher:(BOOL)a6 applyRotation:(BOOL)a7 yuvSourceDownsampled:(id)a8 skinSegmentation:(__CVBuffer *)a9 dstImage:(__CVBuffer *)a10 faceKitProcessOutput:(id)a11 portraitStyleStrength:(float)a12 colorSim:(id)a13 disparity:(id)a14 focusDistance:(float)a15 singleCubeData:(id)a16 properties:(id)a17 callbackQueue:(id)a18 callback:(id)a19;
- (void)saveTexture:(id)a3 toImage:(id)a4;
- (void)setModelVertices;
- (void)updateFaceKitStreamedDataFromProcessOutput:(id)a3;
- (void)updateMatrixWithWidth:(int)a3 height:(int)a4 camera:(const void *)a5 pose:(const void *)a6;
- (void)updateUniforms:(BOOL)a3;
@end

@implementation VideoRelightingMetal

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 40) = 0u;
  *(self + 41) = 0u;
  *(self + 42) = 0u;
  *(self + 43) = 0u;
  *(self + 44) = 0u;
  *(self + 45) = 0u;
  *(self + 46) = 0u;
  *(self + 47) = 0u;
  *(self + 48) = 0u;
  *(self + 49) = 0u;
  *(self + 50) = 0u;
  *(self + 51) = 0u;
  *(self + 118) = 0;
  *(self + 119) = 0;
  *(self + 117) = 0;
  *(self + 968) = 0u;
  *(self + 984) = 0u;
  *(self + 1000) = 0u;
  *(self + 1012) = 0u;
  *(self + 65) = 0u;
  *(self + 66) = 0u;
  *(self + 134) = 0;
  *(self + 1080) = 0;
  *(self + 1152) = 0;
  *(self + 153) = 0;
  *(self + 154) = 0;
  *(self + 152) = 0;
  *(self + 1296) = 0;
  *(self + 1312) = 0;
  return self;
}

- (CGRect)primaryCaptureRect
{
  objc_copyStruct(v6, &self->_primaryCaptureRect, 32, 1, 0);
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

- (void)renderWithSrcImage:(__CVBuffer *)a3 srcAlpha:(__CVBuffer *)a4 trustAlpha:(BOOL)a5 isAfterPreviewStitcher:(BOOL)a6 applyRotation:(BOOL)a7 yuvSourceDownsampled:(id)a8 skinSegmentation:(__CVBuffer *)a9 dstImage:(__CVBuffer *)a10 faceKitProcessOutput:(id)a11 portraitStyleStrength:(float)a12 colorSim:(id)a13 disparity:(id)a14 focusDistance:(float)a15 singleCubeData:(id)a16 properties:(id)a17 callbackQueue:(id)a18 callback:(id)a19
{
  v110 = a6;
  v111 = a7;
  v131[2] = *MEMORY[0x1E69E9840];
  v129 = self;
  v113 = a8;
  v115 = a11;
  v105 = a13;
  v106 = a14;
  v114 = a16;
  v107 = a17;
  v108 = a18;
  v109 = a19;
  if ((atomic_load_explicit(&qword_1ECDE1500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1500))
  {
    v93 = +[CVAPreferenceManager defaults];
    v94 = [v93 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE14F8 = v94;
    __cxa_guard_release(&qword_1ECDE1500);
  }

  if (a9)
  {
    v22 = a12;
  }

  else
  {
    v22 = NAN;
  }

  v23 = v129;
  v129->_portraitStyleStrength = v22;
  v24 = fminf(v22, 1.0);
  if (v22 < 0.0)
  {
    v24 = 0.0;
  }

  v23->_portraitStyleStrength = v24;
  if ((atomic_load_explicit(&qword_1ECDE1510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1510))
  {
    qword_1ECDE1508 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
    __cxa_guard_release(&qword_1ECDE1510);
  }

  if ((byte_1ECDE1518 & 1) == 0)
  {
    HIBYTE(__p[2]) = 12;
    strcpy(__p, "lightMapType");
    sub_1DED2C8A0(&qword_1ECDE1508, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    byte_1ECDE1518 = 1;
  }

  if ([qword_1ECDE1508 intValue])
  {
    if ([qword_1ECDE1508 intValue] != 1)
    {
      goto LABEL_19;
    }

    p_portraitStyleStrength = &v129->_portraitStyleStrength;
    v26 = (v129->_portraitStyleStrength * 1.8) + ((v129->_portraitStyleStrength * -0.8) * v129->_portraitStyleStrength);
  }

  else
  {
    p_portraitStyleStrength = &v129->_portraitStyleStrength;
    v26 = powf(v129->_portraitStyleStrength, 0.75);
  }

  v27 = fminf(v26, 1.0);
  v28 = v26 < 0.0;
  v29 = 0.0;
  if (!v28)
  {
    v29 = v27;
  }

  *p_portraitStyleStrength = v29;
LABEL_19:
  if ((atomic_load_explicit(&qword_1ECDE1520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1520))
  {
    v95 = +[CVAPreferenceManager defaults];
    [v95 floatForKey:@"CVAPhotoStyleStrengthMultiplier"];
    v97 = v96;

    dword_1ECDE151C = v97;
    __cxa_guard_release(&qword_1ECDE1520);
  }

  v30 = v129;
  if (*&dword_1ECDE151C != 0.0)
  {
    v129->_portraitStyleStrength = *&dword_1ECDE151C * v129->_portraitStyleStrength;
  }

  v30->_focusDistance = a15;
  if (byte_1ECDE14F8 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"portraitStyleStrength (API) = %f", a12];

    LODWORD(v31) = dword_1ECDE151C;
    if (*&dword_1ECDE151C != 0.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"portraitStyleStrength (rescaled) = %f", v30->_portraitStyleStrength];
    }

    v32 = "non-nil";
    if (!a9)
    {
      v32 = "nil";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"skinSegmentation is %s", v31, v32];
  }

  if ((atomic_load_explicit(&qword_1ECDE1530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1530))
  {
    v98 = +[CVAPreferenceManager defaults];
    v99 = [v98 BOOLForKey:@"CVAPhotoLogValidation"];

    byte_1ECDE1528 = v99;
    __cxa_guard_release(&qword_1ECDE1530);
  }

  if (byte_1ECDE1528 == 1)
  {
    if ((atomic_load_explicit(&qword_1ECDE1540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1540))
    {
      v100 = +[CVAPreferenceManager defaults];
      v101 = [v100 BOOLForKey:@"CVAPhotoLogValidationPassed"];

      byte_1ECDE1538 = v101;
      __cxa_guard_release(&qword_1ECDE1540);
    }

    if (a9)
    {
      if (byte_1ECDE1538 == 1)
      {
        NSLog(&cfstr_SSkinsegmentat_0.isa, "> > > CVAPhoto validation PASSED:");
      }
    }

    else
    {
      NSLog(&cfstr_SSkinsegmentat.isa, "> > > CVAPhoto validation FAILED:");
    }

    if (v115)
    {
      if (byte_1ECDE1538 == 1)
      {
        NSLog(&cfstr_SFacekitproces_0.isa, "> > > CVAPhoto validation PASSED:");
      }
    }

    else
    {
      NSLog(&cfstr_SFacekitproces.isa, "> > > CVAPhoto validation FAILED:");
    }
  }

  v33 = v129;
  objc_storeStrong(&v129->_properties, a17);
  ++v33->_frameIndex;
  [(VideoRelightingMetal *)v33 updateFaceKitStreamedDataFromProcessOutput:v115];
  if (v33->_colorCubeUserData != v114)
  {
    objc_storeStrong(&v33->_colorCubeUserData, a16);
    colorCubeUserData = v33->_colorCubeUserData;
    if (colorCubeUserData)
    {
      v35 = sub_1DED6FF78(colorCubeUserData, v33->_device);
      v36 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v35];
      texColorCubeUserData = v33->_texColorCubeUserData;
      v33->_texColorCubeUserData = v36;
    }
  }

  CVPixelBufferRetain(a3);
  CVPixelBufferRetain(a4);
  CVPixelBufferRetain(a10);
  CVPixelBufferRetain(a9);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  sub_1DED6FBF4(__p, a3, a4, v33->_device);
  srcTexture = v33->_srcTexture;
  v33->_srcTexture = __p[0];

  alphaTexture = v33->_alphaTexture;
  v33->_alphaTexture = __p[1];

  v33->_trustAlpha = a5;
  if (a9)
  {
    v41 = sub_1DED6FB5C(a9, v33->_device);
    texSkinSegmentationAlias = v33->_texSkinSegmentationAlias;
    v33->_texSkinSegmentationAlias = v41;
  }

  if ((atomic_load_explicit(&qword_1ECDE1550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1550))
  {
    qword_1ECDE1548 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1550);
  }

  if ((byte_1ECDE1558 & 1) == 0)
  {
    HIBYTE(__p[2]) = 15;
    strcpy(__p, "forceTrustAlpha");
    sub_1DED2C8A0(&qword_1ECDE1548, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    byte_1ECDE1558 = 1;
  }

  if (sub_1DED2E054("forceTrustAlpha") && [qword_1ECDE1548 BOOLValue])
  {
    v129->_trustAlpha = 1;
  }

  v43 = CVPixelBufferGetWidth(a10);
  v44 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v43 height:CVPixelBufferGetHeight(a10) mipmapped:0];
  v45 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v44];

  [v45 setUsage:3];
  v46 = MEMORY[0x1E69741C0];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a10, 1uLL);
  v48 = [v46 texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a10 mipmapped:1uLL), 0];
  v49 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v48];

  [v49 setUsage:3];
  v50 = v129;
  v51 = [(MTLDeviceSPI *)v129->_device newTextureWithDescriptor:v45 iosurface:CVPixelBufferGetIOSurface(a10) plane:0];
  v52 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v51];
  dstTexture = v50->_dstTexture;
  v50->_dstTexture = v52;

  v54 = [(MTLDeviceSPI *)v50->_device newTextureWithDescriptor:v49 iosurface:CVPixelBufferGetIOSurface(a10) plane:1];
  v55 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v54];
  dstUVTexture = v50->_dstUVTexture;
  v50->_dstUVTexture = v55;

  if (!v50->_tcTexture)
  {
    [(VideoRelightingMetal *)v50 createTexturesWith:Width imgHeight:Height];
    [(VideoRelightingMetal *)v50 configureRenderPipeline];
  }

  if (v50->_debugFace)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"frame = %lld", v50->_frameIndex];
  }

  if (v50->_faceDetected)
  {
    memset(__p, 0, 24);
    operator new();
  }

  [(VideoRelightingMetal *)v50 loadRGBTransformMapsForEffectVersion:1];
  [(VideoRelightingMetal *)v50 updateUniforms:1];
  rgbTransformMapCurrentNearTexturePtr = v50->_rgbTransformMapCurrentNearTexturePtr;
  v58 = [(MTLCommandQueue *)v50->_commandQueue commandBuffer];
  v59 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v58];

  [v59 setLabel:@"video relighting"];
  if (rgbTransformMapCurrentNearTexturePtr)
  {
    x = v50->_primaryCaptureRect.origin.x;
    v61 = CVPixelBufferGetWidth(a10);
    y = v50->_primaryCaptureRect.origin.y;
    v63 = CVPixelBufferGetHeight(a10);
    v64 = v50->_primaryCaptureRect.size.width;
    v65 = CVPixelBufferGetWidth(a10);
    [(CVAFilterColorAlphaToFgBg *)v50->_colorAlphaToFgBg encodeToCommandBuffer:v59 srcColorTex:v113 srcAlphaTex:v50->_texSkinSegmentationAlias dstForegroundTex:v50->_texSkinRGBAPyramid normalizedPrimaryCaptureRect:v110 isAfterPreviewStitcher:v111 applyRotation:x / v61, y / v63, v64 / v65, v50->_primaryCaptureRect.size.height / CVPixelBufferGetHeight(a10)];
    [(CVAFilterMaskedVariableBlur *)v50->_blurPyramidForSkinFg encodeBlurPyramidInPlaceToCommandBuffer:v59 inoutTexture:v50->_texSkinRGBAPyramid];
    [(VideoRelightingMetal *)v50 encodeLerpNearFarMapsToCommandBuffer:v59];
    if (v50->_faceDetected)
    {
      [(VideoRelightingMetal *)v50 encodeTCKernelToCommandBuffer:v59];
      [(VideoRelightingMetal *)v50 encodeVertCountKernelToCommandBuffer:v59];
      [(VideoRelightingMetal *)v50 encodeCountKernelToCommandBuffer:v59];
      [(VideoRelightingMetal *)v50 encodeSlideKernelToCommandBuffer:v59];
    }

    [(VideoRelightingMetal *)v50 encodeRelightKernelToCommandBuffer:v59 isAfterPreviewStitcher:v110 applyRotation:v111];
  }

  if ((atomic_load_explicit(&qword_1ECDE1568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1568))
  {
    qword_1ECDE1560 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1568);
  }

  if ((byte_1ECDE1570 & 1) == 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "saveRelitModelToPNG");
    sub_1DED2C8A0(&qword_1ECDE1560, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    byte_1ECDE1570 = 1;
  }

  v66 = v129;
  if (v129->_debugFace && [(NSData *)v129->_faceKitStreamedData.landmarks length])
  {
    if ((atomic_load_explicit(&qword_1ECDE1580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1580))
    {
      qword_1ECDE1578 = [MEMORY[0x1E696AD98] numberWithInt:0];
      __cxa_guard_release(&qword_1ECDE1580);
    }

    if ((byte_1ECDE1588 & 1) == 0)
    {
      operator new();
    }

    if ((atomic_load_explicit(&qword_1ECDE1598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1598))
    {
      qword_1ECDE1590 = [MEMORY[0x1E696AD98] numberWithInt:0];
      __cxa_guard_release(&qword_1ECDE1598);
    }

    if ((byte_1ECDE15A0 & 1) == 0)
    {
      operator new();
    }

    CVPixelBufferGetWidthOfPlane(a10, 0);
    CVPixelBufferGetHeightOfPlane(a10, 0);
    v67 = v129;
    p_verticesPos = &v129->_faceKitStreamedData.verticesPos;
    v112 = [(NSData *)v129->_faceKitStreamedData.landmarks length];
    [p_verticesPos[6] bytes];
    [*p_verticesPos bytes];
    v69 = (([*p_verticesPos length] / 3) >> 2);
    if (v67->_faceDetected)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Face is detected, nVerts = %d", v69];
    }

    if (v67->_debugFaceDraw && ([qword_1ECDE1578 intValue] & 0x80000000) == 0)
    {
      v70 = [qword_1ECDE1578 intValue];
      if (([qword_1ECDE1590 intValue] + v70) <= v69)
      {
        v71 = [qword_1ECDE1578 intValue] - 1;
        do
        {
          v72 = [qword_1ECDE1578 intValue];
          ++v71;
        }

        while (v71 < ([qword_1ECDE1590 intValue] + v72));
      }
    }

    v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v67->_indexOfCheekLandmark_topLeft];
    v131[0] = v73;
    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v67->_indexOfCheekLandmark_topRight];
    v131[1] = v74;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];

    v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v67->_indexOfCheekLandmark_bottomLeft];
    v130[0] = v76;
    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v67->_indexOfCheekLandmark_bottomRight];
    v130[1] = v77;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];

    if ((atomic_load_explicit(&qword_1ECDE15A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15A8))
    {
      v102 = +[CVAPreferenceManager defaults];
      v103 = [v102 BOOLForKey:@"CVAPhotoDrawFaceLandmarks"];

      byte_1ECDE15A1 = v103;
      __cxa_guard_release(&qword_1ECDE15A8);
    }

    v66 = v129;
    if (v129->_debugFaceDraw && v112 >= 8)
    {
      v79 = 0;
      do
      {
        v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v79];
        [v75 containsObject:v80];

        v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v79];
        [v78 containsObject:v81];

        ++v79;
      }

      while (v112 >> 3 != v79);
    }
  }

  dispatch_semaphore_wait(v66->_inflightSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  __p[0] = 0;
  __p[1] = __p;
  __p[2] = 0x3032000000;
  __p[3] = sub_1DED4DE08;
  __p[4] = sub_1DED4DE18;
  v128 = v66->_inflightSemaphore;
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = sub_1DED4DE20;
  v118[3] = &unk_1E869ACA0;
  v123 = a3;
  v124 = a4;
  v125 = a9;
  v122 = &v129;
  v118[4] = v66;
  v82 = v108;
  v119 = v82;
  v83 = v109;
  v126 = a10;
  v120 = v83;
  v121 = __p;
  [v59 addCompletedHandler:v118];
  [v59 commit];
  p_faceKitStreamedData = &v129->_faceKitStreamedData;
  verticesPos = v129->_faceKitStreamedData.verticesPos;
  v129->_faceKitStreamedData.verticesPos = 0;

  intrinsics = p_faceKitStreamedData->intrinsics;
  p_faceKitStreamedData->intrinsics = 0;

  camR = p_faceKitStreamedData->camR;
  p_faceKitStreamedData->camR = 0;

  camT = p_faceKitStreamedData->camT;
  p_faceKitStreamedData->camT = 0;

  poseR = p_faceKitStreamedData->poseR;
  p_faceKitStreamedData->poseR = 0;

  poseT = p_faceKitStreamedData->poseT;
  p_faceKitStreamedData->poseT = 0;

  landmarks = p_faceKitStreamedData->landmarks;
  p_faceKitStreamedData->landmarks = 0;

  p_faceKitStreamedData->confidence = 0.0;
  _Block_object_dispose(__p, 8);

  v92 = *MEMORY[0x1E69E9840];
}

- (void)encodeLerpNearFarMapsToCommandBuffer:(id)a3
{
  v4 = a3;
  lightMapsNearFarLerp = self->_lightMapsNearFarLerp;
  v8 = v4;
  if (lightMapsNearFarLerp <= 0.0)
  {
    v7 = &OBJC_IVAR___VideoRelightingMetal__rgbTransformMapCurrentNearTexturePtr;
  }

  else
  {
    if (lightMapsNearFarLerp < 1.0)
    {
      p_rgbTransformMapCurrentTextureInterpolated = &self->_rgbTransformMapCurrentTextureInterpolated;
      [(VideoRelightingMetal *)self encodeAlphaBlendRGBATextureArrayToCommandBuffer:v4 inTexFirst:self->_rgbTransformMapCurrentNearTexturePtr inTexSecond:self->_rgbTransformMapCurrentFarTexturePtr outTex:self->_rgbTransformMapCurrentTextureInterpolated alpha:?];
      goto LABEL_7;
    }

    v7 = &OBJC_IVAR___VideoRelightingMetal__rgbTransformMapCurrentFarTexturePtr;
  }

  p_rgbTransformMapCurrentTextureInterpolated = (&self->super.super.super.isa + *v7);
LABEL_7:
  objc_storeStrong(&self->_rgbTransformMapTextureSelectedPtr, *p_rgbTransformMapCurrentTextureInterpolated);
}

- (void)encodeAlphaBlendRGBATextureArrayToCommandBuffer:(id)a3 inTexFirst:(id)a4 inTexSecond:(id)a5 outTex:(id)a6 alpha:(const float *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [a3 computeCommandEncoder];
  v16 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v15];

  v20 = 0uLL;
  v21 = 0;
  sub_1DED6F850(&v20, self->_kernel_AlphaBlendRGBATextureArray);
  [v16 setLabel:@"_kernel_AlphaBlendRGBATextureArray"];
  [v16 setComputePipelineState:self->_kernel_AlphaBlendRGBATextureArray];
  [v16 setTexture:v12 atIndex:0];
  [v16 setTexture:v13 atIndex:1];
  [v16 setBytes:a7 length:4 atIndex:0];
  [v16 setTexture:v14 atIndex:2];
  v19[0] = [v14 width];
  v19[1] = [v14 height];
  v19[2] = 1;
  v17 = v20;
  v18 = v21;
  [v16 dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [v16 endEncoding];
}

- (void)updateFaceKitStreamedDataFromProcessOutput:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = self;
  v4 = a3;
  verticesPos = self->_faceKitStreamedData.verticesPos;
  self->_faceKitStreamedData.verticesPos = 0;

  intrinsics = self->_faceKitStreamedData.intrinsics;
  self->_faceKitStreamedData.intrinsics = 0;

  camR = self->_faceKitStreamedData.camR;
  self->_faceKitStreamedData.camR = 0;

  camT = self->_faceKitStreamedData.camT;
  self->_faceKitStreamedData.camT = 0;

  poseR = self->_faceKitStreamedData.poseR;
  self->_faceKitStreamedData.poseR = 0;

  poseT = self->_faceKitStreamedData.poseT;
  self->_faceKitStreamedData.poseT = 0;

  landmarks = self->_faceKitStreamedData.landmarks;
  self->_faceKitStreamedData.landmarks = 0;

  self->_faceKitStreamedData.confidence = 0.0;
  self->_faceDetectedReal = 0;
  self->_faceDetected = 0;
  v43[0] = &unk_1F59F9C68;
  v43[1] = &v42;
  v43[3] = v43;
  v45 = v44;
  v44[0] = &unk_1F59F9C68;
  v44[1] = &v42;
  if (qword_1ECDE1090 == -1)
  {
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&qword_1ECDE1090, &unk_1F59F9C38);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (byte_1ECDE1098)
  {
    v40 = v4;
    v41 = [v40 objectForKeyedSubscript:qword_1ECDE10B0];
    if ([v41 count])
    {
      v12 = [v41 objectAtIndex:0];
      v39 = [v12 objectForKeyedSubscript:qword_1ECDE1100];
      v13 = [v39 objectForKeyedSubscript:qword_1ECDE1120];
      v14 = v42->_faceKitStreamedData.intrinsics;
      v42->_faceKitStreamedData.intrinsics = v13;

      v38 = [v39 objectForKeyedSubscript:qword_1ECDE1128];
      v15 = [v38 objectForKeyedSubscript:qword_1ECDE1138];
      v16 = v42->_faceKitStreamedData.camR;
      v42->_faceKitStreamedData.camR = v15;

      v17 = [v38 objectForKeyedSubscript:qword_1ECDE10F8];
      v18 = v42->_faceKitStreamedData.camT;
      v42->_faceKitStreamedData.camT = v17;

      v19 = [v12 objectForKeyedSubscript:qword_1ECDE1118];
      v20 = [v19 objectForKeyedSubscript:qword_1ECDE1148];

      v21 = [v20 objectForKeyedSubscript:qword_1ECDE1138];
      v22 = v42->_faceKitStreamedData.poseR;
      v42->_faceKitStreamedData.poseR = v21;

      v23 = [v20 objectForKeyedSubscript:qword_1ECDE10F8];
      v24 = v42->_faceKitStreamedData.poseT;
      v42->_faceKitStreamedData.poseT = v23;

      v25 = [v12 objectForKeyedSubscript:qword_1ECDE1118];
      v26 = [v25 objectForKeyedSubscript:qword_1ECDE1140];

      v27 = [v26 objectForKeyedSubscript:qword_1ECDE10C8];
      v28 = v42->_faceKitStreamedData.verticesPos;
      v42->_faceKitStreamedData.verticesPos = v27;

      v29 = [v26 objectForKeyedSubscript:qword_1ECDE10B8];
      v30 = v42->_faceKitStreamedData.landmarks;
      v42->_faceKitStreamedData.landmarks = v29;

      v31 = v42;
      v32 = v42->_faceKitStreamedData.verticesPos;
      if (v32 && (v33 = [(NSData *)v32 length], v31 = v42, v33))
      {
        v34 = [(NSData *)v42->_faceKitStreamedData.landmarks length]!= 0;
        v31 = v42;
      }

      else
      {
        v34 = 0;
      }

      v31->_faceDetectedReal = v34;
      v42->_faceDetected = v34;
      v35 = [v12 objectForKeyedSubscript:qword_1ECDE1130];
      [v35 floatValue];
      v42->_faceKitStreamedData.confidence = v36;
    }
  }

LABEL_11:
  if (!v45)
  {
    sub_1DED25F90();
  }

  (*(*v45 + 48))(v45);
  if (v45 == v44)
  {
    (*(*v45 + 32))(v45);
  }

  else if (v45)
  {
    (*(*v45 + 40))();
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)encodeSlideKernelToCommandBuffer:(id)a3
{
  v4 = a3;
  v5 = [(MTLTexture *)self->_slideTexture width];
  v6 = [(MTLTexture *)self->_slideTexture height];
  v12 = 0uLL;
  v13 = 0;
  sub_1DED6F850(&v12, self->_kernel_Slide);
  v7 = [v4 computeCommandEncoder];
  v8 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v7];

  [v8 setLabel:@"_kernel_Slide"];
  [v8 setComputePipelineState:self->_kernel_Slide];
  [v8 setTexture:self->_tcTexture atIndex:0];
  [v8 setTexture:self->_slideTexture atIndex:1];
  [v8 setBytes:&self->_uniformBuffer_slide length:8 atIndex:0];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = 1;
  v9 = v12;
  v10 = v13;
  [v8 dispatchThreads:v11 threadsPerThreadgroup:&v9];
  [v8 endEncoding];
}

- (void)encodeCountKernelToCommandBuffer:(id)a3
{
  v4 = a3;
  v5 = [(MTLTexture *)self->_countTexture width];
  v6 = [(MTLTexture *)self->_countTexture height];
  v12 = 0uLL;
  v13 = 0;
  sub_1DED6F850(&v12, self->_kernel_Count);
  v7 = [v4 computeCommandEncoder];
  v8 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v7];

  [v8 setLabel:@"_kernel_Count"];
  [v8 setComputePipelineState:self->_kernel_Count];
  [v8 setTexture:self->_vertCountTexture atIndex:0];
  [v8 setTexture:self->_countTexture atIndex:1];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = 1;
  v9 = v12;
  v10 = v13;
  [v8 dispatchThreads:v11 threadsPerThreadgroup:&v9];
  [v8 endEncoding];
}

- (void)encodeVertCountKernelToCommandBuffer:(id)a3
{
  v4 = a3;
  v5 = [(MTLTexture *)self->_vertCountTexture width];
  v6 = [(MTLTexture *)self->_vertCountTexture height];
  v12 = 0uLL;
  v13 = 0;
  sub_1DED6F850(&v12, self->_kernel_CountVertical);
  v7 = [v4 computeCommandEncoder];
  v8 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v7];

  [v8 setLabel:@"_kernel_CountVertical"];
  [v8 setComputePipelineState:self->_kernel_CountVertical];
  [v8 setTexture:self->_tcTexture atIndex:0];
  [v8 setTexture:self->_vertCountTexture atIndex:1];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = 1;
  v9 = v12;
  v10 = v13;
  [v8 dispatchThreads:v11 threadsPerThreadgroup:&v9];
  [v8 endEncoding];
}

- (void)encodeRelightKernelToCommandBuffer:(id)a3 isAfterPreviewStitcher:(BOOL)a4 applyRotation:(BOOL)a5
{
  v8 = a3;
  v34 = a4;
  v33 = a5;
  v9 = [(MTLTexture *)self->_dstTexture width];
  v10 = [(MTLTexture *)self->_dstTexture height];
  x = self->_primaryCaptureRect.origin.x;
  v12 = [(MTLTexture *)self->_dstTexture width];
  v13 = x;
  v32[0] = v13 / v12;
  y = self->_primaryCaptureRect.origin.y;
  v15 = [(MTLTexture *)self->_dstTexture height];
  v16 = y;
  v32[1] = v16 / v15;
  width = self->_primaryCaptureRect.size.width;
  v18 = [(MTLTexture *)self->_dstTexture width];
  v19 = width;
  v32[2] = v19 / v18;
  height = self->_primaryCaptureRect.size.height;
  v21 = [(MTLTexture *)self->_dstTexture height];
  v22 = height;
  v32[3] = v22 / v21;
  trustAlpha = self->_trustAlpha;
  if ((atomic_load_explicit(&qword_1ECDE14E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE14E8))
  {
    qword_1ECDE14E0 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
    __cxa_guard_release(&qword_1ECDE14E8);
  }

  if ((byte_1ECDE14F0 & 1) == 0)
  {
    HIBYTE(v31) = 12;
    strcpy(&__p, "lightMapType");
    sub_1DED2C8A0(&qword_1ECDE14E0, &__p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }

    byte_1ECDE14F0 = 1;
  }

  portraitStyleStrength = self->_portraitStyleStrength;
  v25 = self->_kernel_Relight[1][!trustAlpha][[qword_1ECDE14E0 intValue] == 1];
  v26 = [v8 computeCommandEncoder];
  v27 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v26];

  [v27 setLabel:@"krnRelight"];
  [v27 setComputePipelineState:v25];
  [v27 setTexture:self->_srcTexture atIndex:0];
  [v27 setTexture:self->_dstTexture atIndex:1];
  [v27 setTexture:self->_dstUVTexture atIndex:2];
  [v27 setTexture:self->_tcTexture atIndex:3];
  [v27 setTexture:self->_slideTexture atIndex:4];
  [v27 setTexture:self->_alphaTexture atIndex:5];
  [v27 setTexture:self->_countTexture atIndex:7];
  [v27 setTexture:self->_rgbTransformMapTextureSelectedPtr atIndex:18];
  [v27 setTexture:self->_texSelectedColorCube atIndex:22];
  [v27 setTexture:self->_texSkinSegmentationAlias atIndex:27];
  [v27 setTexture:self->_texSkinRGBAPyramid atIndex:28];
  [v27 setBytes:&self->_anon_220[4] length:88 atIndex:0];
  [v27 setBytes:v32 length:16 atIndex:1];
  [v27 setBytes:&v34 length:1 atIndex:2];
  [v27 setBytes:&v33 length:1 atIndex:3];
  *&__p = (v9 >> 1);
  *(&__p + 1) = (v10 >> 1);
  v31 = 1;
  v28 = xmmword_1DED747A8;
  v29 = 1;
  [v27 dispatchThreads:&__p threadsPerThreadgroup:&v28];
  [v27 endEncoding];
}

- (void)encodeTCKernelToCommandBuffer:(id)a3
{
  v4 = [a3 renderCommandEncoderWithDescriptor:self->_tcRenderDesc];
  v6 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v4];

  v5 = [(CVAPhotoMTLRingBuffer *)self->_vertexBuffer currentBuffer];
  [v6 setVertexBuffer:v5 offset:0 atIndex:0];

  [v6 setVertexBytes:self->_anon_60 length:64 atIndex:1];
  [v6 setLabel:@"_tcKernel"];
  [v6 setRenderPipelineState:self->_tcKernel];
  [v6 setCullMode:0];
  [v6 setFrontFacingWinding:1];
  [v6 setDepthStencilState:self->_depthStencilState];
  [v6 drawIndexedPrimitives:3 indexCount:-[MTLBuffer length](self->_indexBufferImmutable indexType:"length") >> 1 indexBuffer:0 indexBufferOffset:{self->_indexBufferImmutable, 0}];
  [v6 endEncoding];
}

- (void)loadRGBTransformMapsForEffectVersion:(BOOL)a3
{
  v3 = a3;
  if ((atomic_load_explicit(&qword_1ECDE14D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE14D0))
  {
    qword_1ECDE14C8 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
    __cxa_guard_release(&qword_1ECDE14D0);
  }

  if ((byte_1ECDE14D8 & 1) == 0)
  {
    v13 = 12;
    strcpy(__p, "lightMapType");
    sub_1DED2C8A0(&qword_1ECDE14C8, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    byte_1ECDE14D8 = 1;
  }

  if ([qword_1ECDE14C8 intValue] == -1)
  {
    rgbTransformMapCurrentNearTexturePtr = self->_rgbTransformMapCurrentNearTexturePtr;
    self->_rgbTransformMapCurrentNearTexturePtr = 0;

    rgbTransformMapCurrentFarTexturePtr = self->_rgbTransformMapCurrentFarTexturePtr;
    self->_rgbTransformMapCurrentFarTexturePtr = 0;

    rgbTransformMapTextureSelectedPtr = self->_rgbTransformMapTextureSelectedPtr;
    self->_rgbTransformMapTextureSelectedPtr = 0;
  }

  else
  {
    v5 = &self->_rgbTransformMapContourNearTexture[v3];
    if (!*v5)
    {
      operator new();
    }

    if ([qword_1ECDE14C8 intValue] != 1)
    {
      v5 = &self->_rgbTransformMapStudioNearTexture[v3];
    }

    objc_storeStrong(&self->_rgbTransformMapCurrentNearTexturePtr, *v5);
    v6 = [qword_1ECDE14C8 intValue];
    v7 = &OBJC_IVAR___VideoRelightingMetal__rgbTransformMapStudioFarTexture;
    if (v6 == 1)
    {
      v7 = &OBJC_IVAR___VideoRelightingMetal__rgbTransformMapContourFarTexture;
    }

    objc_storeStrong(&self->_rgbTransformMapCurrentFarTexturePtr, *(&self->super.super.super.isa + 8 * v3 + *v7));
    v8 = self->_rgbTransformMapCurrentTextureInterpolated;
    rgbTransformMapTextureSelectedPtr = self->_rgbTransformMapTextureSelectedPtr;
    self->_rgbTransformMapTextureSelectedPtr = v8;
  }
}

- (void)loadRGBTransformMapsOnceTo:(id *)a3 namePrefix:(const void *)a4 forIntermediateResults:(BOOL)a5
{
  v5 = a5;
  if ((byte_1ECDE14B9 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v21[0] = 0;
    v9 = [v8 attributesOfItemAtPath:@"/System/Library/PrivateFrameworks/AppleCVAPhoto.framework/Resources/rgbTransformMap_Contour_NEAR_fp16_RGBAslice0" error:v21];
    v10 = v21[0];
    qword_1ECDE14C0 = [v9 fileSize];

    if (v10)
    {
      qword_1ECDE14C0 = 0;
    }

    byte_1ECDE14B9 = 1;
  }

  if (qword_1ECDE14C0 && !*a3)
  {
    v11 = sqrtf((qword_1ECDE14C0 >> 2) + 0.5);
    if (8 * v11 * v11 == 2 * qword_1ECDE14C0)
    {
      v12 = objc_opt_new();
      v13 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v12];

      [v13 setTextureType:3];
      [v13 setPixelFormat:115];
      v14 = v11;
      v20 = v11 >> 1;
      [v13 setWidth:?];
      [v13 setHeight:v11];
      [v13 setMipmapLevelCount:1];
      [v13 setArrayLength:12];
      if (v5)
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }

      [v13 setUsage:v15];
      v16 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v13];
      v17 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v16];
      v18 = *a3;
      *a3 = v17;

      v19 = 4 * v20 * v14;
      if (v19)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1DED35334();
      }

      if (!v5)
      {
        operator new();
      }
    }

    else
    {
      NSLog(&cfstr_CvaphotoErrorW.isa, a2, a3, a4);
      qword_1ECDE14C0 = 0;
    }
  }
}

- (void)updateUniforms:(BOOL)a3
{
  v3 = a3;
  LODWORD(self->_uniformBuffer_slide.center_x) = *&self->_faceModelCenterProjected[4];
  self->_uniformBuffer_slide.center_y = *&self->_faceModelCenterProjected[8];
  v5 = &self->_anon_220[4];
  v215 = 2.0 / [(MTLTexture *)self->_dstTexture width];
  v6 = 2.0 / [(MTLTexture *)self->_dstTexture height];
  *&v7 = v215;
  *(&v7 + 1) = v6;
  *v5 = v7;
  if ((atomic_load_explicit(&qword_1ECDE13E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE13E8))
  {
    qword_1ECDE13E0 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    __cxa_guard_release(&qword_1ECDE13E8);
  }

  if ((byte_1ECDE13F0 & 1) == 0)
  {
    HIBYTE(v219[2]) = 15;
    strcpy(v219, "backgroundAlpha");
    sub_1DED2C8A0(&qword_1ECDE13E0, v219);
    if (SHIBYTE(v219[2]) < 0)
    {
      operator delete(v219[0]);
    }

    byte_1ECDE13F0 = 1;
  }

  backgroundColor = self->_backgroundColor;
  [qword_1ECDE13E0 floatValue];
  v216 = v9;
  v10 = backgroundColor;
  [(CIColor *)v10 red];
  v212 = v11;
  [(CIColor *)v10 green];
  v210 = v12;
  [(CIColor *)v10 blue];
  v13.f64[0] = v212;
  v13.f64[1] = v210;
  *&v14 = v14;
  LODWORD(v210) = LODWORD(v14);
  v213 = vcvt_f32_f64(v13);

  *v15.f32 = v213;
  v15.i64[1] = __PAIR64__(v216, LODWORD(v210));
  *(v5 + 1) = vcvt_f16_f32(v15);
  if ((byte_1ECDE13F1 & 1) == 0)
  {
    strcpy(v219, "userFriendlyConfigName");
    HIBYTE(v219[2]) = 22;
    sub_1DED2C8A0(&qword_1ECDE0F68, v219);
    if (SHIBYTE(v219[2]) < 0)
    {
      operator delete(v219[0]);
    }

    byte_1ECDE13F1 = 1;
  }

  texSelectedColorCube = self->_texSelectedColorCube;
  self->_texSelectedColorCube = 0;

  if (![qword_1ECDE0F68 isEqualToString:@"STAGE LIGHT MONO"])
  {
    if ([qword_1ECDE0F68 isEqualToString:@"STAGE LIGHT CUSTOM MONO"])
    {
      if (v3)
      {
        v17 = self;
        v18 = 6;
        goto LABEL_16;
      }

LABEL_31:
      v19 = self->_texSelectedColorCube;
      self->_texSelectedColorCube = 0;
      goto LABEL_32;
    }

    if ([qword_1ECDE0F68 isEqualToString:@"STUDIO LIGHT"])
    {
      if (v3)
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      if (([qword_1ECDE0F68 isEqualToString:@"CONTOUR LIGHT"] & 1) == 0 && !objc_msgSend(qword_1ECDE0F68, "isEqualToString:", @"STAGE LIGHT"))
      {
        goto LABEL_31;
      }

      if (v3)
      {
        v22 = 4;
      }

      else
      {
        v22 = 1;
      }
    }

    v21 = [(VideoRelightingMetal *)self getInternalColorCube:v22];
LABEL_30:
    v19 = self->_texSelectedColorCube;
    self->_texSelectedColorCube = v21;
    goto LABEL_32;
  }

  if (!v3)
  {
    colorCubeUserData = self->_colorCubeUserData;
    if (colorCubeUserData)
    {
      colorCubeUserData = self->_texColorCubeUserData;
    }

    v21 = colorCubeUserData;
    goto LABEL_30;
  }

  v17 = self;
  v18 = 5;
LABEL_16:
  v19 = [(VideoRelightingMetal *)v17 getInternalColorCube:v18];
  objc_storeStrong(&self->_texSelectedColorCube, v19);
LABEL_32:

  if ((atomic_load_explicit(&qword_1ECDE1400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1400))
  {
    qword_1ECDE13F8 = [MEMORY[0x1E696AD98] numberWithBool:1];
    __cxa_guard_release(&qword_1ECDE1400);
  }

  if ((byte_1ECDE1408 & 1) == 0)
  {
    HIBYTE(v219[2]) = 15;
    strcpy(v219, "applyCubeOnFace");
    sub_1DED2C8A0(&qword_1ECDE13F8, v219);
    if (SHIBYTE(v219[2]) < 0)
    {
      operator delete(v219[0]);
    }

    byte_1ECDE1408 = 1;
  }

  *(v5 + 11) = ([qword_1ECDE13F8 BOOLValue] ^ 1);
  if ((atomic_load_explicit(&qword_1ECDE1418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1418))
  {
    LODWORD(v194) = 1.0;
    qword_1ECDE1410 = [MEMORY[0x1E696AD98] numberWithFloat:v194];
    __cxa_guard_release(&qword_1ECDE1418);
  }

  if ((byte_1ECDE1420 & 1) == 0)
  {
    HIBYTE(v219[2]) = 21;
    strcpy(v219, "colorCubeIntensity_v1");
    sub_1DED2C8A0(&qword_1ECDE1410, v219);
    if (SHIBYTE(v219[2]) < 0)
    {
      operator delete(v219[0]);
    }

    byte_1ECDE1420 = 1;
  }

  if ((atomic_load_explicit(&qword_1ECDE1430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1430))
  {
    LODWORD(v195) = 1.0;
    qword_1ECDE1428 = [MEMORY[0x1E696AD98] numberWithFloat:v195];
    __cxa_guard_release(&qword_1ECDE1430);
  }

  if ((byte_1ECDE1438 & 1) == 0)
  {
    HIBYTE(v219[2]) = 21;
    strcpy(v219, "colorCubeIntensity_v2");
    sub_1DED2C8A0(&qword_1ECDE1428, v219);
    if (SHIBYTE(v219[2]) < 0)
    {
      operator delete(v219[0]);
    }

    byte_1ECDE1438 = 1;
  }

  v23 = &qword_1ECDE1410;
  if (v3)
  {
    v23 = &qword_1ECDE1428;
  }

  [*v23 floatValue];
  __asm { FCVT            H0, S0 }

  *(v5 + 12) = _S0;
  v28 = [qword_1ECDE0F68 isEqualToString:@"STAGE LIGHT"];
  LOWORD(v29) = COERCE_UNSIGNED_INT(1.0);
  if ((v28 & 1) == 0)
  {
    *&v29 = [qword_1ECDE0F68 isEqualToString:{@"STAGE LIGHT MONO", v29}];
  }

  *(v5 + 13) = LOWORD(v29);
  _S0 = self->_vignettingScale;
  __asm { FCVT            H0, S0 }

  *(v5 + 14) = LOWORD(_S0);
  if ((atomic_load_explicit(&qword_1ECDE1440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1440))
  {
    v196 = v5;
    v197 = +[CVAPreferenceManager defaults];
    v198 = [v197 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE1439 = v198;
    __cxa_guard_release(&qword_1ECDE1440);
    v5 = v196;
  }

  if (byte_1ECDE1439 == 1)
  {
    _H0 = *(v5 + 12);
    __asm { FCVT            D0, H0 }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"ColorCube.intensity = %.2f", _D0];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"ColorCube.applyOnFace = %d", objc_msgSend(qword_1ECDE13F8, "intValue")];
  }

  v33 = 1.0;
  v34 = &OBJC_IVAR___CVADisparityPostprocessingRequest__sourceColorPixelBuffer;
  v35 = 1.0;
  v36 = 1.0;
  if (self->_faceDetected)
  {
    v207 = *&self->_anon_2c0[20];
    v208 = *&self->_anon_2c0[4];
    v209 = *&self->_anon_2c0[36];
    v211 = *&self->_anon_2c0[52];
    v37 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v208, 0, v207), 0, v209), 0, v211);
    v38 = vmulq_f32(v37, v37);
    *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
    *v38.f32 = vrsqrte_f32(v39);
    *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
    v40 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
    v41 = *&self->_face3DCenter[4];
    v42 = vmulq_f32(v41, v41);
    *&v43 = v42.f32[2] + vaddv_f32(*v42.f32);
    *v42.f32 = vrsqrte_f32(v43);
    *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)));
    v44 = vmulq_f32(v40, vmulq_n_f32(v41, vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).f32[0]));
    _S12 = acosf(v44.f32[2] + vaddv_f32(*v44.f32)) + -1.57079633;
    v46 = 1.0;
    if (v3)
    {
      v47 = (fabsf(_S12 * 57.296) + -15.0) / 30.0;
      v48 = 1.0 - fminf(v47, 1.0);
      if (v47 >= 0.0)
      {
        v46 = v48;
      }

      else
      {
        v46 = 1.0;
      }
    }

    v214 = v46;
    v49 = [(NSData *)self->_faceKitStreamedData.landmarks bytes];
    v50 = [(MTLTexture *)self->_dstTexture width];
    v51 = [(MTLTexture *)self->_dstTexture height];
    if (!self->_trustAlpha)
    {
      v53 = &v49[8 * self->_indexOfCheekLandmark_bottomRight];
      v54.f32[0] = *v53 / v50;
      v54.f32[1] = v53[1] / v51;
      v206 = v54;
      v55 = &v49[8 * self->_indexOfCheekLandmark_topRight];
      v56.f32[0] = *v55 / v50;
      v56.f32[1] = v55[1] / v51;
      v57 = &v49[8 * self->_indexOfCheekLandmark_bottomLeft];
      v58.f32[0] = *v57 / v50;
      v58.f32[1] = v57[1] / v51;
      v59 = &v49[8 * self->_indexOfCheekLandmark_topLeft];
      v60.f32[0] = *v59 / v50;
      v60.f32[1] = v59[1] / v51;
      *_Q1.f32 = vadd_f32(v54, vadd_f32(v56, vadd_f32(v58, v60)));
      __asm { FMOV            V3.2S, #0.25 }

      v62 = vmul_f32(*_Q1.f32, _D3);
      *(v5 + 4) = v62;
      __asm { FCVT            H1, S12 }

      *(v5 + 20) = _Q1.i16[0];
      v63 = vsub_f32(v60, v62);
      v204 = v58;
      v205 = vsub_f32(v56, v62);
      *_Q1.f32 = vadd_f32(v63, v205);
      v64 = vmul_f32(*_Q1.f32, *_Q1.f32);
      v64.i32[0] = vadd_f32(v64, vdup_lane_s32(v64, 1)).u32[0];
      v65 = vrsqrte_f32(v64.u32[0]);
      v66 = vmul_f32(v65, vrsqrts_f32(v64.u32[0], vmul_f32(v65, v65)));
      _D2 = vneg_f32(vdup_lane_s32(vmul_f32(v66, vrsqrts_f32(v64.u32[0], vmul_f32(v66, v66))), 0));
      *_Q1.f32 = vmul_f32(*_Q1.f32, _D2);
      _D2.i32[0] = _Q1.i32[1];
      v68 = vzip1_s32(vdup_lane_s32(*_Q1.f32, 1), *_Q1.f32);
      v69 = _Q1;
      v69.i32[1] = vneg_f32(*&_Q1).i32[1];
      v217 = *v69.f32;
      v70 = vcvt_f16_f32(v69);
      __asm { FCVT            H2, S2 }

      *(v5 + 44) = vzip1_s32(v70, vzip1_s16(_D2, v70));
      v71 = vmla_lane_f32(vmul_n_f32(*v69.f32, v63.f32[0]), v68, v63, 1);
      v72 = atan2f(v71.f32[1], v71.f32[0]);
      v73 = vsub_f32(v204, v62);
      v74 = vmla_lane_f32(vmul_n_f32(v217, v73.f32[0]), v68, v73, 1);
      v75 = atan2f(v74.f32[1], v74.f32[0]);
      v76 = vmla_lane_f32(vmul_n_f32(v217, v205.f32[0]), v68, v205, 1);
      v77 = atan2f(v76.f32[1], v76.f32[0]);
      v78 = vsub_f32(v206, v62);
      v79 = vmla_lane_f32(vmul_n_f32(v217, v78.f32[0]), v68, v78, 1);
      v80 = atan2f(v79.f32[1], v79.f32[0]);
      if ((atomic_load_explicit(&qword_1ECDE1450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1450))
      {
        LODWORD(v201) = 25.0;
        qword_1ECDE1448 = [MEMORY[0x1E696AD98] numberWithFloat:v201];
        __cxa_guard_release(&qword_1ECDE1450);
      }

      if ((byte_1ECDE1458 & 1) == 0)
      {
        HIBYTE(v219[2]) = 20;
        strcpy(v219, "faceSideAngleFadeTop");
        sub_1DED2C8A0(&qword_1ECDE1448, v219);
        if (SHIBYTE(v219[2]) < 0)
        {
          operator delete(v219[0]);
        }

        byte_1ECDE1458 = 1;
      }

      if ((atomic_load_explicit(&qword_1ECDE1468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1468))
      {
        LODWORD(v202) = 25.0;
        qword_1ECDE1460 = [MEMORY[0x1E696AD98] numberWithFloat:v202];
        __cxa_guard_release(&qword_1ECDE1468);
      }

      if ((byte_1ECDE1470 & 1) == 0)
      {
        operator new();
      }

      [qword_1ECDE1448 floatValue];
      v82 = v72 - (v81 * 0.017453);
      v83 = fminf(v82, 3.1416);
      if (v82 >= -3.1416)
      {
        v84 = v83;
      }

      else
      {
        v84 = -3.1416;
      }

      [qword_1ECDE1460 floatValue];
      *&_D0 = v75 + (*&_D0 * 0.017453);
      _S1 = fminf(*&_D0, 3.1416);
      if (*&_D0 >= -3.1416)
      {
        *&_D0 = _S1;
      }

      else
      {
        *&_D0 = -3.1416;
      }

      if (v72 <= v75 && v84 < v72 && v75 < *&_D0)
      {
        if (v84 != v72)
        {
          _S1 = 1.0 / (v72 - v84);
          __asm { FCVT            H1, S1 }

          _H3 = 0;
          _S2 = 0.0 - (v84 / (v72 - v84));
          __asm { FCVT            H2, S2 }
        }

        if (*&_D0 != v75)
        {
          _S3 = 1.0 / (v75 - *&_D0);
          __asm { FCVT            H3, S3 }

          *&_D0 = 0.0 - (*&_D0 / (v75 - *&_D0));
          __asm { FCVT            H4, S0 }
        }

        *(v5 + 32) = LOWORD(_S1);
        *(v5 + 33) = _H2;
        *(v5 + 34) = _H3;
        *(v5 + 35) = _H4;
      }

      *(v5 + 18) = 1006632960;
      [qword_1ECDE1448 floatValue];
      v95 = v77 + (v94 * 0.017453);
      v96 = fminf(v95, 3.1416);
      if (v95 >= -3.1416)
      {
        v97 = v96;
      }

      else
      {
        v97 = -3.1416;
      }

      [qword_1ECDE1460 floatValue];
      _S0 = v80 - (v99 * 0.017453);
      _S1 = fminf(_S0, 3.1416);
      if (_S0 >= -3.1416)
      {
        _S2 = _S1;
      }

      else
      {
        _S2 = -3.1416;
      }

      v104 = v77 < v97 && v80 <= v77 && _S2 < v80;
      v33 = 1.0;
      if (v104)
      {
        if (_S2 != v80)
        {
          _S0 = 1.0 / (v80 - _S2);
          __asm { FCVT            H0, S0 }

          v105 = _S2 / (v80 - _S2);
          LOWORD(_S2) = 0;
          _S1 = 0.0 - v105;
          __asm { FCVT            H1, S1 }
        }

        if (v97 != v77)
        {
          _S2 = 1.0 / (v77 - v97);
          __asm { FCVT            H2, S2 }

          _S3 = 0.0 - (v97 / (v77 - v97));
          __asm { FCVT            H3, S3 }
        }

        *(v5 + 26) = LOWORD(_S0);
        *(v5 + 27) = LOWORD(_S1);
        *(v5 + 28) = LOWORD(_S2);
        *(v5 + 29) = _H3;
      }

      *(v5 + 15) = 1006632960;
      if ((atomic_load_explicit(&qword_1ECDE1480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1480))
      {
        LODWORD(v203) = 1093926912;
        qword_1ECDE1478 = [MEMORY[0x1E696AD98] numberWithFloat:v203];
        __cxa_guard_release(&qword_1ECDE1480);
      }

      if ((byte_1ECDE1488 & 1) == 0)
      {
        HIBYTE(v219[2]) = 14;
        strcpy(v219, "cheekFadeAngle");
        sub_1DED2C8A0(&qword_1ECDE1478, v219);
        if (SHIBYTE(v219[2]) < 0)
        {
          operator delete(v219[0]);
        }

        byte_1ECDE1488 = 1;
      }

      m_storage = self->_cheekAngle.m_storage;
      [qword_1ECDE1478 floatValue];
      v109 = m_storage + (v108 * -0.017453);
      v110 = self->_cheekAngle.m_storage;
      if (v109 != v110)
      {
        _S1 = v109 - v110;
        _S2 = 1.0 / _S1;
        _S0 = 0.0 - (v110 / _S1);
        __asm
        {
          FCVT            H1, S2
          FCVT            H0, S0
        }

        *(v5 + 19) = LOWORD(_S1) | (LODWORD(_S0) << 16);
      }

      *(v5 + 20) = 1006632960;
    }

    v218 = *&self->_face3DCenter[4];
    v114 = *(self->_modelVertices.__begin_ + 12 * self->_closestLeftCheekVertexID.m_storage);
    v115 = *&self->_anon_300[24];
    v116 = [(MTLTexture *)self->_dstTexture width];
    if (v116 >= [(MTLTexture *)self->_dstTexture height])
    {
      v117 = fabsf(v115);
    }

    else
    {
      v117 = fabsf(*&self->_anon_300[4]);
    }

    if ((atomic_load_explicit(&qword_1ECDE1498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1498))
    {
      LODWORD(v199) = 1055286886;
      qword_1ECDE1490 = [MEMORY[0x1E696AD98] numberWithFloat:v199];
      __cxa_guard_release(&qword_1ECDE1498);
    }

    if ((byte_1ECDE14A0 & 1) == 0)
    {
      HIBYTE(v219[2]) = 16;
      strcpy(v219, "faceSizeCVMLNear");
      sub_1DED2C8A0(&qword_1ECDE1490, v219);
      if (SHIBYTE(v219[2]) < 0)
      {
        operator delete(v219[0]);
      }

      byte_1ECDE14A0 = 1;
    }

    if ((atomic_load_explicit(&qword_1ECDE14B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE14B0))
    {
      LODWORD(v200) = 0.25;
      qword_1ECDE14A8 = [MEMORY[0x1E696AD98] numberWithFloat:v200];
      __cxa_guard_release(&qword_1ECDE14B0);
    }

    if ((byte_1ECDE14B8 & 1) == 0)
    {
      HIBYTE(v219[2]) = 15;
      strcpy(v219, "faceSizeCVMLFar");
      sub_1DED2C8A0(&qword_1ECDE14A8, v219);
      if (SHIBYTE(v219[2]) < 0)
      {
        operator delete(v219[0]);
      }

      byte_1ECDE14B8 = 1;
    }

    v118 = vmulq_f32(v218, v218);
    v119 = sqrtf(v118.f32[2] + vaddv_f32(*v118.f32)) / 1000.0;
    v120 = ((fabsf(v114) / 1000.0) * v117) / v119;
    [qword_1ECDE1490 floatValue];
    v122 = v121 / 1.2264;
    [qword_1ECDE14A8 floatValue];
    v124 = ((1.0 / v120) - (1.0 / v122)) / ((1.0 / (v123 / 1.2264)) - (1.0 / v122));
    v125 = fminf(v124 + 0.0, 1.0);
    if (v124 >= 0.0)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0.0;
    }

    self->_lightMapsNearFarLerp = v126;
    v127 = (v126 * -0.5) + 1.0;
    v128 = fminf(v127, 1.0);
    if (v127 >= 0.5)
    {
      v36 = v128;
    }

    else
    {
      v36 = 0.5;
    }

    if (!self->_debugFace)
    {
      v34 = &OBJC_IVAR___CVADisparityPostprocessingRequest__sourceColorPixelBuffer;
LABEL_143:
      v35 = v214;
      goto LABEL_144;
    }

    v129 = vmlaq_f32(vmlaq_f32(vaddq_f32(v207, vmulq_f32(v208, 0)), 0, v209), 0, v211);
    v130 = vmulq_f32(v129, v129);
    *&v131 = v130.f32[2] + vaddv_f32(*v130.f32);
    *v130.f32 = vrsqrte_f32(v131);
    *v130.f32 = vmul_f32(*v130.f32, vrsqrts_f32(v131, vmul_f32(*v130.f32, *v130.f32)));
    v132 = vmulq_n_f32(v129, vmul_f32(*v130.f32, vrsqrts_f32(v131, vmul_f32(*v130.f32, *v130.f32))).f32[0]);
    v133 = *&self->_face3DCenter[4];
    v134 = vmulq_f32(v133, v133);
    *&v135 = v134.f32[2] + vaddv_f32(*v134.f32);
    *v134.f32 = vrsqrte_f32(v135);
    *v134.f32 = vmul_f32(*v134.f32, vrsqrts_f32(v135, vmul_f32(*v134.f32, *v134.f32)));
    v136 = vmulq_f32(v132, vmulq_n_f32(v133, vmul_f32(*v134.f32, vrsqrts_f32(v135, vmul_f32(*v134.f32, *v134.f32))).f32[0]));
    v137 = 1.57079633 - acosf(v136.f32[2] + vaddv_f32(*v136.f32));
    [MEMORY[0x1E696AEC0] stringWithFormat:@"faceConfidence = %.0f%%", (self->_faceKitStreamedData.confidence * 100.0)];

    v138 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 39);
    if (v138)
    {
      v139 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 7);
      v140 = v139 + 4 * v138;
      v141 = v139;
      v34 = &OBJC_IVAR___CVADisparityPostprocessingRequest__sourceColorPixelBuffer;
      if (*(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 23))
      {
LABEL_140:
        v142 = fabsf(_S12 * 57.296);
        v143 = v137 * 57.296;
        v144 = ((v140 - v141) >> 2) - (v138 == (*(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 15) - v139) >> 2);
        v145 = 0.0;
        if (v144 >= 2)
        {
          v145 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 59) / (v144 - 1);
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"faceConfidence.stddev = %.1f%%", (sqrtf(v145) * 100.0)];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"faceDistance = %.2fm", v119];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"faceSizeProjection = %.0f%%", (v120 * 100.0)];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"lerpNearFar = %.0f%%", (self->_lightMapsNearFarLerp * 100.0)];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"faceAngleHorAbs = %.0f", v142];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"faceAngleVer = %.0f", v143];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"geometricHaloRemoval = %i", !self->_trustAlpha];

        goto LABEL_143;
      }
    }

    else
    {
      v139 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 7);
      v140 = v139;
      v34 = &OBJC_IVAR___CVADisparityPostprocessingRequest__sourceColorPixelBuffer;
    }

    v141 = v139 + 4 * v138;
    goto LABEL_140;
  }

LABEL_144:
  *&v148 = v33 / [(CVAVideoPipelinePropertiesSPI *)self->_properties proxyToFaceEffectLerpNumFrames];
  proxyToFaceEffectLerpTemporal = self->_proxyToFaceEffectLerpTemporal;
  v147 = fmaxf(proxyToFaceEffectLerpTemporal - *&v148, 0.0);
  *&v148 = fminf(*&v148 + proxyToFaceEffectLerpTemporal, v33);
  if (!self->_faceDetected)
  {
    *&v148 = v147;
  }

  self->_proxyToFaceEffectLerpTemporal = *&v148;
  v149 = *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 14);
  v150 = *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 22);
  v151 = v150 - v149;
  v152 = *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 46);
  if (v151 == v152)
  {
    if (v150 != v149)
    {
      v153 = *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 38);
      *v153 = v35;
      v154 = v153 + 1;
      if (v154 != v150)
      {
        v149 = v154;
      }

      *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 30) = v149;
      *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 38) = v149;
    }

    v155 = (&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 58);
    goto LABEL_155;
  }

  v156 = *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 38);
  *v156 = v35;
  v157 = v156 + 1;
  if (v157 == v150)
  {
    v157 = v149;
  }

  v158 = v152 + 1;
  *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 38) = v157;
  *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 46) = v152 + 1;
  v155 = (&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 58);
  if (v151 != v152 + 1)
  {
    LODWORD(v148) = *v155;
    if (*v155 <= v35)
    {
      if (*v155 >= v35)
      {
        goto LABEL_173;
      }

      v162 = &v149[v158];
      if (v152 == -1 || (v163 = v149, v149 = v162, !*(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 30)))
      {
        v163 = v162;
        v162 = v149;
      }

      v160 = (v35 - *&v148) / (v162 - v163);
      goto LABEL_168;
    }

    if (v152 == -1)
    {
      v161 = v149;
    }

    else
    {
      v161 = &v149[v158];
      if (*(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 30))
      {
LABEL_171:
        *&v148 = *&v148 - ((*&v148 - v35) / (v161 - v149));
        goto LABEL_172;
      }
    }

    v149 += v158;
    goto LABEL_171;
  }

LABEL_155:
  v159 = *(&self->_faceRelightingAngleFactorsRollingMean.m_storage.dummy_.aligner_ + 30);
  LODWORD(v148) = *v159;
  if (*v159 <= v35)
  {
    if (*v159 >= v35)
    {
      goto LABEL_173;
    }

    *&v148 = (v35 - *&v148) / (v151 - 1);
    v160 = *v155;
LABEL_168:
    *&v148 = *&v148 + v160;
    goto LABEL_172;
  }

  *&v148 = *v155 - ((*&v148 - v35) / (v151 - 1));
LABEL_172:
  *v155 = LODWORD(v148);
LABEL_173:
  v164 = self->_proxyToFaceEffectLerpTemporal;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties relightEffectStrength];
  self->_proxyToFaceEffectLerpFinal = (v164 * v165) * *v155;
  self->_relightingStability = self->_proxyToFaceEffectLerpTemporal;
  faceDetected = self->_faceDetected;
  v167 = 0.1;
  if (self->_faceDetected)
  {
    v167 = 0.4;
  }

  self->_vignettingScale = self->_vignettingScale + ((v36 - self->_vignettingScale) * v167);
  if (byte_1ECDE1439 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"vignettingScaleRealTime = %.3f", v36];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"vignettingScale = %.3f", self->_vignettingScale];
    faceDetected = self->_faceDetected;
  }

  if (self->_debugFace)
  {
    v168 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 39);
    if (v168)
    {
      v169 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 7);
      v170 = v169 + 4 * v168;
      v171 = v169;
      if (*(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 23))
      {
        goto LABEL_183;
      }
    }

    else
    {
      v169 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 7);
      v170 = v169;
    }

    v171 = v169 + 4 * v168;
LABEL_183:
    v172 = ((v170 - v171) >> 2) - (v168 == (*(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 15) - v169) >> 2);
    v173 = 0.0;
    if (v172 >= 2)
    {
      v173 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 59) / (v172 - 1);
    }

    v174 = sqrtf(v173);
    v175 = " [face skipped]";
    if (faceDetected)
    {
      v175 = " [face]";
    }

    if (!self->_faceDetectedReal)
    {
      v175 = " []";
    }

    NSLog(&cfstr_CvaphotoFrameL.isa, self->_frameIndex, self->_faceDetectedReal, faceDetected, *&v174, self->_proxyToFaceEffectLerpFinal, v175);
    if (self->_faceDetected)
    {
      LOBYTE(faceDetected) = 1;
      goto LABEL_201;
    }

    if (!self->_faceDetectedReal)
    {
      LOBYTE(faceDetected) = 0;
      goto LABEL_201;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"geometricHaloRemoval = %i", !self->_trustAlpha];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"Face was detected, but skipped"];
    v176 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 39);
    if (v176)
    {
      v177 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 7);
      v178 = v177 + 4 * v176;
      v179 = v177;
      if (*(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 23))
      {
LABEL_198:
        v180 = ((v178 - v179) >> 2) - (v176 == (*(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 15) - v177) >> 2);
        v181 = 0.0;
        if (v180 >= 2)
        {
          v181 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 59) / (v180 - 1);
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"faceConfidence.stddev = %.1f%%", (sqrtf(v181) * 100.0)];

        LOBYTE(faceDetected) = self->_faceDetected;
        goto LABEL_201;
      }
    }

    else
    {
      v177 = *(&self->_faceConfidenceRollingVariance.m_storage.dummy_.aligner_ + 7);
      v178 = v177;
    }

    v179 = v177 + 4 * v176;
    goto LABEL_198;
  }

LABEL_201:
  _S0 = self->_proxyToFaceEffectLerpFinal;
  __asm { FCVT            H1, S0 }

  *(v5 + 8) = _H1;
  _S1 = self->_portraitStyleStrength;
  __asm { FCVT            H1, S1 }

  *(v5 + 10) = LOWORD(_S1);
  _S1 = (*(&self->super.super.super.isa + v34[397]) * -0.5) + 1.0;
  if (!faceDetected)
  {
    v186 = (((self->_focusDistance + -0.54) / 0.76) * -0.5) + 1.0;
    v187 = fminf(v186, 1.0);
    if (v186 < 0.5)
    {
      v187 = 0.5;
    }

    _S1 = v187 + ((_S1 - v187) * _S0);
  }

  __asm { FCVT            H0, S1 }

  *(v5 + 9) = _H0;
  if (self->_debugFace)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"focusDistance = %.3fm", self->_focusDistance];

    _H0 = *(v5 + 9);
    __asm { FCVT            S0, H0 }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"blurStrengthByDistance = %.1f%%", (_S0 * 100.0)];

    if (self->_debugFace)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"proxyToFaceLerp = %.2f", self->_proxyToFaceEffectLerpFinal];
    }
  }

  v191 = *&self->_anon_280[52];
  v193 = *&self->_anon_280[4];
  v192 = *&self->_anon_280[20];
  *&self->_anon_60[32] = *&self->_anon_280[36];
  *&self->_anon_60[48] = v191;
  *self->_anon_60 = v193;
  *&self->_anon_60[16] = v192;
}

- (void)updateMatrixWithWidth:(int)a3 height:(int)a4 camera:(const void *)a5 pose:(const void *)a6
{
  v7 = **a6;
  *&self->_anon_2c0[4] = v7;
  v8 = *(*a6 + 16);
  *&self->_anon_2c0[20] = v8;
  v9 = *(*a6 + 32);
  *&self->_anon_2c0[36] = v9;
  v10 = *(*a6 + 48);
  *&self->_anon_2c0[52] = v10;
  v11 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v7, 0), 0, v8), 0, v9), v10);
  *&self->_face3DCenter[4] = v11;
  v12 = fmaxf((v11.f32[2] + 800.0) + -50.0, 1.0);
  *v8.f32 = vdiv_f32(COERCE_FLOAT32X2_T(-2.00000048), vcvt_f32_s32(__PAIR64__(a4, a3)));
  *&v13 = **a5 * v8.f32[0];
  LODWORD(v14) = 0;
  HIDWORD(v14) = vmuls_lane_f32(*(*a5 + 16), *v8.f32, 1);
  __asm { FMOV            V19.2S, #-1.0 }

  *v20.f32 = vmla_f32(COERCE_FLOAT32X2_T(-_D19), vadd_f32(*(*a5 + 24), 0x3F0000003F000000), *v8.f32);
  v20.f32[2] = ((v11.f32[2] + 800.0) + 50.0) / v12;
  v20.i32[3] = 1.0;
  v9.i64[0] = 0;
  v9.i32[3] = 0;
  v9.f32[2] = (((v11.f32[2] + 800.0) * -2.0) * 50.0) / v12;
  *&self->_anon_300[4] = v13;
  *&self->_anon_300[20] = v14;
  *&self->_anon_300[36] = v20;
  *&self->_anon_300[52] = v9;
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&self->_anon_2c0[4])), v14, *&self->_anon_2c0[4], 1), v20, *&self->_anon_2c0[4], 2), v9, *&self->_anon_2c0[4], 3);
  _Q2 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&self->_anon_2c0[20])), v14, *&self->_anon_2c0[20], 1), v20, *&self->_anon_2c0[20], 2), v9, *&self->_anon_2c0[20], 3);
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&self->_anon_2c0[36])), v14, *&self->_anon_2c0[36], 1), v20, *&self->_anon_2c0[36], 2), v9, *&self->_anon_2c0[36], 3);
  v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*&self->_anon_2c0[52])), v14, *&self->_anon_2c0[52], 1), v20, *&self->_anon_2c0[52], 2), v9, *&self->_anon_2c0[52], 3);
  *&self->_anon_280[4] = v21;
  *&self->_anon_280[20] = _Q2;
  *&self->_anon_280[36] = v23;
  *&self->_anon_280[52] = v24;
  v25 = vaddq_f32(v24, vmlaq_f32(vmlaq_f32(vmulq_f32(v21, 0), 0, _Q2), 0, v23));
  *v25.i8 = vdiv_f32(*v25.i8, vdup_laneq_s32(v25, 3));
  __asm { FMOV            V2.2S, #1.0 }

  v9.i64[0] = vadd_f32(*v25.i8, *_Q2.f32).u32[0];
  v9.i32[1] = vsub_f32(*&_Q2, *&v25).i32[1];
  *&self->_faceModelCenterProjected[4] = vmul_f32(*v9.f32, 0x3F0000003F000000);
  p_cheekAngle = &self->_cheekAngle;
  self->_cheekAngle.m_initialized = 0;
  p_closestLeftCheekVertexID = &self->_closestLeftCheekVertexID;
  if (self->_closestLeftCheekVertexID.m_initialized)
  {
    v28 = *(self->_modelVertices.__begin_ + 3 * self->_closestLeftCheekVertexID.m_storage + 1);
    v28.i32[1] = 0;
    v29 = vmulq_f32(v28, v28);
    *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
    *v29.f32 = vrsqrte_f32(v30);
    *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
    v31 = vmulq_f32(vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]), xmmword_1DED740C0);
    v32 = fabsf(acosf(v31.f32[2] + vaddv_f32(*v31.f32))) + -1.57079633;
    p_cheekAngle->m_storage = v32;
    p_cheekAngle->m_initialized = 1;
    if (!self->_debugFace)
    {
      goto LABEL_7;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"cheek angle = %.1f", (v32 * 57.296)];
  }

  else
  {
    if (!self->_debugFace)
    {
      goto LABEL_7;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"cheek angle = FATAL ERROR: not found", v38];
  }

LABEL_7:
  if (self->_debugFaceDraw && p_closestLeftCheekVertexID->m_initialized)
  {
    v33 = *(self->_modelVertices.__begin_ + 3 * p_closestLeftCheekVertexID->m_storage + 1);
    v33.i32[1] = 0;
    v34 = vmulq_f32(v33, v33);
    *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
    *v34.f32 = vrsqrte_f32(v35);
    *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
    v36 = vmulq_f32(vmulq_n_f32(v33, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]), xmmword_1DED740C0);
    v37 = fabsf(acosf(v36.f32[2] + vaddv_f32(*v36.f32))) + -1.57079633;
    p_cheekAngle->m_storage = v37;
    p_cheekAngle->m_initialized = 1;
  }
}

- (void)generateModelNormals
{
  p_modelVertices = &self->_modelVertices;
  begin = self->_modelVertices.__begin_;
  for (i = self->_modelVertices.__end_; begin != i; begin = (begin + 48))
  {
    *(begin + 1) = 0uLL;
  }

  v5 = self->_faceKitMeshTris.__begin_;
  if (self->_faceKitMeshTris.__end_ != v5)
  {
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      v8 = (p_modelVertices->__begin_ + 48 * *v7);
      v9 = (p_modelVertices->__begin_ + 48 * v7[1]);
      v10 = (p_modelVertices->__begin_ + 48 * v7[2]);
      v11 = vsubq_f32(*v9, *v8);
      v12 = vsubq_f32(*v10, *v8);
      v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v11)), v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
      v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
      v8[1] = vaddq_f32(v8[1], v14);
      v9[1] = vaddq_f32(v9[1], v14);
      v10[1] = vaddq_f32(v14, v10[1]);
      v6 += 3;
      v5 = self->_faceKitMeshTris.__begin_;
    }

    while (v6 < self->_faceKitMeshTris.__end_ - v5);
  }

  v16 = p_modelVertices->__begin_;
  for (j = self->_modelVertices.__end_; v16 != j; v16 = (v16 + 48))
  {
    v17 = *(v16 + 1);
    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    *(v16 + 1) = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  }
}

- (void)setModelVertices
{
  p_modelVertices = &self->_modelVertices;
  self->_modelVertices.__end_ = self->_modelVertices.__begin_;
  v4 = [(NSData *)self->_faceKitStreamedData.verticesPos bytes];
  v5 = [(NSData *)self->_faceKitStreamedData.verticesPos length];
  v6 = [(NSData *)self->_faceKitMeshTexcoords bytes];
  v35 = self;
  p_closestLeftCheekVertexID = &self->_closestLeftCheekVertexID;
  self->_closestLeftCheekVertexID.m_initialized = 0;
  if (v5 >= 0xC)
  {
    v13 = v6;
    v14 = 0;
    v15 = v5 / 0xC;
    end = p_modelVertices->__end_;
    v17 = v4 + 8;
    v18 = 3.4028e38;
    v19 = 1.0;
    v20 = xmmword_1DED740E0;
    do
    {
      v21.i64[0] = *(v17 - 1);
      v21.i32[2] = *v17;
      v21.f32[3] = v19;
      v22 = v13[v14];
      cap = p_modelVertices->__cap_;
      if (end >= cap)
      {
        begin = p_modelVertices->__begin_;
        v25 = 0xAAAAAAAAAAAAAAABLL * ((end - p_modelVertices->__begin_) >> 4);
        v26 = v25 + 1;
        if (v25 + 1 > 0x555555555555555)
        {
          sub_1DED35334();
        }

        v27 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 4);
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        if (v27 >= 0x2AAAAAAAAAAAAAALL)
        {
          v28 = 0x555555555555555;
        }

        else
        {
          v28 = v26;
        }

        *v37 = v21;
        if (v28)
        {
          if (v28 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1DED35334();
        }

        v29 = end;
        v30 = 16 * ((end - p_modelVertices->__begin_) >> 4);
        *v30 = v21;
        *(v30 + 16) = xmmword_1DED740D0;
        *(v30 + 32) = v22;
        end = 48 * v25 + 48;
        v31 = 48 * v25 - (v29 - begin);
        memcpy((v30 - (v29 - begin)), begin, v29 - begin);
        p_modelVertices->__begin_ = v31;
        p_modelVertices->__end_ = end;
        p_modelVertices->__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }

        v19 = 1.0;
        v20 = xmmword_1DED740E0;
        v21 = *v37;
      }

      else
      {
        *end = v21;
        *(end + 16) = xmmword_1DED740D0;
        *(end + 32) = v22;
        end += 48;
      }

      p_modelVertices->__end_ = end;
      v32 = vaddq_f32(v21, v20);
      v33 = vmulq_f32(v32, v32);
      v34 = vaddv_f32(*v33.f32);
      if ((v33.f32[2] + v34) < v18)
      {
        p_closestLeftCheekVertexID->m_storage = v14;
        p_closestLeftCheekVertexID->m_initialized = 1;
        v18 = v33.f32[2] + v34;
      }

      ++v14;
      v17 += 3;
    }

    while (v15 != v14);
  }

  [(VideoRelightingMetal *)v35 generateModelNormals];
  v36 = [MEMORY[0x1E695DEF0] dataWithBytes:p_modelVertices->__begin_ length:p_modelVertices->__end_ - p_modelVertices->__begin_];
  vertexBuffer = v35->_vertexBuffer;
  if (!vertexBuffer)
  {
    v9 = -[CVAPhotoMTLRingBuffer initWithLength:options:device:]([CVAPhotoMTLRingBuffer alloc], "initWithLength:options:device:", [v36 length], 0, v35->_device);
    v10 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v9];
    v11 = v35->_vertexBuffer;
    v35->_vertexBuffer = v10;

    vertexBuffer = v35->_vertexBuffer;
  }

  v12 = [(CVAPhotoMTLRingBuffer *)vertexBuffer advancedBuffer];
  memcpy([v12 contents], objc_msgSend(v36, "bytes"), objc_msgSend(v36, "length"));
}

- (void)configureRenderPipeline
{
  v3 = objc_opt_new();
  v15 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v3];

  [v15 setDepthCompareFunction:1];
  [v15 setDepthWriteEnabled:1];
  v4 = [(MTLDeviceSPI *)self->_device newDepthStencilStateWithDescriptor:v15];
  v5 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v4];
  depthStencilState = self->_depthStencilState;
  self->_depthStencilState = v5;

  v16 = [MEMORY[0x1E6974128] renderPassDescriptor];
  v7 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:?];
  tcRenderDesc = self->_tcRenderDesc;
  self->_tcRenderDesc = v7;

  tcTexture = self->_tcTexture;
  v17 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc colorAttachments];
  v10 = [v17 objectAtIndexedSubscript:0];
  [v10 setTexture:tcTexture];

  v18 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc colorAttachments];
  v11 = [v18 objectAtIndexedSubscript:0];
  [v11 setLoadAction:2];

  v19 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc colorAttachments];
  v12 = [v19 objectAtIndexedSubscript:0];
  [v12 setStoreAction:1];

  v20 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc colorAttachments];
  v13 = [v20 objectAtIndexedSubscript:0];
  [v13 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  tcDepthTexture = self->_tcDepthTexture;
  v21 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc depthAttachment];
  [v21 setTexture:tcDepthTexture];

  v22 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc depthAttachment];
  [v22 setLoadAction:2];

  v23 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc depthAttachment];
  [v23 setStoreAction:1];

  v24 = [(MTLRenderPassDescriptor *)self->_tcRenderDesc depthAttachment];
  [v24 setClearDepth:1.0];
}

- (void)saveTexture:(id)a3 toImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 pixelFormat] != 80 && objc_msgSend(v7, "pixelFormat") != 70 && objc_msgSend(v7, "pixelFormat") != 115)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"VideoRelightingMetal.mm" lineNumber:703 description:@"unsupported pixel format!"];
  }

  v9 = [v7 width];
  v10 = [v7 height];
  v11 = vcvtd_n_u64_f64(v9 * v10, 2uLL);
  v12 = malloc_type_malloc(v11, 0x11E9040EuLL);
  v13 = vcvtd_n_u64_f64(v9, 2uLL);
  if ([v7 pixelFormat] == 115)
  {
    operator new[]();
  }

  memset(v33, 0, 24);
  v33[3] = v9;
  v33[4] = v10;
  v33[5] = 1;
  [v7 getBytes:v12 bytesPerRow:v13 fromRegion:v33 mipmapLevel:0];
  if ([v7 pixelFormat] == 80 && v11)
  {
    if (v11 < 5 || ((v14 = (v11 - 1) >> 2, (~v14 & 0x3FFFFFFF) != 0) ? (v15 = v14 >> 30 == 0) : (v15 = 0), v15 ? (v16 = (v11 - 1) >> 34 == 0) : (v16 = 0), !v16))
    {
      v17 = 0;
      v18 = v12;
      goto LABEL_18;
    }

    v25 = v14 + 1;
    v26 = v25 & 0x7FFFFFFE;
    v27 = v12 + 4;
    v28 = v26;
    do
    {
      v29 = *(v27 - 4);
      v30 = *v27;
      v31 = v27[2];
      *(v27 - 4) = *(v27 - 2);
      *v27 = v31;
      *(v27 - 2) = v29;
      v27[2] = v30;
      v27 += 8;
      v28 -= 2;
    }

    while (v28);
    if (v25 != v26)
    {
      v18 = &v12[4 * (v25 & 0x7FFFFFFE)];
      v17 = 4 * v26;
LABEL_18:
      v19 = v17 + 4;
      do
      {
        v20 = *v18;
        *v18 = v18[2];
        v18[2] = v20;
        v18 += 4;
        v21 = v19;
        v19 += 4;
      }

      while (v21 < v11);
    }
  }

  v22 = CGDataProviderCreateWithData(0, v12, v11, sub_1DED53FAC);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v24 = CGImageCreate(v9, v10, 8uLL, 0x20uLL, v13, DeviceRGB, 0x4001u, v22, 0, 0, kCGRenderingIntentDefault);
  [v8 UTF8String];
  CGImageWriteToFile();
  CFRelease(v22);
  CFRelease(DeviceRGB);
  CFRelease(v24);
}

- (VideoRelightingMetal)initWithMetalContext:(void *)a3
{
  v8.receiver = self;
  v8.super_class = VideoRelightingMetal;
  v4 = [(ImageSaverAndFileConfigRegistrator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_device, *(a3 + 1));
    objc_storeStrong(&v5->_commandQueue, *(a3 + 2));
    objc_storeStrong(&v5->_library, *(a3 + 3));
    objc_storeStrong(&v5->_pipelineLibrary, *(a3 + 4));
    v5->_metalContext = a3;
    [(VideoRelightingMetal *)v5 initCommon];
    v6 = v5;
  }

  return v5;
}

- (void)initCommon
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[CVAPreferenceManager defaults];

  if (v3)
  {
    v4 = +[CVAPreferenceManager defaults];
    self->_debugFace = [v4 BOOLForKey:@"CVAPhotoDebugFace"];

    if (self->_debugFace)
    {
      v5 = +[CVAPreferenceManager defaults];
      self->_debugFaceDraw = [v5 BOOLForKey:@"CVAPhotoDebugFaceDraw"];
    }

    else
    {
      self->_debugFaceDraw = 0;
    }
  }

  [(VideoRelightingMetal *)self initKernelFunctions];
  v6 = [[CVAFilterColorAlphaToFgBg alloc] initWithFigMetalContext:*self->_metalContext error:0];
  v7 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v6];
  colorAlphaToFgBg = self->_colorAlphaToFgBg;
  self->_colorAlphaToFgBg = v7;

  v9 = [[CVAFilterMaskedVariableBlur alloc] initWithFigMetalContext:*self->_metalContext commandQueue:self->_commandQueue kernelSize:7 error:0];
  v10 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v9];
  blurPyramidForSkinFg = self->_blurPyramidForSkinFg;
  self->_blurPyramidForSkinFg = v10;

  v12 = [MEMORY[0x1E695F610] blackColor];
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v12;

  self->_relightingStability = 1.0;
  self->_vignettingScale = 1.0;
  self->_frameIndex = -1;
  operator new();
}

- (id)getInternalColorCube:(int)a3
{
  texColorCubeStaticArray = self->_texColorCubeStaticArray;
  if (self->_texColorCubeStaticArray[a3])
  {
    v5 = 1;
  }

  else
  {
    v5 = a3 > 6;
  }

  if (!v5 && ((0x7Bu >> a3) & 1) != 0)
  {
    v6 = [(VideoRelightingMetal *)self loadCube:*(&off_1E869ACC0 + a3)];
    v7 = texColorCubeStaticArray[a3];
    texColorCubeStaticArray[a3] = v6;
  }

  if ((atomic_load_explicit(&qword_1ECDE13D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE13D8))
  {
    v12 = texColorCubeStaticArray;
    v10 = +[CVAPreferenceManager defaults];
    v11 = [v10 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE13D0 = v11;
    __cxa_guard_release(&qword_1ECDE13D8);
    texColorCubeStaticArray = v12;
  }

  if (byte_1ECDE13D0 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"ColorCube: %@", off_1E869AC38[a3]];
  }

  v8 = texColorCubeStaticArray[a3];

  return v8;
}

- (id)loadCube:(id)a3
{
  v4 = [@"/System/Library/PrivateFrameworks/AppleCVAPhoto.framework/Resources/" stringByAppendingString:a3];
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
  v6 = sub_1DED6FF78(v5, self->_device);
  v7 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v6];

  return v7;
}

- (void)initKernelFunctions
{
  v14 = *MEMORY[0x1E69E9840];
  p_kernel_CountVertical = &self->_kernel_CountVertical;
  v3 = @"smooth_v";
  v4 = 0;
  p_kernel_Count = &self->_kernel_Count;
  v6 = @"smooth_h";
  v7 = 0;
  p_kernel_Slide = &self->_kernel_Slide;
  v9 = @"slide";
  v10 = 0;
  p_kernel_AlphaBlendRGBATextureArray = &self->_kernel_AlphaBlendRGBATextureArray;
  v12 = @"alphaBlendRGBATextureArray";
  v13 = 0;
  operator new();
}

- (void)createTexturesWith:(unint64_t)a3 imgHeight:(unint64_t)a4
{
  if ((atomic_load_explicit(&qword_1ECDE13C8, memory_order_acquire) & 1) == 0)
  {
    v34 = a4;
    v35 = a3;
    v36 = __cxa_guard_acquire(&qword_1ECDE13C8);
    a3 = v35;
    a4 = v34;
    if (v36)
    {
      v37 = v35;
      v38 = +[CVAPreferenceManager defaults];
      v39 = [v38 BOOLForKey:@"CVAPhotoFullResTCMap"];

      byte_1ECDE13C2 = v39;
      __cxa_guard_release(&qword_1ECDE13C8);
      a4 = v34;
      a3 = v37;
    }
  }

  v40 = a3;
  v41 = a4;
  v42 = (a3 >> 2);
  if (byte_1ECDE13C2)
  {
    v5 = a3;
  }

  else
  {
    v5 = a3 >> 2;
  }

  v6 = a4 >> 2;
  if (byte_1ECDE13C2)
  {
    v7 = a4;
  }

  else
  {
    v7 = a4 >> 2;
  }

  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v5 height:v7 mipmapped:0];
  v9 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v8];

  [v9 setUsage:7];
  v10 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v9];
  v11 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v10];
  tcTexture = self->_tcTexture;
  self->_tcTexture = v11;

  objc_storeStrong(&self->_lightTexture, self->_tcTexture);
  v13 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:252 width:v5 height:v7 mipmapped:0];
  v14 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v13];

  [v14 setUsage:5];
  v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14];
  v16 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v15];
  tcDepthTexture = self->_tcDepthTexture;
  self->_tcDepthTexture = v16;

  v18 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v42 height:v6 mipmapped:0];
  v19 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v18];

  [v19 setUsage:7];
  v20 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v19];
  v21 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v20];
  slideTexture = self->_slideTexture;
  self->_slideTexture = v21;

  v23 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v42 height:v6 mipmapped:0];
  v24 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v23];

  [v24 setUsage:7];
  v25 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v24];
  v26 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v25];
  vertCountTexture = self->_vertCountTexture;
  self->_vertCountTexture = v26;

  v28 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v24];
  v29 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v28];
  countTexture = self->_countTexture;
  self->_countTexture = v29;

  v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:v40 >> 1 height:v41 >> 1 mipmapped:1];
  [v43 setUsage:3];
  [v43 setMipmapLevelCount:3];
  v31 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v43];
  v32 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v31];
  texSkinRGBAPyramid = self->_texSkinRGBAPyramid;
  self->_texSkinRGBAPyramid = v32;
}

- (id)create3DTextureWithSize:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v5];

  [v6 setTextureType:7];
  [v6 setHeight:a3];
  [v6 setWidth:a3];
  [v6 setDepth:a3];
  [v6 setPixelFormat:70];
  [v6 setArrayLength:1];
  [v6 setMipmapLevelCount:1];
  [v6 setUsage:3];
  v7 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v6];
  v8 = [CVAPhotoExceptionMetalResourceUnavailable throwIfNil:v7];

  return v8;
}

@end