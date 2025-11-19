@interface ARQATracer
+ (id)traceOutputDirectory;
- (ARQATracer)init;
- (ARQATracerDelegate)delegate;
- (BOOL)_shouldDumpSemanticData;
- (BOOL)isSemanticSegmentationDataAvailableForSession:(id)a3;
- (CGPoint)offset;
- (__CVBuffer)_createRecordablePixelBufferFromSegmentationBuffer:(__CVBuffer *)a3;
- (__CVBuffer)_createRecordablePixelBufferFromSemanticsBuffer:(__CVBuffer *)a3;
- (void)dealloc;
- (void)flushDataBufferToFile;
- (void)receiveDefaults;
- (void)replaySensorDidFinishReplayingData;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)start:(id)a3;
- (void)stop;
- (void)trace:(id)a3 forKey:(id)a4;
- (void)traceRaycastQuery:(id)a3;
- (void)traceRaycastResults:(id)a3;
- (void)update:(id)a3 session:(id)a4;
- (void)writeJSONObjectToStream:(id)a3 prefix:(id)a4;
- (void)writeStringToOutputStream:(id)a3;
@end

@implementation ARQATracer

- (ARQATracer)init
{
  v25.receiver = self;
  v25.super_class = ARQATracer;
  v2 = [(ARQATracer *)&v25 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    traceHeader = v2->_traceHeader;
    v2->_traceHeader = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.arQATracer", v5);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.arQATracer.segmentation", v8);
    segmentationVideoQueue = v2->_segmentationVideoQueue;
    v2->_segmentationVideoQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.arQATracer.semantics", v11);
    semanticsVideoQueue = v2->_semanticsVideoQueue;
    v2->_semanticsVideoQueue = v12;

    v14 = [objc_opt_class() traceOutputDirectory];
    v15 = [v14 stringByAppendingPathComponent:@"data.json"];
    [(ARQATracer *)v2 setTraceOutputFilePath:v15];

    v16 = objc_alloc(MEMORY[0x1E695DFC0]);
    v17 = [(ARQATracer *)v2 traceOutputFilePath];
    v18 = [v16 initToFileAtPath:v17 append:0];
    framesStreamToFile = v2->_framesStreamToFile;
    v2->_framesStreamToFile = v18;

    v20 = objc_opt_new();
    dataBuffer = v2->_dataBuffer;
    v2->_dataBuffer = v20;

    v2->_additionalResultsLock._os_unfair_lock_opaque = 0;
    v22 = [MEMORY[0x1E695DF90] dictionary];
    additionalResults = v2->_additionalResults;
    v2->_additionalResults = v22;
  }

  return v2;
}

- (void)dealloc
{
  segmentationYUVPixelBufferPool = self->_segmentationYUVPixelBufferPool;
  if (segmentationYUVPixelBufferPool)
  {
    CVPixelBufferPoolRelease(segmentationYUVPixelBufferPool);
    self->_segmentationYUVPixelBufferPool = 0;
  }

  semanticsYUVPixelBufferPool = self->_semanticsYUVPixelBufferPool;
  if (semanticsYUVPixelBufferPool)
  {
    CVPixelBufferPoolRelease(semanticsYUVPixelBufferPool);
    self->_semanticsYUVPixelBufferPool = 0;
  }

  segmentationTransferSession = self->_segmentationTransferSession;
  if (segmentationTransferSession)
  {
    VTPixelTransferSessionInvalidate(segmentationTransferSession);
    v6 = self->_segmentationTransferSession;
    if (v6)
    {
      CFRelease(v6);
    }

    self->_segmentationTransferSession = 0;
  }

  v7.receiver = self;
  v7.super_class = ARQATracer;
  [(ARQATracer *)&v7 dealloc];
}

- (void)traceRaycastQuery:(id)a3
{
  v4 = [ARQAHelper dictionaryFromRaycastQuery:a3];
  raycastQueryData = self->_raycastQueryData;
  self->_raycastQueryData = v4;
}

- (void)traceRaycastResults:(id)a3
{
  v4 = [ARQAHelper arrayFromRaycastResults:a3];
  raycastResultData = self->_raycastResultData;
  self->_raycastResultData = v4;
}

- (void)trace:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_additionalResultsLock);
  v7 = [(ARQATracer *)self additionalResults];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(ARQATracer *)self additionalResults];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = [v13 encodeToDictionary];
    [v10 addObject:v11];
  }

  else
  {
    v12 = MEMORY[0x1E695DF70];
    v9 = [v13 encodeToDictionary];
    v10 = [v12 arrayWithObject:v9];
    v11 = [(ARQATracer *)self additionalResults];
    [v11 setObject:v10 forKeyedSubscript:v6];
  }

  os_unfair_lock_unlock(&self->_additionalResultsLock);
}

- (void)receiveDefaults
{
  v3 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.session.qatracing.screenRecording"];
  v13 = v3;
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  [(ARQATracer *)self setRecordScreen:v4];
  v5 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.session.qatracing.forceQuitApp"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  [(ARQATracer *)self setForceQuitApp:v7];
  v8 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.session.qatracing.framesLabelOffset"];
  v9 = [v8 componentsSeparatedByString:{@", "}];
  if ([v9 count] == 2)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 integerValue];
    v12 = [v9 objectAtIndexedSubscript:1];
    -[ARQATracer setOffset:](self, "setOffset:", v11, [v12 integerValue]);
  }
}

- (void)writeJSONObjectToStream:(id)a3 prefix:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(ARQATracer *)self writeStringToOutputStream:v7];
  }

  v13 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:&v13];
  v9 = v13;
  [(NSMutableData *)self->_dataBuffer appendData:v8];

  if (v9)
  {
    v10 = _ARLogGeneral_35();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543874;
      v15 = v12;
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error serializing JSON with error %@", buf, 0x20u);
    }

    [(ARQATracer *)self writeStringToOutputStream:@"{}"];
  }
}

- (void)writeStringToOutputStream:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  [(NSMutableData *)self->_dataBuffer appendData:v4];
}

- (void)flushDataBufferToFile
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NSOutputStream *)self->_framesStreamToFile write:[(NSMutableData *)self->_dataBuffer bytes] maxLength:[(NSMutableData *)self->_dataBuffer length]];
  if (v3 != [(NSMutableData *)self->_dataBuffer length])
  {
    v4 = _ARLogGeneral_35();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138543618;
      v8 = v6;
      v9 = 2048;
      v10 = self;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Not all bytes could be written to file", &v7, 0x16u);
    }
  }

  [(NSMutableData *)self->_dataBuffer setLength:0];
}

- (void)start:(id)a3
{
  v4 = a3;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __20__ARQATracer_start___block_invoke;
  v7[3] = &unk_1E817BEC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, v7);
}

void __20__ARQATracer_start___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v2 = _ARLogGeneral_35();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      *buf = 138543618;
      v44 = v4;
      v45 = 2048;
      v46 = v5;
      _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Start", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 1;
    [*(*(a1 + 32) + 40) open];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{version:%@, frames:[", @"1.1"];
    [v6 writeStringToOutputStream:v7];

    v8 = [*(a1 + 40) configuration];
    v9 = [v8 replaySensor];

    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 setTraceReplaySensorDelegate:*(a1 + 32)];
    }

    [*(a1 + 32) receiveDefaults];
    v10 = [*(a1 + 40) configuration];
    v11 = [v10 frameSemantics];

    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [objc_opt_class() traceOutputDirectory];
      v14 = [v12 stringWithFormat:@"%@/segmentation.mov", v13];

      v15 = _ARLogGeneral_35();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = *(a1 + 32);
        *buf = 138543874;
        v44 = v17;
        v45 = 2048;
        v46 = v18;
        v47 = 2114;
        v48 = v14;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recording segmentation output to %{public}@", buf, 0x20u);
      }

      v19 = objc_alloc(MEMORY[0x1E698BEC8]);
      v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      v21 = [v19 initWithFileURL:v20 expectedFrameRate:MEMORY[0x1E695E0F8] fileSummary:60.0];
      v22 = *(a1 + 32);
      v23 = *(v22 + 56);
      *(v22 + 56) = v21;

      [*(*(a1 + 32) + 56) registerStreamID:@"Segmentation" withConfigObject:0];
    }

    if ([*(a1 + 32) _shouldDumpSemanticData] && objc_msgSend(*(a1 + 32), "isSemanticSegmentationDataAvailableForSession:", *(a1 + 40)))
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = [objc_opt_class() traceOutputDirectory];
      v26 = [v24 stringWithFormat:@"%@/semantics.mov", v25];

      v27 = _ARLogGeneral_35();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = *(a1 + 32);
        *buf = 138543874;
        v44 = v29;
        v45 = 2048;
        v46 = v30;
        v47 = 2114;
        v48 = v26;
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Recording semantics output to %{public}@", buf, 0x20u);
      }

      v31 = objc_alloc(MEMORY[0x1E698BEC8]);
      v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:v26];
      v33 = [v31 initWithFileURL:v32 expectedFrameRate:MEMORY[0x1E695E0F8] fileSummary:10.0];
      v34 = *(a1 + 32);
      v35 = *(v34 + 64);
      *(v34 + 64) = v33;

      [*(*(a1 + 32) + 64) registerStreamID:@"Semantics" withConfigObject:0];
    }

    v36 = [*(a1 + 40) configuration];
    v37 = [*(a1 + 40) technique];
    v38 = [ARQAHelper headerInformationWithConfiguration:v36 technique:v37];
    v39 = *(a1 + 32);
    v40 = *(v39 + 24);
    *(v39 + 24) = v38;

    objc_initWeak(buf, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __20__ARQATracer_start___block_invoke_44;
    block[3] = &unk_1E817D9C0;
    block[4] = *(a1 + 32);
    objc_copyWeak(&v42, buf);
    dispatch_sync(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }
}

void __20__ARQATracer_start___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 136));
    [*(a1 + 32) offset];
    [v4 getFrameLabelFrameForOffset:?];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f", v6, v8];
    [*(*(a1 + 32) + 24) setObject:v13 forKeyedSubscript:@"frameLabelOffset"];

    v14 = v10;
    v15 = v12;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f", v14, v15];
    [*(*(a1 + 32) + 24) setObject:v16 forKeyedSubscript:@"frameLabelSize"];
  }

  v17 = objc_loadWeakRetained((*(a1 + 32) + 136));
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained((*(a1 + 32) + 136));
    [v19 getDeviceViewSize];
    v21 = v20;
    v23 = v22;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f, %.f", v21, v23];
    [*(*(a1 + 32) + 24) setObject:v24 forKeyedSubscript:@"deviceViewSize"];
  }

  v25 = objc_loadWeakRetained((*(a1 + 32) + 136));
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained((*(a1 + 32) + 136));
    v28 = [v27 getRendererDescription];
    [*(*(a1 + 32) + 24) setObject:v28 forKeyedSubscript:@"rendererDescription"];
  }

  v29 = NSSelectorFromString(&cfstr_Startscreenrec.isa);
  v30 = objc_loadWeakRetained((a1 + 40));
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = *(a1 + 32);

    [v32 performSelector:v29];
  }
}

- (void)stop
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__ARQATracer_stop__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

void __18__ARQATracer_stop__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = _ARLogGeneral_35();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    *buf = 138543618;
    v47 = v4;
    v48 = 2048;
    v49 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stop requested", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 16);
  v7 = _ARLogGeneral_35();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      *buf = 138543618;
      v47 = v10;
      v48 = 2048;
      v49 = v11;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopping", buf, 0x16u);
    }

    *(*(a1 + 32) + 16) = 0;
    [*(a1 + 32) writeStringToOutputStream:@"]"];
    v12 = [*(a1 + 32) additionalResults];
    v13 = [v12 count];

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v14 additionalResults];
      [v14 writeJSONObjectToStream:v15 prefix:{@", additionalData:"}];
    }

    [*(a1 + 32) writeJSONObjectToStream:*(*(a1 + 32) + 24) prefix:{@", header:"}];
    [*(a1 + 32) writeStringToOutputStream:@"}"];
    [*(a1 + 32) flushDataBufferToFile];
    [*(*(a1 + 32) + 40) close];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained((*(a1 + 32) + 136));
      v19 = *(a1 + 32);
      v20 = [v19 traceOutputFilePath];
      [v18 tracer:v19 finishedWritingJSONToPath:v20];
    }

    v21 = *(a1 + 32);
    v22 = v21[7];
    if (v22)
    {
      v45 = 0;
      [v22 finishWriting:&v45];
      v23 = v45;
      if (v23)
      {
        v24 = _ARLogGeneral_35();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = *(a1 + 32);
          *buf = 138543618;
          v47 = v26;
          v48 = 2048;
          v49 = v27;
          _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not write segmentation video", buf, 0x16u);
        }
      }

      v21 = *(a1 + 32);
    }

    v28 = v21[8];
    if (v28)
    {
      v44 = 0;
      [v28 finishWriting:&v44];
      v29 = v44;
      if (v29)
      {
        v30 = _ARLogGeneral_35();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = *(a1 + 32);
          *buf = 138543618;
          v47 = v32;
          v48 = 2048;
          v49 = v33;
          _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not write semantics video", buf, 0x16u);
        }
      }

      v21 = *(a1 + 32);
    }

    if ([v21 forceQuitApp])
    {
      v34 = _ARLogGeneral_35();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = *(a1 + 32);
        *buf = 138543618;
        v47 = v36;
        v48 = 2048;
        v49 = v37;
        _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Requesting App termination on ARQATracer stop", buf, 0x16u);
      }

      v38 = [*(a1 + 32) delegate];
      [v38 requestDelayedAppTermination];
    }

    objc_initWeak(buf, *(a1 + 32));
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __18__ARQATracer_stop__block_invoke_84;
    v42[3] = &unk_1E817BDB0;
    objc_copyWeak(&v43, buf);
    v42[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v42);
    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = *(a1 + 32);
      *buf = 138543618;
      v47 = v40;
      v48 = 2048;
      v49 = v41;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: User default for tracing is not set or not tracing", buf, 0x16u);
    }
  }
}

void __18__ARQATracer_stop__block_invoke_84(uint64_t a1)
{
  v2 = NSSelectorFromString(&cfstr_Stopscreenreco.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = *(a1 + 32);

    [v5 performSelector:v2];
  }
}

- (void)update:(id)a3 session:(id)a4
{
  v5 = a3;
  processingQueue = self->_processingQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__ARQATracer_update_session___block_invoke;
  v8[3] = &unk_1E817BEC8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(processingQueue, v8);
}

void __29__ARQATracer_update_session___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) == 1)
  {
    v2 = MEMORY[0x1E695DF90];
    v3 = [ARQAHelper traceFrameData:"traceFrameData:withFrameIndex:writeOBJ:" withFrameIndex:*(a1 + 40) writeOBJ:?];
    v4 = [v2 dictionaryWithDictionary:v3];

    if ([*(a1 + 40) segmentationBuffer])
    {
      v5 = *(*(a1 + 32) + 88);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__ARQATracer_update_session___block_invoke_2;
      block[3] = &unk_1E817BEC8;
      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v37 = v6;
      v38 = v7;
      dispatch_async(v5, block);
    }

    if ([*(a1 + 32) _shouldDumpSemanticData])
    {
      v8 = [*(a1 + 40) rawSceneUnderstandingData];
      v9 = [v8 semanticSegmentationBuffer];

      if (v9)
      {
        v10 = *(*(a1 + 32) + 96);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __29__ARQATracer_update_session___block_invoke_3;
        v33[3] = &unk_1E817BEC8;
        v11 = *(a1 + 40);
        v12 = *(a1 + 32);
        v34 = v11;
        v35 = v12;
        dispatch_async(v10, v33);
      }
    }

    v13 = *(a1 + 32);
    v14 = v13[14];
    if (v14)
    {
      [v4 setObject:v14 forKeyedSubscript:@"raycastQueryData"];
      v15 = *(a1 + 32);
      v16 = *(v15 + 112);
      *(v15 + 112) = 0;

      v13 = *(a1 + 32);
    }

    v17 = v13[15];
    if (v17)
    {
      [v4 setObject:v17 forKeyedSubscript:@"raycastResultData"];
      v18 = *(a1 + 32);
      v19 = *(v18 + 120);
      *(v18 + 120) = 0;

      v13 = *(a1 + 32);
    }

    v20 = [v13 additionalResults];
    v21 = [v20 count];

    if (v21)
    {
      os_unfair_lock_lock((*(a1 + 32) + 128));
      v22 = [*(a1 + 32) additionalResults];
      [v4 addEntriesFromDictionary:v22];

      v23 = [*(a1 + 32) additionalResults];
      [v23 removeAllObjects];

      os_unfair_lock_unlock((*(a1 + 32) + 128));
    }

    v24 = *(a1 + 32);
    if (v24[1])
    {
      v25 = @",";
    }

    else
    {
      v25 = 0;
    }

    [v24 writeJSONObjectToStream:v4 prefix:v25];
    if ([*(*(a1 + 32) + 32) length] >= 0x30D41)
    {
      [*(a1 + 32) flushDataBufferToFile];
    }

    v26 = *(a1 + 32);
    v27 = v26[1];
    objc_initWeak(&location, v26);
    ++*(*(a1 + 32) + 8);
    v28 = [*(a1 + 32) delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __29__ARQATracer_update_session___block_invoke_4;
      v30[3] = &unk_1E817C740;
      objc_copyWeak(v31, &location);
      v30[4] = *(a1 + 32);
      v31[1] = v27;
      dispatch_async(MEMORY[0x1E69E96A0], v30);
      objc_destroyWeak(v31);
    }

    objc_destroyWeak(&location);
  }
}

void __29__ARQATracer_update_session___block_invoke_2(uint64_t a1)
{
  v17 = 0uLL;
  v18 = 0;
  v2 = MEMORY[0x1E698BEC8];
  [*(a1 + 32) timestamp];
  [v2 cmTimeFromTimestamp:?];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) camera];
  [v3 intrinsics];
  DWORD2(v14) = v4;
  DWORD2(v15) = v5;
  *&v14 = v6;
  *&v15 = v7;
  DWORD2(v16) = v8;
  *&v16 = v9;

  v10 = [*(a1 + 40) _createRecordablePixelBufferFromSegmentationBuffer:{objc_msgSend(*(a1 + 32), "segmentationBuffer")}];
  v11 = *(*(a1 + 40) + 56);
  v12 = v17;
  v13 = v18;
  [v11 processPixelBuffer:v10 withTimeStamp:&v12 intrinsics:&v14 exposureTime:@"Segmentation" streamID:0.0];
  CVPixelBufferRelease(v10);
}

void __29__ARQATracer_update_session___block_invoke_3(uint64_t a1)
{
  v19 = 0uLL;
  v20 = 0;
  v2 = MEMORY[0x1E698BEC8];
  [*(a1 + 32) timestamp];
  [v2 cmTimeFromTimestamp:?];
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) camera];
  [v3 intrinsics];
  DWORD2(v16) = v4;
  DWORD2(v17) = v5;
  *&v16 = v6;
  *&v17 = v7;
  DWORD2(v18) = v8;
  *&v18 = v9;

  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) rawSceneUnderstandingData];
  v12 = [v10 _createRecordablePixelBufferFromSemanticsBuffer:{objc_msgSend(v11, "semanticSegmentationBuffer")}];

  v13 = *(*(a1 + 40) + 64);
  v14 = v19;
  v15 = v20;
  [v13 processPixelBuffer:v12 withTimeStamp:&v14 intrinsics:&v16 exposureTime:@"Semantics" streamID:0.0];
  CVPixelBufferRelease(v12);
}

void __29__ARQATracer_update_session___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 tracer:*(a1 + 32) processedFrameNumber:*(a1 + 48)];
}

+ (id)traceOutputDirectory
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.session.qatracing.filepath"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 infoDictionary];
    v8 = [v7 objectForKey:*MEMORY[0x1E695E4E8]];

    v9 = NSTemporaryDirectory();
    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = @"UnitTest";
    }

    v5 = [v9 stringByAppendingPathComponent:v11];
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v12 fileExistsAtPath:v5] & 1) == 0)
  {
    v24 = 0;
    [v12 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v24];
    v13 = v24;
    v14 = _ARLogGeneral_35();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543874;
        v26 = v17;
        v27 = 2048;
        v28 = a1;
        v29 = 2112;
        v30 = v13;
        v18 = "%{public}@ <%p>: Error creating directory: %@";
        v19 = v15;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_13:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      *buf = 138543874;
      v26 = v17;
      v27 = 2048;
      v28 = a1;
      v29 = 2114;
      v30 = v5;
      v18 = "%{public}@ <%p>: Created tracing output directory: %{public}@";
      v19 = v15;
      v20 = OS_LOG_TYPE_DEBUG;
      goto LABEL_13;
    }
  }

  v22 = v5;

  return v5;
}

- (BOOL)isSemanticSegmentationDataAvailableForSession:(id)a3
{
  v3 = a3;
  v4 = [v3 configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 configuration];
  v7 = v6;
  if (isKindOfClass)
  {
    v8 = [v6 planeDetection] && (objc_msgSend(v7, "isMLModelEnabled") & 1) != 0 || objc_msgSend(v7, "sceneReconstruction") != 0;
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    v10 = [v3 configuration];
    v7 = v10;
    if ((v9 & 1) == 0)
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v10 = [v3 configuration];
      v7 = v10;
    }

    if ([v10 planeDetection])
    {
      v8 = [v7 isMLModelEnabled];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_14:
  return v8;
}

- (BOOL)_shouldDumpSemanticData
{
  if (_shouldDumpSemanticData_onceToken != -1)
  {
    [ARQATracer _shouldDumpSemanticData];
  }

  return _shouldDumpSemanticData_dumpSemantics;
}

BOOL __37__ARQATracer__shouldDumpSemanticData__block_invoke()
{
  result = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.qatracing.dumpSemanticSegmantationData"];
  _shouldDumpSemanticData_dumpSemantics = result;
  return result;
}

- (void)replaySensorDidFinishReplayingData
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral_35();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replay finished", &v6, 0x16u);
  }

  [(ARQATracer *)self stop];
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(ARQATracer *)self start:v6];
  }

  else
  {
    v7 = v6;
    [(ARQATracer *)self stop];
  }

  v6 = v7;
LABEL_6:
}

- (__CVBuffer)_createRecordablePixelBufferFromSegmentationBuffer:(__CVBuffer *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  p_segmentationYUVPixelBufferPool = &self->_segmentationYUVPixelBufferPool;
  if (!self->_segmentationYUVPixelBufferPool)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (ar_pixelBufferPoolCreateNew(Width, Height, 875704422, p_segmentationYUVPixelBufferPool))
    {
      v7 = _ARLogGeneral_35();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v9 = NSStringFromClass(v13);
        *buf = 138543618;
        v21 = v9;
        v22 = 2048;
        v23 = self;
        v10 = "%{public}@ <%p>: Could not create pixel buffer pool.";
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v6 = *MEMORY[0x1E695E480];
  if (!self->_segmentationTransferSession && VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &self->_segmentationTransferSession))
  {
    v7 = _ARLogGeneral_35();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v9 = NSStringFromClass(v14);
      *buf = 138543618;
      v21 = v9;
      v22 = 2048;
      v23 = self;
      v10 = "%{public}@ <%p>: Could not create VTPixelTransferSession.";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(v6, *p_segmentationYUVPixelBufferPool, &pixelBufferOut))
  {
    v7 = _ARLogGeneral_35();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v21 = v9;
      v22 = 2048;
      v23 = self;
      v10 = "%{public}@ <%p>: Could not create pixel buffer.";
LABEL_12:
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    }

LABEL_13:

    return 0;
  }

  if (VTPixelTransferSessionTransferImage(self->_segmentationTransferSession, a3, pixelBufferOut))
  {
    v16 = _ARLogGeneral_35();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v21 = v18;
      v22 = 2048;
      v23 = self;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create transfer pixel buffer.", buf, 0x16u);
    }
  }

  return pixelBufferOut;
}

- (__CVBuffer)_createRecordablePixelBufferFromSemanticsBuffer:(__CVBuffer *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  p_semanticsYUVPixelBufferPool = &self->_semanticsYUVPixelBufferPool;
  semanticsYUVPixelBufferPool = self->_semanticsYUVPixelBufferPool;
  if (!semanticsYUVPixelBufferPool)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (ar_pixelBufferPoolCreateNew(Width, Height, 1111970369, p_semanticsYUVPixelBufferPool))
    {
      v7 = _ARLogGeneral_35();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v9 = NSStringFromClass(v13);
        *buf = 138543618;
        v17 = v9;
        v18 = 2048;
        v19 = self;
        v10 = "%{public}@ <%p>: Could not create pixel buffer pool.";
        goto LABEL_8;
      }

LABEL_9:

      return 0;
    }

    semanticsYUVPixelBufferPool = *p_semanticsYUVPixelBufferPool;
  }

  pixelBufferOut = 0;
  if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], semanticsYUVPixelBufferPool, &pixelBufferOut))
  {
    v7 = _ARLogGeneral_35();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v17 = v9;
      v18 = 2048;
      v19 = self;
      v10 = "%{public}@ <%p>: Could not create pixel buffer.";
LABEL_8:
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  ARCreatePixelBufferFromSourceWithPixelConverter(a3, 0x42475241u, &pixelBufferOut, &__block_literal_global_103);
  return pixelBufferOut;
}

int8x8_t __62__ARQATracer__createRecordablePixelBufferFromSemanticsBuffer___block_invoke(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  v5 = ARCV3DColorComponentsForRawSemantics(*a2);
  v6 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(vcvtq_f64_f32(vext_s8(v5.n128_u64[0], *&vextq_s8(v5, v5, 8uLL), 4uLL)), vdupq_n_s64(0x406FE00000000000uLL))));
  v7 = (v5.n128_f32[0] * 255.0);
  v5.n128_u16[3] = 255;
  v5.n128_u64[1] = 0xFF00FF00FF00FFLL;
  v5.n128_u16[0] = v6.u16[2];
  v5.n128_u16[1] = v6.i16[0];
  v5.n128_u16[2] = v7;
  result = vmovn_s16(v5);
  *a4 = result.i32[0];
  return result;
}

- (ARQATracerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end