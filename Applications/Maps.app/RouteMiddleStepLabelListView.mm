@interface RouteMiddleStepLabelListView
+ (id)stringsForRoute:(id)route step:(id)step tableMode:(BOOL)mode isPrinting:(BOOL)printing forAccessibility:(BOOL)accessibility;
@end

@implementation RouteMiddleStepLabelListView

+ (id)stringsForRoute:(id)route step:(id)step tableMode:(BOOL)mode isPrinting:(BOOL)printing forAccessibility:(BOOL)accessibility
{
  printingCopy = printing;
  routeCopy = route;
  stepCopy = step;
  if ([routeCopy transportType] == 1)
  {
    v14 = &__NSArray0__struct;
    goto LABEL_60;
  }

  modeCopy = mode;
  v15 = sub_100F5C4B8(stepCopy, routeCopy);
  v16 = [routeCopy legIndexForStepIndex:{objc_msgSend(stepCopy, "stepIndex")}];
  legs = [routeCopy legs];
  if (v16 >= [legs count])
  {
    v19 = 0;
  }

  else
  {
    legs2 = [routeCopy legs];
    v19 = [legs2 objectAtIndexedSubscript:v16];
  }

  destination = [v19 destination];
  chargingInfo = [destination chargingInfo];

  if (!v15 || chargingInfo)
  {
    v28 = [stepCopy contentsForContext:{objc_msgSend(self, "_instructionsContext")}];
    v71 = [v28 stringForDistance:-1.0];
    notice = [stepCopy notice];
    v29 = [notice length];
    v68 = v28;
    if (printingCopy && (v30 = [stepCopy stepIndex], v30 >= 2))
    {
      v31 = v30;
      v32 = v29;
      steps = [routeCopy steps];
      v34 = [steps objectAtIndexedSubscript:v31 - 1];

      geoStep = [v34 geoStep];
      expectedTime = [geoStep expectedTime];

      if (expectedTime)
      {
        v37 = [NSString _navigation_stringWithSeconds:expectedTime abbreviated:1];
        v69 = [NSString stringWithFormat:@" (%@)", v37];
      }

      else
      {
        v69 = &stru_1016631F0;
      }

      v29 = v32;
    }

    else
    {
      v69 = &stru_1016631F0;
    }

    transportType = [stepCopy transportType];
    chargingStationInfo = [stepCopy chargingStationInfo];
    v67 = v19;
    if ([stepCopy isStartOrResumeStep])
    {
      directionsListAddress = 0;
      v70 = 0;
LABEL_23:
      v41 = v68;
LABEL_35:
      v52 = 1;
      if (directionsListAddress)
      {
        v52 = 2;
      }

      if (v29)
      {
        v53 = v52 + 1;
      }

      else
      {
        v53 = v52;
      }

      v54 = [NSMutableArray arrayWithCapacity:v53];
      if (directionsListAddress)
      {
        if (printingCopy)
        {
          v55 = [[UIColor alloc] initWithRed:0.254901961 green:0.435294118 blue:0.658823529 alpha:1.0];
          [v54 addObject:v55];
        }

        [v54 addObject:directionsListAddress];
      }

      if (printingCopy)
      {
        v56 = +[UIColor darkGrayColor];
        [v54 addObject:v56];
      }

      instruction = [v41 instruction];
      if ([stepCopy transportType] == 4 && !instruction)
      {
        v58 = +[NSBundle mainBundle];
        instruction = [v58 localizedStringForKey:@"Navigation_DirectionsForUnknownTransport" value:@"localized string not found" table:0];
      }

      if (instruction)
      {
        v59 = 0;
        if (directionsListAddress && !modeCopy)
        {
          v59 = [v54 count];
        }

        [v54 insertObject:instruction atIndex:v59];
      }

      if (v29)
      {
        [v54 addObject:notice];
      }

      if (chargingStationInfo)
      {
        [chargingStationInfo batteryPercentageAfterCharging];
        v60 = [GEOComposedRouteEVChargingStationInfo chargeToStringForChargePercentage:?];
        [v54 addObject:v60];
      }

      v14 = [v54 copy];

      v19 = v67;
      goto LABEL_59;
    }

    if (accessibility)
    {
      accessibilityDistance = [stepCopy accessibilityDistance];
    }

    else
    {
      accessibilityDistance = v71;
    }

    v70 = accessibilityDistance;
    if (chargingStationInfo)
    {
      v66 = v29;
      [chargingStationInfo chargingTime];
      v44 = [NSString _navigation_stringWithSeconds:v43 abbreviated:1];
      v45 = +[NSBundle mainBundle];
      v46 = v45;
      if (v44)
      {
        v47 = [v45 localizedStringForKey:@"Directions_Driving_EV" value:@"localized string not found" table:0];
        name = [chargingStationInfo name];
        [NSString stringWithFormat:v47, v44, name];
      }

      else
      {
        v47 = [v45 localizedStringForKey:@"Directions_Driving_EV_no_charge_time" value:@"localized string not found" table:0];
        name = [chargingStationInfo name];
        [NSString stringWithFormat:v47, name, v65];
      }
      directionsListAddress = ;

      v41 = v68;
      v29 = v66;
      goto LABEL_35;
    }

    if (transportType == 2)
    {
      if (printingCopy)
      {
        v49 = +[NSBundle mainBundle];
        v50 = v49;
        v51 = @"Directions_Walking_DistanceTime";
LABEL_66:
        [v49 localizedStringForKey:v51 value:@"localized string not found" table:0];
        v63 = v62 = v29;
        v65 = v69;
LABEL_71:
        directionsListAddress = [NSString stringWithFormat:v63, v70, v65];

        v29 = v62;
        goto LABEL_23;
      }

      v41 = v68;
      if (accessibility || ![v68 hasServerContent])
      {
        v50 = +[NSBundle mainBundle];
        [v50 localizedStringForKey:@"Walk %@ then" value:@"localized string not found" table:0];
        v63 = v62 = v29;
        goto LABEL_71;
      }
    }

    else
    {
      v41 = v68;
      if (printingCopy)
      {
        if (![stepCopy stepIndex])
        {
          origin = [routeCopy origin];
          directionsListAddress = [origin directionsListAddress];

          goto LABEL_35;
        }

        v49 = +[NSBundle mainBundle];
        v50 = v49;
        v51 = @"Directions_Driving_DistanceTime";
        goto LABEL_66;
      }
    }

    directionsListAddress = v70;
    v70 = directionsListAddress;
    goto LABEL_35;
  }

  destinationListInstructionString = [v19 destinationListInstructionString];
  if (![destinationListInstructionString length])
  {
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Arrive [Directions Step]" value:@"localized string not found" table:0];

    destinationListInstructionString = v24;
  }

  singleLineAddress = [v15 singleLineAddress];
  v26 = [singleLineAddress length];

  if (v26)
  {
    v75[0] = destinationListInstructionString;
    singleLineAddress2 = [v15 singleLineAddress];
    v75[1] = singleLineAddress2;
    v14 = [NSArray arrayWithObjects:v75 count:2];
  }

  else
  {
    v74 = destinationListInstructionString;
    v14 = [NSArray arrayWithObjects:&v74 count:1];
  }

LABEL_59:
LABEL_60:

  return v14;
}

@end