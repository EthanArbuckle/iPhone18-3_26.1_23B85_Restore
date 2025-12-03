@interface RAPAppState
- (NSString)debugDescription;
- (RAPAppState)initWithMapView:(id)view lookAroundContext:(id)context traits:(id)traits;
- (RAPAppState)initWithMapView:(id)view traits:(id)traits searchHistory:(id)history directionHistory:(id)directionHistory place:(id)place searchDataSource:(id)source directionsDataSource:(id)dataSource currentlyConnectedAuxiliaryControls:(id)self0;
- (RAPAppState)initWithMapView:(id)view traits:(id)traits searchHistory:(id)history directionHistory:(id)directionHistory place:(id)place searchDataSource:(id)source directionsDataSource:(id)dataSource currentlyConnectedAuxiliaryControls:(id)self0 homeShortuts:(id)self1 workShorcuts:(id)self2 schoolShorcuts:(id)self3;
- (RAPAppState)initWithTraits:(id)traits curatedCollectionContext:(id)context;
- (RAPAppState)initWithTraits:(id)traits placecardImageryContext:(id)context;
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

- (RAPAppState)initWithTraits:(id)traits curatedCollectionContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = RAPAppState;
  v8 = [(RAPMapState *)&v11 initWithTraits:traits];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_curatedCollectionContext, context);
  }

  return v9;
}

- (RAPAppState)initWithMapView:(id)view lookAroundContext:(id)context traits:(id)traits
{
  contextCopy = context;
  v10 = [(RAPAppState *)self initWithMapView:view traits:traits searchHistory:&__NSArray0__struct directionHistory:&__NSArray0__struct place:0 searchDataSource:0 directionsDataSource:0 currentlyConnectedAuxiliaryControls:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportedLookAroundContext, context);
  }

  return v11;
}

- (RAPAppState)initWithMapView:(id)view traits:(id)traits searchHistory:(id)history directionHistory:(id)directionHistory place:(id)place searchDataSource:(id)source directionsDataSource:(id)dataSource currentlyConnectedAuxiliaryControls:(id)self0 homeShortuts:(id)self1 workShorcuts:(id)self2 schoolShorcuts:(id)self3
{
  shortutsCopy = shortuts;
  shorcutsCopy = shorcuts;
  schoolShorcutsCopy = schoolShorcuts;
  v21 = shorcutsCopy;
  v22 = [(RAPAppState *)self initWithMapView:view traits:traits searchHistory:history directionHistory:directionHistory place:place searchDataSource:source directionsDataSource:dataSource currentlyConnectedAuxiliaryControls:controls];
  if (v22)
  {
    v23 = [shortutsCopy copy];
    homeShortcuts = v22->_homeShortcuts;
    v22->_homeShortcuts = v23;

    v25 = [v21 copy];
    workShortcuts = v22->_workShortcuts;
    v22->_workShortcuts = v25;

    v27 = [schoolShorcutsCopy copy];
    schoolShortcuts = v22->_schoolShortcuts;
    v22->_schoolShortcuts = v27;
  }

  return v22;
}

- (RAPAppState)initWithMapView:(id)view traits:(id)traits searchHistory:(id)history directionHistory:(id)directionHistory place:(id)place searchDataSource:(id)source directionsDataSource:(id)dataSource currentlyConnectedAuxiliaryControls:(id)self0
{
  historyCopy = history;
  directionHistoryCopy = directionHistory;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  controlsCopy = controls;
  v34.receiver = self;
  v34.super_class = RAPAppState;
  v20 = [(RAPMapState *)&v34 initWithMapView:view traits:traits place:place];
  if (v20)
  {
    activeComposedRoute = [dataSourceCopy activeComposedRoute];
    activeComposedRoute = v20->_activeComposedRoute;
    v20->_activeComposedRoute = activeComposedRoute;

    currentDirections = [dataSourceCopy currentDirections];
    currentDirections = v20->_currentDirections;
    v20->_currentDirections = currentDirections;

    currentSearchString = [sourceCopy currentSearchString];
    currentSearchString = v20->_currentSearchString;
    v20->_currentSearchString = currentSearchString;

    currentUserTypedSearchString = [sourceCopy currentUserTypedSearchString];
    currentUserTypedSearchString = v20->_currentUserTypedSearchString;
    v20->_currentUserTypedSearchString = currentUserTypedSearchString;

    displayedDirectionsPlan = [dataSourceCopy displayedDirectionsPlan];
    displayedDirectionsPlan = v20->_displayedDirectionsPlan;
    v20->_displayedDirectionsPlan = displayedDirectionsPlan;

    v20->_isShowingDirections = [dataSourceCopy isShowingDirections];
    objc_storeStrong(&v20->_currentlyConnectedAuxiliaryControls, controls);
    objc_storeStrong(&v20->_searchesHistory, history);
    objc_storeStrong(&v20->_directionsHistory, directionHistory);
  }

  return v20;
}

- (RAPAppState)initWithTraits:(id)traits placecardImageryContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = RAPAppState;
  v8 = [(RAPMapState *)&v11 initWithTraits:traits];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placecardImageryContext, context);
  }

  return v9;
}

@end