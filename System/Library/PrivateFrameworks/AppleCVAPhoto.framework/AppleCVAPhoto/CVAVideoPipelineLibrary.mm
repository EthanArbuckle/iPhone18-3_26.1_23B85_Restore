@interface CVAVideoPipelineLibrary
+ (id)colorCubePortraitGenericRequestForPortraitVideoPipeline:(id)pipeline sourceColorPixelBuffer:(__CVBuffer *)buffer cubeData:(id)data error:(id *)error;
+ (id)colorCubePortraitRequestForPortraitVideoPipeline:(id)pipeline withWithSourceColorPixelBuffer:(__CVBuffer *)buffer destinationColorPixelBuffer:(__CVBuffer *)pixelBuffer cubeData:(id)data;
+ (id)colorCubeRequestWithBackgroundCube:(id)cube foregroundCube:(id)foregroundCube error:(id *)error;
+ (id)contourLightRequestWithFace:(id)face error:(id *)error;
+ (id)contourLightRequestWithFace:(id)face relightStyleStrength:(float)strength error:(id *)error;
+ (id)disparityPostprocessingVideoPipelineWithProperties:(id)properties error:(id *)error;
+ (id)mattingVideoPipelineWithProperties:(id)properties error:(id *)error;
+ (id)opaqueBackgroundRequestWithMattingRequest:(id)request error:(id *)error;
+ (id)portraitRequestWithBackground:(id)background light:(id)light post:(id)post error:(id *)error;
+ (id)portraitVideoPipelineWithProperties:(id)properties commandQueue:(id)queue error:(id *)error;
+ (id)portraitVideoPipelineWithProperties:(id)properties commandQueue:(id)queue notificationQueue:(id)notificationQueue error:(id *)error;
+ (id)portraitVideoPipelineWithProperties:(id)properties error:(id *)error;
+ (id)sourceImageRequest:(__CVBuffer *)request error:(id *)error;
+ (id)stageLightPortraitRequestWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer proxyCubeData:(id)data cubeData:(id)cubeData;
+ (id)stageLightPortraitRequestWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer proxyCubeData:(id)data cubeData:(id)cubeData vignetteIntensity:(float)intensity stageLightIntensity:(float)lightIntensity;
+ (id)studioLightRequestWithFace:(id)face error:(id *)error;
+ (id)studioLightRequestWithFace:(id)face relightStyleStrength:(float)strength error:(id *)error;
+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)request simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)lux metadata:(id)metadata error:(id *)error;
+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)request simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)lux metadata:(id)metadata primaryCaptureRect:(CGRect)rect error:(id *)error;
+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)request simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)lux metadata:(id)metadata renderingRect:(CGRect)rect error:(id *)error;
+ (id)syntheticDepthOfFieldPortraitRequestWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer backgroundColorCube:(id)cube foregroundColorCube:(id)colorCube colorCubeIntensity:(float)intensity simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)self0;
+ (id)videoPipelinePropertiesForDevice:(unint64_t)device;
+ (int)prewarm;
@end

@implementation CVAVideoPipelineLibrary

+ (id)colorCubePortraitGenericRequestForPortraitVideoPipeline:(id)pipeline sourceColorPixelBuffer:(__CVBuffer *)buffer cubeData:(id)data error:(id *)error
{
  pipelineCopy = pipeline;
  dataCopy = data;
  if (error)
  {
    *error = 0;
  }

  if ((atomic_load_explicit(&qword_1ECDE11B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE11B8))
  {
    v17 = +[CVAPreferenceManager defaults];
    v18 = [v17 BOOLForKey:@"CVAPhotoEnforceNewAPI"] ^ 1;

    byte_1ECDE11B0 = v18;
    __cxa_guard_release(&qword_1ECDE11B8);
  }

  v11 = byte_1ECDE11B0;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: colorCubePortraitGenericRequestForPortraitVideoPipeline is deprecated."];
  v14 = [v12 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary colorCubePortraitGenericRequestForPortraitVideoPipeline:sourceColorPixelBuffer:cubeData:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 632, v13];
  sub_1DED25D64(v11 ^ 1u, error, 4294944393, v14);

  if (v11)
  {
    v15 = objc_opt_new();
    [v15 setPortraitVideoPipeline:pipelineCopy];
    [v15 setSourceColorPixelBuffer:buffer];
    CVPixelBufferRetain(buffer);
    [v15 setCubeData:dataCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)portraitRequestWithBackground:(id)background light:(id)light post:(id)post error:(id *)error
{
  backgroundCopy = background;
  lightCopy = light;
  postCopy = post;
  if (error)
  {
    *error = 0;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Background request shouldn't be nil."];
  v14 = [v12 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 393, v13];
  sub_1DED25D64(backgroundCopy == 0, error, 4294944393, v14);

  if (!backgroundCopy)
  {
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_1ECDE11A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE11A8))
  {
    v33 = +[CVAPreferenceManager defaults];
    v34 = [v33 BOOLForKey:@"CVAPhotoEnforceNewAPI"] ^ 1;

    byte_1ECDE11A0 = v34;
    __cxa_guard_release(&qword_1ECDE11A8);
  }

  if (postCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Only colorCube post-processing is supported."];
      v17 = [v20 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 467, v16];
      sub_1DED25D64(1, error, 4294944393, v17);
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (lightCopy)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Light should be nil."];
      v17 = [v15 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 477, v16];
      sub_1DED25D64(1, error, 4294944393, v17);
LABEL_16:

LABEL_17:
      v21 = 0;
      goto LABEL_18;
    }

    if (postCopy)
    {
      singleColorCube = [postCopy singleColorCube];

      if (!singleColorCube)
      {
        v24 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Use post as colorCubeRequest: (Single cube)."];
        v17 = [v24 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 487, v16];
        sub_1DED25D64(1, error, 4294944393, v17);
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (lightCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (!postCopy && ((isKindOfClass ^ 1) & 1) == 0)
        {
          v19 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: STAGE LIGHT CUSTOM MONO requires colorCubeRequestWithBackgroundCube (mono color cube)."];
          v17 = [v19 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 522, v16];
          sub_1DED25D64(1, error, 4294944393, v17);
          goto LABEL_16;
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For legacy Stage Light use legacy interface."];
        v17 = [v25 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 500, v16];
        sub_1DED25D64(1, error, 4294944393, v17);
        goto LABEL_16;
      }
    }

    if (postCopy && (byte_1ECDE11A0 & 1) != 0)
    {
      singleColorCube2 = [postCopy singleColorCube];

      if (singleColorCube2)
      {
        if (!lightCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v28 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: When background is not nil, Single color cube is good only for Studio or Contour."];
          v17 = [v28 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 537, v16];
          sub_1DED25D64(1, error, 4294944393, v17);
          goto LABEL_16;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (lightCopy)
        {
          v27 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For the given background/light, post-processing should be nil."];
          v17 = [v27 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 549, v16];
          sub_1DED25D64(1, error, 4294944393, v17);
          goto LABEL_16;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!lightCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v32 = MEMORY[0x1E696AEC0];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For the given background/light, post-processing should be nil."];
            v17 = [v32 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 561, v16];
            sub_1DED25D64(1, error, 4294944393, v17);
            goto LABEL_16;
          }
        }
      }
    }
  }

  if ((byte_1ECDE11A0 & 1) == 0)
  {
    objc_opt_class();
    if (!((lightCopy == 0) | objc_opt_isKindOfClass() & 1))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if (!postCopy || ([postCopy singleColorCube], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
          {
            v30 = MEMORY[0x1E696AEC0];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Need post as colorCubeRequest: (Single cube)."];
            v17 = [v30 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 590, v16];
            sub_1DED25D64(1, error, 4294944393, v17);
            goto LABEL_16;
          }
        }

        else if (!postCopy)
        {
          v31 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For the given background/light, post-processing should be nil."];
          v17 = [v31 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 599, v16];
          sub_1DED25D64(1, error, 4294944393, v17);
          goto LABEL_16;
        }
      }
    }
  }

  v21 = objc_opt_new();
  [v21 setBackground:backgroundCopy];
  [v21 setPost:postCopy];
  [v21 setLight:lightCopy];
LABEL_18:

  return v21;
}

+ (id)colorCubeRequestWithBackgroundCube:(id)cube foregroundCube:(id)foregroundCube error:(id *)error
{
  cubeCopy = cube;
  foregroundCubeCopy = foregroundCube;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: both backgroundColorCube and foregroundColorCube are nil!"];
  v11 = [v9 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary colorCubeRequestWithBackgroundCube:foregroundCube:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 357, v10];
  sub_1DED25D64((cubeCopy | foregroundCubeCopy) == 0, error, 4294944393, v11);

  if (cubeCopy | foregroundCubeCopy)
  {
    v12 = objc_opt_new();
    [v12 setBackgroundColorCube:cubeCopy];
    [v12 setForegroundColorCube:foregroundCubeCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)contourLightRequestWithFace:(id)face error:(id *)error
{
  LODWORD(v4) = 2143289344;
  v5 = [CVAVideoPipelineLibrary contourLightRequestWithFace:face relightStyleStrength:error error:v4];

  return v5;
}

+ (id)studioLightRequestWithFace:(id)face error:(id *)error
{
  LODWORD(v4) = 2143289344;
  v5 = [CVAVideoPipelineLibrary studioLightRequestWithFace:face relightStyleStrength:error error:v4];

  return v5;
}

+ (id)contourLightRequestWithFace:(id)face relightStyleStrength:(float)strength error:(id *)error
{
  faceCopy = face;
  v7 = objc_opt_new();
  [v7 setFaceKitProcessOutput:faceCopy];
  *&v8 = strength;
  [v7 setPortraitStyleStrength:v8];

  return v7;
}

+ (id)studioLightRequestWithFace:(id)face relightStyleStrength:(float)strength error:(id *)error
{
  faceCopy = face;
  v7 = objc_opt_new();
  [v7 setFaceKitProcessOutput:faceCopy];
  *&v8 = strength;
  [v7 setPortraitStyleStrength:v8];

  return v7;
}

+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)request simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)lux metadata:(id)metadata primaryCaptureRect:(CGRect)rect error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  requestCopy = request;
  metadataCopy = metadata;
  v19 = objc_opt_new();
  [v19 setMattingRequest:requestCopy];
  *&v20 = ratio;
  [v19 setSimulatedFocalRatio:v20];
  *&v21 = gain;
  [v19 setSourceColorGain:v21];
  *&v22 = lux;
  [v19 setSourceColorLux:v22];
  [v19 setSbufMetadata:metadataCopy];
  [v19 setPrimaryCaptureRect:{x, y, width, height}];

  return v19;
}

+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)request simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)lux metadata:(id)metadata renderingRect:(CGRect)rect error:(id *)error
{
  v9 = [self syntheticDepthOfFieldBackgroundRequestWithMattingRequest:request simulatedFocalRatio:metadata sourceColorGain:error sourceColorLux:? metadata:? primaryCaptureRect:? error:?];

  return v9;
}

+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)request simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)lux metadata:(id)metadata error:(id *)error
{
  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v12 = [self syntheticDepthOfFieldBackgroundRequestWithMattingRequest:request simulatedFocalRatio:metadata sourceColorGain:error sourceColorLux:? metadata:? primaryCaptureRect:? error:?];

  return v12;
}

+ (id)opaqueBackgroundRequestWithMattingRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v5 = objc_opt_new();
  [v5 setMattingRequest:requestCopy];

  return v5;
}

+ (id)sourceImageRequest:(__CVBuffer *)request error:(id *)error
{
  v5 = objc_opt_new();
  [v5 setSourceColorPixelBuffer:request];

  return v5;
}

+ (id)syntheticDepthOfFieldPortraitRequestWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer backgroundColorCube:(id)cube foregroundColorCube:(id)colorCube colorCubeIntensity:(float)intensity simulatedFocalRatio:(float)ratio sourceColorGain:(float)gain sourceColorLux:(float)self0
{
  requestCopy = request;
  cubeCopy = cube;
  colorCubeCopy = colorCube;
  v20 = [CVAPortraitRequest alloc];
  *&v21 = intensity;
  *&v22 = ratio;
  *&v23 = gain;
  *&v24 = lux;
  v25 = [(CVAPortraitRequest *)v20 initWithMattingRequest:requestCopy destinationColorPixelBuffer:buffer backgroundColorCube:cubeCopy foregroundColorCube:colorCubeCopy colorCubeIntensity:v21 simulatedFocalRatio:v22 sourceColorGain:v23 sourceColorLux:v24];

  return v25;
}

+ (id)stageLightPortraitRequestWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer proxyCubeData:(id)data cubeData:(id)cubeData vignetteIntensity:(float)intensity stageLightIntensity:(float)lightIntensity
{
  requestCopy = request;
  dataCopy = data;
  cubeDataCopy = cubeData;
  if (intensity < 0.0 || intensity > 1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CVAVideoPipelineLibrary.mm" lineNumber:205 description:{@"vignetteIntensity not in [0, 1]: %f", intensity}];

    if (lightIntensity >= 0.0)
    {
LABEL_6:
      if (lightIntensity <= 1.0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (lightIntensity >= 0.0)
  {
    goto LABEL_6;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"CVAVideoPipelineLibrary.mm" lineNumber:208 description:{@"stageLightIntensity not in [0, 1]: %f", lightIntensity}];

LABEL_7:
  v19 = [CVAPortraitRequest_StageLight alloc];
  *&v20 = intensity;
  *&v21 = lightIntensity;
  v22 = [(CVAPortraitRequest_StageLight *)v19 initWithMattingRequest:requestCopy destinationColorPixelBuffer:buffer proxyCubeData:dataCopy cubeData:cubeDataCopy vignetteIntensity:v20 stageLightIntensity:v21];

  return v22;
}

+ (id)stageLightPortraitRequestWithMattingRequest:(id)request destinationColorPixelBuffer:(__CVBuffer *)buffer proxyCubeData:(id)data cubeData:(id)cubeData
{
  requestCopy = request;
  dataCopy = data;
  cubeDataCopy = cubeData;
  v12 = [CVAPortraitRequest_StageLight alloc];
  LODWORD(v13) = 2143289344;
  LODWORD(v14) = 2143289344;
  v15 = [(CVAPortraitRequest_StageLight *)v12 initWithMattingRequest:requestCopy destinationColorPixelBuffer:buffer proxyCubeData:dataCopy cubeData:cubeDataCopy vignetteIntensity:v13 stageLightIntensity:v14];

  return v15;
}

+ (id)colorCubePortraitRequestForPortraitVideoPipeline:(id)pipeline withWithSourceColorPixelBuffer:(__CVBuffer *)buffer destinationColorPixelBuffer:(__CVBuffer *)pixelBuffer cubeData:(id)data
{
  v46[1] = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  dataCopy = data;
  videoPipelineProperties = [pipelineCopy videoPipelineProperties];
  inputDisparityPixelBufferWidth = [videoPipelineProperties inputDisparityPixelBufferWidth];

  videoPipelineProperties2 = [pipelineCopy videoPipelineProperties];
  inputDisparityPixelBufferHeight = [videoPipelineProperties2 inputDisparityPixelBufferHeight];

  videoPipelineProperties3 = [pipelineCopy videoPipelineProperties];
  inputDisparityPixelBufferPixelFormat = [videoPipelineProperties3 inputDisparityPixelBufferPixelFormat];

  videoPipelineProperties4 = [pipelineCopy videoPipelineProperties];
  outputDisparityPixelBufferWidth = [videoPipelineProperties4 outputDisparityPixelBufferWidth];

  videoPipelineProperties5 = [pipelineCopy videoPipelineProperties];
  outputDisparityPixelBufferHeight = [videoPipelineProperties5 outputDisparityPixelBufferHeight];

  videoPipelineProperties6 = [pipelineCopy videoPipelineProperties];
  outputDisparityPixelBufferPixelFormat = [videoPipelineProperties6 outputDisparityPixelBufferPixelFormat];

  videoPipelineProperties7 = [pipelineCopy videoPipelineProperties];
  alphaMattePixelBufferWidth = [videoPipelineProperties7 alphaMattePixelBufferWidth];

  videoPipelineProperties8 = [pipelineCopy videoPipelineProperties];
  alphaMattePixelBufferHeight = [videoPipelineProperties8 alphaMattePixelBufferHeight];

  videoPipelineProperties9 = [pipelineCopy videoPipelineProperties];
  HIDWORD(v32) = [videoPipelineProperties9 alphaMattePixelBufferPixelFormat];

  v39 = 0;
  pixelBufferOut = 0;
  texture = 0;
  v45 = *MEMORY[0x1E69660D8];
  v23 = v45;
  v24 = MEMORY[0x1E695E0F8];
  v46[0] = MEMORY[0x1E695E0F8];
  CVPixelBufferCreate(0, inputDisparityPixelBufferWidth, inputDisparityPixelBufferHeight, inputDisparityPixelBufferPixelFormat, [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1], &pixelBufferOut);
  v43 = v23;
  v44 = v24;
  CVPixelBufferCreate(0, outputDisparityPixelBufferWidth, outputDisparityPixelBufferHeight, outputDisparityPixelBufferPixelFormat, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1], &v39);
  v41 = v23;
  v42 = v24;
  CVPixelBufferCreate(0, alphaMattePixelBufferWidth, alphaMattePixelBufferHeight, HIDWORD(v32), [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1], &texture);
  v25 = [CVADisparityPostprocessingRequest alloc];
  LOBYTE(v32) = 0;
  v26 = [(CVADisparityPostprocessingRequest *)v25 initWithSourceColorPixelBuffer:buffer fixedPointDisparityPixelBuffer:pixelBufferOut destinationDisparityPixelBuffer:v39 focusRegion:0 focusRegionType:0 currentFocusPosition:0 lockFocalPlane:0.0 sourceColorPixelBufferOrientation:1.0 sourceColorPixelBufferGravity:0.0 sourceColorPixelBufferGlobalMotion:0.0 facesArray:0.0 disparityNormalizationMultiplier:0.0 disparityNormalizationOffset:0.0 primaryCaptureRect:1.0 cropDepthToPrimaryCaptureRect:0, 0, 0, 0, 0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v32];
  v27 = [CVAMattingRequest alloc];
  v28 = [(CVAMattingRequest *)v27 initWithDisparityPostprocessingRequest:v26 segmentationPixelBuffer:0 skinSegmentationPixelBuffer:0 primaryCaptureRect:1 applyRotation:texture destinationAlphaMattePixelBuffer:0 error:0.0, 0.0, 0.0, 0.0];
  v29 = [[CVAPortraitRequest_StageLight alloc] initWithMattingRequest:v28 destinationColorPixelBuffer:pixelBuffer proxyCubeData:dataCopy cubeData:dataCopy vignetteIntensity:0.0 stageLightIntensity:0.0];
  CVPixelBufferRelease(texture);
  CVPixelBufferRelease(v39);
  CVPixelBufferRelease(pixelBufferOut);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (int)prewarm
{
  v2 = 0;
  v13 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [CVAVideoPipelineLibrary videoPipelinePropertiesForDevice:v2];
    v10 = 0;
    v5 = [CVAVideoPipelineLibrary portraitVideoPipelineWithProperties:v4 commandQueue:0 error:&v10];
    v6 = v10;
    if (!v5)
    {
      break;
    }

    objc_autoreleasePoolPop(v3);
    if (++v2 == 52)
    {
      code = 0;
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_error_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  code = [v6 code];

  objc_autoreleasePoolPop(v3);
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return code;
}

+ (id)disparityPostprocessingVideoPipelineWithProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  if (error)
  {
    *error = 0;
  }

  v6 = [[CVAPortraitVideoPipeline_Impl alloc] initWithProperties:propertiesCopy error:error];

  return v6;
}

+ (id)mattingVideoPipelineWithProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  if (error)
  {
    *error = 0;
  }

  v6 = [[CVAPortraitVideoPipeline_Impl alloc] initWithProperties:propertiesCopy error:error];

  return v6;
}

+ (id)portraitVideoPipelineWithProperties:(id)properties commandQueue:(id)queue error:(id *)error
{
  v5 = [self portraitVideoPipelineWithProperties:properties commandQueue:queue notificationQueue:0 error:error];

  return v5;
}

+ (id)portraitVideoPipelineWithProperties:(id)properties commandQueue:(id)queue notificationQueue:(id)notificationQueue error:(id *)error
{
  propertiesCopy = properties;
  queueCopy = queue;
  notificationQueueCopy = notificationQueue;
  if (error)
  {
    *error = 0;
  }

  v12 = [[CVAPortraitVideoPipeline_Impl alloc] initWithProperties:propertiesCopy commandQueue:queueCopy notificationQueue:notificationQueueCopy error:error];

  return v12;
}

+ (id)portraitVideoPipelineWithProperties:(id)properties error:(id *)error
{
  v4 = [self portraitVideoPipelineWithProperties:properties commandQueue:0 error:error];

  return v4;
}

+ (id)videoPipelinePropertiesForDevice:(unint64_t)device
{
  v3 = [[CVAVideoPipelineProperties_Impl alloc] initForVideoPipelineDevice:device];

  return v3;
}

@end