@interface EKTravelEngineUtilities
+ (BOOL)date:(id)date representsApproachingDepartureDateForHypothesis:(id)hypothesis;
+ (BOOL)date:(id)date representsImmediateDepartureForHypothesis:(id)hypothesis;
+ (BOOL)date:(id)date representsLatenessForHypothesis:(id)hypothesis;
+ (id)authorizationStatusAsString:(int)string;
+ (id)cadRouteHypothesisForEKTravelEngineHypothesis:(id)hypothesis;
+ (id)formattedLocationCoordinates:(id)coordinates;
+ (id)geoTrafficDensityAsString:(unint64_t)string;
+ (id)geoTransportTypeAsString:(int)string;
+ (int)geoTransportTypeForCalLocationRoutingMode:(int64_t)mode;
+ (int)geoTransportTypeForString:(id)string;
+ (int64_t)geoRouteHypothesisTravelStateForString:(id)string;
+ (unint64_t)geoTrafficDensityForString:(id)string;
@end

@implementation EKTravelEngineUtilities

+ (id)formattedLocationCoordinates:(id)coordinates
{
  v3 = MEMORY[0x1E696AEC0];
  coordinatesCopy = coordinates;
  [coordinatesCopy coordinate];
  v6 = v5;
  [coordinatesCopy coordinate];
  v8 = v7;

  return [v3 stringWithFormat:@"(%.4f, %.4f)", v6, v8];
}

+ (int64_t)geoRouteHypothesisTravelStateForString:(id)string
{
  v11 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKTravelEngineUtilities geoRouteHypothesisTravelStateForString:];
    }

    goto LABEL_7;
  }

  if ([stringCopy isEqualToString:@"NotTraveling"])
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

+ (id)geoTransportTypeAsString:(int)string
{
  if (string <= 2)
  {
    v3 = @"AUTOMOBILE";
    v4 = @"TRANSIT";
    v6 = @"WALKING";
    if (string != 2)
    {
      v6 = 0;
    }

    if (string != 1)
    {
      v4 = v6;
    }

    v5 = string == 0;
    goto LABEL_11;
  }

  if (string <= 4)
  {
    v3 = @"BICYCLE";
    v4 = @"UNKNOWN_TRANSPORT_TYPE";
    if (string != 4)
    {
      v4 = 0;
    }

    v5 = string == 3;
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

  if (string == 5)
  {
    return @"FERRY";
  }

  if (string != 6)
  {
    return 0;
  }

  if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKTravelEngineUtilities geoTransportTypeAsString:];
  }

  return 0;
}

+ (int)geoTransportTypeForString:(id)string
{
  v11 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKTravelEngineUtilities geoTransportTypeForString:];
    }

LABEL_6:
    v5 = 4;
    goto LABEL_13;
  }

  if (([stringCopy isEqualToString:@"AUTOMOBILE"] & 1) == 0)
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

+ (id)geoTrafficDensityAsString:(unint64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77FEF98[string];
  }
}

+ (unint64_t)geoTrafficDensityForString:(id)string
{
  v11 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = stringCopy;
  if (!stringCopy)
  {
    if (os_log_type_enabled(EKTravelEngineLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKTravelEngineUtilities geoTrafficDensityForString:];
    }

    goto LABEL_7;
  }

  if ([stringCopy isEqualToString:@"Light"])
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

+ (id)authorizationStatusAsString:(int)string
{
  if (string > 4)
  {
    return @"Unknown status";
  }

  else
  {
    return off_1E77FEFB8[string];
  }
}

+ (int)geoTransportTypeForCalLocationRoutingMode:(int64_t)mode
{
  if ((mode - 1) > 3)
  {
    return 4;
  }

  else
  {
    return dword_1A81C3D30[mode - 1];
  }
}

+ (BOOL)date:(id)date representsApproachingDepartureDateForHypothesis:(id)hypothesis
{
  dateCopy = date;
  suggestedDepartureDate = [hypothesis suggestedDepartureDate];
  [suggestedDepartureDate timeIntervalSinceDate:dateCopy];
  v8 = v7;

  return v8 > 120.0;
}

+ (BOOL)date:(id)date representsLatenessForHypothesis:(id)hypothesis
{
  dateCopy = date;
  aggressiveDepartureDate = [hypothesis aggressiveDepartureDate];
  v7 = [dateCopy CalIsAfterDate:aggressiveDepartureDate];

  return v7;
}

+ (BOOL)date:(id)date representsImmediateDepartureForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  dateCopy = date;
  v8 = [self date:dateCopy representsApproachingDepartureDateForHypothesis:hypothesisCopy];
  LODWORD(self) = [self date:dateCopy representsLatenessForHypothesis:hypothesisCopy];

  return ((v8 | self) & 1) == 0;
}

+ (id)cadRouteHypothesisForEKTravelEngineHypothesis:(id)hypothesis
{
  v3 = MEMORY[0x1E69923B8];
  hypothesisCopy = hypothesis;
  v22 = [v3 alloc];
  transportType = [hypothesisCopy transportType];
  conservativeDepartureDate = [hypothesisCopy conservativeDepartureDate];
  [hypothesisCopy conservativeTravelTime];
  v8 = v7;
  suggestedDepartureDate = [hypothesisCopy suggestedDepartureDate];
  [hypothesisCopy estimatedTravelTime];
  v11 = v10;
  aggressiveDepartureDate = [hypothesisCopy aggressiveDepartureDate];
  [hypothesisCopy aggressiveTravelTime];
  v14 = v13;
  routeName = [hypothesisCopy routeName];
  supportsLiveTraffic = [hypothesisCopy supportsLiveTraffic];
  currentTrafficDensity = [hypothesisCopy currentTrafficDensity];
  trafficDensityDescription = [hypothesisCopy trafficDensityDescription];
  travelState = [hypothesisCopy travelState];

  v20 = [v22 initWithTransportType:transportType conservativeDepartureDate:conservativeDepartureDate conservativeTravelTime:suggestedDepartureDate suggestedDepartureDate:aggressiveDepartureDate estimatedTravelTime:routeName aggressiveDepartureDate:supportsLiveTraffic aggressiveTravelTime:v8 routeName:v11 supportsLiveTraffic:v14 currentTrafficDensity:currentTrafficDensity trafficDensityDescription:trafficDensityDescription travelState:travelState];

  return v20;
}

@end