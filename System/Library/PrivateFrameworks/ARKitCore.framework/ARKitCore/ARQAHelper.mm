@interface ARQAHelper
+ (float)_meanDepthValueOfDepthBuffer:(__CVBuffer *)a3 consideringSegmentation:(BOOL)a4 ofSegmentationBuffer:(__CVBuffer *)a5;
+ (id)arrayFromRaycastResults:(id)a3;
+ (id)arrayOf2dPoints:(id)a1 count:(SEL)a2;
+ (id)arrayOf3dPoints:(id)a1 count:(SEL)a2;
+ (id)arrayOfUUIDSet:(id)a3;
+ (id)arrayWithMatrix3x3:(__n128)a3;
+ (id)arrayWithMatrix4x4:(__n128)a3;
+ (id)arrayWithVector2:(id)a1;
+ (id)arrayWithVector3:(id)a1;
+ (id)arrayWithVector4:(id)a1;
+ (id)dictionaryFromAnchor:(id)a3;
+ (id)dictionaryFromCLLocation:(id)a3;
+ (id)dictionaryFromMeshAnchor:(id)a3;
+ (id)dictionaryFromMeshGeometry:(id)a3;
+ (id)dictionaryFromPatchGrid:(id)a3;
+ (id)dictionaryFromPlaneAnchor:(id)a3;
+ (id)dictionaryFromPlaneExtent:(id)a3;
+ (id)dictionaryFromRawCLLocation:(id)a3;
+ (id)dictionaryFromRaycastQuery:(id)a3;
+ (id)dictionaryFromVertices:(id)a1 vertexCount:(SEL)a2 textureCoordinates:textureCoordinateCount:;
+ (id)extractAnchorDataForFrame:(id)a3;
+ (id)extractDetectedBodiesForFrame:(id)a3;
+ (id)formatDescriptionForAnchor;
+ (id)formatDescriptionForPlaneAnchor;
+ (id)generateTagsForConfiguration:(id)a3 replaySensor:(id)a4 technique:(id)a5;
+ (id)headerInformationWithConfiguration:(id)a3 technique:(id)a4;
+ (id)traceFrameData:(id)a3 withFrameIndex:(unint64_t)a4;
+ (id)traceFrameData:(id)a3 withFrameIndex:(unint64_t)a4 writeOBJ:(BOOL)a5;
+ (void)techniquesArray:(id)a3 array:(id)a4;
+ (void)traverseTechniques:(id)a3 withBlock:(id)a4;
@end

@implementation ARQAHelper

+ (id)arrayWithVector2:(id)a1
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7 = *(&v2 + 1);
  v3 = ARFloat(*&v2);
  v8[0] = v3;
  v4 = ARFloat(v7);
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v5;
}

+ (id)arrayWithVector3:(id)a1
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8 = v2;
  v3 = ARFloat(*&v2);
  v9[0] = v3;
  v4 = ARFloat(*(&v8 + 1));
  v9[1] = v4;
  v5 = ARFloat(*(&v8 + 2));
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  return v6;
}

+ (id)arrayWithVector4:(id)a1
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9 = v2;
  v3 = ARFloat(*&v2);
  v10[0] = v3;
  v4 = ARFloat(*(&v9 + 1));
  v10[1] = v4;
  v5 = ARFloat(*(&v9 + 2));
  v10[2] = v5;
  v6 = ARFloat(*(&v9 + 3));
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  return v7;
}

+ (id)arrayWithMatrix4x4:(__n128)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v20 = ARFloat(a1.n128_f32[0]);
  v25 = v20;
  v26 = ARFloat(v21.n128_f32[1]);
  v19 = v26;
  v18 = ARFloat(v21.n128_f32[2]);
  v27 = v18;
  v21.n128_u64[0] = ARFloat(v21.n128_f32[3]);
  v28 = v21.n128_u64[0];
  v17 = ARFloat(a2.n128_f32[0]);
  v29 = v17;
  v16 = ARFloat(a2.n128_f32[1]);
  v30 = v16;
  v15 = ARFloat(a2.n128_f32[2]);
  v31 = v15;
  v4 = ARFloat(a2.n128_f32[3]);
  v32 = v4;
  v5 = ARFloat(a3.n128_f32[0]);
  v33 = v5;
  v6 = ARFloat(a3.n128_f32[1]);
  v34 = v6;
  v7 = ARFloat(a3.n128_f32[2]);
  v35 = v7;
  v8 = ARFloat(a3.n128_f32[3]);
  v36 = v8;
  v9 = ARFloat(a4.n128_f32[0]);
  v37 = v9;
  v10 = ARFloat(a4.n128_f32[1]);
  v38 = v10;
  v11 = ARFloat(a4.n128_f32[2]);
  v39 = v11;
  v12 = ARFloat(a4.n128_f32[3]);
  v40 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:16];

  return v13;
}

+ (id)arrayWithMatrix3x3:(__n128)a3
{
  v17[9] = *MEMORY[0x1E69E9840];
  v3 = ARFloat(a1.n128_f32[0]);
  v17[0] = v3;
  v4 = ARFloat(a1.n128_f32[1]);
  v17[1] = v4;
  v5 = ARFloat(a1.n128_f32[2]);
  v17[2] = v5;
  v6 = ARFloat(a2.n128_f32[0]);
  v17[3] = v6;
  v7 = ARFloat(a2.n128_f32[1]);
  v17[4] = v7;
  v8 = ARFloat(a2.n128_f32[2]);
  v17[5] = v8;
  v9 = ARFloat(a3.n128_f32[0]);
  v17[6] = v9;
  v10 = ARFloat(a3.n128_f32[1]);
  v17[7] = v10;
  v11 = ARFloat(a3.n128_f32[2]);
  v17[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:9];

  return v12;
}

+ (id)arrayOf2dPoints:(id)a1 count:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  {
    v7 = [ARQAHelper arrayWithVector2:*v5];
    [i addObject:v7];

    ++v5;
  }

  return i;
}

+ (id)arrayOf3dPoints:(id)a1 count:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  {
    v7 = [ARQAHelper arrayWithVector3:*v5];
    [i addObject:v7];

    v5 += 2;
  }

  return i;
}

+ (id)arrayOfUUIDSet:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) UUIDString];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)generateTagsForConfiguration:(id)a3 replaySensor:(id)a4 technique:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = ARDeviceString();
  [v10 setObject:v11 forKeyedSubscript:@"device"];

  v12 = [objc_opt_class() description];
  [v10 setObject:v12 forKeyedSubscript:@"configuration"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isAutoFocusEnabled")}];
  [v10 setObject:v13 forKeyedSubscript:@"isAutoFocusEnabled"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isLightEstimationEnabled")}];
  [v10 setObject:v14 forKeyedSubscript:@"isLightEstimationEnabled"];

  v15 = NSStringFromARWorldAlignment([v7 worldAlignment]);
  [v10 setObject:v15 forKeyedSubscript:@"worldAlignment"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "providesAudioData")}];
  [v10 setObject:v16 forKeyedSubscript:@"providesAudioData"];

  if ([v7 frameSemantics])
  {
    v17 = NSStringFromARFrameSemantics([v7 frameSemantics]);
    [v10 setObject:v17 forKeyedSubscript:@"frameSemantics"];
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v7 videoFormat];
  [v19 imageResolution];
  v21 = v20;
  v22 = [v7 videoFormat];
  [v22 imageResolution];
  v24 = [v18 stringWithFormat:@"%.0f, %.0f", v21, v23];
  [v10 setObject:v24 forKeyedSubscript:@"videoResolution"];

  v25 = MEMORY[0x1E696AD98];
  v26 = [v7 videoFormat];
  v27 = [v25 numberWithLong:{objc_msgSend(v26, "framesPerSecond")}];
  [v10 setObject:v27 forKeyedSubscript:@"videoFramesPerSecond"];

  if (v8)
  {
    v28 = [v8 sequenceURL];
    v29 = [v28 absoluteString];
    [v10 setObject:v29 forKeyedSubscript:@"replayURL"];

    v30 = [v8 deviceModel];
    [v10 setObject:v30 forKeyedSubscript:@"replayDeviceModel"];

    v31 = [v8 osVersion];
    [v10 setObject:v31 forKeyedSubscript:@"replayOSVersion"];

    v32 = [v8 arkitVersion];
    [v10 setObject:v32 forKeyedSubscript:@"replayARKitVersion"];

    v33 = MEMORY[0x1E696AEC0];
    [v8 imageResolution];
    v35 = v34;
    [v8 imageResolution];
    v37 = [v33 stringWithFormat:@"%.0fx%.0f", v35, v36];
    [v10 setObject:v37 forKeyedSubscript:@"replayVideoResolution"];

    v38 = MEMORY[0x1E696AEC0];
    [v8 nominalFrameRate];
    v40 = [v38 stringWithFormat:@"%.02ffps", v39];
    [v10 setObject:v40 forKeyedSubscript:@"replayNominalFramerate"];

    v41 = NSStringFromARReplayMode([v8 replayMode]);
    [v10 setObject:v41 forKeyedSubscript:@"replaySensorMode"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v7;
    v43 = NSStringFromARPlaneDetection([v42 planeDetection]);
    [v10 setObject:v43 forKeyedSubscript:@"planeDetection"];

    v44 = MEMORY[0x1E696AD98];
    v45 = [v42 initialWorldMap];
    v46 = [v44 numberWithBool:v45 != 0];
    [v10 setObject:v46 forKeyedSubscript:@"isInitialWorldMapSet"];

    v47 = MEMORY[0x1E696AD98];
    v48 = [v42 detectionImages];
    v49 = [v47 numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
    [v10 setObject:v49 forKeyedSubscript:@"numberOfDetectionImages"];

    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v42, "maximumNumberOfTrackedImages")}];
    [v10 setObject:v50 forKeyedSubscript:@"maximumNumberOfTrackedImages"];

    v51 = MEMORY[0x1E696AD98];
    v52 = [v42 detectionObjects];
    v53 = [v51 numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
    [v10 setObject:v53 forKeyedSubscript:@"numberOfDetectionObjects"];

    v54 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v42, "isMLModelEnabled")}];
    [v10 setObject:v54 forKeyedSubscript:@"isMLModelEnabled"];

    v55 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v42, "isLowQosSchedulingEnabled")}];
    [v10 setObject:v55 forKeyedSubscript:@"isLowQosSchedulingEnabled"];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v56 = v7;
    v57 = MEMORY[0x1E696AD98];
    v58 = [v56 trackingImages];
    v59 = [v57 numberWithUnsignedInteger:{objc_msgSend(v58, "count")}];
    [v10 setObject:v59 forKeyedSubscript:@"numberOfTrackingImages"];

    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v56, "maximumNumberOfTrackedImages")}];
    [v10 setObject:v55 forKeyedSubscript:@"maximumNumberOfTrackedImages"];
  }

LABEL_10:
  v60 = objc_opt_new();
  [ARQAHelper techniquesArray:v9 array:v60];
  [v10 setObject:v60 forKeyedSubscript:@"techniques"];
  v61 = objc_opt_new();
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __66__ARQAHelper_generateTagsForConfiguration_replaySensor_technique___block_invoke;
  v68[3] = &unk_1E817D950;
  v62 = v61;
  v69 = v62;
  [ARQAHelper traverseTechniques:v9 withBlock:v68];
  [v10 setObject:v62 forKeyedSubscript:@"networkVersion"];
  v63 = objc_opt_new();
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __66__ARQAHelper_generateTagsForConfiguration_replaySensor_technique___block_invoke_2;
  v66[3] = &unk_1E817D950;
  v64 = v63;
  v67 = v64;
  [ARQAHelper traverseTechniques:v9 withBlock:v66];
  [v10 setObject:v64 forKeyedSubscript:@"activeRemoteTechniqueConnections"];

  return v10;
}

void __66__ARQAHelper_generateTagsForConfiguration_replaySensor_technique___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (v5)
    {
      v6 = [v3 networkVersionString];
      if (v6)
      {
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
      }
    }
  }
}

void __66__ARQAHelper_generateTagsForConfiguration_replaySensor_technique___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "numberOfActiveConnections")}];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    }
  }
}

+ (void)traverseTechniques:(id)a3 withBlock:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v7[2](v7, v6);
  v8 = [v6 splitTechniques];

  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v6 splitTechniques];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [a1 traverseTechniques:*(*(&v21 + 1) + 8 * v12++) withBlock:v7];
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = [v6 techniques];
    v14 = [v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v14)
    {
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [a1 traverseTechniques:*(*(&v17 + 1) + 8 * v16++) withBlock:v7];
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

+ (void)techniquesArray:(id)a3 array:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v6 techniques];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [a1 techniquesArray:*(*(&v14 + 1) + 8 * v11++) array:v7];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (v13)
    {
      [v7 addObject:v13];
    }
  }
}

+ (id)headerInformationWithConfiguration:(id)a3 technique:(id)a4
{
  v5 = a3;
  v29 = a4;
  v28 = objc_opt_new();
  v6 = ARFrameworkVersions();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __59__ARQAHelper_headerInformationWithConfiguration_technique___block_invoke;
  v30[3] = &unk_1E817D978;
  v7 = v28;
  v31 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v30];
  v8 = ARDeviceString();
  [v7 setObject:v8 forKeyedSubscript:@"device"];

  v9 = AROSVersionString();
  [v7 setObject:v9 forKeyedSubscript:@"deviceOSVersion"];

  if ([v5 frameSemantics])
  {
    [v7 setObject:@"segmentation.mov" forKeyedSubscript:@"segmentationFilename"];
  }

  v10 = objc_opt_new();
  v11 = [v5 replaySensor];
  v12 = v5;
  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = [v12 templateConfiguration];
    v15 = v14;
    v13 = v12;
    if (v14)
    {
      v13 = v14;
    }
  }

  v16 = [objc_opt_class() description];
  [v7 setObject:v16 forKeyedSubscript:@"configuration"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v13;
    if ([v17 planeDetection])
    {
      v18 = [objc_opt_class() description];
      [v10 addObject:v18];
    }

    v19 = [v17 detectionImages];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [objc_opt_class() description];
      [v10 addObject:v21];
    }

    v22 = [v17 detectionObjects];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [objc_opt_class() description];
      [v10 addObject:v24];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v17 = [objc_opt_class() description];
    [v10 addObject:v17];
LABEL_17:
  }

  [v7 setObject:v10 forKeyedSubscript:@"expectedAnchors"];
  v25 = [ARQAHelper generateTagsForConfiguration:v13 replaySensor:v11 technique:v29];
  [v7 setObject:v25 forKeyedSubscript:@"tags"];

  v26 = [MEMORY[0x1E695E000] appleGlobalDomainARKitDefaults];
  [v7 setObject:v26 forKeyedSubscript:@"userDefaults"];

  return v7;
}

void __59__ARQAHelper_headerInformationWithConfiguration_technique___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 stringByAppendingString:@"Version"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)dictionaryFromPlaneExtent:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v5 = MEMORY[0x1E696AD98];
  [v3 rotationOnYAxis];
  v6 = [v5 numberWithFloat:?];
  [v4 setObject:v6 forKeyedSubscript:@"rotationOnYAxis"];

  v7 = MEMORY[0x1E696AD98];
  [v3 width];
  v8 = [v7 numberWithFloat:?];
  [v4 setObject:v8 forKeyedSubscript:@"width"];

  v9 = MEMORY[0x1E696AD98];
  [v3 height];
  v10 = [v9 numberWithFloat:?];
  [v4 setObject:v10 forKeyedSubscript:@"height"];

  return v4;
}

+ (id)dictionaryFromVertices:(id)a1 vertexCount:(SEL)a2 textureCoordinates:textureCoordinateCount:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v11 = [ARQAHelper arrayOf3dPoints:v9 count:v8];
  [v10 setObject:v11 forKeyedSubscript:@"vertices"];

  v12 = [ARQAHelper arrayOf2dPoints:v7 count:v6];
  [v10 setObject:v12 forKeyedSubscript:@"textureCoordinates"];

  return v10;
}

+ (id)dictionaryFromMeshGeometry:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v5 = MEMORY[0x1E696AD98];
  v6 = [v3 vertices];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "count")}];
  [v4 setObject:v7 forKeyedSubscript:@"vertexCount"];

  v8 = MEMORY[0x1E696AD98];
  v9 = [v3 faces];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "count")}];
  [v4 setObject:v10 forKeyedSubscript:@"faceCount"];

  v11 = MEMORY[0x1E696AD98];
  v12 = [v3 normals];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "count")}];
  [v4 setObject:v13 forKeyedSubscript:@"normalCount"];

  return v4;
}

+ (id)dictionaryFromPatchGrid:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "size")}];
  v4 = 0;
  for (i = 0; i < [v3 size]; ++i)
  {
    v6 = [v3 patches];
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:*(v6 + v4)];
    v20[0] = v7;
    LODWORD(v8) = *(v6 + v4 + 4);
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v20[1] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:*(v6 + v4 + 8)];
    v20[2] = v10;
    LODWORD(v11) = *(v6 + v4 + 12);
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v20[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v19 setObject:v13 atIndexedSubscript:i];

    v4 += 16;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "size")}];
  [v14 setObject:v15 forKeyedSubscript:@"size"];

  v16 = MEMORY[0x1E696AD98];
  [v3 pivot];
  v17 = [v16 numberWithFloat:?];
  [v14 setObject:v17 forKeyedSubscript:@"pivot"];

  [v14 setObject:v19 forKeyedSubscript:@"patches"];

  return v14;
}

+ (id)extractAnchorDataForFrame:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v90 = a3;
  v96 = objc_opt_new();
  v3 = [v90 anchors];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_96];

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
  if (v5)
  {
    v95 = *v99;
    do
    {
      v6 = 0;
      v97 = v5;
      do
      {
        if (*v99 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v98 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v9 = [objc_opt_class() description];
        [v8 setObject:v9 forKeyedSubscript:@"type"];

        [v7 transform];
        v10 = [ARQAHelper arrayWithMatrix4x4:?];
        [v8 setObject:v10 forKeyedSubscript:@"transform"];

        v11 = [v7 name];
        LOBYTE(v10) = v11 == 0;

        if ((v10 & 1) == 0)
        {
          v12 = [v7 name];
          [v8 setObject:v12 forKeyedSubscript:@"name"];
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isTracked")}];
          [v8 setObject:v13 forKeyedSubscript:@"isTracked"];
        }

        v14 = MEMORY[0x1E696AEC0];
        v15 = [v7 identifier];
        v16 = [v15 UUIDString];
        v17 = [v14 stringWithFormat:@"%@", v16, v90];
        [v8 setObject:v17 forKeyedSubscript:@"identifier"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [objc_opt_class() dictionaryFromPlaneAnchor:v7];
          [v8 addEntriesFromDictionary:v18];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v7;
          v20 = [v19 blendShapes];
          [v8 setObject:v20 forKeyedSubscript:@"blendShapes"];

          [v19 leftEyeTransform];
          v21 = [ARQAHelper arrayWithMatrix4x4:?];
          [v8 setObject:v21 forKeyedSubscript:@"leftEyeTransform"];

          [v19 rightEyeTransform];
          v22 = [ARQAHelper arrayWithMatrix4x4:?];
          [v8 setObject:v22 forKeyedSubscript:@"rightEyeTransform"];

          [v19 lookAtPoint];
          v18 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:v18 forKeyedSubscript:@"lookAtPoint"];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v7;
          v24 = [v23 referenceImage];
          v25 = [v24 name];
          [v8 setObject:v25 forKeyedSubscript:@"referenceImageName"];

          v26 = MEMORY[0x1E696AD98];
          v27 = [v23 referenceImage];
          [v27 physicalSize];
          *&v28 = v28;
          v29 = [v26 numberWithFloat:v28];
          v102[0] = v29;
          v30 = MEMORY[0x1E696AD98];
          v31 = [v23 referenceImage];
          [v31 physicalSize];
          *&v33 = v32;
          v34 = [v30 numberWithFloat:v33];
          v102[1] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
          [v8 setObject:v35 forKeyedSubscript:@"referenceImageSize"];

          v36 = MEMORY[0x1E696AD98];
          [v23 estimatedScaleFactor];
          *&v37 = v37;
          v18 = [v36 numberWithFloat:v37];
          [v8 setObject:v18 forKeyedSubscript:@"estimatedScaleFactor"];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v7;
          v39 = [v38 referenceObject];
          v40 = [v39 name];
          [v8 setObject:v40 forKeyedSubscript:@"referenceObjectName"];

          v41 = [v38 referenceObject];
          [v41 center];
          v42 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:v42 forKeyedSubscript:@"referenceObjectCenter"];

          v18 = [v38 referenceObject];
          [v18 extent];
          v93 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:? forKeyedSubscript:?];
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = v7;
          v44 = [v43 url];
          v45 = [v44 absoluteString];
          [v8 setObject:v45 forKeyedSubscript:@"url"];

          v46 = [v43 instanceID];
          [v8 setObject:v46 forKeyedSubscript:@"instanceID"];

          v47 = MEMORY[0x1E696AD98];
          [v43 radius];
          v48 = [v47 numberWithFloat:?];
          [v8 setObject:v48 forKeyedSubscript:@"radius"];

          v49 = MEMORY[0x1E696AD98];
          [v43 confidence];
          v50 = [v49 numberWithFloat:?];
          [v8 setObject:v50 forKeyedSubscript:@"confidence"];

          v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "urlDecodingState")}];
          [v8 setObject:v51 forKeyedSubscript:@"urlDecodingState"];

          v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "urlDecodingStateInternal")}];
          [v8 setObject:v18 forKeyedSubscript:@"urlDecodingStateInternal"];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = v7;
          v53 = MEMORY[0x1E695DF70];
          v54 = [v52 skeleton];
          v18 = [v53 arrayWithCapacity:{objc_msgSend(v54, "jointCount")}];

          v55 = 0;
          for (i = 0; ; ++i)
          {
            v57 = [v52 skeleton];
            v58 = [v57 jointCount] > i;

            if (!v58)
            {
              break;
            }

            v59 = [v52 skeleton];
            v60 = [v59 jointModelTransforms];
            v61 = [ARQAHelper arrayWithMatrix4x4:*(v60 + v55), *(v60 + v55 + 16), *(v60 + v55 + 32), *(v60 + v55 + 48)];
            [v18 addObject:v61];

            v55 += 64;
          }

          v64 = MEMORY[0x1E695DF70];
          v65 = [v52 referenceBody];
          v66 = [v65 skeleton];
          v93 = [v64 arrayWithCapacity:{objc_msgSend(v66, "jointCount")}];

          for (j = 0; ; ++j)
          {
            v68 = [v52 referenceBody];
            v69 = [v68 skeleton];
            v70 = [v69 jointCount] > j;

            if (!v70)
            {
              break;
            }

            v71 = [v52 referenceBody];
            v72 = [v71 skeleton];
            v73 = +[ARQAHelper arrayWithVector2:](ARQAHelper, "arrayWithVector2:", *([v72 jointLandmarks] + 8 * j));
            [v93 addObject:v73];
          }

          v74 = MEMORY[0x1E695DF70];
          v75 = [v52 skeleton];
          v76 = [v75 coreRESkeleton];
          v77 = [v76 liftedSkeletonData];
          v91 = [v74 arrayWithCapacity:{objc_msgSend(v77, "jointCount")}];

          for (k = 0; ; ++k)
          {
            v79 = [v52 skeleton];
            v80 = [v79 coreRESkeleton];
            v81 = [v80 liftedSkeletonData];
            v82 = [v81 jointCount] > k;

            if (!v82)
            {
              break;
            }

            v83 = [v52 skeleton];
            v84 = [v83 coreRESkeleton];
            v85 = [v84 liftedSkeletonData];
            v94 = *([v85 joints] + 16 * k);

            v86 = [ARQAHelper arrayWithVector3:*&v94];
            [v91 addObject:v86];
          }

          [v8 setObject:v18 forKeyedSubscript:@"jointModelTransforms"];
          [v8 setObject:v93 forKeyedSubscript:@"referenceBodyLandmarks"];
          v87 = MEMORY[0x1E696AD98];
          [v52 estimatedScaleFactor];
          v88 = [v87 numberWithDouble:?];
          [v8 setObject:v88 forKeyedSubscript:@"estimatedScaleFactor"];

          [v8 setObject:v91 forKeyedSubscript:@"liftedJoints"];
LABEL_18:

LABEL_21:
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = v7;
          v63 = [v62 geometry];
          v18 = [ARQAHelper dictionaryFromMeshGeometry:v63];

          [v8 setObject:v18 forKeyedSubscript:@"geometry"];
          [v62 extent];
          v93 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:? forKeyedSubscript:?];
          goto LABEL_18;
        }

LABEL_22:
        [v96 addObject:v8];

        ++v6;
      }

      while (v6 != v97);
      v5 = [obj countByEnumeratingWithState:&v98 objects:v103 count:16];
    }

    while (v5);
  }

  return v96;
}

uint64_t __40__ARQAHelper_extractAnchorDataForFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = MEMORY[0x1E696AD98];
    [v4 area];
    v8 = [v6 numberWithDouble:v7];
    v9 = MEMORY[0x1E696AD98];
    [v5 area];
    v11 = [v9 numberWithDouble:v10];
    v12 = [v8 compare:v11];
  }

  else
  {
    v8 = [v4 identifier];
    v11 = [v8 UUIDString];
    v13 = [v5 identifier];
    v14 = [v13 UUIDString];
    v12 = [v11 caseInsensitiveCompare:v14];
  }

  return v12;
}

+ (id)extractDetectedBodiesForFrame:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v20 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [v18 detectedBodies];
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v22 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = objc_opt_new();
        v8 = objc_opt_new();
        for (j = 0; ; ++j)
        {
          v10 = [v6 skeleton];
          v11 = [v10 jointCount] > j;

          if (!v11)
          {
            break;
          }

          v12 = [v6 skeleton];
          v13 = +[ARQAHelper arrayWithVector2:](ARQAHelper, "arrayWithVector2:", *([v12 jointLandmarks] + 8 * j));
          [v7 addObject:v13];

          v14 = MEMORY[0x1E696AD98];
          v15 = [v6 skeleton];
          v16 = [v14 numberWithBool:{objc_msgSend(v15, "isJointTracked:", j)}];
          [v8 addObject:v16];
        }

        [v23 addObject:v7];
        [v24 addObject:v8];
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  if ([v23 count])
  {
    [v20 setObject:v23 forKeyedSubscript:@"bodies"];
  }

  if ([v24 count])
  {
    [v20 setObject:v24 forKeyedSubscript:@"trackingStates"];
  }

  return v20;
}

+ (id)traceFrameData:(id)a3 withFrameIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() traceFrameData:v5 withFrameIndex:a4 writeOBJ:0];

  return v6;
}

+ (id)traceFrameData:(id)a3 withFrameIndex:(unint64_t)a4 writeOBJ:(BOOL)a5
{
  v278 = a5;
  v297[2] = *MEMORY[0x1E69E9840];
  v276 = a3;
  v275 = objc_opt_new();
  v280 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v275 setObject:v6 forKeyedSubscript:@"frame"];

  v7 = MEMORY[0x1E696AD98];
  [v276 timestamp];
  v8 = [v7 numberWithDouble:?];
  [v275 setObject:v8 forKeyedSubscript:@"timestamp"];

  v9 = [v276 camera];
  [v9 transform];
  v10 = [ARQAHelper arrayWithMatrix4x4:?];
  [v275 setObject:v10 forKeyedSubscript:@"cameraTransform"];

  [v276 referenceOriginTransform];
  v11 = [ARQAHelper arrayWithMatrix4x4:?];
  [v275 setObject:v11 forKeyedSubscript:@"referenceOriginTransform"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v276 camera];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "trackingState")}];
  [v275 setObject:v14 forKeyedSubscript:@"trackingState"];

  v15 = MEMORY[0x1E696AD98];
  v16 = [v276 camera];
  v17 = [v15 numberWithInteger:{objc_msgSend(v16, "trackingStateReason")}];
  [v275 setObject:v17 forKeyedSubscript:@"trackingStateReason"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v276, "worldMappingStatus")}];
  [v275 setObject:v18 forKeyedSubscript:@"worldMappingStatus"];

  v19 = MEMORY[0x1E696AD98];
  [v276 cameraGrainIntensity];
  v20 = [v19 numberWithFloat:?];
  [v275 setObject:v20 forKeyedSubscript:@"cameraGrainIntensity"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v276, "deviceOrientation")}];
  [v275 setObject:v21 forKeyedSubscript:@"deviceOrientation"];

  v22 = [v276 resultDatas];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
  v24 = [v22 filteredArrayUsingPredicate:v23];

  v268 = v24;
  v25 = [v24 firstObject];

  if (v25)
  {
    v26 = [v24 firstObject];
    [v26 visionCameraTransform];
    v27 = [ARQAHelper arrayWithMatrix4x4:?];
    [v275 setObject:v27 forKeyedSubscript:@"visionCameraTransform"];
  }

  v28 = [v276 worldTrackingState];
  v29 = [v28 majorRelocalization];

  if (v29)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v275 setObject:v30 forKeyedSubscript:@"majorRelocalization"];
  }

  v31 = [v276 worldTrackingState];
  v32 = [v31 minorRelocalization];

  if (v32)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v275 setObject:v33 forKeyedSubscript:@"minorRelocalization"];
  }

  v34 = [v276 worldTrackingState];
  v35 = [v34 poseGraphUpdated];

  if (v35)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v275 setObject:v36 forKeyedSubscript:@"poseGraphUpdated"];
  }

  v37 = MEMORY[0x1E696AD98];
  v38 = [v276 worldTrackingState];
  v39 = [v37 numberWithUnsignedInteger:{objc_msgSend(v38, "currentVIOMapSize")}];
  [v275 setObject:v39 forKeyedSubscript:@"currentVIOMapSize"];

  v40 = MEMORY[0x1E696AD98];
  v41 = [v276 worldTrackingState];
  v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(v41, "reinitializationAttempts")}];
  [v275 setObject:v42 forKeyedSubscript:@"reinitializationAttempts"];

  v43 = MEMORY[0x1E696AD98];
  v44 = [v276 worldTrackingState];
  v45 = [v43 numberWithInteger:{objc_msgSend(v44, "vioTrackingState")}];
  [v275 setObject:v45 forKeyedSubscript:@"vioTrackingState"];

  v46 = [v276 worldTrackingErrorData];

  if (v46)
  {
    v296[0] = @"Timestamp";
    v47 = MEMORY[0x1E696AD98];
    v48 = [v276 worldTrackingErrorData];
    [v48 timestamp];
    v49 = [v47 numberWithDouble:?];
    v296[1] = @"ErrorCode";
    v297[0] = v49;
    v50 = MEMORY[0x1E696AD98];
    v51 = [v276 worldTrackingErrorData];
    v52 = [v50 numberWithInteger:{objc_msgSend(v51, "errorCode")}];
    v297[1] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v297 forKeys:v296 count:2];
    [v275 setObject:v53 forKeyedSubscript:@"worldTrackingError"];
  }

  if ([v276 segmentationBuffer])
  {
    v54 = [v276 segmentationBuffer];
    CVPixelBufferLockBaseAddress(v54, 0);
    Width = CVPixelBufferGetWidth(v54);
    Height = CVPixelBufferGetHeight(v54);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v54);
    BaseAddress = CVPixelBufferGetBaseAddress(v54);
    if (Height)
    {
      v59 = 0;
      v60 = 0;
      do
      {
        v61 = Width;
        for (i = BaseAddress; v61; --v61)
        {
          if (!*i++)
          {
            ++v60;
          }
        }

        ++v59;
        BaseAddress += BytesPerRow;
      }

      while (v59 != Height);
      v64 = v60 * 100.0;
    }

    else
    {
      v64 = 0.0;
    }

    CVPixelBufferUnlockBaseAddress(v54, 0);
    v65 = 100.0 - v64 / (Height * Width);
    *&v65 = v65;
    v66 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
    [v275 setObject:v66 forKeyedSubscript:@"segmentationPixelsPercentage"];
  }

  v269 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
  v67 = [v276 resultDatas];
  v271 = [v67 filteredArrayUsingPredicate:v269];

  v68 = [v271 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v70 = [v271 firstObject];
    v71 = objc_opt_new();
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v72 = [v70 detectedObjects];
    v73 = [v72 countByEnumeratingWithState:&v289 objects:v295 count:16];
    if (v73)
    {
      v74 = *v290;
      do
      {
        for (j = 0; j != v73; ++j)
        {
          if (*v290 != v74)
          {
            objc_enumerationMutation(v72);
          }

          v76 = *(*(&v289 + 1) + 8 * j);
          v77 = MEMORY[0x1E696AEC0];
          [v76 boundingBox];
          v79 = v78;
          [v76 boundingBox];
          v81 = v80;
          [v76 boundingBox];
          v83 = v82;
          [v76 boundingBox];
          v85 = [v77 stringWithFormat:@"{x:%f, y:%f, width: %f, height: %f}", v79, v81, v83, v84];
          [v71 addObject:v85];
        }

        v73 = [v72 countByEnumeratingWithState:&v289 objects:v295 count:16];
      }

      while (v73);
    }

    [v275 setObject:v71 forKeyedSubscript:@"personDetectionBoundingBoxes"];
  }

  if ([v276 segmentationBuffer] && objc_msgSend(v276, "estimatedDepthData"))
  {
    [objc_opt_class() _meanDepthValueOfDepthBuffer:objc_msgSend(v276 consideringSegmentation:"estimatedDepthData") ofSegmentationBuffer:{1, objc_msgSend(v276, "segmentationBuffer")}];
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", v86];
    [v275 setObject:v87 forKeyedSubscript:@"averageDepth"];
  }

  v88 = [v276 capturedDepthData];
  v89 = v88 == 0;

  if (!v89)
  {
    v90 = objc_opt_class();
    v91 = [v276 capturedDepthData];
    v92 = v91;
    [v90 _meanDepthValueOfDepthBuffer:objc_msgSend(v91 consideringSegmentation:"depthDataMap") ofSegmentationBuffer:{0, 0}];
    v94 = v93;

    v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", v94];
    [v275 setObject:v95 forKeyedSubscript:@"averageCapturedDepth"];
  }

  v96 = [v276 featurePoints];
  v97 = [v96 count] == 0;

  if (!v97)
  {
    v98 = [v276 featurePoints];
    v99 = [v98 points];
    v100 = [v276 featurePoints];
    v101 = +[ARQAHelper arrayOf3dPoints:count:](ARQAHelper, "arrayOf3dPoints:count:", v99, [v100 count]);
    [v275 setObject:v101 forKeyedSubscript:@"featurePoints"];
  }

  v102 = [v276 location];
  v103 = v102 == 0;

  if (!v103)
  {
    v104 = [v276 location];
    v105 = [ARQAHelper dictionaryFromCLLocation:v104];
    [v275 setObject:v105 forKeyedSubscript:@"location"];
  }

  v106 = [v276 rawLocation];
  v107 = v106 == 0;

  if (!v107)
  {
    v108 = [v276 rawLocation];
    v109 = [ARQAHelper dictionaryFromRawCLLocation:v108];
    [v275 setObject:v109 forKeyedSubscript:@"rawLocation"];
  }

  v110 = MEMORY[0x1E696AD98];
  [v276 heading];
  v111 = [v110 numberWithDouble:?];
  [v275 setObject:v111 forKeyedSubscript:@"heading"];

  v112 = MEMORY[0x1E696AD98];
  [v276 rawHeading];
  v113 = [v112 numberWithDouble:?];
  [v275 setObject:v113 forKeyedSubscript:@"rawHeading"];

  v114 = MEMORY[0x1E696AD98];
  v115 = [v276 vlState];
  [v115 fusedReplayHeading];
  v116 = [v114 numberWithDouble:?];
  [v275 setObject:v116 forKeyedSubscript:@"fusedHeading"];

  v117 = MEMORY[0x1E696AD98];
  v118 = [v276 vlState];
  [v118 fusedReplayHeadingTimestamp];
  v119 = [v117 numberWithDouble:?];
  [v275 setObject:v119 forKeyedSubscript:@"fusedHeadingTimestamp"];

  v120 = MEMORY[0x1E696AD98];
  [v276 rawLocationTimestamp];
  v121 = [v120 numberWithDouble:?];
  [v275 setObject:v121 forKeyedSubscript:@"rawLocationTimestamp"];

  [v276 undulation];
  v122 = MEMORY[0x1E696AD98];
  [v276 undulation];
  v123 = [v122 numberWithDouble:?];
  [v275 setObject:v123 forKeyedSubscript:@"undulation"];

  v124 = [v276 resultDatas];
  v125 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_382];
  v126 = [v124 filteredArrayUsingPredicate:v125];
  v274 = [v126 firstObject];

  if (v274)
  {
    v127 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v274, "errorCode")}];
    [v275 setObject:v127 forKeyedSubscript:@"vlErrorCode"];

    v128 = [v274 localizationResult];
    LOBYTE(v127) = v128 == 0;

    if ((v127 & 1) == 0)
    {
      v129 = MEMORY[0x1E696AD98];
      v130 = [v274 localizationResult];
      [v130 inputTimestamp];
      v131 = [v129 numberWithDouble:?];
      [v275 setObject:v131 forKeyedSubscript:@"vlInputTimestamp"];

      v132 = [v274 localizationResult];
      v133 = v132;
      if (v132)
      {
        [v132 transform];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v134 = [ARQAHelper arrayWithMatrix4x4:ARMatrix4x4DoubleToFloat(buf)];
      [v275 setObject:v134 forKeyedSubscript:@"vlTransform"];

      v135 = [v274 location];
      v136 = [ARQAHelper dictionaryFromCLLocation:v135];
      [v275 setObject:v136 forKeyedSubscript:@"vlLocation"];

      v137 = MEMORY[0x1E696AD98];
      [v274 heading];
      v138 = [v137 numberWithDouble:?];
      [v275 setObject:v138 forKeyedSubscript:@"vlHeading"];
    }

    v139 = [v274 debugInfo];
    v140 = [v139 inputParameters];
    [v275 setObject:v140 forKeyedSubscript:@"vlDebugInputParameters"];

    v141 = [v274 debugInfo];
    v142 = [v141 results];
    [v275 setObject:v142 forKeyedSubscript:@"vlDebugResults"];

    v143 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v274, "algorithmVersion")}];
    [v275 setObject:v143 forKeyedSubscript:@"vlAlgorithmVersion"];
  }

  v144 = [v276 geoTrackingStatus];
  v145 = v144 == 0;

  if (!v145)
  {
    v146 = [v276 geoTrackingStatus];
    v147 = NSStringFromARGeoTrackingState([v146 state]);
    [v275 setObject:v147 forKeyedSubscript:@"geoTrackingStatus.state"];

    v148 = [v276 geoTrackingStatus];
    v149 = NSStringFromARGeoTrackingAccuracy([v148 accuracy]);
    [v275 setObject:v149 forKeyedSubscript:@"geoTrackingStatus.accuracy"];

    v150 = [v276 geoTrackingStatus];
    v151 = NSStringFromARGeoTrackingStateReason([v150 stateReason]);
    [v275 setObject:v151 forKeyedSubscript:@"geoTrackingStatus.stateReason"];

    v152 = MEMORY[0x1E696AD98];
    v153 = [v276 geoTrackingStatus];
    v154 = [v152 numberWithInteger:{objc_msgSend(v153, "failureReasons")}];
    [v275 setObject:v154 forKeyedSubscript:@"geoTrackingStatus.failureReasons"];
  }

  v267 = [ARQAHelper extractAnchorDataForFrame:v276];
  if ([v267 count])
  {
    [v275 setObject:v267 forKeyedSubscript:@"anchors"];
  }

  v270 = [ARQAHelper extractDetectedBodiesForFrame:v276];
  if ([v270 count])
  {
    v155 = [v270 objectForKeyedSubscript:@"bodies"];
    [v275 setObject:v155 forKeyedSubscript:@"detectedBodies"];

    v156 = [v270 objectForKeyedSubscript:@"trackingStates"];
    [v275 setObject:v156 forKeyedSubscript:@"detectedBodiesTrackingStates"];
  }

  v157 = [v276 currentlyActiveVideoFormat];
  v158 = v157 == 0;

  if (!v158)
  {
    v159 = [v276 currentlyActiveVideoFormat];
    v160 = [v159 captureDeviceType];
    [v275 setObject:v160 forKeyedSubscript:@"currentlyActiveCameraForVIO"];
  }

  if (v278)
  {
    v161 = [v276 anchors];
    v162 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
    v163 = [v161 filteredArrayUsingPredicate:v162];

    if ([v163 count])
    {
      v288 = 0;
      v164 = ARCreateOBJStringForMeshAnchors(v163, &v288, 1.0);
      v165 = v288;
      if (v165)
      {
        v166 = v165;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
        }

        v167 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v168 = _ARLogGeneral();
        v169 = v168;
        if (v167 == 1)
        {
          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
          {
            v170 = objc_opt_class();
            v171 = NSStringFromClass(v170);
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v171;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = a1;
            HIWORD(buf[1].f64[0]) = 2112;
            *&buf[1].f64[1] = v166;
            _os_log_impl(&dword_1C241C000, v169, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create obj for mesh anchors due to error: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v168, OS_LOG_TYPE_INFO))
        {
          v179 = objc_opt_class();
          v180 = NSStringFromClass(v179);
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v180;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = a1;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v166;
          _os_log_impl(&dword_1C241C000, v169, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create obj for mesh anchors due to error: %@", buf, 0x20u);
        }
      }

      else
      {
        v172 = +[ARQATracer traceOutputDirectory];
        v173 = [MEMORY[0x1E696AEC0] stringWithFormat:@"meshAnchors_%lu.obj", v280];
        v169 = [v172 stringByAppendingPathComponent:v173];

        v287 = 0;
        [v164 writeToFile:v169 atomically:1 encoding:4 error:&v287];
        v166 = v287;
        if (v166)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
          }

          v174 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v175 = _ARLogGeneral();
          v176 = v175;
          if (v174 == 1)
          {
            if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
            {
              v177 = objc_opt_class();
              v178 = NSStringFromClass(v177);
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v178;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = a1;
              HIWORD(buf[1].f64[0]) = 2112;
              *&buf[1].f64[1] = v166;
              _os_log_impl(&dword_1C241C000, v176, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not save obj for mesh anchors due to error: %@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
          {
            v181 = objc_opt_class();
            v182 = NSStringFromClass(v181);
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v182;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = a1;
            HIWORD(buf[1].f64[0]) = 2112;
            *&buf[1].f64[1] = v166;
            _os_log_impl(&dword_1C241C000, v176, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save obj for mesh anchors due to error: %@", buf, 0x20u);
          }

          [v275 setObject:v166 forKeyedSubscript:@"meshAnchorsObjFileError"];
        }

        else
        {
          [v275 setObject:v169 forKeyedSubscript:@"meshAnchorsObjFile"];
        }
      }
    }

    v183 = [v276 anchors];
    v184 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
    v185 = [v183 filteredArrayUsingPredicate:v184];

    if ([v185 count])
    {
      v286 = 0;
      v186 = ARCreateOBJStringForPlaneAnchors(v185, &v286, 1.0);
      v187 = v286;
      if (v187)
      {
        v188 = v187;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
        }

        v189 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v190 = _ARLogGeneral();
        v191 = v190;
        if (v189 == 1)
        {
          if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
          {
            v192 = objc_opt_class();
            v193 = NSStringFromClass(v192);
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v193;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = a1;
            HIWORD(buf[1].f64[0]) = 2112;
            *&buf[1].f64[1] = v188;
            _os_log_impl(&dword_1C241C000, v191, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create obj for mesh anchors due to error: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
        {
          v201 = objc_opt_class();
          v202 = NSStringFromClass(v201);
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v202;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = a1;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v188;
          _os_log_impl(&dword_1C241C000, v191, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create obj for mesh anchors due to error: %@", buf, 0x20u);
        }
      }

      else
      {
        v194 = +[ARQATracer traceOutputDirectory];
        v195 = [MEMORY[0x1E696AEC0] stringWithFormat:@"planeAnchors_%lu.obj", v280];
        v191 = [v194 stringByAppendingPathComponent:v195];

        v285 = 0;
        [v186 writeToFile:v191 atomically:1 encoding:4 error:&v285];
        v188 = v285;
        if (v188)
        {
          if (ARShouldUseLogTypeError(void)::onceToken != -1)
          {
            +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
          }

          v196 = ARShouldUseLogTypeError(void)::internalOSVersion;
          v197 = _ARLogGeneral();
          v198 = v197;
          if (v196 == 1)
          {
            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              v199 = objc_opt_class();
              v200 = NSStringFromClass(v199);
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v200;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = a1;
              HIWORD(buf[1].f64[0]) = 2112;
              *&buf[1].f64[1] = v188;
              _os_log_impl(&dword_1C241C000, v198, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not save obj for mesh anchors due to error: %@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
          {
            v203 = objc_opt_class();
            v204 = NSStringFromClass(v203);
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v204;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = a1;
            HIWORD(buf[1].f64[0]) = 2112;
            *&buf[1].f64[1] = v188;
            _os_log_impl(&dword_1C241C000, v198, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save obj for mesh anchors due to error: %@", buf, 0x20u);
          }

          [v275 setObject:v188 forKeyedSubscript:@"planeAnchorsObjFileError"];
        }

        else
        {
          [v275 setObject:v191 forKeyedSubscript:@"planeAnchorsObjFile"];
        }
      }
    }
  }

  v205 = [v276 resultDatas];
  v206 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_453];
  v207 = [v205 filteredArrayUsingPredicate:v206];
  v272 = [v207 firstObject];

  v208 = [v272 resultDataOfClass:objc_opt_class()];
  v273 = [v208 firstObject];

  v209 = [v272 resultDataOfClass:objc_opt_class()];
  v279 = [v209 firstObject];

  v210 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.qatracing.dumpSemanticSegmantationData"];
  if (v273)
  {
    v211 = v210;
  }

  else
  {
    v211 = 0;
  }

  if (v211 && [v273 source] == 2)
  {
    v212 = [v273 sourceImageData];
    v213 = [v212 isBackUltraWide];

    if (v213)
    {
      v214 = +[ARQATracer traceOutputDirectory];
      v215 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ultraWideImage_%lu.png", v280];
      v216 = [v214 stringByAppendingPathComponent:v215];

      v217 = [v273 sourceImageData];
      v218 = ARSavePixelBufferPNG([v217 pixelBuffer], v216) == 0;

      if (!v218)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
        }

        v219 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v220 = _ARLogGeneral();
        v221 = v220;
        if (v219 == 1)
        {
          if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
          {
            v222 = objc_opt_class();
            v223 = NSStringFromClass(v222);
            LODWORD(buf[0].f64[0]) = 138543618;
            *(buf[0].f64 + 4) = v223;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = a1;
            _os_log_impl(&dword_1C241C000, v221, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not save ultrawide image to file", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
        {
          v224 = objc_opt_class();
          v225 = NSStringFromClass(v224);
          LODWORD(buf[0].f64[0]) = 138543618;
          *(buf[0].f64 + 4) = v225;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = a1;
          _os_log_impl(&dword_1C241C000, v221, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save ultrawide image to file", buf, 0x16u);
        }
      }

      [v275 setObject:v216 forKeyedSubscript:@"semanticSegmentationUndistoredUltraWideImage"];
    }

    if (v279)
    {
      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      v226 = [v279 downScalingResults];
      v227 = [v226 countByEnumeratingWithState:&v281 objects:v293 count:16];
      if (v227)
      {
        v228 = *v282;
        do
        {
          v229 = 0;
          do
          {
            if (*v282 != v228)
            {
              objc_enumerationMutation(v226);
            }

            v230 = *(*(&v281 + 1) + 8 * v229);
            if ([v230 pixelBuffer])
            {
              v231 = MEMORY[0x1E696AEC0];
              [v230 imageResolution];
              v233 = v232;
              [v230 imageResolution];
              v235 = [v231 stringWithFormat:@"mlImage%dx%d_%lu.png", v233, v234, v280];
              v236 = +[ARQATracer traceOutputDirectory];
              v237 = [v236 stringByAppendingPathComponent:v235];

              if (ARSavePixelBufferPNG([v230 pixelBuffer], v237))
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
                }

                v238 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v239 = _ARLogGeneral();
                v240 = v239;
                if (v238 == 1)
                {
                  if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
                  {
                    v241 = objc_opt_class();
                    v242 = NSStringFromClass(v241);
                    LODWORD(buf[0].f64[0]) = 138543618;
                    *(buf[0].f64 + 4) = v242;
                    WORD2(buf[0].f64[1]) = 2048;
                    *(&buf[0].f64[1] + 6) = a1;
                    _os_log_impl(&dword_1C241C000, v240, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not save ml image to file", buf, 0x16u);
                  }
                }

                else if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
                {
                  v243 = objc_opt_class();
                  v244 = NSStringFromClass(v243);
                  LODWORD(buf[0].f64[0]) = 138543618;
                  *(buf[0].f64 + 4) = v244;
                  WORD2(buf[0].f64[1]) = 2048;
                  *(&buf[0].f64[1] + 6) = a1;
                  _os_log_impl(&dword_1C241C000, v240, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save ml image to file", buf, 0x16u);
                }
              }
            }

            v245 = [v279 latestResizedUltraWideImageData];
            v246 = [v245 downScalingResults];
            v247 = [v246 firstObject];

            if ([v247 undistortedPixelBuffer])
            {
              v248 = MEMORY[0x1E696AEC0];
              v249 = CVPixelBufferGetWidth([v247 undistortedPixelBuffer]);
              v250 = [v248 stringWithFormat:@"undistortedPixelBuffer%dx%d_%lu.png", v249, CVPixelBufferGetHeight(objc_msgSend(v247, "undistortedPixelBuffer")), v280];
              v251 = +[ARQATracer traceOutputDirectory];
              v252 = [v251 stringByAppendingPathComponent:v250];

              if (ARSavePixelBufferPNG([v247 undistortedPixelBuffer], v252))
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  +[ARQAHelper traceFrameData:withFrameIndex:writeOBJ:];
                }

                v253 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v254 = _ARLogGeneral();
                v255 = v254;
                if (v253 == 1)
                {
                  if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
                  {
                    v256 = objc_opt_class();
                    v257 = NSStringFromClass(v256);
                    LODWORD(buf[0].f64[0]) = 138543618;
                    *(buf[0].f64 + 4) = v257;
                    WORD2(buf[0].f64[1]) = 2048;
                    *(&buf[0].f64[1] + 6) = a1;
                    _os_log_impl(&dword_1C241C000, v255, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not save undistored image to file", buf, 0x16u);
                  }
                }

                else if (os_log_type_enabled(v254, OS_LOG_TYPE_INFO))
                {
                  v258 = objc_opt_class();
                  v259 = NSStringFromClass(v258);
                  LODWORD(buf[0].f64[0]) = 138543618;
                  *(buf[0].f64 + 4) = v259;
                  WORD2(buf[0].f64[1]) = 2048;
                  *(&buf[0].f64[1] + 6) = a1;
                  _os_log_impl(&dword_1C241C000, v255, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save undistored image to file", buf, 0x16u);
                }
              }
            }

            ++v229;
          }

          while (v227 != v229);
          v227 = [v226 countByEnumeratingWithState:&v281 objects:v293 count:16];
        }

        while (v227);
      }
    }

    CVPixelBufferLockBaseAddress([v273 segmentationBuffer], 0);
    v260 = +[ARQATracer traceOutputDirectory];
    v261 = [MEMORY[0x1E696AEC0] stringWithFormat:@"semanticSegmentation_%lu.png", v280];
    v262 = [v260 stringByAppendingPathComponent:v261];

    LODWORD(v260) = CVPixelBufferGetWidth([v273 segmentationBuffer]);
    LODWORD(v261) = CVPixelBufferGetHeight([v273 segmentationBuffer]);
    v263 = CVPixelBufferGetBytesPerRow([v273 segmentationBuffer]);
    v264 = CVPixelBufferGetBaseAddress([v273 segmentationBuffer]);
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = v260 | (v261 << 32);
    *&buf[1].f64[0] = (v263 << 32) | 1;
    *&buf[1].f64[1] = v264;
    v265 = v262;
    [v262 UTF8String];
    cva::imwrite<unsigned char>();
    [v275 setObject:v262 forKeyedSubscript:@"semanticSegmentationLabelsFile"];
    CVPixelBufferUnlockBaseAddress([v273 segmentationBuffer], 0);
  }

  return v275;
}

uint64_t __53__ARQAHelper_traceFrameData_withFrameIndex_writeOBJ___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __53__ARQAHelper_traceFrameData_withFrameIndex_writeOBJ___block_invoke_451(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)dictionaryFromCLLocation:(id)a3
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17[0] = @"latitude";
  v4 = MEMORY[0x1E696AD98];
  [v3 coordinate];
  v5 = [v4 numberWithDouble:?];
  v18[0] = v5;
  v17[1] = @"longitude";
  v6 = MEMORY[0x1E696AD98];
  [v3 coordinate];
  v8 = [v6 numberWithDouble:v7];
  v18[1] = v8;
  v17[2] = @"altitude";
  v9 = MEMORY[0x1E696AD98];
  [v3 altitude];
  v10 = [v9 numberWithDouble:?];
  v18[2] = v10;
  v17[3] = @"horizontalAccuracy";
  v11 = MEMORY[0x1E696AD98];
  [v3 horizontalAccuracy];
  v12 = [v11 numberWithDouble:?];
  v18[3] = v12;
  v17[4] = @"verticalAccuracy";
  v13 = MEMORY[0x1E696AD98];
  [v3 verticalAccuracy];
  v14 = [v13 numberWithDouble:?];
  v18[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v15;
}

+ (id)dictionaryFromRawCLLocation:(id)a3
{
  v53[20] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 _groundAltitude];
  v5 = v4;
  v51 = v4;
  if (!v4 || [v4 undulationModel] == -1)
  {
    v7 = 0;
  }

  else
  {
    [v5 uncertainty];
    [v5 uncertainty];
    v7 = v6 > 0.0;
  }

  if ([v3 isAltitudeWgs84Available])
  {
    [v3 altitudeWgs84];
    v9 = v8;
    [v3 altitude];
    v11 = v9 - v10;
  }

  else
  {
    v11 = NAN;
  }

  v52[0] = @"latitude";
  v12 = MEMORY[0x1E696AD98];
  [v3 coordinate];
  v50 = [v12 numberWithDouble:?];
  v53[0] = v50;
  v52[1] = @"longitude";
  v13 = MEMORY[0x1E696AD98];
  [v3 coordinate];
  v49 = [v13 numberWithDouble:v14];
  v53[1] = v49;
  v52[2] = @"altitude";
  v15 = MEMORY[0x1E696AD98];
  [v3 altitude];
  v48 = [v15 numberWithDouble:?];
  v53[2] = v48;
  v52[3] = @"course";
  v16 = MEMORY[0x1E696AD98];
  [v3 course];
  v47 = [v16 numberWithDouble:?];
  v53[3] = v47;
  v52[4] = @"horizontalAccuracy";
  v17 = MEMORY[0x1E696AD98];
  [v3 horizontalAccuracy];
  v46 = [v17 numberWithDouble:?];
  v53[4] = v46;
  v52[5] = @"verticalAccuracy";
  v18 = MEMORY[0x1E696AD98];
  [v3 verticalAccuracy];
  v45 = [v18 numberWithDouble:?];
  v53[5] = v45;
  v52[6] = @"courseAccuracy";
  v19 = MEMORY[0x1E696AD98];
  [v3 courseAccuracy];
  v44 = [v19 numberWithDouble:?];
  v53[6] = v44;
  v52[7] = @"rawLatitude";
  v20 = MEMORY[0x1E696AD98];
  [v3 rawCoordinate];
  v43 = [v20 numberWithDouble:?];
  v53[7] = v43;
  v52[8] = @"rawLongitude";
  v21 = MEMORY[0x1E696AD98];
  [v3 rawCoordinate];
  v42 = [v21 numberWithDouble:v22];
  v53[8] = v42;
  v52[9] = @"rawAltitude";
  v23 = MEMORY[0x1E696AD98];
  [v3 rawAltitude];
  v41 = [v23 numberWithDouble:?];
  v53[9] = v41;
  v52[10] = @"rawCourse";
  v24 = MEMORY[0x1E696AD98];
  [v3 rawCourse];
  v40 = [v24 numberWithDouble:?];
  v53[10] = v40;
  v52[11] = @"rawHorizontalAccuracy";
  v25 = MEMORY[0x1E696AD98];
  [v3 rawHorizontalAccuracy];
  v39 = [v25 numberWithDouble:?];
  v53[11] = v39;
  v52[12] = @"rawVerticalAccuracy";
  v26 = MEMORY[0x1E696AD98];
  [v3 rawVerticalAccuracy];
  v27 = [v26 numberWithDouble:?];
  v53[12] = v27;
  v52[13] = @"rawCourseAccuracy";
  v28 = MEMORY[0x1E696AD98];
  [v3 rawCourseAccuracy];
  v29 = [v28 numberWithDouble:?];
  v53[13] = v29;
  v52[14] = @"undulation";
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v53[14] = v30;
  v52[15] = @"isGroundAltitudeValid";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v53[15] = v31;
  v52[16] = @"isAltitudeWgs84Available";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isAltitudeWgs84Available")}];
  v53[16] = v32;
  v52[17] = @"isCoordinateFused";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isCoordinateFused")}];
  v53[17] = v33;
  v52[18] = @"isCoordinateFusedWithVL";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isCoordinateFusedWithVL")}];
  v53[18] = v34;
  v52[19] = @"ellipsoidalAltitude";
  [v3 ellipsoidalAltitude];
  v35 = MEMORY[0x1E696AD98];
  [v3 ellipsoidalAltitude];
  v36 = [v35 numberWithDouble:?];
  v53[19] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:20];

  return v37;
}

+ (id)dictionaryFromRaycastQuery:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10[0] = @"origin";
  [v4 origin];
  v5 = [a1 arrayWithVector3:?];
  v11[0] = v5;
  v10[1] = @"direction";
  [v4 direction];
  v6 = [a1 arrayWithVector3:?];
  v11[1] = v6;
  v10[2] = @"description";
  v7 = [v4 description];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)arrayFromRaycastResults:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v13;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:{16, v13}];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v19[0] = @"transform";
        [v8 worldTransform];
        v9 = [a1 arrayWithMatrix4x4:?];
        v19[1] = @"description";
        v20[0] = v9;
        v10 = [v8 description];
        v20[1] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

        [v4 addObject:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (float)_meanDepthValueOfDepthBuffer:(__CVBuffer *)a3 consideringSegmentation:(BOOL)a4 ofSegmentationBuffer:(__CVBuffer *)a5
{
  if (!a3)
  {
    return NAN;
  }

  v6 = a4;
  if (!a5 && a4)
  {
    return NAN;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (v6)
  {
    v12 = CVPixelBufferGetBytesPerRow(a5);
    v13 = CVPixelBufferGetWidth(a5);
    v14 = CVPixelBufferGetHeight(a5);
    result = NAN;
    if (Width != v13 || Height != v14)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  CVPixelBufferLockBaseAddress(a3, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v16 = 0;
  if (v6)
  {
    CVPixelBufferLockBaseAddress(a5, 0);
    v16 = CVPixelBufferGetBaseAddress(a5);
  }

  if (Height)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    do
    {
      v20 = Width;
      v21 = v16;
      for (i = BaseAddress; v20; --v20)
      {
        if (!v6 || *v21)
        {
          v19 = v19 + *i;
          ++v18;
        }

        ++i;
        ++v21;
      }

      ++v17;
      BaseAddress = (BaseAddress + BytesPerRow);
      v16 += v12;
    }

    while (v17 != Height);
    v23 = v18;
  }

  else
  {
    v19 = 0.0;
    v23 = 0.0;
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  if (a5)
  {
    CVPixelBufferUnlockBaseAddress(a5, 0);
  }

  return v19 / v23;
}

+ (id)formatDescriptionForAnchor
{
  v2 = objc_opt_new();
  [v2 setObject:@"Anchor identifier" forKeyedSubscript:@"identifier"];
  [v2 setObject:@"Anchor transformation" forKeyedSubscript:@"transform"];

  return v2;
}

+ (id)dictionaryFromAnchor:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 identifier];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"identifier"];

  [v3 transform];
  v7 = [ARQAHelper arrayWithMatrix4x4:?];
  [v4 setObject:v7 forKeyedSubscript:@"transform"];

  return v4;
}

+ (id)formatDescriptionForPlaneAnchor
{
  v2 = [a1 formatDescriptionForAnchor];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"Alignment. horizontal or vertical" forKeyedSubscript:@"alignment"];
  [v3 setObject:@"Center of plane" forKeyedSubscript:@"center"];
  [v3 setObject:@"Plane's extent" forKeyedSubscript:@"extent"];
  [v3 setObject:@"The plane's geometry" forKeyedSubscript:@"geometry"];
  [v3 setObject:@"The plane's area" forKeyedSubscript:@"area"];
  [v3 setObject:@"The plane's classification" forKeyedSubscript:@"planeClassification"];
  [v3 setObject:@"Classification status" forKeyedSubscript:@"planeClassificationStatus"];
  [v3 setObject:@"Classification label" forKeyedSubscript:@"classificationLabel"];
  [v3 setObject:@"Extend of plane's grid" forKeyedSubscript:@"gridExtent"];

  return v3;
}

+ (id)dictionaryFromPlaneAnchor:(id)a3
{
  v4 = a3;
  v5 = [a1 dictionaryFromAnchor:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "alignment")}];
  [v6 setObject:v7 forKeyedSubscript:@"alignment"];

  [v4 center];
  v8 = [ARQAHelper arrayWithVector3:?];
  [v6 setObject:v8 forKeyedSubscript:@"center"];

  [v4 extent];
  v9 = [ARQAHelper arrayWithVector3:?];
  [v6 setObject:v9 forKeyedSubscript:@"extent"];

  v10 = [v4 planeExtent];
  v11 = [ARQAHelper dictionaryFromPlaneExtent:v10];
  [v6 setObject:v11 forKeyedSubscript:@"planeExtent"];

  v12 = [v4 geometry];
  v13 = [v12 vertices];
  v14 = [v4 geometry];
  v15 = [v14 vertexCount];
  v16 = [v4 geometry];
  v17 = [v16 textureCoordinates];
  v18 = [v4 geometry];
  v19 = +[ARQAHelper dictionaryFromVertices:vertexCount:textureCoordinates:textureCoordinateCount:](ARQAHelper, "dictionaryFromVertices:vertexCount:textureCoordinates:textureCoordinateCount:", v13, v15, v17, [v18 textureCoordinateCount]);

  v20 = MEMORY[0x1E696AD98];
  [v4 area];
  v21 = [v20 numberWithFloat:?];
  [v6 setObject:v21 forKeyedSubscript:@"area"];

  v22 = NSStringFromARPlaneClassification([v4 classification]);
  [v6 setObject:v22 forKeyedSubscript:@"planeClassification"];

  v23 = [v4 gridExtent];

  if (v23)
  {
    v24 = [v4 gridExtent];
    v25 = [ARQAHelper dictionaryFromPatchGrid:v24];
    [v6 setObject:v25 forKeyedSubscript:@"gridExtent"];
  }

  v26 = NSStringFromARPlaneClassificationStatus([v4 classificationStatus]);
  [v6 setObject:v26 forKeyedSubscript:@"planeClassificationStatus"];

  v27 = [v4 classificationLabel];
  [v6 setObject:v27 forKeyedSubscript:@"classificationLabel"];

  [v6 setObject:v19 forKeyedSubscript:@"geometry"];

  return v6;
}

+ (id)dictionaryFromMeshAnchor:(id)a3
{
  v4 = a3;
  v5 = [a1 dictionaryFromAnchor:v4];
  v6 = [v5 mutableCopy];

  v7 = [v4 geometry];
  v8 = [ARQAHelper dictionaryFromMeshGeometry:v7];

  [v6 setObject:v8 forKeyedSubscript:@"geometry"];

  return v6;
}

@end