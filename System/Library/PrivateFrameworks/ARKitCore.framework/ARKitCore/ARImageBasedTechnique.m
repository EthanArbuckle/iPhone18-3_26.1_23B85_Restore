@interface ARImageBasedTechnique
- (ARImageBasedTechnique)init;
- (BOOL)context:(id)a3 matchesFrameReference:(id)a4;
- (id)_fullDescription;
- (id)processData:(id)a3;
- (int64_t)getDeviceOrientationFromImageData:(id)a3;
- (void)pushResultData:(id)a3 forFrame:(__CVBuffer *)a4;
- (void)pushResultData:(id)a3 forFrameReference:(id)a4;
- (void)pushResultData:(id)a3 forTimestamp:(double)a4;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
@end

@implementation ARImageBasedTechnique

- (ARImageBasedTechnique)init
{
  v12.receiver = self;
  v12.super_class = ARImageBasedTechnique;
  v2 = [(ARTechnique *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingResultData = v2->_pendingResultData;
    v2->_pendingResultData = v3;

    v5 = objc_opt_new();
    pendingFrameReferences = v2->_pendingFrameReferences;
    v2->_pendingFrameReferences = v5;

    v7 = objc_opt_new();
    pendingRequestContexts = v2->_pendingRequestContexts;
    v2->_pendingRequestContexts = v7;

    v9 = dispatch_semaphore_create(1);
    pendingRequestsSemaphore = v2->_pendingRequestsSemaphore;
    v2->_pendingRequestsSemaphore = v9;
  }

  return v2;
}

- (id)processData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 timestamp];
    v6 = [(ARTechnique *)self traceKey];
    if (ARTechnique_Image_to_Result_Timestamp_onceToken != -1)
    {
      [ARImageBasedTechnique processData:];
    }

    v7 = [ARTechnique_Image_to_Result_Timestamp_keyToCode objectForKeyedSubscript:v6];
    [v7 intValue];

    kdebug_trace();
    v8 = [(ARTechnique *)self traceKey];
    if (ARTechnique_Image_to_Result_Frame_onceToken != -1)
    {
      [ARImageBasedTechnique processData:];
    }

    v9 = [ARTechnique_Image_to_Result_Frame_keyToCode objectForKeyedSubscript:v8];
    [v9 intValue];

    [v5 pixelBuffer];
    kdebug_trace();
  }

  return v4;
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_semaphore_wait(self->_pendingRequestsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [(NSMutableArray *)self->_pendingResultData count];
  if (!v7)
  {
LABEL_9:
    if ([(NSMutableArray *)self->_pendingRequestContexts count]>= 2)
    {
      v18 = [(NSMutableArray *)self->_pendingRequestContexts firstObject];
      v19 = [v18 imageData];
      [v19 timestamp];
      v21 = a3 - v20;
      [(ARTechnique *)self requiredTimeInterval];
      v23 = v22 + v22;

      if (v21 > v23)
      {
        v24 = _ARLogTechnique_2();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [(NSMutableArray *)self->_pendingRequestContexts firstObject];
          v28 = [v27 imageData];
          [v28 timestamp];
          v40 = 138543874;
          v41 = v26;
          v42 = 2048;
          v43 = self;
          v44 = 2048;
          v45 = v29;
          _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping timed-out context: %f", &v40, 0x20u);
        }

        [(NSMutableArray *)self->_pendingRequestContexts removeObjectAtIndex:0];
      }
    }

    [(NSMutableArray *)self->_pendingRequestContexts addObject:v6];
    dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
    goto LABEL_15;
  }

  v8 = v7;
  if (v7 < 1)
  {
LABEL_6:
    v12 = _ARLogTechnique_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v6 imageData];
      [v15 timestamp];
      pendingResultData = self->_pendingResultData;
      v40 = 138544386;
      v41 = v14;
      v42 = 2048;
      v43 = self;
      v44 = 2048;
      v45 = v17;
      v46 = 2048;
      v47 = v8;
      v48 = 2112;
      v49 = pendingResultData;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Enqueuing context (%f) even though %ld results (%@) are pending", &v40, 0x34u);
    }

    goto LABEL_9;
  }

  v9 = 0;
  while (1)
  {
    v10 = [(NSMutableArray *)self->_pendingFrameReferences objectAtIndexedSubscript:v9];
    v11 = [(ARImageBasedTechnique *)self context:v6 matchesFrameReference:v10];

    if (v11)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_6;
    }
  }

  v30 = [(NSMutableArray *)self->_pendingResultData objectAtIndexedSubscript:v9];
  if (v9)
  {
    v31 = _ARLogTechnique_2();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v40 = 138543874;
      v41 = v33;
      v42 = 2048;
      v43 = self;
      v44 = 2048;
      v45 = v9;
      _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping %ld received result datas - newer data available", &v40, 0x20u);
    }
  }

  [(NSMutableArray *)self->_pendingFrameReferences removeObjectsInRange:0, v9 + 1];
  [(NSMutableArray *)self->_pendingResultData removeObjectsInRange:0, v9 + 1];
  if (!v30)
  {
    goto LABEL_9;
  }

  if ([v30 count] && -[NSMutableArray count](self->_pendingRequestContexts, "count"))
  {
    v34 = _ARLogTechnique_2();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [(NSMutableArray *)self->_pendingRequestContexts count];
      pendingRequestContexts = self->_pendingRequestContexts;
      v40 = 138544130;
      v41 = v36;
      v42 = 2048;
      v43 = self;
      v44 = 2048;
      v45 = v37;
      v46 = 2112;
      v47 = pendingRequestContexts;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping %ld skipped contexts (%@)", &v40, 0x2Au);
    }

    [(NSMutableArray *)self->_pendingRequestContexts removeAllObjects];
  }

  dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
  [(ARImageBasedTechnique *)self prepareResultData:v30 forContext:v6];
  v39 = [(ARTechnique *)self delegate];
  [v39 technique:self didOutputResultData:v30 timestamp:v6 context:a3];

LABEL_15:
}

- (void)pushResultData:(id)a3 forFrameReference:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_semaphore_wait(self->_pendingRequestsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [(NSMutableArray *)self->_pendingRequestContexts count];
  if (!v8)
  {
LABEL_9:
    [(NSMutableArray *)self->_pendingResultData addObject:v6];
    [(NSMutableArray *)self->_pendingFrameReferences addObject:v7];
    dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
    goto LABEL_10;
  }

  v9 = v8;
  if (v8 < 1)
  {
LABEL_6:
    v12 = _ARLogTechnique_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      pendingRequestContexts = self->_pendingRequestContexts;
      v27 = 138544386;
      v28 = v14;
      v29 = 2048;
      v30 = self;
      v31 = 2112;
      v32 = v6;
      v33 = 2048;
      v34 = v9;
      v35 = 2112;
      v36 = pendingRequestContexts;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Enqueuing result data (%@) even though %ld contexts are pending (%@)", &v27, 0x34u);
    }

    goto LABEL_9;
  }

  v10 = 0;
  while (1)
  {
    v11 = [(NSMutableArray *)self->_pendingRequestContexts objectAtIndexedSubscript:v10];
    if ([(ARImageBasedTechnique *)self context:v11 matchesFrameReference:v7])
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_6;
    }
  }

  if (v10)
  {
    v16 = _ARLogTechnique_2();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = self->_pendingRequestContexts;
      v27 = 138544130;
      v28 = v18;
      v29 = 2048;
      v30 = self;
      v31 = 2048;
      v32 = v10;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Result data received, skipped %ld contexts (%@)", &v27, 0x2Au);
    }
  }

  [(NSMutableArray *)self->_pendingRequestContexts removeObjectsInRange:0, v10 + 1];
  if (!v11)
  {
    goto LABEL_9;
  }

  if ([(NSMutableArray *)self->_pendingResultData count])
  {
    v20 = _ARLogTechnique_2();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [(NSMutableArray *)self->_pendingResultData count];
      pendingResultData = self->_pendingResultData;
      v27 = 138544130;
      v28 = v22;
      v29 = 2048;
      v30 = self;
      v31 = 2048;
      v32 = v23;
      v33 = 2112;
      v34 = pendingResultData;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropping %ld skipped result datas (%@)", &v27, 0x2Au);
    }

    [(NSMutableArray *)self->_pendingResultData removeAllObjects];
    [(NSMutableArray *)self->_pendingFrameReferences removeAllObjects];
  }

  dispatch_semaphore_signal(self->_pendingRequestsSemaphore);
  [(ARImageBasedTechnique *)self prepareResultData:v6 forContext:v11];
  v25 = [(ARTechnique *)self delegate];
  v26 = [v11 imageData];
  [v26 timestamp];
  [v25 technique:self didOutputResultData:v6 timestamp:v11 context:?];

LABEL_10:
}

- (void)pushResultData:(id)a3 forFrame:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = [(ARTechnique *)self traceKey];
  if (ARTechnique_Image_to_Result_FrameEnd_onceToken != -1)
  {
    [ARImageBasedTechnique pushResultData:forFrame:];
  }

  v8 = [ARTechnique_Image_to_Result_FrameEnd_keyToCode objectForKeyedSubscript:v7];
  [v8 intValue];

  kdebug_trace();
  v9 = [MEMORY[0x1E696B098] valueWithPointer:a4];
  [(ARImageBasedTechnique *)self pushResultData:v6 forFrameReference:v9];
}

- (void)pushResultData:(id)a3 forTimestamp:(double)a4
{
  v6 = a3;
  v7 = [(ARTechnique *)self traceKey];
  if (ARTechnique_Image_to_Result_TimestampEnd_onceToken != -1)
  {
    [ARImageBasedTechnique pushResultData:forTimestamp:];
  }

  v8 = [ARTechnique_Image_to_Result_TimestampEnd_keyToCode objectForKeyedSubscript:v7];
  [v8 intValue];

  kdebug_trace();
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [(ARImageBasedTechnique *)self pushResultData:v6 forFrameReference:v9];
}

- (BOOL)context:(id)a3 matchesFrameReference:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    v8 = v7;
    v9 = [v5 imageData];
    [v9 timestamp];
    v11 = v8 == v10;
  }

  else
  {
    if (![v6 pointerValue])
    {
      v11 = 1;
      goto LABEL_6;
    }

    v9 = [v5 imageData];
    v11 = [v9 matchesPixelBufferPointerRecursively:{objc_msgSend(v6, "pointerValue")}];
  }

LABEL_6:
  return v11;
}

- (id)_fullDescription
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v27.receiver = self;
  v27.super_class = ARImageBasedTechnique;
  v4 = [(ARTechnique *)&v27 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if ([(NSMutableArray *)self->_pendingResultData count])
  {
    v6 = [(NSMutableArray *)self->_pendingResultData description];
    v7 = [v6 description];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
    [v5 appendFormat:@"\tPendingResultData: %@\n", v8];
  }

  else
  {
    [v5 appendFormat:@"\tPendingResultData: None\n"];
  }

  if ([(NSMutableArray *)self->_pendingFrameReferences count])
  {
    v9 = [(NSMutableArray *)self->_pendingFrameReferences description];
    v10 = [v9 description];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
    [v5 appendFormat:@"\tPendingFrameReferences: %@\n", v11];
  }

  else
  {
    [v5 appendFormat:@"\tPendingFrameReferences: None\n"];
  }

  if ([(NSMutableArray *)self->_pendingRequestContexts count])
  {
    [v5 appendFormat:@"\tPendingRequestContexts:\n"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_pendingRequestContexts;
    v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 1;
      v15 = *v24;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v14 = (v17 + 1);
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d: %@\n", v17, *(*(&v23 + 1) + 8 * v16)];
          v19 = [v18 description];
          v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
          [v5 appendFormat:@"%@", v20];

          ++v16;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [v5 appendFormat:@"\tPendingRequestContexts: None\n"];
  }

  return v5;
}

- (int64_t)getDeviceOrientationFromImageData:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceOrientation];
  if ((v4 - 1) >= 4)
  {
    [ARImageBasedTechnique getDeviceOrientationFromImageData:];
  }

  v5 = v4;

  return v5;
}

@end