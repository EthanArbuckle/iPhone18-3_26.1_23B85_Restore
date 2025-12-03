@interface RAPAuxiliaryControlsRecorder
+ (void)fetchCurrentlyConnectedControlsRecordingOrigin:(int64_t)origin completion:(id)completion;
- (RAPAuxiliaryControlsRecording)copyCurrentPartialRecording;
- (void)_addControlIfNotDuplicate:(id)duplicate;
- (void)_setOriginatingControlToCurrentActiveWatch;
- (void)_updateCurrentCarPlayControl;
- (void)_updateWatchControlsWithFetchCompletion:(id)completion;
- (void)dealloc;
- (void)setOriginatingDeviceFromOrigin:(int64_t)origin;
- (void)startWithFetchCompletion:(id)completion;
- (void)stop;
@end

@implementation RAPAuxiliaryControlsRecorder

- (RAPAuxiliaryControlsRecording)copyCurrentPartialRecording
{
  v3 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_relevantAuxiliaryControls;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          v11 = objc_alloc_init(GEORPAuxiliaryControl);
          reportAProblemControlMessage = [v10 reportAProblemControlMessage];
          [v11 setCar:reportAProblemControlMessage];

          [v3 addObject:v11];
        }

        v13 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          v16 = objc_alloc_init(GEORPAuxiliaryControl);
          reportAProblemControlMessage2 = [v15 reportAProblemControlMessage];
          [v16 setWatch:reportAProblemControlMessage2];

          [v3 addObject:v16];
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  if (self->_originatingAuxiliaryControl)
  {
    v18 = [(NSMutableArray *)self->_relevantAuxiliaryControls indexOfObject:?];
  }

  else
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = [[RAPAuxiliaryControlsRecording alloc] initWithControlsGeo:v3 originatingIndex:v18];

  return v19;
}

- (void)_setOriginatingControlToCurrentActiveWatch
{
  if (self->_countOfNanoRegistryFetchesInFlight)
  {
    self->_waitingToSetActiveWatchAsOriginating = 1;
  }

  else
  {
    objc_storeStrong(&self->_originatingAuxiliaryControl, self->_currentActiveWatchAuxiliaryControl);
  }
}

- (void)_updateWatchControlsWithFetchCompletion:(id)completion
{
  completionCopy = completion;
  ++self->_countOfNanoRegistryFetchesInFlight;
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C7943C;
  v7[3] = &unk_1016552A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 getDevicesWithBlock:v7];
}

- (void)_updateCurrentCarPlayControl
{
  v3 = +[MapsCarPlayExternalDeviceMonitor sharedInstance];
  carPlayExternalDevice = [v3 carPlayExternalDevice];

  v4 = carPlayExternalDevice;
  if (carPlayExternalDevice)
  {
    v5 = [RAPAuxiliaryControlCarPlay alloc];
    v6 = +[MapsExternalDevice sharedInstance];
    v7 = +[CarDisplayController sharedInstance];
    v8 = [(RAPAuxiliaryControlCarPlay *)v5 initWithInformationFromDevice:carPlayExternalDevice accessory:v6 displayController:v7];

    if (v8)
    {
      if (![(RAPAuxiliaryControlCarPlay *)self->_currentCarPlayAuxiliaryControl isSameControlAsControl:v8])
      {
        objc_storeStrong(&self->_currentCarPlayAuxiliaryControl, v8);
      }

      [(RAPAuxiliaryControlsRecorder *)self _addControlIfNotDuplicate:v8];
    }

    v4 = carPlayExternalDevice;
  }
}

- (void)_addControlIfNotDuplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_relevantAuxiliaryControls;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * v9) isSameControlAsControl:{duplicateCopy, v13}])
        {

          goto LABEL_13;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  relevantAuxiliaryControls = self->_relevantAuxiliaryControls;
  if (!relevantAuxiliaryControls)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = self->_relevantAuxiliaryControls;
    self->_relevantAuxiliaryControls = v11;

    relevantAuxiliaryControls = self->_relevantAuxiliaryControls;
  }

  [(NSMutableArray *)relevantAuxiliaryControls addObject:duplicateCopy, v13];
LABEL_13:
}

- (void)setOriginatingDeviceFromOrigin:(int64_t)origin
{
  if (origin == 2)
  {
    [(RAPAuxiliaryControlsRecorder *)self _setOriginatingControlToCurrentActiveWatch];
  }

  else if (origin == 1)
  {
    [(RAPAuxiliaryControlsRecorder *)self _setOriginatingControlToCurrentCarPlayScreen];
  }
}

- (void)dealloc
{
  [(RAPAuxiliaryControlsRecorder *)self stop];
  v3.receiver = self;
  v3.super_class = RAPAuxiliaryControlsRecorder;
  [(RAPAuxiliaryControlsRecorder *)&v3 dealloc];
}

- (void)stop
{
  if (!self->_stopped)
  {
    self->_stopped = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"MapsExternalDeviceUpdated" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];
  }
}

- (void)startWithFetchCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_started || self->_stopped)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, self);
    }
  }

  else
  {
    self->_started = 1;
    [(RAPAuxiliaryControlsRecorder *)self _updateCurrentCarPlayControl];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = +[MapsExternalDevice sharedInstance];
    [v6 addObserver:self selector:"_updateCurrentCarPlayControl" name:@"MapsExternalDeviceUpdated" object:v7];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100C79A9C;
    v8[3] = &unk_101661090;
    v8[4] = self;
    v9 = v5;
    [(RAPAuxiliaryControlsRecorder *)self _updateWatchControlsWithFetchCompletion:v8];
  }
}

+ (void)fetchCurrentlyConnectedControlsRecordingOrigin:(int64_t)origin completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_alloc_init(RAPAuxiliaryControlsRecorder);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C79BD8;
  v8[3] = &unk_10164F690;
  v9 = completionCopy;
  originCopy = origin;
  v7 = completionCopy;
  [(RAPAuxiliaryControlsRecorder *)v6 startWithFetchCompletion:v8];
}

@end