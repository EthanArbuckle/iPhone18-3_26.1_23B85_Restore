@interface RouteMarkerFormatterController
- (RouteMarkerFormatterController)initWithDelegate:(id)a3;
- (RouteMarkerFormatterControllerDelegate)delegate;
- (RouteMarkerFormatterCustomText)customTextFormatter;
- (RouteMarkerFormatterETA)etaFormatter;
- (RouteMarkerFormatterRouteName)nameFormatter;
- (RouteMarkerFormatterTotal)totalTimeFormatter;
- (id)_formatterForStyle:(unint64_t)a3;
- (id)markerInfoForRoute:(id)a3;
- (id)markerInfosForLegsInRoute:(id)a3;
- (void)_clearFormatters;
- (void)routeMarkerFormatterETA:(id)a3 didUpdateMarkerInfoForRoutes:(id)a4;
- (void)setRoutes:(id)a3;
- (void)setRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)setSelectedRouteCustomText:(id)a3;
- (void)setSelectedRouteIndex:(unint64_t)a3;
@end

@implementation RouteMarkerFormatterController

- (RouteMarkerFormatterControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)routeMarkerFormatterETA:(id)a3 didUpdateMarkerInfoForRoutes:(id)a4
{
  v6 = a4;
  if ([(RouteMarkerFormatterController *)self formattingStyle]== 2)
  {
    v5 = [(RouteMarkerFormatterController *)self delegate];
    [v5 routeMarkerFormatterController:self didUpdateMarkerInfoForRoutes:v6];
  }
}

- (RouteMarkerFormatterCustomText)customTextFormatter
{
  customTextFormatter = self->_customTextFormatter;
  if (!customTextFormatter)
  {
    v4 = [RouteMarkerFormatterCustomText alloc];
    routes = self->_routes;
    v6 = [(RouteMarkerFormatterController *)self selectedRouteIndex];
    v7 = [(RouteMarkerFormatterController *)self selectedRouteCustomText];
    v8 = [(RouteMarkerFormatterCustomText *)v4 initWithRoutes:routes selectedRouteIndex:v6 customSelectedRouteText:v7];
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

  v5 = [(RouteMarkerFormatterController *)self suggestionEntry];
  [(RouteMarkerFormatterTotal *)self->_totalTimeFormatter setCurrentSuggestionEntry:v5];

  v6 = self->_totalTimeFormatter;

  return v6;
}

- (id)_formatterForStyle:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = [(RouteMarkerFormatterController *)self nameFormatter];
    }

    else if (a3 == 4)
    {
      v4 = [(RouteMarkerFormatterController *)self customTextFormatter];
    }
  }

  else if (a3 == 1)
  {
    v4 = [(RouteMarkerFormatterController *)self totalTimeFormatter];
  }

  else if (a3 == 2)
  {
    v4 = [(RouteMarkerFormatterController *)self etaFormatter];
  }

  return v4;
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

- (void)setSelectedRouteCustomText:(id)a3
{
  v4 = [a3 copy];
  selectedRouteCustomText = self->_selectedRouteCustomText;
  self->_selectedRouteCustomText = v4;

  customTextFormatter = self->_customTextFormatter;
  self->_customTextFormatter = 0;
}

- (void)setSelectedRouteIndex:(unint64_t)a3
{
  if (self->_selectedRouteIndex != a3)
  {
    self->_selectedRouteIndex = a3;
    v5 = [(RouteMarkerFormatterController *)self totalTimeFormatter];
    [v5 setSelectedRouteIndex:a3];
  }
}

- (void)setRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
  routes = self->_routes;
  v11 = v6;
  if (routes != v6 && (v8 = [(NSArray *)routes isEqualToArray:v6], v6 = v11, !v8) || self->_selectedRouteIndex != a4)
  {
    v9 = [(NSArray *)v6 copy];
    v10 = self->_routes;
    self->_routes = v9;

    self->_selectedRouteIndex = a4;
    [(RouteMarkerFormatterController *)self _clearFormatters];
    v6 = v11;
  }
}

- (void)setRoutes:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(RouteMarkerFormatterController *)self setRoutes:v5 selectedRouteIndex:v4];
}

- (id)markerInfosForLegsInRoute:(id)a3
{
  v4 = a3;
  v5 = [(RouteMarkerFormatterController *)self _formatterForStyle:[(RouteMarkerFormatterController *)self formattingStyle]];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 markerInfosForLegsInRoute:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)markerInfoForRoute:(id)a3
{
  v4 = a3;
  v5 = [(RouteMarkerFormatterController *)self _formatterForStyle:[(RouteMarkerFormatterController *)self formattingStyle]];
  v6 = [v5 markerInfoForRoute:v4];

  return v6;
}

- (RouteMarkerFormatterController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RouteMarkerFormatterController;
  v5 = [(RouteMarkerFormatterController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end