@interface CyclingRouteAttributesBuilder
- (id)initWihCyclePreferences:(id)preferences;
- (void)fillRouteAttributes:(id)attributes;
@end

@implementation CyclingRouteAttributesBuilder

- (void)fillRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy setMainTransportType:3];
  cyclePreferences = [(CyclingRouteAttributesBuilder *)self cyclePreferences];
  cyclingOptions = [cyclePreferences cyclingOptions];
  [attributesCopy setCyclingOptions:cyclingOptions];

  [attributesCopy addUiContext:4];
  [attributesCopy setIncludePhonetics:1];
  if (GEOConfigGetBOOL())
  {
    v6 = MGGetBoolAnswer();
  }

  else
  {
    v6 = 0;
  }

  [attributesCopy setIncludeCellularCoverage:v6];
}

- (id)initWihCyclePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v9.receiver = self;
  v9.super_class = CyclingRouteAttributesBuilder;
  v6 = [(CyclingRouteAttributesBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cyclePreferences, preferences);
  }

  return v7;
}

@end