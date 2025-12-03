@interface GEOComposedRouteStep
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectAroundStartCoordinate;
- (BOOL)isEVChargerStep;
- (GEOComposedWaypoint)waypoint;
- (NSString)accessibilityDistance;
- (NSString)distanceString;
- (NSString)notice;
- (id)attributedChargeStringForWaypointType:(unint64_t)type font:(id)font textColor:(id)color includeDaysAgo:(BOOL)ago;
- (id)chargingStationInfo;
- (id)representativeSignGuidanceEvent;
- (id)transitInstructionInContext:(int64_t)context;
@end

@implementation GEOComposedRouteStep

- (BOOL)isEVChargerStep
{
  chargingStationInfo = [(GEOComposedRouteStep *)self chargingStationInfo];
  v3 = chargingStationInfo != 0;

  return v3;
}

- (id)chargingStationInfo
{
  composedRoute = [(GEOComposedRouteStep *)self composedRoute];
  v4 = [composedRoute legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self, "stepIndex")}];

  composedRoute2 = [(GEOComposedRouteStep *)self composedRoute];
  legs = [composedRoute2 legs];
  v7 = [legs count];

  if (v4 >= v7)
  {
    chargingStationInfo = 0;
  }

  else
  {
    composedRoute3 = [(GEOComposedRouteStep *)self composedRoute];
    legs2 = [composedRoute3 legs];
    v10 = [legs2 objectAtIndexedSubscript:v4];

    stepIndex = [(GEOComposedRouteStep *)self stepIndex];
    if (stepIndex == [v10 endStepIndex])
    {
      chargingStationInfo = [v10 chargingStationInfo];
    }

    else
    {
      chargingStationInfo = 0;
    }
  }

  return chargingStationInfo;
}

- (id)attributedChargeStringForWaypointType:(unint64_t)type font:(id)font textColor:(id)color includeDaysAgo:(BOOL)ago
{
  fontCopy = font;
  colorCopy = color;
  if (qword_10195D968 != -1)
  {
    dispatch_once(&qword_10195D968, &stru_10162B558);
  }

  if (type > 2)
  {
    v15 = 0;
  }

  else
  {
    v11 = off_10162B578[type];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:v11 value:@"localized string not found" table:0];
    evInfo = [(GEOComposedRouteStep *)self evInfo];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v13, [evInfo remainingBatteryPercentage]);
  }

  v16 = objc_opt_new();
  [fontCopy pointSize];
  v18 = v17;
  evInfo2 = [(GEOComposedRouteStep *)self evInfo];
  v20 = +[UIImage chargeImageOfSize:batteryLevel:](UIImage, "chargeImageOfSize:batteryLevel:", [evInfo2 remainingBatteryPercentage], v18);

  [v16 setImage:v20];
  [fontCopy capHeight];
  v22 = v21;
  [v20 size];
  v24 = (v22 - v23) * 0.5;
  [v20 size];
  v26 = v25;
  [v20 size];
  [v16 setBounds:{0.0, v24, v26, v27}];
  v28 = [NSAttributedString attributedStringWithAttachment:v16];
  v29 = [v28 mutableCopy];

  v30 = [[NSAttributedString alloc] initWithString:@" "];
  [v29 appendAttributedString:v30];

  v31 = [[NSAttributedString alloc] initWithString:v15];
  [v29 appendAttributedString:v31];

  string = [v29 string];
  v33 = [string length];

  v39 = NSFontAttributeName;
  v40 = fontCopy;
  v34 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v29 addAttributes:v34 range:{0, v33}];

  if (colorCopy)
  {
    v37 = NSForegroundColorAttributeName;
    v38 = colorCopy;
    v35 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v29 addAttributes:v35 range:{0, v33}];
  }

  return v29;
}

- (GEOComposedWaypoint)waypoint
{
  composedRoute = [(GEOComposedRouteStep *)self composedRoute];
  v4 = [composedRoute legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self, "stepIndex")}];
  legs = [composedRoute legs];
  v6 = [legs count];

  if (v4 >= v6)
  {
    destination = 0;
  }

  else
  {
    legs2 = [composedRoute legs];
    v8 = [legs2 objectAtIndexedSubscript:v4];

    destination = [v8 destination];
  }

  return destination;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectAroundStartCoordinate
{
  [(GEOComposedRouteStep *)self distance];
  [(GEOComposedRouteStep *)self startCoordinate];

  MKMapRectMakeWithRadialDistance();
  result.var1.var1 = v6;
  result.var1.var0 = v5;
  result.var0.var1 = v4;
  result.var0.var0 = v3;
  return result;
}

- (NSString)accessibilityDistance
{
  [(GEOComposedRouteStep *)self distance];

  return [NSString _mapkit_voiceOverLocalizedDistanceStringWithMeters:v2];
}

- (NSString)distanceString
{
  [(GEOComposedRouteStep *)self distance];
  if (v3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    [(GEOComposedRouteStep *)self distance];
    v5 = [NSString _mapkit_localizedDistanceStringWithMeters:v4 abbreviated:0];
  }

  return v5;
}

- (NSString)notice
{
  geoStep = [(GEOComposedRouteStep *)self geoStep];
  notice = [geoStep notice];

  return notice;
}

- (id)transitInstructionInContext:(int64_t)context
{
  transitStep = [(GEOComposedRouteStep *)self transitStep];

  if (transitStep)
  {
    v6 = [MNTransitStepInstruction instructionForStep:self context:context];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)representativeSignGuidanceEvent
{
  v4 = objc_getAssociatedObject(self, a2);
  if (v4)
  {
LABEL_4:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    goto LABEL_8;
  }

  geoStep = [(GEOComposedRouteStep *)self geoStep];
  guidanceEvents = [geoStep guidanceEvents];
  v4 = sub_100B687D0(guidanceEvents);

  if (v4)
  {
    objc_setAssociatedObject(self, a2, v4, 1);
    goto LABEL_4;
  }

  v4 = +[NSNull null];
  objc_setAssociatedObject(self, a2, v4, 1);
  v8 = 0;
LABEL_8:

  return v8;
}

@end