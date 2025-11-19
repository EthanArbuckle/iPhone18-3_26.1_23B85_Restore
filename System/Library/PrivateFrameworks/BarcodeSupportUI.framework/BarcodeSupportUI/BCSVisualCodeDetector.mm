@interface BCSVisualCodeDetector
- (BCSVisualCodeDetector)init;
- (BOOL)_processCameraFrame:(__CVBuffer *)a3 timestamp:(double)a4 cameraMatrix:(double)a5[9];
- (BOOL)_submitToAppC3D:(__CVBuffer *)a3 timestamp:(double)a4 metadata:(id)a5;
- (CGAffineTransform)_tranformWithImageOrientation:(SEL)a3;
- (CGRect)_regionOfInterest;
- (id)_estimateQRCodeAvailabilityInFrame:(__CVBuffer *)a3;
- (void)detectCodeFromBuffer:(opaqueCMSampleBuffer *)a3 completion:(id)a4;
- (void)endSession;
- (void)startSession;
@end

@implementation BCSVisualCodeDetector

- (BCSVisualCodeDetector)init
{
  v6.receiver = self;
  v6.super_class = BCSVisualCodeDetector;
  v2 = [(BCSVisualCodeDetector *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isAppC3DTracking = 0;
    [(BCSVisualCodeDetector *)v2 startSession];
    v4 = v3;
  }

  return v3;
}

- (void)detectCodeFromBuffer:(opaqueCMSampleBuffer *)a3 completion:(id)a4
{
  v6 = a4;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    v8 = ImageBuffer;
    v9 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    v10 = v9;
    if (v8 != -1 && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Detection", "start code detection", buf, 2u);
    }

    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__0;
    v39 = __Block_byref_object_dispose__0;
    v40 = 0;
    v11 = dispatch_group_create();
    memset(&v34, 0, sizeof(v34));
    CMSampleBufferGetPresentationTimeStamp(&v34, a3);
    time = v34;
    Seconds = CMTimeGetSeconds(&time);
    v13 = CMGetAttachment(a3, *MEMORY[0x277CC06B0], 0);
    v14 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    v15 = v14;
    if (v13 + 1 >= 2 && os_signpost_enabled(v14))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Detection.ACCode", "start ACCode code detection", &time, 2u);
    }

    isAppC3DTracking = self->_isAppC3DTracking;
    self->_isAppC3DTracking = 0;
    if ([(BCSVisualCodeDetector *)self _submitToAppC3D:v8 timestamp:v13 metadata:Seconds])
    {
      dispatch_group_enter(v11);
      os_unfair_lock_lock(&appcodeExtractCompletionHandlerLock);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__BCSVisualCodeDetector_detectCodeFromBuffer_completion___block_invoke;
      aBlock[3] = &unk_278D024C0;
      v32 = buf;
      v30 = v13;
      v31 = v11;
      v17 = _Block_copy(aBlock);
      appcodeExtractCompletionHandler = self->_appcodeExtractCompletionHandler;
      self->_appcodeExtractCompletionHandler = v17;

      os_unfair_lock_unlock(&appcodeExtractCompletionHandlerLock);
    }

    v19 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    v20 = v19;
    if (v8 != -1 && os_signpost_enabled(v19))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Detection.QR", "start QR code detection", &time, 2u);
    }

    v21 = [(BCSVisualCodeDetector *)self _estimateQRCodeAvailabilityInFrame:v8];
    v22 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    v23 = v22;
    if (v8 != -1 && os_signpost_enabled(v22))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v23, OS_SIGNPOST_INTERVAL_END, v8, "Detection.QR", "end QR code detection", &time, 2u);
    }

    v24 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
    v25 = v24;
    if (v8 != -1 && os_signpost_enabled(v24))
    {
      LOWORD(time.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_2419E7000, v25, OS_SIGNPOST_INTERVAL_END, v8, "Detection", "end code detection", &time, 2u);
    }

    v26 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v11, v26);
    if ([*(v36 + 5) count])
    {
      v27 = [v21 arrayByAddingObjectsFromArray:*(v36 + 5)];

      v21 = v27;
    }

    else if (v21 && [v21 count] && !isAppC3DTracking && self->_isAppC3DTracking)
    {

      v28 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        LOWORD(time.value) = 0;
        _os_log_impl(&dword_2419E7000, v28, OS_LOG_TYPE_INFO, "Tracking an app clip code, skip QR codes in frame.", &time, 2u);
      }

      v21 = 0;
    }

    v6[2](v6, v21);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6[2](v6, 0);
  }
}

void __57__BCSVisualCodeDetector_detectCodeFromBuffer_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 + 1 >= 2 && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v6, OS_SIGNPOST_INTERVAL_END, v7, "Detection.ACCode", "end ACCode code detection", v8, 2u);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)_estimateQRCodeAvailabilityInFrame:(__CVBuffer *)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CE2D50]);
  v6 = [v5 initWithCVPixelBuffer:a3 orientation:self->_imageOrientation options:MEMORY[0x277CBEC10]];
  v7 = objc_alloc_init(MEMORY[0x277CE2C58]);
  [(BCSVisualCodeDetector *)self _regionOfInterest];
  [v7 setRegionOfInterest:?];
  [v7 setRevision:1];
  v30[0] = *MEMORY[0x277CE2EA8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v7 setSymbologies:v8];

  [v7 setStopAtFirstPyramidWith2DCode:1];
  v29 = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v27 = 0;
  [v6 performRequests:v9 error:&v27];
  v10 = v27;

  v11 = [v7 results];
  v12 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [BCSVisualCodeQR alloc];
        v20 = [(BCSVisualCodeQR *)v19 initWithBarcodeObservation:v18, v23];
        [v12 addObject:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

- (CGRect)_regionOfInterest
{
  v2 = 0.15;
  v3 = 0.2;
  v4 = 0.7;
  v5 = 0.6;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGAffineTransform)_tranformWithImageOrientation:(SEL)a3
{
  switch(a4)
  {
    case 6u:
      v5 = xmmword_241A064E0;
      __asm { FMOV            V0.2D, #1.0 }

      v6 = 0.0;
      goto LABEL_7;
    case 3u:
      _Q0 = xmmword_241A06580;
      v5 = xmmword_241A06590;
      v6 = -1.0;
      goto LABEL_7;
    case 1u:
      _Q0 = xmmword_241A06590;
      v5 = xmmword_241A06680;
      v6 = 1.0;
LABEL_7:
      retstr->a = v6;
      *&retstr->b = v5;
      *&retstr->c = v5;
      *&retstr->tx = _Q0;
      return self;
  }

  v11 = MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v12;
  *&retstr->tx = *(v11 + 32);
  return self;
}

- (BOOL)_processCameraFrame:(__CVBuffer *)a3 timestamp:(double)a4 cameraMatrix:(double)a5[9]
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"orientation";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_imageOrientation];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  appCodeSession = self->_appCodeSession;
  AppC3DProcessCameraFrameData();

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_submitToAppC3D:(__CVBuffer *)a3 timestamp:(double)a4 metadata:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    [a5 getBytes:&v13 length:48];
    *buf = vcvtq_f64_f32(vzip1_s32(*v13.i8, *v14.i8));
    v17 = vcvtq_f64_f32(__PAIR64__(v13.u32[1], v15));
    v18 = vcvtq_f64_f32(vzip2_s32(*v14.i8, *&v15));
    v19 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
    v20 = *(&v15 + 2);
  }

  else
  {
    v8 = BCS_LOG_CHANNEL_PREFIXBarcodeScannerLifeCycle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2419E7000, v8, OS_LOG_TYPE_INFO, "Intrinsics metadata is nil, generate the matrix based on image dimension.", buf, 2u);
    }

    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    *buf = Width;
    *&buf[8] = 0;
    v17.f64[0] = (Width + -1.0) * 0.5;
    v17.f64[1] = 0.0;
    v18.f64[0] = Width;
    v18.f64[1] = (Height + -1.0) * 0.5;
    v19 = 0uLL;
    v20 = 1.0;
  }

  result = [(BCSVisualCodeDetector *)self _processCameraFrame:a3 timestamp:buf cameraMatrix:a4];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startSession
{
  if (!self->_appCodeSession)
  {
    AppC3DConfigCreate();
    AppC3DConfigSetTrackingMode();
    AppC3DConfigSetTrackingConfig();
    AppC3DCreate();
    AppC3DConfigRelease();
    appCodeSession = self->_appCodeSession;
    AppC3DSetUpdateCallback();
  }
}

- (void)endSession
{
  if (self->_appCodeSession)
  {
    AppC3DRelease();
    self->_appCodeSession = 0;
  }
}

@end