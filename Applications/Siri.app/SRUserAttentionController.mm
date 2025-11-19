@interface SRUserAttentionController
- (BOOL)_detectionStartedForType:(unint64_t)a3;
- (BOOL)_restartFaceAttentionAwarenessClient:(id *)a3;
- (BOOL)_startButtonPressAwarenessClient:(id *)a3;
- (BOOL)_startFaceAttentionAwarenessClient:(id *)a3;
- (BOOL)_startTouchAttentionAwarenessClient:(id *)a3;
- (BOOL)_stopButtonPressAttentionAwarenessClient:(id *)a3;
- (BOOL)_stopFaceAttentionAwarenessClient:(id *)a3;
- (BOOL)_stopTouchAttentionAwarenessClient:(id *)a3;
- (BOOL)startIfNeededForTypes:(unint64_t)a3 error:(id *)a4;
- (BOOL)stopIfNeededForTypes:(unint64_t)a3 error:(id *)a4;
- (SRUserAttentionController)initWithSamplingInterval:(double)a3 attentionLossTimeout:(double)a4 supportedAttentionAwarenessEvents:(unint64_t)a5 deviceSupportsRaiseGestureDetection:(BOOL)a6;
- (SRUserAttentionController)initWithSignalProviderFactory:(id)a3 supportedAttentionAwarenessEvents:(unint64_t)a4 deviceSupportsRaiseGestureDetection:(BOOL)a5;
- (SRUserAttentionControllerDelegate)delegate;
- (void)_handleButtonPressAttentionEvent:(id)a3;
- (void)_handleFaceAttentionEvent:(id)a3;
- (void)_handleTouchAttentionEvent:(id)a3;
- (void)_setDetectionStarted:(BOOL)a3 forType:(unint64_t)a4;
- (void)_startWakeGestureManagerIfNeeded;
- (void)_stopWakeGestureManagerIfNeeded;
- (void)dealloc;
- (void)startIfNeededForTypes:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4;
@end

@implementation SRUserAttentionController

- (SRUserAttentionController)initWithSamplingInterval:(double)a3 attentionLossTimeout:(double)a4 supportedAttentionAwarenessEvents:(unint64_t)a5 deviceSupportsRaiseGestureDetection:(BOOL)a6
{
  v6 = a6;
  v9 = [[SRUserAttentionSignalProviderFactory alloc] initWithSamplingInterval:a5 attentionLossTimeout:a3 supportedAttentionAwarenessEvents:a4];
  v10 = [(SRUserAttentionController *)self initWithSignalProviderFactory:v9 supportedAttentionAwarenessEvents:a5 deviceSupportsRaiseGestureDetection:v6];

  return v10;
}

- (SRUserAttentionController)initWithSignalProviderFactory:(id)a3 supportedAttentionAwarenessEvents:(unint64_t)a4 deviceSupportsRaiseGestureDetection:(BOOL)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = SRUserAttentionController;
  v10 = [(SRUserAttentionController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userAttentionSignalProviderFactory, a3);
    v11->_supportedAttentionAwarenessEvents = a4;
    v11->_deviceSupportsRaiseGestureDetection = a5;
    v11->_deviceLowered = 0;
    v12 = dispatch_queue_create("com.apple.siri.AttentionAwarenessQueue", 0);
    attentionAwarenessHandlerQueue = v11->_attentionAwarenessHandlerQueue;
    v11->_attentionAwarenessHandlerQueue = v12;
  }

  return v11;
}

- (void)dealloc
{
  v6 = 0;
  v3 = [(SRUserAttentionController *)self stopIfNeeded:&v6];
  v4 = v6;
  if ((v3 & 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CA914();
  }

  v5.receiver = self;
  v5.super_class = SRUserAttentionController;
  [(SRUserAttentionController *)&v5 dealloc];
}

- (BOOL)startIfNeededForTypes:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  if ((a3 & 1) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:1])
  {
    if (![(SRUserAttentionController *)self _startFaceAttentionAwarenessClient:a4])
    {
      return 0;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:1 forType:1];
  }

  if ((v5 & 2) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:2])
  {
    if (![(SRUserAttentionController *)self _startTouchAttentionAwarenessClient:a4])
    {
      return 0;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:1 forType:2];
  }

  if ((v5 & 4) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:4])
  {
    [(SRUserAttentionController *)self _startWakeGestureManagerIfNeeded];
    [(SRUserAttentionController *)self _setDetectionStarted:1 forType:4];
  }

  if ((v5 & 8) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:8])
  {
    if ([(SRUserAttentionController *)self _startButtonPressAwarenessClient:a4])
    {
      v7 = 1;
      [(SRUserAttentionController *)self _setDetectionStarted:1 forType:8];
      return v7;
    }

    return 0;
  }

  return 1;
}

- (BOOL)stopIfNeededForTypes:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  if ((a3 & 1) != 0 && [(SRUserAttentionController *)self _detectionStartedForType:1])
  {
    v7 = [(SRUserAttentionController *)self _stopFaceAttentionAwarenessClient:a4];
    if (!v7)
    {
      return v7;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:1];
  }

  if ((v5 & 2) != 0 && [(SRUserAttentionController *)self _detectionStartedForType:2])
  {
    v7 = [(SRUserAttentionController *)self _stopTouchAttentionAwarenessClient:a4];
    if (!v7)
    {
      return v7;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:2];
  }

  if ((v5 & 4) != 0 && [(SRUserAttentionController *)self _detectionStartedForType:4])
  {
    [(SRUserAttentionController *)self _stopWakeGestureManagerIfNeeded];
    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:4];
  }

  if ((v5 & 8) == 0 || ![(SRUserAttentionController *)self _detectionStartedForType:8])
  {
    goto LABEL_16;
  }

  v7 = [(SRUserAttentionController *)self _stopButtonPressAttentionAwarenessClient:a4];
  if (v7)
  {
    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:8];
LABEL_16:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_startFaceAttentionAwarenessClient:(id *)a3
{
  v5 = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory faceAttentionAwarenessClient];
  faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;
  self->_faceAttentionAwarenessClient = v5;

  objc_initWeak(&location, self);
  v7 = self->_faceAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10001A5A4;
  v13 = &unk_100166D90;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(a3) = [(AWAttentionAwarenessClient *)self->_faceAttentionAwarenessClient resumeWithError:a3, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return a3;
}

- (BOOL)_startTouchAttentionAwarenessClient:(id *)a3
{
  v5 = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory touchAttentionAwarenessClient];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = v5;

  objc_initWeak(&location, self);
  v7 = self->_touchAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10001A70C;
  v13 = &unk_100166D90;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(a3) = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient resumeWithError:a3, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return a3;
}

- (BOOL)_startButtonPressAwarenessClient:(id *)a3
{
  v5 = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory buttonPressAwarenessClient];
  buttonPressAwarenessClient = self->_buttonPressAwarenessClient;
  self->_buttonPressAwarenessClient = v5;

  objc_initWeak(&location, self);
  v7 = self->_buttonPressAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10001A874;
  v13 = &unk_100166D90;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(a3) = [(AWAttentionAwarenessClient *)self->_buttonPressAwarenessClient resumeWithError:a3, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return a3;
}

- (BOOL)_stopFaceAttentionAwarenessClient:(id *)a3
{
  v4 = [(AWAttentionAwarenessClient *)self->_faceAttentionAwarenessClient invalidateWithError:a3];
  faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;
  self->_faceAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_stopTouchAttentionAwarenessClient:(id *)a3
{
  v4 = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient invalidateWithError:a3];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_stopButtonPressAttentionAwarenessClient:(id *)a3
{
  v4 = [(AWAttentionAwarenessClient *)self->_buttonPressAwarenessClient invalidateWithError:a3];
  buttonPressAwarenessClient = self->_buttonPressAwarenessClient;
  self->_buttonPressAwarenessClient = 0;

  return v4;
}

- (BOOL)_restartFaceAttentionAwarenessClient:(id *)a3
{
  if ([(SRUserAttentionController *)self _detectionStartedForType:1])
  {
    faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;

    return [(AWAttentionAwarenessClient *)faceAttentionAwarenessClient resetAttentionLostTimeoutWithError:a3];
  }

  else
  {

    return [(SRUserAttentionController *)self startIfNeededForTypes:1 error:a3];
  }
}

- (void)_handleFaceAttentionEvent:(id)a3
{
  v4 = [a3 eventMask];
  if ([(SRUserAttentionController *)self _isDeviceLowered])
  {
    v5 = 0;
    v6 = 2;
  }

  else
  {
    v7 = 1;
    v8 = 3;
    if ((v4 & 8) == 0)
    {
      v8 = (v4 >> 7) & 4;
    }

    if ((v4 & 0x80) == 0)
    {
      v7 = v8;
    }

    v9 = (v4 & 1) == 0;
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v7;
    }

    v6 = !v9;
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001AB04;
  v10[3] = &unk_100166DB8;
  v11[1] = v6;
  objc_copyWeak(v11, &location);
  v11[2] = v5;
  dispatch_async(&_dispatch_main_q, v10);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_handleTouchAttentionEvent:(id)a3
{
  v4 = [a3 eventMask];
  if ((v4 & 8) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = (v4 >> 7) & 4;
  }

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001ACA8;
  v6[3] = &unk_100166DB8;
  v7[1] = 0;
  objc_copyWeak(v7, &location);
  v7[2] = v5;
  dispatch_async(&_dispatch_main_q, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_handleButtonPressAttentionEvent:(id)a3
{
  v4 = a3;
  v5 = ((([v4 eventMask] << 62) >> 63) & 5);
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AE64;
  v7[3] = &unk_100166DE0;
  v9[1] = v5;
  objc_copyWeak(v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_startWakeGestureManagerIfNeeded
{
  if (![(SRUserAttentionController *)self _deviceSupportsFaceDetection]&& self->_deviceSupportsRaiseGestureDetection)
  {
    v3 = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory wakeGestureManager];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = v3;

    [(CMWakeGestureManager *)self->_wakeGestureManager setDelegate:self];
    v5 = self->_wakeGestureManager;

    [(CMWakeGestureManager *)v5 startWakeGestureUpdates];
  }
}

- (void)_stopWakeGestureManagerIfNeeded
{
  if (![(SRUserAttentionController *)self _deviceSupportsFaceDetection]&& self->_deviceSupportsRaiseGestureDetection)
  {
    [(CMWakeGestureManager *)self->_wakeGestureManager stopWakeGestureUpdates];
    [(CMWakeGestureManager *)self->_wakeGestureManager setDelegate:0];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = 0;
  }
}

- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0CC;
  block[3] = &unk_100166E08;
  v6[1] = a4;
  objc_copyWeak(v6, &location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (BOOL)_detectionStartedForType:(unint64_t)a3
{
  attentionDetectionStatuses = self->_attentionDetectionStatuses;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)attentionDetectionStatuses objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)_setDetectionStarted:(BOOL)a3 forType:(unint64_t)a4
{
  v5 = a3;
  attentionDetectionStatuses = self->_attentionDetectionStatuses;
  if (attentionDetectionStatuses)
  {
    v8 = attentionDetectionStatuses;
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = self->_attentionDetectionStatuses;
  self->_attentionDetectionStatuses = v8;

  v12 = [NSNumber numberWithBool:v5];
  v10 = self->_attentionDetectionStatuses;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)v10 setObject:v12 forKeyedSubscript:v11];
}

- (SRUserAttentionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startIfNeededForTypes:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    if (!self->_asynchronousCallQueue)
    {
      v11 = dispatch_queue_create("com.apple.siri.SRUserAttentionControllerQueue", 0);
      asynchronousCallQueue = self->_asynchronousCallQueue;
      self->_asynchronousCallQueue = v11;
    }

    objc_initWeak(&location, self);
    v13 = self->_asynchronousCallQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B578;
    block[3] = &unk_100166E58;
    objc_copyWeak(v17, &location);
    v17[1] = a3;
    v15 = v8;
    v16 = v10;
    dispatch_async(v13, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

@end