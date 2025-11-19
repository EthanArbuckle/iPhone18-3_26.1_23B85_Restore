@interface GEOComposedRouteStep
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectAroundStartCoordinate;
- (BOOL)isEVChargerStep;
- (GEOComposedWaypoint)waypoint;
- (NSString)accessibilityDistance;
- (NSString)distanceString;
- (NSString)notice;
- (id)attributedChargeStringForWaypointType:(unint64_t)a3 font:(id)a4 textColor:(id)a5 includeDaysAgo:(BOOL)a6;
- (id)chargingStationInfo;
- (id)representativeSignGuidanceEvent;
- (id)transitInstructionInContext:(int64_t)a3;
@end

@implementation GEOComposedRouteStep

- (BOOL)isEVChargerStep
{
  v2 = [(GEOComposedRouteStep *)self chargingStationInfo];
  v3 = v2 != 0;

  return v3;
}

- (id)chargingStationInfo
{
  v3 = [(GEOComposedRouteStep *)self composedRoute];
  v4 = [v3 legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self, "stepIndex")}];

  v5 = [(GEOComposedRouteStep *)self composedRoute];
  v6 = [v5 legs];
  v7 = [v6 count];

  if (v4 >= v7)
  {
    v12 = 0;
  }

  else
  {
    v8 = [(GEOComposedRouteStep *)self composedRoute];
    v9 = [v8 legs];
    v10 = [v9 objectAtIndexedSubscript:v4];

    v11 = [(GEOComposedRouteStep *)self stepIndex];
    if (v11 == [v10 endStepIndex])
    {
      v12 = [v10 chargingStationInfo];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)attributedChargeStringForWaypointType:(unint64_t)a3 font:(id)a4 textColor:(id)a5 includeDaysAgo:(BOOL)a6
{
  v9 = a4;
  v10 = a5;
  if (qword_10195D968 != -1)
  {
    dispatch_once(&qword_10195D968, &stru_10162B558);
  }

  if (a3 > 2)
  {
    v15 = 0;
  }

  else
  {
    v11 = off_10162B578[a3];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:v11 value:@"localized string not found" table:0];
    v14 = [(GEOComposedRouteStep *)self evInfo];
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v13, [v14 remainingBatteryPercentage]);
  }

  v16 = objc_opt_new();
  [v9 pointSize];
  v18 = v17;
  v19 = [(GEOComposedRouteStep *)self evInfo];
  v20 = +[UIImage chargeImageOfSize:batteryLevel:](UIImage, "chargeImageOfSize:batteryLevel:", [v19 remainingBatteryPercentage], v18);

  [v16 setImage:v20];
  [v9 capHeight];
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

  v32 = [v29 string];
  v33 = [v32 length];

  v39 = NSFontAttributeName;
  v40 = v9;
  v34 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v29 addAttributes:v34 range:{0, v33}];

  if (v10)
  {
    v37 = NSForegroundColorAttributeName;
    v38 = v10;
    v35 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v29 addAttributes:v35 range:{0, v33}];
  }

  return v29;
}

- (GEOComposedWaypoint)waypoint
{
  v3 = [(GEOComposedRouteStep *)self composedRoute];
  v4 = [v3 legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self, "stepIndex")}];
  v5 = [v3 legs];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v9 = 0;
  }

  else
  {
    v7 = [v3 legs];
    v8 = [v7 objectAtIndexedSubscript:v4];

    v9 = [v8 destination];
  }

  return v9;
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
  v2 = [(GEOComposedRouteStep *)self geoStep];
  v3 = [v2 notice];

  return v3;
}

- (id)transitInstructionInContext:(int64_t)a3
{
  v5 = [(GEOComposedRouteStep *)self transitStep];

  if (v5)
  {
    v6 = [MNTransitStepInstruction instructionForStep:self context:a3];
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

  v5 = [(GEOComposedRouteStep *)self geoStep];
  v6 = [v5 guidanceEvents];
  v4 = sub_100B687D0(v6);

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