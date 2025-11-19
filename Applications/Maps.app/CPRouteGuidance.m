@interface CPRouteGuidance
- (id)_maps_description;
@end

@implementation CPRouteGuidance

- (id)_maps_description
{
  v3 = [NSMutableArray arrayWithCapacity:10];
  [(CPRouteGuidance *)self guidanceState];
  v4 = NSStringFromCPGuidanceState();
  [(CPRouteGuidance *)self maneuverState];
  v5 = NSStringFromCPManeuverState();
  v6 = [NSString stringWithFormat:@"%@ | %@", v4, v5];
  [v3 addObject:v6];

  v7 = [(CPRouteGuidance *)self currentRoadNameVariants];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [NSString stringWithFormat:@"Road name: %@", v8];
  [v3 addObject:v9];

  v10 = [(CPRouteGuidance *)self destinationNameVariants];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"Destination name: %@", v11];
  [v3 addObject:v12];

  [(CPRouteGuidance *)self timeRemaining];
  v14 = v13;
  v15 = [(CPRouteGuidance *)self estimatedTimeOfArrival];
  v16 = [NSString stringWithFormat:@"Time remaining: %gs | ETA: %@", v14, v15];
  [v3 addObject:v16];

  v17 = [NSString stringWithFormat:@"Time zone offset minutes: %d", [(CPRouteGuidance *)self destinationTimeZoneOffsetMinutes]];
  [v3 addObject:v17];

  v18 = [(CPRouteGuidance *)self distanceRemaining];
  v19 = [(CPRouteGuidance *)self distanceRemainingDisplay];
  v20 = [NSString stringWithFormat:@"Distance remaining: %@ | Display: %@", v18, v19];
  [v3 addObject:v20];

  v21 = [(CPRouteGuidance *)self distanceRemainingToNextManeuver];
  v22 = [(CPRouteGuidance *)self distanceRemainingToNextManeuverDisplay];
  v23 = [NSString stringWithFormat:@"Maneuver distance remaining: %@ | Display: %@", v21, v22];
  [v3 addObject:v23];

  v24 = [(CPRouteGuidance *)self currentManeuverIndexes];
  v25 = [v24 componentsJoinedByString:{@", "}];
  v26 = [NSString stringWithFormat:@"Current maneuver indexes: %@", v25];
  [v3 addObject:v26];

  v27 = [NSString stringWithFormat:@"Lane guidance showing: %d", [(CPRouteGuidance *)self laneGuidanceShowing]];
  [v3 addObject:v27];

  if ([(CPRouteGuidance *)self laneGuidanceShowing])
  {
    v28 = [NSString stringWithFormat:@"Current lane guidance index: %d", [(CPRouteGuidance *)self currentLaneGuidanceIndex]];
    [v3 addObject:v28];
  }

  v29 = [NSString stringWithFormat:@"Being shown in app: %d", [(CPRouteGuidance *)self beingShownInApp]];
  [v3 addObject:v29];

  v30 = [v3 componentsJoinedByString:@"\n"];

  return v30;
}

@end