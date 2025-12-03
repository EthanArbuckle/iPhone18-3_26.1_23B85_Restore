@interface RouteMarkerFormatterController
- (RouteMarkerFormatterController)initWithDelegate:(id)delegate;
- (RouteMarkerFormatterControllerDelegate)delegate;
- (RouteMarkerFormatterCustomText)customTextFormatter;
- (RouteMarkerFormatterETA)etaFormatter;
- (RouteMarkerFormatterRouteName)nameFormatter;
- (RouteMarkerFormatterTotal)totalTimeFormatter;
- (id)_formatterForStyle:(unint64_t)style;
- (id)markerInfoForRoute:(id)route;
- (id)markerInfosForLegsInRoute:(id)route;
- (void)_clearFormatters;
- (void)routeMarkerFormatterETA:(id)a didUpdateMarkerInfoForRoutes:(id)routes;
- (void)setRoutes:(id)routes;
- (void)setRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (void)setSelectedRouteCustomText:(id)text;
- (void)setSelectedRouteIndex:(unint64_t)index;
@end

@implementation RouteMarkerFormatterController

- (RouteMarkerFormatterControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)routeMarkerFormatterETA:(id)a didUpdateMarkerInfoForRoutes:(id)routes
{
  routesCopy = routes;
  if ([(RouteMarkerFormatterController *)self formattingStyle]== 2)
  {
    delegate = [(RouteMarkerFormatterController *)self delegate];
    [delegate routeMarkerFormatterController:self didUpdateMarkerInfoForRoutes:routesCopy];
  }
}

- (RouteMarkerFormatterCustomText)customTextFormatter
{
  customTextFormatter = self->_customTextFormatter;
  if (!customTextFormatter)
  {
    v4 = [RouteMarkerFormatterCustomText alloc];
    routes = self->_routes;
    selectedRouteIndex = [(RouteMarkerFormatterController *)self selectedRouteIndex];
    selectedRouteCustomText = [(RouteMarkerFormatterController *)self selectedRouteCustomText];
    v8 = [(RouteMarkerFormatterCustomText *)v4 initWithRoutes:routes selectedRouteIndex:selectedRouteIndex customSelectedRouteText:selectedRouteCustomText];
    v9 = self->_customTextFormatter;
    self->_customTextFormatter = v8;

    customTextFormatter = self->_customTextFormatter;
  }

  return customTextFormatter;
}

- (RouteMarkerFormatterRouteName)nameFormatter
{
  nameFormatter = self->_nameFormatter;
  if (!nameFormatter)
  {
    v4 = [[RouteMarkerFormatterRouteName alloc] initWithRoutes:self->_routes selectedRouteIndex:[(RouteMarkerFormatterController *)self selectedRouteIndex]];
    v5 = self->_nameFormatter;
    self->_nameFormatter = v4;

    nameFormatter = self->_nameFormatter;
  }

  return nameFormatter;
}

- (RouteMarkerFormatterETA)etaFormatter
{
  etaFormatter = self->_etaFormatter;
  if (!etaFormatter)
  {
    v4 = [RouteMarkerFormatterETA alloc];
    v5 = +[MNNavigationService sharedService];
    v6 = [(RouteMarkerFormatterETA *)v4 initWithNavigationService:v5];
    v7 = self->_etaFormatter;
    self->_etaFormatter = v6;

    [(RouteMarkerFormatterETA *)self->_etaFormatter setDelegate:self];
    etaFormatter = self->_etaFormatter;
  }

  return etaFormatter;
}

- (RouteMarkerFormatterTotal)totalTimeFormatter
{
  if (!self->_totalTimeFormatter)
  {
    v3 = [[RouteMarkerFormatterTotal alloc] initWithRoutes:self->_routes selectedRouteIndex:[(RouteMarkerFormatterController *)self selectedRouteIndex]];
    totalTimeFormatter = self->_totalTimeFormatter;
    self->_totalTimeFormatter = v3;
  }

  suggestionEntry = [(RouteMarkerFormatterController *)self suggestionEntry];
  [(RouteMarkerFormatterTotal *)self->_totalTimeFormatter setCurrentSuggestionEntry:suggestionEntry];

  v6 = self->_totalTimeFormatter;

  return v6;
}

- (id)_formatterForStyle:(unint64_t)style
{
  nameFormatter = 0;
  if (style > 2)
  {
    if (style == 3)
    {
      nameFormatter = [(RouteMarkerFormatterController *)self nameFormatter];
    }

    else if (style == 4)
    {
      nameFormatter = [(RouteMarkerFormatterController *)self customTextFormatter];
    }
  }

  else if (style == 1)
  {
    nameFormatter = [(RouteMarkerFormatterController *)self totalTimeFormatter];
  }

  else if (style == 2)
  {
    nameFormatter = [(RouteMarkerFormatterController *)self etaFormatter];
  }

  return nameFormatter;
}

- (void)_clearFormatters
{
  totalTimeFormatter = self->_totalTimeFormatter;
  self->_totalTimeFormatter = 0;

  etaFormatter = self->_etaFormatter;
  self->_etaFormatter = 0;

  customTextFormatter = self->_customTextFormatter;
  self->_customTextFormatter = 0;
}

- (void)setSelectedRouteCustomText:(id)text
{
  v4 = [text copy];
  selectedRouteCustomText = self->_selectedRouteCustomText;
  self->_selectedRouteCustomText = v4;

  customTextFormatter = self->_customTextFormatter;
  self->_customTextFormatter = 0;
}

- (void)setSelectedRouteIndex:(unint64_t)index
{
  if (self->_selectedRouteIndex != index)
  {
    self->_selectedRouteIndex = index;
    totalTimeFormatter = [(RouteMarkerFormatterController *)self totalTimeFormatter];
    [totalTimeFormatter setSelectedRouteIndex:index];
  }
}

- (void)setRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  routes = self->_routes;
  v11 = routesCopy;
  if (routes != routesCopy && (v8 = [(NSArray *)routes isEqualToArray:routesCopy], routesCopy = v11, !v8) || self->_selectedRouteIndex != index)
  {
    v9 = [(NSArray *)routesCopy copy];
    v10 = self->_routes;
    self->_routes = v9;

    self->_selectedRouteIndex = index;
    [(RouteMarkerFormatterController *)self _clearFormatters];
    routesCopy = v11;
  }
}

- (void)setRoutes:(id)routes
{
  routesCopy = routes;
  if ([routesCopy count])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(RouteMarkerFormatterController *)self setRoutes:routesCopy selectedRouteIndex:v4];
}

- (id)markerInfosForLegsInRoute:(id)route
{
  routeCopy = route;
  v5 = [(RouteMarkerFormatterController *)self _formatterForStyle:[(RouteMarkerFormatterController *)self formattingStyle]];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 markerInfosForLegsInRoute:routeCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)markerInfoForRoute:(id)route
{
  routeCopy = route;
  v5 = [(RouteMarkerFormatterController *)self _formatterForStyle:[(RouteMarkerFormatterController *)self formattingStyle]];
  v6 = [v5 markerInfoForRoute:routeCopy];

  return v6;
}

- (RouteMarkerFormatterController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = RouteMarkerFormatterController;
  v5 = [(RouteMarkerFormatterController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end