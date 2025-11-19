@interface PHAudioDeviceController
+ (AVSystemController)sharedSystemController;
+ (PHAudioDeviceController)sharedAudioDeviceController;
- (BOOL)_routeIsAirTunes:(id)a3;
- (BOOL)_routeIsDefault:(id)a3;
- (BOOL)_routeIsHandset:(id)a3;
- (BOOL)_routeIsReceiver:(id)a3;
- (BOOL)_routeIsSpeaker:(id)a3;
- (BOOL)handsetRouteAvailable;
- (BOOL)handsetRouteAvailableForUnformattedPickableRoutes:(id)a3;
- (BOOL)receiverRouteIsPicked;
- (BOOL)speakerRouteAvailable;
- (BOOL)speakerRouteAvailableForUnformattedPickableRoutes:(id)a3;
- (BOOL)speakerRouteIsPicked;
- (NSArray)routes;
- (PHAudioDeviceController)init;
- (PHAudioDeviceControllerDelegate)delegate;
- (TUAudioRoute)currentRoute;
- (id)_pickableRoutesForCategory:(id)a3 mode:(id)a4;
- (id)_pickableRoutesUsingAttribute;
- (id)_pickableRoutesUsingBackgroundQueue:(BOOL)a3;
- (id)_pickedRouteUsingBackgroundQueue:(BOOL)a3;
- (id)_unformattedPickableRoutesForAudioSessionCategory:(id)a3 usingBackgroundQueue:(BOOL)a4;
- (id)callForPickableRoutesUsingBackgroundQueue:(BOOL)a3;
- (id)routesForUnformattedPickableRoutes:(id)a3;
- (void)_acquireLock;
- (void)_audioRouteInformationChanged;
- (void)_pickRoute:(id)a3;
- (void)_pickableRoutesUsingAttribute;
- (void)_releaseLock;
- (void)clearCachedRoutes;
- (void)dealloc;
- (void)fetchCurrentRouteWithCompletionHandler:(id)a3;
- (void)fetchRoutesWithCompletionHandler:(id)a3;
- (void)pickHandsetRoute;
- (void)pickRouteWithUID:(id)a3;
- (void)pickSpeakerRoute;
- (void)restorePickedRoute;
@end

@implementation PHAudioDeviceController

+ (AVSystemController)sharedSystemController
{
  v4 = CUTWeakLinkClass();
  if (!v4)
  {
    v5 = [NSString stringWithFormat:@"Weak linking of AVSystemController failed"];
    NSLog(@"** TUAssertion failure: %@", v5);

    if (_TUAssertShouldCrashApplication())
    {
      v6 = +[NSAssertionHandler currentHandler];
      [v6 handleFailureInMethod:a2 object:a1 file:@"PHAudioDeviceController.m" lineNumber:39 description:@"Weak linking of AVSystemController failed"];
    }
  }

  v7 = [v4 sharedAVSystemController];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = objc_opt_class();
      v9 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] +[AVSystemController sharedAVSystemController] returned something that isn't an AVSystemController class: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] +[AVSystemController sharedAVSystemController] returned nil value", buf, 2u);
    }
  }

LABEL_11:

  return v7;
}

+ (PHAudioDeviceController)sharedAudioDeviceController
{
  if (sharedAudioDeviceController_onceToken != -1)
  {
    +[PHAudioDeviceController sharedAudioDeviceController];
  }

  v3 = sharedAudioDeviceController_sharedAudioDeviceController;

  return v3;
}

void __54__PHAudioDeviceController_sharedAudioDeviceController__block_invoke(id a1)
{
  sharedAudioDeviceController_sharedAudioDeviceController = objc_alloc_init(PHAudioDeviceController);

  _objc_release_x1();
}

- (PHAudioDeviceController)init
{
  v13.receiver = self;
  v13.super_class = PHAudioDeviceController;
  v2 = [(PHAudioDeviceController *)&v13 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_audioRouteInformationChanged" name:TUAudioSystemAudioPickableRoutesChanged object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_audioRouteInformationChanged" name:TUCallAudioPropertiesChangedNotification object:0];

    v5 = +[TUAudioSystemController sharedAudioSystemController];
    v6 = dispatch_semaphore_create(1);
    modifyingStateLock = v2->_modifyingStateLock;
    v2->_modifyingStateLock = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, 2u, 0);
    v9 = dispatch_queue_create("PHAudioDeviceController.serialQueue", v8);
    v10 = [[TUCallCenter alloc] initWithQueue:v9 wantsCallNotifications:0];
    fetchRoutesBackgroundCallCenter = v2->_fetchRoutesBackgroundCallCenter;
    v2->_fetchRoutesBackgroundCallCenter = v10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHAudioDeviceController;
  [(PHAudioDeviceController *)&v4 dealloc];
}

- (NSArray)routes
{
  v3 = [(PHAudioDeviceController *)self _pickableRoutes];
  v4 = [(PHAudioDeviceController *)self routesForUnformattedPickableRoutes:v3];

  return v4;
}

- (void)fetchRoutesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioDeviceController *)self fetchRoutesBackgroundCallCenter];
  v6 = [v5 queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __60__PHAudioDeviceController_fetchRoutesWithCompletionHandler___block_invoke;
  v8[3] = &unk_100285440;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __60__PHAudioDeviceController_fetchRoutesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _pickableRoutesUsingBackgroundQueue:1];
  v4 = [v2 routesForUnformattedPickableRoutes:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __60__PHAudioDeviceController_fetchRoutesWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_100285730;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (id)routesForUnformattedPickableRoutes:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [TUAudioRoute alloc];
        v12 = [v11 initWithDictionary:{v10, v15}];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)callForPickableRoutesUsingBackgroundQueue:(BOOL)a3
{
  if (a3)
  {
    [(PHAudioDeviceController *)self fetchRoutesBackgroundCallCenter];
  }

  else
  {
    +[TUCallCenter sharedInstance];
  }
  v3 = ;
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [v3 frontmostCall];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 currentVideoCall];
  }

  v8 = v7;

  return v8;
}

- (BOOL)speakerRouteAvailable
{
  v2 = self;
  v3 = [(PHAudioDeviceController *)self _pickableRoutes];
  LOBYTE(v2) = [(PHAudioDeviceController *)v2 speakerRouteAvailableForUnformattedPickableRoutes:v3];

  return v2;
}

- (BOOL)speakerRouteAvailableForUnformattedPickableRoutes:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(PHAudioDeviceController *)self _routeIsSpeaker:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)handsetRouteAvailable
{
  v2 = self;
  v3 = [(PHAudioDeviceController *)self _pickableRoutes];
  LOBYTE(v2) = [(PHAudioDeviceController *)v2 handsetRouteAvailableForUnformattedPickableRoutes:v3];

  return v2;
}

- (BOOL)handsetRouteAvailableForUnformattedPickableRoutes:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(PHAudioDeviceController *)self _routeIsHandset:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)pickSpeakerRoute
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to pick the speaker route", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(PHAudioDeviceController *)self _pickableRoutes];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([(PHAudioDeviceController *)self _routeIsSpeaker:v9])
        {
          [(PHAudioDeviceController *)self _pickRoute:v9];
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)pickHandsetRoute
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to pick the handset route", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(PHAudioDeviceController *)self _pickableRoutes];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([(PHAudioDeviceController *)self _routeIsHandset:v9])
        {
          [(PHAudioDeviceController *)self _pickRoute:v9];
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)pickRouteWithUID:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to pick route with UID %@", buf, 0xCu);
  }

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(PHAudioDeviceController *)self _pickableRoutes];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 objectForKey:AVSystemController_RouteDescriptionKey_RouteUID];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            [(PHAudioDeviceController *)self _pickRoute:v11];

            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if ([v4 isEqualToString:TUCallSourceIdentifierSpeakerRoute])
    {
      [(PHAudioDeviceController *)self pickSpeakerRoute];
    }
  }

LABEL_15:
}

- (TUAudioRoute)currentRoute
{
  v3 = [TUAudioRoute alloc];
  v4 = [(PHAudioDeviceController *)self _pickedRouteUsingBackgroundQueue:0];
  v5 = [v3 initWithDictionary:v4];

  return v5;
}

- (void)fetchCurrentRouteWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioDeviceController *)self fetchRoutesBackgroundCallCenter];
  v6 = [v5 queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __66__PHAudioDeviceController_fetchCurrentRouteWithCompletionHandler___block_invoke;
  v8[3] = &unk_100285440;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __66__PHAudioDeviceController_fetchCurrentRouteWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [TUAudioRoute alloc];
  v3 = [*(a1 + 32) _pickedRouteUsingBackgroundQueue:1];
  v4 = [v2 initWithDictionary:v3];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __66__PHAudioDeviceController_fetchCurrentRouteWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_100285730;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)restorePickedRoute
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restoring picked route", v4, 2u);
  }

  if (self->_pickedRoute)
  {
    [(PHAudioDeviceController *)self _pickRoute:?];
  }
}

- (void)clearCachedRoutes
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing cached routes", v5, 2u);
  }

  pickedRoute = self->_pickedRoute;
  self->_pickedRoute = 0;
}

- (BOOL)speakerRouteIsPicked
{
  v2 = self;
  v3 = [(PHAudioDeviceController *)self _pickedRouteUsingBackgroundQueue:0];
  LOBYTE(v2) = [(PHAudioDeviceController *)v2 _routeIsSpeaker:v3];

  return v2;
}

- (BOOL)receiverRouteIsPicked
{
  v2 = self;
  v3 = [(PHAudioDeviceController *)self _pickedRouteUsingBackgroundQueue:0];
  LOBYTE(v2) = [(PHAudioDeviceController *)v2 _routeIsReceiver:v3];

  return v2;
}

- (id)_pickedRouteUsingBackgroundQueue:(BOOL)a3
{
  p_pickedRoute = &self->_pickedRoute;
  pickedRoute = self->_pickedRoute;
  if (pickedRoute)
  {
    v5 = pickedRoute;
  }

  else
  {
    v6 = a3;
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PHAudioDeviceController *)self callForPickableRoutesUsingBackgroundQueue:v6];
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Refreshing picked route based on call: %@", buf, 0xCu);
    }

    v10 = +[TUAudioSystemController sharedAudioSystemController];
    v11 = [v10 isTTY];

    if ((v11 & 1) == 0)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = [(PHAudioDeviceController *)self _pickableRoutesUsingBackgroundQueue:v6, 0];
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
LABEL_8:
        v16 = 0;
        while (1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          v18 = [v17 valueForKey:AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked];
          v19 = [v18 BOOLValue];

          if (v19)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        v20 = v17;

        if (v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_14:
      }
    }

    v21 = +[PHAudioDeviceController sharedSystemController];
    v20 = [v21 attributeForKey:AVSystemController_PickedRouteAttribute];

LABEL_17:
    objc_storeStrong(p_pickedRoute, v20);
    v22 = PHDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *p_pickedRoute;
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Refreshed picked route: %@", buf, 0xCu);
    }

    v5 = *p_pickedRoute;
  }

  return v5;
}

- (id)_pickableRoutesUsingAttribute
{
  if (_pickableRoutesUsingAttribute__pred__AVSystemController_PickableRoutesAttribute != -1)
  {
    [PHAudioDeviceController _pickableRoutesUsingAttribute];
  }

  if (!_pickableRoutesUsingAttribute__AVSystemController_PickableRoutesAttribute)
  {
    v4 = [NSString stringWithFormat:@"Failed to weak link AVSystemController_PickableRoutesAttribute"];
    NSLog(@"** TUAssertion failure: %@", v4);

    if (_TUAssertShouldCrashApplication())
    {
      if (!_pickableRoutesUsingAttribute__AVSystemController_PickableRoutesAttribute)
      {
        [(PHAudioDeviceController *)a2 _pickableRoutesUsingAttribute];
      }
    }
  }

  v5 = +[PHAudioDeviceController sharedSystemController];
  v6 = [v5 attributeForKey:_pickableRoutesUsingAttribute__AVSystemController_PickableRoutesAttribute];

  return v6;
}

void __56__PHAudioDeviceController__pickableRoutesUsingAttribute__block_invoke(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&_pickableRoutesUsingAttribute__AVSystemController_PickableRoutesAttribute, v2);
}

- (id)_pickableRoutesUsingBackgroundQueue:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioDeviceController *)self delegate];
  if (v5 && (v6 = v5, -[PHAudioDeviceController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isPendingAudioSessionActivation], v7, v6, v8))
  {
    v9 = [(PHAudioDeviceController *)self _pickableRoutesUsingAttribute];
  }

  else
  {
    v10 = +[AVAudioSession sharedInstance];
    v11 = [v10 category];
    v9 = [(PHAudioDeviceController *)self _unformattedPickableRoutesForAudioSessionCategory:v11 usingBackgroundQueue:v3];
  }

  return v9;
}

- (id)_unformattedPickableRoutesForAudioSessionCategory:(id)a3 usingBackgroundQueue:(BOOL)a4
{
  v4 = a4;
  if ([a3 isEqualToString:AVAudioSessionCategoryVoiceMail])
  {
    v6 = [(PHAudioDeviceController *)self _pickableRoutesForCategory:@"Voicemail" mode:0];
  }

  else
  {
    v7 = +[TUAudioSystemController sharedAudioSystemController];
    v8 = [v7 isTTY];

    if (v8)
    {
      v9 = +[TUAudioSystemController sharedAudioSystemController];
      v6 = [v9 pickableRoutesForTTY];
    }

    else
    {
      v9 = [(PHAudioDeviceController *)self callForPickableRoutesUsingBackgroundQueue:v4];
      v10 = [v9 audioCategory];

      if (v10)
      {
        v11 = [v9 audioCategory];
        v12 = [v9 audioMode];
        v6 = [(PHAudioDeviceController *)self _pickableRoutesForCategory:v11 mode:v12];
      }

      else
      {
        v11 = +[TUAudioSystemController sharedAudioSystemController];
        v6 = [v11 bestGuessPickableRoutesForAnyCall];
      }
    }
  }

  v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if ([(PHAudioDeviceController *)self _routeIsAirTunes:v19])
        {
          v20 = PHDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PHAudioDeviceController: Filtering out AirTunes audio route until better support is available within the app", v23, 2u);
          }
        }

        else
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v21 = v13;
  return v13;
}

- (id)_pickableRoutesForCategory:(id)a3 mode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v8 = +[TUAudioSystemController sharedAudioSystemController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __59__PHAudioDeviceController__pickableRoutesForCategory_mode___block_invoke;
  v11[3] = &unk_100286830;
  v11[4] = self;
  v11[5] = &v12;
  [v8 getPickableRoutesForCategory:v6 mode:v7 completion:v11];

  [(PHAudioDeviceController *)self _acquireLock];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __59__PHAudioDeviceController__pickableRoutesForCategory_mode___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _releaseLock];
}

- (void)_pickRoute:(id)a3
{
  v4 = a3;
  [(PHAudioDeviceController *)self clearCachedRoutes];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHAudioDeviceController: Picking new route = %@", buf, 0xCu);
  }

  v6 = +[PHAudioDeviceController sharedSystemController];
  v12 = 0;
  v7 = [v6 setAttribute:v4 forKey:AVSystemController_PickedRouteAttribute error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0)
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PHAudioDeviceController *)v8 _pickRoute:v9];
    }
  }

  pickedRoute = self->_pickedRoute;
  self->_pickedRoute = v4;
  v11 = v4;

  dispatch_async(&_dispatch_main_q, &__block_literal_global_104);
}

void __38__PHAudioDeviceController__pickRoute___block_invoke(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"PHAudioDeviceControllerPickedRouteChangedNotification" object:0];
}

- (BOOL)_routeIsAirTunes:(id)a3
{
  v3 = [a3 valueForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
  v4 = [v3 isEqual:@"AirTunes"];

  return v4;
}

- (BOOL)_routeIsSpeaker:(id)a3
{
  v3 = [a3 valueForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
  v4 = [v3 isEqual:@"Speaker"];

  return v4;
}

- (BOOL)_routeIsReceiver:(id)a3
{
  v3 = [a3 valueForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
  v4 = [v3 isEqual:@"Receiver"];

  return v4;
}

- (BOOL)_routeIsDefault:(id)a3
{
  v3 = [a3 valueForKey:AVSystemController_RouteDescriptionKey_RouteType];
  v4 = [v3 isEqual:AVSystemController_PickableRouteType_Default];

  return v4;
}

- (BOOL)_routeIsHandset:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioDeviceController *)self _routeIsReceiver:v4];
  v6 = [(PHAudioDeviceController *)self _routeIsDefault:v4];
  v7 = [(PHAudioDeviceController *)self _routeIsSpeaker:v4];

  if (v5)
  {
    return 1;
  }

  else
  {
    return v6 & (v7 ^ 1);
  }
}

- (void)_acquireLock
{
  v2 = [(PHAudioDeviceController *)self modifyingStateLock];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_releaseLock
{
  v2 = [(PHAudioDeviceController *)self modifyingStateLock];
  dispatch_semaphore_signal(v2);
}

- (void)_audioRouteInformationChanged
{
  [(PHAudioDeviceController *)self clearCachedRoutes];

  dispatch_async(&_dispatch_main_q, &__block_literal_global_115);
}

void __56__PHAudioDeviceController__audioRouteInformationChanged__block_invoke(id a1)
{
  v1 = PHDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"PHAudioDeviceControllerAudioRoutesChangedNotification";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Posting %@", &v3, 0xCu);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHAudioDeviceControllerAudioRoutesChangedNotification" object:0];
}

- (PHAudioDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_pickableRoutesUsingAttribute
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PHAudioDeviceController.m" lineNumber:265 description:@"Failed to weak link AVSystemController_PickableRoutesAttribute"];
}

- (void)_pickRoute:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PHAudioDeviceController: Error picking new route: %@", &v2, 0xCu);
}

@end