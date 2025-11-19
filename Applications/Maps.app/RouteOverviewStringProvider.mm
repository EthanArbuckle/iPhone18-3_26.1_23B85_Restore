@interface RouteOverviewStringProvider
+ (id)artworkDataForRoute:(id)a3;
+ (id)delimeter;
+ (id)etaStringFromRoute:(id)a3;
+ (id)primaryTextForRoute:(id)a3 font:(id)a4;
+ (id)routeDescriptionTextForRoute:(id)a3 font:(id)a4;
+ (id)secondaryMultiPartTextForRoute:(id)a3 font:(id)a4;
+ (unint64_t)adjustedTransportTypeForRoute:(id)a3;
@end

@implementation RouteOverviewStringProvider

+ (unint64_t)adjustedTransportTypeForRoute:(id)a3
{
  v3 = a3;
  v4 = [v3 transportType];
  if (v4 > 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_1012160D0[v4];
  }

  v6 = [v3 isWalkingOnlyTransitRoute];

  if (v6)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

+ (id)artworkDataForRoute:(id)a3
{
  v4 = a3;
  if ([a1 adjustedTransportTypeForRoute:v4] == 4)
  {
    v5 = [v4 routePlanningArtworks];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)etaStringFromRoute:(id)a3
{
  v3 = a3;
  [v3 travelAndChargingDuration];
  v5 = v4;
  v6 = [v3 destination];
  v7 = [v3 routeAttributes];
  if ([v7 hasTimepoint])
  {
    v8 = [v3 routeAttributes];
    v9 = v8;
    if (v8)
    {
      [v8 timepoint];
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
  v13 = [v6 timezone];
  v14 = -[GuidanceETA initWithLeaveByDate:remainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:](v12, "initWithLeaveByDate:remainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:", v11, 0, v13, [v3 transportType], v5, 0.0);

  v15 = +[NSCalendar autoupdatingCurrentCalendar];
  v16 = +[NSLocale autoupdatingCurrentLocale];
  [v15 setLocale:v16];

  v17 = [(GuidanceETA *)v14 etaDateString];
  v18 = [[GEOComposedString alloc] initWithString:v17];

  return v18;
}

+ (id)secondaryMultiPartTextForRoute:(id)a3 font:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 transportType] == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 isWalkingOnlyTransitRoute] ^ 1;
  }

  v9 = objc_alloc_init(NSMutableArray);
  if ([v6 transportType])
  {
    goto LABEL_5;
  }

  v10 = [v6 routeAttributes];
  v11 = [v10 hasTimepoint];

  if (v11)
  {
    v12 = [v6 routeAttributes];
    v13 = v12;
    if (v12)
    {
      [v12 timepoint];
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
  v14 = [a1 etaStringFromRoute:{v6, v32}];
  if (v14)
  {
    [v9 addObject:v14];
  }

LABEL_16:
  v15 = [v6 planningDistanceString];

  if (v15)
  {
    v16 = [v6 planningDistanceString];
    v17 = [v16 optionsWithArgumentHandler:&stru_10165D770];
    [v17 setShouldUpdateFormatStrings:1];
    v18 = [v16 composedStringWithOptions:v17];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [v6 planningDistanceString];
    }

    v21 = v20;

    [v9 addObject:v21];
  }

  if ([v6 transportType] == 1 || objc_msgSend(v6, "isWalkingOnlyTransitRoute"))
  {
    v22 = [v6 planningDescriptionString];

    if (v22)
    {
      v23 = [v6 planningDescriptionString];
      [v9 addObject:v23];
    }
  }

  v24 = [v6 planningSeparatorString];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = +[RouteOverviewStringProvider delimeter];
  }

  v27 = v26;

  v28 = [[NSAttributedString alloc] initWithString:v27];
  if (v7)
  {
    v33 = NSFontAttributeName;
    v34 = v7;
    v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  else
  {
    v29 = 0;
  }

  v30 = [MKMultiPartAttributedString _mapkit_multiPartAttributedStringForComposedStrings:v9 defaultAttributes:v29 repeatedSeparator:v28];

  return v30;
}

+ (id)routeDescriptionTextForRoute:(id)a3 font:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 planningDescriptionString];
  if (v8)
  {
    [v7 addObject:v8];
  }

  v9 = [v5 planningSeparatorString];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
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
  if (v6)
  {
    [v14 setObject:v6 forKeyedSubscript:NSFontAttributeName];
  }

  v16 = [MKMultiPartAttributedString _mapkit_multiPartAttributedStringForComposedStrings:v7 defaultAttributes:v14 repeatedSeparator:v13];

  return v16;
}

+ (id)primaryTextForRoute:(id)a3 font:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 previewDurationString];

  if (v7)
  {
    if (v6)
    {
      v14 = NSFontAttributeName;
      v15 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    else
    {
      v8 = 0;
    }

    v10 = [v5 previewDurationString];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100F36984;
    v12[3] = &unk_10165D730;
    v13 = v5;
    v9 = [NSAttributedString _mapkit_attributedStringForComposedString:v10 defaultAttributes:v8 argumentOverrideHandler:v12];
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