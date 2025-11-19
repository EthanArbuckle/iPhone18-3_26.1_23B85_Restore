@interface VNImageBuffer
+ (CGRect)computeCenterCropRectFromCropRect:(CGRect)result inImageSize:(CGSize)a4 calculatedScaleX:(double *)a5 calculatedScaleY:(double *)a6;
+ (const)mapOrientationToRotationDegrees;
+ (uint64_t)_VNVTPixelTransferImageForSource:(CGFloat)a3 destinationBuffer:(CGFloat)a4 cropRect:(uint64_t)a5 performCrop:(__CVBuffer *)a6 vtSessionManager:(__CVBuffer *)a7 error:(int)a8;
- ($C89D6CB792F036C1FD5C44B3A3669EAC)timingInfo;
- (BOOL)getCameraIntrinsicsAvailable:(id *)a3;
- (BOOL)getCameraOpticalCenterIfAvailable:(CGPoint *)a3;
- (BOOL)getPixelFocalLengthIfAvailable:(float *)a3;
- (CGAffineTransform)_calculateTranslationTransformForOrientedCropWithOrientation:(double)a3 unorientedSubsampledFullImageRect:(double)a4 unorientedSubsampledOriginalCrop:(double)a5;
- (CGRect)fullImageBufferRect;
- (CGRect)makeClippedRectAgainstImageExtentUsingOriginalRect:(CGRect)a3;
- (CVPixelBufferRef)_createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:(size_t)a3 height:(uint64_t)a4 format:(void *)a5 options:(_BYTE *)a6 outPooled:(void *)a7 error:;
- (NSNumber)sceneStabilityMetric;
- (VNImageBuffer)bufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 options:(id)a6 error:(id *)a7 pixelBufferRepsCacheKey:(id *)a8;
- (VNImageBuffer)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5;
- (VNImageBuffer)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageBuffer)initWithCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5;
- (VNImageBuffer)initWithCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7;
- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5;
- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 options:(id)a4;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageBuffer)initWithData:(id)a3 orientation:(unsigned int)a4 options:(id)a5;
- (VNImageBuffer)initWithData:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (VNImageBuffer)initWithURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5;
- (VNImageBuffer)initWithURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6;
- (__CVBuffer)createBufferWithMaxSideLengthOf:(unint64_t)a3 pixelFormat:(unsigned int)a4 options:(id)a5 error:(id *)a6;
- (__CVBuffer)createCroppedBufferWithMaxSideLengthOf:(unint64_t)a3 cropRect:(CGRect)a4 pixelFormat:(unsigned int)a5 options:(id)a6 error:(id *)a7 pixelBufferRepsCacheKey:(id *)a8;
- (__CVBuffer)cropAndScaleBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 cropRect:(CGRect)a5 format:(unsigned int)a6 imageCropAndScaleOption:(unint64_t)a7 options:(id)a8 error:(id *)a9 calculatedNormalizedOriginOffset:(CGPoint *)a10 calculatedScaleX:(double *)a11 calculatedScaleY:(double *)a12 pixelBufferRepsCacheKey:(id *)a13;
- (id)_optionsWithOverridingOptions:(uint64_t)a1;
- (id)augmentedBuffersWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 options:(id)a6 augmentationOptions:(id)a7 error:(id *)a8;
- (id)augmentedCroppedBuffersWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 cropRect:(CGRect)a6 options:(id)a7 augmentationOptions:(id)a8 error:(id *)a9;
- (id)debugQuickLookObject;
- (id)fileURL;
- (id)initWithOptions:(int)a3 orientation:(void *)a4 session:;
- (id)sequencedRequestPreviousObservationsKey;
- (int)aspect;
- (int)aspectForRegionOfInterest:(CGRect)a3;
- (uint64_t)_cropCIImage:(CVPixelBufferRef *)a3 outBuffer:(unint64_t)a4 width:(unint64_t)a5 height:(int)a6 format:(int)a7 cropRect:(void *)a8 performCrop:(double)a9 options:(double)a10 rotate90CCW:(double)a11 error:(double)a12;
- (uint64_t)_cropCVPixelBuffer:(CVPixelBufferRef *)a3 outBuffer:(unint64_t)a4 width:(unint64_t)a5 height:(int)a6 format:(int)a7 cropRect:(void *)a8 performCrop:(CGFloat)a9 options:(CGFloat)a10 rotate90CCW:(CGFloat)a11 error:(CGFloat)a12;
- (uint64_t)_cropImageSourceManager:(CVPixelBufferRef *)a3 outBuffer:(unint64_t)a4 width:(unint64_t)a5 height:(int)a6 format:(int)a7 cropRect:(void *)a8 performCrop:(double)a9 options:(double)a10 rotate90CCW:(double)a11 error:(double)a12;
- (uint64_t)_croppedBufferWithWidth:(uint64_t)a3 height:(uint64_t)a4 format:(void *)a5 cropRect:(void *)a6 options:(void *)a7 error:(char)a8 pixelBufferRepsCacheKey:(CGFloat)a9 rotate90CCW:(CGFloat)a10;
- (uint64_t)calculateOrientationCorrectedImageDimensions;
- (unint64_t)height;
- (unint64_t)width;
- (void)_baseCIImage;
- (void)_isRectOutOfBounds:(CGFloat)a3;
- (void)dealloc;
@end

@implementation VNImageBuffer

- (id)augmentedCroppedBuffersWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 cropRect:(CGRect)a6 options:(id)a7 augmentationOptions:(id)a8 error:(id *)a9
{
  width = a6.size.width;
  rect = a6.size.height;
  y = a6.origin.y;
  x = a6.origin.x;
  v286[9] = *MEMORY[0x1E69E9840];
  v11 = a7;
  v214 = a8;
  v206 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v212 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [(VNImageBuffer *)self width];
  v13 = [(VNImageBuffer *)self height];
  v288.origin.x = x;
  v288.origin.y = y;
  v288.size.width = width;
  v288.size.height = rect;
  v14 = v12;
  v15 = v13;
  if (CGRectIsInfinite(v288))
  {
    v204 = 0;
  }

  else
  {
    v289.origin.x = 0.0;
    v289.origin.y = 0.0;
    v289.size.width = v12;
    v289.size.height = v13;
    v290.origin.x = x;
    v290.origin.y = y;
    v290.size.width = width;
    v290.size.height = rect;
    v204 = !CGRectEqualToRect(v289, v290);
  }

  v286[0] = @"VNImageBufferAugmentationApplePipeline";
  v286[1] = @"VNImageBufferAugmentationBlur";
  v286[2] = @"VNImageBufferAugmentationNoise";
  v286[3] = @"VNImageBufferAugmentationRotation";
  v286[4] = @"VNImageBufferAugmentationFlipHorizontal";
  v286[5] = @"VNImageBufferAugmentationFlipVertical";
  v286[6] = @"VNImageBufferAugmentationShear";
  v286[7] = @"VNImageBufferAugmentationExposure";
  v286[8] = @"VNImageBufferAugmentationRandomCrop";
  v205 = [MEMORY[0x1E695DEC8] arrayWithObjects:v286 count:9];
  v210 = [(VNImageBuffer *)self _optionsWithOverridingOptions:v11];

  v16 = [v214 allKeys];
  v17 = [v16 firstObjectCommonWithArray:v205];
  v18 = v17 == 0;

  if (!v18)
  {
    v220 = [v214 objectForKey:@"VNImageBufferAugmentationApplePipeline"];
    if (v220)
    {
      texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a3 height:a4 pixelFormatType:a5 error:a9];
      if (!texture[0])
      {
        goto LABEL_219;
      }

      v19 = v210;
      v20 = v19;
      if (!self)
      {

        goto LABEL_219;
      }

      origPixelBuffer = self->_origPixelBuffer;
      if (origPixelBuffer)
      {
        v22 = CFAutorelease(origPixelBuffer);
      }

      else
      {
        v24 = [(VNImageBuffer *)self _baseCIImage];
        v22 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:[(VNImageBuffer *)self height] height:875704422 pixelFormatType:a9 error:?];
        if (v22)
        {
          v25 = self->_passedInCIContext;
          v26 = [(VNImageBuffer *)self session];
          v27 = [v26 vnciContextManager];

          if (v25)
          {
            v28 = 0;
          }

          else
          {
            v29 = [(VNCIContextManager *)v27 waitAndGetAvailableContextFromOptions:0 error:?];
            v30 = v29;
            if (v29)
            {
              v31 = *(v29 + 8);
            }

            else
            {
              v31 = 0;
            }

            v25 = v31;
            v28 = v30;
          }

          [(CIContext *)v25 render:v24 toCVPixelBuffer:v22];
          v22 = CFAutorelease(v22);
          [(VNCIContextManager *)v27 releaseContext:v28];
        }
      }

      if (!v22)
      {
        goto LABEL_219;
      }

      if (![(VNImageBuffer *)self _cropCVPixelBuffer:v22 outBuffer:texture width:a3 height:a4 format:a5 cropRect:v204 performCrop:v20 options:x rotate90CCW:y error:width, rect, 0, a9])
      {
        goto LABEL_219;
      }

      [v206 addObject:texture[0]];
      CVPixelBufferRelease(texture[0]);
      texture[0] = 0;
      texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a3 height:a4 pixelFormatType:a5 error:a9];
      if (!texture[0])
      {
        goto LABEL_219;
      }

      v32 = [(VNImageBuffer *)self _baseCIImage];
      v33 = [(VNImageBuffer *)&self->super.isa _cropCIImage:v32 outBuffer:texture width:a3 height:a4 format:a5 cropRect:v204 performCrop:v20 options:x rotate90CCW:y error:width, rect, 0, a9];

      if ((v33 & 1) == 0)
      {
        goto LABEL_219;
      }

      [v206 addObject:texture[0]];
      CVPixelBufferRelease(texture[0]);
      texture[0] = 0;
      if (self->_imageSourceManager)
      {
        texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a3 height:a4 pixelFormatType:a5 error:a9];
        if (!texture[0] || ![(VNImageBuffer *)self _cropImageSourceManager:texture outBuffer:a3 width:a4 height:a5 format:v204 cropRect:v20 performCrop:x options:y rotate90CCW:width error:rect, 0, a9])
        {
          goto LABEL_219;
        }

        [v206 addObject:texture[0]];
        CVPixelBufferRelease(texture[0]);
      }
    }

    v34 = [(VNImageBuffer *)self _baseCIImage];
    [v212 addObject:v34];

    v35 = [v214 objectForKey:@"VNImageBufferAugmentationBlur"];

    v221 = v35;
    if (v35)
    {
      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v37 = [v35 objectForKey:@"VNImageBufferAugmentationOptionMaxRange"];
      v38 = v37;
      if (v37)
      {
        [v37 floatValue];
        v40 = v39;
      }

      else
      {
        v40 = 32.0;
      }

      v41 = [v221 objectForKey:@"VNImageBufferAugmentationOptionMinRange"];

      v42 = v41;
      if (v41)
      {
        [v41 floatValue];
        v44 = v43;
      }

      else
      {
        v44 = 1.0;
      }

      v45 = [v221 objectForKey:@"VNImageBufferAugmentationOptionNumberOfBuffers"];

      if (v45)
      {
        v242 = [v45 intValue];
      }

      else
      {
        v242 = 10;
      }

      v46 = [v221 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v46)
      {
        srand([v46 intValue]);
        v47 = (v40 - v44) * 4.6566e-10;
      }

      else
      {
        v47 = (v40 - v44) / v242;
      }

      v48 = [MEMORY[0x1E695F648] filterWithName:@"CIDiscBlur"];
      v277 = 0u;
      v278 = 0u;
      v275 = 0u;
      v276 = 0u;
      obj = v212;
      v49 = [obj countByEnumeratingWithState:&v275 objects:v285 count:16];
      if (v49)
      {
        v228 = *MEMORY[0x1E695FAB0];
        v232 = *v276;
        v50 = *MEMORY[0x1E695FB10];
        do
        {
          v51 = 0;
          v237 = v49;
          do
          {
            if (*v276 != v232)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v275 + 1) + 8 * v51);
            v53 = [v52 imageByClampingToExtent];
            [v48 setValue:v53 forKey:v228];

            v55 = v242;
            for (i = v44; v55; --v55)
            {
              *&v54 = i;
              v57 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
              [v48 setValue:v57 forKey:v50];

              v58 = [v48 outputImage];
              [v52 extent];
              v59 = [v58 imageByCroppingToRect:?];

              [v36 addObject:v59];
              if (v46)
              {
                i = v44 + (random() * v47);
              }

              else
              {
                i = v47 + i;
              }
            }

            ++v51;
          }

          while (v51 != v237);
          v49 = [obj countByEnumeratingWithState:&v275 objects:v285 count:16];
        }

        while (v49);
      }

      v212 = v36;
    }

    v60 = [v214 objectForKey:@"VNImageBufferAugmentationExposure"];

    v222 = v60;
    if (v60)
    {
      v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v62 = [v60 objectForKey:@"VNImageBufferAugmentationOptionMaxRange"];
      v63 = v62;
      if (v62)
      {
        [v62 floatValue];
        v65 = v64;
      }

      else
      {
        v65 = 2.0;
      }

      v66 = [v222 objectForKey:@"VNImageBufferAugmentationOptionMinRange"];

      v67 = v66;
      if (v66)
      {
        [v66 floatValue];
        v69 = v68;
      }

      else
      {
        v69 = -2.0;
      }

      v70 = [v222 objectForKey:@"VNImageBufferAugmentationOptionNumberOfBuffers"];

      if (v70)
      {
        v243 = [v70 intValue];
      }

      else
      {
        v243 = 10;
      }

      v71 = [v222 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v71)
      {
        srand([v71 intValue]);
        v72 = (v65 - v69) * 4.6566e-10;
      }

      else
      {
        v72 = (v65 - v69) / v243;
      }

      v73 = [MEMORY[0x1E695F648] filterWithName:@"CIExposureAdjust"];
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      v229 = v212;
      v74 = [v229 countByEnumeratingWithState:&v271 objects:v284 count:16];
      if (v74)
      {
        v233 = *MEMORY[0x1E695FAB0];
        v238 = *v272;
        v75 = *MEMORY[0x1E695FAA0];
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v272 != v238)
            {
              objc_enumerationMutation(v229);
            }

            [v73 setValue:*(*(&v271 + 1) + 8 * j) forKey:v233];
            v78 = v243;
            for (k = v69; v78; --v78)
            {
              *&v77 = k;
              v80 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
              [v73 setValue:v80 forKey:v75];

              v81 = [v73 outputImage];
              [v61 addObject:v81];

              if (v71)
              {
                k = v69 + (random() * v72);
              }

              else
              {
                k = v72 + k;
              }
            }
          }

          v74 = [v229 countByEnumeratingWithState:&v271 objects:v284 count:16];
        }

        while (v74);
      }

      v212 = v61;
    }

    v82 = [v214 objectForKey:@"VNImageBufferAugmentationShear"];

    v223 = v82;
    if (v82)
    {
      v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v84 = [v82 objectForKey:@"VNImageBufferAugmentationOptionMaxRange"];
      v85 = v84;
      if (v84)
      {
        [v84 floatValue];
        v87 = v86;
      }

      else
      {
        v87 = 10.0;
      }

      v88 = [v82 objectForKey:@"VNImageBufferAugmentationOptionMinRange"];

      v89 = v88;
      if (v88)
      {
        [v88 floatValue];
        v91 = v90;
      }

      else
      {
        v91 = -10.0;
      }

      v92 = [v223 objectForKey:@"VNImageBufferAugmentationOptionNumberOfBuffers"];

      if (v92)
      {
        v244 = [v92 intValue];
      }

      else
      {
        v244 = 10;
      }

      v93 = [v223 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v93)
      {
        srand([v93 intValue]);
        v94 = (v87 - v91) * 4.6566e-10;
      }

      else
      {
        v94 = (v87 - v91) / v244;
      }

      v269 = 0u;
      v270 = 0u;
      v267 = 0u;
      v268 = 0u;
      v234 = v212;
      v95 = [v234 countByEnumeratingWithState:&v267 objects:v283 count:16];
      if (v95)
      {
        v239 = *v268;
        v96 = MEMORY[0x1E695EFD0];
        do
        {
          for (m = 0; m != v95; ++m)
          {
            if (*v268 != v239)
            {
              objc_enumerationMutation(v234);
            }

            if (v244)
            {
              v98 = *(*(&v267 + 1) + 8 * m);
              v99 = v244;
              v100 = v91;
              do
              {
                v101 = *v96;
                v265 = *(v96 + 24);
                v266 = *(v96 + 40);
                texture[0] = v101;
                texture[1] = 0;
                *&texture[2] = v100 * 3.14159265 / -180.0;
                v102 = [v98 imageByApplyingTransform:texture];
                [v83 addObject:v102];

                if (v93)
                {
                  v100 = v91 + (random() * v94);
                }

                else
                {
                  v100 = v94 + v100;
                }

                --v99;
              }

              while (v99);
            }
          }

          v95 = [v234 countByEnumeratingWithState:&v267 objects:v283 count:16];
        }

        while (v95);
      }

      v212 = v83;
    }

    v103 = [v214 objectForKey:@"VNImageBufferAugmentationRotation"];

    v224 = v103;
    if (v103)
    {
      v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v105 = [v103 objectForKey:@"VNImageBufferAugmentationOptionMaxRange"];
      v106 = v105;
      if (v105)
      {
        [v105 floatValue];
        v108 = v107;
      }

      else
      {
        v108 = 10.0;
      }

      v109 = [v224 objectForKey:@"VNImageBufferAugmentationOptionMinRange"];

      v110 = v109;
      if (v109)
      {
        [v109 floatValue];
        v112 = v111;
      }

      else
      {
        v112 = -10.0;
      }

      v113 = [v224 objectForKey:@"VNImageBufferAugmentationOptionNumberOfBuffers"];

      if (v113)
      {
        v245 = [v113 intValue];
      }

      else
      {
        v245 = 10;
      }

      v114 = [v224 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v114)
      {
        srand([v114 intValue]);
        v115 = (v108 - v112) * 4.6566e-10;
      }

      else
      {
        v115 = (v108 - v112) / v245;
      }

      v116 = [MEMORY[0x1E695F648] filterWithName:@"CIStraightenFilter"];
      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v230 = v212;
      v117 = [v230 countByEnumeratingWithState:&v260 objects:v282 count:16];
      if (v117)
      {
        v240 = *v261;
        v235 = *MEMORY[0x1E695FAB0];
        v118 = *MEMORY[0x1E695FA38];
        do
        {
          for (n = 0; n != v117; ++n)
          {
            if (*v261 != v240)
            {
              objc_enumerationMutation(v230);
            }

            [v116 setValue:*(*(&v260 + 1) + 8 * n) forKey:v235];
            v120 = v245;
            for (ii = v112; v120; --v120)
            {
              v122 = [MEMORY[0x1E696AD98] numberWithDouble:ii * 3.14159265 / 180.0];
              [v116 setValue:v122 forKey:v118];

              v123 = [v116 outputImage];
              [v104 addObject:v123];

              if (v114)
              {
                ii = v112 + (random() * v115);
              }

              else
              {
                ii = v115 + ii;
              }
            }
          }

          v117 = [v230 countByEnumeratingWithState:&v260 objects:v282 count:16];
        }

        while (v117);
      }

      v212 = v104;
    }

    v203 = [v214 objectForKey:@"VNImageBufferAugmentationNoise"];

    if (v203)
    {
      v246 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v124 = [v203 objectForKey:@"VNImageBufferAugmentationOptionMaxRange"];
      v125 = v124;
      if (v124)
      {
        [v124 floatValue];
        v127 = v126;
      }

      else
      {
        v127 = 0.0;
      }

      v128 = [v203 objectForKey:@"VNImageBufferAugmentationOptionMinRange"];

      v129 = v128;
      if (v128)
      {
        [v128 floatValue];
        v131 = v130;
      }

      else
      {
        v131 = 1.0;
      }

      v132 = [v203 objectForKey:@"VNImageBufferAugmentationOptionNumberOfBuffers"];

      v133 = v132;
      if (v132)
      {
        v241 = [v132 intValue];
      }

      else
      {
        v241 = 10;
      }

      v134 = [v203 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v134)
      {
        srand([v134 intValue]);
        v135 = (v127 - v131) * 4.6566e-10;
      }

      else
      {
        v135 = (v127 - v131) / v241;
      }

      v231 = [MEMORY[0x1E695F648] filterWithName:@"CIRandomGenerator"];
      v136 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMonochrome"];
      v137 = [MEMORY[0x1E695F648] filterWithName:@"CIMultiplyBlendMode"];
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v215 = v212;
      v138 = [v215 countByEnumeratingWithState:&v256 objects:v281 count:16];
      if (v138)
      {
        obja = *v257;
        v139 = *MEMORY[0x1E695FAB0];
        v225 = *MEMORY[0x1E695FA78];
        v219 = *MEMORY[0x1E695FA48];
        v140 = *MEMORY[0x1E695FAB8];
        do
        {
          v236 = v138;
          for (jj = 0; jj != v236; jj = jj + 1)
          {
            if (*v257 != obja)
            {
              objc_enumerationMutation(v215);
            }

            v142 = *(*(&v256 + 1) + 8 * jj);
            v143 = [v231 outputImage];
            [v136 setValue:v143 forKey:v139];

            v144 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
            [v136 setValue:v144 forKey:v225];

            v145 = [v142 imageByClampingToExtent];
            [v137 setValue:v145 forKey:v219];

            v147 = v241;
            for (kk = v131; v147; --v147)
            {
              *&v146 = kk;
              v149 = [MEMORY[0x1E696AD98] numberWithFloat:v146];
              [v136 setValue:v149 forKey:v140];

              v150 = [v136 outputImage];
              [v137 setValue:v150 forKey:v139];

              v151 = [v137 outputImage];
              [v246 addObject:v151];

              if (v134)
              {
                kk = v131 + (random() * v135);
              }

              else
              {
                kk = v135 + kk;
              }
            }
          }

          v138 = [v215 countByEnumeratingWithState:&v256 objects:v281 count:16];
        }

        while (v138);
      }

      v212 = v246;
    }

    v152 = [v214 objectForKey:@"VNImageBufferAugmentationFlipHorizontal"];

    v153 = [v214 objectForKey:@"VNImageBufferAugmentationFlipVertical"];

    if (v152 != 0 || v153 != 0)
    {
      v154 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v254 = 0u;
      v255 = 0u;
      v252 = 0u;
      v253 = 0u;
      v247 = v212;
      v155 = [v247 countByEnumeratingWithState:&v252 objects:v280 count:16];
      if (v155)
      {
        v156 = *v253;
        do
        {
          for (mm = 0; mm != v155; ++mm)
          {
            if (*v253 != v156)
            {
              objc_enumerationMutation(v247);
            }

            v158 = *(*(&v252 + 1) + 8 * mm);
            v159 = [v158 imageByCroppingToRect:{0.0, 0.0, v14, v15}];
            v160 = [v159 imageByApplyingCGOrientation:2];

            v161 = [v158 imageByCroppingToRect:{x, y, width, rect}];
            v162 = [v161 imageByApplyingCGOrientation:4];

            [v154 addObject:v158];
            if (v152)
            {
              [v154 addObject:v160];
            }

            if (v153)
            {
              [v154 addObject:v162];
            }
          }

          v155 = [v247 countByEnumeratingWithState:&v252 objects:v280 count:16];
        }

        while (v155);
      }

      v212 = v154;
    }

    v220 = [v214 objectForKey:@"VNImageBufferAugmentationRandomCrop"];

    if (v220)
    {
      v163 = [v220 objectForKey:@"VNImageBufferAugmentationOptionMaxRange"];
      v164 = v163;
      if (v163)
      {
        [v163 floatValue];
        v166 = v165;
      }

      else
      {
        v166 = 0.1;
      }

      v170 = [v220 objectForKey:@"VNImageBufferAugmentationOptionMinRange"];

      v171 = v170;
      if (v170)
      {
        [v170 floatValue];
        v169 = v172;
      }

      else
      {
        v169 = 0.1;
      }

      v173 = [v220 objectForKey:@"VNImageBufferAugmentationOptionNumberOfBuffers"];

      v174 = v173;
      if (v173)
      {
        v167 = [v173 intValue];
      }

      else
      {
        v167 = 10;
      }

      v175 = [v220 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v175)
      {
        v176 = [v175 intValue];
      }

      else
      {
        v176 = 0;
      }

      srand(v176);

      v168 = fmaxf((v169 - v166) / v167, 0.001);
    }

    else
    {
      v167 = 10;
      v168 = 0.001;
      v166 = 0.1;
      v169 = 0.1;
    }

    texture[0] = 0;
    v177 = [v212 count];
    if (v220 || v177 >= 2)
    {
      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v178 = v212;
      v179 = [v178 countByEnumeratingWithState:&v248 objects:v279 count:16];
      if (v179)
      {
        v180 = *v249;
        v181 = MEMORY[0x1E695EFF8];
        while (2)
        {
          for (nn = 0; nn != v179; ++nn)
          {
            if (*v249 != v180)
            {
              objc_enumerationMutation(v178);
            }

            v183 = *(*(&v248 + 1) + 8 * nn);
            if (v220)
            {
              v184 = v166;
              if (v166 <= v169)
              {
                while (1)
                {
                  v187 = [(VNImageBuffer *)self height];
                  v188 = [(VNImageBuffer *)self width];
                  v189 = 1.0 - v184;
                  v190 = width * v189;
                  v191 = ceilf(v190);
                  v185 = v191;
                  *&v189 = rect * v189;
                  *&v189 = ceilf(*&v189);
                  v186 = *&v189;
                  v192 = fminf(v191, *&v189) < 1.0;
                  if (a9 && v192)
                  {
                    v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"RandomCrop produced an invalid crop for width %f height %f", *&v185, *&v186];
                    *a9 = [VNError errorWithCode:14 message:v201];

                    goto LABEL_218;
                  }

                  if (v167)
                  {
                    break;
                  }

LABEL_206:
                  v184 = v168 + v184;
                  if (v184 > v169)
                  {
                    goto LABEL_198;
                  }
                }

                v193 = v187 - v186;
                v194 = v188 - v185;
                v195 = v167;
                while (1)
                {
                  v196 = random();
                  texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a3 height:a4 pixelFormatType:a5 error:a9];
                  if (!texture[0])
                  {
                    break;
                  }

                  v197 = vcvts_n_f32_s64(v196, 0x1FuLL);
                  v198 = v194 * v197;
                  *&v197 = v193 * v197;
                  if (![(VNImageBuffer *)&self->super.isa _cropCIImage:v183 outBuffer:texture width:a3 height:a4 format:a5 cropRect:v204 performCrop:v210 options:ceilf(v198) rotate90CCW:ceilf(*&v197) error:v185, v186, 0, a9])
                  {
                    break;
                  }

                  [v206 addObject:texture[0]];
                  CVPixelBufferRelease(texture[0]);
                  texture[0] = 0;
                  if (!--v195)
                  {
                    goto LABEL_206;
                  }
                }

LABEL_218:

                goto LABEL_219;
              }

              v185 = *(MEMORY[0x1E695F058] + 16);
              v186 = *(MEMORY[0x1E695F058] + 24);
LABEL_198:
              x = *v181;
              y = v181[1];
              width = v185;
              rect = v186;
            }

            else
            {
              texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a3 height:a4 pixelFormatType:a5 error:a9];
              if (!texture[0] || ![(VNImageBuffer *)&self->super.isa _cropCIImage:v183 outBuffer:texture width:a3 height:a4 format:a5 cropRect:v204 performCrop:v210 options:x rotate90CCW:y error:width, rect, 0, a9])
              {
                goto LABEL_218;
              }

              [v206 addObject:texture[0]];
              CVPixelBufferRelease(texture[0]);
              texture[0] = 0;
            }
          }

          v179 = [v178 countByEnumeratingWithState:&v248 objects:v279 count:16];
          if (v179)
          {
            continue;
          }

          break;
        }
      }
    }

    texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a3 height:a4 pixelFormatType:a5 error:a9];
    if (texture[0])
    {
      v199 = [(VNImageBuffer *)self _baseCIImage];
      v200 = [(VNImageBuffer *)&self->super.isa _cropCIImage:v199 outBuffer:texture width:a3 height:a4 format:a5 cropRect:v204 performCrop:v210 options:x rotate90CCW:y error:width, rect, 0, a9];

      if (v200)
      {
        [v206 addObject:texture[0]];
        CVPixelBufferRelease(texture[0]);
        v23 = v206;
LABEL_220:

        goto LABEL_221;
      }
    }

LABEL_219:
    v23 = 0;
    goto LABEL_220;
  }

  if (a9)
  {
    [VNError errorWithCode:14 message:@"The augmentationOptions do not conatain any of the VNImageBufferAugmentation keys"];
    *a9 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_221:

  return v23;
}

- (id)_optionsWithOverridingOptions:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 88) mutableCopy];
    [v4 addEntriesFromDictionary:v3];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_cropCVPixelBuffer:(CVPixelBufferRef *)a3 outBuffer:(unint64_t)a4 width:(unint64_t)a5 height:(int)a6 format:(int)a7 cropRect:(void *)a8 performCrop:(CGFloat)a9 options:(CGFloat)a10 rotate90CCW:(CGFloat)a11 error:(CGFloat)a12
{
  v134.x = a9;
  v134.y = a10;
  v135 = a11;
  v136 = a12;
  v25 = a8;
  if (a1 && [VNValidationUtilities validateNonNilOptionsDictionary:v25 selector:sel__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error_ error:a14])
  {
    [VNError VNAssert:a3 != 0 log:@"Internal error: missing target buffer for crop operations"];
    v108 = a6;
    v110 = a4;
    v111 = a5;
    v109 = a3;
    [a1 fullImageBufferRect];
    v145.origin.x = a9;
    v145.origin.y = a10;
    v145.size.width = a11;
    v145.size.height = a12;
    v139 = CGRectIntersection(v138, v145);
    height = v139.size.height;
    if (a10 >= 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = -a10;
    }

    if (a9 >= 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = -a9;
    }

    v132.f64[0] = v28;
    v132.f64[1] = v27;
    rect = v139.size.width;
    *&v133 = v139.size.width;
    *(&v133 + 1) = *&v139.size.height;
    v29 = [(VNImageBuffer *)a1 _isRectOutOfBounds:a9, a10, a11, a12];
    if (v29)
    {
      v30 = a4 / a11;
      v31 = a5 / a12;
      v28 = v28 * v30;
      v27 = (a12 - (v27 + height)) * v31;
      v132.f64[0] = v28;
      v132.f64[1] = v27;
      height = height * v31;
      rect = rect * v30;
      *&v133 = rect;
      *(&v133 + 1) = height;
    }

    [a1 fullImageBufferRect];
    v146.origin = v134;
    v146.size.width = v135;
    v146.size.height = v136;
    v141 = CGRectIntersection(v140, v146);
    x = v141.origin.x;
    y = v141.origin.y;
    width = v141.size.width;
    v35 = v141.size.height;
    v134.x = v141.origin.x;
    v134.y = v141.origin.y;
    v135 = v141.size.width;
    v136 = v141.size.height;
    v36 = [a1 orientation];
    v37 = CVPixelBufferGetWidth(a2);
    v38 = CVPixelBufferGetHeight(a2);
    objc_opt_self();
    v45 = v37;
    v46 = v38;
    if (v36 <= 4)
    {
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v47 = v45 - (x + width);
          goto LABEL_34;
        }

LABEL_33:
        v47 = x;
        goto LABEL_34;
      }

      if (v36 == 1)
      {
LABEL_32:
        y = v46 - (y + v35);
        goto LABEL_33;
      }

      if (v36 == 2)
      {
        y = v46 - (y + v35);
        v47 = v45 - (x + width);
LABEL_34:
        v51 = width;
LABEL_35:
        v131 = 0;
        v52 = [VNValidationUtilities getOptionalObject:&v131 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:v25 error:a14];
        v53 = v131;
        if (!v52)
        {
          v48 = 0;
LABEL_75:

          goto LABEL_76;
        }

        v107 = v53;
        if (v53)
        {
          v54 = [v53 integerValue];
        }

        else
        {
          v54 = 1;
        }

        v130 = -1;
        if ((VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(v36, v54, &v130, a13, a14) & 1) == 0)
        {
          v48 = 0;
LABEL_74:
          v53 = v107;
          goto LABEL_75;
        }

        v55 = *v109;
        PixelFormatType = CVPixelBufferGetPixelFormatType(*v109);
        v56 = CVPixelBufferGetWidth(v55);
        cf = v55;
        v57 = CVPixelBufferGetHeight(v55);
        v58 = [a1 session];
        v106 = [v58 vnvtSessionManager];
        v59 = v47;
        v60 = y;
        v61 = v51;
        v62 = v35;
        r2 = v56;
        v63 = v57;

        if (v130 == 1)
        {
          if (v29)
          {
            v142.origin.x = v28;
            v142.origin.y = v27;
            v142.size.width = rect;
            v142.size.height = height;
            v64 = v106;
            v143 = CGRectIntegral(v142);
            v147.origin.x = 0.0;
            v147.origin.y = 0.0;
            v147.size.width = v56;
            v147.size.height = v57;
            v144 = CGRectIntersection(v143, v147);
            v132.f64[0] = v144.origin.x;
            v132.f64[1] = v144.origin.y;
            *&v133 = v144.size.width;
            *(&v133 + 1) = *&v144.size.height;
            VNAlignRectToSubsampledCVPixelBufferConstraint(&v132, cf);
            v65 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:*(&v133 + 1) height:PixelFormatType pixelFormatType:a14 error:?];
            if (v65)
            {
              if (([(VNImageBuffer *)v59 _VNVTPixelTransferImageForSource:v60 destinationBuffer:v61 cropRect:v62 performCrop:VNImageBuffer vtSessionManager:a2 error:v65, a7, v106, a14]& 1) != 0)
              {
                v66 = CVPixelBufferGetPixelFormatType(v65);
                v67 = [(VNVTSessionManager *)v106 waitAndGetAvailablePixelRotationSessionForInputPixelFormat:v66 outputPixelFormat:PixelFormatType rotation:0 flipHorizontal:0 flipVertical:0 error:a14];
                if (v67)
                {
                  v68 = VTPixelRotationSessionRotateSubImage();
                  if (!v68)
                  {
                    v89 = 1;
LABEL_69:
                    [(VNVTSessionManager *)v106 releasePixelRotationSession:v67];
                    CVPixelBufferRelease(v65);

                    if (v89)
                    {
LABEL_70:
                      if (v108 == 1278226488)
                      {
                        *v109 = 0;
                        v114[0] = MEMORY[0x1E69E9820];
                        v114[1] = 3221225472;
                        v114[2] = __113__VNImageBuffer__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error___block_invoke_2;
                        v114[3] = &__block_descriptor_60_e25_B24__0____CVBuffer__8__16l;
                        v114[4] = v110;
                        v114[5] = v111;
                        v115 = 1278226488;
                        v114[6] = v109;
                        VNExecuteBlockWithPixelBuffer(cf, 0, v114, a14);
                      }

                      v137 = 1;
                    }

LABEL_73:

                    v48 = v137;
                    goto LABEL_74;
                  }

                  if (a14)
                  {
                    v69 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v70 = CFGetRetainCount(v65);
                    v71 = CVPixelBufferGetPixelFormatType(v65);
                    v72 = [v69 initWithFormat:@"VNImageBuffer - Failed to transfer bufferForTransferSubImage                                                                                 (retain count = %ld, type = %u) to vtSessionDestBuffer                                                                                 (retain count = %ld, type = %u). Error %d", v70, v71, CFGetRetainCount(cf), PixelFormatType, v68];
                    *a14 = [VNError errorWithCode:3 message:v72];
                  }
                }
              }

              else
              {
                v67 = 0;
              }

              v89 = 0;
              v137 = 0;
              goto LABEL_69;
            }
          }

          else
          {
            v64 = v106;
            if (([(VNImageBuffer *)v59 _VNVTPixelTransferImageForSource:v60 destinationBuffer:v61 cropRect:v62 performCrop:VNImageBuffer vtSessionManager:a2 error:cf, a7, v106, a14]& 1) != 0)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          if (v130 >= 9)
          {
            v73 = objc_alloc(MEMORY[0x1E696AEC0]);
            v74 = [v73 initWithFormat:@"VNImageBuffer - wrong crop orientation for rotation: %d", v130];
            v64 = v106;
            if (a14)
            {
              *a14 = [VNError errorForInternalErrorWithLocalizedDescription:v74];
            }

            v75 = [v74 UTF8String];
            VNValidatedLog(4, @"%s", v76, v77, v78, v79, v80, v81, v75);
            v137 = 0;

            goto LABEL_73;
          }

          v82 = [objc_opt_class() mapOrientationToRotationDegrees];
          v85 = *(v82 + 8);
          v83 = v82 + 8;
          v84 = v85;
          if (!v85)
          {
            goto LABEL_64;
          }

          v86 = v83;
          do
          {
            if (*(v84 + 28) >= v130)
            {
              v86 = v84;
            }

            v84 = *(v84 + 8 * (*(v84 + 28) < v130));
          }

          while (v84);
          if (v86 != v83 && v130 >= *(v86 + 28))
          {
            v91 = *(v86 + 32);
            v93 = v130 == 2 || v130 == 5;
            if (v130 <= 4)
            {
              v94 = v110;
            }

            else
            {
              v94 = v111;
            }

            if (v130 <= 4)
            {
              v95 = v111;
            }

            else
            {
              v95 = v110;
            }

            v96 = v130 == 7 || v130 == 4;
            recta = v96;
            v97 = [(VNImageBuffer *)a1 _createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:v94 height:v95 format:PixelFormatType options:v25 outPooled:0 error:a14];
            v64 = v106;
            if (v97)
            {
              if (([(VNImageBuffer *)v59 _VNVTPixelTransferImageForSource:v60 destinationBuffer:v61 cropRect:v62 performCrop:VNImageBuffer vtSessionManager:a2 error:v97, a7, v106, a14]& 1) != 0 && (v98 = CVPixelBufferGetPixelFormatType(v97), [(VNVTSessionManager *)v106 waitAndGetAvailablePixelRotationSessionForInputPixelFormat:v98 outputPixelFormat:PixelFormatType rotation:v91 flipHorizontal:v93 flipVertical:recta error:a14], (v99 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v116[0] = MEMORY[0x1E69E9820];
                v116[1] = 3221225472;
                v118 = v132;
                v116[2] = __113__VNImageBuffer__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error___block_invoke;
                v116[3] = &unk_1E77B2AA8;
                v129 = v29;
                v119 = v133;
                v120 = cf;
                v124 = v54;
                v121 = r2;
                v122 = v63;
                v100 = v99;
                v117 = v100;
                v123 = v97;
                v125 = v98;
                v126 = PixelFormatType;
                v127 = v130;
                v128 = v91;
                v101 = VNExecuteBlockWithPixelBuffer(a2, 1uLL, v116, a14);
                if ((v101 & 1) == 0)
                {
                  v137 = 0;
                }
              }

              else
              {
                v100 = 0;
                v101 = 0;
                v137 = 0;
              }

              CVPixelBufferRelease(v97);
              [(VNVTSessionManager *)v106 releasePixelRotationSession:v100];

              if ((v101 & 1) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_70;
            }
          }

          else
          {
LABEL_64:
            v64 = v106;
            if (a14)
            {
              v87 = objc_alloc(MEMORY[0x1E696AEC0]);
              v88 = [v87 initWithFormat:@"Invalid crop orientation: %d", v130];
              *a14 = [VNError errorForInternalErrorWithLocalizedDescription:v88];
            }
          }
        }

        v137 = 0;
        goto LABEL_73;
      }

LABEL_31:
      VNValidatedLog(4, @"VNImageBuffer - invalid rotation case", v39, v40, v41, v42, v43, v44, v102);
      goto LABEL_32;
    }

    if (v36 > 6)
    {
      if (v36 == 7)
      {
        v50 = x + width;
        v49 = y;
        goto LABEL_29;
      }

      if (v36 != 8)
      {
        goto LABEL_31;
      }

      v47 = y;
    }

    else
    {
      if (v36 != 5)
      {
        v49 = v45 - (y + v35);
        v50 = x + width;
LABEL_29:
        y = v46 - v50;
        v47 = v49;
        goto LABEL_30;
      }

      v47 = v45 - (y + v35);
    }

    y = x;
LABEL_30:
    v51 = v35;
    v35 = width;
    goto LABEL_35;
  }

  v48 = 0;
LABEL_76:

  return v48;
}

- (void)_baseCIImage
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = v2;
LABEL_6:
      v1 = v3;
      goto LABEL_7;
    }

    if (a1[2])
    {
      v3 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:?];
      goto LABEL_6;
    }

    v5 = a1[5];
    if (v5)
    {
      v6 = *(v5 + 64);
      if (v6)
      {
        v1 = [MEMORY[0x1E695F658] imageWithContentsOfURL:v6];
      }

      else
      {
        v7 = v1[5];
        if (v7)
        {
          v8 = *(v7 + 72);
        }

        else
        {
          v8 = 0;
        }

        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

LABEL_7:

  return v1;
}

- (uint64_t)_cropCIImage:(CVPixelBufferRef *)a3 outBuffer:(unint64_t)a4 width:(unint64_t)a5 height:(int)a6 format:(int)a7 cropRect:(void *)a8 performCrop:(double)a9 options:(double)a10 rotate90CCW:(double)a11 error:(double)a12
{
  v24 = a2;
  v25 = a8;
  if (a1 && [VNValidationUtilities validateNonNilOptionsDictionary:v25 selector:sel__cropCIImage_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error_ error:a14])
  {
    [VNError VNAssert:a3 != 0 log:@"Internal error: missing target buffer for crop operations"];
    v26 = [a1 orientation];
    memset(&v73, 0, sizeof(v73));
    if (v24)
    {
      [v24 imageTransformForCGOrientation:v26];
    }

    else
    {
      memset(&v72, 0, sizeof(v72));
    }

    CGAffineTransformInvert(&v73, &v72);
    v72 = v73;
    v75.origin.x = a9;
    v75.origin.y = a10;
    v75.size.width = a11;
    v75.size.height = a12;
    v76 = CGRectApplyAffineTransform(v75, &v72);
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
    v71 = 0;
    v32 = [VNValidationUtilities getOptionalObject:&v71 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:v25 error:a14];
    v33 = v71;
    if (v32)
    {
      v67 = v33;
      if (v33)
      {
        v34 = [v33 integerValue];
      }

      else
      {
        v34 = 1;
      }

      v70 = -1;
      if (VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(v26, v34, &v70, a13, a14))
      {
        v66 = a1[7];
        v35 = [a1 session];
        v65 = [v35 vnciContextManager];

        if (v66)
        {
          v64 = 0;
        }

        else
        {
          v36 = [(VNCIContextManager *)v65 waitAndGetAvailableContextFromOptions:v25 error:a14];
          v64 = v36;
          if (v36)
          {
            v37 = *(v36 + 8);
          }

          else
          {
            v37 = 0;
          }

          v66 = v37;
        }

        v38 = v24;
        if (a7)
        {
          v39 = [MEMORY[0x1E695F658] clearImage];
          v40 = [v38 imageByCompositingOverImage:v39];

          v41 = [v40 imageByCroppingToRect:{x, y, width, height}];

          v38 = v41;
        }

        if (v70 <= 4)
        {
          v42 = a4;
        }

        else
        {
          v42 = a5;
        }

        if (v70 <= 4)
        {
          v43 = a5;
        }

        else
        {
          v43 = a4;
        }

        v44 = v43;
        v45 = v42;
        if (width != v42 || height != v44)
        {
          v46 = v45 / width;
          v47 = v44 / height;
          if (a7)
          {
            v48 = *MEMORY[0x1E695EFF8];
            v49 = *(MEMORY[0x1E695EFF8] + 8);
          }

          else
          {
            v48 = round(x * v46);
            v49 = round(y * v47);
          }

          if (v48 > 0.0)
          {
            v46 = v48 / x;
          }

          memset(&v72.c, 0, 32);
          if (v49 > 0.0)
          {
            v47 = v49 / y;
          }

          *&v72.a = 0uLL;
          CGAffineTransformMakeScale(&v72, v46, v47);
          v69 = v72;
          v50 = [v38 imageByApplyingTransform:&v69 highQualityDownsample:1];

          [v50 extent];
          v52 = v51;
          [v50 extent];
          CGAffineTransformMakeTranslation(&v69, -v52, -v53);
          v54 = [v50 imageByApplyingTransform:&v69 highQualityDownsample:1];

          v38 = [v54 imageByCroppingToRect:{v48, v49, v45, v44}];
        }

        [v38 extent];
        v56 = v55;
        [v38 extent];
        CGAffineTransformMakeTranslation(&v72, -v56, -v57);
        v58 = [v38 imageByApplyingTransform:&v72 highQualityDownsample:1];

        v59 = [v58 imageByApplyingOrientation:v70];

        if (v59)
        {
          v60 = VNColorspaceForFormat(a6, 0);
          v61 = *a3;
          v62 = CVPixelBufferGetWidth(*a3);
          [v66 render:v59 toCVPixelBuffer:v61 bounds:v60 colorSpace:{0.0, 0.0, v62, CVPixelBufferGetHeight(*a3)}];
          CGColorSpaceRelease(v60);
        }

        else
        {
          if (a14)
          {
            *a14 = [VNError errorWithCode:3 message:@"Extracting ROI from an image failed"];
          }

          v74 = 0;
        }

        [(VNCIContextManager *)v65 releaseContext:v64];
        if (v59)
        {
          v74 = 1;
        }

        v27 = v74;
      }

      else
      {
        v27 = 0;
      }

      v33 = v67;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (uint64_t)_cropImageSourceManager:(CVPixelBufferRef *)a3 outBuffer:(unint64_t)a4 width:(unint64_t)a5 height:(int)a6 format:(int)a7 cropRect:(void *)a8 performCrop:(double)a9 options:(double)a10 rotate90CCW:(double)a11 error:(double)a12
{
  v121 = *MEMORY[0x1E69E9840];
  v111 = a2;
  v25 = a8;
  if (!a1 || ![VNValidationUtilities validateNonNilOptionsDictionary:v25 selector:sel__cropImageSourceManager_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error_ error:a14])
  {
    goto LABEL_9;
  }

  if (a3)
  {
    v109 = [a1 orientation];
    v117 = 0;
    v26 = [VNValidationUtilities getOptionalObject:&v117 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:v25 error:a14];
    v27 = v117;
    v110 = v27;
    if (!v26 || (!v27 ? (v28 = 1) : (v28 = [v27 integerValue]), v116 = -1, (VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(v109, v28, &v116, a13, a14) & 1) == 0))
    {
      LOBYTE(v29) = 0;
LABEL_75:

      goto LABEL_76;
    }

    [VNError VNAssert:1 log:@"Internal error: needToUpscale cannot be NULL"];
    if (v28 <= 4)
    {
      v30 = a4;
    }

    else
    {
      v30 = a5;
    }

    v31 = v30;
    if (v28 <= 4)
    {
      v32 = a5;
    }

    else
    {
      v32 = a4;
    }

    if (a13)
    {
      v33 = a12;
    }

    else
    {
      v33 = a11;
    }

    if (a13)
    {
      v34 = a11;
    }

    else
    {
      v34 = a12;
    }

    v35 = v31 / v33;
    if (v35 >= v32 / v34)
    {
      v36 = v35;
    }

    else
    {
      v36 = v32 / v34;
    }

    v106 = a6;
    v104 = a4;
    v105 = a5;
    if (v36 <= 0.125)
    {
      v37 = 8;
    }

    else if (v36 <= 0.25)
    {
      v37 = 4;
    }

    else if (v36 <= 0.5)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    options = v37;
    v29 = v25;
    v38 = [(CGImage *)v29 objectForKeyedSubscript:@"VNImageBufferOption_DownscaleCGInterpolationQuality"];
    v39 = v38;
    if (v38)
    {
      v40 = [v38 intValue];
    }

    else
    {
      v40 = 4;
    }

    v41 = [(CGImage *)v29 objectForKeyedSubscript:@"VNImageBufferOption_UpscaleCGInterpolationQuality"];

    if (v41)
    {
      v42 = [v41 intValue];
    }

    else
    {
      v42 = 4;
    }

    if (v36 <= 1.0)
    {
      v43 = v40;
    }

    else
    {
      v43 = v42;
    }

    quality = v43;

    v44 = [(CGImage *)v29 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
    v45 = v44;
    if (v44)
    {
      v46 = [v44 BOOLValue];
    }

    else
    {
      v46 = 0;
    }

    v47 = [(CGImage *)v29 objectForKeyedSubscript:@"VNImageBufferOption_RequiresDepth"];
    v48 = [v47 BOOLValue];

    if (!v48 || (a7 & 1) != 0 || *(a1 + 96))
    {
      if ((v48 & a7) == 1)
      {
        if (a14)
        {
          [VNError errorWithCode:3 message:@"Unable to load depth when crop is required"];
          *a14 = LOBYTE(v29) = 0;
LABEL_74:

          goto LABEL_75;
        }

        goto LABEL_73;
      }
    }

    else
    {
      os_unfair_lock_lock((a1 + 104));
      if (v111)
      {
        v49 = [v111 _cgImageSourceAtAddress:v111 + 32 forSubSampleFactor:1 protectedWithUnfairLock:v111 + 12 operatingInLowPriority:0 error:0];
        if (v49)
        {
          v50 = +[VNDepthRepresentation depthRepresentationForImageSource:orientation:](VNDepthRepresentation, "depthRepresentationForImageSource:orientation:", v49, [v111 exifOrientation]);
          v51 = *(a1 + 96);
          *(a1 + 96) = v50;
        }
      }

      os_unfair_lock_unlock((a1 + 104));
    }

    if (v106 > 1111970368)
    {
      if (v106 != 1111970369 && v106 != 1278226488)
      {
        v52 = 1380401729;
LABEL_64:
        if (v106 != v52)
        {
          v61 = [(VNImageSourceManager *)v111 ciImageWithSubSampleFactor:v46 useLowPriority:a14 error:?];
          if (v61)
          {
            LOBYTE(v29) = [(VNImageBuffer *)a1 _cropCIImage:v61 outBuffer:a3 width:v104 height:v105 format:v106 cropRect:a7 performCrop:v29 options:(a9 * (1.0 / options)) rotate90CCW:(a10 * (1.0 / options)) error:(a11 * (1.0 / options)), (a12 * (1.0 / options)), a13, a14];
          }

          else
          {
            LOBYTE(v29) = 0;
          }

          goto LABEL_74;
        }
      }
    }

    else if (v106 != 32 && v106 != 40)
    {
      v52 = 1094862674;
      goto LABEL_64;
    }

    if (!v111)
    {
      goto LABEL_73;
    }

    v53 = options - 1;
    if (((0x8Bu >> v53) & 1) == 0)
    {
      if (a14)
      {
        v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:options];
        *a14 = [VNError errorForInvalidArgument:v59 named:@"subSampleFactor"];
      }

      goto LABEL_73;
    }

    v54 = [v111 _cgImageSourceAtAddress:&v111[qword_1A6052528[v53]] forSubSampleFactor:dword_1A60525A8[v53] protectedWithUnfairLock:&v111[qword_1A6052568[v53]] operatingInLowPriority:0 error:a14];
    if (!v54)
    {
LABEL_73:
      LOBYTE(v29) = 0;
      goto LABEL_74;
    }

    v55 = *MEMORY[0x1E696E0A8];
    *&v120.a = MEMORY[0x1E695E110];
    v56 = *MEMORY[0x1E696E0F8];
    *&v119.a = v55;
    *&v119.b = v56;
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:options];
    *&v120.b = v57;
    optionsa = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:2];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(v54, 0, optionsa);
    v29 = ImageAtIndex;
    if (a14 && !ImageAtIndex)
    {
      *a14 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot obtain a CGImageRef from the image source"];

      goto LABEL_73;
    }

    if (!v29)
    {
      goto LABEL_74;
    }

    image = v29;
    Width = CGImageGetWidth(v29);
    Height = CGImageGetHeight(v29);
    if (v109 < 5)
    {
      v64 = [a1 width];
    }

    else
    {
      v64 = [a1 height];
    }

    v65 = Width;
    v66 = 1.0 / round(v64 / Width);
    v67 = MEMORY[0x1E695EFD0];
    v68 = *(MEMORY[0x1E695EFD0] + 16);
    *&v120.a = *MEMORY[0x1E695EFD0];
    *&v120.c = v68;
    *&v120.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v119.a = *&v120.a;
    *&v119.c = v68;
    *&v119.tx = *&v120.tx;
    if (!a7)
    {
      [a1 fullImageBufferRect];
      v77 = v76 * v66;
      v79 = v78 * v66;
      if (a13)
      {
        v80 = v75 * v66;
        v81 = v74 * v66;
        CGAffineTransformMakeRotation(&v115, 1.57079633);
        v122.origin.x = v81;
        v122.origin.y = v80;
        v122.size.width = v77;
        v122.size.height = v79;
        v123 = CGRectApplyAffineTransform(v122, &v115);
        v77 = v123.size.width;
        v79 = v123.size.height;
      }

      CGAffineTransformMakeScale(&v115, v104 / v77, v105 / v79);
      v120 = v115;
      goto LABEL_114;
    }

    v69 = a11 * v66;
    v70 = (a9 * v66);
    v71 = (a10 * v66);
    v72 = v69;
    v73 = (a12 * v66);
    memset(&v115, 0, sizeof(v115));
    if (v109 <= 4)
    {
      switch(v109)
      {
        case 2:
          t1.b = 0.0;
          t1.c = 0.0;
          t1.a = -1.0;
          t1.d = 1.0;
          t1.tx = Width;
          goto LABEL_102;
        case 3:
          t1.b = 0.0;
          t1.c = 0.0;
          t1.a = -1.0;
          t1.d = -1.0;
          t1.tx = Width;
          t1.ty = Height;
          goto LABEL_108;
        case 4:
          t1.a = 1.0;
          t1.b = 0.0;
          t1.c = 0.0;
          *&t1.d = xmmword_1A6038B90;
          t1.ty = Height;
LABEL_108:
          CGAffineTransformInvert(&v115, &t1);
          t1 = v115;
          v124.origin.x = v70;
          v124.origin.y = v71;
          v124.size.width = v72;
          v124.size.height = v73;
          v125 = CGRectApplyAffineTransform(v124, &t1);
          x = v125.origin.x;
          y = v125.origin.y;
          v84 = v125.size.width;
          v85 = v125.size.height;
          v125.origin.y = Height - v125.origin.y - v125.size.height;
          v86 = CGImageCreateWithImageInRect(image, v125);
          if (!v86)
          {
            if (a14)
            {
              v100 = [VNError errorWithCode:3 message:@"Unable to crop a region of interest from a source buffer"];
              goto LABEL_128;
            }

LABEL_129:
            v101 = 0;
            v118 = 0;
LABEL_141:
            CGImageRelease(image);
            LOBYTE(v29) = v101 | v118;
            goto LABEL_74;
          }

          [(VNImageBuffer *)&v119 _calculateTranslationTransformForOrientedCropWithOrientation:v116 unorientedSubsampledFullImageRect:0.0 unorientedSubsampledOriginalCrop:0.0, v65, Height, x, y, v84, v85];
          CGImageRelease(image);
          v87 = v104 / v85;
          if (v116 < 5)
          {
            v87 = v104 / v84;
          }

          v88 = v105 / v84;
          if (v116 < 5)
          {
            v88 = v105 / v85;
          }

          CGAffineTransformMakeScale(&v120, v87, v88);
          image = v86;
LABEL_114:
          v89 = *a3;
          LODWORD(v115.a) = 0;
          CVPixelBufferLockBaseAddress(v89, 0);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v89);
          BaseAddress = CVPixelBufferGetBaseAddress(v89);
          v92 = VNColorspaceForFormat(v106, &v115);
          v93 = CGBitmapContextCreate(BaseAddress, v104, v105, 8uLL, BytesPerRow, v92, LODWORD(v115.a));
          CVPixelBufferUnlockBaseAddress(v89, 0);
          CGColorSpaceRelease(v92);
          if (v93)
          {
            CGContextSetInterpolationQuality(v93, quality);
            CGContextSetShouldAntialias(v93, 0);
            CGContextSetBlendMode(v93, kCGBlendModeCopy);
            v94 = CGImageGetWidth(image);
            v95 = CGImageGetHeight(image);
            v96 = v67[1];
            *&v115.a = *v67;
            *&v115.c = v96;
            *&v115.tx = v67[2];
            *&t1.a = *&v115.a;
            *&t1.c = v96;
            *&t1.tx = *&v115.tx;
            v97 = v94;
            v98 = v95;
            if (v116 <= 4)
            {
              v99 = image;
              switch(v116)
              {
                case 2:
                  t2.b = 0.0;
                  t2.c = 0.0;
                  t2.a = -1.0;
                  t2.d = 1.0;
                  t2.tx = v97;
                  goto LABEL_134;
                case 3:
                  t2.b = 0.0;
                  t2.c = 0.0;
                  t2.a = -1.0;
                  t2.d = -1.0;
                  t2.tx = v97;
                  t2.ty = v95;
                  goto LABEL_140;
                case 4:
                  t2.a = 1.0;
                  t2.b = 0.0;
                  t2.c = 0.0;
                  *&t2.d = xmmword_1A6038B90;
                  t2.ty = v95;
LABEL_140:
                  CGAffineTransformConcat(&v115, &t1, &t2);
                  t2 = v115;
                  v112 = v119;
                  CGAffineTransformConcat(&t1, &t2, &v112);
                  v115 = t1;
                  t2 = t1;
                  v112 = v120;
                  CGAffineTransformConcat(&t1, &t2, &v112);
                  v115 = t1;
                  CGContextConcatCTM(v93, &t1);
                  v126.origin.x = 0.0;
                  v126.origin.y = 0.0;
                  v126.size.width = v97;
                  v126.size.height = v98;
                  CGContextDrawImage(v93, v126, v99);
                  CGContextRelease(v93);
                  v101 = 1;
                  goto LABEL_141;
              }
            }

            else
            {
              v99 = image;
              if (v116 <= 6)
              {
                *&t2.a = xmmword_1A6038B80;
                if (v116 == 5)
                {
                  *&t2.c = xmmword_1A6038B90;
                  t2.tx = v95;
                }

                else
                {
                  t2.d = 0.0;
                  t2.tx = 0.0;
                  t2.c = 1.0;
                }

                t2.ty = v97;
                goto LABEL_140;
              }

              if (v116 == 7)
              {
                *&t2.a = xmmword_1A6038B70;
                t2.c = 1.0;
                t2.d = 0.0;
                goto LABEL_138;
              }

              if (v116 == 8)
              {
                *&t2.a = xmmword_1A6038B70;
                *&t2.c = xmmword_1A6038B90;
                t2.tx = v95;
LABEL_134:
                t2.ty = 0.0;
                goto LABEL_140;
              }
            }

            t2.b = 0.0;
            t2.c = 0.0;
            t2.a = 1.0;
            t2.d = 1.0;
LABEL_138:
            t2.tx = 0.0;
            t2.ty = 0.0;
            goto LABEL_140;
          }

          if (a14)
          {
            v100 = [VNError errorWithCode:3 message:@"Unable to create CGImage for scaling"];
LABEL_128:
            *a14 = v100;
            goto LABEL_129;
          }

          goto LABEL_129;
      }
    }

    else
    {
      if (v109 <= 6)
      {
        *&t1.a = xmmword_1A6038B80;
        if (v109 == 5)
        {
          *&t1.c = xmmword_1A6038B90;
          t1.tx = Height;
        }

        else
        {
          t1.d = 0.0;
          t1.tx = 0.0;
          t1.c = 1.0;
        }

        t1.ty = Width;
        goto LABEL_108;
      }

      if (v109 == 7)
      {
        *&t1.a = xmmword_1A6038B70;
        t1.c = 1.0;
        t1.d = 0.0;
        goto LABEL_106;
      }

      if (v109 == 8)
      {
        *&t1.a = xmmword_1A6038B70;
        *&t1.c = xmmword_1A6038B90;
        t1.tx = Height;
LABEL_102:
        t1.ty = 0.0;
        goto LABEL_108;
      }
    }

    t1.b = 0.0;
    t1.c = 0.0;
    t1.a = 1.0;
    t1.d = 1.0;
LABEL_106:
    t1.tx = 0.0;
    t1.ty = 0.0;
    goto LABEL_108;
  }

  if (a14)
  {
    [VNError errorWithCode:3 message:@"Missing target buffer for crop operations"];
    *a14 = LOBYTE(v29) = 0;
  }

  else
  {
LABEL_9:
    LOBYTE(v29) = 0;
  }

LABEL_76:

  return v29 & 1;
}

- (CGAffineTransform)_calculateTranslationTransformForOrientedCropWithOrientation:(double)a3 unorientedSubsampledFullImageRect:(double)a4 unorientedSubsampledOriginalCrop:(double)a5
{
  if (a7 >= 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = -a7;
  }

  if (a8 >= 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = -a8;
  }

  v12 = a5 - a9;
  if (a2 > 4)
  {
    v12 = a6;
  }

  v13 = -v12;
  v14 = a6 - a10;
  if (a2 <= 4)
  {
    a5 = v14;
  }

  if (v12 >= 0.0)
  {
    v13 = 0.0;
  }

  if (a5 >= 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = -a5;
  }

  v16 = MEMORY[0x1E695EFD0];
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v17;
  *&retstr->tx = *(v16 + 32);
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      v18 = retstr;
      if (a2 == 3)
      {
        v19 = v13;
      }

      else
      {
        v19 = v10;
      }

      v10 = v15;
    }

    else
    {
      if (a2 == 1)
      {
        v18 = retstr;
        v19 = v10;
      }

      else
      {
        if (a2 != 2)
        {
          return retstr;
        }

        v18 = retstr;
        v19 = v13;
      }

      v10 = v11;
    }

    return CGAffineTransformMakeTranslation(v18, v19, v10);
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      v18 = retstr;
      v19 = v11;
      v10 = v13;
      return CGAffineTransformMakeTranslation(v18, v19, v10);
    }

LABEL_29:
    v18 = retstr;
    v19 = v15;
    return CGAffineTransformMakeTranslation(v18, v19, v10);
  }

  if (a2 == 7)
  {
    v18 = retstr;
    v19 = v11;
    return CGAffineTransformMakeTranslation(v18, v19, v10);
  }

  if (a2 == 8)
  {
    goto LABEL_29;
  }

  return retstr;
}

- (void)_isRectOutOfBounds:(CGFloat)a3
{
  if (result)
  {
    [result fullImageBufferRect];
    v11.origin.x = a2;
    v11.origin.y = a3;
    v11.size.width = a4;
    v11.size.height = a5;
    v10 = CGRectIntersection(v9, v11);
    v12.origin.x = a2;
    v12.origin.y = a3;
    v12.size.width = a4;
    v12.size.height = a5;
    return !CGRectContainsRect(v10, v12);
  }

  return result;
}

+ (uint64_t)_VNVTPixelTransferImageForSource:(CGFloat)a3 destinationBuffer:(CGFloat)a4 cropRect:(uint64_t)a5 performCrop:(__CVBuffer *)a6 vtSessionManager:(__CVBuffer *)a7 error:(int)a8
{
  v61 = *MEMORY[0x1E69E9840];
  v55 = a9;
  objc_opt_self();
  PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
  v17 = CVPixelBufferGetPixelFormatType(a7);
  v51 = a6;
  v52 = a7;
  if (!v55)
  {
    v29 = 0;
LABEL_40:
    v40 = 0;
    goto LABEL_41;
  }

  v18 = v17;
  v19 = v55[1];
  v20 = &__block_literal_global_17058;
  v21 = &__block_literal_global_42_17059;
  dispatch_semaphore_wait(*(v19 + 8), 0xFFFFFFFFFFFFFFFFLL);
  os_unfair_lock_lock((v19 + 16));
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = *(v19 + 24);
  v23 = [v22 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v23)
  {
    v24 = 0;
    v25 = *v57;
    do
    {
      v26 = 0;
      v27 = v24;
      v24 += v23;
      do
      {
        if (*v57 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v56 + 1) + 8 * v26);
        v29 = v28;
        if (v28)
        {
          if (v28[2] == PixelFormatType && v28[3] == v18)
          {

            [*(v19 + 24) removeObjectAtIndex:v27];
            goto LABEL_21;
          }
        }

        else if (!(PixelFormatType | v18))
        {
          goto LABEL_15;
        }

        ++v27;
        ++v26;
      }

      while (v23 != v26);
      v30 = [v22 countByEnumeratingWithState:&v56 objects:v60 count:16];
      v23 = v30;
    }

    while (v30);
  }

LABEL_15:

  v31 = [*(v19 + 24) count];
  v32 = [*(v19 + 32) count];
  if (v31 && v32 + v31 == *v19)
  {
    [*(v19 + 24) removeLastObject];
  }

  v33 = _block_invoke_2(&__block_literal_global_42_17059, a10);
  v29 = v33;
  if (v33)
  {
    *(v33 + 8) = PixelFormatType;
    *(v33 + 12) = v18;
  }

LABEL_21:
  [*(v19 + 32) addObject:v29];
  os_unfair_lock_unlock((v19 + 16));

  if (!v29)
  {
    goto LABEL_40;
  }

  v34 = v29[3];
  if (a8)
  {
    v62.origin.x = a1;
    v62.origin.y = a2;
    v62.size.width = a3;
    v62.size.height = a4;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v62);
  }

  else
  {
    DictionaryRepresentation = 0;
  }

  v36 = VTSessionSetProperty(v34, *MEMORY[0x1E6983E40], DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v36)
  {
    if (a10)
    {
      v50 = v36;
      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot set VTSession property, error: %d"];
      v38 = [VNError errorForInternalErrorWithLocalizedDescription:v37];
LABEL_33:
      *a10 = v38;
    }
  }

  else
  {
    v39 = VTPixelTransferSessionTransferImage(v34, v51, v52);
    if (!v39)
    {
      v40 = 1;
      goto LABEL_35;
    }

    if (a10)
    {
      v50 = v39;
      v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot transfer image using VTSession, error: %d"];
      v38 = [VNError errorForInternalErrorWithLocalizedDescription:v37];
      goto LABEL_33;
    }
  }

  v40 = 0;
LABEL_35:
  v41 = v29;
  v42 = v55[1];
  v29 = v41;
  os_unfair_lock_lock((v42 + 16));
  if (([*(v42 + 32) containsObject:v29] & 1) == 0)
  {
  }

  [*(v42 + 24) addObject:v29];
  [*(v42 + 32) removeObject:v29];
  os_unfair_lock_unlock((v42 + 16));
  dispatch_semaphore_signal(*(v42 + 8));

LABEL_41:
  return v40;
}

- (CVPixelBufferRef)_createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:(size_t)a3 height:(uint64_t)a4 format:(void *)a5 options:(_BYTE *)a6 outPooled:(void *)a7 error:
{
  v12 = a5;
  v55 = v12;
  if (!a1)
  {
    goto LABEL_63;
  }

  v13 = v12;
  v14 = [v13 valueForKey:@"VNImageBufferOption_CreateFromPixelBufferPool"];
  v15 = [v14 BOOLValue];

  if (a6)
  {
    *a6 = v15;
  }

  if (!v15)
  {
    a1 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a2 height:a3 pixelFormatType:a4 error:a7];
    goto LABEL_63;
  }

  v54 = [(__CVBuffer *)a1 session];
  v16 = [v54 vncvPixelBufferPoolManager];
  v17 = v16;
  if (!v16)
  {
    a1 = 0;
    goto LABEL_62;
  }

  os_unfair_lock_lock(v16 + 2);
  v18 = a4 ^ __ROR8__(a3 ^ __ROR8__(a2, 51), 51);
  v19 = *&v17[6]._os_unfair_lock_opaque;
  v20 = MEMORY[0x1E6966130];
  if (v19)
  {
    v21 = vcnt_s8(v19);
    v21.i16[0] = vaddlv_u8(v21);
    if (v21.u32[0] > 1uLL)
    {
      v22 = v18;
      if (v18 >= *&v19)
      {
        v22 = v18 % *&v19;
      }
    }

    else
    {
      v22 = (*&v19 - 1) & v18;
    }

    v23 = *(*&v17[4]._os_unfair_lock_opaque + 8 * v22);
    if (v23)
    {
      for (i = *v23; i; i = *i)
      {
        v25 = i[1];
        if (v25 == v18)
        {
          if (i[2] == a2 && i[3] == a3 && *(i + 8) == a4)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if (v21.u32[0] > 1uLL)
          {
            if (v25 >= *&v19)
            {
              v25 %= *&v19;
            }
          }

          else
          {
            v25 &= *&v19 - 1;
          }

          if (v25 != v22)
          {
            break;
          }
        }
      }
    }
  }

  objc_opt_self();
  objc_opt_self();
  v26 = objc_alloc(MEMORY[0x1E695DF90]);
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  v30 = [v26 initWithObjectsAndKeys:{v27, *MEMORY[0x1E6966208], v28, *MEMORY[0x1E69660B8], v29, *v20, 0}];

  if (VNIOSurfaceBackedPixelBufferAttributes::onceToken != -1)
  {
    dispatch_once(&VNIOSurfaceBackedPixelBufferAttributes::onceToken, &__block_literal_global_30784);
  }

  [v30 addEntriesFromDictionary:VNIOSurfaceBackedPixelBufferAttributes::pixelBufferAttributes];
  poolOut = 0;
  v31 = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v30, &poolOut);
  if (v31)
  {

    if (a7)
    {
      *a7 = [VNError errorForCVReturnCode:v31 width:a2 height:a3 pixelFormat:a4 localizedDescription:@"Failed to create CVPixelBufferPool"];
    }
  }

  else
  {
  }

  v32 = *&v17[6]._os_unfair_lock_opaque;
  if (!*&v32)
  {
    goto LABEL_50;
  }

  v33 = vcnt_s8(v32);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    v34 = v18;
    if (v18 >= *&v32)
    {
      v34 = v18 % *&v32;
    }
  }

  else
  {
    v34 = (*&v32 - 1) & v18;
  }

  v35 = *(*&v17[4]._os_unfair_lock_opaque + 8 * v34);
  if (!v35 || (i = *v35) == 0)
  {
LABEL_50:
    operator new();
  }

  while (1)
  {
    v36 = i[1];
    if (v36 == v18)
    {
      break;
    }

    if (v33.u32[0] > 1uLL)
    {
      if (v36 >= *&v32)
      {
        v36 %= *&v32;
      }
    }

    else
    {
      v36 &= *&v32 - 1;
    }

    if (v36 != v34)
    {
      goto LABEL_50;
    }

LABEL_49:
    i = *i;
    if (!i)
    {
      goto LABEL_50;
    }
  }

  if (i[2] != a2 || i[3] != a3 || *(i + 8) != a4)
  {
    goto LABEL_49;
  }

  v20 = MEMORY[0x1E6966130];
LABEL_51:
  v37 = i[5];
  objc_opt_self();
  poolOut = 0;
  v44 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v37, &poolOut);
  if (v44)
  {
    v45 = 1;
  }

  else
  {
    v45 = poolOut == 0;
  }

  if (v45)
  {
    VNValidatedLog(4, @"VNCVPixelBufferHelper: Failed to create CVPixelBuffer from pool (%p): %d", v38, v39, v40, v41, v42, v43, v37);
    if (a7)
    {
      v46 = CVPixelBufferPoolGetAttributes(v37);
      v47 = [v46 objectForKeyedSubscript:*MEMORY[0x1E6966208]];
      v48 = [v47 unsignedLongValue];
      v49 = [v46 objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
      v50 = [v49 unsignedLongValue];
      v51 = [v46 objectForKeyedSubscript:*v20];
      *a7 = +[VNError errorForCVReturnCode:width:height:pixelFormat:localizedDescription:](VNError, "errorForCVReturnCode:width:height:pixelFormat:localizedDescription:", v44, v48, v50, [v51 unsignedIntValue], @"Failed to create CVPixelBufferPool.");
    }

LABEL_60:
    a1 = 0;
  }

  else
  {
    v52 = [VNCVPixelBufferHelper _validatePixelBuffer:a7 error:?];
    a1 = poolOut;
    if ((v52 & 1) == 0)
    {
      CVPixelBufferRelease(poolOut);
      goto LABEL_60;
    }
  }

  os_unfair_lock_unlock(v17 + 2);
LABEL_62:

LABEL_63:
  return a1;
}

BOOL __113__VNImageBuffer__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 124) != 1)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 32);
    }

    else
    {
      v9 = 0;
    }

    v10 = VTPixelRotationSessionRotateImage(v9, *(a1 + 96), *(a1 + 72));
    goto LABEL_25;
  }

  v26 = CGRectIntegral(*(a1 + 40));
  v23.x = v26.origin.x;
  v23.y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  VNAlignRectToSubsampledCVPixelBufferConstraint(&v23, *(a1 + 72));
  memset(&v22, 0, sizeof(v22));
  v5 = *(a1 + 104);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  if (v5 > 4)
  {
    if (v5 <= 6)
    {
      *&v21.a = xmmword_1A6038B80;
      if (v5 == 5)
      {
        *&v21.c = xmmword_1A6038B90;
        v21.tx = v7;
      }

      else
      {
        v21.d = 0.0;
        v21.tx = 0.0;
        v21.c = 1.0;
      }

      v21.ty = v6;
      goto LABEL_24;
    }

    if (v5 == 7)
    {
      *&v21.a = xmmword_1A6038B70;
      v21.c = 1.0;
      v21.d = 0.0;
      goto LABEL_22;
    }

    if (v5 == 8)
    {
      *&v21.a = xmmword_1A6038B70;
      *&v21.c = xmmword_1A6038B90;
      v21.tx = v7;
LABEL_18:
      v21.ty = 0.0;
      goto LABEL_24;
    }

LABEL_19:
    v21.b = 0.0;
    v21.c = 0.0;
    v21.a = 1.0;
    v21.d = 1.0;
LABEL_22:
    v21.tx = 0.0;
    v21.ty = 0.0;
    goto LABEL_24;
  }

  if (v5 == 2)
  {
    v21.b = 0.0;
    v21.c = 0.0;
    v21.a = -1.0;
    v21.d = 1.0;
    v21.tx = v6;
    goto LABEL_18;
  }

  if (v5 == 3)
  {
    v21.b = 0.0;
    v21.c = 0.0;
    v21.a = -1.0;
    v21.d = -1.0;
    v21.tx = v6;
    v21.ty = v7;
    goto LABEL_24;
  }

  if (v5 != 4)
  {
    goto LABEL_19;
  }

  v21.a = 1.0;
  v21.b = 0.0;
  v21.c = 0.0;
  *&v21.d = xmmword_1A6038B90;
  v21.ty = v7;
LABEL_24:
  CGAffineTransformInvert(&v22, &v21);
  v27.origin = v23;
  v27.size.width = width;
  v27.size.height = height;
  v21 = v22;
  v28 = CGRectApplyAffineTransform(v27, &v21);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v6;
  v29.size.height = v7;
  CGRectIntersection(v28, v29);
  CVPixelBufferGetWidth(*(a1 + 96));
  CVPixelBufferGetHeight(*(a1 + 96));
  v10 = VTPixelRotationSessionRotateSubImage();
LABEL_25:
  v11 = v10;
  if (a3 && v10)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = CFGetRetainCount(*(a1 + 96));
    v14 = *(a1 + 108);
    v15 = CFGetRetainCount(*(a1 + 72));
    v16 = *(a1 + 112);
    v17 = *(a1 + 116);
    v18 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 124)];
    v19 = [v12 initWithFormat:@"VNImageBuffer - Failed to transfer inputBufferForRotation (retain count = %ld, type = %u) to vtSessionDestBuffer (retain count = %ld, type = %u). Orientation %d. Crop %@. Rotation %d. Error %d", v13, v14, v15, v16, v17, v18, *(a1 + 120), v11];

    *a3 = [VNError errorWithCode:3 message:v19];
  }

  return v11 == 0;
}

BOOL __113__VNImageBuffer__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error___block_invoke_2(uint64_t a1, CVPixelBufferRef pixelBuffer, void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  if (VNIOSurfaceBackedPixelBufferAttributes::onceToken != -1)
  {
    dispatch_once(&VNIOSurfaceBackedPixelBufferAttributes::onceToken, &__block_literal_global_30784);
  }

  v12 = CVPixelBufferCreateWithBytes(v6, v7, v8, v9, BaseAddressOfPlane, BytesPerRowOfPlane, CVPixelBufferReleaseReferencingPixelBufferCallback, pixelBuffer, VNIOSurfaceBackedPixelBufferAttributes::pixelBufferAttributes, *(a1 + 48));
  v13 = v12;
  if (a3 && v12)
  {
    *a3 = [VNError errorForCVReturnCode:v12 localizedDescription:@"unable to create the Y plane wrapper buffer"];
  }

  return v13 == 0;
}

- (id)augmentedBuffersWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 options:(id)a6 augmentationOptions:(id)a7 error:(id *)a8
{
  v8 = [(VNImageBuffer *)self augmentedCroppedBuffersWithWidth:a3 height:a4 format:*&a5 cropRect:a6 options:a7 augmentationOptions:a8 error:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];

  return v8;
}

- (id)debugQuickLookObject
{
  if (self->_origPixelBuffer)
  {
    v2 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:?];
LABEL_5:
    v4 = v2;
    goto LABEL_6;
  }

  origCIImage = self->_origCIImage;
  if (origCIImage)
  {
    v2 = origCIImage;
    goto LABEL_5;
  }

  imageSourceManager = self->_imageSourceManager;
  if (!imageSourceManager)
  {
    v2 = [(VNImageBuffer *)self debugDescription];
    goto LABEL_5;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex([(VNImageSourceManager *)self->_imageSourceManager _cgImageSourceAtAddress:&imageSourceManager->_imageSourceSubsample1 forSubSampleFactor:1 protectedWithUnfairLock:&imageSourceManager->_loadSubSample1Lock operatingInLowPriority:0 error:0], 0, 0);
  v4 = VNDebugImageFromCGImage(ImageAtIndex);
  CGImageRelease(ImageAtIndex);
LABEL_6:

  return v4;
}

- (id)sequencedRequestPreviousObservationsKey
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@;opt=%@", v5, self->_options];

  return v6;
}

- (__CVBuffer)createCroppedBufferWithMaxSideLengthOf:(unint64_t)a3 cropRect:(CGRect)a4 pixelFormat:(unsigned int)a5 options:(id)a6 error:(id *)a7 pixelBufferRepsCacheKey:(id *)a8
{
  v10 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a6;
  v18 = width;
  v19 = height;
  if (width <= height)
  {
    if (v19 > a3)
    {
      v18 = (width / height * a3);
      v19 = a3;
    }
  }

  else if (v18 > a3)
  {
    v19 = (height / width * a3);
    v18 = a3;
  }

  v20 = [(VNImageBuffer *)self croppedBufferWithWidth:v18 height:v19 format:v10 cropRect:v17 options:a7 error:a8 pixelBufferRepsCacheKey:x, y, width, height];

  return v20;
}

- (__CVBuffer)createBufferWithMaxSideLengthOf:(unint64_t)a3 pixelFormat:(unsigned int)a4 options:(id)a5 error:(id *)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = [(VNImageBuffer *)self width];
  v12 = [(VNImageBuffer *)self height];
  v13 = v12;
  if (v11 <= v12)
  {
    if (v12 > a3)
    {
      v11 = ((a3 * v11) / v12);
      v13 = a3;
    }
  }

  else if (v11 > a3)
  {
    v13 = ((a3 * v12) / v11);
    v11 = a3;
  }

  v14 = [(VNImageBuffer *)self bufferWithWidth:v11 height:v13 format:v7 options:v10 error:a6];

  return v14;
}

- (CGRect)makeClippedRectAgainstImageExtentUsingOriginalRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(VNImageBuffer *)self fullImageBufferRect];
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectIntersection(*&v7, *&v11);
}

- (id)fileURL
{
  imageSourceManager = self->_imageSourceManager;
  if (imageSourceManager)
  {
    v4 = imageSourceManager->_imageURL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)getCameraIntrinsicsAvailable:(id *)a3
{
  v4 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"VNImageOptionCameraIntrinsics"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7.location = 0;
    v7.length = 48;
    CFDataGetBytes(v4, v7, a3);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getCameraOpticalCenterIfAvailable:(CGPoint *)a3
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v5 = [(VNImageBuffer *)self getCameraIntrinsicsAvailable:v9];
  if (v5)
  {
    v6 = *&v10;
    a3->x = (v6 / [(VNImageBuffer *)self width]);
    v7 = *(&v10 + 1);
    a3->y = (v7 / [(VNImageBuffer *)self height]);
  }

  return v5;
}

- (BOOL)getPixelFocalLengthIfAvailable:(float *)a3
{
  memset(v6, 0, sizeof(v6));
  v4 = [(VNImageBuffer *)self getCameraIntrinsicsAvailable:v6];
  if (v4)
  {
    *a3 = *v6;
  }

  return v4;
}

- (int)aspectForRegionOfInterest:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = [(VNImageBuffer *)self width:a3.origin.x];
  v7 = [(VNImageBuffer *)self height];
  v8 = width * v6;
  v9 = height * v7;
  if (v8 < v9)
  {
    return 1;
  }

  else
  {
    return 2 * (v8 > v9);
  }
}

- (int)aspect
{
  v3 = [(VNImageBuffer *)self width];
  v4 = [(VNImageBuffer *)self height];
  if (v3 < v4)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 > v4);
  }
}

- (unint64_t)height
{
  result = self->_origImageHeight;
  if (!result)
  {
    [(VNImageBuffer *)self calculateOrientationCorrectedImageDimensions];
    return self->_origImageHeight;
  }

  return result;
}

- (uint64_t)calculateOrientationCorrectedImageDimensions
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      Width = CVPixelBufferGetWidth(v2);
      Height = CVPixelBufferGetHeight(*(v1 + 16));
    }

    else
    {
      v5 = *(v1 + 24);
      if (v5)
      {
        [v5 extent];
        Width = v6;
        [*(v1 + 24) extent];
        Height = v7;
      }

      else
      {
        v8 = *(v1 + 40);
        if (v8 && (v9 = [v8 _cgImageSourceAtAddress:v8 + 32 forSubSampleFactor:1 protectedWithUnfairLock:v8 + 12 operatingInLowPriority:0 error:0]) != 0)
        {
          v10 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
          v11 = [(__CFDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
          LODWORD(Width) = [v11 intValue];

          v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
          Width = Width;
          Height = [v12 intValue];
        }

        else
        {
          Height = 0;
          Width = 0;
        }
      }
    }

    result = [v1 orientation];
    if (result <= 4)
    {
      v13 = Width;
    }

    else
    {
      v13 = Height;
    }

    if (result <= 4)
    {
      v14 = Height;
    }

    else
    {
      v14 = Width;
    }

    *(v1 + 72) = v13;
    *(v1 + 80) = v14;
  }

  return result;
}

- (unint64_t)width
{
  result = self->_origImageWidth;
  if (!result)
  {
    [(VNImageBuffer *)self calculateOrientationCorrectedImageDimensions];
    return self->_origImageWidth;
  }

  return result;
}

- (NSNumber)sceneStabilityMetric
{
  origSampleBuffer = self->_origSampleBuffer;
  if (origSampleBuffer)
  {
    origSampleBuffer = CMGetAttachment(origSampleBuffer, @"SceneStabilityMetric", 0);
    if (origSampleBuffer)
    {
      origSampleBuffer = origSampleBuffer;
    }

    v2 = vars8;
  }

  return origSampleBuffer;
}

- ($C89D6CB792F036C1FD5C44B3A3669EAC)timingInfo
{
  v3 = MEMORY[0x1E6960CF0];
  v4 = *(MEMORY[0x1E6960CF0] + 48);
  *&retstr->var1.var1 = *(MEMORY[0x1E6960CF0] + 32);
  *&retstr->var2.var0 = v4;
  retstr->var2.var3 = *(v3 + 64);
  v5 = *(v3 + 16);
  *&retstr->var0.var0 = *v3;
  *&retstr->var0.var3 = v5;
  result = self->_origSampleBuffer;
  if (result)
  {
    return CMSampleBufferGetSampleTimingInfo(result, 0, retstr);
  }

  return result;
}

- (__CVBuffer)cropAndScaleBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 cropRect:(CGRect)a5 format:(unsigned int)a6 imageCropAndScaleOption:(unint64_t)a7 options:(id)a8 error:(id *)a9 calculatedNormalizedOriginOffset:(CGPoint *)a10 calculatedScaleX:(double *)a11 calculatedScaleY:(double *)a12 pixelBufferRepsCacheKey:(id *)a13
{
  v15 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v23 = a8;
  v24 = 0;
  v25 = 0;
  v26 = *MEMORY[0x1E695EFF8];
  v27 = *(MEMORY[0x1E695EFF8] + 8);
  v56 = 1.0;
  v55 = 1.0;
  if (a7 <= 1)
  {
    if (!a7)
    {
      [VNImageBuffer computeCenterCropRectFromCropRect:&v56 inImageSize:&v55 calculatedScaleX:x calculatedScaleY:y, width, height, a3, a4];
      x = v33;
      y = v34;
      v25 = 0;
      v26 = v33 / width;
      v24 = a4;
      v30 = a3;
      width = v35;
      v27 = v34 / height;
      height = v36;
      goto LABEL_20;
    }

    if (a7 != 1)
    {
      goto LABEL_16;
    }

    v28 = a3 / width;
    v56 = v28;
    v29 = a4 / height;
    v55 = v29;
    v25 = 0;
    if (v28 < v29)
    {
      v24 = (height * v28);
      v55 = a3 / width;
LABEL_12:
      v30 = a3;
      goto LABEL_20;
    }

    v30 = (width * v29);
    v56 = a4 / height;
  }

  else
  {
    if (a7 == 2)
    {
      v25 = 0;
      goto LABEL_11;
    }

    if (a7 != 257)
    {
      if (a7 == 258)
      {
        v56 = a3 / height;
        v55 = a4 / width;
        v25 = 1;
LABEL_11:
        v24 = a4;
        goto LABEL_12;
      }

LABEL_16:
      v30 = 0;
      goto LABEL_20;
    }

    v31 = a3 / height;
    v56 = v31;
    v32 = a4 / width;
    v55 = v32;
    if (v31 < v32)
    {
      v24 = (width * v31);
      v55 = a3 / height;
      v25 = 1;
      goto LABEL_12;
    }

    v30 = (height * v32);
    v56 = a4 / width;
    v25 = 1;
  }

  v24 = a4;
LABEL_20:
  v37 = [(VNImageBuffer *)self _croppedBufferWithWidth:v30 height:v24 format:v15 cropRect:v23 options:a9 error:a13 pixelBufferRepsCacheKey:v25 rotate90CCW:x, y, width, height];
  v38 = v37;
  if (!v37)
  {
LABEL_35:
    v40 = 0;
    goto LABEL_36;
  }

  if (a7 - 257 >= 2 && a7 != 1)
  {
    v40 = v37;
    goto LABEL_28;
  }

  v54 = 0;
  v39 = [(VNImageBuffer *)self _createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:a3 height:a4 format:v15 options:v23 outPooled:&v54 error:a9];
  v40 = v39;
  if (!v39)
  {
    CVPixelBufferRelease(v38);
    goto LABEL_35;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x4012000000;
  v49 = __Block_byref_object_copy__4804;
  v50 = __Block_byref_object_dispose__4805;
  v51 = "";
  v52 = v26;
  v53 = v27;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __197__VNImageBuffer_cropAndScaleBufferWithWidth_height_cropRect_format_imageCropAndScaleOption_options_error_calculatedNormalizedOriginOffset_calculatedScaleX_calculatedScaleY_pixelBufferRepsCacheKey___block_invoke;
  v43[3] = &unk_1E77B2B18;
  v44 = v15;
  v45 = v54;
  v43[6] = a4;
  v43[7] = v38;
  v43[4] = &v46;
  v43[5] = a3;
  v41 = VNExecuteBlockWithPixelBuffer(v39, 0, v43, a9);
  v26 = v47[6];
  v27 = v47[7];
  CVPixelBufferRelease(v38);
  if (!v41)
  {
    CVPixelBufferRelease(v40);
    _Block_object_dispose(&v46, 8);
    goto LABEL_35;
  }

  _Block_object_dispose(&v46, 8);
LABEL_28:
  if (a10)
  {
    a10->x = v26;
    a10->y = v27;
  }

  if (a11)
  {
    *a11 = v56;
  }

  if (a12)
  {
    *a12 = v55;
  }

LABEL_36:

  return v40;
}

- (uint64_t)_croppedBufferWithWidth:(uint64_t)a3 height:(uint64_t)a4 format:(void *)a5 cropRect:(void *)a6 options:(void *)a7 error:(char)a8 pixelBufferRepsCacheKey:(CGFloat)a9 rotate90CCW:(CGFloat)a10
{
  v38 = a5;
  if (!a1)
  {
    v34 = 0;
    goto LABEL_28;
  }

  v22 = a1[2];
  if (!v22)
  {
    goto LABEL_9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v22);
  v24 = PixelFormatType;
  if (PixelFormatType > 792872768)
  {
    if (PixelFormatType == 792872769)
    {
      goto LABEL_10;
    }

    v25 = 2084718401;
  }

  else
  {
    if (PixelFormatType == 641877825)
    {
      goto LABEL_10;
    }

    v25 = 759318337;
  }

  if (PixelFormatType != v25)
  {
LABEL_9:
    v24 = a4;
  }

LABEL_10:
  v26 = [VNImageBufferCache cacheKeyWithBufferFormat:v24 width:a2 height:a3 cropRect:a9, a10, a11, a12];
  v27 = [v26 hash];
  if (a3 && a2 && a11 >= 1.0 && a12 >= 1.0)
  {
    v28 = v27;
    [a1 fullImageBufferRect];
    v59.origin.x = a9;
    v59.origin.y = a10;
    v59.size.width = a11;
    v59.size.height = a12;
    if (CGRectIntersectsRect(v58, v59))
    {
      v29 = v24 | ((a3 | (a2 << 16)) << 32);
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __114__VNImageBuffer__croppedBufferWithWidth_height_format_cropRect_options_error_pixelBufferRepsCacheKey_rotate90CCW___block_invoke;
      aBlock[3] = &unk_1E77B2AF0;
      v43 = a2;
      v44 = a3;
      v42 = &v54;
      aBlock[4] = a1;
      v30 = v26;
      v40 = v30;
      v45 = v28;
      v46 = a12 | (((a10 << 16) | (a9 << 32) | a11) << 16);
      v47 = v29;
      v48 = a9;
      v49 = a10;
      v50 = a11;
      v51 = a12;
      v41 = v38;
      v52 = v24;
      v53 = a8;
      v31 = _Block_copy(aBlock);
      kdebug_trace();
      v32 = VNExecuteBlock(v31, a6);
      kdebug_trace();
      if (v32)
      {
        if (a7)
        {
          v33 = v30;
          *a7 = v30;
        }

        v34 = v55[3];
      }

      else
      {
        v34 = 0;
      }

      _Block_object_dispose(&v54, 8);
      goto LABEL_27;
    }

    if (a6)
    {
      v35 = [VNError errorWithCode:4 message:@"Cropping failed. Specifed ROI is outside of input image bounds with no intersection."];
      goto LABEL_23;
    }

LABEL_24:
    v34 = 0;
    goto LABEL_27;
  }

  if (!a6)
  {
    goto LABEL_24;
  }

  v35 = [VNError errorWithCode:3 message:@"Operation failed due to attempt to crop zero or near zero dimensioned area"];
LABEL_23:
  v34 = 0;
  *a6 = v35;
LABEL_27:

LABEL_28:
  return v34;
}

uint64_t __197__VNImageBuffer_cropAndScaleBufferWithWidth_height_cropRect_format_imageCropAndScaleOption_options_error_calculatedNormalizedOriginOffset_calculatedScaleX_calculatedScaleY_pixelBufferRepsCacheKey___block_invoke(uint64_t a1, CVPixelBufferRef pixelBuffer, void *a3)
{
  bitmapInfo = 0;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v8 = VNColorspaceForFormat(*(a1 + 64), &bitmapInfo);
  v9 = CGBitmapContextCreate(BaseAddress, *(a1 + 40), *(a1 + 48), 8uLL, BytesPerRow, v8, bitmapInfo);
  if (*(a1 + 68) == 1)
  {
    bzero(BaseAddress, *(a1 + 48) * BytesPerRow);
  }

  image = 0;
  v10 = VTCreateCGImageFromCVPixelBuffer(*(a1 + 56), 0, &image);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = image == 0;
  }

  v12 = !v11;
  if (v11)
  {
    if (a3)
    {
      *a3 = [VNError errorForOSStatus:v10 localizedDescription:@"Failed to create CGImage from CVPixelBuffer"];
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth(*(a1 + 56));
    v19.size.height = CVPixelBufferGetHeight(*(a1 + 56));
    v14 = (*(a1 + 40) - Width) * 0.5;
    v15 = (*(a1 + 48) - v19.size.height) * 0.5;
    v19.origin.x = v14;
    v19.origin.y = v15;
    v19.size.width = Width;
    CGContextDrawImage(v9, v19, image);
    *(*(*(a1 + 32) + 8) + 48) = v14 / *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 56) = v15 / *(a1 + 48);
    CGImageRelease(image);
    image = 0;
  }

  CGColorSpaceRelease(v8);
  CGContextRelease(v9);
  return v12;
}

uint64_t __114__VNImageBuffer__croppedBufferWithWidth_height_format_cropRect_options_error_pixelBufferRepsCacheKey_rotate90CCW___block_invoke(uint64_t a1, void *a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 48) cachedBufferWithKey:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    kdebug_trace();
    return 1;
  }

  [*(a1 + 32) fullImageBufferRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (CGRectIsInfinite(*(a1 + 104)) || (v58.origin.x = v8, v58.origin.y = v10, v58.size.width = v12, v58.size.height = v14, CGRectEqualToRect(v58, *(a1 + 104))))
  {
    v15 = 0;
  }

  else
  {
    v8 = *(a1 + 104);
    v10 = *(a1 + 112);
    v15 = 1;
    v12 = *(a1 + 120);
    v14 = *(a1 + 128);
  }

  [(VNImageBuffer *)*(a1 + 32) _isRectOutOfBounds:v8, v10, v12, v14];
  v16 = objc_autoreleasePoolPush();
  v17 = [(VNImageBuffer *)*(a1 + 32) _optionsWithOverridingOptions:?];
  v57 = 0;
  v56 = 0;
  v18 = [VNValidationUtilities getOptionalObject:&v57 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:v17 error:&v56];
  v19 = v57;
  v20 = v56;
  if (!v18)
  {
    goto LABEL_35;
  }

  if (v19)
  {
    v21 = [v19 integerValue];
    if (v21 <= 4)
    {
      v22 = v5;
    }

    else
    {
      v22 = v4;
    }

    if (v21 > 4)
    {
      v4 = v5;
    }

    v5 = v22;
  }

  v23 = *(a1 + 136);
  v24 = *(a1 + 32);
  v49 = v15;
  if (v23 == 1278226488)
  {
    if (*(v24 + 2))
    {
      v5 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v4 = (v4 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v23 = 875704422;
    }

    else
    {
      v23 = 1278226488;
    }
  }

  v55 = v20;
  v25 = [(VNImageBuffer *)v24 _createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:v5 height:v4 format:v23 options:v17 outPooled:0 error:&v55];
  v26 = v55;

  *(*(*(a1 + 56) + 8) + 24) = v25;
  v27 = *(*(a1 + 56) + 8);
  v29 = *(v27 + 24);
  v28 = (v27 + 24);
  if (v29)
  {
    v30 = *(a1 + 32);
    v31 = v30[2];
    if (v31)
    {
      v32 = *(a1 + 136);
      v33 = *(a1 + 140);
      v54 = v26;
      v34 = [(VNImageBuffer *)v30 _cropCVPixelBuffer:v31 outBuffer:v28 width:v5 height:v4 format:v32 cropRect:v49 performCrop:v17 options:v8 rotate90CCW:v10 error:v12, v14, v33, &v54];
      v35 = v54;
    }

    else
    {
      v37 = v30[3];
      v38 = v49;
      if (!v37)
      {
        v42 = v30[5];
        if (!v42)
        {
          goto LABEL_27;
        }

        v43 = *(a1 + 136);
        v44 = *(a1 + 140);
        v52 = v26;
        v45 = [(VNImageBuffer *)v30 _cropImageSourceManager:v42 outBuffer:v28 width:v5 height:v4 format:v43 cropRect:v49 performCrop:v17 options:v8 rotate90CCW:v10 error:v12, v14, v44, &v52];
        v20 = v52;

        if (v45)
        {
LABEL_26:
          v26 = v20;
          v38 = v49;
LABEL_27:
          v51 = 0;
          v50 = v26;
          v36 = [VNValidationUtilities getBOOLValue:&v51 forKey:@"VNImageBufferOption_DoNotCacheRepresentations" inOptions:v17 withDefaultValue:0 error:&v50];
          v20 = v50;

          if (v36)
          {
            if (*(*(*(a1 + 56) + 8) + 24))
            {
              if ((v51 & 1) != 0 || ([*(*(a1 + 32) + 48) cacheBuffer:? forCacheKey:?], *(*(*(a1 + 56) + 8) + 24)))
              {
                v41 = [*(a1 + 48) objectForKeyedSubscript:@"VNImageBufferOption_RequiresDepth"];
                if ((v38 | [v41 BOOLValue] ^ 1) == 1)
                {
                }

                else
                {
                  v48 = *(*(a1 + 32) + 96);

                  if (v48)
                  {
                    CVBufferSetAttachment(*(*(*(a1 + 56) + 8) + 24), @"VNDepthRepresentationAttachment", *(*(a1 + 32) + 96), kCVAttachmentMode_ShouldNotPropagate);
                  }
                }
              }
            }
          }

          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v39 = *(a1 + 136);
      v40 = *(a1 + 140);
      v53 = v26;
      v34 = [(VNImageBuffer *)v30 _cropCIImage:v37 outBuffer:v28 width:v5 height:v4 format:v39 cropRect:v49 performCrop:v17 options:v8 rotate90CCW:v10 error:v12, v14, v40, &v53];
      v35 = v53;
    }

    v20 = v35;

    if (v34)
    {
      goto LABEL_26;
    }

LABEL_35:
    v36 = 0;
    goto LABEL_36;
  }

  v36 = 0;
  v20 = v26;
LABEL_36:

  objc_autoreleasePoolPop(v16);
  if (v36)
  {
    v6 = 1;
  }

  else
  {
    CVPixelBufferRelease(*(*(*(a1 + 56) + 8) + 24));
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (a2)
    {
      v46 = v20;
      *a2 = v20;
    }

    v6 = 0;
  }

  return v6;
}

- (VNImageBuffer)bufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5 options:(id)a6 error:(id *)a7 pixelBufferRepsCacheKey:(id *)a8
{
  v10 = *&a5;
  v14 = a6;
  if (*&self->_origPixelBuffer == 0 && !self->_imageSourceManager)
  {
    if (a7)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to create image for processing"];
      *a7 = [VNError errorWithCode:3 message:v16];

      a7 = 0;
    }
  }

  else
  {
    [(VNImageBuffer *)self fullImageBufferRect];
    a7 = [(VNImageBuffer *)self croppedBufferWithWidth:a3 height:a4 format:v10 cropRect:v14 options:a7 error:a8 pixelBufferRepsCacheKey:?];
  }

  return a7;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_origPixelBuffer);
  self->_origPixelBuffer = 0;
  origSampleBuffer = self->_origSampleBuffer;
  if (origSampleBuffer)
  {
    CFRelease(origSampleBuffer);
    self->_origSampleBuffer = 0;
  }

  session = self->_session;
  self->_session = 0;

  kdebug_trace();
  v5.receiver = self;
  v5.super_class = VNImageBuffer;
  [(VNImageBuffer *)&v5 dealloc];
}

- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7
{
  v9 = *&a5;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(VNImageBuffer *)self initWithCMSampleBuffer:a3 orientation:v9 options:v13 session:v14];
  if (v15)
  {
    v16 = [VNDepthRepresentation depthRepresentationForDepthData:v12 orientation:v9];
    depthRepresentation = v15->_depthRepresentation;
    v15->_depthRepresentation = v16;

    v18 = v15;
  }

  return v15;
}

- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  valuePtr = a4;
  v10 = a5;
  v11 = a6;
  if (!CMSampleBufferIsValid(a3) || !CMSampleBufferDataIsReady(a3))
  {
    goto LABEL_10;
  }

  if (!a4)
  {
    v12 = CMGetAttachment(a3, *MEMORY[0x1E696DE78], 0);
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
    }
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    goto LABEL_10;
  }

  v14 = [(VNImageBuffer *)self initWithCVPixelBuffer:ImageBuffer orientation:valuePtr options:v10 session:v11];
  if (!v14)
  {
    self = 0;
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  CFRetain(a3);
  v14->_origSampleBuffer = a3;
  self = v14;
  v15 = self;
LABEL_11:

  return v15;
}

- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNImageBuffer *)self initWithCMSampleBuffer:a3 orientation:v5 options:v8 session:v9];

  return v10;
}

- (VNImageBuffer)initWithURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[VNImageSourceManager alloc] initWithImageURL:v10];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (!a4)
  {
    a4 = [(VNImageSourceManager *)v13 exifOrientation];
  }

  v15 = [(VNImageBuffer *)&self->super.isa initWithOptions:v11 orientation:a4 session:v12];
  v16 = v15;
  if (!v15)
  {
    self = 0;
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(v15 + 5, v14);
  kdebug_trace();
  self = v16;
  v17 = self;
LABEL_8:

  return v17;
}

- (id)initWithOptions:(int)a3 orientation:(void *)a4 session:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = VNImageBuffer;
    v9 = objc_msgSendSuper2(&v23, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 1, a4);
      if (v7)
      {
        v10 = [v7 copy];
      }

      else
      {
        v10 = MEMORY[0x1E695E0F8];
      }

      v11 = a1[11];
      a1[11] = v10;

      v12 = objc_alloc_init(VNImageBufferCache);
      v13 = a1[6];
      a1[6] = v12;

      v14 = [v7 objectForKeyedSubscript:@"VNImageOptionCIContext"];
      v15 = a1[7];
      a1[7] = v14;

      v16 = v7;
      objc_opt_self();
      if (!a3)
      {
        v17 = [v16 objectForKeyedSubscript:@"VNImageOptionProperties"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = *MEMORY[0x1E696DE78];
          v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];

          if (v19 && ([v17 objectForKeyedSubscript:v18], v20 = objc_claimAutoreleasedReturnValue(), (v19 = v20) != 0))
          {
            a3 = [v20 intValue];
          }

          else
          {
            a3 = 1;
          }
        }

        else
        {
          a3 = 0;
        }
      }

      if ((a3 - 1) >= 8)
      {
        v21 = 1;
      }

      else
      {
        v21 = a3;
      }

      *(a1 + 16) = v21;
      *(a1 + 26) = 0;
    }
  }

  return a1;
}

- (VNImageBuffer)initWithURL:(id)a3 orientation:(unsigned int)a4 options:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNImageBuffer *)self initWithURL:v8 orientation:v6 options:v9 session:v10];

  return v11;
}

- (VNImageBuffer)initWithData:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[VNImageSourceManager alloc] initWithImageData:v10];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (!a4)
  {
    a4 = [(VNImageSourceManager *)v13 exifOrientation];
  }

  v15 = [(VNImageBuffer *)&self->super.isa initWithOptions:v11 orientation:a4 session:v12];
  v16 = v15;
  if (!v15)
  {
    self = 0;
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(v15 + 5, v14);
  kdebug_trace();
  self = v16;
  v17 = self;
LABEL_8:

  return v17;
}

- (VNImageBuffer)initWithData:(id)a3 orientation:(unsigned int)a4 options:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNImageBuffer *)self initWithData:v8 orientation:v6 options:v9 session:v10];

  return v11;
}

- (VNImageBuffer)initWithCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(VNImageBuffer *)&self->super.isa initWithOptions:v12 orientation:a4 session:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 3, a3);
    kdebug_trace();
    v16 = v15;
  }

  return v15;
}

- (VNImageBuffer)initWithCIImage:(id)a3 orientation:(unsigned int)a4 options:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNImageBuffer *)self initWithCIImage:v8 orientation:v6 options:v9 session:v10];

  return v11;
}

- (VNImageBuffer)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(VNImageBuffer *)&self->super.isa initWithOptions:v10 orientation:a4 session:v11];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:a3];
    origCIImage = v12->_origCIImage;
    v12->_origCIImage = v13;

    kdebug_trace();
    v15 = v12;
  }

  return v12;
}

- (VNImageBuffer)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNImageBuffer *)self initWithCGImage:a3 orientation:v5 options:v8 session:v9];

  return v10;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6 session:(id)a7
{
  v9 = *&a5;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(VNImageBuffer *)self initWithCVPixelBuffer:a3 orientation:v9 options:v13 session:v14];
  if (v15)
  {
    v16 = [VNDepthRepresentation depthRepresentationForDepthData:v12 orientation:v9];
    depthRepresentation = v15->_depthRepresentation;
    v15->_depthRepresentation = v16;

    v18 = v15;
  }

  return v15;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 depthData:(id)a4 orientation:(unsigned int)a5 options:(id)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a6;
  v12 = objc_alloc_init(VNSession);
  v13 = [(VNImageBuffer *)self initWithCVPixelBuffer:a3 depthData:v10 orientation:v7 options:v11 session:v12];

  return v13;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5 session:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (a3 && (self = [(VNImageBuffer *)&self->super.isa initWithOptions:v10 orientation:a4 session:v11]) != 0)
  {
    v12 = CVPixelBufferRetain(a3);
    self->_origPixelBuffer = v12;
    Width = CVPixelBufferGetWidth(v12);
    Height = CVPixelBufferGetHeight(self->_origPixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(self->_origPixelBuffer);
    if ([(VNImageBuffer *)self orientation]== 1)
    {
      v16 = [VNImageBufferCache cacheKeyWithBufferFormat:PixelFormatType width:Width height:Height];
      [(VNImageBufferCache *)self->_pixelBufferRepsCache cacheBuffer:self->_origPixelBuffer forCacheKey:v16];
    }

    kdebug_trace();
    self = self;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 options:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNImageBuffer *)self initWithCVPixelBuffer:a3 orientation:v5 options:v8 session:v9];

  return v10;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)a3 options:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(VNSession);
  v8 = [(VNImageBuffer *)self initWithCVPixelBuffer:a3 orientation:0 options:v6 session:v7];

  return v8;
}

- (CGRect)fullImageBufferRect
{
  v3 = [(VNImageBuffer *)self width];
  v4 = [(VNImageBuffer *)self height];
  v5 = 0.0;
  v6 = 0.0;
  v7 = v3;
  result.size.height = v4;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)computeCenterCropRectFromCropRect:(CGRect)result inImageSize:(CGSize)a4 calculatedScaleX:(double *)a5 calculatedScaleY:(double *)a6
{
  if (result.size.width == 0.0 || result.size.height == 0.0)
  {
    return **&MEMORY[0x1E695F050];
  }

  else
  {
    v6 = a4.width / result.size.width;
    v7 = a4.height / result.size.height;
    v8 = a4.width / result.size.width < a4.height / result.size.height;
    v9 = a4.height / (a4.width / result.size.width);
    v10 = a4.width / v7;
    if (v8)
    {
      result.origin.x = result.origin.x + (result.size.width - v10) * 0.5;
    }

    if (v8)
    {
      result.size.width = v10;
    }

    else
    {
      result.origin.y = result.origin.y + (result.size.height - v9) * 0.5;
    }

    if (!v8)
    {
      result.size.height = v9;
    }

    if (a5)
    {
      *a5 = v6;
    }

    if (a6)
    {
      *a6 = v7;
    }
  }

  return result;
}

+ (const)mapOrientationToRotationDegrees
{
  if (+[VNImageBuffer mapOrientationToRotationDegrees]::onceToken != -1)
  {
    dispatch_once(&+[VNImageBuffer mapOrientationToRotationDegrees]::onceToken, &__block_literal_global_4817);
  }

  return +[VNImageBuffer mapOrientationToRotationDegrees]::mapOrientationToRotationDegrees;
}

@end