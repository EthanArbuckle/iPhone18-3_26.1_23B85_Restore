@interface DrivingRouteAttributesBuilder
- (DrivingRouteAttributesBuilder)initWithDrivePreferences:(id)a3 timing:(id)a4;
- (void)fillRouteAttributes:(id)a3;
@end

@implementation DrivingRouteAttributesBuilder

- (void)fillRouteAttributes:(id)a3
{
  v4 = a3;
  [v4 setMainTransportType:0];
  v5 = [(DrivingRouteAttributesBuilder *)self drivePreferences];
  v6 = [v5 automobileOptions];
  [v4 setAutomobileOptions:v6];

  v11 = 0uLL;
  v12 = 0;
  timing = self->_timing;
  if (timing)
  {
    [(RoutePlanningTiming *)timing timepoint];
    if ((~BYTE4(v12) & 6) == 0)
    {
      v9 = v11;
      v10 = v12;
      [v4 setTimepoint:&v9];
    }
  }

  [v4 addUiContext:4];
  [v4 setIncludePhonetics:1];
  if (GEOConfigGetBOOL())
  {
    v8 = MGGetBoolAnswer();
  }

  else
  {
    v8 = 0;
  }

  [v4 setIncludeCellularCoverage:v8];
}

- (DrivingRouteAttributesBuilder)initWithDrivePreferences:(id)a3 timing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DrivingRouteAttributesBuilder;
  v9 = [(DrivingRouteAttributesBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_drivePreferences, a3);
    objc_storeStrong(&v10->_timing, a4);
  }

  return v10;
}

@end