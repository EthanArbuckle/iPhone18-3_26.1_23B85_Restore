@interface VNObjectTrackerLegacyFaceCore
+ (id)_convertOptionsToFaceCoreDetectOptions:(id)a3;
+ (id)_convertOptionsToFaceCoreExtractOptions:(id)a3;
+ (id)_convertOptionsToFaceCoreSetupOptions:(id)a3;
+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)reset:(id *)a3;
- (VNObjectTrackerLegacyFaceCore)initWithOptions:(id)a3 error:(id *)a4;
- (id)_detectFacesInImage:(id)a3 error:(id *)a4;
- (id)setTrackedObjects:(id)a3 inFrame:(id)a4 error:(id *)a5;
- (id)trackInFrame:(id)a3 error:(id *)a4;
@end

@implementation VNObjectTrackerLegacyFaceCore

- (id)_detectFacesInImage:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v9 = [v6 originalCGImage];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E6984AD8]) initWithCGImage:v9];
  }

  else
  {
    v29 = [v6 bufferWithWidth:v7 height:v8 format:1111970369 options:0 error:a4];
    if (v29)
    {
      v10 = [objc_alloc(MEMORY[0x1E6984AD8]) initWithCVPixelBuffer:v29];
    }

    else
    {
      v10 = 0;
    }

    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v29);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2040;
  v33 = __Block_byref_object_dispose__2041;
  v34 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VNObjectTrackerLegacyFaceCore__detectFacesInImage_error___block_invoke;
  aBlock[3] = &unk_1E77B2740;
  aBlock[4] = self;
  v11 = v10;
  v27 = v7;
  v28 = v8;
  v25 = v11;
  v26 = &v29;
  v12 = _Block_copy(aBlock);
  if (VNExecuteBlock(v12, a4))
  {
    v13 = [(VNTracker *)self key];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v30[5];
    v15 = [(__CVBuffer *)v14 countByEnumeratingWithState:&v20 objects:v35 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * i) setUUID:{v13, v20}];
        }

        v15 = [(__CVBuffer *)v14 countByEnumeratingWithState:&v20 objects:v35 count:16];
      }

      while (v15);
    }

    v18 = v30[5];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v29, 8);

  return v18;
}

uint64_t __59__VNObjectTrackerLegacyFaceCore__detectFacesInImage_error___block_invoke(void *a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [*(a1[4] + 96) detectFacesInImage:a1[5] options:*(a1[4] + 104) error:a2];
  if (!v4)
  {
    return 0;
  }

  if ([*(a1[4] + 112) count])
  {
    v5 = [*(a1[4] + 96) extractDetailsForFaces:v4 inImage:a1[5] options:*(a1[4] + 112) error:a2];

    v4 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        v12 = [VNFaceLegacyFaceCore alloc];
        v13 = [(VNFaceLegacyFaceCore *)v12 initWithFace:v11, v31];
        [(VNFaceLegacyFaceCore *)v13 faceBoundingBox];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = a1[7];
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        if (v21)
        {
          v23 = v16 / v21;
          v24 = v20 / v21;
        }

        v25 = a1[8];
        v26 = 0.0;
        if (v25)
        {
          v22 = v18 / v25;
          v26 = v14 / v25;
        }

        v27 = [VNFaceObservation faceObservationWithRequestRevision:3737841665 boundingBox:0 roll:0 yaw:0 pitch:v23, v22, v24, v26, v18];
        [v27 setLegacyFaceCore:v13];
        [v6 addObject:v27];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = *(a1[6] + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v6;

  return 1;
}

- (BOOL)reset:(id *)a3
{
  [(VNTracker *)self setTrackedFrameNumber:-1];
  [(VNTracker *)self setLastTrackedBBox:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  return 1;
}

- (id)trackInFrame:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(VNTracker *)self isTracking])
  {
    v7 = [(VNObjectTrackerLegacyFaceCore *)self _detectFacesInImage:v6 error:a4];
    if (v7)
    {
      [(VNTracker *)self setTrackedFrameNumber:[(VNTracker *)self trackedFrameNumber]+ 1];
      v8 = v7;
    }
  }

  else if (a4)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: Tracker is not initialized"];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)setTrackedObjects:(id)a3 inFrame:(id)a4 error:(id *)a5
{
  v7 = a4;
  if ([(VNTracker *)self isTracking])
  {
    if (a5)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: Tracker is busy with previous tracking requests. It needs to be reset to restart tracking sequence"];
      *a5 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [(VNObjectTrackerLegacyFaceCore *)self _detectFacesInImage:v7 error:a5];
    v8 = v9;
    if (v9)
    {
      if ([v9 count])
      {
        v10 = [v8 firstObject];
        [v10 boundingBox];
        [(VNTracker *)self setLastTrackedBBox:?];

        [(VNTracker *)self setTrackedFrameNumber:0];
      }

      v11 = v8;
    }
  }

  return v8;
}

- (VNObjectTrackerLegacyFaceCore)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = VNObjectTrackerLegacyFaceCore;
  v7 = [(VNTracker *)&v22 initWithOptions:v6 error:a4];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [(VNTracker *)v7 level];
    if ([v9 isEqualToString:@"VNTrackingOption_TrackingLevelFast"])
    {
      v10 = FCRKeypointTrackingParameters();
      [v8 addEntriesFromDictionary:v10];
    }

    else
    {
      if (![v9 isEqualToString:@"VNTrackingOption_TrackingLevelAccurate"])
      {
        if (a4)
        {
          v20 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: Unsupported/unimplemented tracking level by FaceCore"];
          goto LABEL_13;
        }

LABEL_14:
        v11 = 0;
        goto LABEL_15;
      }

      v10 = FCRStandardTrackingParameters();
      [v8 addEntriesFromDictionary:v10];
    }

    v12 = objc_opt_class();
    v13 = [v12 _convertOptionsToFaceCoreSetupOptions:v6];
    [v8 addEntriesFromDictionary:v13];

    v14 = [v12 _convertOptionsToFaceCoreDetectOptions:v6];
    detectOptions = v7->_detectOptions;
    v7->_detectOptions = v14;

    v16 = [v12 _convertOptionsToFaceCoreExtractOptions:v6];
    extractOptions = v7->_extractOptions;
    v7->_extractOptions = v16;

    v18 = [objc_alloc(MEMORY[0x1E6984AD0]) initWithOptions:v8];
    detector = v7->_detector;
    v7->_detector = v18;

    if (v7->_detector)
    {
      v11 = v7;
LABEL_15:

      goto LABEL_16;
    }

    if (a4)
    {
      v20 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error: Failed to initialize FaceCore detector"];
LABEL_13:
      v11 = 0;
      *a4 = v20;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

+ (id)_convertOptionsToFaceCoreExtractOptions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    v18 = *MEMORY[0x1E6984A78];
    v19 = *MEMORY[0x1E6984A70];
    v7 = *MEMORY[0x1E6984A68];
    v8 = *MEMORY[0x1E6984A60];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v10 isEqualToString:@"VNTrackObjectPrivateRevisionLegacyCoreProcessOption_EnhanceEyesAndMouthLocalization"];
        v13 = v8;
        if (v12 & 1) != 0 || (v14 = [v10 isEqualToString:{@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_ExtractBlink", v8}], v13 = v7, (v14) || (v15 = objc_msgSend(v10, "isEqualToString:", @"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_ExtractSmile", v7), v13 = v19, (v15) || (v16 = objc_msgSend(v10, "isEqualToString:", @"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_KalmanFilter", v19), v13 = v18, v16))
        {
          [v4 setValue:v11 forKey:v13];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (id)_convertOptionsToFaceCoreDetectOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    v7 = *MEMORY[0x1E6984A58];
    v8 = *MEMORY[0x1E6984A48];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v10 isEqualToString:@"VNTrackObjectPrivateRevisionLegacyCoreProcessOption_EnhanceEyesAndMouthLocalization"];
        v13 = v8;
        if ((v12 & 1) != 0 || (v14 = [v10 isEqualToString:{@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_KalmanFilter", v8}], v13 = v7, v14))
        {
          [v4 setValue:v11 forKey:v13];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (id)_convertOptionsToFaceCoreSetupOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v3 allKeys];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    v7 = *MEMORY[0x1E6984AC8];
    v8 = *MEMORY[0x1E6984AC0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = [v10 isEqualToString:@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_MinFaceSize"];
        v13 = v8;
        if ((v12 & 1) != 0 || (v14 = [v10 isEqualToString:{@"VNTrackObjectPrivateRevisionLegacyFaceCoreProcessOption_NumberOfDetectionAngles", v8}], v13 = v7, v14))
        {
          [v4 setValue:v11 forKey:v13];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4
{
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];

  return v4;
}

@end