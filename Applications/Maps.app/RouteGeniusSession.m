@interface RouteGeniusSession
- (MapsSuggestionsRouteGeniusEntry)routeGeniusEntry;
- (PlatformController)platformController;
- (RouteGeniusSession)init;
- (void)cleanupStateReplay;
- (void)prepareToReplayCurrentState;
- (void)registerObserver:(id)a3;
- (void)replayCurrentState;
- (void)resume;
- (void)setSessionState:(unint64_t)a3;
- (void)suspend;
- (void)unregisterObserver:(id)a3;
@end

@implementation RouteGeniusSession

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(RouteGeniusSession *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(RouteGeniusSession *)self observers];
  [v5 registerObserver:v4];
}

- (void)cleanupStateReplay
{
  v2 = [(RouteGeniusSession *)self observers];
  [v2 clearSnapshottedObservers];
}

- (void)replayCurrentState
{
  v3 = [(RouteGeniusSession *)self observers];
  [v3 removeSnapshottedObservers];

  v4 = [(RouteGeniusSession *)self observers];
  [v4 mapsSession:self didChangeState:{-[RouteGeniusSession sessionState](self, "sessionState")}];

  v5 = [(RouteGeniusSession *)self observers];
  [v5 restoreOriginalObservers];
}

- (void)prepareToReplayCurrentState
{
  v2 = [(RouteGeniusSession *)self observers];
  [v2 snapshotCurrentObservers];
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
  v3 = [v2 suggestion];

  return v3;
}

- (void)setSessionState:(unint64_t)a3
{
  if (self->_sessionState != a3)
  {
    self->_sessionState = a3;
    v5 = [(RouteGeniusSession *)self observers];
    [v5 mapsSession:self didChangeState:{-[RouteGeniusSession sessionState](self, "sessionState")}];
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