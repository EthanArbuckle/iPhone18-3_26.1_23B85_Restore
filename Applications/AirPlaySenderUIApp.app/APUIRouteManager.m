@interface APUIRouteManager
+ (unint64_t)discoveryFeatures:(BOOL)a3;
- (APUIRouteManager)init;
- (void)_addOutputDeviceToSystemMusicContext:(id)a3 authString:(id)a4 completion:(id)a5;
- (void)_createSilentConnectionToDevice:(id)a3 authString:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)pickRouteWithRouteID:(id)a3 authString:(id)a4 useRemoteControl:(BOOL)a5 completion:(id)a6;
- (void)session:(id)a3 didSpotOnLocationComplete:(id)a4;
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

- (void)pickRouteWithRouteID:(id)a3 authString:(id)a4 useRemoteControl:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B350(v10);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E2C;
  block[3] = &unk_10001C590;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (void)_addOutputDeviceToSystemMusicContext:(id)a3 authString:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextAddOutputDeviceOptionCancelIfAuthRequired];
  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:AVOutputContextAddOutputDeviceOptionAuthorizationToken];
  }

  if (dword_1000222E0 <= 50 && (dword_1000222E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B3D8(v8);
  }

  v12 = +[AVOutputContext sharedAudioPresentationOutputContext];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001FC8;
  v15[3] = &unk_10001C5E0;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v13 = v10;
  v14 = v8;
  [v12 addOutputDevice:v14 options:v11 completionHandler:v15];
}

- (void)_createSilentConnectionToDevice:(id)a3 authString:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputDeviceCommunicationChannelOptionCancelIfAuthRequired];
  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:AVOutputContextAddOutputDeviceOptionAuthorizationToken];
  }

  v12 = AVOutputDeviceCommunicationChannelDataDestinationFitness;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002348;
  v15[3] = &unk_10001C608;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v13 = v10;
  v14 = v8;
  [v14 openCommunicationChannelToDestination:v12 options:v11 completionHandler:v15];
}

- (void)session:(id)a3 didSpotOnLocationComplete:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
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

  v8 = self;
  objc_sync_enter(v8);
  spotOnLocationError = v8->_spotOnLocationError;
  v8->_spotOnLocationError = v6;
  v10 = v6;

  objc_sync_exit(v8);
  dispatch_semaphore_signal(v8->_spotOnLocationSemaphore);
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
        v12 = self;
        v13 = self->_irSession;
        LogPrintF();
      }

      [(IRSession *)self->_irSession setSpotOnLocationWithParameters:v10, v12, v13];
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

+ (unint64_t)discoveryFeatures:(BOOL)a3
{
  if (a3)
  {
    return 8;
  }

  else
  {
    return 5;
  }
}

@end