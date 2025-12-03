@interface VNImageBuffer
+ (CGRect)computeCenterCropRectFromCropRect:(CGRect)result inImageSize:(CGSize)size calculatedScaleX:(double *)x calculatedScaleY:(double *)y;
+ (const)mapOrientationToRotationDegrees;
+ (uint64_t)_VNVTPixelTransferImageForSource:(CGFloat)source destinationBuffer:(CGFloat)buffer cropRect:(uint64_t)rect performCrop:(__CVBuffer *)crop vtSessionManager:(__CVBuffer *)manager error:(int)error;
- ($C89D6CB792F036C1FD5C44B3A3669EAC)timingInfo;
- (BOOL)getCameraIntrinsicsAvailable:(id *)available;
- (BOOL)getCameraOpticalCenterIfAvailable:(CGPoint *)available;
- (BOOL)getPixelFocalLengthIfAvailable:(float *)available;
- (CGAffineTransform)_calculateTranslationTransformForOrientedCropWithOrientation:(double)orientation unorientedSubsampledFullImageRect:(double)rect unorientedSubsampledOriginalCrop:(double)crop;
- (CGRect)fullImageBufferRect;
- (CGRect)makeClippedRectAgainstImageExtentUsingOriginalRect:(CGRect)rect;
- (CVPixelBufferRef)_createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:(size_t)with height:(uint64_t)height format:(void *)format options:(_BYTE *)options outPooled:(void *)pooled error:;
- (NSNumber)sceneStabilityMetric;
- (VNImageBuffer)bufferWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format options:(id)options error:(id *)error pixelBufferRepsCacheKey:(id *)key;
- (VNImageBuffer)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithCIImage:(id)image orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithCIImage:(id)image orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer options:(id)options;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithData:(id)data orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (VNImageBuffer)initWithURL:(id)l orientation:(unsigned int)orientation options:(id)options;
- (VNImageBuffer)initWithURL:(id)l orientation:(unsigned int)orientation options:(id)options session:(id)session;
- (__CVBuffer)createBufferWithMaxSideLengthOf:(unint64_t)of pixelFormat:(unsigned int)format options:(id)options error:(id *)error;
- (__CVBuffer)createCroppedBufferWithMaxSideLengthOf:(unint64_t)of cropRect:(CGRect)rect pixelFormat:(unsigned int)format options:(id)options error:(id *)error pixelBufferRepsCacheKey:(id *)key;
- (__CVBuffer)cropAndScaleBufferWithWidth:(unint64_t)width height:(unint64_t)height cropRect:(CGRect)rect format:(unsigned int)format imageCropAndScaleOption:(unint64_t)option options:(id)options error:(id *)error calculatedNormalizedOriginOffset:(CGPoint *)self0 calculatedScaleX:(double *)self1 calculatedScaleY:(double *)self2 pixelBufferRepsCacheKey:(id *)self3;
- (id)_optionsWithOverridingOptions:(uint64_t)options;
- (id)augmentedBuffersWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format options:(id)options augmentationOptions:(id)augmentationOptions error:(id *)error;
- (id)augmentedCroppedBuffersWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format cropRect:(CGRect)rect options:(id)options augmentationOptions:(id)augmentationOptions error:(id *)error;
- (id)debugQuickLookObject;
- (id)fileURL;
- (id)initWithOptions:(int)options orientation:(void *)orientation session:;
- (id)sequencedRequestPreviousObservationsKey;
- (int)aspect;
- (int)aspectForRegionOfInterest:(CGRect)interest;
- (uint64_t)_cropCIImage:(CVPixelBufferRef *)image outBuffer:(unint64_t)buffer width:(unint64_t)width height:(int)height format:(int)format cropRect:(void *)rect performCrop:(double)crop options:(double)self0 rotate90CCW:(double)self1 error:(double)self2;
- (uint64_t)_cropCVPixelBuffer:(CVPixelBufferRef *)buffer outBuffer:(unint64_t)outBuffer width:(unint64_t)width height:(int)height format:(int)format cropRect:(void *)rect performCrop:(CGFloat)crop options:(CGFloat)self0 rotate90CCW:(CGFloat)self1 error:(CGFloat)self2;
- (uint64_t)_cropImageSourceManager:(CVPixelBufferRef *)manager outBuffer:(unint64_t)buffer width:(unint64_t)width height:(int)height format:(int)format cropRect:(void *)rect performCrop:(double)crop options:(double)self0 rotate90CCW:(double)self1 error:(double)self2;
- (uint64_t)_croppedBufferWithWidth:(uint64_t)width height:(uint64_t)height format:(void *)format cropRect:(void *)rect options:(void *)options error:(char)error pixelBufferRepsCacheKey:(CGFloat)key rotate90CCW:(CGFloat)self0;
- (uint64_t)calculateOrientationCorrectedImageDimensions;
- (unint64_t)height;
- (unint64_t)width;
- (void)_baseCIImage;
- (void)_isRectOutOfBounds:(CGFloat)bounds;
- (void)dealloc;
@end

@implementation VNImageBuffer

- (id)augmentedCroppedBuffersWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format cropRect:(CGRect)rect options:(id)options augmentationOptions:(id)augmentationOptions error:(id *)error
{
  width = rect.size.width;
  rect = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v286[9] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  augmentationOptionsCopy = augmentationOptions;
  v206 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v212 = objc_alloc_init(MEMORY[0x1E695DF70]);
  width = [(VNImageBuffer *)self width];
  height = [(VNImageBuffer *)self height];
  v288.origin.x = x;
  v288.origin.y = y;
  v288.size.width = width;
  v288.size.height = rect;
  v14 = width;
  v15 = height;
  if (CGRectIsInfinite(v288))
  {
    v204 = 0;
  }

  else
  {
    v289.origin.x = 0.0;
    v289.origin.y = 0.0;
    v289.size.width = width;
    v289.size.height = height;
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
  v210 = [(VNImageBuffer *)self _optionsWithOverridingOptions:optionsCopy];

  allKeys = [augmentationOptionsCopy allKeys];
  v17 = [allKeys firstObjectCommonWithArray:v205];
  v18 = v17 == 0;

  if (!v18)
  {
    v220 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationApplePipeline"];
    if (v220)
    {
      texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:format error:error];
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
        _baseCIImage = [(VNImageBuffer *)self _baseCIImage];
        v22 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:[(VNImageBuffer *)self height] height:875704422 pixelFormatType:error error:?];
        if (v22)
        {
          v25 = self->_passedInCIContext;
          session = [(VNImageBuffer *)self session];
          vnciContextManager = [session vnciContextManager];

          if (v25)
          {
            v28 = 0;
          }

          else
          {
            v29 = [(VNCIContextManager *)vnciContextManager waitAndGetAvailableContextFromOptions:0 error:?];
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

          [(CIContext *)v25 render:_baseCIImage toCVPixelBuffer:v22];
          v22 = CFAutorelease(v22);
          [(VNCIContextManager *)vnciContextManager releaseContext:v28];
        }
      }

      if (!v22)
      {
        goto LABEL_219;
      }

      if (![(VNImageBuffer *)self _cropCVPixelBuffer:v22 outBuffer:texture width:width height:height format:format cropRect:v204 performCrop:v20 options:x rotate90CCW:y error:width, rect, 0, error])
      {
        goto LABEL_219;
      }

      [v206 addObject:texture[0]];
      CVPixelBufferRelease(texture[0]);
      texture[0] = 0;
      texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:format error:error];
      if (!texture[0])
      {
        goto LABEL_219;
      }

      _baseCIImage2 = [(VNImageBuffer *)self _baseCIImage];
      error = [(VNImageBuffer *)&self->super.isa _cropCIImage:_baseCIImage2 outBuffer:texture width:width height:height format:format cropRect:v204 performCrop:v20 options:x rotate90CCW:y error:width, rect, 0, error];

      if ((error & 1) == 0)
      {
        goto LABEL_219;
      }

      [v206 addObject:texture[0]];
      CVPixelBufferRelease(texture[0]);
      texture[0] = 0;
      if (self->_imageSourceManager)
      {
        texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:format error:error];
        if (!texture[0] || ![(VNImageBuffer *)self _cropImageSourceManager:texture outBuffer:width width:height height:format format:v204 cropRect:v20 performCrop:x options:y rotate90CCW:width error:rect, 0, error])
        {
          goto LABEL_219;
        }

        [v206 addObject:texture[0]];
        CVPixelBufferRelease(texture[0]);
      }
    }

    _baseCIImage3 = [(VNImageBuffer *)self _baseCIImage];
    [v212 addObject:_baseCIImage3];

    v35 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationBlur"];

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
        intValue = [v45 intValue];
      }

      else
      {
        intValue = 10;
      }

      v46 = [v221 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v46)
      {
        srand([v46 intValue]);
        v47 = (v40 - v44) * 4.6566e-10;
      }

      else
      {
        v47 = (v40 - v44) / intValue;
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
            imageByClampingToExtent = [v52 imageByClampingToExtent];
            [v48 setValue:imageByClampingToExtent forKey:v228];

            v55 = intValue;
            for (i = v44; v55; --v55)
            {
              *&v54 = i;
              v57 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
              [v48 setValue:v57 forKey:v50];

              outputImage = [v48 outputImage];
              [v52 extent];
              v59 = [outputImage imageByCroppingToRect:?];

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

    v60 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationExposure"];

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
        intValue2 = [v70 intValue];
      }

      else
      {
        intValue2 = 10;
      }

      v71 = [v222 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v71)
      {
        srand([v71 intValue]);
        v72 = (v65 - v69) * 4.6566e-10;
      }

      else
      {
        v72 = (v65 - v69) / intValue2;
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
            v78 = intValue2;
            for (k = v69; v78; --v78)
            {
              *&v77 = k;
              v80 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
              [v73 setValue:v80 forKey:v75];

              outputImage2 = [v73 outputImage];
              [v61 addObject:outputImage2];

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

    v82 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationShear"];

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
        intValue3 = [v92 intValue];
      }

      else
      {
        intValue3 = 10;
      }

      v93 = [v223 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v93)
      {
        srand([v93 intValue]);
        v94 = (v87 - v91) * 4.6566e-10;
      }

      else
      {
        v94 = (v87 - v91) / intValue3;
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

            if (intValue3)
            {
              v98 = *(*(&v267 + 1) + 8 * m);
              v99 = intValue3;
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

    v103 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationRotation"];

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
        intValue4 = [v113 intValue];
      }

      else
      {
        intValue4 = 10;
      }

      v114 = [v224 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v114)
      {
        srand([v114 intValue]);
        v115 = (v108 - v112) * 4.6566e-10;
      }

      else
      {
        v115 = (v108 - v112) / intValue4;
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
            v120 = intValue4;
            for (ii = v112; v120; --v120)
            {
              v122 = [MEMORY[0x1E696AD98] numberWithDouble:ii * 3.14159265 / 180.0];
              [v116 setValue:v122 forKey:v118];

              outputImage3 = [v116 outputImage];
              [v104 addObject:outputImage3];

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

    v203 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationNoise"];

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
        intValue5 = [v132 intValue];
      }

      else
      {
        intValue5 = 10;
      }

      v134 = [v203 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v134)
      {
        srand([v134 intValue]);
        v135 = (v127 - v131) * 4.6566e-10;
      }

      else
      {
        v135 = (v127 - v131) / intValue5;
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
            outputImage4 = [v231 outputImage];
            [v136 setValue:outputImage4 forKey:v139];

            v144 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
            [v136 setValue:v144 forKey:v225];

            imageByClampingToExtent2 = [v142 imageByClampingToExtent];
            [v137 setValue:imageByClampingToExtent2 forKey:v219];

            v147 = intValue5;
            for (kk = v131; v147; --v147)
            {
              *&v146 = kk;
              v149 = [MEMORY[0x1E696AD98] numberWithFloat:v146];
              [v136 setValue:v149 forKey:v140];

              outputImage5 = [v136 outputImage];
              [v137 setValue:outputImage5 forKey:v139];

              outputImage6 = [v137 outputImage];
              [v246 addObject:outputImage6];

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

    v152 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationFlipHorizontal"];

    v153 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationFlipVertical"];

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

    v220 = [augmentationOptionsCopy objectForKey:@"VNImageBufferAugmentationRandomCrop"];

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
        intValue6 = [v173 intValue];
      }

      else
      {
        intValue6 = 10;
      }

      v175 = [v220 objectForKey:@"VNImageBufferAugmentationOptionRandomSeed"];

      if (v175)
      {
        intValue7 = [v175 intValue];
      }

      else
      {
        intValue7 = 0;
      }

      srand(intValue7);

      v168 = fmaxf((v169 - v166) / intValue6, 0.001);
    }

    else
    {
      intValue6 = 10;
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
                  height2 = [(VNImageBuffer *)self height];
                  width2 = [(VNImageBuffer *)self width];
                  v189 = 1.0 - v184;
                  v190 = width * v189;
                  v191 = ceilf(v190);
                  v185 = v191;
                  *&v189 = rect * v189;
                  *&v189 = ceilf(*&v189);
                  v186 = *&v189;
                  v192 = fminf(v191, *&v189) < 1.0;
                  if (error && v192)
                  {
                    v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"RandomCrop produced an invalid crop for width %f height %f", *&v185, *&v186];
                    *error = [VNError errorWithCode:14 message:v201];

                    goto LABEL_218;
                  }

                  if (intValue6)
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

                v193 = height2 - v186;
                v194 = width2 - v185;
                v195 = intValue6;
                while (1)
                {
                  v196 = random();
                  texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:format error:error];
                  if (!texture[0])
                  {
                    break;
                  }

                  v197 = vcvts_n_f32_s64(v196, 0x1FuLL);
                  v198 = v194 * v197;
                  *&v197 = v193 * v197;
                  if (![(VNImageBuffer *)&self->super.isa _cropCIImage:v183 outBuffer:texture width:width height:height format:format cropRect:v204 performCrop:v210 options:ceilf(v198) rotate90CCW:ceilf(*&v197) error:v185, v186, 0, error])
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
              texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:format error:error];
              if (!texture[0] || ![(VNImageBuffer *)&self->super.isa _cropCIImage:v183 outBuffer:texture width:width height:height format:format cropRect:v204 performCrop:v210 options:x rotate90CCW:y error:width, rect, 0, error])
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

    texture[0] = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:format error:error];
    if (texture[0])
    {
      _baseCIImage4 = [(VNImageBuffer *)self _baseCIImage];
      error2 = [(VNImageBuffer *)&self->super.isa _cropCIImage:_baseCIImage4 outBuffer:texture width:width height:height format:format cropRect:v204 performCrop:v210 options:x rotate90CCW:y error:width, rect, 0, error];

      if (error2)
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

  if (error)
  {
    [VNError errorWithCode:14 message:@"The augmentationOptions do not conatain any of the VNImageBufferAugmentation keys"];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_221:

  return v23;
}

- (id)_optionsWithOverridingOptions:(uint64_t)options
{
  v3 = a2;
  if (options)
  {
    v4 = [*(options + 88) mutableCopy];
    [v4 addEntriesFromDictionary:v3];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_cropCVPixelBuffer:(CVPixelBufferRef *)buffer outBuffer:(unint64_t)outBuffer width:(unint64_t)width height:(int)height format:(int)format cropRect:(void *)rect performCrop:(CGFloat)crop options:(CGFloat)self0 rotate90CCW:(CGFloat)self1 error:(CGFloat)self2
{
  v134.x = crop;
  v134.y = options;
  wCopy = w;
  errorCopy = error;
  rectCopy = rect;
  if (self && [VNValidationUtilities validateNonNilOptionsDictionary:rectCopy selector:sel__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error_ error:a14])
  {
    [VNError VNAssert:buffer != 0 log:@"Internal error: missing target buffer for crop operations"];
    heightCopy = height;
    outBufferCopy = outBuffer;
    widthCopy = width;
    bufferCopy = buffer;
    [self fullImageBufferRect];
    v145.origin.x = crop;
    v145.origin.y = options;
    v145.size.width = w;
    v145.size.height = error;
    v139 = CGRectIntersection(v138, v145);
    height = v139.size.height;
    if (options >= 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = -options;
    }

    if (crop >= 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = -crop;
    }

    v132.f64[0] = v28;
    v132.f64[1] = v27;
    rect = v139.size.width;
    *&v133 = v139.size.width;
    *(&v133 + 1) = *&v139.size.height;
    error = [(VNImageBuffer *)self _isRectOutOfBounds:crop, options, w, error];
    if (error)
    {
      v30 = outBuffer / w;
      v31 = width / error;
      v28 = v28 * v30;
      v27 = (error - (v27 + height)) * v31;
      v132.f64[0] = v28;
      v132.f64[1] = v27;
      height = height * v31;
      rect = rect * v30;
      *&v133 = rect;
      *(&v133 + 1) = height;
    }

    [self fullImageBufferRect];
    v146.origin = v134;
    v146.size.width = wCopy;
    v146.size.height = errorCopy;
    v141 = CGRectIntersection(v140, v146);
    x = v141.origin.x;
    y = v141.origin.y;
    width = v141.size.width;
    widthCopy3 = v141.size.height;
    v134.x = v141.origin.x;
    v134.y = v141.origin.y;
    wCopy = v141.size.width;
    errorCopy = v141.size.height;
    orientation = [self orientation];
    v37 = CVPixelBufferGetWidth(a2);
    v38 = CVPixelBufferGetHeight(a2);
    objc_opt_self();
    v45 = v37;
    v46 = v38;
    if (orientation <= 4)
    {
      if (orientation > 2)
      {
        if (orientation == 3)
        {
          v47 = v45 - (x + width);
          goto LABEL_34;
        }

LABEL_33:
        v47 = x;
        goto LABEL_34;
      }

      if (orientation == 1)
      {
LABEL_32:
        y = v46 - (y + widthCopy3);
        goto LABEL_33;
      }

      if (orientation == 2)
      {
        y = v46 - (y + widthCopy3);
        v47 = v45 - (x + width);
LABEL_34:
        widthCopy2 = width;
LABEL_35:
        v131 = 0;
        v52 = [VNValidationUtilities getOptionalObject:&v131 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:rectCopy error:a14];
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
          integerValue = [v53 integerValue];
        }

        else
        {
          integerValue = 1;
        }

        v130 = -1;
        if ((VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(orientation, integerValue, &v130, a13, a14) & 1) == 0)
        {
          v48 = 0;
LABEL_74:
          v53 = v107;
          goto LABEL_75;
        }

        v55 = *bufferCopy;
        PixelFormatType = CVPixelBufferGetPixelFormatType(*bufferCopy);
        v56 = CVPixelBufferGetWidth(v55);
        cf = v55;
        v57 = CVPixelBufferGetHeight(v55);
        session = [self session];
        vnvtSessionManager = [session vnvtSessionManager];
        v59 = v47;
        v60 = y;
        v61 = widthCopy2;
        v62 = widthCopy3;
        r2 = v56;
        v63 = v57;

        if (v130 == 1)
        {
          if (error)
          {
            v142.origin.x = v28;
            v142.origin.y = v27;
            v142.size.width = rect;
            v142.size.height = height;
            v64 = vnvtSessionManager;
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
              if (([(VNImageBuffer *)v59 _VNVTPixelTransferImageForSource:v60 destinationBuffer:v61 cropRect:v62 performCrop:VNImageBuffer vtSessionManager:a2 error:v65, format, vnvtSessionManager, a14]& 1) != 0)
              {
                v66 = CVPixelBufferGetPixelFormatType(v65);
                v67 = [(VNVTSessionManager *)vnvtSessionManager waitAndGetAvailablePixelRotationSessionForInputPixelFormat:v66 outputPixelFormat:PixelFormatType rotation:0 flipHorizontal:0 flipVertical:0 error:a14];
                if (v67)
                {
                  v68 = VTPixelRotationSessionRotateSubImage();
                  if (!v68)
                  {
                    v89 = 1;
LABEL_69:
                    [(VNVTSessionManager *)vnvtSessionManager releasePixelRotationSession:v67];
                    CVPixelBufferRelease(v65);

                    if (v89)
                    {
LABEL_70:
                      if (heightCopy == 1278226488)
                      {
                        *bufferCopy = 0;
                        v114[0] = MEMORY[0x1E69E9820];
                        v114[1] = 3221225472;
                        v114[2] = __113__VNImageBuffer__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error___block_invoke_2;
                        v114[3] = &__block_descriptor_60_e25_B24__0____CVBuffer__8__16l;
                        v114[4] = outBufferCopy;
                        v114[5] = widthCopy;
                        v115 = 1278226488;
                        v114[6] = bufferCopy;
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
            v64 = vnvtSessionManager;
            if (([(VNImageBuffer *)v59 _VNVTPixelTransferImageForSource:v60 destinationBuffer:v61 cropRect:v62 performCrop:VNImageBuffer vtSessionManager:a2 error:cf, format, vnvtSessionManager, a14]& 1) != 0)
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
            v130 = [v73 initWithFormat:@"VNImageBuffer - wrong crop orientation for rotation: %d", v130];
            v64 = vnvtSessionManager;
            if (a14)
            {
              *a14 = [VNError errorForInternalErrorWithLocalizedDescription:v130];
            }

            uTF8String = [v130 UTF8String];
            VNValidatedLog(4, @"%s", v76, v77, v78, v79, v80, v81, uTF8String);
            v137 = 0;

            goto LABEL_73;
          }

          mapOrientationToRotationDegrees = [objc_opt_class() mapOrientationToRotationDegrees];
          v85 = *(mapOrientationToRotationDegrees + 8);
          v83 = mapOrientationToRotationDegrees + 8;
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
              v94 = outBufferCopy;
            }

            else
            {
              v94 = widthCopy;
            }

            if (v130 <= 4)
            {
              v95 = widthCopy;
            }

            else
            {
              v95 = outBufferCopy;
            }

            v96 = v130 == 7 || v130 == 4;
            recta = v96;
            v97 = [(VNImageBuffer *)self _createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:v94 height:v95 format:PixelFormatType options:rectCopy outPooled:0 error:a14];
            v64 = vnvtSessionManager;
            if (v97)
            {
              if (([(VNImageBuffer *)v59 _VNVTPixelTransferImageForSource:v60 destinationBuffer:v61 cropRect:v62 performCrop:VNImageBuffer vtSessionManager:a2 error:v97, format, vnvtSessionManager, a14]& 1) != 0 && (v98 = CVPixelBufferGetPixelFormatType(v97), [(VNVTSessionManager *)vnvtSessionManager waitAndGetAvailablePixelRotationSessionForInputPixelFormat:v98 outputPixelFormat:PixelFormatType rotation:v91 flipHorizontal:v93 flipVertical:recta error:a14], (v99 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v116[0] = MEMORY[0x1E69E9820];
                v116[1] = 3221225472;
                v118 = v132;
                v116[2] = __113__VNImageBuffer__cropCVPixelBuffer_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error___block_invoke;
                v116[3] = &unk_1E77B2AA8;
                v129 = error;
                v119 = v133;
                v120 = cf;
                v124 = integerValue;
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
              [(VNVTSessionManager *)vnvtSessionManager releasePixelRotationSession:v100];

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
            v64 = vnvtSessionManager;
            if (a14)
            {
              v87 = objc_alloc(MEMORY[0x1E696AEC0]);
              v1302 = [v87 initWithFormat:@"Invalid crop orientation: %d", v130];
              *a14 = [VNError errorForInternalErrorWithLocalizedDescription:v1302];
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

    if (orientation > 6)
    {
      if (orientation == 7)
      {
        v50 = x + width;
        v49 = y;
        goto LABEL_29;
      }

      if (orientation != 8)
      {
        goto LABEL_31;
      }

      v47 = y;
    }

    else
    {
      if (orientation != 5)
      {
        v49 = v45 - (y + widthCopy3);
        v50 = x + width;
LABEL_29:
        y = v46 - v50;
        v47 = v49;
        goto LABEL_30;
      }

      v47 = v45 - (y + widthCopy3);
    }

    y = x;
LABEL_30:
    widthCopy2 = widthCopy3;
    widthCopy3 = width;
    goto LABEL_35;
  }

  v48 = 0;
LABEL_76:

  return v48;
}

- (void)_baseCIImage
{
  selfCopy = self;
  if (self)
  {
    v2 = self[3];
    if (v2)
    {
      v3 = v2;
LABEL_6:
      selfCopy = v3;
      goto LABEL_7;
    }

    if (self[2])
    {
      v3 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:?];
      goto LABEL_6;
    }

    v5 = self[5];
    if (v5)
    {
      v6 = *(v5 + 64);
      if (v6)
      {
        selfCopy = [MEMORY[0x1E695F658] imageWithContentsOfURL:v6];
      }

      else
      {
        v7 = selfCopy[5];
        if (v7)
        {
          v8 = *(v7 + 72);
        }

        else
        {
          v8 = 0;
        }

        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

LABEL_7:

  return selfCopy;
}

- (uint64_t)_cropCIImage:(CVPixelBufferRef *)image outBuffer:(unint64_t)buffer width:(unint64_t)width height:(int)height format:(int)format cropRect:(void *)rect performCrop:(double)crop options:(double)self0 rotate90CCW:(double)self1 error:(double)self2
{
  v24 = a2;
  rectCopy = rect;
  if (self && [VNValidationUtilities validateNonNilOptionsDictionary:rectCopy selector:sel__cropCIImage_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error_ error:a14])
  {
    [VNError VNAssert:image != 0 log:@"Internal error: missing target buffer for crop operations"];
    orientation = [self orientation];
    memset(&v73, 0, sizeof(v73));
    if (v24)
    {
      [v24 imageTransformForCGOrientation:orientation];
    }

    else
    {
      memset(&v72, 0, sizeof(v72));
    }

    CGAffineTransformInvert(&v73, &v72);
    v72 = v73;
    v75.origin.x = crop;
    v75.origin.y = options;
    v75.size.width = w;
    v75.size.height = error;
    v76 = CGRectApplyAffineTransform(v75, &v72);
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
    v71 = 0;
    v32 = [VNValidationUtilities getOptionalObject:&v71 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:rectCopy error:a14];
    v33 = v71;
    if (v32)
    {
      v67 = v33;
      if (v33)
      {
        integerValue = [v33 integerValue];
      }

      else
      {
        integerValue = 1;
      }

      v70 = -1;
      if (VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(orientation, integerValue, &v70, a13, a14))
      {
        v66 = self[7];
        session = [self session];
        vnciContextManager = [session vnciContextManager];

        if (v66)
        {
          v64 = 0;
        }

        else
        {
          v36 = [(VNCIContextManager *)vnciContextManager waitAndGetAvailableContextFromOptions:rectCopy error:a14];
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
        if (format)
        {
          clearImage = [MEMORY[0x1E695F658] clearImage];
          v40 = [v38 imageByCompositingOverImage:clearImage];

          v41 = [v40 imageByCroppingToRect:{x, y, width, height}];

          v38 = v41;
        }

        if (v70 <= 4)
        {
          widthCopy = buffer;
        }

        else
        {
          widthCopy = width;
        }

        if (v70 <= 4)
        {
          bufferCopy2 = width;
        }

        else
        {
          bufferCopy2 = buffer;
        }

        v44 = bufferCopy2;
        v45 = widthCopy;
        if (width != widthCopy || height != v44)
        {
          v46 = v45 / width;
          v47 = v44 / height;
          if (format)
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
          v60 = VNColorspaceForFormat(height, 0);
          v61 = *image;
          v62 = CVPixelBufferGetWidth(*image);
          [v66 render:v59 toCVPixelBuffer:v61 bounds:v60 colorSpace:{0.0, 0.0, v62, CVPixelBufferGetHeight(*image)}];
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

        [(VNCIContextManager *)vnciContextManager releaseContext:v64];
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

- (uint64_t)_cropImageSourceManager:(CVPixelBufferRef *)manager outBuffer:(unint64_t)buffer width:(unint64_t)width height:(int)height format:(int)format cropRect:(void *)rect performCrop:(double)crop options:(double)self0 rotate90CCW:(double)self1 error:(double)self2
{
  v121 = *MEMORY[0x1E69E9840];
  v111 = a2;
  rectCopy = rect;
  if (!self || ![VNValidationUtilities validateNonNilOptionsDictionary:rectCopy selector:sel__cropImageSourceManager_outBuffer_width_height_format_cropRect_performCrop_options_rotate90CCW_error_ error:a14])
  {
    goto LABEL_9;
  }

  if (manager)
  {
    orientation = [self orientation];
    v117 = 0;
    v26 = [VNValidationUtilities getOptionalObject:&v117 ofClass:objc_opt_class() forKey:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight" inOptions:rectCopy error:a14];
    v27 = v117;
    v110 = v27;
    if (!v26 || (!v27 ? (v28 = 1) : (v28 = [v27 integerValue]), v116 = -1, (VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(orientation, v28, &v116, a13, a14) & 1) == 0))
    {
      LOBYTE(v29) = 0;
LABEL_75:

      goto LABEL_76;
    }

    [VNError VNAssert:1 log:@"Internal error: needToUpscale cannot be NULL"];
    if (v28 <= 4)
    {
      widthCopy = buffer;
    }

    else
    {
      widthCopy = width;
    }

    v31 = widthCopy;
    if (v28 <= 4)
    {
      bufferCopy2 = width;
    }

    else
    {
      bufferCopy2 = buffer;
    }

    if (a13)
    {
      wCopy = error;
    }

    else
    {
      wCopy = w;
    }

    if (a13)
    {
      errorCopy2 = w;
    }

    else
    {
      errorCopy2 = error;
    }

    v35 = v31 / wCopy;
    if (v35 >= bufferCopy2 / errorCopy2)
    {
      v36 = v35;
    }

    else
    {
      v36 = bufferCopy2 / errorCopy2;
    }

    heightCopy = height;
    bufferCopy3 = buffer;
    widthCopy3 = width;
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
    v29 = rectCopy;
    v38 = [(CGImage *)v29 objectForKeyedSubscript:@"VNImageBufferOption_DownscaleCGInterpolationQuality"];
    v39 = v38;
    if (v38)
    {
      intValue = [v38 intValue];
    }

    else
    {
      intValue = 4;
    }

    v41 = [(CGImage *)v29 objectForKeyedSubscript:@"VNImageBufferOption_UpscaleCGInterpolationQuality"];

    if (v41)
    {
      intValue2 = [v41 intValue];
    }

    else
    {
      intValue2 = 4;
    }

    if (v36 <= 1.0)
    {
      v43 = intValue;
    }

    else
    {
      v43 = intValue2;
    }

    quality = v43;

    v44 = [(CGImage *)v29 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
    v45 = v44;
    if (v44)
    {
      bOOLValue = [v44 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v47 = [(CGImage *)v29 objectForKeyedSubscript:@"VNImageBufferOption_RequiresDepth"];
    bOOLValue2 = [v47 BOOLValue];

    if (!bOOLValue2 || (format & 1) != 0 || *(self + 96))
    {
      if ((bOOLValue2 & format) == 1)
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
      os_unfair_lock_lock((self + 104));
      if (v111)
      {
        v49 = [v111 _cgImageSourceAtAddress:v111 + 32 forSubSampleFactor:1 protectedWithUnfairLock:v111 + 12 operatingInLowPriority:0 error:0];
        if (v49)
        {
          v50 = +[VNDepthRepresentation depthRepresentationForImageSource:orientation:](VNDepthRepresentation, "depthRepresentationForImageSource:orientation:", v49, [v111 exifOrientation]);
          v51 = *(self + 96);
          *(self + 96) = v50;
        }
      }

      os_unfair_lock_unlock((self + 104));
    }

    if (heightCopy > 1111970368)
    {
      if (heightCopy != 1111970369 && heightCopy != 1278226488)
      {
        v52 = 1380401729;
LABEL_64:
        if (heightCopy != v52)
        {
          v61 = [(VNImageSourceManager *)v111 ciImageWithSubSampleFactor:bOOLValue useLowPriority:a14 error:?];
          if (v61)
          {
            LOBYTE(v29) = [(VNImageBuffer *)self _cropCIImage:v61 outBuffer:manager width:bufferCopy3 height:widthCopy3 format:heightCopy cropRect:format performCrop:v29 options:(crop * (1.0 / options)) rotate90CCW:(options * (1.0 / options)) error:(w * (1.0 / options)), (error * (1.0 / options)), a13, a14];
          }

          else
          {
            LOBYTE(v29) = 0;
          }

          goto LABEL_74;
        }
      }
    }

    else if (heightCopy != 32 && heightCopy != 40)
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
    if (orientation < 5)
    {
      width = [self width];
    }

    else
    {
      width = [self height];
    }

    v65 = Width;
    v66 = 1.0 / round(width / Width);
    v67 = MEMORY[0x1E695EFD0];
    v68 = *(MEMORY[0x1E695EFD0] + 16);
    *&v120.a = *MEMORY[0x1E695EFD0];
    *&v120.c = v68;
    *&v120.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v119.a = *&v120.a;
    *&v119.c = v68;
    *&v119.tx = *&v120.tx;
    if (!format)
    {
      [self fullImageBufferRect];
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

      CGAffineTransformMakeScale(&v115, bufferCopy3 / v77, widthCopy3 / v79);
      v120 = v115;
      goto LABEL_114;
    }

    v69 = w * v66;
    v70 = (crop * v66);
    v71 = (options * v66);
    v72 = v69;
    v73 = (error * v66);
    memset(&v115, 0, sizeof(v115));
    if (orientation <= 4)
    {
      switch(orientation)
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
          v87 = bufferCopy3 / v85;
          if (v116 < 5)
          {
            v87 = bufferCopy3 / v84;
          }

          v88 = widthCopy3 / v84;
          if (v116 < 5)
          {
            v88 = widthCopy3 / v85;
          }

          CGAffineTransformMakeScale(&v120, v87, v88);
          image = v86;
LABEL_114:
          v89 = *manager;
          LODWORD(v115.a) = 0;
          CVPixelBufferLockBaseAddress(v89, 0);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v89);
          BaseAddress = CVPixelBufferGetBaseAddress(v89);
          v92 = VNColorspaceForFormat(heightCopy, &v115);
          v93 = CGBitmapContextCreate(BaseAddress, bufferCopy3, widthCopy3, 8uLL, BytesPerRow, v92, LODWORD(v115.a));
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
      if (orientation <= 6)
      {
        *&t1.a = xmmword_1A6038B80;
        if (orientation == 5)
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

      if (orientation == 7)
      {
        *&t1.a = xmmword_1A6038B70;
        t1.c = 1.0;
        t1.d = 0.0;
        goto LABEL_106;
      }

      if (orientation == 8)
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

- (CGAffineTransform)_calculateTranslationTransformForOrientedCropWithOrientation:(double)orientation unorientedSubsampledFullImageRect:(double)rect unorientedSubsampledOriginalCrop:(double)crop
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

  v12 = crop - a9;
  if (a2 > 4)
  {
    v12 = a6;
  }

  v13 = -v12;
  v14 = a6 - a10;
  if (a2 <= 4)
  {
    crop = v14;
  }

  if (v12 >= 0.0)
  {
    v13 = 0.0;
  }

  if (crop >= 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = -crop;
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

- (void)_isRectOutOfBounds:(CGFloat)bounds
{
  if (result)
  {
    [result fullImageBufferRect];
    v11.origin.x = a2;
    v11.origin.y = bounds;
    v11.size.width = a4;
    v11.size.height = a5;
    v10 = CGRectIntersection(v9, v11);
    v12.origin.x = a2;
    v12.origin.y = bounds;
    v12.size.width = a4;
    v12.size.height = a5;
    return !CGRectContainsRect(v10, v12);
  }

  return result;
}

+ (uint64_t)_VNVTPixelTransferImageForSource:(CGFloat)source destinationBuffer:(CGFloat)buffer cropRect:(uint64_t)rect performCrop:(__CVBuffer *)crop vtSessionManager:(__CVBuffer *)manager error:(int)error
{
  v61 = *MEMORY[0x1E69E9840];
  v55 = a9;
  objc_opt_self();
  PixelFormatType = CVPixelBufferGetPixelFormatType(crop);
  v17 = CVPixelBufferGetPixelFormatType(manager);
  cropCopy = crop;
  managerCopy = manager;
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
  if (error)
  {
    v62.origin.x = self;
    v62.origin.y = a2;
    v62.size.width = source;
    v62.size.height = buffer;
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
    v39 = VTPixelTransferSessionTransferImage(v34, cropCopy, managerCopy);
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

- (CVPixelBufferRef)_createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:(size_t)with height:(uint64_t)height format:(void *)format options:(_BYTE *)options outPooled:(void *)pooled error:
{
  formatCopy = format;
  v55 = formatCopy;
  if (!self)
  {
    goto LABEL_63;
  }

  v13 = formatCopy;
  v14 = [v13 valueForKey:@"VNImageBufferOption_CreateFromPixelBufferPool"];
  bOOLValue = [v14 BOOLValue];

  if (options)
  {
    *options = bOOLValue;
  }

  if (!bOOLValue)
  {
    self = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a2 height:with pixelFormatType:height error:pooled];
    goto LABEL_63;
  }

  session = [(__CVBuffer *)self session];
  vncvPixelBufferPoolManager = [session vncvPixelBufferPoolManager];
  v17 = vncvPixelBufferPoolManager;
  if (!vncvPixelBufferPoolManager)
  {
    self = 0;
    goto LABEL_62;
  }

  os_unfair_lock_lock(vncvPixelBufferPoolManager + 2);
  v18 = height ^ __ROR8__(with ^ __ROR8__(a2, 51), 51);
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
          if (i[2] == a2 && i[3] == with && *(i + 8) == height)
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
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:with];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:height];
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

    if (pooled)
    {
      *pooled = [VNError errorForCVReturnCode:v31 width:a2 height:with pixelFormat:height localizedDescription:@"Failed to create CVPixelBufferPool"];
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

  if (i[2] != a2 || i[3] != with || *(i + 8) != height)
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
    if (pooled)
    {
      v46 = CVPixelBufferPoolGetAttributes(v37);
      v47 = [v46 objectForKeyedSubscript:*MEMORY[0x1E6966208]];
      unsignedLongValue = [v47 unsignedLongValue];
      v49 = [v46 objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
      unsignedLongValue2 = [v49 unsignedLongValue];
      v51 = [v46 objectForKeyedSubscript:*v20];
      *pooled = +[VNError errorForCVReturnCode:width:height:pixelFormat:localizedDescription:](VNError, "errorForCVReturnCode:width:height:pixelFormat:localizedDescription:", v44, unsignedLongValue, unsignedLongValue2, [v51 unsignedIntValue], @"Failed to create CVPixelBufferPool.");
    }

LABEL_60:
    self = 0;
  }

  else
  {
    v52 = [VNCVPixelBufferHelper _validatePixelBuffer:pooled error:?];
    self = poolOut;
    if ((v52 & 1) == 0)
    {
      CVPixelBufferRelease(poolOut);
      goto LABEL_60;
    }
  }

  os_unfair_lock_unlock(v17 + 2);
LABEL_62:

LABEL_63:
  return self;
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

- (id)augmentedBuffersWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format options:(id)options augmentationOptions:(id)augmentationOptions error:(id *)error
{
  v8 = [(VNImageBuffer *)self augmentedCroppedBuffersWithWidth:width height:height format:*&format cropRect:options options:augmentationOptions augmentationOptions:error error:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];

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

- (__CVBuffer)createCroppedBufferWithMaxSideLengthOf:(unint64_t)of cropRect:(CGRect)rect pixelFormat:(unsigned int)format options:(id)options error:(id *)error pixelBufferRepsCacheKey:(id *)key
{
  v10 = *&format;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  ofCopy2 = width;
  ofCopy = height;
  if (width <= height)
  {
    if (ofCopy > of)
    {
      ofCopy2 = (width / height * of);
      ofCopy = of;
    }
  }

  else if (ofCopy2 > of)
  {
    ofCopy = (height / width * of);
    ofCopy2 = of;
  }

  height = [(VNImageBuffer *)self croppedBufferWithWidth:ofCopy2 height:ofCopy format:v10 cropRect:optionsCopy options:error error:key pixelBufferRepsCacheKey:x, y, width, height];

  return height;
}

- (__CVBuffer)createBufferWithMaxSideLengthOf:(unint64_t)of pixelFormat:(unsigned int)format options:(id)options error:(id *)error
{
  v7 = *&format;
  optionsCopy = options;
  ofCopy2 = [(VNImageBuffer *)self width];
  height = [(VNImageBuffer *)self height];
  ofCopy = height;
  if (ofCopy2 <= height)
  {
    if (height > of)
    {
      ofCopy2 = ((of * ofCopy2) / height);
      ofCopy = of;
    }
  }

  else if (ofCopy2 > of)
  {
    ofCopy = ((of * height) / ofCopy2);
    ofCopy2 = of;
  }

  v14 = [(VNImageBuffer *)self bufferWithWidth:ofCopy2 height:ofCopy format:v7 options:optionsCopy error:error];

  return v14;
}

- (CGRect)makeClippedRectAgainstImageExtentUsingOriginalRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (BOOL)getCameraIntrinsicsAvailable:(id *)available
{
  v4 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"VNImageOptionCameraIntrinsics"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7.location = 0;
    v7.length = 48;
    CFDataGetBytes(v4, v7, available);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getCameraOpticalCenterIfAvailable:(CGPoint *)available
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v5 = [(VNImageBuffer *)self getCameraIntrinsicsAvailable:v9];
  if (v5)
  {
    v6 = *&v10;
    available->x = (v6 / [(VNImageBuffer *)self width]);
    v7 = *(&v10 + 1);
    available->y = (v7 / [(VNImageBuffer *)self height]);
  }

  return v5;
}

- (BOOL)getPixelFocalLengthIfAvailable:(float *)available
{
  memset(v6, 0, sizeof(v6));
  v4 = [(VNImageBuffer *)self getCameraIntrinsicsAvailable:v6];
  if (v4)
  {
    *available = *v6;
  }

  return v4;
}

- (int)aspectForRegionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  v6 = [(VNImageBuffer *)self width:interest.origin.x];
  height = [(VNImageBuffer *)self height];
  v8 = width * v6;
  v9 = height * height;
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
  width = [(VNImageBuffer *)self width];
  height = [(VNImageBuffer *)self height];
  if (width < height)
  {
    return 1;
  }

  else
  {
    return 2 * (width > height);
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

- (__CVBuffer)cropAndScaleBufferWithWidth:(unint64_t)width height:(unint64_t)height cropRect:(CGRect)rect format:(unsigned int)format imageCropAndScaleOption:(unint64_t)option options:(id)options error:(id *)error calculatedNormalizedOriginOffset:(CGPoint *)self0 calculatedScaleX:(double *)self1 calculatedScaleY:(double *)self2 pixelBufferRepsCacheKey:(id *)self3
{
  v15 = *&format;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  heightCopy3 = 0;
  v25 = 0;
  v26 = *MEMORY[0x1E695EFF8];
  v27 = *(MEMORY[0x1E695EFF8] + 8);
  v56 = 1.0;
  v55 = 1.0;
  if (option <= 1)
  {
    if (!option)
    {
      [VNImageBuffer computeCenterCropRectFromCropRect:&v56 inImageSize:&v55 calculatedScaleX:x calculatedScaleY:y, width, height, width, height];
      x = v33;
      y = v34;
      v25 = 0;
      v26 = v33 / width;
      heightCopy3 = height;
      widthCopy2 = width;
      width = v35;
      v27 = v34 / height;
      height = v36;
      goto LABEL_20;
    }

    if (option != 1)
    {
      goto LABEL_16;
    }

    v28 = width / width;
    v56 = v28;
    v29 = height / height;
    v55 = v29;
    v25 = 0;
    if (v28 < v29)
    {
      heightCopy3 = (height * v28);
      v55 = width / width;
LABEL_12:
      widthCopy2 = width;
      goto LABEL_20;
    }

    widthCopy2 = (width * v29);
    v56 = height / height;
  }

  else
  {
    if (option == 2)
    {
      v25 = 0;
      goto LABEL_11;
    }

    if (option != 257)
    {
      if (option == 258)
      {
        v56 = width / height;
        v55 = height / width;
        v25 = 1;
LABEL_11:
        heightCopy3 = height;
        goto LABEL_12;
      }

LABEL_16:
      widthCopy2 = 0;
      goto LABEL_20;
    }

    v31 = width / height;
    v56 = v31;
    v32 = height / width;
    v55 = v32;
    if (v31 < v32)
    {
      heightCopy3 = (width * v31);
      v55 = width / height;
      v25 = 1;
      goto LABEL_12;
    }

    widthCopy2 = (height * v32);
    v56 = height / width;
    v25 = 1;
  }

  heightCopy3 = height;
LABEL_20:
  height = [(VNImageBuffer *)self _croppedBufferWithWidth:widthCopy2 height:heightCopy3 format:v15 cropRect:optionsCopy options:error error:key pixelBufferRepsCacheKey:v25 rotate90CCW:x, y, width, height];
  v38 = height;
  if (!height)
  {
LABEL_35:
    v40 = 0;
    goto LABEL_36;
  }

  if (option - 257 >= 2 && option != 1)
  {
    v40 = height;
    goto LABEL_28;
  }

  v54 = 0;
  v39 = [(VNImageBuffer *)self _createPotentiallyPooledIOSurfaceBackedPixelBufferWithWith:width height:height format:v15 options:optionsCopy outPooled:&v54 error:error];
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
  v43[6] = height;
  v43[7] = v38;
  v43[4] = &v46;
  v43[5] = width;
  v41 = VNExecuteBlockWithPixelBuffer(v39, 0, v43, error);
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
  if (offset)
  {
    offset->x = v26;
    offset->y = v27;
  }

  if (x)
  {
    *x = v56;
  }

  if (y)
  {
    *y = v55;
  }

LABEL_36:

  return v40;
}

- (uint64_t)_croppedBufferWithWidth:(uint64_t)width height:(uint64_t)height format:(void *)format cropRect:(void *)rect options:(void *)options error:(char)error pixelBufferRepsCacheKey:(CGFloat)key rotate90CCW:(CGFloat)self0
{
  formatCopy = format;
  if (!self)
  {
    v34 = 0;
    goto LABEL_28;
  }

  v22 = self[2];
  if (!v22)
  {
    goto LABEL_9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v22);
  heightCopy = PixelFormatType;
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
    heightCopy = height;
  }

LABEL_10:
  v26 = [VNImageBufferCache cacheKeyWithBufferFormat:heightCopy width:a2 height:width cropRect:key, w, a11, a12];
  v27 = [v26 hash];
  if (width && a2 && a11 >= 1.0 && a12 >= 1.0)
  {
    v28 = v27;
    [self fullImageBufferRect];
    v59.origin.x = key;
    v59.origin.y = w;
    v59.size.width = a11;
    v59.size.height = a12;
    if (CGRectIntersectsRect(v58, v59))
    {
      v29 = heightCopy | ((width | (a2 << 16)) << 32);
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __114__VNImageBuffer__croppedBufferWithWidth_height_format_cropRect_options_error_pixelBufferRepsCacheKey_rotate90CCW___block_invoke;
      aBlock[3] = &unk_1E77B2AF0;
      v43 = a2;
      widthCopy = width;
      v42 = &v54;
      aBlock[4] = self;
      v30 = v26;
      v40 = v30;
      v45 = v28;
      v46 = a12 | (((w << 16) | (key << 32) | a11) << 16);
      v47 = v29;
      keyCopy = key;
      wCopy = w;
      v50 = a11;
      v51 = a12;
      v41 = formatCopy;
      v52 = heightCopy;
      errorCopy = error;
      v31 = _Block_copy(aBlock);
      kdebug_trace();
      v32 = VNExecuteBlock(v31, rect);
      kdebug_trace();
      if (v32)
      {
        if (options)
        {
          v33 = v30;
          *options = v30;
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

    if (rect)
    {
      v35 = [VNError errorWithCode:4 message:@"Cropping failed. Specifed ROI is outside of input image bounds with no intersection."];
      goto LABEL_23;
    }

LABEL_24:
    v34 = 0;
    goto LABEL_27;
  }

  if (!rect)
  {
    goto LABEL_24;
  }

  v35 = [VNError errorWithCode:3 message:@"Operation failed due to attempt to crop zero or near zero dimensioned area"];
LABEL_23:
  v34 = 0;
  *rect = v35;
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

- (VNImageBuffer)bufferWithWidth:(unint64_t)width height:(unint64_t)height format:(unsigned int)format options:(id)options error:(id *)error pixelBufferRepsCacheKey:(id *)key
{
  v10 = *&format;
  optionsCopy = options;
  if (*&self->_origPixelBuffer == 0 && !self->_imageSourceManager)
  {
    if (error)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to create image for processing"];
      *error = [VNError errorWithCode:3 message:v16];

      error = 0;
    }
  }

  else
  {
    [(VNImageBuffer *)self fullImageBufferRect];
    error = [(VNImageBuffer *)self croppedBufferWithWidth:width height:height format:v10 cropRect:optionsCopy options:error error:key pixelBufferRepsCacheKey:?];
  }

  return error;
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

- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v9 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  v15 = [(VNImageBuffer *)self initWithCMSampleBuffer:buffer orientation:v9 options:optionsCopy session:sessionCopy];
  if (v15)
  {
    v16 = [VNDepthRepresentation depthRepresentationForDepthData:dataCopy orientation:v9];
    depthRepresentation = v15->_depthRepresentation;
    v15->_depthRepresentation = v16;

    v18 = v15;
  }

  return v15;
}

- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  valuePtr = orientation;
  optionsCopy = options;
  sessionCopy = session;
  if (!CMSampleBufferIsValid(buffer) || !CMSampleBufferDataIsReady(buffer))
  {
    goto LABEL_10;
  }

  if (!orientation)
  {
    v12 = CMGetAttachment(buffer, *MEMORY[0x1E696DE78], 0);
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
    }
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    goto LABEL_10;
  }

  v14 = [(VNImageBuffer *)self initWithCVPixelBuffer:ImageBuffer orientation:valuePtr options:optionsCopy session:sessionCopy];
  if (!v14)
  {
    self = 0;
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  CFRetain(buffer);
  v14->_origSampleBuffer = buffer;
  self = v14;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (VNImageBuffer)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation options:(id)options
{
  v5 = *&orientation;
  optionsCopy = options;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNImageBuffer *)self initWithCMSampleBuffer:buffer orientation:v5 options:optionsCopy session:v9];

  return v10;
}

- (VNImageBuffer)initWithURL:(id)l orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  lCopy = l;
  optionsCopy = options;
  sessionCopy = session;
  v13 = [[VNImageSourceManager alloc] initWithImageURL:lCopy];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (!orientation)
  {
    orientation = [(VNImageSourceManager *)v13 exifOrientation];
  }

  v15 = [(VNImageBuffer *)&self->super.isa initWithOptions:optionsCopy orientation:orientation session:sessionCopy];
  v16 = v15;
  if (!v15)
  {
    self = 0;
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_storeStrong(v15 + 5, v14);
  kdebug_trace();
  self = v16;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)initWithOptions:(int)options orientation:(void *)orientation session:
{
  v7 = a2;
  orientationCopy = orientation;
  if (self)
  {
    v23.receiver = self;
    v23.super_class = VNImageBuffer;
    v9 = objc_msgSendSuper2(&v23, sel_init);
    self = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 1, orientation);
      if (v7)
      {
        v10 = [v7 copy];
      }

      else
      {
        v10 = MEMORY[0x1E695E0F8];
      }

      v11 = self[11];
      self[11] = v10;

      v12 = objc_alloc_init(VNImageBufferCache);
      v13 = self[6];
      self[6] = v12;

      v14 = [v7 objectForKeyedSubscript:@"VNImageOptionCIContext"];
      v15 = self[7];
      self[7] = v14;

      v16 = v7;
      objc_opt_self();
      if (!options)
      {
        v17 = [v16 objectForKeyedSubscript:@"VNImageOptionProperties"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = *MEMORY[0x1E696DE78];
          v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];

          if (v19 && ([v17 objectForKeyedSubscript:v18], v20 = objc_claimAutoreleasedReturnValue(), (v19 = v20) != 0))
          {
            options = [v20 intValue];
          }

          else
          {
            options = 1;
          }
        }

        else
        {
          options = 0;
        }
      }

      if ((options - 1) >= 8)
      {
        optionsCopy = 1;
      }

      else
      {
        optionsCopy = options;
      }

      *(self + 16) = optionsCopy;
      *(self + 26) = 0;
    }
  }

  return self;
}

- (VNImageBuffer)initWithURL:(id)l orientation:(unsigned int)orientation options:(id)options
{
  v6 = *&orientation;
  lCopy = l;
  optionsCopy = options;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNImageBuffer *)self initWithURL:lCopy orientation:v6 options:optionsCopy session:v10];

  return v11;
}

- (VNImageBuffer)initWithData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  v13 = [[VNImageSourceManager alloc] initWithImageData:dataCopy];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (!orientation)
  {
    orientation = [(VNImageSourceManager *)v13 exifOrientation];
  }

  v15 = [(VNImageBuffer *)&self->super.isa initWithOptions:optionsCopy orientation:orientation session:sessionCopy];
  v16 = v15;
  if (!v15)
  {
    self = 0;
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_storeStrong(v15 + 5, v14);
  kdebug_trace();
  self = v16;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (VNImageBuffer)initWithData:(id)data orientation:(unsigned int)orientation options:(id)options
{
  v6 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNImageBuffer *)self initWithData:dataCopy orientation:v6 options:optionsCopy session:v10];

  return v11;
}

- (VNImageBuffer)initWithCIImage:(id)image orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  imageCopy = image;
  optionsCopy = options;
  sessionCopy = session;
  v14 = [(VNImageBuffer *)&self->super.isa initWithOptions:optionsCopy orientation:orientation session:sessionCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 3, image);
    kdebug_trace();
    v16 = v15;
  }

  return v15;
}

- (VNImageBuffer)initWithCIImage:(id)image orientation:(unsigned int)orientation options:(id)options
{
  v6 = *&orientation;
  imageCopy = image;
  optionsCopy = options;
  v10 = objc_alloc_init(VNSession);
  v11 = [(VNImageBuffer *)self initWithCIImage:imageCopy orientation:v6 options:optionsCopy session:v10];

  return v11;
}

- (VNImageBuffer)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  optionsCopy = options;
  sessionCopy = session;
  v12 = [(VNImageBuffer *)&self->super.isa initWithOptions:optionsCopy orientation:orientation session:sessionCopy];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:image];
    origCIImage = v12->_origCIImage;
    v12->_origCIImage = v13;

    kdebug_trace();
    v15 = v12;
  }

  return v12;
}

- (VNImageBuffer)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation options:(id)options
{
  v5 = *&orientation;
  optionsCopy = options;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNImageBuffer *)self initWithCGImage:image orientation:v5 options:optionsCopy session:v9];

  return v10;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  v9 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  sessionCopy = session;
  v15 = [(VNImageBuffer *)self initWithCVPixelBuffer:buffer orientation:v9 options:optionsCopy session:sessionCopy];
  if (v15)
  {
    v16 = [VNDepthRepresentation depthRepresentationForDepthData:dataCopy orientation:v9];
    depthRepresentation = v15->_depthRepresentation;
    v15->_depthRepresentation = v16;

    v18 = v15;
  }

  return v15;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer depthData:(id)data orientation:(unsigned int)orientation options:(id)options
{
  v7 = *&orientation;
  dataCopy = data;
  optionsCopy = options;
  v12 = objc_alloc_init(VNSession);
  v13 = [(VNImageBuffer *)self initWithCVPixelBuffer:buffer depthData:dataCopy orientation:v7 options:optionsCopy session:v12];

  return v13;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options session:(id)session
{
  optionsCopy = options;
  sessionCopy = session;
  if (buffer && (self = [(VNImageBuffer *)&self->super.isa initWithOptions:optionsCopy orientation:orientation session:sessionCopy]) != 0)
  {
    v12 = CVPixelBufferRetain(buffer);
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation options:(id)options
{
  v5 = *&orientation;
  optionsCopy = options;
  v9 = objc_alloc_init(VNSession);
  v10 = [(VNImageBuffer *)self initWithCVPixelBuffer:buffer orientation:v5 options:optionsCopy session:v9];

  return v10;
}

- (VNImageBuffer)initWithCVPixelBuffer:(__CVBuffer *)buffer options:(id)options
{
  optionsCopy = options;
  v7 = objc_alloc_init(VNSession);
  v8 = [(VNImageBuffer *)self initWithCVPixelBuffer:buffer orientation:0 options:optionsCopy session:v7];

  return v8;
}

- (CGRect)fullImageBufferRect
{
  width = [(VNImageBuffer *)self width];
  height = [(VNImageBuffer *)self height];
  v5 = 0.0;
  v6 = 0.0;
  v7 = width;
  result.size.height = height;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)computeCenterCropRectFromCropRect:(CGRect)result inImageSize:(CGSize)size calculatedScaleX:(double *)x calculatedScaleY:(double *)y
{
  if (result.size.width == 0.0 || result.size.height == 0.0)
  {
    return **&MEMORY[0x1E695F050];
  }

  else
  {
    v6 = size.width / result.size.width;
    v7 = size.height / result.size.height;
    v8 = size.width / result.size.width < size.height / result.size.height;
    v9 = size.height / (size.width / result.size.width);
    v10 = size.width / v7;
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

    if (x)
    {
      *x = v6;
    }

    if (y)
    {
      *y = v7;
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