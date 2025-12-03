@interface _OSDH9Camera
- (BOOL)_enableMultiVideoOutput:(id)output error:(id *)error;
- (BOOL)_setStreamHandlers:(id)handlers error:(id *)error;
- (BOOL)enableTestPatternPN9:(BOOL)n9 error:(id *)error;
- (BOOL)getDeviceAndStreams:(id *)streams;
- (BOOL)setFormatIndex:(id)index error:(id *)error;
- (BOOL)syncSlave:(id)slave skipFrames:(BOOL)frames enableOutput:(BOOL)output error:(id *)error;
- (_OSDH9Camera)initWithCaptureDevice:(id)device cameraSource:(unint64_t)source error:(id *)error;
- (id)errorCountForType:(unint64_t)type error:(id *)error;
- (id)supportedFormats:(id *)formats;
- (id)useMaxAvailableDataRate:(id *)rate;
- (void)_processBuffer:(__CVBuffer *)buffer;
- (void)_receivedPixelBuffer:(__CVBuffer *)buffer time:(id *)time;
@end

@implementation _OSDH9Camera

- (_OSDH9Camera)initWithCaptureDevice:(id)device cameraSource:(unint64_t)source error:(id *)error
{
  v11.receiver = self;
  v11.super_class = _OSDH9Camera;
  v5 = [(_OSDHxCamera *)&v11 initWithCaptureDevice:device cameraSource:source error:error];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v8 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-4009.H9Camera.workQueue", v7);
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;
  }

  return v5;
}

- (BOOL)getDeviceAndStreams:(id *)streams
{
  v10.receiver = self;
  v10.super_class = _OSDH9Camera;
  if (![(_OSDHxCamera *)&v10 getDeviceAndStreams:?])
  {
    return 0;
  }

  captureStream = [(_OSDHxCamera *)self captureStream];
  v6 = [(_OSDH9Camera *)self _enableMultiVideoOutput:captureStream error:streams];

  if (!v6)
  {
    return 0;
  }

  captureStream2 = [(_OSDHxCamera *)self captureStream];
  v8 = [(_OSDH9Camera *)self _setStreamHandlers:captureStream2 error:streams];

  return v8;
}

- (BOOL)_enableMultiVideoOutput:(id)output error:(id *)error
{
  outputCopy = output;
  if ([outputCopy setProperty:kFigCaptureStreamProperty_MultipleOutputSupportEnabled BOOLean:1 error:error])
  {
    v9 = kFigCaptureStreamVideoOutputID_PrimaryScaler;
    v10 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [outputCopy setProperty:kFigCaptureStreamProperty_VideoOutputsEnabled value:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setStreamHandlers:(id)handlers error:(id *)error
{
  handlersCopy = handlers;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007478;
  v16[3] = &unk_100010630;
  objc_copyWeak(&v17, &location);
  v7 = objc_retainBlock(v16);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000074D8;
  v14[3] = &unk_100010658;
  objc_copyWeak(&v15, &location);
  v8 = objc_retainBlock(v14);
  v21[0] = kFigCaptureStreamVideoOutputHandlerKey_PixelBufferHandler;
  v9 = objc_retainBlock(v7);
  v22[0] = v9;
  v21[1] = kFigCaptureStreamVideoOutputHandlerKey_EventHandler;
  v10 = objc_retainBlock(v8);
  v22[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

  v19 = kFigCaptureStreamVideoOutputID_PrimaryScaler;
  v20 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  LOBYTE(error) = [handlersCopy setProperty:kFigCaptureStreamProperty_VideoOutputHandlers value:v12 error:error];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return error;
}

- (BOOL)setFormatIndex:(id)index error:(id *)error
{
  indexCopy = index;
  captureStream = [(_OSDHxCamera *)self captureStream];
  v8 = [captureStream setProperty:kFigCaptureStreamProperty_FormatIndex number:indexCopy error:error];

  if (v8)
  {
    [(_OSDH9Camera *)self setFormatIndex:indexCopy];
  }

  return v8;
}

- (id)errorCountForType:(unint64_t)type error:(id *)error
{
  if (type <= 2)
  {
    if (type == 1)
    {
      v5 = &kFigCaptureStreamPropertyValue_MIPIErrorCount;
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_17;
      }

      v5 = &kFigCaptureStreamPropertyValue_I2CErrorCount;
    }

    v4 = *v5;
    goto LABEL_13;
  }

  switch(type)
  {
    case 3uLL:
      v4 = @"SIFErrorCount";
      goto LABEL_13;
    case 4uLL:
      v4 = @"UARTErrorCount";
      goto LABEL_13;
    case 5uLL:
      v4 = @"LPDPErrorCount";
LABEL_13:
      v6 = [(_OSDHxCamera *)self _getStreamErrorFor:v4 error:error];
      goto LABEL_14;
  }

LABEL_17:
  [OSDError setError:error withDomain:@"com.apple.DiagnosticsService.Diagnostic-4009.OSDCameraCenter" withCode:1 format:@"%@ >> Camera has no error for type %lu", self, type];
  v6 = 0;
LABEL_14:

  return v6;
}

- (id)supportedFormats:(id *)formats
{
  captureStream = [(_OSDHxCamera *)self captureStream];
  v5 = [captureStream copyProperty:kFigCaptureStreamProperty_SupportedFormatsArray error:formats];

  return v5;
}

- (id)useMaxAvailableDataRate:(id *)rate
{
  captureStream = [(_OSDHxCamera *)self captureStream];
  v6 = [captureStream copyProperty:@"SupportedLinkFrequencies" error:rate];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 count];
    *buf = 134218242;
    v26 = v8;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu available lane frequencies: %@", buf, 0x16u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007A00;
  v16[3] = &unk_100010680;
  v16[4] = &v17;
  v16[5] = &v21;
  [v6 enumerateObjectsUsingBlock:v16];
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v22[3];
    *buf = 134217984;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Greatest index is %lu", buf, 0xCu);
  }

  captureStream2 = [(_OSDHxCamera *)self captureStream];
  v12 = [NSNumber numberWithUnsignedInteger:v22[3]];
  v13 = [captureStream2 setProperty:@"LinkFrequencyIndex" number:v12 error:rate];

  if (v13)
  {
    v14 = [NSNumber numberWithDouble:v18[3]];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v14;
}

- (BOOL)syncSlave:(id)slave skipFrames:(BOOL)frames enableOutput:(BOOL)output error:(id *)error
{
  outputCopy = output;
  framesCopy = frames;
  slaveCopy = slave;
  captureStream = [(_OSDHxCamera *)self captureStream];
  v26[0] = [captureStream streamRef];
  captureStream2 = [slaveCopy captureStream];
  v26[1] = [captureStream2 streamRef];
  v13 = [NSArray arrayWithObjects:v26 count:2];

  captureDevice = [(_OSDHxCamera *)self captureDevice];
  LODWORD(captureStream2) = [captureDevice setProperty:kFigCaptureSynchronizedStreamsGroupProperty_ActiveStreams value:v13 error:error];

  if (!captureStream2)
  {
    goto LABEL_9;
  }

  captureDevice2 = [(_OSDHxCamera *)self captureDevice];
  v16 = kFigCaptureSynchronizedStreamsGroupProperty_MasterConfiguration;
  captureStream3 = [(_OSDHxCamera *)self captureStream];
  LODWORD(v16) = [captureDevice2 setProperty:v16 value:objc_msgSend(captureStream3 error:{"streamRef"), error}];

  if (v16)
  {
    v18 = &__kCFBooleanFalse;
    v24[0] = kFigCaptureStreamSynchronizedStreamsSlaveConfigurationKey_FrameSkippingEnabled;
    v24[1] = kFigCaptureStreamSynchronizedStreamsSlaveConfigurationKey_StreamingOutputsEnabled;
    if (framesCopy)
    {
      v19 = &__kCFBooleanTrue;
    }

    else
    {
      v19 = &__kCFBooleanFalse;
    }

    if (outputCopy)
    {
      v18 = &__kCFBooleanTrue;
    }

    v25[0] = v19;
    v25[1] = v18;
    v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    captureStream4 = [slaveCopy captureStream];
    v22 = [captureStream4 setProperty:kFigCaptureStreamProperty_SynchronizedStreamsSlaveConfiguration value:v20 error:error];
  }

  else
  {
LABEL_9:
    v22 = 0;
  }

  return v22;
}

- (BOOL)enableTestPatternPN9:(BOOL)n9 error:(id *)error
{
  n9Copy = n9;
  captureStream = [(_OSDHxCamera *)self captureStream];
  v7 = captureStream;
  if (n9Copy)
  {
    v8 = @"TestPatternPN9";
  }

  else
  {
    v8 = @"TestPatternNone";
  }

  v9 = [captureStream setProperty:@"TestPattern" value:v8 error:error];

  return v9;
}

- (void)_receivedPixelBuffer:(__CVBuffer *)buffer time:(id *)time
{
  if ([(_OSDHxCamera *)self isStreaming:buffer])
  {
    CVPixelBufferRetain(buffer);
    workQueue = [(_OSDH9Camera *)self workQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007E0C;
    v7[3] = &unk_1000106C8;
    v7[4] = self;
    v7[5] = buffer;
    dispatch_async(workQueue, v7);
  }
}

- (void)_processBuffer:(__CVBuffer *)buffer
{
  [(_OSDHxCamera *)self set_frameCounter:[(_OSDHxCamera *)self _frameCounter]+ 1];
  previewLayer = [(_OSDHxCamera *)self previewLayer];

  if (previewLayer)
  {
    [(_OSDHxCamera *)self _showFrameOnPreviewLayer:buffer];
  }

  frameHandler = [(_OSDHxCamera *)self frameHandler];

  if (frameHandler)
  {
    v9 = CVBufferCopyAttachment(buffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    v7 = objc_opt_new();
    [v7 setBuffer:buffer];
    [v7 setMetadata:v9];
    frameHandler2 = [(_OSDHxCamera *)self frameHandler];
    (frameHandler2)[2](frameHandler2, v7);
  }
}

@end