@interface AVCCameraTestUtils
+ (BOOL)expectedGFTResolutionForDevice:(id)a3 ratio:(CGSize *)a4;
+ (BOOL)expectedPreviewResolutionForDevice:(id)a3 width:(int *)a4 height:(int *)a5;
+ (BOOL)findExpectedFramerate:(float *)a3 forDevice:(id)a4;
+ (BOOL)isCameraAvailable:(int64_t)a3;
+ (BOOL)isCenterStageActive;
+ (BOOL)isCenterStageAvailable;
+ (BOOL)isReactionAvailable;
+ (BOOL)performReaction;
@end

@implementation AVCCameraTestUtils

+ (BOOL)isReactionAvailable
{
  v2 = [MEMORY[0x1E69870A0] deviceWithUniqueID:{+[AVCCameraTestUtils defaultCameraUID](AVCCameraTestUtils, "defaultCameraUID")}];
  if (v2)
  {

    LOBYTE(v2) = [v2 canPerformReactionEffects];
  }

  return v2;
}

+ (BOOL)performReaction
{
  v2 = [MEMORY[0x1E69870A0] deviceWithUniqueID:{+[AVCCameraTestUtils defaultCameraUID](AVCCameraTestUtils, "defaultCameraUID")}];
  if (v2)
  {
    LODWORD(v2) = [v2 canPerformReactionEffects];
    if (v2)
    {
      AVControlCenterVideoEffectsModulePerformReactionEffect();
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

+ (BOOL)isCameraAvailable:(int64_t)a3
{
  v9[6] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6986928];
  v9[0] = *MEMORY[0x1E6986950];
  v9[1] = v4;
  v5 = *MEMORY[0x1E6986900];
  v9[2] = *MEMORY[0x1E6986948];
  v9[3] = v5;
  v6 = *MEMORY[0x1E6986938];
  v9[4] = *MEMORY[0x1E6986908];
  v9[5] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  return [objc_msgSend(objc_msgSend(MEMORY[0x1E69870A8] discoverySessionWithDeviceTypes:v7 mediaType:*MEMORY[0x1E6987608] position:{a3), "devices"), "count"}] != 0;
}

+ (BOOL)isCenterStageActive
{
  v2 = [MEMORY[0x1E69870A0] deviceWithUniqueID:@"com.apple.avfoundation.avcapturedevice.built-in_video:1"];

  return [v2 isCenterStageActive];
}

+ (BOOL)isCenterStageAvailable
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [objc_msgSend(MEMORY[0x1E69870A0] deviceWithUniqueID:{@"com.apple.avfoundation.avcapturedevice.built-in_video:1", "formats"}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) isCenterStageSupported];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

+ (BOOL)expectedPreviewResolutionForDevice:(id)a3 width:(int *)a4 height:(int *)a5
{
  if (expectedPreviewResolutionForDevice_width_height__onceToken != -1)
  {
    +[AVCCameraTestUtils expectedPreviewResolutionForDevice:width:height:];
  }

  v8 = [expectedPreviewResolutionForDevice_width_height___resolutionForDeviceTypeDict objectForKeyedSubscript:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 componentsSeparatedByString:@"x"];
    *a4 = [objc_msgSend(v10 objectAtIndexedSubscript:{0), "integerValue"}];
    *a5 = [objc_msgSend(v10 objectAtIndexedSubscript:{1), "integerValue"}];
  }

  return v9 != 0;
}

+ (BOOL)expectedGFTResolutionForDevice:(id)a3 ratio:(CGSize *)a4
{
  if (!a4)
  {
    return 0;
  }

  if (expectedGFTResolutionForDevice_ratio__onceToken != -1)
  {
    +[AVCCameraTestUtils expectedGFTResolutionForDevice:ratio:];
  }

  v6 = [expectedGFTResolutionForDevice_ratio___gftResolutionForDeviceTypeDict objectForKeyedSubscript:a3];
  if (!v6)
  {
    return 0;
  }

  v7 = [v6 componentsSeparatedByString:@"x"];
  a4->width = [objc_msgSend(v7 objectAtIndexedSubscript:{0), "integerValue"}];
  v8 = 1;
  a4->height = [objc_msgSend(v7 objectAtIndexedSubscript:{1), "integerValue"}];
  return v8;
}

+ (BOOL)findExpectedFramerate:(float *)a3 forDevice:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v25 = 0.0;
  v23 = [+[VCVideoRuleCollectionsCamera getBestFrameWidth:a3]frameRate:"getBestFrameWidth:frameHeight:frameRate:", &v26 + 4, &v26, &v25];
  v4 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  v5 = 0.0;
  if (v4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [v4 formats];
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v12 = [v11 videoSupportedFrameRateRanges];
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v29;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v29 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v28 + 1) + 8 * j);
                [v17 maxFrameRate];
                if (v18 > v5)
                {
                  [v17 maxFrameRate];
                  v5 = v19;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
            }

            while (v14);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v8);
    }
  }

  v20 = v25;
  if (v25 >= v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = v25;
  }

  if (v5 > 0.0)
  {
    v20 = v21;
  }

  *a3 = v20;
  return v23;
}

@end