@interface DrivingRouteAttributesBuilder
- (DrivingRouteAttributesBuilder)initWithDrivePreferences:(id)preferences timing:(id)timing;
- (void)fillRouteAttributes:(id)attributes;
@end

@implementation DrivingRouteAttributesBuilder

- (void)fillRouteAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy setMainTransportType:0];
  drivePreferences = [(DrivingRouteAttributesBuilder *)self drivePreferences];
  automobileOptions = [drivePreferences automobileOptions];
  [attributesCopy setAutomobileOptions:automobileOptions];

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
      [attributesCopy setTimepoint:&v9];
    }
  }

  [attributesCopy addUiContext:4];
  [attributesCopy setIncludePhonetics:1];
  if (GEOConfigGetBOOL())
  {
    v8 = MGGetBoolAnswer();
  }

  else
  {
    v8 = 0;
  }

  [attributesCopy setIncludeCellularCoverage:v8];
}

- (DrivingRouteAttributesBuilder)initWithDrivePreferences:(id)preferences timing:(id)timing
{
  preferencesCopy = preferences;
  timingCopy = timing;
  v12.receiver = self;
  v12.super_class = DrivingRouteAttributesBuilder;
  v9 = [(DrivingRouteAttributesBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_drivePreferences, preferences);
    objc_storeStrong(&v10->_timing, timing);
  }

  return v10;
}

@end