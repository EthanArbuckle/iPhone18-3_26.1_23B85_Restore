@interface NavdNavigationStateProvider
- (NavdNavigationStateProvider)initWithNavigationService:(id)a3 startNavigationDetails:(id)a4;
- (NavigationStateProviderDelegate)delegate;
- (unint64_t)_navigationStateForServiceState:(unint64_t)a3;
- (unint64_t)navigationState;
- (void)dealloc;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)setNavigationState:(unint64_t)a3;
@end

@implementation NavdNavigationStateProvider

- (NavigationStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = [(NavdNavigationStateProvider *)self _navigationStateForServiceState:a4];
  v8 = [(NavdNavigationStateProvider *)self _navigationStateForServiceState:a5];
  if (v7 != v8)
  {
    v9 = v8;
    v10 = [(NavdNavigationStateProvider *)self delegate];
    [v10 navigationStateProvider:self didChangeNavigationState:v9];
  }
}

- (unint64_t)_navigationStateForServiceState:(unint64_t)a3
{
  IsNavigating = MNNavigationServiceStateIsNavigating();
  if (a3 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = IsNavigating;
  }

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)navigationState
{
  v3 = [(NavdNavigationStateProvider *)self navigationService];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NavdNavigationStateProvider *)self navigationService];
  v5 = -[NavdNavigationStateProvider _navigationStateForServiceState:](self, "_navigationStateForServiceState:", [v4 state]);

  return v5;
}

- (void)setNavigationState:(unint64_t)a3
{
  if (a3 == 1)
  {
    v9 = [(NavdNavigationStateProvider *)self navigationService];
    [v9 stopNavigationWithReason:2];
  }

  else if (a3 == 2)
  {
    v4 = [(NavdNavigationStateProvider *)self navigationService];
    v5 = [(NavdNavigationStateProvider *)self startNavigationDetails];
    v6 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BDCB18;
    block[3] = &unk_101661A90;
    v11 = v4;
    v12 = v5;
    v7 = v5;
    v8 = v4;
    dispatch_async(v6, block);
  }
}

- (void)dealloc
{
  v3 = [(NavdNavigationStateProvider *)self navigationService];
  [v3 unregisterObserver:self];

  v4 = [(NavdNavigationStateProvider *)self navigationService];
  [v4 closeForClient:self];

  v5.receiver = self;
  v5.super_class = NavdNavigationStateProvider;
  [(NavdNavigationStateProvider *)&v5 dealloc];
}

- (NavdNavigationStateProvider)initWithNavigationService:(id)a3 startNavigationDetails:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NavdNavigationStateProvider;
  v9 = [(NavdNavigationStateProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startNavigationDetails, a4);
    objc_storeStrong(&v10->_navigationService, a3);
    [(MNNavigationService *)v10->_navigationService registerObserver:v10];
    [(MNNavigationService *)v10->_navigationService openForClient:v10];
  }

  return v10;
}

@end