@interface VNTrajectoryProcessor
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
- (VNTrajectoryProcessor)initWithFrameAnalysisSpacing:(id *)a3 trajectoryLength:(int64_t)a4;
- (__CVBuffer)_createCroppedAndScaledBufferFromVNImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 withOptions:(id)a5 error:(id *)a6;
- (id)_VNPointsFromCGPoints:(const void *)a3;
- (id)processVNImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 withOptions:(id)a5 warningRecorder:(id)a6 requestUUID:(id)a7 error:(id *)a8;
- (void)dealloc;
@end

@implementation VNTrajectoryProcessor

- (id)processVNImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 withOptions:(id)a5 warningRecorder:(id)a6 requestUUID:(id)a7 error:(id *)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v166[1] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a5;
  v136 = a6;
  v137 = a7;
  if (!self->_processAllFrames)
  {
    if (v18)
    {
      [v18 timingInfo];
    }

    else
    {
      v156.n128_u64[0] = 0;
      v155 = 0u;
      memset(&v154, 0, sizeof(v154));
    }

    *&time1.a = *&v154.d;
    time1.c = v154.ty;
    *&time2.start.value = *&self->_nextFrameToBeAnalyzedPTS.value;
    time2.start.epoch = self->_nextFrameToBeAnalyzedPTS.epoch;
    if (CMTimeCompare(&time1, &time2.start) == -1)
    {
      previousFrameBuffer = self->_previousFrameBuffer;
      self->_previousFrameBuffer = 0;

      previousFrameImage = self->_previousFrameImage;
      self->_previousFrameImage = 0;
      v52 = MEMORY[0x1E695E0F0];
      goto LABEL_102;
    }
  }

  v135 = [VNValidationUtilities originatingRequestSpecifierInOptions:v19 error:a8];
  if (!v135)
  {
    previousFrameImage = 0;
    v52 = 0;
    goto LABEL_102;
  }

  v20 = [v18 width];
  v21 = [v18 height];
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = __109__VNTrajectoryProcessor_processVNImageBuffer_regionOfInterest_withOptions_warningRecorder_requestUUID_error___block_invoke;
  v153[3] = &unk_1E77B6810;
  v153[4] = self;
  if ([VNValidationUtilities validateNonZeroImageWidth:v20 height:v21 componentNameProvidingBlock:v153 error:a8])
  {
    v22 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNTrajectoryProcessorOption_RequestState" inOptions:v19 error:a8];
    v23 = v22;
    if (v22)
    {
      v134 = v22;
      v24 = [v22 targetImageDimensionForContourDetection];
      if (self->_previousFrameBuffer)
      {
        v25 = v24;
        HostTimeInMillis = getHostTimeInMillis();
        v27 = [(VNTrajectoryProcessor *)self _createCroppedAndScaledBufferFromVNImageBuffer:v18 regionOfInterest:v19 withOptions:a8 error:x, y, width, height];
        v28 = v27;
        if (v27)
        {
          self->_currentImageWidth = CVPixelBufferGetWidth(v27);
          v29 = v25;
          self->_currentImageHeight = CVPixelBufferGetHeight(v28);
          v30 = MEMORY[0x1E695F658];
          v163 = *MEMORY[0x1E695F940];
          v164 = MEMORY[0x1E695E118];
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          obj = [v30 imageWithCVImageBuffer:v28 options:v31];

          CVPixelBufferRelease(v28);
          absoluteDiffFilter = self->_absoluteDiffFilter;
          v33 = [(CIImage *)self->_previousFrameImage imageByColorMatchingColorSpaceToWorkingSpace:self->_sRGB];
          [(CIFilter *)absoluteDiffFilter setValue:v33 forKey:@"inputImage"];

          v34 = self->_absoluteDiffFilter;
          v35 = [obj imageByColorMatchingColorSpaceToWorkingSpace:self->_sRGB];
          [(CIFilter *)v34 setValue:v35 forKey:@"inputImage2"];

          thresholdFilter = self->_thresholdFilter;
          v37 = [(CIFilter *)self->_absoluteDiffFilter outputImage];
          v38 = [v37 imageByApplyingFilter:@"CIMaximumComponent" withInputParameters:MEMORY[0x1E695E0F8]];
          [(CIFilter *)thresholdFilter setValue:v38 forKey:@"inputImage"];

          v132 = [(CIFilter *)self->_thresholdFilter outputImage];
          v39 = v29;
          v40 = self->_maximumImageDimension / v29;
          self->_dilateRadius = v40;
          dilateFilter = self->_dilateFilter;
          v42 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          [(CIFilter *)dilateFilter setValue:v42 forKey:@"inputWidth"];

          v43 = self->_dilateFilter;
          *&v44 = self->_dilateRadius;
          v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
          [(CIFilter *)v43 setValue:v45 forKey:@"inputHeight"];

          [(CIFilter *)self->_dilateFilter setValue:v132 forKey:@"inputImage"];
          v130 = [(CIFilter *)self->_dilateFilter outputImage];
          [(CIFilter *)self->_contrastFilter setValue:v130 forKey:@"inputImage"];
          pixelBufferOut = 0;
          currentImageWidth = self->_currentImageWidth;
          v47 = v29 / currentImageWidth;
          currentImageHeight = self->_currentImageHeight;
          if (v39 / currentImageWidth >= v39 / currentImageHeight)
          {
            v47 = v39 / currentImageHeight;
          }

          v49 = fmin(v47, 1.0);
          v50 = (v49 * currentImageWidth);
          v51 = (v49 * currentImageHeight);
          if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v50, v51, 0x4C303038u, 0, &pixelBufferOut))
          {
            if (a8)
            {
              [VNError errorWithCode:3 message:@"Could not create intermediate buffer"];
              *a8 = v52 = 0;
            }

            else
            {
              v52 = 0;
            }

            goto LABEL_99;
          }

          memset(&time1, 0, sizeof(time1));
          CGAffineTransformMakeScale(&time1, v49, v49);
          v60 = [(CIFilter *)self->_contrastFilter outputImage];
          v154 = time1;
          v128 = [v60 imageByApplyingTransform:&v154 highQualityDownsample:0];

          [(CIContext *)self->_ciContext render:v128 toCVPixelBuffer:pixelBufferOut bounds:0 colorSpace:0.0, 0.0, v50, v51];
          v61 = [VNValidationUtilities requiredSessionInOptions:v19 error:a8];
          v62 = v61;
          if (!v61)
          {
            v52 = 0;
LABEL_98:

LABEL_99:
            v23 = v134;
            goto LABEL_100;
          }

          v126 = v61;
          v63 = [VNImageRequestHandler alloc];
          v127 = [(VNImageRequestHandler *)v63 initWithCVPixelBuffer:pixelBufferOut options:v19 session:v62];
          CVPixelBufferRelease(pixelBufferOut);
          objc_storeStrong(&self->_previousFrameBuffer, a3);
          objc_storeStrong(&self->_previousFrameImage, obj);
          if (!self->_processAllFrames)
          {
            if (v18)
            {
              [v18 timingInfo];
            }

            else
            {
              v156.n128_u64[0] = 0;
              v155 = 0u;
              memset(&v154, 0, sizeof(v154));
            }

            *&self->_lastAnalyzedFramePTS.value = *&v154.d;
            ty = v154.ty;
            self->_lastAnalyzedFramePTS.epoch = *&v154.ty;
            *&time2.start.value = *&self->_lastAnalyzedFramePTS.value;
            *&time2.start.epoch = ty;
            rhs = self->_frameAnalysisSpacing;
            CMTimeAdd(&v154, &time2.start, &rhs);
            *&self->_nextFrameToBeAnalyzedPTS.value = *&v154.a;
            self->_nextFrameToBeAnalyzedPTS.epoch = *&v154.c;
          }

          [(VNDetectContoursRequest *)self->_detectContoursRequest setMaximumImageDimension:v39];
          detectContoursRequest = self->_detectContoursRequest;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&detectContoursRequest count:1];
          v66 = [(VNImageRequestHandler *)v127 performRequests:v65 error:a8];

          if (!v66)
          {
            v52 = 0;
LABEL_97:

            v62 = v126;
            goto LABEL_98;
          }

          v67 = [(VNRequest *)self->_detectContoursRequest results];
          v123 = [v67 firstObject];

          v68 = v123;
          if (v123)
          {
            v149 = 0.0;
            if ([VNValidationUtilities getFloatValue:&v149 forKey:@"VNTrajectoryProcessorOption_ObjectMinimumNormalizedRadius" inOptions:v19 error:a8])
            {
              v69 = v149;
              maximumImageDimension = self->_maximumImageDimension;
              v148 = 1.0;
              if ([VNValidationUtilities getFloatValue:&v148 forKey:@"VNTrajectoryProcessorOption_ObjectMaximumNormalizedRadius" inOptions:v19 error:a8])
              {
                if (v148 >= v149)
                {
                  v147 = 0;
                  v74 = [VNValidationUtilities getOptionalObject:&v147 ofClass:objc_opt_class() forKey:@"VNTrajectoryProcessorOption_ProcessingTargetFrameTime" inOptions:v19 error:a8];
                  v73 = v147;
                  if (v74)
                  {
                    v122 = v73;
                    [v73 getValue:&rhs size:24];
                    __p = 0uLL;
                    v146 = 0;
                    v141 = 0u;
                    v142 = 0u;
                    v143 = 0u;
                    v144 = 0u;
                    v75 = [v123 topLevelContours];
                    v125 = v75;
                    v76 = [v75 countByEnumeratingWithState:&v141 objects:v161 count:16];
                    v121 = maximumImageDimension;
                    if (v76)
                    {
                      v77 = v76;
                      v78 = 0;
                      v131 = *v142;
                      v124 = v19;
                      do
                      {
                        v79 = 0;
                        location = v77;
                        do
                        {
                          if (*v142 != v131)
                          {
                            objc_enumerationMutation(v75);
                          }

                          v80 = [VNGeometryUtils boundingCircleForContour:*(*(&v141 + 1) + 8 * v79) error:a8];
                          v81 = v80;
                          if (v80)
                          {
                            [v80 radius];
                            v82 = v83;
                            *&v83 = v149;
                            *&v84 = v148;
                            if (v149 <= v82 && v148 >= v82)
                            {
                              v86 = [v81 center];
                              [v86 location];
                              VisionCoreImagePointForNormalizedPoint();
                              v88 = v87;
                              v90 = v89;

                              v91 = v82 * self->_maximumImageDimension;
                              if (v78 >= v146)
                              {
                                v92 = __p.i64[0];
                                v93 = v78 - __p.i64[0];
                                v94 = 0xAAAAAAAAAAAAAAABLL * ((v78 - __p.i64[0]) >> 3);
                                v95 = v94 + 1;
                                if (v94 + 1 > 0xAAAAAAAAAAAAAAALL)
                                {
                                  std::vector<float>::__throw_length_error[abi:ne200100]();
                                }

                                if (0x5555555555555556 * ((v146 - __p.i64[0]) >> 3) > v95)
                                {
                                  v95 = 0x5555555555555556 * ((v146 - __p.i64[0]) >> 3);
                                }

                                if (0xAAAAAAAAAAAAAAABLL * ((v146 - __p.i64[0]) >> 3) >= 0x555555555555555)
                                {
                                  v96 = 0xAAAAAAAAAAAAAAALL;
                                }

                                else
                                {
                                  v96 = v95;
                                }

                                if (v96)
                                {
                                  if (v96 <= 0xAAAAAAAAAAAAAAALL)
                                  {
                                    operator new();
                                  }

                                  std::__throw_bad_array_new_length[abi:ne200100]();
                                }

                                v97 = 24 * v94;
                                *v97 = v88;
                                *(v97 + 8) = v90;
                                *(v97 + 16) = v91;
                                v78 = 24 * v94 + 24;
                                v98 = v97 - v93;
                                memcpy((v97 - v93), v92, v93);
                                __p.i64[0] = v98;
                                __p.i64[1] = v78;
                                v146 = 0;
                                if (v92)
                                {
                                  operator delete(v92);
                                }

                                v19 = v124;
                                v75 = v125;
                                v77 = location;
                              }

                              else
                              {
                                *v78 = v88;
                                *(v78 + 8) = v90;
                                *(v78 + 16) = v91;
                                v78 += 24;
                              }

                              __p.i64[1] = v78;
                            }
                          }

                          ++v79;
                        }

                        while (v77 != v79);
                        v77 = [v75 countByEnumeratingWithState:&v141 objects:v161 count:16];
                      }

                      while (v77);
                    }

                    v99 = [v123 topLevelContours];
                    v100 = [v99 count] > 0xF9;

                    if (v100)
                    {
                      if (a8)
                      {
                        [VNError errorWithCode:3 message:@"Too many moving objects or noise detected which prevents trajectory processing."];
                        *a8 = v52 = 0;
                      }

                      else
                      {
                        v52 = 0;
                      }
                    }

                    else
                    {
                      parabolaDetector = self->_parabolaDetector;
                      if (v18)
                      {
                        [v18 timingInfo];
                      }

                      else
                      {
                        v156.n128_u64[0] = 0;
                        v155 = 0u;
                        memset(&v154, 0, sizeof(v154));
                      }

                      *&time2.start.value = *&v154.d;
                      time2.start.epoch = *&v154.ty;
                      v102 = [(VNParabolaDetection *)parabolaDetector processContoursForParabolas:&time2 withPTS:vcvtps_u32_f32(v69 * v121) objectMinimumPixelSize:self->_currentImageWidth bufferWidth:self->_currentImageHeight bufferHeight:?];
                      v52 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v102[2]];
                      v105 = *v102;
                      v103 = v102 + 1;
                      v104 = v105;
                      if (v105 != v103)
                      {
                        do
                        {
                          ObservedParabola::ObservedParabola(&v154, (v104 + 6));
                          v106 = [VNTrajectoryObservation alloc];
                          a = v154.a;
                          v108 = [(VNTrajectoryProcessor *)self _VNPointsFromCGPoints:&v154.tx];
                          v109 = [(VNTrajectoryProcessor *)self _VNPointsFromCGPoints:&v154.b];
                          v110 = [(VNTrajectoryObservation *)v106 initWithOriginatingRequestSpecifier:v135 requestUUID:v137 trajectoryUUID:*&a detectedPoints:v108 projectedPoints:v109 movingAverageRadius:*(&v155 + 1) / self->_maximumImageDimension equationCoefficients:v156 confidence:v157];

                          *&time2.start.value = v158;
                          time2.start.epoch = v159;
                          end = v160;
                          CMTimeRangeFromTimeToTime(&v140, &time2.start, &end);
                          time2 = v140;
                          [v110 setTimeRange:&time2];
                          [v52 addObject:v110];

                          ObservedParabola::~ObservedParabola(&v154);
                          v111 = v104[1];
                          if (v111)
                          {
                            do
                            {
                              v112 = v111;
                              v111 = *v111;
                            }

                            while (v111);
                          }

                          else
                          {
                            do
                            {
                              v112 = v104[2];
                              v113 = *v112 == v104;
                              v104 = v112;
                            }

                            while (!v113);
                          }

                          v104 = v112;
                        }

                        while (v112 != v103);
                      }

                      v114 = getHostTimeInMillis();
                      memset(&v154, 0, 24);
                      CMTimeMakeWithSeconds(&v154, v114 - HostTimeInMillis, 1000);
                      *&time2.start.value = *&v154.a;
                      time2.start.epoch = *&v154.c;
                      end = rhs;
                      if (CMTimeCompare(&time2.start, &end) != 1 || ([v123 topLevelContours], v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v115, "count") == 0, v115, v116))
                      {
                        v119 = (320.0 - v39) * 0.5 + v39;
                        if (((v119 + 1) & 0xFFFFFFFFFFFFFFFELL) >= 0x140)
                        {
                          v118 = 320;
                        }

                        else
                        {
                          v118 = (v119 + 1) & 0xFFFFFFFFFFFFFFFELL;
                        }
                      }

                      else
                      {
                        v117 = v39 + (v39 + -160.0) * -0.5;
                        if (((v117 - 1) & 0xFFFFFFFFFFFFFFFELL) <= 0xA0)
                        {
                          v118 = 160;
                        }

                        else
                        {
                          v118 = (v117 - 1) & 0xFFFFFFFFFFFFFFFELL;
                        }
                      }

                      [v134 setTargetImageDimensionForContourDetection:v118];
                    }

                    if (__p.i64[0])
                    {
                      operator delete(__p.i64[0]);
                    }

                    v73 = v122;
                  }

                  else
                  {
                    v52 = 0;
                  }

                  goto LABEL_95;
                }

                if (a8)
                {
                  v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v72 = [v71 initWithFormat:@"cannot perform analysis with minimum object radius of %f and maximum object radius of %f", v149, v148];
                  [VNError errorForInvalidOperationWithLocalizedDescription:?];
                  *a8 = v52 = 0;
                  v73 = v72;
LABEL_95:

                  v68 = v123;
                  goto LABEL_96;
                }
              }
            }

            v52 = 0;
          }

          else
          {
            v52 = MEMORY[0x1E695E0F0];
          }

LABEL_96:

          goto LABEL_97;
        }
      }

      else
      {
        objc_storeStrong(&self->_previousFrameBuffer, a3);
        v23 = v134;
        v55 = [(VNTrajectoryProcessor *)self _createCroppedAndScaledBufferFromVNImageBuffer:self->_previousFrameBuffer regionOfInterest:v19 withOptions:a8 error:x, y, width, height];
        if (v55)
        {
          v56 = MEMORY[0x1E695F658];
          v165 = *MEMORY[0x1E695F940];
          v166[0] = MEMORY[0x1E695E118];
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:&v165 count:1];
          v58 = [v56 imageWithCVImageBuffer:v55 options:v57];
          v59 = self->_previousFrameImage;
          self->_previousFrameImage = v58;

          v23 = v134;
          CVPixelBufferRelease(v55);
          v52 = MEMORY[0x1E695E0F0];
LABEL_100:

          goto LABEL_101;
        }
      }
    }

    v52 = 0;
    goto LABEL_100;
  }

  v52 = 0;
LABEL_101:
  previousFrameImage = v135;
LABEL_102:

  return v52;
}

NSString *__109__VNTrajectoryProcessor_processVNImageBuffer_regionOfInterest_withOptions_warningRecorder_requestUUID_error___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)_VNPointsFromCGPoints:(const void *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(*(a3 + 1) - *a3) >> 4];
  for (i = *a3; i != *(a3 + 1); i += 16)
  {
    VisionCoreNormalizedPointForImagePoint();
    v8 = [[VNPoint alloc] initWithLocation:v6, v7];
    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  return v4;
}

- (__CVBuffer)_createCroppedAndScaledBufferFromVNImageBuffer:(id)a3 regionOfInterest:(CGRect)a4 withOptions:(id)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = [v13 width];
  v16 = [v13 height];
  v27.origin.x = x * v15;
  v27.size.width = width * v15;
  v27.origin.y = y * v16;
  v27.size.height = height * v16;
  v28 = CGRectIntegral(v27);
  if (v28.size.width >= v28.size.height)
  {
    v17 = v28.size.width;
  }

  else
  {
    v17 = v28.size.height;
  }

  v18 = 1280.0;
  if (v17 <= 1280.0)
  {
    v18 = v17;
  }

  self->_maximumImageDimension = v18;
  v19 = v17;
  self->_preScaleFactor = v18 / v19;
  v20 = v18;
  v21 = vcvtad_u64_f64(v28.size.height / (v28.size.width / v20));
  v22 = vcvtad_u64_f64(v28.size.width / (v28.size.height / v20));
  if (v28.size.width < v28.size.height)
  {
    v23 = v18;
  }

  else
  {
    v23 = v21;
  }

  if (v28.size.width < v28.size.height)
  {
    v24 = v22;
  }

  else
  {
    v24 = v18;
  }

  v25 = [v13 croppedBufferWithWidth:v24 height:v23 format:875704422 cropRect:v14 options:a6 error:{v28.origin.x, v28.origin.y}];

  return v25;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_sRGB);
  v3.receiver = self;
  v3.super_class = VNTrajectoryProcessor;
  [(VNTrajectoryProcessor *)&v3 dealloc];
}

- (VNTrajectoryProcessor)initWithFrameAnalysisSpacing:(id *)a3 trajectoryLength:(int64_t)a4
{
  v73[2] = *MEMORY[0x1E69E9840];
  v69.receiver = self;
  v69.super_class = VNTrajectoryProcessor;
  v6 = [(VNTrajectoryProcessor *)&v69 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 20) = 1065353216;
    *(v6 + 9) = 1280;
    v8 = *&a3->var0;
    *(v6 + 13) = a3->var3;
    *(v6 + 88) = v8;
    time1 = *a3;
    v9 = MEMORY[0x1E6960CC0];
    time2 = **&MEMORY[0x1E6960CC0];
    v6[160] = CMTimeCompare(&time1, &time2) == 0;
    v10 = *v9;
    *(v7 + 7) = *v9;
    v11 = *(v9 + 2);
    *(v7 + 16) = v11;
    *(v7 + 136) = v10;
    *(v7 + 19) = v11;
    *(v7 + 21) = 1082130432;
    v12 = MEMORY[0x1E695F620];
    v72[0] = *MEMORY[0x1E695F868];
    v13 = [MEMORY[0x1E695DFB0] null];
    v72[1] = *MEMORY[0x1E695F7F0];
    v73[0] = v13;
    v73[1] = MEMORY[0x1E695E110];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v15 = [v12 contextWithOptions:v14];
    v16 = *(v7 + 1);
    *(v7 + 1) = v15;

    v17 = [MEMORY[0x1E695F648] filterWithName:@"CIColorAbsoluteDifference"];
    v18 = *(v7 + 2);
    *(v7 + 2) = v17;

    v19 = [MEMORY[0x1E695F648] filterWithName:@"CIColorThreshold" keysAndValues:{@"inputThreshold", &unk_1F19C25C8, 0}];
    v20 = *(v7 + 3);
    *(v7 + 3) = v19;

    v21 = MEMORY[0x1E695F648];
    LODWORD(v22) = *(v7 + 21);
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    LODWORD(v24) = *(v7 + 21);
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    v26 = [v21 filterWithName:@"CIMorphologyRectangleMaximum" keysAndValues:{@"inputWidth", v23, @"inputHeight", v25, 0}];
    v27 = *(v7 + 4);
    *(v7 + 4) = v26;

    v28 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls" keysAndValues:{*MEMORY[0x1E695FA88], &unk_1F19C25D8, 0}];
    v29 = *(v7 + 5);
    *(v7 + 5) = v28;

    v30 = objc_alloc_init(VNDetectContoursRequest);
    v31 = *(v7 + 6);
    *(v7 + 6) = v30;

    *(v7 + 21) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    [*(v7 + 6) setDetectsDarkOnLight:0];
    LODWORD(v32) = 1.0;
    [*(v7 + 6) setContrastAdjustment:v32];
    [*(v7 + 6) setForceUseInputCVPixelBufferDirectly:1];
    [*(v7 + 6) setInHierarchy:0];
    v70 = @"parabolaLength";
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v71 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

    v35 = [VNParabolaDetection alloc];
    v36 = v34;
    v37 = v36;
    if (!v35)
    {
LABEL_27:

      v64 = *(v7 + 22);
      *(v7 + 22) = v35;

      v65 = v7;
      goto LABEL_28;
    }

    v38 = [v36 objectForKey:@"FAFrameRate"];
    v39 = v38 == 0;

    if (v39)
    {
      v35->_forestAlgoParams.FAFrameRate = 60.0;
    }

    else
    {
      v40 = [v37 objectForKey:@"FAFrameRate"];
      [v40 floatValue];
      v35->_forestAlgoParams.FAFrameRate = v41;
    }

    v42 = [v37 objectForKey:@"parabolaLength"];
    v43 = v42 == 0;

    if (v43)
    {
      v46 = ((v35->_forestAlgoParams.FAFrameRate * 5.0) / 30.0);
    }

    else
    {
      v44 = [v37 objectForKey:@"parabolaLength"];
      v45 = [v44 intValue];

      if (v45 > 4)
      {
        if (v45 < 0x65)
        {
          v35->_forestAlgoParams.parabolaLength = v45;
          goto LABEL_13;
        }

        v46 = 100;
      }

      else
      {
        v46 = 5;
      }
    }

    v35->_forestAlgoParams.parabolaLength = v46;
LABEL_13:
    v47 = [v37 objectForKey:@"minXDistanceFromLastPointOnParabola"];
    v48 = v47 == 0;

    if (!v48)
    {
      v49 = [v37 objectForKey:@"minXDistanceFromLastPointOnParabola"];
      v35->_forestAlgoParams.minXDistanceFromLastPointOnParabola = [v49 intValue];
    }

    v50 = [v37 objectForKey:@"maxXDistanceFromLastPointOnParabola"];
    v51 = v50 == 0;

    if (v51)
    {
      v35->_forestAlgoParams.maxXDistanceFromLastPointOnParabola = v35->internalParams.maxDistanceForSolution;
    }

    else
    {
      v52 = [v37 objectForKey:@"maxXDistanceFromLastPointOnParabola"];
      v35->_forestAlgoParams.maxXDistanceFromLastPointOnParabola = [v52 intValue];
    }

    v53 = [v37 objectForKey:@"minYDistanceFromLastPointOnParabola"];
    v54 = v53 == 0;

    if (!v54)
    {
      v55 = [v37 objectForKey:@"minYDistanceFromLastPointOnParabola"];
      v35->_forestAlgoParams.minYDistanceFromLastPointOnParabola = [v55 intValue];
    }

    v56 = [v37 objectForKey:@"maxYDistanceFromLastPointOnParabola"];
    v57 = v56 == 0;

    if (v57)
    {
      v35->_forestAlgoParams.maxYDistanceFromLastPointOnParabola = v35->internalParams.maxDistanceForSolution;
    }

    else
    {
      v58 = [v37 objectForKey:@"maxYDistanceFromLastPointOnParabola"];
      v35->_forestAlgoParams.maxYDistanceFromLastPointOnParabola = [v58 intValue];
    }

    v59 = [v37 objectForKey:@"maxFramesSkippedToContinueParabolaDetection"];
    v60 = v59 == 0;

    if (v60)
    {
      maxFramesSkippedToContinueParabolaDetection = ((v35->_forestAlgoParams.FAFrameRate * 7.0) / 30.0);
      v35->_forestAlgoParams.maxFramesSkippedToContinueParabolaDetection = maxFramesSkippedToContinueParabolaDetection;
    }

    else
    {
      v61 = [v37 objectForKey:@"maxFramesSkippedToContinueParabolaDetection"];
      v35->_forestAlgoParams.maxFramesSkippedToContinueParabolaDetection = [v61 intValue];

      maxFramesSkippedToContinueParabolaDetection = v35->_forestAlgoParams.maxFramesSkippedToContinueParabolaDetection;
    }

    v35->parabolaSearchBuffer.maxFramesSkippedForDetection = maxFramesSkippedToContinueParabolaDetection;
    *&v35->parabolaSearchBuffer.minRegionSizeX = *&v35->internalParams.minRegionSizeX;
    v35->UID_counter = 0;
    std::__tree<std::__value_type<int,InternalObservedParabola>,std::__map_value_compare<int,std::__value_type<int,InternalObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,InternalObservedParabola>>>::destroy(v35->internalParabolas.__tree_.__end_node_.__left_);
    v35->internalParabolas.__tree_.__begin_node_ = &v35->internalParabolas.__tree_.__end_node_;
    v35->internalParabolas.__tree_.__size_ = 0;
    v35->internalParabolas.__tree_.__end_node_.__left_ = 0;
    std::__tree<std::__value_type<int,ObservedParabola>,std::__map_value_compare<int,std::__value_type<int,ObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,ObservedParabola>>>::destroy(v35->_observedParabolas.__tree_.__end_node_.__left_);
    v35->_observedParabolas.__tree_.__begin_node_ = &v35->_observedParabolas.__tree_.__end_node_;
    v35->_observedParabolas.__tree_.__size_ = 0;
    v35->_observedParabolas.__tree_.__end_node_.__left_ = 0;
    v63 = v35;
    goto LABEL_27;
  }

LABEL_28:

  return v7;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [[VNSizeRange alloc] initWithMinimumDimension:1 maximumDimension:1280 idealDimension:0];
  v5 = [[VNSupportedImageSize alloc] initWithIdealFormat:875704422 pixelsWideRange:v4 pixelsHighRange:v4 aspectRatioHandling:2 idealOrientation:1 orientationAgnostic:0];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

@end