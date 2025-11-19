@interface EKTravelEngineUtilities
+ (BOOL)date:(id)a3 representsApproachingDepartureDateForHypothesis:(id)a4;
+ (BOOL)date:(id)a3 representsImmediateDepartureForHypothesis:(id)a4;
+ (BOOL)date:(id)a3 representsLatenessForHypothesis:(id)a4;
+ (id)authorizationStatusAsString:(int)a3;
+ (id)cadRouteHypothesisForEKTravelEngineHypothesis:(id)a3;
+ (id)formattedLocationCoordinates:(id)a3;
+ (id)geoTrafficDensityAsString:(unint64_t)a3;
+ (id)geoTransportTypeAsString:(int)a3;
+ (int)geoTransportTypeForCalLocationRoutingMode:(int64_t)a3;
+ (int)geoTransportTypeForString:(id)a3;
+ (int64_t)geoRouteHypothesisTravelStateForString:(id)a3;
+ (unint64_t)geoTrafficDensityForString:(id)a3;
@end

@implementation EKTravelEngineUtilities

+ (id)formattedLocationCoordinates:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  [v4 coordinate];
  v8 = v7;

  return [v3 stringWithFormat:@"(%.4f, %.4f)", v6, v8];
}

+ (int64_t)geoRouteHypothesisTravelStateForString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKTravelEngineUtilities geoRouteHypothesisTravelStateForString:];
    }

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"NotTraveling"])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"Traveling"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"TravelingToDestination"])
    {
      v5 = 2;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"TravelingTowardsDestination"])
    {
      v5 = 3;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"TravelingAwayFromDestination"])
    {
      v5 = 4;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"Arrived"])
    {
      v5 = 5;
      goto LABEL_8;
    }

    v8 = EKTravelEngineLogHandle;
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Unknown travel state given: [%@].  Will not find a corresponding travel state.", &v9, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = 1;
LABEL_8:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)geoTransportTypeAsString:(int)a3
{
  if (a3 <= 2)
  {
    v3 = @"AUTOMOBILE";
    v4 = @"TRANSIT";
    v6 = @"WALKING";
    if (a3 != 2)
    {
      v6 = 0;
    }

    if (a3 != 1)
    {
      v4 = v6;
    }

    v5 = a3 == 0;
    goto LABEL_11;
  }

  if (a3 <= 4)
  {
    v3 = @"BICYCLE";
    v4 = @"UNKNOWN_TRANSPORT_TYPE";
    if (a3 != 4)
    {
      v4 = 0;
    }

    v5 = a3 == 3;
LABEL_11:
    if (v5)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  if (a3 == 5)
  {
    return @"FERRY";
  }

  if (a3 != 6)
  {
    return 0;
  }

  if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKTravelEngineUtilities geoTransportTypeAsString:];
  }

  return 0;
}

+ (int)geoTransportTypeForString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKTravelEngineUtilities geoTransportTypeForString:];
    }

LABEL_6:
    v5 = 4;
    goto LABEL_13;
  }

  if (([v3 isEqualToString:@"AUTOMOBILE"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"TRANSIT"])
    {
      v5 = 1;
      goto LABEL_13;
    }

    if ([v4 isEqualToString:@"WALKING"])
    {
      v5 = 2;
      goto LABEL_13;
    }

    if ([v4 isEqualToString:@"BICYCLE"])
    {
      v5 = 3;
      goto LABEL_13;
    }

    if (([v4 isEqualToString:@"UNKNOWN_TRANSPORT_TYPE"] & 1) == 0)
    {
      if ([v4 isEqualToString:@"FERRY"])
      {
        v5 = 5;
        goto LABEL_13;
      }

      v8 = EKTravelEngineLogHandle;
      if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Unknown transport type given: [%@].  Will not find a corresponding transport type.", &v9, 0xCu);
      }
    }

    goto LABEL_6;
  }

  v5 = 0;
LABEL_13:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)geoTrafficDensityAsString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77FEF98[a3];
  }
}

+ (unint64_t)geoTrafficDensityForString:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKTravelEngineUtilities geoTrafficDensityForString:];
    }

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"Light"])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"Medium"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"Heavy"])
    {
      v5 = 2;
      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"ExtremelyHeavy"])
    {
      v5 = 3;
      goto LABEL_8;
    }

    v8 = EKTravelEngineLogHandle;
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1A805E000, v8, OS_LOG_TYPE_DEFAULT, "Unknown traffic density given: [%@].  Will not find a corresponding traffic density.", &v9, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = 1;
LABEL_8:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)authorizationStatusAsString:(int)a3
{
  if (a3 > 4)
  {
    return @"Unknown status";
  }

  else
  {
    return off_1E77FEFB8[a3];
  }
}

+ (int)geoTransportTypeForCalLocationRoutingMode:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 4;
  }

  else
  {
    return dword_1A81C3D30[a3 - 1];
  }
}

+ (BOOL)date:(id)a3 representsApproachingDepartureDateForHypothesis:(id)a4
{
  v5 = a3;
  v6 = [a4 suggestedDepartureDate];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  return v8 > 120.0;
}

+ (BOOL)date:(id)a3 representsLatenessForHypothesis:(id)a4
{
  v5 = a3;
  v6 = [a4 aggressiveDepartureDate];
  v7 = [v5 CalIsAfterDate:v6];

  return v7;
}

+ (BOOL)date:(id)a3 representsImmediateDepartureForHypothesis:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 date:v7 representsApproachingDepartureDateForHypothesis:v6];
  LODWORD(a1) = [a1 date:v7 representsLatenessForHypothesis:v6];

  return ((v8 | a1) & 1) == 0;
}

+ (id)cadRouteHypothesisForEKTravelEngineHypothesis:(id)a3
{
  v3 = MEMORY[0x1E69923B8];
  v4 = a3;
  v22 = [v3 alloc];
  v5 = [v4 transportType];
  v6 = [v4 conservativeDepartureDate];
  [v4 conservativeTravelTime];
  v8 = v7;
  v9 = [v4 suggestedDepartureDate];
  [v4 estimatedTravelTime];
  v11 = v10;
  v12 = [v4 aggressiveDepartureDate];
  [v4 aggressiveTravelTime];
  v14 = v13;
  v15 = [v4 routeName];
  v16 = [v4 supportsLiveTraffic];
  v17 = [v4 currentTrafficDensity];
  v18 = [v4 trafficDensityDescription];
  v19 = [v4 travelState];

  v20 = [v22 initWithTransportType:v5 conservativeDepartureDate:v6 conservativeTravelTime:v9 suggestedDepartureDate:v12 estimatedTravelTime:v15 aggressiveDepartureDate:v16 aggressiveTravelTime:v8 routeName:v11 supportsLiveTraffic:v14 currentTrafficDensity:v17 trafficDensityDescription:v18 travelState:v19];

  return v20;
}

@end