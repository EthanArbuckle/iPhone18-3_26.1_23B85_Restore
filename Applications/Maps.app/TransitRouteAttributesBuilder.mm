@interface TransitRouteAttributesBuilder
- (TransitRouteAttributesBuilder)initWithTransitPreferences:(id)preferences timing:(id)timing;
- (void)fillRouteAttributes:(id)attributes;
@end

@implementation TransitRouteAttributesBuilder

- (void)fillRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy setMainTransportType:1];
  [attributesCopy setRoutePointTypeForTransportType:{objc_msgSend(attributesCopy, "mainTransportType")}];
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
      [attributesCopy setTimepoint:&v7];
    }
  }

  transitOptions = [(TransitPreferences *)self->_preferences transitOptions];
  [attributesCopy setTransitOptions:transitOptions];
}

- (TransitRouteAttributesBuilder)initWithTransitPreferences:(id)preferences timing:(id)timing
{
  preferencesCopy = preferences;
  timingCopy = timing;
  v12.receiver = self;
  v12.super_class = TransitRouteAttributesBuilder;
  v9 = [(TransitRouteAttributesBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferences, preferences);
    objc_storeStrong(&v10->_timing, timing);
  }

  return v10;
}

@end