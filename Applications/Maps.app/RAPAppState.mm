@interface RAPAppState
- (NSString)debugDescription;
- (RAPAppState)initWithMapView:(id)a3 lookAroundContext:(id)a4 traits:(id)a5;
- (RAPAppState)initWithMapView:(id)a3 traits:(id)a4 searchHistory:(id)a5 directionHistory:(id)a6 place:(id)a7 searchDataSource:(id)a8 directionsDataSource:(id)a9 currentlyConnectedAuxiliaryControls:(id)a10;
- (RAPAppState)initWithMapView:(id)a3 traits:(id)a4 searchHistory:(id)a5 directionHistory:(id)a6 place:(id)a7 searchDataSource:(id)a8 directionsDataSource:(id)a9 currentlyConnectedAuxiliaryControls:(id)a10 homeShortuts:(id)a11 workShorcuts:(id)a12 schoolShorcuts:(id)a13;
- (RAPAppState)initWithTraits:(id)a3 curatedCollectionContext:(id)a4;
- (RAPAppState)initWithTraits:(id)a3 placecardImageryContext:(id)a4;
@end

@implementation RAPAppState

- (NSString)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = v3;
  if (self->_isShowingDirections)
  {
    v5 = @"\nis showing directions";
  }

  else
  {
    v5 = @"\nis not showing directions";
  }

  [v3 appendString:v5];
  currentSearchString = self->_currentSearchString;
  if (!currentSearchString)
  {
    currentSearchString = @"<none>";
  }

  [v4 appendFormat:@"\ncurrent search string: %@", currentSearchString];
  currentUserTypedSearchString = self->_currentUserTypedSearchString;
  if (!currentUserTypedSearchString)
  {
    currentUserTypedSearchString = @"<none>";
  }

  [v4 appendFormat:@"\ncurrent user typed search string: %@", currentUserTypedSearchString];
  v11.receiver = self;
  v11.super_class = RAPAppState;
  v8 = [(RAPMapState *)&v11 debugDescription];
  [v4 appendString:v8];

  if (self->_currentDirections)
  {
    [v4 appendFormat:@"\ncurrent directions: %@", self->_currentDirections];
  }

  if (self->_displayedDirectionsPlan)
  {
    [v4 appendFormat:@"\ndisplayed directions plan: %@", self->_displayedDirectionsPlan];
  }

  if (self->_activeComposedRoute)
  {
    [v4 appendFormat:@"\nactive composed route: %@", self->_activeComposedRoute];
  }

  if (self->_searchesHistory)
  {
    [v4 appendFormat:@"\nsearch history: %@", self->_searchesHistory];
  }

  if (self->_directionsHistory)
  {
    [v4 appendFormat:@"\ndirections history: %@", self->_directionsHistory];
  }

  if (self->_currentlyConnectedAuxiliaryControls)
  {
    [v4 appendFormat:@"\ncurrently connected auxiliary controls: %@", self->_currentlyConnectedAuxiliaryControls];
  }

  v9 = [v4 copy];

  return v9;
}

- (RAPAppState)initWithTraits:(id)a3 curatedCollectionContext:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RAPAppState;
  v8 = [(RAPMapState *)&v11 initWithTraits:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_curatedCollectionContext, a4);
  }

  return v9;
}

- (RAPAppState)initWithMapView:(id)a3 lookAroundContext:(id)a4 traits:(id)a5
{
  v9 = a4;
  v10 = [(RAPAppState *)self initWithMapView:a3 traits:a5 searchHistory:&__NSArray0__struct directionHistory:&__NSArray0__struct place:0 searchDataSource:0 directionsDataSource:0 currentlyConnectedAuxiliaryControls:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportedLookAroundContext, a4);
  }

  return v11;
}

- (RAPAppState)initWithMapView:(id)a3 traits:(id)a4 searchHistory:(id)a5 directionHistory:(id)a6 place:(id)a7 searchDataSource:(id)a8 directionsDataSource:(id)a9 currentlyConnectedAuxiliaryControls:(id)a10 homeShortuts:(id)a11 workShorcuts:(id)a12 schoolShorcuts:(id)a13
{
  v18 = a11;
  v19 = a12;
  v20 = a13;
  v21 = v19;
  v22 = [(RAPAppState *)self initWithMapView:a3 traits:a4 searchHistory:a5 directionHistory:a6 place:a7 searchDataSource:a8 directionsDataSource:a9 currentlyConnectedAuxiliaryControls:a10];
  if (v22)
  {
    v23 = [v18 copy];
    homeShortcuts = v22->_homeShortcuts;
    v22->_homeShortcuts = v23;

    v25 = [v21 copy];
    workShortcuts = v22->_workShortcuts;
    v22->_workShortcuts = v25;

    v27 = [v20 copy];
    schoolShortcuts = v22->_schoolShortcuts;
    v22->_schoolShortcuts = v27;
  }

  return v22;
}

- (RAPAppState)initWithMapView:(id)a3 traits:(id)a4 searchHistory:(id)a5 directionHistory:(id)a6 place:(id)a7 searchDataSource:(id)a8 directionsDataSource:(id)a9 currentlyConnectedAuxiliaryControls:(id)a10
{
  v33 = a5;
  v32 = a6;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v34.receiver = self;
  v34.super_class = RAPAppState;
  v20 = [(RAPMapState *)&v34 initWithMapView:a3 traits:a4 place:a7];
  if (v20)
  {
    v21 = [v18 activeComposedRoute];
    activeComposedRoute = v20->_activeComposedRoute;
    v20->_activeComposedRoute = v21;

    v23 = [v18 currentDirections];
    currentDirections = v20->_currentDirections;
    v20->_currentDirections = v23;

    v25 = [v17 currentSearchString];
    currentSearchString = v20->_currentSearchString;
    v20->_currentSearchString = v25;

    v27 = [v17 currentUserTypedSearchString];
    currentUserTypedSearchString = v20->_currentUserTypedSearchString;
    v20->_currentUserTypedSearchString = v27;

    v29 = [v18 displayedDirectionsPlan];
    displayedDirectionsPlan = v20->_displayedDirectionsPlan;
    v20->_displayedDirectionsPlan = v29;

    v20->_isShowingDirections = [v18 isShowingDirections];
    objc_storeStrong(&v20->_currentlyConnectedAuxiliaryControls, a10);
    objc_storeStrong(&v20->_searchesHistory, a5);
    objc_storeStrong(&v20->_directionsHistory, a6);
  }

  return v20;
}

- (RAPAppState)initWithTraits:(id)a3 placecardImageryContext:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RAPAppState;
  v8 = [(RAPMapState *)&v11 initWithTraits:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placecardImageryContext, a4);
  }

  return v9;
}

@end