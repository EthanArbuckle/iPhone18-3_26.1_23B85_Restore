@interface PHSOSDisconnectionConfirmation
+ (id)sharedInstance;
- (PHSOSDisconnectionConfirmation)init;
- (void)addDelegate:(id)delegate;
- (void)clearAllDelegates;
- (void)dealloc;
- (void)dismissAlertControllers;
- (void)removeDelegate:(id)delegate;
- (void)showSOSDisconnectConfirmation:(id)confirmation;
@end

@implementation PHSOSDisconnectionConfirmation

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A36B0;
  block[3] = &unk_1003567B0;
  block[4] = self;
  if (qword_1003B0DE0 != -1)
  {
    dispatch_once(&qword_1003B0DE0, block);
  }

  v2 = qword_1003B0DD8;

  return v2;
}

- (PHSOSDisconnectionConfirmation)init
{
  v8.receiver = self;
  v8.super_class = PHSOSDisconnectionConfirmation;
  v2 = [(PHSOSDisconnectionConfirmation *)&v8 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = v3;

    v5 = +[NSMutableArray array];
    alertControllers = v2->_alertControllers;
    v2->_alertControllers = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[TUCallCenter sharedInstance];
  [v3 setDisconnectCallPreflight:0];

  [(PHSOSDisconnectionConfirmation *)self dismissAlertControllers];
  v4.receiver = self;
  v4.super_class = PHSOSDisconnectionConfirmation;
  [(PHSOSDisconnectionConfirmation *)&v4 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(PHSOSDisconnectionConfirmation *)self delegates];
  [delegates addObject:delegateCopy];

  delegates2 = [(PHSOSDisconnectionConfirmation *)self delegates];
  v7 = [delegates2 count];

  if (v7 == 1)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, delegateCopy);
    v8 = +[TUCallCenter sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A3940;
    v9[3] = &unk_100358598;
    objc_copyWeak(&v10, &from);
    objc_copyWeak(&v11, &location);
    [v8 setDisconnectCallPreflight:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(PHSOSDisconnectionConfirmation *)self delegates];
  [delegates removeObject:delegateCopy];

  delegates2 = [(PHSOSDisconnectionConfirmation *)self delegates];
  v7 = [delegates2 count];

  if (!v7)
  {
    v8 = +[TUCallCenter sharedInstance];
    [v8 setDisconnectCallPreflight:0];
  }
}

- (void)clearAllDelegates
{
  v3 = +[CNKFeatures sharedInstance];
  isEnhancedEmergencyEnabled = [v3 isEnhancedEmergencyEnabled];

  if (isEnhancedEmergencyEnabled)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    [(PHSOSDisconnectionConfirmation *)self setDelegates:v5];

    v6 = +[TUCallCenter sharedInstance];
    [v6 setDisconnectCallPreflight:0];
  }
}

- (void)showSOSDisconnectConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  [(PHSOSDisconnectionConfirmation *)self dismissAlertControllers];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(PHSOSDisconnectionConfirmation *)self delegates];
  v20 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v18 = *v31;
    do
    {
      v4 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * v4);
        objc_initWeak(&location, self);
        v6 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"CANCEL" value:&stru_100361FD0 table:@"InCallService"];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000A4054;
        v25[3] = &unk_1003585C0;
        v9 = confirmationCopy;
        v27 = v9;
        objc_copyWeak(&v28, &location);
        v10 = v6;
        v26 = v10;
        v11 = [UIAlertAction actionWithTitle:v8 style:1 handler:v25];
        [v10 addAction:v11];

        v12 = +[NSBundle mainBundle];
        v13 = [v12 localizedStringForKey:@"END_CALL_SOS" value:&stru_100361FD0 table:@"InCallService"];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000A40D0;
        v21[3] = &unk_1003585E8;
        v23 = v9;
        v21[4] = self;
        objc_copyWeak(&v24, &location);
        v14 = v10;
        v22 = v14;
        v15 = [UIAlertAction actionWithTitle:v13 style:2 handler:v21];
        [v14 addAction:v15];

        alertControllers = [(PHSOSDisconnectionConfirmation *)self alertControllers];
        [alertControllers addObject:v14];

        [v5 presentDisconnectionAlert:v14];
        objc_destroyWeak(&v24);

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
        v4 = v4 + 1;
      }

      while (v20 != v4);
      v20 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v20);
  }
}

- (void)dismissAlertControllers
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  alertControllers = [(PHSOSDisconnectionConfirmation *)self alertControllers];
  v4 = [alertControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(alertControllers);
        }

        [*(*(&v9 + 1) + 8 * v7) dismissViewControllerAnimated:1 completion:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [alertControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  alertControllers2 = [(PHSOSDisconnectionConfirmation *)self alertControllers];
  [alertControllers2 removeAllObjects];
}

@end