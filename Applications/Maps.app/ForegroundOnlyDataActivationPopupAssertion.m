@interface ForegroundOnlyDataActivationPopupAssertion
- (ForegroundOnlyDataActivationPopupAssertion)init;
- (void)_didEnterBackground:(id)a3;
- (void)_willEnterForeground:(id)a3;
- (void)dealloc;
@end

@implementation ForegroundOnlyDataActivationPopupAssertion

- (void)_didEnterBackground:(id)a3
{
  if (self->super._active)
  {
    [(DataActivationPopupAssertion *)self _releaseAssertion];
  }
}

- (void)_willEnterForeground:(id)a3
{
  if (self->super._active)
  {
    [(DataActivationPopupAssertion *)self _takeAssertion];
  }
}

- (void)dealloc
{
  v3 = +[MKApplicationStateMonitor sharedInstance];
  [v3 stopObserving];

  v4.receiver = self;
  v4.super_class = ForegroundOnlyDataActivationPopupAssertion;
  [(DataActivationPopupAssertion *)&v4 dealloc];
}

- (ForegroundOnlyDataActivationPopupAssertion)init
{
  v10.receiver = self;
  v10.super_class = ForegroundOnlyDataActivationPopupAssertion;
  v2 = [(DataActivationPopupAssertion *)&v10 initAndTakeAssertion:0];
  if (v2)
  {
    v3 = +[MKApplicationStateMonitor sharedInstance];
    [v3 startObserving];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_willEnterForeground:" name:MKApplicationStateWillEnterForegroundNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_didEnterBackground:" name:MKApplicationStateDidEnterBackgroundNotification object:0];

    v6 = +[MKApplicationStateMonitor sharedInstance];
    v7 = [v6 isInBackground];

    if ((v7 & 1) == 0)
    {
      [(DataActivationPopupAssertion *)v2 _takeAssertion];
    }

    v8 = v2;
  }

  return v2;
}

@end