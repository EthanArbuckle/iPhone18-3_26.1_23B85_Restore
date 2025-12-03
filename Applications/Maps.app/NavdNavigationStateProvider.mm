@interface NavdNavigationStateProvider
- (NavdNavigationStateProvider)initWithNavigationService:(id)service startNavigationDetails:(id)details;
- (NavigationStateProviderDelegate)delegate;
- (unint64_t)_navigationStateForServiceState:(unint64_t)state;
- (unint64_t)navigationState;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)setNavigationState:(unint64_t)state;
@end

@implementation NavdNavigationStateProvider

- (NavigationStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v7 = [(NavdNavigationStateProvider *)self _navigationStateForServiceState:state];
  v8 = [(NavdNavigationStateProvider *)self _navigationStateForServiceState:toState];
  if (v7 != v8)
  {
    v9 = v8;
    delegate = [(NavdNavigationStateProvider *)self delegate];
    [delegate navigationStateProvider:self didChangeNavigationState:v9];
  }
}

- (unint64_t)_navigationStateForServiceState:(unint64_t)state
{
  IsNavigating = MNNavigationServiceStateIsNavigating();
  if (state == 3)
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
  navigationService = [(NavdNavigationStateProvider *)self navigationService];

  if (!navigationService)
  {
    return 0;
  }

  navigationService2 = [(NavdNavigationStateProvider *)self navigationService];
  v5 = -[NavdNavigationStateProvider _navigationStateForServiceState:](self, "_navigationStateForServiceState:", [navigationService2 state]);

  return v5;
}

- (void)setNavigationState:(unint64_t)state
{
  if (state == 1)
  {
    navigationService = [(NavdNavigationStateProvider *)self navigationService];
    [navigationService stopNavigationWithReason:2];
  }

  else if (state == 2)
  {
    navigationService2 = [(NavdNavigationStateProvider *)self navigationService];
    startNavigationDetails = [(NavdNavigationStateProvider *)self startNavigationDetails];
    v6 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100BDCB18;
    block[3] = &unk_101661A90;
    v11 = navigationService2;
    v12 = startNavigationDetails;
    v7 = startNavigationDetails;
    v8 = navigationService2;
    dispatch_async(v6, block);
  }
}

- (void)dealloc
{
  navigationService = [(NavdNavigationStateProvider *)self navigationService];
  [navigationService unregisterObserver:self];

  navigationService2 = [(NavdNavigationStateProvider *)self navigationService];
  [navigationService2 closeForClient:self];

  v5.receiver = self;
  v5.super_class = NavdNavigationStateProvider;
  [(NavdNavigationStateProvider *)&v5 dealloc];
}

- (NavdNavigationStateProvider)initWithNavigationService:(id)service startNavigationDetails:(id)details
{
  serviceCopy = service;
  detailsCopy = details;
  v12.receiver = self;
  v12.super_class = NavdNavigationStateProvider;
  v9 = [(NavdNavigationStateProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startNavigationDetails, details);
    objc_storeStrong(&v10->_navigationService, service);
    [(MNNavigationService *)v10->_navigationService registerObserver:v10];
    [(MNNavigationService *)v10->_navigationService openForClient:v10];
  }

  return v10;
}

@end