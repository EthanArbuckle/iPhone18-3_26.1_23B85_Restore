@interface MapsPinsController
+ (id)sharedController;
- (MSPDroppedPin)droppedPin;
- (MapsPinsController)init;
- (void)_handleNewOrModifiedCustomSearchResult:(id)a3;
- (void)_notifySearchManager;
- (void)_updatePinsWithCompletion:(id)a3;
- (void)customSearchManager:(id)a3 didModifyCustomSearchResult:(id)a4 coordinateChanged:(BOOL)a5;
- (void)customSearchManager:(id)a3 didReplaceCustomSearchResult:(id)a4 animated:(BOOL)a5 shouldSelectOnMap:(id)a6 context:(id)a7;
@end

@implementation MapsPinsController

- (MapsPinsController)init
{
  v8.receiver = self;
  v8.super_class = MapsPinsController;
  v2 = [(MapsPinsController *)&v8 init];
  if (v2)
  {
    v3 = +[CustomSearchManager sharedManager];
    [v3 addObserver:v2];

    v9 = objc_opt_class();
    v4 = [NSArray arrayWithObjects:&v9 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v4;

    v6 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v6 subscribe:v2];

    [(MapsPinsController *)v2 _updatePinsWithCompletion:0];
  }

  return v2;
}

+ (id)sharedController
{
  if (qword_10195E610 != -1)
  {
    dispatch_once(&qword_10195E610, &stru_101637F78);
  }

  v3 = qword_10195E608;

  return v3;
}

- (MSPDroppedPin)droppedPin
{
  pin = self->_pin;
  if (pin)
  {
    pin = [pin droppedPin];
    v2 = vars8;
  }

  return pin;
}

- (void)_notifySearchManager
{
  v3 = [SearchResult alloc];
  v4 = [(MapsPinsController *)self droppedPin];
  v6 = [(SearchResult *)v3 initWithDroppedPin:v4];

  v5 = +[CustomSearchManager sharedManager];
  [v5 setCustomSearchResult:v6 animated:0 shouldSelectOnMap:0 context:@"com.apple.Maps.MapsPinsController"];
}

- (void)_updatePinsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
  v6 = [[_TtC8MapsSync13MapsSyncRange alloc] initWithOffset:0 limit:1];
  v7 = [v5 initWithPredicate:0 sortDescriptors:0 range:v6];

  v8 = objc_alloc_init(MSHistoryMarkedLocationRequest);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100AFE5F0;
  v10[3] = &unk_1016601F0;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 fetchWithOptions:v7 completionHandler:v10];
}

- (void)_handleNewOrModifiedCustomSearchResult:(id)a3
{
  v4 = a3;
  pin = self->_pin;
  if (!v4 && pin)
  {
    v7 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v14 = self->_pin;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    [v7 deleteWithObjects:v8 completionHandler:&stru_101637F98];

    v9 = self->_pin;
    self->_pin = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (![(MSHistoryMarkedLocation *)pin isEqualToSearchResult:v4])
  {
    v6 = self->_pin;
    if (v6)
    {
      [(MSHistoryMarkedLocation *)v6 updateWithSearchResult:v4];
    }

    else
    {
      v10 = [[MSHistoryMarkedLocation alloc] initWithSearchResult:v4];
      v11 = self->_pin;
      self->_pin = v10;
    }

    v9 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v13 = self->_pin;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v9 saveWithObjects:v12 completionHandler:&stru_101637FB8];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)customSearchManager:(id)a3 didModifyCustomSearchResult:(id)a4 coordinateChanged:(BOOL)a5
{
  if (a5)
  {
    [(MapsPinsController *)self _handleNewOrModifiedCustomSearchResult:a4];
  }
}

- (void)customSearchManager:(id)a3 didReplaceCustomSearchResult:(id)a4 animated:(BOOL)a5 shouldSelectOnMap:(id)a6 context:(id)a7
{
  v9 = a4;
  if (([a7 isEqual:@"com.apple.Maps.MapsPinsController"] & 1) == 0)
  {
    [(MapsPinsController *)self _handleNewOrModifiedCustomSearchResult:v9];
  }
}

@end