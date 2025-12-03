@interface APUIRouteManager
+ (unint64_t)discoveryFeatures:(BOOL)features;
- (APUIRouteManager)init;
- (void)_addOutputDeviceToSystemMusicContext:(id)context authString:(id)string completion:(id)completion;
- (void)_createSilentConnectionToDevice:(id)device authString:(id)string completion:(id)completion;
- (void)invalidate;
- (void)pickRouteWithRouteID:(id)d authString:(id)string useRemoteControl:(BOOL)control completion:(id)completion;
- (void)session:(id)session didSpotOnLocationComplete:(id)complete;
- (void)startIntelligentRoutingLocationSensing;
@end

@implementation APUIRouteManager

- (APUIRouteManager)init
{
  v10.receiver = self;
  v10.super_class = APUIRouteManager;
  v2 = [(APUIRouteManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("APUIRouteManager.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("APUIRouteManager.notification", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    if (APSSettingsIsFeatureEnabled())
    {
      v7 = dispatch_queue_create("APUIRouteManager.intelligentRouting", 0);
      irQueue = v2->_irQueue;
      v2->_irQueue = v7;
    }
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B238();
  }

  return v2;
}

- (void)invalidate
{
  [(IRSession *)self->_irSession setDelegate:0];
  irSession = self->_irSession;

  [(IRSession *)irSession invalidate];
}

- (void)pickRouteWithRouteID:(id)d authString:(id)string useRemoteControl:(BOOL)control completion:(id)completion
{
  dCopy = d;
  stringCopy = string;
  completionCopy = completion;
  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B350(dCopy);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E2C;
  block[3] = &unk_10001C590;
  block[4] = self;
  v18 = dCopy;
  controlCopy = control;
  v19 = stringCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = stringCopy;
  v16 = dCopy;
  dispatch_async(queue, block);
}

- (void)_addOutputDeviceToSystemMusicContext:(id)context authString:(id)string completion:(id)completion
{
  contextCopy = context;
  stringCopy = string;
  completionCopy = completion;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextAddOutputDeviceOptionCancelIfAuthRequired];
  if (stringCopy)
  {
    [v11 setObject:stringCopy forKeyedSubscript:AVOutputContextAddOutputDeviceOptionAuthorizationToken];
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B3D8(contextCopy);
  }

  v12 = +[AVOutputContext sharedAudioPresentationOutputContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001FC8;
  v15[3] = &unk_10001C5E0;
  v15[4] = self;
  v16 = contextCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = contextCopy;
  [v12 addOutputDevice:v14 options:v11 completionHandler:v15];
}

- (void)_createSilentConnectionToDevice:(id)device authString:(id)string completion:(id)completion
{
  deviceCopy = device;
  stringCopy = string;
  completionCopy = completion;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputDeviceCommunicationChannelOptionCancelIfAuthRequired];
  if (stringCopy)
  {
    [v11 setObject:stringCopy forKeyedSubscript:AVOutputContextAddOutputDeviceOptionAuthorizationToken];
  }

  v12 = AVOutputDeviceCommunicationChannelDataDestinationFitness;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002348;
  v15[3] = &unk_10001C608;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = deviceCopy;
  [v14 openCommunicationChannelToDestination:v12 options:v11 completionHandler:v15];
}

- (void)session:(id)session didSpotOnLocationComplete:(id)complete
{
  sessionCopy = session;
  completeCopy = complete;
  if (completeCopy)
  {
    v7 = 50;
  }

  else
  {
    v7 = 90;
  }

  if (v7 >= dword_1000222E0 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    irSession = self->_irSession;
    LogPrintF();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  spotOnLocationError = selfCopy->_spotOnLocationError;
  selfCopy->_spotOnLocationError = completeCopy;
  v10 = completeCopy;

  objc_sync_exit(selfCopy);
  dispatch_semaphore_signal(selfCopy->_spotOnLocationSemaphore);
}

- (void)startIntelligentRoutingLocationSensing
{
  if (APSSettingsIsFeatureEnabled())
  {
    v3 = [IRServiceToken serviceTokenForServiceIdentifier:@"com.apple.mediaremoted"];
    if (v3)
    {
      v4 = v3;
      v5 = [[IRConfiguration alloc] initWithServiceToken:v3];
      [v5 setMode:0];
      v6 = objc_alloc_init(IRSession);
      irSession = self->_irSession;
      self->_irSession = v6;

      [(IRSession *)self->_irSession setDelegate:self];
      [(IRSession *)self->_irSession runWithConfiguration:v5];
      v8 = dispatch_semaphore_create(0);
      spotOnLocationSemaphore = self->_spotOnLocationSemaphore;
      self->_spotOnLocationSemaphore = v8;

      v10 = objc_alloc_init(IRSessionSpotOnLocationParameters);
      [v10 setResetAllBrokerDiscoveredCandidates:1];
      if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
      {
        selfCopy = self;
        v13 = self->_irSession;
        LogPrintF();
      }

      [(IRSession *)self->_irSession setSpotOnLocationWithParameters:v10, selfCopy, v13];
      irQueue = self->_irQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000028BC;
      block[3] = &unk_10001C630;
      block[4] = self;
      dispatch_async(irQueue, block);
    }

    else
    {
      if (sub_10000B7AC(self, &v15, &v16))
      {
        v4 = 0;
        v5 = 0;
        goto LABEL_12;
      }

      v5 = v15;
      v4 = v16;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B864(self);
  }

LABEL_12:
}

+ (unint64_t)discoveryFeatures:(BOOL)features
{
  if (features)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

@end