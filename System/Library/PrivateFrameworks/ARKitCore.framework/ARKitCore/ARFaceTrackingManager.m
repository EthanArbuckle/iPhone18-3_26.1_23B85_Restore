@interface ARFaceTrackingManager
+ (BOOL)isSupported;
+ (void)initialize;
- (ARFaceTrackingManager)initWithMaximumNumberOfTrackedFaces:(int64_t)a3 options:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)faceTrackingOptionsFromImageData:(id)a3 withCallback:(id)a4;
- (id)processData:(id)a3;
- (void)dealloc;
@end

@implementation ARFaceTrackingManager

+ (void)initialize
{
  if (+[ARFaceTrackingManager initialize]::onceToken != -1)
  {
    +[ARFaceTrackingManager initialize];
  }
}

void __35__ARFaceTrackingManager_initialize__block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = s_faceTrackingSemaphore;
  s_faceTrackingSemaphore = v0;
}

- (ARFaceTrackingManager)initWithMaximumNumberOfTrackedFaces:(int64_t)a3 options:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (![ARFaceTrackingManager isSupported:a3])
  {
    v9 = 0;
    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = ARFaceTrackingManager;
  v6 = [(ARFaceTrackingManager *)&v19 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  dispatch_semaphore_wait(s_faceTrackingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  ++s_instanceCount;
  if (s_faceTracking || (v11 = CVAFaceTrackingCreate()) == 0)
  {
    dispatch_semaphore_signal(s_faceTrackingSemaphore);
    v6->_maximumNumberOfTrackedFaces = a3;
    if (a3 == 1)
    {
      v7 = objc_opt_new();
      singleUserAnchorIdentifier = v6->_singleUserAnchorIdentifier;
      v6->_singleUserAnchorIdentifier = v7;
    }

LABEL_6:
    self = v6;
    v9 = self;
    goto LABEL_8;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARFaceTrackingManager initWithMaximumNumberOfTrackedFaces:options:];
  }

  v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v13 = _ARLogGeneral();
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543874;
      v21 = v16;
      v22 = 2048;
      v23 = v6;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating face kit instance: %i", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543874;
    v21 = v18;
    v22 = 2048;
    v23 = v6;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating face kit instance: %i", buf, 0x1Cu);
  }

  dispatch_semaphore_signal(s_faceTrackingSemaphore);
  v9 = 0;
  self = v6;
LABEL_8:

  return v9;
}

- (void)dealloc
{
  dispatch_semaphore_wait(s_faceTrackingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (--s_instanceCount)
  {
    v3 = 1;
  }

  else
  {
    v3 = s_faceTracking == 0;
  }

  if (!v3)
  {
    CFRelease(s_faceTracking);
    s_faceTracking = 0;
  }

  dispatch_semaphore_signal(s_faceTrackingSemaphore);
  v4.receiver = self;
  v4.super_class = ARFaceTrackingManager;
  [(ARFaceTrackingManager *)&v4 dealloc];
}

+ (BOOL)isSupported
{
  if (ARRGBFaceTrackingEnabled())
  {
    return 1;
  }

  return ARPearlCameraSupported();
}

- (id)processData:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v35 = a3;
  [v35 timestamp];
  kdebug_trace();
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = 0;
  v3 = dispatch_semaphore_create(0);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __37__ARFaceTrackingManager_processData___block_invoke;
  v43[3] = &unk_1E817C9A8;
  v45 = &v46;
  dsema = v3;
  v44 = dsema;
  v4 = [(ARFaceTrackingManager *)self faceTrackingOptionsFromImageData:v35 withCallback:v43];
  dispatch_semaphore_wait(s_faceTrackingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v30 = v4;
  LODWORD(v4) = CVAFaceTrackingProcess();
  dispatch_semaphore_signal(s_faceTrackingSemaphore);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v36 = [MEMORY[0x1E695DEC8] array];
  if (!v4)
  {
    v5 = v47[5];
    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C0C0]];

      v36 = v6;
    }
  }

  [v36 count];
  kdebug_trace();
  v33 = objc_opt_new();
  if ([v36 count])
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __37__ARFaceTrackingManager_processData___block_invoke_2;
    v41[3] = &unk_1E817C9D0;
    v41[4] = self;
    v42 = v33;
    [v36 enumerateObjectsUsingBlock:v41];
    v32 = [v47[5] mutableCopy];
    v7 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = *MEMORY[0x1E698C0C0];
    v8 = [v32 objectForKeyedSubscript:?];
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v52 count:16];
    if (v9)
    {
      v10 = *v38;
      v11 = *MEMORY[0x1E698BFF8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v37 + 1) + 8 * i) mutableCopy];
          v14 = [v13 objectForKeyedSubscript:v11];
          v15 = v14 == 0;

          if (!v15)
          {
            v16 = [v13 objectForKeyedSubscript:v11];
            v17 = [v16 mutableCopy];

            [v17 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"rgb_crop"];
            [v13 setObject:v17 forKeyedSubscript:v11];
          }

          [v7 addObject:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v37 objects:v52 count:16];
      }

      while (v9);
    }

    [v32 setObject:v7 forKeyedSubscript:v29];
    v18 = [v35 faceData];
    [v18 setFaceMeshPayload:v32];
  }

  v19 = [v35 faceData];
  v20 = [v19 faceMeshPayload];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E698C0C0]];
  v22 = [v21 count] == 0;

  if (v22)
  {
    [v35 timestamp];
    kdebug_trace();
  }

  if ([(ARFaceTrackingManager *)self maximumNumberOfTrackedFaces]== 1)
  {
    v23 = [v33 firstObject];
    if (v23)
    {
      [v33 removeAllObjects];
      v24 = [ARFaceTrackingData alloc];
      v25 = [v23 trackingData];
      v26 = [(ARFaceTrackingData *)v24 initWithTrackingData:v25 anchorIdentifier:self->_singleUserAnchorIdentifier];

      [v33 addObject:v26];
    }
  }

  v27 = objc_opt_new();
  [v27 setTrackedFaces:v33];

  _Block_object_dispose(&v46, 8);

  return v27;
}

intptr_t __37__ARFaceTrackingManager_processData___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void __37__ARFaceTrackingManager_processData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698C038]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
LABEL_5:
    v11 = _ARLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 32);
      v25 = 138543875;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2113;
      v30 = v8;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking anchor with ID = %{private}@", &v25, 0x20u);
    }

    v15 = [[ARFaceTrackingData alloc] initWithTrackingData:v6 anchorIdentifier:v8];
    [*(a1 + 40) addObject:v15];
    v16 = [*(a1 + 40) count];
    *a4 = v16 > [*(a1 + 32) maximumNumberOfTrackedFaces];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v25 = [v9 intValue];
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&v25 length:4];
    v8 = [MEMORY[0x1E696AFB0] ar_UUIDWithData:v10];

    goto LABEL_5;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __37__ARFaceTrackingManager_processData___block_invoke_2_cold_1();
  }

  v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v18 = _ARLogGeneral();
  v8 = v18;
  if (v17 == 1)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = *(a1 + 32);
      v25 = 138543618;
      v26 = v20;
      v27 = 2048;
      v28 = v21;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Encountered invalid face ID", &v25, 0x16u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = *(a1 + 32);
    v25 = 138543618;
    v26 = v23;
    v27 = 2048;
    v28 = v24;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Encountered invalid face ID", &v25, 0x16u);
  }

LABEL_8:
}

- (id)faceTrackingOptionsFromImageData:(id)a3 withCallback:(id)a4
{
  v53[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v42 = a4;
  v6 = *MEMORY[0x1E698C0C8];
  v52[0] = *MEMORY[0x1E698C0A0];
  v52[1] = v6;
  v53[0] = &unk_1F4258EC0;
  v53[1] = &unk_1F4258ED8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v8 = __71__ARFaceTrackingManager_faceTrackingOptionsFromImageData_withCallback___block_invoke_2(v7, v5);
  memset(&v43, 0, sizeof(v43));
  [v5 timestamp];
  CMTimeMakeWithSeconds(&v43, v9, 1000000000);
  time = v43;
  v10 = CMTimeCopyAsDictionary(&time, 0);
  v11 = *MEMORY[0x1E698C0B8];
  v51[0] = v10;
  v12 = *MEMORY[0x1E698C028];
  v50[0] = v11;
  v50[1] = v12;
  v13 = [v5 faceData];
  v14 = [v13 detectedFaces];
  v15 = __71__ARFaceTrackingManager_faceTrackingOptionsFromImageData_withCallback___block_invoke(v14, v14);
  v51[1] = v15;
  v50[2] = *MEMORY[0x1E698BFD0];
  v16 = *MEMORY[0x1E698C030];
  v48[0] = *MEMORY[0x1E698C068];
  v48[1] = v16;
  v49[0] = v8;
  v49[1] = v7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v51[2] = v17;
  v50[3] = *MEMORY[0x1E698BFD8];
  v18 = [v5 pixelBuffer];
  v19 = *MEMORY[0x1E698BF68];
  v51[3] = v18;
  v51[4] = MEMORY[0x1E695E110];
  v20 = *MEMORY[0x1E698BF70];
  v50[4] = v19;
  v50[5] = v20;
  v51[5] = MEMORY[0x1E695E118];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:6];
  v22 = [v21 mutableCopy];

  v23 = [v5 depthData];
  LOBYTE(v21) = v23 == 0;

  if ((v21 & 1) == 0)
  {
    v24 = [v5 depthData];
    v25 = v24;
    v26 = [v24 depthDataMap];

    if (v26)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(v26);
      if (PixelFormatType == 1717855600)
      {
        [v22 setValue:v26 forKey:*MEMORY[0x1E698C000]];
        [v22 setValue:&unk_1F42597B0 forKey:*MEMORY[0x1E698C008]];
        [v22 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E698C0A8]];
      }

      else
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARFaceTrackingManager initWithMaximumNumberOfTrackedFaces:options:];
        }

        v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
        if (_ARLogTechnique(void)::onceToken != -1)
        {
          [ARFaceTrackingManager faceTrackingOptionsFromImageData:withCallback:];
        }

        v29 = _ARLogTechnique(void)::logObj;
        v30 = v29;
        if (v28)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = AROSTypeToString(0x66646570u);
            v34 = AROSTypeToString(PixelFormatType);
            LODWORD(time.value) = 138544130;
            *(&time.value + 4) = v32;
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = self;
            HIWORD(time.epoch) = 2112;
            v45 = v33;
            v46 = 2112;
            v47 = v34;
            _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Wrong depth format. Expected %@ but received %@", &time, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = AROSTypeToString(0x66646570u);
          v38 = AROSTypeToString(PixelFormatType);
          LODWORD(time.value) = 138544130;
          *(&time.value + 4) = v36;
          LOWORD(time.flags) = 2048;
          *(&time.flags + 2) = self;
          HIWORD(time.epoch) = 2112;
          v45 = v37;
          v46 = 2112;
          v47 = v38;
          _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Wrong depth format. Expected %@ but received %@", &time, 0x2Au);
        }
      }
    }
  }

  v39 = MEMORY[0x1C691B4C0](v42);
  [v22 setValue:v39 forKey:*MEMORY[0x1E698BFC8]];

  return v22;
}

id __71__ARFaceTrackingManager_faceTrackingOptionsFromImageData_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = v2;
    obj = v2;
    v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v3)
    {
      v17 = *v20;
      v4 = *MEMORY[0x1E698C010];
      v5 = *MEMORY[0x1E698C018];
      v6 = *MEMORY[0x1E698C020];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          [v8 boundingBox];
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v28);
          v23[0] = v4;
          v10 = MEMORY[0x1E696AD98];
          [v8 rollAngleInDegrees];
          v11 = [v10 numberWithDouble:?];
          v24[0] = v11;
          v23[1] = v5;
          v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "ID")}];
          v23[2] = v6;
          v24[1] = v12;
          v24[2] = DictionaryRepresentation;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

          CFRelease(DictionaryRepresentation);
          [v18 addObject:v13];
        }

        v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v3);
    }

    v2 = v15;
  }

  return v18;
}

id __71__ARFaceTrackingManager_faceTrackingOptionsFromImageData_withCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v46[3] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  v43 = [v3 numberWithFloat:?];
  v4 = MEMORY[0x1E696AD98];
  v40 = v43;
  [v2 cameraIntrinsics];
  LODWORD(v6) = v5;
  v44 = [v4 numberWithFloat:v6];
  v7 = MEMORY[0x1E696AD98];
  v38 = v44;
  [v2 cameraIntrinsics];
  LODWORD(v9) = v8;
  v39 = [v7 numberWithFloat:v9];
  v45 = v39;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:3];
  v46[0] = v37;
  v10 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  LODWORD(v11) = HIDWORD(v11);
  v36 = [v10 numberWithFloat:v11];
  v42[0] = v36;
  v12 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  LODWORD(v14) = v13;
  v15 = [v12 numberWithFloat:v14];
  v42[1] = v15;
  v16 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  LODWORD(v18) = v17;
  v19 = [v16 numberWithFloat:v18];
  v42[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v46[1] = v20;
  v21 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  LODWORD(v23) = v22;
  v24 = [v21 numberWithFloat:v23];
  v41[0] = v24;
  v25 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  LODWORD(v27) = v26;
  v28 = [v25 numberWithFloat:v27];
  v41[1] = v28;
  v29 = MEMORY[0x1E696AD98];
  [v2 cameraIntrinsics];
  LODWORD(v31) = v30;
  v32 = [v29 numberWithFloat:v31];
  v41[2] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
  v46[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];

  return v34;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARFaceTrackingManager;
  if ([(ARFaceTrackingManager *)&v9 isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARFaceTrackingManager *)self maximumNumberOfTrackedFaces];
    v7 = v6 == [v5 maximumNumberOfTrackedFaces];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end