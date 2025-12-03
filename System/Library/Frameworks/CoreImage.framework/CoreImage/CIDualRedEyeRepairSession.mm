@interface CIDualRedEyeRepairSession
+ (id)_contextRGBAh;
- (BOOL)_repairPrimaryWithSecondary:(__CVBuffer *)secondary to:(__CVBuffer *)to;
- (BOOL)prepareRepair;
- (BOOL)prepareRepairWithTuningParametersByPortType:(id)type;
- (BOOL)prewarm;
- (BOOL)repairFace:(id)face filter:(id)filter;
- (BOOL)setPrimary:(__CVBuffer *)primary observations:(id)observations metadata:(id)metadata;
- (BOOL)validateRenderState;
- (CIDualRedEyeRepairSession)init;
- (id)redEyeFaceFromObservation:(id)observation exifOrientation:(int)orientation;
- (int)validateRepair;
- (int)validateSetPrimary;
- (void)cleanupState;
- (void)customizeRepairFilter:(id)filter forFace:(id)face;
- (void)dealloc;
- (void)dumpInputs;
- (void)dumpObservation:(id)observation index:(int)index;
- (void)dumpSecondary;
- (void)prewarm;
- (void)validateRepair;
@end

@implementation CIDualRedEyeRepairSession

+ (id)_contextRGBAh
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"working_format";
  v4[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
  return +[CIContext _cachedContext:options:](CIContext, "_cachedContext:options:", @"CIDualRedEyeRepairRGBAh", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1]);
}

- (CIDualRedEyeRepairSession)init
{
  v4.receiver = self;
  v4.super_class = CIDualRedEyeRepairSession;
  v2 = [(CIDualRedEyeRepairSession *)&v4 init];
  if (v2)
  {
    [(CIDualRedEyeRepairSession *)v2 setTuning:[[CIDualRedEyeRepairTuning alloc] initWithTuning:0]];
  }

  return v2;
}

- (void)dealloc
{
  [(CIDualRedEyeRepairSession *)self cleanupState];
  v3.receiver = self;
  v3.super_class = CIDualRedEyeRepairSession;
  [(CIDualRedEyeRepairSession *)&v3 dealloc];
}

- (void)cleanupState
{
  [(CIDualRedEyeRepairSession *)self setTimestamp:0];
  [(CIDualRedEyeRepairSession *)self setObservations:0];
  [(CIDualRedEyeRepairSession *)self setDestination:0];
  [(CIDualRedEyeRepairSession *)self setPrimaryImage:0];
  [(CIDualRedEyeRepairSession *)self setSecondaryImage:0];
  [(CIDualRedEyeRepairSession *)self setMetadata:0];
  [(CIDualRedEyeRepairSession *)self setImageProperties:0];
  [(CIDualRedEyeRepairSession *)self setFaces:0];
  self->_primary = 0;
  self->_secondary = 0;
}

- (BOOL)prewarm
{
  v104 = *MEMORY[0x1E69E9840];
  if ([(CIContext *)[(CIDualRedEyeRepairSession *)self context] loadArchive:@"redeye_repair_archive"])
  {
LABEL_2:
    LOBYTE(v3) = 1;
    return v3;
  }

  v4 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor redColor]);
  v5 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor greenColor]);
  v6 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor blueColor]);
  v7 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor cyanColor]);
  v8 = +[CIImage imageWithColor:](CIImage, "imageWithColor:", +[CIColor magentaColor]);
  v88 = [(CIImage *)v4 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v9 = [(CIImage *)v5 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v86 = [(CIImage *)v6 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v85 = [(CIImage *)v7 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v84 = [(CIImage *)v8 imageByCroppingToRect:0.0, 0.0, 4224.0, 3024.0];
  v87 = [[CIRenderDestination alloc] initWithWidth:4224 height:3024 pixelFormat:70 commandBuffer:0 mtlTextureProvider:&__block_literal_global_23];
  if (v87)
  {
    v97 = 0;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v10 = [&unk_1F10855C0 countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0x1E75C0000uLL;
      v13 = *v94;
      selfCopy = self;
      v76 = *v94;
      v77 = v9;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v94 != v13)
          {
            objc_enumerationMutation(&unk_1F10855C0);
          }

          v79 = v14;
          v15 = [objc_alloc(*(v12 + 2784)) initWithTuning:{objc_msgSend(*(*(&v93 + 1) + 8 * v14), "intValue")}];
          v16 = [CIFilter filterWithName:@"CIRedEyeRaw"];
          -[CIFilter setValuesForKeysWithDictionary:](v16, "setValuesForKeysWithDictionary:", [v15 repairTuning]);
          v101[0] = @"inputPrimary";
          v101[1] = @"inputSecondary";
          v102[0] = v88;
          v102[1] = v9;
          -[CIFilter setValuesForKeysWithDictionary:](v16, "setValuesForKeysWithDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2]);
          v83 = v16;
          -[CIFilter setValue:forKey:](v16, "setValue:forKey:", [objc_msgSend(v15 "sessionTuning")], @"inputUseFaceSegmentationMask");
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v82 = [&unk_1F10855D8 countByEnumeratingWithState:&v89 objects:v100 count:16];
          if (v82)
          {
            v81 = *v90;
            v78 = v11;
LABEL_12:
            v17 = 0;
            while (1)
            {
              if (*v90 != v81)
              {
                objc_enumerationMutation(&unk_1F10855D8);
              }

              v18 = *(*(&v89 + 1) + 8 * v17);
              [(CIImage *)v88 extent];
              v20 = v19;
              [(CIImage *)v88 extent];
              v22 = v21;
              [v18 floatValue];
              v24 = v23;
              v25 = (v23 * 0.7);
              *&v22 = v22 * 0.6;
              v26 = [CIVector vectorWithX:1.0 Y:0.0];
              v27 = [CIVector vectorWithX:0.0 Y:1.0];
              v28 = v20;
              v29 = vcvtd_n_f64_u64(v24, 1uLL);
              v30 = *&v22;
              v31 = [CIVector vectorWithX:-(v29 - v28 * 0.5) - v24 Y:v30];
              v32 = [CIVector vectorWithX:v29 + v28 * 0.5 Y:v30];
              v33 = v25;
              v34 = [CIVector vectorWithX:v24 Y:v25];
              [(CIVector *)v31 X];
              v36 = v35 + v24 * 0.5;
              [(CIVector *)v31 Y];
              v38 = [CIVector vectorWithX:v36 Y:v37 + v25 * 0.5];
              [(CIVector *)v32 X];
              v40 = v39 + v24 * 0.5;
              [(CIVector *)v32 Y];
              v42 = [CIVector vectorWithX:v40 Y:v41 + v25 * 0.5];
              [(CIVector *)v31 X];
              v44 = v43;
              [(CIVector *)v31 Y];
              v46 = v45;
              [(CIVector *)v32 X];
              v48 = v47;
              [(CIVector *)v32 Y];
              v109.origin.y = v49;
              v105.origin.x = v44;
              v105.origin.y = v46;
              v105.size.width = v24;
              v105.size.height = v33;
              v109.origin.x = v48;
              v109.size.width = v24;
              v109.size.height = v33;
              v106 = CGRectUnion(v105, v109);
              v50 = [CIVector vectorWithCGRect:v106.origin.x, v106.origin.y, v106.size.width, v106.size.height];
              v51 = objc_opt_new();
              [v51 setImageOrientation:0];
              [v51 setSegmentationSkin:v86];
              [v51 setSegmentationSclera:v84];
              [v51 setSegmentationIris:v85];
              [v51 setFaceRect:v50];
              [v51 setFaceOrientation:0.0];
              v99[0] = v26;
              v99[1] = v27;
              [v51 setUvLeft:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v99, 2)}];
              v98[0] = v26;
              v98[1] = v27;
              [v51 setUvRight:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v98, 2)}];
              [v51 setRoiRenderOriginLeft:v31];
              [v51 setRoiRenderOriginRight:v32];
              [v51 setRoiRenderSize:v34];
              [v51 setPupilLeft:v38];
              [v51 setPupilRight:v42];
              [(CIDualRedEyeRepairSession *)selfCopy customizeRepairFilter:v83 forFace:v51];
              outputImage = [(CIFilter *)v83 outputImage];
              [objc_msgSend(v51 "roiRenderOriginLeft")];
              v54 = v53;
              [objc_msgSend(v51 "roiRenderOriginLeft")];
              v56 = v55;
              [objc_msgSend(v51 "roiRenderSize")];
              v58 = v57;
              [objc_msgSend(v51 "roiRenderSize")];
              v60 = v59;
              [objc_msgSend(v51 "roiRenderOriginRight")];
              v62 = v61;
              [objc_msgSend(v51 "roiRenderOriginRight")];
              v64 = v63;
              [objc_msgSend(v51 "roiRenderSize")];
              v66 = v65;
              [objc_msgSend(v51 "roiRenderSize")];
              v110.size.height = v67;
              v107.origin.x = v54;
              v107.origin.y = v56;
              v107.size.width = v58;
              v107.size.height = v60;
              v110.origin.x = v62;
              v110.origin.y = v64;
              v110.size.width = v66;
              v108 = CGRectUnion(v107, v110);
              x = v108.origin.x;
              y = v108.origin.y;
              width = v108.size.width;
              height = v108.size.height;
              if (![(CIDualRedEyeRepairSession *)selfCopy context])
              {
                v3 = CI_LOG_DUALRED();
                if (v3)
                {
                  v73 = ci_logger_api();
                  v3 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
                  if (v3)
                  {
                    [CIDualRedEyeRepairSession prewarm];
                    goto LABEL_31;
                  }
                }

                return v3;
              }

              [(CIContext *)[(CIDualRedEyeRepairSession *)selfCopy context] prepareRender:outputImage fromRect:v87 toDestination:&v97 atPoint:x error:y, width, height, x, y];
              if (v97)
              {
                break;
              }

              if (v82 == ++v17)
              {
                v9 = v77;
                v11 = v78;
                v12 = 0x1E75C0000;
                v13 = v76;
                v82 = [&unk_1F10855D8 countByEnumeratingWithState:&v89 objects:v100 count:16];
                if (v82)
                {
                  goto LABEL_12;
                }

                goto LABEL_19;
              }
            }

            v3 = CI_LOG_DUALRED();
            if (v3)
            {
              v74 = ci_logger_api();
              v3 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
              if (v3)
              {
                [CIDualRedEyeRepairSession prewarm];
                goto LABEL_31;
              }
            }

            return v3;
          }

LABEL_19:
          v14 = v79 + 1;
        }

        while (v79 + 1 != v11);
        v11 = [&unk_1F10855C0 countByEnumeratingWithState:&v93 objects:v103 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_2;
  }

  v3 = CI_LOG_DUALRED();
  if (v3)
  {
    v72 = ci_logger_api();
    v3 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [CIDualRedEyeRepairSession prewarm];
LABEL_31:
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)prepareRepair
{
  if (![(CIDualRedEyeRepairSession *)self context])
  {
    [(CIDualRedEyeRepairSession *)self setContext:+[CIDualRedEyeRepairSession _contextRGBAh]];
  }

  return 1;
}

- (BOOL)prepareRepairWithTuningParametersByPortType:(id)type
{
  [(CIDualRedEyeRepairSession *)self setTuningParametersByPortType:type];

  return [(CIDualRedEyeRepairSession *)self prepareRepair];
}

- (void)dumpInputs
{
  [objc_msgSend(self "primaryImage")];
  CVBufferGetAttachments(*a2, kCVAttachmentMode_ShouldPropagate);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (BOOL)validateRenderState
{
  renderUsingPixelBuffers = [(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers];
  renderUsingProvidedCommandQueue = [(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue];
  if (renderUsingProvidedCommandQueue && renderUsingPixelBuffers)
  {
    v5 = CI_LOG_DUALRED();
    if (v5)
    {
      v6 = ci_logger_api();
      v5 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        [CIDualRedEyeRepairSession validateRenderState];
LABEL_12:
        LOBYTE(v5) = 0;
      }
    }
  }

  else if (renderUsingProvidedCommandQueue || renderUsingPixelBuffers)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = CI_LOG_DUALRED();
    if (v5)
    {
      v7 = ci_logger_api();
      v5 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        [CIDualRedEyeRepairSession validateRenderState];
        goto LABEL_12;
      }
    }
  }

  return v5;
}

- (int)validateSetPrimary
{
  if (![(CIDualRedEyeRepairSession *)self validateRenderState])
  {
    return 3;
  }

  primary = self->_primary;
  renderUsingProvidedCommandQueue = [(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue];
  if (primary && !self->_primary)
  {
    if (CI_LOG_DUALRED())
    {
      v13 = ci_logger_api();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  if (!renderUsingProvidedCommandQueue)
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
    if (!primary)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![(CIDualRedEyeRepairSession *)self primaryTexture])
  {
    if (CI_LOG_DUALRED())
    {
      v15 = ci_logger_api();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  Width = [(MTLTexture *)[(CIDualRedEyeRepairSession *)self primaryTexture] width];
  Height = [(MTLTexture *)[(CIDualRedEyeRepairSession *)self primaryTexture] height];
  if (primary)
  {
LABEL_9:
    Width = CVPixelBufferGetWidth(self->_primary);
    Height = CVPixelBufferGetHeight(self->_primary);
  }

LABEL_10:
  if (Width > Height)
  {
    Height = Width;
  }

  if (Height < [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")])
  {
    if (CI_LOG_DUALRED())
    {
      v7 = ci_logger_api();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  if (![(CIDualRedEyeRepairSession *)self observations]|| ![(NSArray *)[(CIDualRedEyeRepairSession *)self observations] count])
  {
    if (CI_LOG_DUALRED())
    {
      v14 = ci_logger_api();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  if (![(CIDualRedEyeRepairSession *)self metadata])
  {
    if (CI_LOG_DUALRED())
    {
      v16 = ci_logger_api();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateSetPrimary];
      }
    }

    return 3;
  }

  v8 = [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairSession metadata](self "metadata")];
  if ([(NSDictionary *)[(CIDualRedEyeRepairSession *)self metadata] objectForKey:@"NormalizedSNR"])
  {
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairSession metadata](self "metadata")];
    v10 = v9;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if ((v10 <= v11) | v8 & 1)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (CI_LOG_DUALRED())
  {
    v17 = ci_logger_api();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession validateSetPrimary];
    }
  }

  return 2;
}

- (int)validateRepair
{
  if (![(CIDualRedEyeRepairSession *)self validateRenderState])
  {
    return 3;
  }

  if ([(CIDualRedEyeRepairSession *)self faces]&& [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count])
  {
    renderUsingPixelBuffers = [(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers];
    if (![(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue]|| [(CIDualRedEyeRepairSession *)self primaryTexture]&& [(CIDualRedEyeRepairSession *)self secondaryTexture]&& [(CIDualRedEyeRepairSession *)self outputTexture])
    {
      if (!renderUsingPixelBuffers || self->_primary && self->_secondary)
      {
        if ([(CIDualRedEyeRepairSession *)self context])
        {
          return 0;
        }

        if (CI_LOG_DUALRED())
        {
          v9 = ci_logger_api();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession validateRepair];
          }
        }
      }

      else
      {
        if (CI_LOG_DUALRED())
        {
          v7 = ci_logger_api();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession validateRepair];
          }
        }

        if (!self->_primary)
        {
          if (self->_secondary)
          {
            if (CI_LOG_DUALRED())
            {
              v8 = ci_logger_api();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [CIDualRedEyeRepairSession validateRepair];
              }
            }
          }
        }
      }
    }

    else if (CI_LOG_DUALRED())
    {
      v6 = ci_logger_api();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession validateRepair];
      }
    }

    return 3;
  }

  if (CI_LOG_DUALRED())
  {
    v5 = ci_logger_api();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession validateRepair];
    }
  }

  return 1;
}

- (id)redEyeFaceFromObservation:(id)observation exifOrientation:(int)orientation
{
  v4 = *&orientation;
  v213 = *MEMORY[0x1E69E9840];
  landmarks = [observation landmarks];
  if (!landmarks)
  {
    if (CI_LOG_DUALRED())
    {
      v22 = ci_logger_api();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    return 0;
  }

  v8 = landmarks;
  if (![landmarks leftEye] || !objc_msgSend(v8, "rightEye"))
  {
    if (CI_LOG_DUALRED())
    {
      v21 = ci_logger_api();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    return 0;
  }

  [observation boundingBox];
  CIVNRectInOrientedImage([(CIDualRedEyeRepairSession *)self primaryImage], v9, v10, v11, v12);
  v215 = CGRectIntegral(v214);
  v13 = [CIVector vectorWithCGRect:v215.origin.x, v215.origin.y, v215.size.width, v215.size.height];
  v14 = CIVNLandmarkInOrientedImage([v8 leftEye], -[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"));
  v15 = CIVNLandmarkInOrientedImage([v8 rightEye], -[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"));
  if (CI_LOG_DUALRED())
  {
    if (CI_LOG_DUALRED())
    {
      v16 = ci_logger_api();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    if (CI_LOG_DUALRED())
    {
      v17 = ci_logger_api();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    if (CI_LOG_DUALRED())
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:? exifOrientation:?];
      }
    }
  }

  if ([v14 count] == 8)
  {
    v19 = axesForEyePointsV2(v14);
    v20 = axesForEyePointsV2(v15);
  }

  else
  {
    if ([v14 count] != 6)
    {
      if (CI_LOG_DUALRED())
      {
        v47 = ci_logger_api();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v14 exifOrientation:?];
        }
      }

      return 0;
    }

    v19 = axesForEyePointsV3(v14);
    v20 = axesForEyePointsV3(v15);
  }

  v25 = v20;
  if (!v19 || !v20)
  {
    if (CI_LOG_DUALRED())
    {
      v46 = ci_logger_api();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
      }
    }

    return 0;
  }

  [objc_msgSend(v19 objectAtIndexedSubscript:{1), "_norm"}];
  v27 = v26;
  [objc_msgSend(v19 objectAtIndexedSubscript:{0), "_norm"}];
  v29 = v27 / v28;
  [objc_msgSend(v25 objectAtIndexedSubscript:{1), "_norm"}];
  v31 = v30;
  [objc_msgSend(v25 objectAtIndexedSubscript:{0), "_norm"}];
  v33 = v31 / v32;
  if (v29 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v29;
  }

  v35 = areaForAxes([v19 objectAtIndexedSubscript:0], objc_msgSend(v19, "objectAtIndexedSubscript:", 1));
  v36 = areaForAxes([v25 objectAtIndexedSubscript:0], objc_msgSend(v25, "objectAtIndexedSubscript:", 1));
  if (v35 <= v36)
  {
    v35 = v36;
  }

  [v8 confidence];
  v38 = v37;
  [observation faceJunkinessIndex];
  v40 = v39;
  [observation faceOrientationIndex];
  v42 = v41;
  if (CI_LOG_DUALRED())
  {
    v43 = ci_logger_api();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      *&buf[4] = "[CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:]";
      *&buf[12] = 2048;
      *&buf[14] = v38;
      *&buf[22] = 2048;
      *&buf[24] = v40;
      *v212 = 2048;
      *&v212[2] = v34;
      *&v212[10] = 2048;
      *&v212[12] = v35;
      _os_log_error_impl(&dword_19CC36000, v43, OS_LOG_TYPE_ERROR, "%{public}s Confidence=%.3f | junk=%.3f | Anisotropy=%.3f | area=%.0f", buf, 0x34u);
    }
  }

  [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
  if (v38 >= v44)
  {
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v40 > v48)
    {
      if (CI_LOG_DUALRED())
      {
        v49 = ci_logger_api();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v40 exifOrientation:?];
        }
      }

      return 0;
    }

    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v34 < v50)
    {
      if (CI_LOG_DUALRED())
      {
        v51 = ci_logger_api();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v34 exifOrientation:?];
        }
      }

      return 0;
    }

    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v35 < v52)
    {
      if (CI_LOG_DUALRED())
      {
        v53 = ci_logger_api();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:v35 exifOrientation:?];
        }
      }

      return 0;
    }

    v197 = v42;
    v198 = v40;
    v199 = v35;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v210[0] = v54;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v210[1] = v55;
    repairROIforEyePoints(v14, v19, v210);
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    repairROIforEyePoints(v15, v25, v210);
    v200 = v67;
    v202 = v66;
    v68 = v64;
    v69 = v65;
    if (v61 <= v64)
    {
      v70 = v64;
    }

    else
    {
      v70 = v61;
    }

    if (v63 <= v65)
    {
      v71 = v65;
    }

    else
    {
      v71 = v63;
    }

    v72 = expandFromCenter(v57, v59, v61, v63, v70, v71);
    v204 = v73;
    v205 = v72;
    v75 = v74;
    v77 = v76;
    v78 = expandFromCenter(v202, v200, v68, v69, v70, v71);
    v80 = v79;
    v82 = v81;
    v84 = v83;
    [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v86 = (v85 + 1.0);
    if (v75 <= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v75;
    }

    v88 = v87 * v86;
    if (v77 <= v84)
    {
      v89 = v84;
    }

    else
    {
      v89 = v77;
    }

    v90 = v89 * v86;
    v192 = v75;
    v194 = v77;
    v91 = expandFromCenter(v205, v204, v75, v77, v88, v89 * v86);
    v201 = v92;
    v203 = v91;
    v94 = v93;
    v96 = v95;
    v195 = v78;
    r2 = v80;
    v193 = v82;
    v97 = v82;
    v98 = v84;
    v99 = expandFromCenter(v78, v80, v97, v84, v88, v90);
    if (v94 != v102 || v96 != v101)
    {
      if (CI_LOG_DUALRED())
      {
        v121 = ci_logger_api();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      return 0;
    }

    v103 = v99;
    v104 = v100;
    v105 = [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v106 = [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    v107 = [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if ((v105 & 1) != 0 || (v106 & 1) != 0 || v107)
    {
      if (![observation faceSegments])
      {
        if (CI_LOG_DUALRED())
        {
          v147 = ci_logger_api();
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
          }
        }

        return 0;
      }

      v122 = probabilitiesForSegment([observation faceSegments], 482, v4);
      if (!v122)
      {
        if (CI_LOG_DUALRED())
        {
          v148 = ci_logger_api();
          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
          }
        }

        return 0;
      }

      v123 = v122;
      v124 = [v122 count];
      v125 = CI_LOG_DUALRED();
      if (v124 != 5)
      {
        if (v125)
        {
          v149 = ci_logger_api();
          if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:v123 exifOrientation:?];
          }
        }

        return 0;
      }

      rect_24 = v105;
      v178 = v104;
      v181 = v96;
      if (v125)
      {
        v126 = ci_logger_api();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      v187 = [v123 objectAtIndexedSubscript:0];
      v127 = [v123 objectAtIndexedSubscript:1];
      v128 = [v123 objectAtIndexedSubscript:2];
      v176 = [v123 objectAtIndexedSubscript:3];
      v129 = [v123 objectAtIndexedSubscript:4];
      v188 = v128;
      v190 = v127;
      v130 = v127;
      v109 = v176;
      v185 = RRmaximumRh(v130, v128);
      v175 = v129;
      v131 = RRmaximumRh(v176, v129);
      [objc_msgSend(observation "faceSegments")];
      CIVNRectInOrientedImage([(CIDualRedEyeRepairSession *)self primaryImage], v132, v133, v134, v135);
      v137 = v136;
      v139 = v138;
      v141 = v140;
      v143 = v142;
      [v187 extent];
      if (vabdd_f64(256.0, v144) > 0.00001 || ([v187 extent], vabdd_f64(256.0, v145) > 0.00001))
      {
        if (CI_LOG_DUALRED())
        {
          v146 = ci_logger_api();
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:v187 exifOrientation:?];
          }
        }

        return 0;
      }

      *v212 = 0u;
      memset(buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(buf, v141 * 0.00390625, v143 * 0.00390625);
      memset(&v209, 0, sizeof(v209));
      CGAffineTransformMakeTranslation(&v209, v137, v139);
      *&t1.a = *buf;
      *&t1.c = *&buf[16];
      *&t1.tx = *v212;
      memset(&v208, 0, sizeof(v208));
      t2 = v209;
      CGAffineTransformConcat(&v208, &t1, &t2);
      t1 = v208;
      v186 = [v187 imageByApplyingTransform:&t1];
      t1 = v208;
      v184 = [v185 imageByApplyingTransform:&t1];
      t1 = v208;
      v183 = [v131 imageByApplyingTransform:&t1];
      v96 = v181;
      v104 = v178;
      LOBYTE(v105) = rect_24;
      v108 = v175;
      if (rect_24)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v108 = 0;
      v109 = 0;
      v188 = 0;
      v190 = 0;
      v183 = 0;
      v184 = 0;
      v186 = 0;
      if (v105)
      {
LABEL_76:
        v174 = v108;
        v110 = constellationRectInSegmentationRect(-[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"), [v8 rightEye], objc_msgSend(observation, "faceSegments"), 0x100uLL);
        rect_16 = v112;
        rect_24a = v111;
        rect_8 = v113;
        rect = constellationRectInSegmentationRect(-[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"), [v8 leftEye], objc_msgSend(observation, "faceSegments"), 0x100uLL);
        v177 = v104;
        v115 = v114;
        v117 = v116;
        v119 = v118;
        v216.origin.x = v110;
        v216.size.width = rect_16;
        v216.origin.y = rect_24a;
        v216.size.height = rect_8;
        v217 = CGRectInset(v216, -12.8000002, -12.8000002);
        CGRectIntegral(v217);
        v218.origin.x = rect;
        v218.origin.y = v115;
        v218.size.width = v117;
        v218.size.height = v119;
        v219 = CGRectInset(v218, -12.8000002, -12.8000002);
        CGRectIntegral(v219);
        v104 = v177;
        v120 = semanticPupils([(CIDualRedEyeRepairSession *)self primaryImage], observation, v4, v109, v174, v190, v188);
        v191 = [v120 objectAtIndexedSubscript:0];
        v189 = [v120 objectAtIndexedSubscript:1];
        goto LABEL_102;
      }
    }

    v189 = 0;
    v191 = 0;
LABEL_102:
    v150 = orientedPupilFromLandmarks([(CIDualRedEyeRepairSession *)self primaryImage], v8, 0);
    v151 = orientedPupilFromLandmarks([(CIDualRedEyeRepairSession *)self primaryImage], v8, 1);
    if ((v105 & 1) == 0)
    {
      v152 = v151;
      if (CI_LOG_DUALRED())
      {
        v153 = ci_logger_api();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      v189 = v152;
      v191 = v150;
    }

    [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
    if (v154 <= 0.0001 || [(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
    {
      v155 = 0x1E75C0000;
      if (CI_LOG_DUALRED())
      {
        v156 = ci_logger_api();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }
    }

    else
    {
      v179 = v104;
      v180 = v103;
      v182 = v96;
      v220.origin.y = v204;
      v220.origin.x = v205;
      v220.size.width = v192;
      v223.size.width = v193;
      v220.size.height = v194;
      v223.origin.x = v195;
      v223.origin.y = r2;
      v223.size.height = v98;
      v221 = CGRectUnion(v220, v223);
      v222 = CGRectIntegral(v221);
      x = v222.origin.x;
      y = v222.origin.y;
      width = v222.size.width;
      height = v222.size.height;
      CFAbsoluteTimeGetCurrent();
      LODWORD(v161) = focusStatsForRegion(x, y, width, height, self->_primary, [(CIDualRedEyeRepairSession *)self context], [(CIDualRedEyeRepairSession *)self primaryImage]);
      CFAbsoluteTimeGetCurrent();
      v155 = 0x1E75C0000uLL;
      if (CI_LOG_DUALRED())
      {
        v162 = ci_logger_api();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      v103 = v180;
      v96 = v182;
      v104 = v179;
      if (CI_LOG_DUALRED())
      {
        v163 = ci_logger_api();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
        }
      }

      [-[NSDictionary objectForKey:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
      if (v164 > v161)
      {
        if (CI_LOG_DUALRED())
        {
          v168 = ci_logger_api();
          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:];
          }
        }

        return 0;
      }
    }

    v23 = objc_opt_new();
    [v23 setImageOrientation:v4];
    [v23 setLandmarks:v8];
    [v23 setObservation:observation];
    [v23 setSegmentationSkin:v186];
    [v23 setSegmentationSclera:v184];
    [v23 setSegmentationIris:v183];
    [v23 setFaceRect:v13];
    *&v165 = v198;
    [v23 setJunkiness:v165];
    LODWORD(v166) = v197;
    [v23 setFaceOrientation:v166];
    *&v167 = v199;
    [v23 setAreaMax:v167];
    [v23 setUvLeft:v19];
    [v23 setUvRight:v25];
    [v23 setRoiRenderOriginLeft:{objc_msgSend(*(v155 + 2960), "vectorWithCGPoint:", v203, v201)}];
    [v23 setRoiRenderOriginRight:{objc_msgSend(*(v155 + 2960), "vectorWithCGPoint:", v103, v104)}];
    [v23 setRoiRenderSize:{objc_msgSend(*(v155 + 2960), "vectorWithX:Y:", v94, v96)}];
    [v23 setPupilLeft:v191];
    [v23 setPupilRight:v189];
    return v23;
  }

  if (CI_LOG_DUALRED())
  {
    v45 = ci_logger_api();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession redEyeFaceFromObservation:v38 exifOrientation:?];
    }
  }

  return 0;
}

- (void)customizeRepairFilter:(id)filter forFace:(id)face
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13[0] = @"inputOriginLeft";
  [objc_msgSend(face "roiRenderOriginLeft")];
  v7 = v6;
  [objc_msgSend(face "roiRenderOriginLeft")];
  v14[0] = [CIVector vectorWithX:v7 Y:v8];
  v13[1] = @"inputOriginRight";
  [objc_msgSend(face "roiRenderOriginRight")];
  v10 = v9;
  [objc_msgSend(face "roiRenderOriginRight")];
  v14[1] = [CIVector vectorWithX:v10 Y:v11];
  v13[2] = @"inputSize";
  v14[2] = [face roiRenderSize];
  v13[3] = @"inputOrientationHint";
  v12 = MEMORY[0x1E696AD98];
  [face faceOrientation];
  v14[3] = [v12 numberWithFloat:?];
  v13[4] = @"inputAxisLongLeft";
  v14[4] = [objc_msgSend(face "uvLeft")];
  v13[5] = @"inputAxisLongRight";
  v14[5] = [objc_msgSend(face "uvRight")];
  v13[6] = @"inputAxisShortLeft";
  v14[6] = [objc_msgSend(face "uvLeft")];
  v13[7] = @"inputAxisShortRight";
  v14[7] = [objc_msgSend(face "uvRight")];
  v13[8] = @"inputPupilCenterLeft";
  v14[8] = [face pupilLeft];
  v13[9] = @"inputPupilCenterRight";
  v14[9] = [face pupilRight];
  [filter setValuesForKeysWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 10)}];
  if ([face segmentationSkin])
  {
    [filter setValue:objc_msgSend(face forKey:{"segmentationSkin"), @"inputSkinMask"}];
  }

  if ([face segmentationSclera])
  {
    [filter setValue:objc_msgSend(face forKey:{"segmentationSclera"), @"inputScleraMask"}];
  }

  if ([face segmentationSkin])
  {
    [filter setValue:objc_msgSend(face forKey:{"segmentationIris"), @"inputIrisMask"}];
  }
}

- (BOOL)repairFace:(id)face filter:(id)filter
{
  v64 = *MEMORY[0x1E69E9840];
  [objc_msgSend(face "roiRenderOriginLeft")];
  v8 = v7;
  [objc_msgSend(face "roiRenderOriginLeft")];
  v10 = v9;
  [objc_msgSend(face "roiRenderSize")];
  v12 = v11;
  [objc_msgSend(face "roiRenderSize")];
  v14 = v13;
  [objc_msgSend(face "roiRenderOriginRight")];
  v16 = v15;
  [objc_msgSend(face "roiRenderOriginRight")];
  v18 = v17;
  [objc_msgSend(face "roiRenderSize")];
  v20 = v19;
  [objc_msgSend(face "roiRenderSize")];
  v69.size.height = v21;
  v65.origin.x = v8;
  v65.origin.y = v10;
  v65.size.width = v12;
  v65.size.height = v14;
  v51 = v18;
  v53 = v16;
  v69.origin.x = v16;
  v69.origin.y = v18;
  height = v69.size.height;
  v49 = v20;
  v69.size.width = v20;
  v66 = CGRectIntersection(v65, v69);
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  v25 = v66.size.height;
  if (CI_LOG_DUALRED())
  {
    v26 = ci_logger_api();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136447234;
      *&buf[4] = "[CIDualRedEyeRepairSession repairFace:filter:]";
      v56 = 2048;
      v57 = x;
      v58 = 2048;
      v59 = y;
      v60 = 2048;
      v61 = width;
      v62 = 2048;
      v63 = v25;
      _os_log_error_impl(&dword_19CC36000, v26, OS_LOG_TYPE_ERROR, "%{public}s Intersection: %f,%f,%f,%f", buf, 0x34u);
    }
  }

  [(CIDualRedEyeRepairSession *)self customizeRepairFilter:filter forFace:face, *&height, *&v49, *&v51, *&v53];
  CFAbsoluteTimeGetCurrent();
  outputImage = [filter outputImage];
  if (CI_LOG_DUALRED())
  {
    v28 = ci_logger_api();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession repairFace:filter:];
    }
  }

  *buf = 0;
  v29 = [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
  Current = CFAbsoluteTimeGetCurrent();
  if (v29)
  {
    v67.origin.x = v8;
    v67.origin.y = v10;
    v67.size.width = v12;
    v67.size.height = v14;
    v70.origin.y = v52;
    v70.origin.x = v54;
    v70.size.height = v48;
    v70.size.width = v50;
    v68 = CGRectUnion(v67, v70);
    v31 = -[CIContext startTaskToRender:fromRect:toDestination:atPoint:error:](self->context, "startTaskToRender:fromRect:toDestination:atPoint:error:", [outputImage imageByCompositingOverImage:{-[CIImage imageByInsertingIntermediate:](-[CIDualRedEyeRepairSession primaryImage](self, "primaryImage"), "imageByInsertingIntermediate:", 0)}], -[CIDualRedEyeRepairSession destination](self, "destination"), buf, v68.origin.x, v68.origin.y, v68.size.width, v68.size.height, v68.origin.x, v68.origin.y);
    if (*buf)
    {
      v32 = CI_LOG_DUALRED();
      if (v32)
      {
        v33 = ci_logger_api();
        v32 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
        if (v32)
        {
          [CIDualRedEyeRepairSession repairFace:filter:];
LABEL_38:
          LOBYTE(v32) = 0;
          return v32;
        }
      }

      return v32;
    }

    v37 = v31;
    if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
    {
      [(MTLCommandBuffer *)[(CIDualRedEyeRepairSession *)self commandBuffer] commit];
      v38 = 0;
    }

    else
    {
      v38 = [(CIRenderTask *)v37 waitUntilCompletedAndReturnError:buf];
    }

    v40 = *buf;
    v32 = CI_LOG_DUALRED();
    if (v40)
    {
      if (v32)
      {
        v41 = ci_logger_api();
        v32 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
        if (v32)
        {
          [CIDualRedEyeRepairSession repairFace:filter:];
          goto LABEL_38;
        }
      }

      return v32;
    }

    if (v32)
    {
      v44 = ci_logger_api();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession repairFace:filter:];
        if (v38)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }
    }

LABEL_41:
    if (v38)
    {
LABEL_42:
      if (CI_LOG_DUALRED())
      {
        v45 = ci_logger_api();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [CIDualRedEyeRepairSession repairFace:v38 filter:?];
        }
      }
    }

LABEL_45:
    LOBYTE(v32) = 1;
    return v32;
  }

  v34 = [(CIContext *)self->context startTaskToRender:outputImage fromRect:[(CIDualRedEyeRepairSession *)self destination] toDestination:buf atPoint:v8 error:v10, v12, v14, v8, v10];
  if (![(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
  {
    [(CIRenderTask *)v34 waitUntilCompletedAndReturnError:buf];
  }

  if (CI_LOG_DUALRED())
  {
    v35 = ci_logger_api();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession repairFace:filter:];
    }
  }

  if (!*buf)
  {
    v39 = [(CIContext *)self->context startTaskToRender:outputImage fromRect:[(CIDualRedEyeRepairSession *)self destination] toDestination:buf atPoint:v54 error:v52, v50, v48, v54, v52];
    if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
    {
      [(MTLCommandBuffer *)[(CIDualRedEyeRepairSession *)self commandBuffer] commit];
      v38 = 0;
    }

    else
    {
      v38 = [(CIRenderTask *)v39 waitUntilCompletedAndReturnError:buf];
    }

    if (CI_LOG_DUALRED())
    {
      v42 = ci_logger_api();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession repairFace:filter:];
      }
    }

    if (*buf)
    {
      v32 = CI_LOG_DUALRED();
      if (v32)
      {
        v43 = ci_logger_api();
        v32 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
        if (v32)
        {
          [CIDualRedEyeRepairSession repairFace:filter:];
          goto LABEL_38;
        }
      }

      return v32;
    }

    goto LABEL_41;
  }

  v32 = CI_LOG_DUALRED();
  if (v32)
  {
    v36 = ci_logger_api();
    v32 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      [CIDualRedEyeRepairSession repairFace:filter:];
      goto LABEL_38;
    }
  }

  return v32;
}

- (BOOL)setPrimary:(__CVBuffer *)primary observations:(id)observations metadata:(id)metadata
{
  v70 = *MEMORY[0x1E69E9840];
  CFAbsoluteTimeGetCurrent();
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 2 * [observations count];
  v9 = ci_signpost_log_dualredeye();
  if (&self->super.isa + 1 >= 2)
  {
    v18 = v9;
    if (os_signpost_enabled(v9))
    {
      v19 = *(v50 + 6);
      *buf = 67109120;
      LODWORD(v56) = v19;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v18, OS_SIGNPOST_INTERVAL_BEGIN, self, "setPrimary", "eyeCount:%d", buf, 8u);
    }
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v10 = v48;
  v48[0] = __62__CIDualRedEyeRepairSession_setPrimary_observations_metadata___block_invoke;
  v48[1] = &unk_1E75C25C0;
  v48[2] = &v49;
  v48[3] = self;
  if (CI_LOG_DUALRED())
  {
    v11 = ci_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      -[CIDualRedEyeRepairSession setPrimary:observations:metadata:].cold.1([observations count], v69);
    }
  }

  if (CI_LOG_DUALRED())
  {
    v12 = ci_logger_api();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
    }
  }

  [(CIDualRedEyeRepairSession *)self cleanupState];
  -[CIDualRedEyeRepairSession setTimestamp:](self, "setTimestamp:", [MEMORY[0x1E695DF00] date]);
  [(CIDualRedEyeRepairSession *)self setMetadata:metadata];
  [(CIDualRedEyeRepairSession *)self setObservations:observations];
  self->_primary = primary;
  [(CIDualRedEyeRepairTuning *)[(CIDualRedEyeRepairSession *)self tuning] setTuningParametersByPortType:[(CIDualRedEyeRepairSession *)self tuningParametersByPortType] withCameraMetadata:metadata];
  if (CI_LOG_DUALRED())
  {
    v13 = ci_logger_api();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:v68 observations:? metadata:?];
    }
  }

  if (CI_LOG_DUALRED())
  {
    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:v67 observations:? metadata:?];
    }
  }

  [(CIDualRedEyeRepairSession *)self setImageProperties:0];
  if (metadata && [metadata objectForKeyedSubscript:@"ExifOrientation"])
  {
    v15 = [metadata objectForKeyedSubscript:@"ExifOrientation"];
    v64 = v15;
    v65 = @"CIImageProperties";
    v63 = *MEMORY[0x1E696DE78];
    v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    -[CIDualRedEyeRepairSession setImageProperties:](self, "setImageProperties:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1]);
  }

  else
  {
    v15 = &unk_1F1081B60;
  }

  if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
  {
    v16 = [CIImage imageWithMTLTexture:[(CIDualRedEyeRepairSession *)self secondaryTexture] options:[(CIDualRedEyeRepairSession *)self imageProperties]];
  }

  else
  {
    if (![(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers])
    {
      goto LABEL_23;
    }

    v16 = [CIImage imageWithCVPixelBuffer:self->_primary options:[(CIDualRedEyeRepairSession *)self imageProperties]];
  }

  [(CIDualRedEyeRepairSession *)self setPrimaryImage:v16];
LABEL_23:
  if (CI_LOG_DUALRED())
  {
    [(CIDualRedEyeRepairSession *)self dumpInputs];
    if ([(CIDualRedEyeRepairSession *)self primaryImage])
    {
      v17 = [(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] properties]? [(NSDictionary *)[(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] properties] objectForKey:@"Orientation"]: &unk_1F1081B60;
      if (CI_LOG_DUALRED())
      {
        v20 = ci_logger_api();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          intValue = [v17 intValue];
          [(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] extent];
          v43 = v42;
          [(CIImage *)[(CIDualRedEyeRepairSession *)self primaryImage] extent];
          *buf = 136446978;
          v56 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
          v57 = 1024;
          *v58 = intValue;
          *&v58[4] = 2048;
          *&v58[6] = v43;
          *&v58[14] = 2048;
          *&v58[16] = v44;
          _os_log_error_impl(&dword_19CC36000, v20, OS_LOG_TYPE_ERROR, "%{public}s Landmarks computed from orientation %d and size %f, %f", buf, 0x26u);
        }
      }
    }
  }

  if ([(CIDualRedEyeRepairSession *)self validateSetPrimary])
  {
    if (CI_LOG_DUALRED())
    {
      v21 = ci_logger_api();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
      }
    }

LABEL_37:
    [(CIDualRedEyeRepairSession *)self cleanupState];
    v22 = 0;
    goto LABEL_64;
  }

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; [observations count] > i; ++i)
  {
    if (CI_LOG_DUALRED())
    {
      v25 = ci_logger_api();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v30 = [observations count];
        *buf = 136446722;
        v56 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
        v57 = 1024;
        *v58 = i + 1;
        *&v58[4] = 1024;
        *&v58[6] = v30;
        _os_log_error_impl(&dword_19CC36000, v25, OS_LOG_TYPE_ERROR, "%{public}s Processing face observation %d / %d", buf, 0x18u);
      }
    }

    v26 = [observations objectAtIndexedSubscript:i];
    if (CI_LOG_DUALRED() >= 2)
    {
      [(CIDualRedEyeRepairSession *)self dumpObservation:v26 index:i];
    }

    v27 = -[CIDualRedEyeRepairSession redEyeFaceFromObservation:exifOrientation:](self, "redEyeFaceFromObservation:exifOrientation:", v26, [v15 intValue]);
    if (v27)
    {
      if (CI_LOG_DUALRED())
      {
        v28 = ci_logger_api();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v46 = v10;
          roiRenderSize = [v27 roiRenderSize];
          roiRenderOriginLeft = [v27 roiRenderOriginLeft];
          uvLeft = [v27 uvLeft];
          roiRenderOriginRight = [v27 roiRenderOriginRight];
          uvRight = [v27 uvRight];
          *buf = 136447490;
          v56 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
          v57 = 2112;
          *v58 = roiRenderSize;
          *&v58[8] = 2112;
          *&v58[10] = roiRenderOriginLeft;
          *&v58[18] = 2112;
          *&v58[20] = uvLeft;
          v59 = 2112;
          v60 = roiRenderOriginRight;
          v61 = 2112;
          v62 = uvRight;
          _os_log_error_impl(&dword_19CC36000, v28, OS_LOG_TYPE_ERROR, "%{public}s Good face: size %@ | left %@ axes %@ | right %@ axes %@ ", buf, 0x3Eu);
          v10 = v46;
        }
      }

      [array addObject:v27];
    }

    else if (CI_LOG_DUALRED())
    {
      v29 = ci_logger_api();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession setPrimary:&v54 observations:? metadata:?];
      }
    }
  }

  if (![array count])
  {
    if (CI_LOG_DUALRED())
    {
      v40 = ci_logger_api();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
      }
    }

    goto LABEL_37;
  }

  v35 = [-[NSDictionary objectForKeyedSubscript:](-[CIDualRedEyeRepairTuning sessionTuning](-[CIDualRedEyeRepairSession tuning](self "tuning")];
  if ([array count] > v35)
  {
    [array sortUsingComparator:&__block_literal_global_262];
    array = [array subarrayWithRange:{0, v35}];
  }

  [(CIDualRedEyeRepairSession *)self setFaces:array];
  CFAbsoluteTimeGetCurrent();
  if (CI_LOG_DUALRED())
  {
    v36 = ci_logger_api();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
    }
  }

  if (CI_LOG_DUALRED())
  {
    v37 = ci_logger_api();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession setPrimary:observations:metadata:];
    }
  }

  v38 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
  *(v50 + 6) = 2 * v38;
  v22 = 1;
LABEL_64:
  (v48[0])(v47);
  _Block_object_dispose(&v49, 8);
  return v22;
}

void __62__CIDualRedEyeRepairSession_setPrimary_observations_metadata___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_dualredeye();
  v3 = *(a1 + 40);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "setPrimary", "eyeCount:%d", v6, 8u);
    }
  }
}

uint64_t __62__CIDualRedEyeRepairSession_setPrimary_observations_metadata___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  [a2 areaMax];
  v5 = [v4 numberWithFloat:?];
  v6 = MEMORY[0x1E696AD98];
  [a3 areaMax];
  v7 = [v6 numberWithFloat:?];

  return [v7 compare:v5];
}

- (BOOL)_repairPrimaryWithSecondary:(__CVBuffer *)secondary to:(__CVBuffer *)to
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
  v8 = ci_signpost_log_dualredeye();
  if (&self->super.isa + 1 >= 2)
  {
    v40 = v8;
    if (os_signpost_enabled(v8))
    {
      *buf = 67109120;
      LODWORD(v58) = v7;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v40, OS_SIGNPOST_INTERVAL_BEGIN, self, "repairPrimaryWithSecondary", "eyeCount:%d", buf, 8u);
    }
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v53 = __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke;
  v54 = &__block_descriptor_44_e5_v8__0l;
  selfCopy = self;
  v56 = v7;
  if (CI_LOG_DUALRED())
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:];
    }
  }

  if (CI_LOG_DUALRED())
  {
    v10 = ci_logger_api();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:v70 to:?];
    }
  }

  if (CI_LOG_DUALRED())
  {
    v11 = ci_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:v69 to:?];
    }
  }

  if (![(CIDualRedEyeRepairSession *)self context]|| [(CIContext *)[(CIDualRedEyeRepairSession *)self context] workingFormat]!= 2056)
  {
    if (CI_LOG_DUALRED())
    {
      v12 = ci_logger_api();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:];
      }
    }

    [(CIDualRedEyeRepairSession *)self setContext:+[CIDualRedEyeRepairSession _contextRGBAh]];
  }

  if ([(CIDualRedEyeRepairSession *)self renderUsingPixelBuffers])
  {
    [(CIDualRedEyeRepairSession *)self setDestination:[[CIRenderDestination alloc] initWithPixelBuffer:to]];
    self->_secondary = secondary;
    self->_output = to;
    [(CIDualRedEyeRepairSession *)self setSecondaryImage:[CIImage imageWithCVPixelBuffer:secondary options:[(CIDualRedEyeRepairSession *)self imageProperties]]];
  }

  if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
  {
    [(CIDualRedEyeRepairSession *)self setSecondaryImage:[CIImage imageWithMTLTexture:[(CIDualRedEyeRepairSession *)self secondaryTexture] options:[(CIDualRedEyeRepairSession *)self imageProperties]]];
  }

  if (CI_LOG_DUALRED())
  {
    v13 = ci_logger_api();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CIImage *)self->primaryImage extent];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(CIImage *)self->primaryImage extent];
      [(CIDualRedEyeRepairSession *)v68 _repairPrimaryWithSecondary:v15 to:v17, v19];
    }
  }

  if (CI_LOG_DUALRED())
  {
    v20 = ci_logger_api();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CIImage *)self->secondaryImage extent];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(CIImage *)self->secondaryImage extent];
      [(CIDualRedEyeRepairSession *)v67 _repairPrimaryWithSecondary:v22 to:v24, v26];
    }
  }

  if (CI_LOG_DUALRED() >= 2)
  {
    [(CIDualRedEyeRepairSession *)self dumpSecondary];
  }

  if ([(CIDualRedEyeRepairSession *)self validateRepair])
  {
    [(CIDualRedEyeRepairSession *)self cleanupState];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    Current = CFAbsoluteTimeGetCurrent();
    v28 = [CIFilter filterWithName:@"CIRedEyeRaw"];
    [(CIFilter *)v28 setValuesForKeysWithDictionary:[(CIDualRedEyeRepairTuning *)[(CIDualRedEyeRepairSession *)self tuning] repairTuning]];
    v65[0] = @"inputPrimary";
    primaryImage = [(CIDualRedEyeRepairSession *)self primaryImage];
    v65[1] = @"inputSecondary";
    v66[0] = primaryImage;
    v66[1] = [(CIDualRedEyeRepairSession *)self secondaryImage];
    -[CIFilter setValuesForKeysWithDictionary:](v28, "setValuesForKeysWithDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2]);
    [(CIFilter *)v28 setValue:[(NSDictionary *)[(CIDualRedEyeRepairTuning *)[(CIDualRedEyeRepairSession *)self tuning] sessionTuning] objectForKeyedSubscript:@"kUseFaceSegmentationMask"] forKey:@"inputUseFaceSegmentationMask"];
    v30 = 0;
    *&v31 = 136446722;
    v45 = v31;
    while (1)
    {
      v32 = v30;
      v33 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
      if (v33 <= v32)
      {
        break;
      }

      v34 = ci_signpost_log_dualredeye();
      if (&self->super.isa + 1 >= 2)
      {
        v38 = v34;
        if (os_signpost_enabled(v34))
        {
          *buf = 67109120;
          LODWORD(v58) = v32;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v38, OS_SIGNPOST_INTERVAL_BEGIN, self, "repairFace", "face:%d", buf, 8u);
        }
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v48 = __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke_264;
      v49 = &__block_descriptor_44_e5_v8__0l;
      selfCopy2 = self;
      v51 = v32;
      if (CI_LOG_DUALRED())
      {
        v35 = ci_logger_api();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v39 = [(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count];
          *buf = v45;
          v58 = "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]";
          v59 = 1024;
          v60 = v32 + 1;
          v61 = 1024;
          v62 = v39;
          _os_log_error_impl(&dword_19CC36000, v35, OS_LOG_TYPE_ERROR, "%{public}s Repair %d/%d", buf, 0x18u);
        }
      }

      if ([(CIDualRedEyeRepairSession *)self renderUsingProvidedCommandQueue])
      {
        [(CIDualRedEyeRepairSession *)self setCommandBuffer:[(MTLCommandQueue *)[(CIDualRedEyeRepairSession *)self commandQueue] commandBuffer]];
        [(CIDualRedEyeRepairSession *)self setDestination:[[CIRenderDestination alloc] initWithMTLTexture:[(CIDualRedEyeRepairSession *)self outputTexture] commandBuffer:[(CIDualRedEyeRepairSession *)self commandBuffer]]];
      }

      v36 = [(CIDualRedEyeRepairSession *)self repairFace:[(NSArray *)[(CIDualRedEyeRepairSession *)self faces] objectAtIndexedSubscript:v32] filter:v28];
      if (!v36)
      {
        if (CI_LOG_DUALRED())
        {
          v37 = ci_logger_api();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [CIDualRedEyeRepairSession _repairPrimaryWithSecondary:&v64 to:?];
          }
        }

        [(CIDualRedEyeRepairSession *)self cleanupState];
      }

      v48(v47);
      v30 = v32 + 1;
      if (!v36)
      {
        goto LABEL_55;
      }
    }

    v41 = CFAbsoluteTimeGetCurrent();
    if (CI_LOG_DUALRED())
    {
      v42 = ci_logger_api();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [[(NSArray *)[(CIDualRedEyeRepairSession *)self faces] count] _repairPrimaryWithSecondary:buf to:(v41 - Current) * 1000.0];
      }
    }

    if (CI_LOG_DUALRED() >= 2)
    {
      dump(+[CIImage imageWithCVPixelBuffer:options:](CIImage, "imageWithCVPixelBuffer:options:", self->_primary, [(CIDualRedEyeRepairSession *)self imageProperties]), @"-repair", +[CIDualRedEyeRepairSession _contextRGBAh], [(CIDualRedEyeRepairSession *)self timestamp]);
    }

LABEL_55:
    objc_autoreleasePoolPop(context);
    if (v33 <= v32)
    {
      [(CIDualRedEyeRepairSession *)self cleanupState];
      v43 = 1;
      goto LABEL_57;
    }
  }

  v43 = 0;
LABEL_57:
  v53(v52);
  return v43;
}

void __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_dualredeye();
  v3 = *(a1 + 32);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "repairPrimaryWithSecondary", "eyeCount:%d", v6, 8u);
    }
  }
}

void __60__CIDualRedEyeRepairSession__repairPrimaryWithSecondary_to___block_invoke_264(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ci_signpost_log_dualredeye();
  v3 = *(a1 + 32);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "repairFace", "face:%d", v6, 8u);
    }
  }
}

- (void)dumpSecondary
{
  [-[CVBufferRef primaryImage](self "primaryImage")];
  CVBufferGetAttachments(self[1], kCVAttachmentMode_ShouldPropagate);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)dumpObservation:(id)observation index:(int)index
{
  v4 = *&index;
  v8 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:observation requiringSecureCoding:1 error:&v8];
  if (v8)
  {
    if (CI_LOG_DUALRED())
    {
      v7 = ci_logger_api();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CIDualRedEyeRepairSession dumpObservation:index:];
      }
    }
  }

  else
  {
    [v6 writeToFile:dumpfilepathWithTag(objc_msgSend(MEMORY[0x1E696AEC0] atomically:{"stringWithFormat:", @"%@-%d", @"-observation", v4), @".archive", -[CIDualRedEyeRepairSession timestamp](self, "timestamp")), 0}];
  }
}

- (void)prewarm
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateRepair
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)redEyeFaceFromObservation:exifOrientation:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)redEyeFaceFromObservation:exifOrientation:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.3(void *a1)
{
  [objc_msgSend(a1 "primaryImage")];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.4(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.7(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)redEyeFaceFromObservation:exifOrientation:.cold.11()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)redEyeFaceFromObservation:(void *)a1 exifOrientation:.cold.14(void *a1)
{
  [a1 extent];
  [a1 extent];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x24u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.17(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.18(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.19(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)redEyeFaceFromObservation:(float)a1 exifOrientation:.cold.20(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)repairFace:filter:.cold.1()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.2()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.4()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.5()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.6()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.7()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:filter:.cold.8()
{
  OUTLINED_FUNCTION_10_0();
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)repairFace:(void *)a1 filter:.cold.9(void *a1)
{
  [a1 kernelExecutionTime];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)setPrimary:(int)a1 observations:(uint64_t)a2 metadata:.cold.1(int a1, uint64_t a2)
{
  *a2 = 136446466;
  *(a2 + 4) = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
  *(a2 + 12) = 1024;
  *(a2 + 14) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)setPrimary:observations:metadata:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setPrimary:(uint64_t)a1 observations:(_DWORD *)a2 metadata:.cold.3(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setPrimary:(uint64_t)a1 observations:(_DWORD *)a2 metadata:.cold.4(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setPrimary:observations:metadata:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setPrimary:(_DWORD *)a1 observations:(void *)a2 metadata:.cold.9(_DWORD *a1, void *a2)
{
  *a1 = 136446210;
  *a2 = "[CIDualRedEyeRepairSession setPrimary:observations:metadata:]";
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_repairPrimaryWithSecondary:(uint64_t)a1 to:(_DWORD *)a2 .cold.2(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_repairPrimaryWithSecondary:(uint64_t)a1 to:(_DWORD *)a2 .cold.3(uint64_t a1, _DWORD *a2)
{
  *a2 = 136446466;
  OUTLINED_FUNCTION_5_0(a1, a2, "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]");
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_repairPrimaryWithSecondary:(double)a3 to:(double)a4 .cold.5(_DWORD *a1, double a2, double a3, double a4)
{
  *a1 = 136446722;
  OUTLINED_FUNCTION_9_0(a1, a4);
  _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "%{public}s CVPixelBuffer size (primary) = %d, %d", v5, 0x18u);
}

- (void)_repairPrimaryWithSecondary:(double)a3 to:(double)a4 .cold.6(_DWORD *a1, double a2, double a3, double a4)
{
  *a1 = 136446722;
  OUTLINED_FUNCTION_9_0(a1, a4);
  _os_log_error_impl(&dword_19CC36000, v4, OS_LOG_TYPE_ERROR, "%{public}s CVPixelBuffer size (secondary) = %d, %d", v5, 0x18u);
}

- (void)_repairPrimaryWithSecondary:(double)a3 to:.cold.7(uint64_t a1, uint64_t a2, double a3)
{
  *a2 = 136446722;
  *(a2 + 4) = "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]";
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  *(a2 + 22) = 2048;
  *(a2 + 24) = a3 / (2 * a1);
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_repairPrimaryWithSecondary:(_DWORD *)a1 to:(void *)a2 .cold.8(_DWORD *a1, void *a2)
{
  *a1 = 136446210;
  *a2 = "[CIDualRedEyeRepairSession _repairPrimaryWithSecondary:to:]";
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dumpObservation:index:.cold.1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end