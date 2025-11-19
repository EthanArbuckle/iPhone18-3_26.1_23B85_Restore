@interface ACCNavigationRouteGuidanceUpdateInfo
@end

@implementation ACCNavigationRouteGuidanceUpdateInfo

id __86__ACCNavigationRouteGuidanceUpdateInfo_CPAccNavInfo__initWithRouteGuidance_component___block_invoke(id *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [a2 key];
  v4 = 0;
  if (v3 <= 12)
  {
    if (v3 == 3)
    {
      v14 = a1[4];
      v6 = [a1[5] currentRoadNameVariants];
      v7 = [v14 CP_variantFittingCurrentRoadName:v6];
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_24;
      }

      v5 = a1[4];
      v6 = [a1[5] destinationNameVariants];
      v7 = [v5 CP_variantFittingDestinationRoadName:v6];
    }

    v4 = v7;
LABEL_17:

    goto LABEL_24;
  }

  if (v3 != 13)
  {
    if (v3 != 23)
    {
      goto LABEL_24;
    }

    v4 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [a1[5] electricVehicleDestination];
    v6 = [v8 connectors];

    v9 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [CPAccNavUpdate dictionaryIAPFormat:*(*(&v22 + 1) + 8 * i)];
          [v4 addObject:v13];
        }

        v10 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    goto LABEL_17;
  }

  v15 = [a1[5] currentManeuverIndexes];
  v16 = [a1[5] currentManeuverIndexes];
  v17 = [v16 count];
  v18 = [a1[4] CP_maxCapacity_GuidanceManeuver];
  if (v17 >= v18)
  {
    v19 = [a1[4] CP_maxCapacity_GuidanceManeuver];
  }

  else
  {
    a1 = [a1[5] currentManeuverIndexes];
    v19 = [a1 count];
  }

  v4 = [v15 subarrayWithRange:{0, v19}];
  if (v17 < v18)
  {
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

@end