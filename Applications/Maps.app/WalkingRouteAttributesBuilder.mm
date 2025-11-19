@interface WalkingRouteAttributesBuilder
- (WalkingRouteAttributesBuilder)initWithWalkPreferences:(id)a3;
- (void)fillRouteAttributes:(id)a3;
@end

@implementation WalkingRouteAttributesBuilder

- (void)fillRouteAttributes:(id)a3
{
  v7 = a3;
  [v7 setMainTransportType:2];
  v4 = [(WalkingRouteAttributesBuilder *)self walkPreferences];
  v5 = [v4 walkingOptions];
  [v7 setWalkingOptions:v5];

  [v7 addUiContext:4];
  [v7 setIncludePhonetics:1];
  if (GEOConfigGetBOOL())
  {
    v6 = MGGetBoolAnswer();
  }

  else
  {
    v6 = 0;
  }

  [v7 setIncludeCellularCoverage:v6];
}

- (WalkingRouteAttributesBuilder)initWithWalkPreferences:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WalkingRouteAttributesBuilder;
  v6 = [(WalkingRouteAttributesBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_walkPreferences, a3);
  }

  return v7;
}

@end