@interface WalkingRouteAttributesBuilder
- (WalkingRouteAttributesBuilder)initWithWalkPreferences:(id)preferences;
- (void)fillRouteAttributes:(id)attributes;
@end

@implementation WalkingRouteAttributesBuilder

- (void)fillRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy setMainTransportType:2];
  walkPreferences = [(WalkingRouteAttributesBuilder *)self walkPreferences];
  walkingOptions = [walkPreferences walkingOptions];
  [attributesCopy setWalkingOptions:walkingOptions];

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

- (WalkingRouteAttributesBuilder)initWithWalkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v9.receiver = self;
  v9.super_class = WalkingRouteAttributesBuilder;
  v6 = [(WalkingRouteAttributesBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_walkPreferences, preferences);
  }

  return v7;
}

@end