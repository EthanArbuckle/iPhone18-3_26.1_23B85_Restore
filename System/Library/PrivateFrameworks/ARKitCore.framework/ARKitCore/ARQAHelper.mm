@interface ARQAHelper
+ (float)_meanDepthValueOfDepthBuffer:(__CVBuffer *)buffer consideringSegmentation:(BOOL)segmentation ofSegmentationBuffer:(__CVBuffer *)segmentationBuffer;
+ (id)arrayFromRaycastResults:(id)results;
+ (id)arrayOf2dPoints:(id)points count:(SEL)count;
+ (id)arrayOf3dPoints:(id)points count:(SEL)count;
+ (id)arrayOfUUIDSet:(id)set;
+ (id)arrayWithMatrix3x3:(__n128)matrix3x3;
+ (id)arrayWithMatrix4x4:(__n128)matrix4x4;
+ (id)arrayWithVector2:(id)vector2;
+ (id)arrayWithVector3:(id)vector3;
+ (id)arrayWithVector4:(id)vector4;
+ (id)dictionaryFromAnchor:(id)anchor;
+ (id)dictionaryFromCLLocation:(id)location;
+ (id)dictionaryFromMeshAnchor:(id)anchor;
+ (id)dictionaryFromMeshGeometry:(id)geometry;
+ (id)dictionaryFromPatchGrid:(id)grid;
+ (id)dictionaryFromPlaneAnchor:(id)anchor;
+ (id)dictionaryFromPlaneExtent:(id)extent;
+ (id)dictionaryFromRawCLLocation:(id)location;
+ (id)dictionaryFromRaycastQuery:(id)query;
+ (id)dictionaryFromVertices:(id)vertices vertexCount:(SEL)count textureCoordinates:textureCoordinateCount:;
+ (id)extractAnchorDataForFrame:(id)frame;
+ (id)extractDetectedBodiesForFrame:(id)frame;
+ (id)formatDescriptionForAnchor;
+ (id)formatDescriptionForPlaneAnchor;
+ (id)generateTagsForConfiguration:(id)configuration replaySensor:(id)sensor technique:(id)technique;
+ (id)headerInformationWithConfiguration:(id)configuration technique:(id)technique;
+ (id)traceFrameData:(id)data withFrameIndex:(unint64_t)index;
+ (id)traceFrameData:(id)data withFrameIndex:(unint64_t)index writeOBJ:(BOOL)j;
+ (void)techniquesArray:(id)array array:(id)a4;
+ (void)traverseTechniques:(id)techniques withBlock:(id)block;
@end

@implementation ARQAHelper

+ (id)arrayWithVector2:(id)vector2
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

+ (id)arrayWithVector3:(id)vector3
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

+ (id)arrayWithVector4:(id)vector4
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

+ (id)arrayWithMatrix4x4:(__n128)matrix4x4
{
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = ARFloat(self.n128_f32[0]);
  v25 = v20;
  v26 = ARFloat(selfCopy.n128_f32[1]);
  v19 = v26;
  v18 = ARFloat(selfCopy.n128_f32[2]);
  v27 = v18;
  selfCopy.n128_u64[0] = ARFloat(selfCopy.n128_f32[3]);
  v28 = selfCopy.n128_u64[0];
  v17 = ARFloat(a2.n128_f32[0]);
  v29 = v17;
  v16 = ARFloat(a2.n128_f32[1]);
  v30 = v16;
  v15 = ARFloat(a2.n128_f32[2]);
  v31 = v15;
  v4 = ARFloat(a2.n128_f32[3]);
  v32 = v4;
  v5 = ARFloat(matrix4x4.n128_f32[0]);
  v33 = v5;
  v6 = ARFloat(matrix4x4.n128_f32[1]);
  v34 = v6;
  v7 = ARFloat(matrix4x4.n128_f32[2]);
  v35 = v7;
  v8 = ARFloat(matrix4x4.n128_f32[3]);
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

+ (id)arrayWithMatrix3x3:(__n128)matrix3x3
{
  v17[9] = *MEMORY[0x1E69E9840];
  v3 = ARFloat(self.n128_f32[0]);
  v17[0] = v3;
  v4 = ARFloat(self.n128_f32[1]);
  v17[1] = v4;
  v5 = ARFloat(self.n128_f32[2]);
  v17[2] = v5;
  v6 = ARFloat(a2.n128_f32[0]);
  v17[3] = v6;
  v7 = ARFloat(a2.n128_f32[1]);
  v17[4] = v7;
  v8 = ARFloat(a2.n128_f32[2]);
  v17[5] = v8;
  v9 = ARFloat(matrix3x3.n128_f32[0]);
  v17[6] = v9;
  v10 = ARFloat(matrix3x3.n128_f32[1]);
  v17[7] = v10;
  v11 = ARFloat(matrix3x3.n128_f32[2]);
  v17[8] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:9];

  return v12;
}

+ (id)arrayOf2dPoints:(id)points count:(SEL)count
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

+ (id)arrayOf3dPoints:(id)points count:(SEL)count
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

+ (id)arrayOfUUIDSet:(id)set
{
  v16 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(setCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = setCopy;
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

        uUIDString = [*(*(&v11 + 1) + 8 * i) UUIDString];
        [v4 addObject:uUIDString];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)generateTagsForConfiguration:(id)configuration replaySensor:(id)sensor technique:(id)technique
{
  configurationCopy = configuration;
  sensorCopy = sensor;
  techniqueCopy = technique;
  v10 = objc_opt_new();
  v11 = ARDeviceString();
  [v10 setObject:v11 forKeyedSubscript:@"device"];

  v12 = [objc_opt_class() description];
  [v10 setObject:v12 forKeyedSubscript:@"configuration"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "isAutoFocusEnabled")}];
  [v10 setObject:v13 forKeyedSubscript:@"isAutoFocusEnabled"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "isLightEstimationEnabled")}];
  [v10 setObject:v14 forKeyedSubscript:@"isLightEstimationEnabled"];

  v15 = NSStringFromARWorldAlignment([configurationCopy worldAlignment]);
  [v10 setObject:v15 forKeyedSubscript:@"worldAlignment"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(configurationCopy, "providesAudioData")}];
  [v10 setObject:v16 forKeyedSubscript:@"providesAudioData"];

  if ([configurationCopy frameSemantics])
  {
    v17 = NSStringFromARFrameSemantics([configurationCopy frameSemantics]);
    [v10 setObject:v17 forKeyedSubscript:@"frameSemantics"];
  }

  v18 = MEMORY[0x1E696AEC0];
  videoFormat = [configurationCopy videoFormat];
  [videoFormat imageResolution];
  v21 = v20;
  videoFormat2 = [configurationCopy videoFormat];
  [videoFormat2 imageResolution];
  v24 = [v18 stringWithFormat:@"%.0f, %.0f", v21, v23];
  [v10 setObject:v24 forKeyedSubscript:@"videoResolution"];

  v25 = MEMORY[0x1E696AD98];
  videoFormat3 = [configurationCopy videoFormat];
  v27 = [v25 numberWithLong:{objc_msgSend(videoFormat3, "framesPerSecond")}];
  [v10 setObject:v27 forKeyedSubscript:@"videoFramesPerSecond"];

  if (sensorCopy)
  {
    sequenceURL = [sensorCopy sequenceURL];
    absoluteString = [sequenceURL absoluteString];
    [v10 setObject:absoluteString forKeyedSubscript:@"replayURL"];

    deviceModel = [sensorCopy deviceModel];
    [v10 setObject:deviceModel forKeyedSubscript:@"replayDeviceModel"];

    osVersion = [sensorCopy osVersion];
    [v10 setObject:osVersion forKeyedSubscript:@"replayOSVersion"];

    arkitVersion = [sensorCopy arkitVersion];
    [v10 setObject:arkitVersion forKeyedSubscript:@"replayARKitVersion"];

    v33 = MEMORY[0x1E696AEC0];
    [sensorCopy imageResolution];
    v35 = v34;
    [sensorCopy imageResolution];
    v37 = [v33 stringWithFormat:@"%.0fx%.0f", v35, v36];
    [v10 setObject:v37 forKeyedSubscript:@"replayVideoResolution"];

    v38 = MEMORY[0x1E696AEC0];
    [sensorCopy nominalFrameRate];
    v40 = [v38 stringWithFormat:@"%.02ffps", v39];
    [v10 setObject:v40 forKeyedSubscript:@"replayNominalFramerate"];

    v41 = NSStringFromARReplayMode([sensorCopy replayMode]);
    [v10 setObject:v41 forKeyedSubscript:@"replaySensorMode"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = configurationCopy;
    v43 = NSStringFromARPlaneDetection([v42 planeDetection]);
    [v10 setObject:v43 forKeyedSubscript:@"planeDetection"];

    v44 = MEMORY[0x1E696AD98];
    initialWorldMap = [v42 initialWorldMap];
    v46 = [v44 numberWithBool:initialWorldMap != 0];
    [v10 setObject:v46 forKeyedSubscript:@"isInitialWorldMapSet"];

    v47 = MEMORY[0x1E696AD98];
    detectionImages = [v42 detectionImages];
    v49 = [v47 numberWithUnsignedInteger:{objc_msgSend(detectionImages, "count")}];
    [v10 setObject:v49 forKeyedSubscript:@"numberOfDetectionImages"];

    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v42, "maximumNumberOfTrackedImages")}];
    [v10 setObject:v50 forKeyedSubscript:@"maximumNumberOfTrackedImages"];

    v51 = MEMORY[0x1E696AD98];
    detectionObjects = [v42 detectionObjects];
    v53 = [v51 numberWithUnsignedInteger:{objc_msgSend(detectionObjects, "count")}];
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

    v56 = configurationCopy;
    v57 = MEMORY[0x1E696AD98];
    trackingImages = [v56 trackingImages];
    v59 = [v57 numberWithUnsignedInteger:{objc_msgSend(trackingImages, "count")}];
    [v10 setObject:v59 forKeyedSubscript:@"numberOfTrackingImages"];

    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v56, "maximumNumberOfTrackedImages")}];
    [v10 setObject:v55 forKeyedSubscript:@"maximumNumberOfTrackedImages"];
  }

LABEL_10:
  v60 = objc_opt_new();
  [ARQAHelper techniquesArray:techniqueCopy array:v60];
  [v10 setObject:v60 forKeyedSubscript:@"techniques"];
  v61 = objc_opt_new();
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __66__ARQAHelper_generateTagsForConfiguration_replaySensor_technique___block_invoke;
  v68[3] = &unk_1E817D950;
  v62 = v61;
  v69 = v62;
  [ARQAHelper traverseTechniques:techniqueCopy withBlock:v68];
  [v10 setObject:v62 forKeyedSubscript:@"networkVersion"];
  v63 = objc_opt_new();
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __66__ARQAHelper_generateTagsForConfiguration_replaySensor_technique___block_invoke_2;
  v66[3] = &unk_1E817D950;
  v64 = v63;
  v67 = v64;
  [ARQAHelper traverseTechniques:techniqueCopy withBlock:v66];
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

+ (void)traverseTechniques:(id)techniques withBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  blockCopy = block;
  blockCopy[2](blockCopy, techniquesCopy);
  splitTechniques = [techniquesCopy splitTechniques];

  if (splitTechniques)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    splitTechniques2 = [techniquesCopy splitTechniques];
    v10 = [splitTechniques2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(splitTechniques2);
          }

          [self traverseTechniques:*(*(&v21 + 1) + 8 * v12++) withBlock:blockCopy];
        }

        while (v10 != v12);
        v10 = [splitTechniques2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
    techniques = [techniquesCopy techniques];
    v14 = [techniques countByEnumeratingWithState:&v17 objects:v25 count:16];
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
            objc_enumerationMutation(techniques);
          }

          [self traverseTechniques:*(*(&v17 + 1) + 8 * v16++) withBlock:blockCopy];
        }

        while (v14 != v16);
        v14 = [techniques countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

+ (void)techniquesArray:(id)array array:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    techniques = [arrayCopy techniques];
    v9 = [techniques countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(techniques);
          }

          [self techniquesArray:*(*(&v14 + 1) + 8 * v11++) array:v7];
        }

        while (v9 != v11);
        v9 = [techniques countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)headerInformationWithConfiguration:(id)configuration technique:(id)technique
{
  configurationCopy = configuration;
  techniqueCopy = technique;
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

  if ([configurationCopy frameSemantics])
  {
    [v7 setObject:@"segmentation.mov" forKeyedSubscript:@"segmentationFilename"];
  }

  v10 = objc_opt_new();
  replaySensor = [configurationCopy replaySensor];
  v12 = configurationCopy;
  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    templateConfiguration = [v12 templateConfiguration];
    v15 = templateConfiguration;
    v13 = v12;
    if (templateConfiguration)
    {
      v13 = templateConfiguration;
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

    detectionImages = [v17 detectionImages];
    v20 = [detectionImages count];

    if (v20)
    {
      v21 = [objc_opt_class() description];
      [v10 addObject:v21];
    }

    detectionObjects = [v17 detectionObjects];
    v23 = [detectionObjects count];

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
  v25 = [ARQAHelper generateTagsForConfiguration:v13 replaySensor:replaySensor technique:techniqueCopy];
  [v7 setObject:v25 forKeyedSubscript:@"tags"];

  appleGlobalDomainARKitDefaults = [MEMORY[0x1E695E000] appleGlobalDomainARKitDefaults];
  [v7 setObject:appleGlobalDomainARKitDefaults forKeyedSubscript:@"userDefaults"];

  return v7;
}

void __59__ARQAHelper_headerInformationWithConfiguration_technique___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 stringByAppendingString:@"Version"];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)dictionaryFromPlaneExtent:(id)extent
{
  extentCopy = extent;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v5 = MEMORY[0x1E696AD98];
  [extentCopy rotationOnYAxis];
  v6 = [v5 numberWithFloat:?];
  [v4 setObject:v6 forKeyedSubscript:@"rotationOnYAxis"];

  v7 = MEMORY[0x1E696AD98];
  [extentCopy width];
  v8 = [v7 numberWithFloat:?];
  [v4 setObject:v8 forKeyedSubscript:@"width"];

  v9 = MEMORY[0x1E696AD98];
  [extentCopy height];
  v10 = [v9 numberWithFloat:?];
  [v4 setObject:v10 forKeyedSubscript:@"height"];

  return v4;
}

+ (id)dictionaryFromVertices:(id)vertices vertexCount:(SEL)count textureCoordinates:textureCoordinateCount:
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

+ (id)dictionaryFromMeshGeometry:(id)geometry
{
  geometryCopy = geometry;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v5 = MEMORY[0x1E696AD98];
  vertices = [geometryCopy vertices];
  v7 = [v5 numberWithInteger:{objc_msgSend(vertices, "count")}];
  [v4 setObject:v7 forKeyedSubscript:@"vertexCount"];

  v8 = MEMORY[0x1E696AD98];
  faces = [geometryCopy faces];
  v10 = [v8 numberWithInteger:{objc_msgSend(faces, "count")}];
  [v4 setObject:v10 forKeyedSubscript:@"faceCount"];

  v11 = MEMORY[0x1E696AD98];
  normals = [geometryCopy normals];
  v13 = [v11 numberWithInteger:{objc_msgSend(normals, "count")}];
  [v4 setObject:v13 forKeyedSubscript:@"normalCount"];

  return v4;
}

+ (id)dictionaryFromPatchGrid:(id)grid
{
  v20[4] = *MEMORY[0x1E69E9840];
  gridCopy = grid;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(gridCopy, "size")}];
  v4 = 0;
  for (i = 0; i < [gridCopy size]; ++i)
  {
    patches = [gridCopy patches];
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:*(patches + v4)];
    v20[0] = v7;
    LODWORD(v8) = *(patches + v4 + 4);
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v20[1] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:*(patches + v4 + 8)];
    v20[2] = v10;
    LODWORD(v11) = *(patches + v4 + 12);
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    v20[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v19 setObject:v13 atIndexedSubscript:i];

    v4 += 16;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(gridCopy, "size")}];
  [v14 setObject:v15 forKeyedSubscript:@"size"];

  v16 = MEMORY[0x1E696AD98];
  [gridCopy pivot];
  v17 = [v16 numberWithFloat:?];
  [v14 setObject:v17 forKeyedSubscript:@"pivot"];

  [v14 setObject:v19 forKeyedSubscript:@"patches"];

  return v14;
}

+ (id)extractAnchorDataForFrame:(id)frame
{
  v104 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  v96 = objc_opt_new();
  anchors = [frameCopy anchors];
  v4 = [anchors sortedArrayUsingComparator:&__block_literal_global_96];

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

        name = [v7 name];
        LOBYTE(v10) = name == 0;

        if ((v10 & 1) == 0)
        {
          name2 = [v7 name];
          [v8 setObject:name2 forKeyedSubscript:@"name"];
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isTracked")}];
          [v8 setObject:v13 forKeyedSubscript:@"isTracked"];
        }

        v14 = MEMORY[0x1E696AEC0];
        identifier = [v7 identifier];
        uUIDString = [identifier UUIDString];
        frameCopy = [v14 stringWithFormat:@"%@", uUIDString, frameCopy];
        [v8 setObject:frameCopy forKeyedSubscript:@"identifier"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          referenceObject3 = [objc_opt_class() dictionaryFromPlaneAnchor:v7];
          [v8 addEntriesFromDictionary:referenceObject3];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v7;
          blendShapes = [v19 blendShapes];
          [v8 setObject:blendShapes forKeyedSubscript:@"blendShapes"];

          [v19 leftEyeTransform];
          v21 = [ARQAHelper arrayWithMatrix4x4:?];
          [v8 setObject:v21 forKeyedSubscript:@"leftEyeTransform"];

          [v19 rightEyeTransform];
          v22 = [ARQAHelper arrayWithMatrix4x4:?];
          [v8 setObject:v22 forKeyedSubscript:@"rightEyeTransform"];

          [v19 lookAtPoint];
          referenceObject3 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:referenceObject3 forKeyedSubscript:@"lookAtPoint"];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v7;
          referenceImage = [v23 referenceImage];
          name3 = [referenceImage name];
          [v8 setObject:name3 forKeyedSubscript:@"referenceImageName"];

          v26 = MEMORY[0x1E696AD98];
          referenceImage2 = [v23 referenceImage];
          [referenceImage2 physicalSize];
          *&v28 = v28;
          v29 = [v26 numberWithFloat:v28];
          v102[0] = v29;
          v30 = MEMORY[0x1E696AD98];
          referenceImage3 = [v23 referenceImage];
          [referenceImage3 physicalSize];
          *&v33 = v32;
          v34 = [v30 numberWithFloat:v33];
          v102[1] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
          [v8 setObject:v35 forKeyedSubscript:@"referenceImageSize"];

          v36 = MEMORY[0x1E696AD98];
          [v23 estimatedScaleFactor];
          *&v37 = v37;
          referenceObject3 = [v36 numberWithFloat:v37];
          [v8 setObject:referenceObject3 forKeyedSubscript:@"estimatedScaleFactor"];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v7;
          referenceObject = [v38 referenceObject];
          name4 = [referenceObject name];
          [v8 setObject:name4 forKeyedSubscript:@"referenceObjectName"];

          referenceObject2 = [v38 referenceObject];
          [referenceObject2 center];
          v42 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:v42 forKeyedSubscript:@"referenceObjectCenter"];

          referenceObject3 = [v38 referenceObject];
          [referenceObject3 extent];
          v93 = [ARQAHelper arrayWithVector3:?];
          [v8 setObject:? forKeyedSubscript:?];
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = v7;
          v44 = [v43 url];
          absoluteString = [v44 absoluteString];
          [v8 setObject:absoluteString forKeyedSubscript:@"url"];

          instanceID = [v43 instanceID];
          [v8 setObject:instanceID forKeyedSubscript:@"instanceID"];

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

          referenceObject3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v43, "urlDecodingStateInternal")}];
          [v8 setObject:referenceObject3 forKeyedSubscript:@"urlDecodingStateInternal"];
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = v7;
          v53 = MEMORY[0x1E695DF70];
          skeleton = [v52 skeleton];
          referenceObject3 = [v53 arrayWithCapacity:{objc_msgSend(skeleton, "jointCount")}];

          v55 = 0;
          for (i = 0; ; ++i)
          {
            skeleton2 = [v52 skeleton];
            v58 = [skeleton2 jointCount] > i;

            if (!v58)
            {
              break;
            }

            skeleton3 = [v52 skeleton];
            jointModelTransforms = [skeleton3 jointModelTransforms];
            v61 = [ARQAHelper arrayWithMatrix4x4:*(jointModelTransforms + v55), *(jointModelTransforms + v55 + 16), *(jointModelTransforms + v55 + 32), *(jointModelTransforms + v55 + 48)];
            [referenceObject3 addObject:v61];

            v55 += 64;
          }

          v64 = MEMORY[0x1E695DF70];
          referenceBody = [v52 referenceBody];
          skeleton4 = [referenceBody skeleton];
          v93 = [v64 arrayWithCapacity:{objc_msgSend(skeleton4, "jointCount")}];

          for (j = 0; ; ++j)
          {
            referenceBody2 = [v52 referenceBody];
            skeleton5 = [referenceBody2 skeleton];
            v70 = [skeleton5 jointCount] > j;

            if (!v70)
            {
              break;
            }

            referenceBody3 = [v52 referenceBody];
            skeleton6 = [referenceBody3 skeleton];
            v73 = +[ARQAHelper arrayWithVector2:](ARQAHelper, "arrayWithVector2:", *([skeleton6 jointLandmarks] + 8 * j));
            [v93 addObject:v73];
          }

          v74 = MEMORY[0x1E695DF70];
          skeleton7 = [v52 skeleton];
          coreRESkeleton = [skeleton7 coreRESkeleton];
          liftedSkeletonData = [coreRESkeleton liftedSkeletonData];
          v91 = [v74 arrayWithCapacity:{objc_msgSend(liftedSkeletonData, "jointCount")}];

          for (k = 0; ; ++k)
          {
            skeleton8 = [v52 skeleton];
            coreRESkeleton2 = [skeleton8 coreRESkeleton];
            liftedSkeletonData2 = [coreRESkeleton2 liftedSkeletonData];
            v82 = [liftedSkeletonData2 jointCount] > k;

            if (!v82)
            {
              break;
            }

            skeleton9 = [v52 skeleton];
            coreRESkeleton3 = [skeleton9 coreRESkeleton];
            liftedSkeletonData3 = [coreRESkeleton3 liftedSkeletonData];
            v94 = *([liftedSkeletonData3 joints] + 16 * k);

            v86 = [ARQAHelper arrayWithVector3:*&v94];
            [v91 addObject:v86];
          }

          [v8 setObject:referenceObject3 forKeyedSubscript:@"jointModelTransforms"];
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
          geometry = [v62 geometry];
          referenceObject3 = [ARQAHelper dictionaryFromMeshGeometry:geometry];

          [v8 setObject:referenceObject3 forKeyedSubscript:@"geometry"];
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

+ (id)extractDetectedBodiesForFrame:(id)frame
{
  v30 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  v20 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  detectedBodies = [frameCopy detectedBodies];
  obj = detectedBodies;
  v4 = [detectedBodies countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          skeleton = [v6 skeleton];
          v11 = [skeleton jointCount] > j;

          if (!v11)
          {
            break;
          }

          skeleton2 = [v6 skeleton];
          v13 = +[ARQAHelper arrayWithVector2:](ARQAHelper, "arrayWithVector2:", *([skeleton2 jointLandmarks] + 8 * j));
          [v7 addObject:v13];

          v14 = MEMORY[0x1E696AD98];
          skeleton3 = [v6 skeleton];
          v16 = [v14 numberWithBool:{objc_msgSend(skeleton3, "isJointTracked:", j)}];
          [v8 addObject:v16];
        }

        [v23 addObject:v7];
        [v24 addObject:v8];
      }

      detectedBodies = obj;
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

+ (id)traceFrameData:(id)data withFrameIndex:(unint64_t)index
{
  dataCopy = data;
  v6 = [objc_opt_class() traceFrameData:dataCopy withFrameIndex:index writeOBJ:0];

  return v6;
}

+ (id)traceFrameData:(id)data withFrameIndex:(unint64_t)index writeOBJ:(BOOL)j
{
  jCopy = j;
  v297[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v275 = objc_opt_new();
  indexCopy = index;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [v275 setObject:v6 forKeyedSubscript:@"frame"];

  v7 = MEMORY[0x1E696AD98];
  [dataCopy timestamp];
  v8 = [v7 numberWithDouble:?];
  [v275 setObject:v8 forKeyedSubscript:@"timestamp"];

  camera = [dataCopy camera];
  [camera transform];
  v10 = [ARQAHelper arrayWithMatrix4x4:?];
  [v275 setObject:v10 forKeyedSubscript:@"cameraTransform"];

  [dataCopy referenceOriginTransform];
  v11 = [ARQAHelper arrayWithMatrix4x4:?];
  [v275 setObject:v11 forKeyedSubscript:@"referenceOriginTransform"];

  v12 = MEMORY[0x1E696AD98];
  camera2 = [dataCopy camera];
  v14 = [v12 numberWithInteger:{objc_msgSend(camera2, "trackingState")}];
  [v275 setObject:v14 forKeyedSubscript:@"trackingState"];

  v15 = MEMORY[0x1E696AD98];
  camera3 = [dataCopy camera];
  v17 = [v15 numberWithInteger:{objc_msgSend(camera3, "trackingStateReason")}];
  [v275 setObject:v17 forKeyedSubscript:@"trackingStateReason"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(dataCopy, "worldMappingStatus")}];
  [v275 setObject:v18 forKeyedSubscript:@"worldMappingStatus"];

  v19 = MEMORY[0x1E696AD98];
  [dataCopy cameraGrainIntensity];
  v20 = [v19 numberWithFloat:?];
  [v275 setObject:v20 forKeyedSubscript:@"cameraGrainIntensity"];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(dataCopy, "deviceOrientation")}];
  [v275 setObject:v21 forKeyedSubscript:@"deviceOrientation"];

  resultDatas = [dataCopy resultDatas];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
  v24 = [resultDatas filteredArrayUsingPredicate:v23];

  v268 = v24;
  firstObject = [v24 firstObject];

  if (firstObject)
  {
    firstObject2 = [v24 firstObject];
    [firstObject2 visionCameraTransform];
    v27 = [ARQAHelper arrayWithMatrix4x4:?];
    [v275 setObject:v27 forKeyedSubscript:@"visionCameraTransform"];
  }

  worldTrackingState = [dataCopy worldTrackingState];
  majorRelocalization = [worldTrackingState majorRelocalization];

  if (majorRelocalization)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v275 setObject:v30 forKeyedSubscript:@"majorRelocalization"];
  }

  worldTrackingState2 = [dataCopy worldTrackingState];
  minorRelocalization = [worldTrackingState2 minorRelocalization];

  if (minorRelocalization)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v275 setObject:v33 forKeyedSubscript:@"minorRelocalization"];
  }

  worldTrackingState3 = [dataCopy worldTrackingState];
  poseGraphUpdated = [worldTrackingState3 poseGraphUpdated];

  if (poseGraphUpdated)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v275 setObject:v36 forKeyedSubscript:@"poseGraphUpdated"];
  }

  v37 = MEMORY[0x1E696AD98];
  worldTrackingState4 = [dataCopy worldTrackingState];
  v39 = [v37 numberWithUnsignedInteger:{objc_msgSend(worldTrackingState4, "currentVIOMapSize")}];
  [v275 setObject:v39 forKeyedSubscript:@"currentVIOMapSize"];

  v40 = MEMORY[0x1E696AD98];
  worldTrackingState5 = [dataCopy worldTrackingState];
  v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(worldTrackingState5, "reinitializationAttempts")}];
  [v275 setObject:v42 forKeyedSubscript:@"reinitializationAttempts"];

  v43 = MEMORY[0x1E696AD98];
  worldTrackingState6 = [dataCopy worldTrackingState];
  v45 = [v43 numberWithInteger:{objc_msgSend(worldTrackingState6, "vioTrackingState")}];
  [v275 setObject:v45 forKeyedSubscript:@"vioTrackingState"];

  worldTrackingErrorData = [dataCopy worldTrackingErrorData];

  if (worldTrackingErrorData)
  {
    v296[0] = @"Timestamp";
    v47 = MEMORY[0x1E696AD98];
    worldTrackingErrorData2 = [dataCopy worldTrackingErrorData];
    [worldTrackingErrorData2 timestamp];
    v49 = [v47 numberWithDouble:?];
    v296[1] = @"ErrorCode";
    v297[0] = v49;
    v50 = MEMORY[0x1E696AD98];
    worldTrackingErrorData3 = [dataCopy worldTrackingErrorData];
    v52 = [v50 numberWithInteger:{objc_msgSend(worldTrackingErrorData3, "errorCode")}];
    v297[1] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v297 forKeys:v296 count:2];
    [v275 setObject:v53 forKeyedSubscript:@"worldTrackingError"];
  }

  if ([dataCopy segmentationBuffer])
  {
    segmentationBuffer = [dataCopy segmentationBuffer];
    CVPixelBufferLockBaseAddress(segmentationBuffer, 0);
    Width = CVPixelBufferGetWidth(segmentationBuffer);
    Height = CVPixelBufferGetHeight(segmentationBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(segmentationBuffer);
    BaseAddress = CVPixelBufferGetBaseAddress(segmentationBuffer);
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

    CVPixelBufferUnlockBaseAddress(segmentationBuffer, 0);
    v65 = 100.0 - v64 / (Height * Width);
    *&v65 = v65;
    v66 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
    [v275 setObject:v66 forKeyedSubscript:@"segmentationPixelsPercentage"];
  }

  v269 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
  resultDatas2 = [dataCopy resultDatas];
  v271 = [resultDatas2 filteredArrayUsingPredicate:v269];

  firstObject3 = [v271 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    firstObject4 = [v271 firstObject];
    v71 = objc_opt_new();
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    detectedObjects = [firstObject4 detectedObjects];
    v73 = [detectedObjects countByEnumeratingWithState:&v289 objects:v295 count:16];
    if (v73)
    {
      v74 = *v290;
      do
      {
        for (j = 0; j != v73; ++j)
        {
          if (*v290 != v74)
          {
            objc_enumerationMutation(detectedObjects);
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

        v73 = [detectedObjects countByEnumeratingWithState:&v289 objects:v295 count:16];
      }

      while (v73);
    }

    [v275 setObject:v71 forKeyedSubscript:@"personDetectionBoundingBoxes"];
  }

  if ([dataCopy segmentationBuffer] && objc_msgSend(dataCopy, "estimatedDepthData"))
  {
    [objc_opt_class() _meanDepthValueOfDepthBuffer:objc_msgSend(dataCopy consideringSegmentation:"estimatedDepthData") ofSegmentationBuffer:{1, objc_msgSend(dataCopy, "segmentationBuffer")}];
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", v86];
    [v275 setObject:v87 forKeyedSubscript:@"averageDepth"];
  }

  capturedDepthData = [dataCopy capturedDepthData];
  v89 = capturedDepthData == 0;

  if (!v89)
  {
    v90 = objc_opt_class();
    capturedDepthData2 = [dataCopy capturedDepthData];
    v92 = capturedDepthData2;
    [v90 _meanDepthValueOfDepthBuffer:objc_msgSend(capturedDepthData2 consideringSegmentation:"depthDataMap") ofSegmentationBuffer:{0, 0}];
    v94 = v93;

    v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.4f", v94];
    [v275 setObject:v95 forKeyedSubscript:@"averageCapturedDepth"];
  }

  featurePoints = [dataCopy featurePoints];
  v97 = [featurePoints count] == 0;

  if (!v97)
  {
    featurePoints2 = [dataCopy featurePoints];
    points = [featurePoints2 points];
    featurePoints3 = [dataCopy featurePoints];
    v101 = +[ARQAHelper arrayOf3dPoints:count:](ARQAHelper, "arrayOf3dPoints:count:", points, [featurePoints3 count]);
    [v275 setObject:v101 forKeyedSubscript:@"featurePoints"];
  }

  location = [dataCopy location];
  v103 = location == 0;

  if (!v103)
  {
    location2 = [dataCopy location];
    v105 = [ARQAHelper dictionaryFromCLLocation:location2];
    [v275 setObject:v105 forKeyedSubscript:@"location"];
  }

  rawLocation = [dataCopy rawLocation];
  v107 = rawLocation == 0;

  if (!v107)
  {
    rawLocation2 = [dataCopy rawLocation];
    v109 = [ARQAHelper dictionaryFromRawCLLocation:rawLocation2];
    [v275 setObject:v109 forKeyedSubscript:@"rawLocation"];
  }

  v110 = MEMORY[0x1E696AD98];
  [dataCopy heading];
  v111 = [v110 numberWithDouble:?];
  [v275 setObject:v111 forKeyedSubscript:@"heading"];

  v112 = MEMORY[0x1E696AD98];
  [dataCopy rawHeading];
  v113 = [v112 numberWithDouble:?];
  [v275 setObject:v113 forKeyedSubscript:@"rawHeading"];

  v114 = MEMORY[0x1E696AD98];
  vlState = [dataCopy vlState];
  [vlState fusedReplayHeading];
  v116 = [v114 numberWithDouble:?];
  [v275 setObject:v116 forKeyedSubscript:@"fusedHeading"];

  v117 = MEMORY[0x1E696AD98];
  vlState2 = [dataCopy vlState];
  [vlState2 fusedReplayHeadingTimestamp];
  v119 = [v117 numberWithDouble:?];
  [v275 setObject:v119 forKeyedSubscript:@"fusedHeadingTimestamp"];

  v120 = MEMORY[0x1E696AD98];
  [dataCopy rawLocationTimestamp];
  v121 = [v120 numberWithDouble:?];
  [v275 setObject:v121 forKeyedSubscript:@"rawLocationTimestamp"];

  [dataCopy undulation];
  v122 = MEMORY[0x1E696AD98];
  [dataCopy undulation];
  v123 = [v122 numberWithDouble:?];
  [v275 setObject:v123 forKeyedSubscript:@"undulation"];

  resultDatas3 = [dataCopy resultDatas];
  v125 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_382];
  v126 = [resultDatas3 filteredArrayUsingPredicate:v125];
  firstObject5 = [v126 firstObject];

  if (firstObject5)
  {
    v127 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(firstObject5, "errorCode")}];
    [v275 setObject:v127 forKeyedSubscript:@"vlErrorCode"];

    localizationResult = [firstObject5 localizationResult];
    LOBYTE(v127) = localizationResult == 0;

    if ((v127 & 1) == 0)
    {
      v129 = MEMORY[0x1E696AD98];
      localizationResult2 = [firstObject5 localizationResult];
      [localizationResult2 inputTimestamp];
      v131 = [v129 numberWithDouble:?];
      [v275 setObject:v131 forKeyedSubscript:@"vlInputTimestamp"];

      localizationResult3 = [firstObject5 localizationResult];
      v133 = localizationResult3;
      if (localizationResult3)
      {
        [localizationResult3 transform];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v134 = [ARQAHelper arrayWithMatrix4x4:ARMatrix4x4DoubleToFloat(buf)];
      [v275 setObject:v134 forKeyedSubscript:@"vlTransform"];

      location3 = [firstObject5 location];
      v136 = [ARQAHelper dictionaryFromCLLocation:location3];
      [v275 setObject:v136 forKeyedSubscript:@"vlLocation"];

      v137 = MEMORY[0x1E696AD98];
      [firstObject5 heading];
      v138 = [v137 numberWithDouble:?];
      [v275 setObject:v138 forKeyedSubscript:@"vlHeading"];
    }

    debugInfo = [firstObject5 debugInfo];
    inputParameters = [debugInfo inputParameters];
    [v275 setObject:inputParameters forKeyedSubscript:@"vlDebugInputParameters"];

    debugInfo2 = [firstObject5 debugInfo];
    results = [debugInfo2 results];
    [v275 setObject:results forKeyedSubscript:@"vlDebugResults"];

    v143 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(firstObject5, "algorithmVersion")}];
    [v275 setObject:v143 forKeyedSubscript:@"vlAlgorithmVersion"];
  }

  geoTrackingStatus = [dataCopy geoTrackingStatus];
  v145 = geoTrackingStatus == 0;

  if (!v145)
  {
    geoTrackingStatus2 = [dataCopy geoTrackingStatus];
    v147 = NSStringFromARGeoTrackingState([geoTrackingStatus2 state]);
    [v275 setObject:v147 forKeyedSubscript:@"geoTrackingStatus.state"];

    geoTrackingStatus3 = [dataCopy geoTrackingStatus];
    v149 = NSStringFromARGeoTrackingAccuracy([geoTrackingStatus3 accuracy]);
    [v275 setObject:v149 forKeyedSubscript:@"geoTrackingStatus.accuracy"];

    geoTrackingStatus4 = [dataCopy geoTrackingStatus];
    v151 = NSStringFromARGeoTrackingStateReason([geoTrackingStatus4 stateReason]);
    [v275 setObject:v151 forKeyedSubscript:@"geoTrackingStatus.stateReason"];

    v152 = MEMORY[0x1E696AD98];
    geoTrackingStatus5 = [dataCopy geoTrackingStatus];
    v154 = [v152 numberWithInteger:{objc_msgSend(geoTrackingStatus5, "failureReasons")}];
    [v275 setObject:v154 forKeyedSubscript:@"geoTrackingStatus.failureReasons"];
  }

  v267 = [ARQAHelper extractAnchorDataForFrame:dataCopy];
  if ([v267 count])
  {
    [v275 setObject:v267 forKeyedSubscript:@"anchors"];
  }

  v270 = [ARQAHelper extractDetectedBodiesForFrame:dataCopy];
  if ([v270 count])
  {
    v155 = [v270 objectForKeyedSubscript:@"bodies"];
    [v275 setObject:v155 forKeyedSubscript:@"detectedBodies"];

    v156 = [v270 objectForKeyedSubscript:@"trackingStates"];
    [v275 setObject:v156 forKeyedSubscript:@"detectedBodiesTrackingStates"];
  }

  currentlyActiveVideoFormat = [dataCopy currentlyActiveVideoFormat];
  v158 = currentlyActiveVideoFormat == 0;

  if (!v158)
  {
    currentlyActiveVideoFormat2 = [dataCopy currentlyActiveVideoFormat];
    captureDeviceType = [currentlyActiveVideoFormat2 captureDeviceType];
    [v275 setObject:captureDeviceType forKeyedSubscript:@"currentlyActiveCameraForVIO"];
  }

  if (jCopy)
  {
    anchors = [dataCopy anchors];
    v162 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
    v163 = [anchors filteredArrayUsingPredicate:v162];

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
            *(&buf[0].f64[1] + 6) = self;
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
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v166;
          _os_log_impl(&dword_1C241C000, v169, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create obj for mesh anchors due to error: %@", buf, 0x20u);
        }
      }

      else
      {
        v172 = +[ARQATracer traceOutputDirectory];
        indexCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"meshAnchors_%lu.obj", indexCopy];
        v169 = [v172 stringByAppendingPathComponent:indexCopy];

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
              *(&buf[0].f64[1] + 6) = self;
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
            *(&buf[0].f64[1] + 6) = self;
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

    anchors2 = [dataCopy anchors];
    v184 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class == %@", objc_opt_class()];
    v185 = [anchors2 filteredArrayUsingPredicate:v184];

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
            *(&buf[0].f64[1] + 6) = self;
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
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v188;
          _os_log_impl(&dword_1C241C000, v191, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create obj for mesh anchors due to error: %@", buf, 0x20u);
        }
      }

      else
      {
        v194 = +[ARQATracer traceOutputDirectory];
        indexCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"planeAnchors_%lu.obj", indexCopy];
        v191 = [v194 stringByAppendingPathComponent:indexCopy2];

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
              *(&buf[0].f64[1] + 6) = self;
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
            *(&buf[0].f64[1] + 6) = self;
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

  resultDatas4 = [dataCopy resultDatas];
  v206 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_453];
  v207 = [resultDatas4 filteredArrayUsingPredicate:v206];
  firstObject6 = [v207 firstObject];

  v208 = [firstObject6 resultDataOfClass:objc_opt_class()];
  firstObject7 = [v208 firstObject];

  v209 = [firstObject6 resultDataOfClass:objc_opt_class()];
  firstObject8 = [v209 firstObject];

  v210 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.qatracing.dumpSemanticSegmantationData"];
  if (firstObject7)
  {
    v211 = v210;
  }

  else
  {
    v211 = 0;
  }

  if (v211 && [firstObject7 source] == 2)
  {
    sourceImageData = [firstObject7 sourceImageData];
    isBackUltraWide = [sourceImageData isBackUltraWide];

    if (isBackUltraWide)
    {
      v214 = +[ARQATracer traceOutputDirectory];
      indexCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ultraWideImage_%lu.png", indexCopy];
      v216 = [v214 stringByAppendingPathComponent:indexCopy3];

      sourceImageData2 = [firstObject7 sourceImageData];
      v218 = ARSavePixelBufferPNG([sourceImageData2 pixelBuffer], v216) == 0;

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
            *(&buf[0].f64[1] + 6) = self;
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
          *(&buf[0].f64[1] + 6) = self;
          _os_log_impl(&dword_1C241C000, v221, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save ultrawide image to file", buf, 0x16u);
        }
      }

      [v275 setObject:v216 forKeyedSubscript:@"semanticSegmentationUndistoredUltraWideImage"];
    }

    if (firstObject8)
    {
      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      downScalingResults = [firstObject8 downScalingResults];
      v227 = [downScalingResults countByEnumeratingWithState:&v281 objects:v293 count:16];
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
              objc_enumerationMutation(downScalingResults);
            }

            v230 = *(*(&v281 + 1) + 8 * v229);
            if ([v230 pixelBuffer])
            {
              v231 = MEMORY[0x1E696AEC0];
              [v230 imageResolution];
              v233 = v232;
              [v230 imageResolution];
              indexCopy4 = [v231 stringWithFormat:@"mlImage%dx%d_%lu.png", v233, v234, indexCopy];
              v236 = +[ARQATracer traceOutputDirectory];
              v237 = [v236 stringByAppendingPathComponent:indexCopy4];

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
                    *(&buf[0].f64[1] + 6) = self;
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
                  *(&buf[0].f64[1] + 6) = self;
                  _os_log_impl(&dword_1C241C000, v240, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save ml image to file", buf, 0x16u);
                }
              }
            }

            latestResizedUltraWideImageData = [firstObject8 latestResizedUltraWideImageData];
            downScalingResults2 = [latestResizedUltraWideImageData downScalingResults];
            firstObject9 = [downScalingResults2 firstObject];

            if ([firstObject9 undistortedPixelBuffer])
            {
              v248 = MEMORY[0x1E696AEC0];
              v249 = CVPixelBufferGetWidth([firstObject9 undistortedPixelBuffer]);
              indexCopy5 = [v248 stringWithFormat:@"undistortedPixelBuffer%dx%d_%lu.png", v249, CVPixelBufferGetHeight(objc_msgSend(firstObject9, "undistortedPixelBuffer")), indexCopy];
              v251 = +[ARQATracer traceOutputDirectory];
              v252 = [v251 stringByAppendingPathComponent:indexCopy5];

              if (ARSavePixelBufferPNG([firstObject9 undistortedPixelBuffer], v252))
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
                    *(&buf[0].f64[1] + 6) = self;
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
                  *(&buf[0].f64[1] + 6) = self;
                  _os_log_impl(&dword_1C241C000, v255, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not save undistored image to file", buf, 0x16u);
                }
              }
            }

            ++v229;
          }

          while (v227 != v229);
          v227 = [downScalingResults countByEnumeratingWithState:&v281 objects:v293 count:16];
        }

        while (v227);
      }
    }

    CVPixelBufferLockBaseAddress([firstObject7 segmentationBuffer], 0);
    v260 = +[ARQATracer traceOutputDirectory];
    indexCopy6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"semanticSegmentation_%lu.png", indexCopy];
    v262 = [v260 stringByAppendingPathComponent:indexCopy6];

    LODWORD(v260) = CVPixelBufferGetWidth([firstObject7 segmentationBuffer]);
    LODWORD(indexCopy6) = CVPixelBufferGetHeight([firstObject7 segmentationBuffer]);
    v263 = CVPixelBufferGetBytesPerRow([firstObject7 segmentationBuffer]);
    v264 = CVPixelBufferGetBaseAddress([firstObject7 segmentationBuffer]);
    buf[0].f64[0] = 0.0;
    *&buf[0].f64[1] = v260 | (indexCopy6 << 32);
    *&buf[1].f64[0] = (v263 << 32) | 1;
    *&buf[1].f64[1] = v264;
    v265 = v262;
    [v262 UTF8String];
    cva::imwrite<unsigned char>();
    [v275 setObject:v262 forKeyedSubscript:@"semanticSegmentationLabelsFile"];
    CVPixelBufferUnlockBaseAddress([firstObject7 segmentationBuffer], 0);
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

+ (id)dictionaryFromCLLocation:(id)location
{
  v18[5] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v17[0] = @"latitude";
  v4 = MEMORY[0x1E696AD98];
  [locationCopy coordinate];
  v5 = [v4 numberWithDouble:?];
  v18[0] = v5;
  v17[1] = @"longitude";
  v6 = MEMORY[0x1E696AD98];
  [locationCopy coordinate];
  v8 = [v6 numberWithDouble:v7];
  v18[1] = v8;
  v17[2] = @"altitude";
  v9 = MEMORY[0x1E696AD98];
  [locationCopy altitude];
  v10 = [v9 numberWithDouble:?];
  v18[2] = v10;
  v17[3] = @"horizontalAccuracy";
  v11 = MEMORY[0x1E696AD98];
  [locationCopy horizontalAccuracy];
  v12 = [v11 numberWithDouble:?];
  v18[3] = v12;
  v17[4] = @"verticalAccuracy";
  v13 = MEMORY[0x1E696AD98];
  [locationCopy verticalAccuracy];
  v14 = [v13 numberWithDouble:?];
  v18[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v15;
}

+ (id)dictionaryFromRawCLLocation:(id)location
{
  v53[20] = *MEMORY[0x1E69E9840];
  locationCopy = location;
  _groundAltitude = [locationCopy _groundAltitude];
  v5 = _groundAltitude;
  v51 = _groundAltitude;
  if (!_groundAltitude || [_groundAltitude undulationModel] == -1)
  {
    v7 = 0;
  }

  else
  {
    [v5 uncertainty];
    [v5 uncertainty];
    v7 = v6 > 0.0;
  }

  if ([locationCopy isAltitudeWgs84Available])
  {
    [locationCopy altitudeWgs84];
    v9 = v8;
    [locationCopy altitude];
    v11 = v9 - v10;
  }

  else
  {
    v11 = NAN;
  }

  v52[0] = @"latitude";
  v12 = MEMORY[0x1E696AD98];
  [locationCopy coordinate];
  v50 = [v12 numberWithDouble:?];
  v53[0] = v50;
  v52[1] = @"longitude";
  v13 = MEMORY[0x1E696AD98];
  [locationCopy coordinate];
  v49 = [v13 numberWithDouble:v14];
  v53[1] = v49;
  v52[2] = @"altitude";
  v15 = MEMORY[0x1E696AD98];
  [locationCopy altitude];
  v48 = [v15 numberWithDouble:?];
  v53[2] = v48;
  v52[3] = @"course";
  v16 = MEMORY[0x1E696AD98];
  [locationCopy course];
  v47 = [v16 numberWithDouble:?];
  v53[3] = v47;
  v52[4] = @"horizontalAccuracy";
  v17 = MEMORY[0x1E696AD98];
  [locationCopy horizontalAccuracy];
  v46 = [v17 numberWithDouble:?];
  v53[4] = v46;
  v52[5] = @"verticalAccuracy";
  v18 = MEMORY[0x1E696AD98];
  [locationCopy verticalAccuracy];
  v45 = [v18 numberWithDouble:?];
  v53[5] = v45;
  v52[6] = @"courseAccuracy";
  v19 = MEMORY[0x1E696AD98];
  [locationCopy courseAccuracy];
  v44 = [v19 numberWithDouble:?];
  v53[6] = v44;
  v52[7] = @"rawLatitude";
  v20 = MEMORY[0x1E696AD98];
  [locationCopy rawCoordinate];
  v43 = [v20 numberWithDouble:?];
  v53[7] = v43;
  v52[8] = @"rawLongitude";
  v21 = MEMORY[0x1E696AD98];
  [locationCopy rawCoordinate];
  v42 = [v21 numberWithDouble:v22];
  v53[8] = v42;
  v52[9] = @"rawAltitude";
  v23 = MEMORY[0x1E696AD98];
  [locationCopy rawAltitude];
  v41 = [v23 numberWithDouble:?];
  v53[9] = v41;
  v52[10] = @"rawCourse";
  v24 = MEMORY[0x1E696AD98];
  [locationCopy rawCourse];
  v40 = [v24 numberWithDouble:?];
  v53[10] = v40;
  v52[11] = @"rawHorizontalAccuracy";
  v25 = MEMORY[0x1E696AD98];
  [locationCopy rawHorizontalAccuracy];
  v39 = [v25 numberWithDouble:?];
  v53[11] = v39;
  v52[12] = @"rawVerticalAccuracy";
  v26 = MEMORY[0x1E696AD98];
  [locationCopy rawVerticalAccuracy];
  v27 = [v26 numberWithDouble:?];
  v53[12] = v27;
  v52[13] = @"rawCourseAccuracy";
  v28 = MEMORY[0x1E696AD98];
  [locationCopy rawCourseAccuracy];
  v29 = [v28 numberWithDouble:?];
  v53[13] = v29;
  v52[14] = @"undulation";
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v53[14] = v30;
  v52[15] = @"isGroundAltitudeValid";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v53[15] = v31;
  v52[16] = @"isAltitudeWgs84Available";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(locationCopy, "isAltitudeWgs84Available")}];
  v53[16] = v32;
  v52[17] = @"isCoordinateFused";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(locationCopy, "isCoordinateFused")}];
  v53[17] = v33;
  v52[18] = @"isCoordinateFusedWithVL";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(locationCopy, "isCoordinateFusedWithVL")}];
  v53[18] = v34;
  v52[19] = @"ellipsoidalAltitude";
  [locationCopy ellipsoidalAltitude];
  v35 = MEMORY[0x1E696AD98];
  [locationCopy ellipsoidalAltitude];
  v36 = [v35 numberWithDouble:?];
  v53[19] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:20];

  return v37;
}

+ (id)dictionaryFromRaycastQuery:(id)query
{
  v11[3] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v10[0] = @"origin";
  [queryCopy origin];
  v5 = [self arrayWithVector3:?];
  v11[0] = v5;
  v10[1] = @"direction";
  [queryCopy direction];
  v6 = [self arrayWithVector3:?];
  v11[1] = v6;
  v10[2] = @"description";
  v7 = [queryCopy description];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

+ (id)arrayFromRaycastResults:(id)results
{
  v22 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = resultsCopy;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:{16, resultsCopy}];
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
        v9 = [self arrayWithMatrix4x4:?];
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

+ (float)_meanDepthValueOfDepthBuffer:(__CVBuffer *)buffer consideringSegmentation:(BOOL)segmentation ofSegmentationBuffer:(__CVBuffer *)segmentationBuffer
{
  if (!buffer)
  {
    return NAN;
  }

  segmentationCopy = segmentation;
  if (!segmentationBuffer && segmentation)
  {
    return NAN;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (segmentationCopy)
  {
    v12 = CVPixelBufferGetBytesPerRow(segmentationBuffer);
    v13 = CVPixelBufferGetWidth(segmentationBuffer);
    v14 = CVPixelBufferGetHeight(segmentationBuffer);
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

  CVPixelBufferLockBaseAddress(buffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  v16 = 0;
  if (segmentationCopy)
  {
    CVPixelBufferLockBaseAddress(segmentationBuffer, 0);
    v16 = CVPixelBufferGetBaseAddress(segmentationBuffer);
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
        if (!segmentationCopy || *v21)
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

  CVPixelBufferUnlockBaseAddress(buffer, 0);
  if (segmentationBuffer)
  {
    CVPixelBufferUnlockBaseAddress(segmentationBuffer, 0);
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

+ (id)dictionaryFromAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = objc_opt_new();
  identifier = [anchorCopy identifier];
  uUIDString = [identifier UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"identifier"];

  [anchorCopy transform];
  v7 = [ARQAHelper arrayWithMatrix4x4:?];
  [v4 setObject:v7 forKeyedSubscript:@"transform"];

  return v4;
}

+ (id)formatDescriptionForPlaneAnchor
{
  formatDescriptionForAnchor = [self formatDescriptionForAnchor];
  v3 = [formatDescriptionForAnchor mutableCopy];

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

+ (id)dictionaryFromPlaneAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [self dictionaryFromAnchor:anchorCopy];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(anchorCopy, "alignment")}];
  [v6 setObject:v7 forKeyedSubscript:@"alignment"];

  [anchorCopy center];
  v8 = [ARQAHelper arrayWithVector3:?];
  [v6 setObject:v8 forKeyedSubscript:@"center"];

  [anchorCopy extent];
  v9 = [ARQAHelper arrayWithVector3:?];
  [v6 setObject:v9 forKeyedSubscript:@"extent"];

  planeExtent = [anchorCopy planeExtent];
  v11 = [ARQAHelper dictionaryFromPlaneExtent:planeExtent];
  [v6 setObject:v11 forKeyedSubscript:@"planeExtent"];

  geometry = [anchorCopy geometry];
  vertices = [geometry vertices];
  geometry2 = [anchorCopy geometry];
  vertexCount = [geometry2 vertexCount];
  geometry3 = [anchorCopy geometry];
  textureCoordinates = [geometry3 textureCoordinates];
  geometry4 = [anchorCopy geometry];
  v19 = +[ARQAHelper dictionaryFromVertices:vertexCount:textureCoordinates:textureCoordinateCount:](ARQAHelper, "dictionaryFromVertices:vertexCount:textureCoordinates:textureCoordinateCount:", vertices, vertexCount, textureCoordinates, [geometry4 textureCoordinateCount]);

  v20 = MEMORY[0x1E696AD98];
  [anchorCopy area];
  v21 = [v20 numberWithFloat:?];
  [v6 setObject:v21 forKeyedSubscript:@"area"];

  v22 = NSStringFromARPlaneClassification([anchorCopy classification]);
  [v6 setObject:v22 forKeyedSubscript:@"planeClassification"];

  gridExtent = [anchorCopy gridExtent];

  if (gridExtent)
  {
    gridExtent2 = [anchorCopy gridExtent];
    v25 = [ARQAHelper dictionaryFromPatchGrid:gridExtent2];
    [v6 setObject:v25 forKeyedSubscript:@"gridExtent"];
  }

  v26 = NSStringFromARPlaneClassificationStatus([anchorCopy classificationStatus]);
  [v6 setObject:v26 forKeyedSubscript:@"planeClassificationStatus"];

  classificationLabel = [anchorCopy classificationLabel];
  [v6 setObject:classificationLabel forKeyedSubscript:@"classificationLabel"];

  [v6 setObject:v19 forKeyedSubscript:@"geometry"];

  return v6;
}

+ (id)dictionaryFromMeshAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [self dictionaryFromAnchor:anchorCopy];
  v6 = [v5 mutableCopy];

  geometry = [anchorCopy geometry];
  v8 = [ARQAHelper dictionaryFromMeshGeometry:geometry];

  [v6 setObject:v8 forKeyedSubscript:@"geometry"];

  return v6;
}

@end