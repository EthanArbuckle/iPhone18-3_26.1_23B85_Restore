@interface CVAVideoPipelineLibrary
+ (id)colorCubePortraitGenericRequestForPortraitVideoPipeline:(id)a3 sourceColorPixelBuffer:(__CVBuffer *)a4 cubeData:(id)a5 error:(id *)a6;
+ (id)colorCubePortraitRequestForPortraitVideoPipeline:(id)a3 withWithSourceColorPixelBuffer:(__CVBuffer *)a4 destinationColorPixelBuffer:(__CVBuffer *)a5 cubeData:(id)a6;
+ (id)colorCubeRequestWithBackgroundCube:(id)a3 foregroundCube:(id)a4 error:(id *)a5;
+ (id)contourLightRequestWithFace:(id)a3 error:(id *)a4;
+ (id)contourLightRequestWithFace:(id)a3 relightStyleStrength:(float)a4 error:(id *)a5;
+ (id)disparityPostprocessingVideoPipelineWithProperties:(id)a3 error:(id *)a4;
+ (id)mattingVideoPipelineWithProperties:(id)a3 error:(id *)a4;
+ (id)opaqueBackgroundRequestWithMattingRequest:(id)a3 error:(id *)a4;
+ (id)portraitRequestWithBackground:(id)a3 light:(id)a4 post:(id)a5 error:(id *)a6;
+ (id)portraitVideoPipelineWithProperties:(id)a3 commandQueue:(id)a4 error:(id *)a5;
+ (id)portraitVideoPipelineWithProperties:(id)a3 commandQueue:(id)a4 notificationQueue:(id)a5 error:(id *)a6;
+ (id)portraitVideoPipelineWithProperties:(id)a3 error:(id *)a4;
+ (id)sourceImageRequest:(__CVBuffer *)a3 error:(id *)a4;
+ (id)stageLightPortraitRequestWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 proxyCubeData:(id)a5 cubeData:(id)a6;
+ (id)stageLightPortraitRequestWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 proxyCubeData:(id)a5 cubeData:(id)a6 vignetteIntensity:(float)a7 stageLightIntensity:(float)a8;
+ (id)studioLightRequestWithFace:(id)a3 error:(id *)a4;
+ (id)studioLightRequestWithFace:(id)a3 relightStyleStrength:(float)a4 error:(id *)a5;
+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)a3 simulatedFocalRatio:(float)a4 sourceColorGain:(float)a5 sourceColorLux:(float)a6 metadata:(id)a7 error:(id *)a8;
+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)a3 simulatedFocalRatio:(float)a4 sourceColorGain:(float)a5 sourceColorLux:(float)a6 metadata:(id)a7 primaryCaptureRect:(CGRect)a8 error:(id *)a9;
+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)a3 simulatedFocalRatio:(float)a4 sourceColorGain:(float)a5 sourceColorLux:(float)a6 metadata:(id)a7 renderingRect:(CGRect)a8 error:(id *)a9;
+ (id)syntheticDepthOfFieldPortraitRequestWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 backgroundColorCube:(id)a5 foregroundColorCube:(id)a6 colorCubeIntensity:(float)a7 simulatedFocalRatio:(float)a8 sourceColorGain:(float)a9 sourceColorLux:(float)a10;
+ (id)videoPipelinePropertiesForDevice:(unint64_t)a3;
+ (int)prewarm;
@end

@implementation CVAVideoPipelineLibrary

+ (id)colorCubePortraitGenericRequestForPortraitVideoPipeline:(id)a3 sourceColorPixelBuffer:(__CVBuffer *)a4 cubeData:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  if (a6)
  {
    *a6 = 0;
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
  sub_1DED25D64(v11 ^ 1u, a6, 4294944393, v14);

  if (v11)
  {
    v15 = objc_opt_new();
    [v15 setPortraitVideoPipeline:v9];
    [v15 setSourceColorPixelBuffer:a4];
    CVPixelBufferRetain(a4);
    [v15 setCubeData:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)portraitRequestWithBackground:(id)a3 light:(id)a4 post:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Background request shouldn't be nil."];
  v14 = [v12 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 393, v13];
  sub_1DED25D64(v9 == 0, a6, 4294944393, v14);

  if (!v9)
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

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Only colorCube post-processing is supported."];
      v17 = [v20 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 467, v16];
      sub_1DED25D64(1, a6, 4294944393, v17);
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v10)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Light should be nil."];
      v17 = [v15 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 477, v16];
      sub_1DED25D64(1, a6, 4294944393, v17);
LABEL_16:

LABEL_17:
      v21 = 0;
      goto LABEL_18;
    }

    if (v11)
    {
      v23 = [v11 singleColorCube];

      if (!v23)
      {
        v24 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Use post as colorCubeRequest: (Single cube)."];
        v17 = [v24 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 487, v16];
        sub_1DED25D64(1, a6, 4294944393, v17);
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (!v11 && ((isKindOfClass ^ 1) & 1) == 0)
        {
          v19 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: STAGE LIGHT CUSTOM MONO requires colorCubeRequestWithBackgroundCube (mono color cube)."];
          v17 = [v19 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 522, v16];
          sub_1DED25D64(1, a6, 4294944393, v17);
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
        sub_1DED25D64(1, a6, 4294944393, v17);
        goto LABEL_16;
      }
    }

    if (v11 && (byte_1ECDE11A0 & 1) != 0)
    {
      v26 = [v11 singleColorCube];

      if (v26)
      {
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v28 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: When background is not nil, Single color cube is good only for Studio or Contour."];
          v17 = [v28 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 537, v16];
          sub_1DED25D64(1, a6, 4294944393, v17);
          goto LABEL_16;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v10)
        {
          v27 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For the given background/light, post-processing should be nil."];
          v17 = [v27 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 549, v16];
          sub_1DED25D64(1, a6, 4294944393, v17);
          goto LABEL_16;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v32 = MEMORY[0x1E696AEC0];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For the given background/light, post-processing should be nil."];
            v17 = [v32 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 561, v16];
            sub_1DED25D64(1, a6, 4294944393, v17);
            goto LABEL_16;
          }
        }
      }
    }
  }

  if ((byte_1ECDE11A0 & 1) == 0)
  {
    objc_opt_class();
    if (!((v10 == 0) | objc_opt_isKindOfClass() & 1))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if (!v11 || ([v11 singleColorCube], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
          {
            v30 = MEMORY[0x1E696AEC0];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). Need post as colorCubeRequest: (Single cube)."];
            v17 = [v30 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 590, v16];
            sub_1DED25D64(1, a6, 4294944393, v17);
            goto LABEL_16;
          }
        }

        else if (!v11)
        {
          v31 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: Requests' combination is not supported (see Table in CVAVideoPipeline.h). For the given background/light, post-processing should be nil."];
          v17 = [v31 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary portraitRequestWithBackground:light:post:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 599, v16];
          sub_1DED25D64(1, a6, 4294944393, v17);
          goto LABEL_16;
        }
      }
    }
  }

  v21 = objc_opt_new();
  [v21 setBackground:v9];
  [v21 setPost:v11];
  [v21 setLight:v10];
LABEL_18:

  return v21;
}

+ (id)colorCubeRequestWithBackgroundCube:(id)a3 foregroundCube:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"API: both backgroundColorCube and foregroundColorCube are nil!"];
  v11 = [v9 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "+[CVAVideoPipelineLibrary colorCubeRequestWithBackgroundCube:foregroundCube:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineLibrary.mm", 357, v10];
  sub_1DED25D64((v7 | v8) == 0, a5, 4294944393, v11);

  if (v7 | v8)
  {
    v12 = objc_opt_new();
    [v12 setBackgroundColorCube:v7];
    [v12 setForegroundColorCube:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)contourLightRequestWithFace:(id)a3 error:(id *)a4
{
  LODWORD(v4) = 2143289344;
  v5 = [CVAVideoPipelineLibrary contourLightRequestWithFace:a3 relightStyleStrength:a4 error:v4];

  return v5;
}

+ (id)studioLightRequestWithFace:(id)a3 error:(id *)a4
{
  LODWORD(v4) = 2143289344;
  v5 = [CVAVideoPipelineLibrary studioLightRequestWithFace:a3 relightStyleStrength:a4 error:v4];

  return v5;
}

+ (id)contourLightRequestWithFace:(id)a3 relightStyleStrength:(float)a4 error:(id *)a5
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setFaceKitProcessOutput:v6];
  *&v8 = a4;
  [v7 setPortraitStyleStrength:v8];

  return v7;
}

+ (id)studioLightRequestWithFace:(id)a3 relightStyleStrength:(float)a4 error:(id *)a5
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setFaceKitProcessOutput:v6];
  *&v8 = a4;
  [v7 setPortraitStyleStrength:v8];

  return v7;
}

+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)a3 simulatedFocalRatio:(float)a4 sourceColorGain:(float)a5 sourceColorLux:(float)a6 metadata:(id)a7 primaryCaptureRect:(CGRect)a8 error:(id *)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v17 = a3;
  v18 = a7;
  v19 = objc_opt_new();
  [v19 setMattingRequest:v17];
  *&v20 = a4;
  [v19 setSimulatedFocalRatio:v20];
  *&v21 = a5;
  [v19 setSourceColorGain:v21];
  *&v22 = a6;
  [v19 setSourceColorLux:v22];
  [v19 setSbufMetadata:v18];
  [v19 setPrimaryCaptureRect:{x, y, width, height}];

  return v19;
}

+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)a3 simulatedFocalRatio:(float)a4 sourceColorGain:(float)a5 sourceColorLux:(float)a6 metadata:(id)a7 renderingRect:(CGRect)a8 error:(id *)a9
{
  v9 = [a1 syntheticDepthOfFieldBackgroundRequestWithMattingRequest:a3 simulatedFocalRatio:a7 sourceColorGain:a9 sourceColorLux:? metadata:? primaryCaptureRect:? error:?];

  return v9;
}

+ (id)syntheticDepthOfFieldBackgroundRequestWithMattingRequest:(id)a3 simulatedFocalRatio:(float)a4 sourceColorGain:(float)a5 sourceColorLux:(float)a6 metadata:(id)a7 error:(id *)a8
{
  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v12 = [a1 syntheticDepthOfFieldBackgroundRequestWithMattingRequest:a3 simulatedFocalRatio:a7 sourceColorGain:a8 sourceColorLux:? metadata:? primaryCaptureRect:? error:?];

  return v12;
}

+ (id)opaqueBackgroundRequestWithMattingRequest:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setMattingRequest:v4];

  return v5;
}

+ (id)sourceImageRequest:(__CVBuffer *)a3 error:(id *)a4
{
  v5 = objc_opt_new();
  [v5 setSourceColorPixelBuffer:a3];

  return v5;
}

+ (id)syntheticDepthOfFieldPortraitRequestWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 backgroundColorCube:(id)a5 foregroundColorCube:(id)a6 colorCubeIntensity:(float)a7 simulatedFocalRatio:(float)a8 sourceColorGain:(float)a9 sourceColorLux:(float)a10
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = [CVAPortraitRequest alloc];
  *&v21 = a7;
  *&v22 = a8;
  *&v23 = a9;
  *&v24 = a10;
  v25 = [(CVAPortraitRequest *)v20 initWithMattingRequest:v17 destinationColorPixelBuffer:a4 backgroundColorCube:v18 foregroundColorCube:v19 colorCubeIntensity:v21 simulatedFocalRatio:v22 sourceColorGain:v23 sourceColorLux:v24];

  return v25;
}

+ (id)stageLightPortraitRequestWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 proxyCubeData:(id)a5 cubeData:(id)a6 vignetteIntensity:(float)a7 stageLightIntensity:(float)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  if (a7 < 0.0 || a7 > 1.0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"CVAVideoPipelineLibrary.mm" lineNumber:205 description:{@"vignetteIntensity not in [0, 1]: %f", a7}];

    if (a8 >= 0.0)
    {
LABEL_6:
      if (a8 <= 1.0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (a8 >= 0.0)
  {
    goto LABEL_6;
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"CVAVideoPipelineLibrary.mm" lineNumber:208 description:{@"stageLightIntensity not in [0, 1]: %f", a8}];

LABEL_7:
  v19 = [CVAPortraitRequest_StageLight alloc];
  *&v20 = a7;
  *&v21 = a8;
  v22 = [(CVAPortraitRequest_StageLight *)v19 initWithMattingRequest:v15 destinationColorPixelBuffer:a4 proxyCubeData:v16 cubeData:v17 vignetteIntensity:v20 stageLightIntensity:v21];

  return v22;
}

+ (id)stageLightPortraitRequestWithMattingRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 proxyCubeData:(id)a5 cubeData:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [CVAPortraitRequest_StageLight alloc];
  LODWORD(v13) = 2143289344;
  LODWORD(v14) = 2143289344;
  v15 = [(CVAPortraitRequest_StageLight *)v12 initWithMattingRequest:v9 destinationColorPixelBuffer:a4 proxyCubeData:v10 cubeData:v11 vignetteIntensity:v13 stageLightIntensity:v14];

  return v15;
}

+ (id)colorCubePortraitRequestForPortraitVideoPipeline:(id)a3 withWithSourceColorPixelBuffer:(__CVBuffer *)a4 destinationColorPixelBuffer:(__CVBuffer *)a5 cubeData:(id)a6
{
  v46[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v37 = a6;
  v8 = [v7 videoPipelineProperties];
  v9 = [v8 inputDisparityPixelBufferWidth];

  v10 = [v7 videoPipelineProperties];
  v11 = [v10 inputDisparityPixelBufferHeight];

  v12 = [v7 videoPipelineProperties];
  v13 = [v12 inputDisparityPixelBufferPixelFormat];

  v14 = [v7 videoPipelineProperties];
  v15 = [v14 outputDisparityPixelBufferWidth];

  v16 = [v7 videoPipelineProperties];
  v17 = [v16 outputDisparityPixelBufferHeight];

  v18 = [v7 videoPipelineProperties];
  v19 = [v18 outputDisparityPixelBufferPixelFormat];

  v20 = [v7 videoPipelineProperties];
  v34 = [v20 alphaMattePixelBufferWidth];

  v21 = [v7 videoPipelineProperties];
  v33 = [v21 alphaMattePixelBufferHeight];

  v22 = [v7 videoPipelineProperties];
  HIDWORD(v32) = [v22 alphaMattePixelBufferPixelFormat];

  v39 = 0;
  pixelBufferOut = 0;
  texture = 0;
  v45 = *MEMORY[0x1E69660D8];
  v23 = v45;
  v24 = MEMORY[0x1E695E0F8];
  v46[0] = MEMORY[0x1E695E0F8];
  CVPixelBufferCreate(0, v9, v11, v13, [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1], &pixelBufferOut);
  v43 = v23;
  v44 = v24;
  CVPixelBufferCreate(0, v15, v17, v19, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1], &v39);
  v41 = v23;
  v42 = v24;
  CVPixelBufferCreate(0, v34, v33, HIDWORD(v32), [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1], &texture);
  v25 = [CVADisparityPostprocessingRequest alloc];
  LOBYTE(v32) = 0;
  v26 = [(CVADisparityPostprocessingRequest *)v25 initWithSourceColorPixelBuffer:a4 fixedPointDisparityPixelBuffer:pixelBufferOut destinationDisparityPixelBuffer:v39 focusRegion:0 focusRegionType:0 currentFocusPosition:0 lockFocalPlane:0.0 sourceColorPixelBufferOrientation:1.0 sourceColorPixelBufferGravity:0.0 sourceColorPixelBufferGlobalMotion:0.0 facesArray:0.0 disparityNormalizationMultiplier:0.0 disparityNormalizationOffset:0.0 primaryCaptureRect:1.0 cropDepthToPrimaryCaptureRect:0, 0, 0, 0, 0, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v32];
  v27 = [CVAMattingRequest alloc];
  v28 = [(CVAMattingRequest *)v27 initWithDisparityPostprocessingRequest:v26 segmentationPixelBuffer:0 skinSegmentationPixelBuffer:0 primaryCaptureRect:1 applyRotation:texture destinationAlphaMattePixelBuffer:0 error:0.0, 0.0, 0.0, 0.0];
  v29 = [[CVAPortraitRequest_StageLight alloc] initWithMattingRequest:v28 destinationColorPixelBuffer:a5 proxyCubeData:v37 cubeData:v37 vignetteIntensity:0.0 stageLightIntensity:0.0];
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
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_error_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v7 = [v6 code];

  objc_autoreleasePoolPop(v3);
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)disparityPostprocessingVideoPipelineWithProperties:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v6 = [[CVAPortraitVideoPipeline_Impl alloc] initWithProperties:v5 error:a4];

  return v6;
}

+ (id)mattingVideoPipelineWithProperties:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v6 = [[CVAPortraitVideoPipeline_Impl alloc] initWithProperties:v5 error:a4];

  return v6;
}

+ (id)portraitVideoPipelineWithProperties:(id)a3 commandQueue:(id)a4 error:(id *)a5
{
  v5 = [a1 portraitVideoPipelineWithProperties:a3 commandQueue:a4 notificationQueue:0 error:a5];

  return v5;
}

+ (id)portraitVideoPipelineWithProperties:(id)a3 commandQueue:(id)a4 notificationQueue:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v12 = [[CVAPortraitVideoPipeline_Impl alloc] initWithProperties:v9 commandQueue:v10 notificationQueue:v11 error:a6];

  return v12;
}

+ (id)portraitVideoPipelineWithProperties:(id)a3 error:(id *)a4
{
  v4 = [a1 portraitVideoPipelineWithProperties:a3 commandQueue:0 error:a4];

  return v4;
}

+ (id)videoPipelinePropertiesForDevice:(unint64_t)a3
{
  v3 = [[CVAVideoPipelineProperties_Impl alloc] initForVideoPipelineDevice:a3];

  return v3;
}

@end