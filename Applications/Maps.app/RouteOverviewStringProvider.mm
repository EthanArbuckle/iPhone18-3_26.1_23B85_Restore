@interface RouteOverviewStringProvider
+ (id)artworkDataForRoute:(id)route;
+ (id)delimeter;
+ (id)etaStringFromRoute:(id)route;
+ (id)primaryTextForRoute:(id)route font:(id)font;
+ (id)routeDescriptionTextForRoute:(id)route font:(id)font;
+ (id)secondaryMultiPartTextForRoute:(id)route font:(id)font;
+ (unint64_t)adjustedTransportTypeForRoute:(id)route;
@end

@implementation RouteOverviewStringProvider

+ (unint64_t)adjustedTransportTypeForRoute:(id)route
{
  routeCopy = route;
  transportType = [routeCopy transportType];
  if (transportType > 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_1012160D0[transportType];
  }

  isWalkingOnlyTransitRoute = [routeCopy isWalkingOnlyTransitRoute];

  if (isWalkingOnlyTransitRoute)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

+ (id)artworkDataForRoute:(id)route
{
  routeCopy = route;
  if ([self adjustedTransportTypeForRoute:routeCopy] == 4)
  {
    routePlanningArtworks = [routeCopy routePlanningArtworks];
  }

  else
  {
    routePlanningArtworks = 0;
  }

  return routePlanningArtworks;
}

+ (id)etaStringFromRoute:(id)route
{
  routeCopy = route;
  [routeCopy travelAndChargingDuration];
  v5 = v4;
  destination = [routeCopy destination];
  routeAttributes = [routeCopy routeAttributes];
  if ([routeAttributes hasTimepoint])
  {
    routeAttributes2 = [routeCopy routeAttributes];
    v9 = routeAttributes2;
    if (routeAttributes2)
    {
      [routeAttributes2 timepoint];
      v10 = v20;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
  }

  else
  {
    v11 = +[NSDate date];
  }

  v12 = [GuidanceETA alloc];
  timezone = [destination timezone];
  v14 = -[GuidanceETA initWithLeaveByDate:remainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:](v12, "initWithLeaveByDate:remainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:", v11, 0, timezone, [routeCopy transportType], v5, 0.0);

  v15 = +[NSCalendar autoupdatingCurrentCalendar];
  v16 = +[NSLocale autoupdatingCurrentLocale];
  [v15 setLocale:v16];

  etaDateString = [(GuidanceETA *)v14 etaDateString];
  v18 = [[GEOComposedString alloc] initWithString:etaDateString];

  return v18;
}

+ (id)secondaryMultiPartTextForRoute:(id)route font:(id)font
{
  routeCopy = route;
  fontCopy = font;
  if ([routeCopy transportType] == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [routeCopy isWalkingOnlyTransitRoute] ^ 1;
  }

  v9 = objc_alloc_init(NSMutableArray);
  if ([routeCopy transportType])
  {
    goto LABEL_5;
  }

  routeAttributes = [routeCopy routeAttributes];
  hasTimepoint = [routeAttributes hasTimepoint];

  if (hasTimepoint)
  {
    routeAttributes2 = [routeCopy routeAttributes];
    v13 = routeAttributes2;
    if (routeAttributes2)
    {
      [routeAttributes2 timepoint];
    }

    else
    {
      v32 = 0;
    }

LABEL_5:
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_11:
  v14 = [self etaStringFromRoute:{routeCopy, v32}];
  if (v14)
  {
    [v9 addObject:v14];
  }

LABEL_16:
  planningDistanceString = [routeCopy planningDistanceString];

  if (planningDistanceString)
  {
    planningDistanceString2 = [routeCopy planningDistanceString];
    v17 = [planningDistanceString2 optionsWithArgumentHandler:&stru_10165D770];
    [v17 setShouldUpdateFormatStrings:1];
    v18 = [planningDistanceString2 composedStringWithOptions:v17];
    v19 = v18;
    if (v18)
    {
      planningDistanceString3 = v18;
    }

    else
    {
      planningDistanceString3 = [routeCopy planningDistanceString];
    }

    v21 = planningDistanceString3;

    [v9 addObject:v21];
  }

  if ([routeCopy transportType] == 1 || objc_msgSend(routeCopy, "isWalkingOnlyTransitRoute"))
  {
    planningDescriptionString = [routeCopy planningDescriptionString];

    if (planningDescriptionString)
    {
      planningDescriptionString2 = [routeCopy planningDescriptionString];
      [v9 addObject:planningDescriptionString2];
    }
  }

  planningSeparatorString = [routeCopy planningSeparatorString];
  v25 = planningSeparatorString;
  if (planningSeparatorString)
  {
    v26 = planningSeparatorString;
  }

  else
  {
    v26 = +[RouteOverviewStringProvider delimeter];
  }

  v27 = v26;

  v28 = [[NSAttributedString alloc] initWithString:v27];
  if (fontCopy)
  {
    v33 = NSFontAttributeName;
    v34 = fontCopy;
    v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v29 = 0;
  }

  v30 = [MKMultiPartAttributedString _mapkit_multiPartAttributedStringForComposedStrings:v9 defaultAttributes:v29 repeatedSeparator:v28];

  return v30;
}

+ (id)routeDescriptionTextForRoute:(id)route font:(id)font
{
  routeCopy = route;
  fontCopy = font;
  v7 = objc_alloc_init(NSMutableArray);
  planningDescriptionString = [routeCopy planningDescriptionString];
  if (planningDescriptionString)
  {
    [v7 addObject:planningDescriptionString];
  }

  planningSeparatorString = [routeCopy planningSeparatorString];
  v10 = planningSeparatorString;
  if (planningSeparatorString)
  {
    v11 = planningSeparatorString;
  }

  else
  {
    v11 = +[RouteOverviewStringProvider delimeter];
  }

  v12 = v11;

  v13 = [[NSAttributedString alloc] initWithString:v12];
  v14 = objc_opt_new();
  v15 = [NSNumber numberWithDouble:UIFontWeightLight];
  [v14 setObject:v15 forKeyedSubscript:MKServerFormattedStringArtworkSFSymbolScaleAttributeKey];

  [v14 setObject:&off_1016EA3E8 forKeyedSubscript:MKServerFormattedStringArtworkSFSymbolStyleAttributeKey];
  if (fontCopy)
  {
    [v14 setObject:fontCopy forKeyedSubscript:NSFontAttributeName];
  }

  v16 = [MKMultiPartAttributedString _mapkit_multiPartAttributedStringForComposedStrings:v7 defaultAttributes:v14 repeatedSeparator:v13];

  return v16;
}

+ (id)primaryTextForRoute:(id)route font:(id)font
{
  routeCopy = route;
  fontCopy = font;
  previewDurationString = [routeCopy previewDurationString];

  if (previewDurationString)
  {
    if (fontCopy)
    {
      v14 = NSFontAttributeName;
      v15 = fontCopy;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    else
    {
      v8 = 0;
    }

    previewDurationString2 = [routeCopy previewDurationString];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100F36984;
    v12[3] = &unk_10165D730;
    v13 = routeCopy;
    v9 = [NSAttributedString _mapkit_attributedStringForComposedString:previewDurationString2 defaultAttributes:v8 argumentOverrideHandler:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)delimeter
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route description [separator]" value:@"localized string not found" table:0];

  return v3;
}

@end