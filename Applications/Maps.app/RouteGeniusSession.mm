@interface RouteGeniusSession
- (MapsSuggestionsRouteGeniusEntry)routeGeniusEntry;
- (PlatformController)platformController;
- (RouteGeniusSession)init;
- (void)cleanupStateReplay;
- (void)prepareToReplayCurrentState;
- (void)registerObserver:(id)observer;
- (void)replayCurrentState;
- (void)resume;
- (void)setSessionState:(unint64_t)state;
- (void)suspend;
- (void)unregisterObserver:(id)observer;
@end

@implementation RouteGeniusSession

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RouteGeniusSession *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(RouteGeniusSession *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)cleanupStateReplay
{
  observers = [(RouteGeniusSession *)self observers];
  [observers clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  observers = [(RouteGeniusSession *)self observers];
  [observers removeSnapshottedObservers];

  observers2 = [(RouteGeniusSession *)self observers];
  [observers2 mapsSession:self didChangeState:{-[RouteGeniusSession sessionState](self, "sessionState")}];

  observers3 = [(RouteGeniusSession *)self observers];
  [observers3 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  observers = [(RouteGeniusSession *)self observers];
  [observers snapshotCurrentObservers];
}

- (void)suspend
{
  if ([(RouteGeniusSession *)self sessionState]== 1)
  {

    [(RouteGeniusSession *)self setSessionState:2];
  }
}

- (void)resume
{
  if ([(RouteGeniusSession *)self sessionState]!= 1)
  {

    [(RouteGeniusSession *)self setSessionState:1];
  }
}

- (MapsSuggestionsRouteGeniusEntry)routeGeniusEntry
{
  v2 = +[CarRouteGeniusService sharedService];
  suggestion = [v2 suggestion];

  return suggestion;
}

- (void)setSessionState:(unint64_t)state
{
  if (self->_sessionState != state)
  {
    self->_sessionState = state;
    observers = [(RouteGeniusSession *)self observers];
    [observers mapsSession:self didChangeState:{-[RouteGeniusSession sessionState](self, "sessionState")}];
  }
}

- (RouteGeniusSession)init
{
  v6.receiver = self;
  v6.super_class = RouteGeniusSession;
  v2 = [(RouteGeniusSession *)&v6 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsSessionObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

@end