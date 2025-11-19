@interface TransitRouteAttributesBuilder
- (TransitRouteAttributesBuilder)initWithTransitPreferences:(id)a3 timing:(id)a4;
- (void)fillRouteAttributes:(id)a3;
@end

@implementation TransitRouteAttributesBuilder

- (void)fillRouteAttributes:(id)a3
{
  v4 = a3;
  [v4 setMainTransportType:1];
  [v4 setRoutePointTypeForTransportType:{objc_msgSend(v4, "mainTransportType")}];
  v9 = 0uLL;
  v10 = 0;
  timing = self->_timing;
  if (timing)
  {
    [(RoutePlanningTiming *)timing timepoint];
    if ((~BYTE4(v10) & 6) == 0)
    {
      v7 = v9;
      v8 = v10;
      [v4 setTimepoint:&v7];
    }
  }

  v6 = [(TransitPreferences *)self->_preferences transitOptions];
  [v4 setTransitOptions:v6];
}

- (TransitRouteAttributesBuilder)initWithTransitPreferences:(id)a3 timing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TransitRouteAttributesBuilder;
  v9 = [(TransitRouteAttributesBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferences, a3);
    objc_storeStrong(&v10->_timing, a4);
  }

  return v10;
}

@end