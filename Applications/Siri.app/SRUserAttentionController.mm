@interface SRUserAttentionController
- (BOOL)_detectionStartedForType:(unint64_t)type;
- (BOOL)_restartFaceAttentionAwarenessClient:(id *)client;
- (BOOL)_startButtonPressAwarenessClient:(id *)client;
- (BOOL)_startFaceAttentionAwarenessClient:(id *)client;
- (BOOL)_startTouchAttentionAwarenessClient:(id *)client;
- (BOOL)_stopButtonPressAttentionAwarenessClient:(id *)client;
- (BOOL)_stopFaceAttentionAwarenessClient:(id *)client;
- (BOOL)_stopTouchAttentionAwarenessClient:(id *)client;
- (BOOL)startIfNeededForTypes:(unint64_t)types error:(id *)error;
- (BOOL)stopIfNeededForTypes:(unint64_t)types error:(id *)error;
- (SRUserAttentionController)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection;
- (SRUserAttentionController)initWithSignalProviderFactory:(id)factory supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection;
- (SRUserAttentionControllerDelegate)delegate;
- (void)_handleButtonPressAttentionEvent:(id)event;
- (void)_handleFaceAttentionEvent:(id)event;
- (void)_handleTouchAttentionEvent:(id)event;
- (void)_setDetectionStarted:(BOOL)started forType:(unint64_t)type;
- (void)_startWakeGestureManagerIfNeeded;
- (void)_stopWakeGestureManagerIfNeeded;
- (void)dealloc;
- (void)startIfNeededForTypes:(unint64_t)types completionQueue:(id)queue completion:(id)completion;
- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture;
@end

@implementation SRUserAttentionController

- (SRUserAttentionController)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection
{
  detectionCopy = detection;
  v9 = [[SRUserAttentionSignalProviderFactory alloc] initWithSamplingInterval:events attentionLossTimeout:interval supportedAttentionAwarenessEvents:timeout];
  v10 = [(SRUserAttentionController *)self initWithSignalProviderFactory:v9 supportedAttentionAwarenessEvents:events deviceSupportsRaiseGestureDetection:detectionCopy];

  return v10;
}

- (SRUserAttentionController)initWithSignalProviderFactory:(id)factory supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection
{
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = SRUserAttentionController;
  v10 = [(SRUserAttentionController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userAttentionSignalProviderFactory, factory);
    v11->_supportedAttentionAwarenessEvents = events;
    v11->_deviceSupportsRaiseGestureDetection = detection;
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

- (BOOL)startIfNeededForTypes:(unint64_t)types error:(id *)error
{
  typesCopy = types;
  if ((types & 1) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:1])
  {
    if (![(SRUserAttentionController *)self _startFaceAttentionAwarenessClient:error])
    {
      return 0;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:1 forType:1];
  }

  if ((typesCopy & 2) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:2])
  {
    if (![(SRUserAttentionController *)self _startTouchAttentionAwarenessClient:error])
    {
      return 0;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:1 forType:2];
  }

  if ((typesCopy & 4) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:4])
  {
    [(SRUserAttentionController *)self _startWakeGestureManagerIfNeeded];
    [(SRUserAttentionController *)self _setDetectionStarted:1 forType:4];
  }

  if ((typesCopy & 8) != 0 && ![(SRUserAttentionController *)self _detectionStartedForType:8])
  {
    if ([(SRUserAttentionController *)self _startButtonPressAwarenessClient:error])
    {
      v7 = 1;
      [(SRUserAttentionController *)self _setDetectionStarted:1 forType:8];
      return v7;
    }

    return 0;
  }

  return 1;
}

- (BOOL)stopIfNeededForTypes:(unint64_t)types error:(id *)error
{
  typesCopy = types;
  if ((types & 1) != 0 && [(SRUserAttentionController *)self _detectionStartedForType:1])
  {
    v7 = [(SRUserAttentionController *)self _stopFaceAttentionAwarenessClient:error];
    if (!v7)
    {
      return v7;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:1];
  }

  if ((typesCopy & 2) != 0 && [(SRUserAttentionController *)self _detectionStartedForType:2])
  {
    v7 = [(SRUserAttentionController *)self _stopTouchAttentionAwarenessClient:error];
    if (!v7)
    {
      return v7;
    }

    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:2];
  }

  if ((typesCopy & 4) != 0 && [(SRUserAttentionController *)self _detectionStartedForType:4])
  {
    [(SRUserAttentionController *)self _stopWakeGestureManagerIfNeeded];
    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:4];
  }

  if ((typesCopy & 8) == 0 || ![(SRUserAttentionController *)self _detectionStartedForType:8])
  {
    goto LABEL_16;
  }

  v7 = [(SRUserAttentionController *)self _stopButtonPressAttentionAwarenessClient:error];
  if (v7)
  {
    [(SRUserAttentionController *)self _setDetectionStarted:0 forType:8];
LABEL_16:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_startFaceAttentionAwarenessClient:(id *)client
{
  faceAttentionAwarenessClient = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory faceAttentionAwarenessClient];
  faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;
  self->_faceAttentionAwarenessClient = faceAttentionAwarenessClient;

  objc_initWeak(&location, self);
  v7 = self->_faceAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10001A5A4;
  v13 = &unk_100166D90;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(client) = [(AWAttentionAwarenessClient *)self->_faceAttentionAwarenessClient resumeWithError:client, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return client;
}

- (BOOL)_startTouchAttentionAwarenessClient:(id *)client
{
  touchAttentionAwarenessClient = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory touchAttentionAwarenessClient];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = touchAttentionAwarenessClient;

  objc_initWeak(&location, self);
  v7 = self->_touchAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10001A70C;
  v13 = &unk_100166D90;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(client) = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient resumeWithError:client, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return client;
}

- (BOOL)_startButtonPressAwarenessClient:(id *)client
{
  buttonPressAwarenessClient = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory buttonPressAwarenessClient];
  buttonPressAwarenessClient = self->_buttonPressAwarenessClient;
  self->_buttonPressAwarenessClient = buttonPressAwarenessClient;

  objc_initWeak(&location, self);
  v7 = self->_buttonPressAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10001A874;
  v13 = &unk_100166D90;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(client) = [(AWAttentionAwarenessClient *)self->_buttonPressAwarenessClient resumeWithError:client, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return client;
}

- (BOOL)_stopFaceAttentionAwarenessClient:(id *)client
{
  v4 = [(AWAttentionAwarenessClient *)self->_faceAttentionAwarenessClient invalidateWithError:client];
  faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;
  self->_faceAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_stopTouchAttentionAwarenessClient:(id *)client
{
  v4 = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient invalidateWithError:client];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_stopButtonPressAttentionAwarenessClient:(id *)client
{
  v4 = [(AWAttentionAwarenessClient *)self->_buttonPressAwarenessClient invalidateWithError:client];
  buttonPressAwarenessClient = self->_buttonPressAwarenessClient;
  self->_buttonPressAwarenessClient = 0;

  return v4;
}

- (BOOL)_restartFaceAttentionAwarenessClient:(id *)client
{
  if ([(SRUserAttentionController *)self _detectionStartedForType:1])
  {
    faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;

    return [(AWAttentionAwarenessClient *)faceAttentionAwarenessClient resetAttentionLostTimeoutWithError:client];
  }

  else
  {

    return [(SRUserAttentionController *)self startIfNeededForTypes:1 error:client];
  }
}

- (void)_handleFaceAttentionEvent:(id)event
{
  eventMask = [event eventMask];
  if ([(SRUserAttentionController *)self _isDeviceLowered])
  {
    v5 = 0;
    v6 = 2;
  }

  else
  {
    v7 = 1;
    v8 = 3;
    if ((eventMask & 8) == 0)
    {
      v8 = (eventMask >> 7) & 4;
    }

    if ((eventMask & 0x80) == 0)
    {
      v7 = v8;
    }

    v9 = (eventMask & 1) == 0;
    if (eventMask)
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

- (void)_handleTouchAttentionEvent:(id)event
{
  eventMask = [event eventMask];
  if ((eventMask & 8) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = (eventMask >> 7) & 4;
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

- (void)_handleButtonPressAttentionEvent:(id)event
{
  eventCopy = event;
  v5 = ((([eventCopy eventMask] << 62) >> 63) & 5);
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AE64;
  v7[3] = &unk_100166DE0;
  v9[1] = v5;
  objc_copyWeak(v9, &location);
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_startWakeGestureManagerIfNeeded
{
  if (![(SRUserAttentionController *)self _deviceSupportsFaceDetection]&& self->_deviceSupportsRaiseGestureDetection)
  {
    wakeGestureManager = [(SRUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory wakeGestureManager];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = wakeGestureManager;

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

- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B0CC;
  block[3] = &unk_100166E08;
  v6[1] = gesture;
  objc_copyWeak(v6, &location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (BOOL)_detectionStartedForType:(unint64_t)type
{
  attentionDetectionStatuses = self->_attentionDetectionStatuses;
  v4 = [NSNumber numberWithUnsignedInteger:type];
  v5 = [(NSMutableDictionary *)attentionDetectionStatuses objectForKeyedSubscript:v4];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)_setDetectionStarted:(BOOL)started forType:(unint64_t)type
{
  startedCopy = started;
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

  v12 = [NSNumber numberWithBool:startedCopy];
  v10 = self->_attentionDetectionStatuses;
  v11 = [NSNumber numberWithUnsignedInteger:type];
  [(NSMutableDictionary *)v10 setObject:v12 forKeyedSubscript:v11];
}

- (SRUserAttentionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startIfNeededForTypes:(unint64_t)types completionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = completionCopy;
  if (queueCopy && completionCopy)
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
    v17[1] = types;
    v15 = queueCopy;
    v16 = v10;
    dispatch_async(v13, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

@end