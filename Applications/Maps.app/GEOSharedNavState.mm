@interface GEOSharedNavState
- (BOOL)_disallowDetailsForAnyReason;
- (BOOL)_willArriveSoon:(double)soon;
- (BOOL)disallowDetailsForProtocolVersion;
- (BOOL)disallowDetailsForTransportType;
- (id)_arrivingAroundStringWithETATimeString:(id)string;
- (id)_lastUpdatedStringWithElapsedTime:(id)time;
- (id)_transportTypeString;
- (id)_transportTypeStringForAnalytics;
- (id)alertMessageForChinaError;
- (id)alertMessageForClosedTrip;
- (id)alertMessageForTransportOrProtocolError;
- (id)alertTitleForDisallowedDetails;
- (id)arrivalMessage;
- (id)arrivalNotificationBody;
- (id)arrivalNotificationSubtitle;
- (id)carPlayListCellSubtitle;
- (id)chargingStopMessage;
- (id)chargingStopNotificationBody;
- (id)chargingStopNotificationSubtitle;
- (id)homeCellSubtitle;
- (id)homeCellTitle;
- (id)initialMessage;
- (id)initialNotificationBody;
- (id)initialNotificationSubtitle;
- (id)intermediateArrivalMessage;
- (id)intermediateArrivalNotificationBody;
- (id)intermediateArrivalNotificationSubtitle;
- (id)senderNameIncludingHandleIfNecessary;
- (id)updateMessage;
- (id)updateNotificationBody;
- (id)updateNotificationSubtitle;
- (id)waypointResumeMessage;
- (id)waypointResumeNotificationBody;
- (id)waypointResumeNotificationSubtitle;
- (void)updateModel:(id)model;
@end

@implementation GEOSharedNavState

- (id)arrivalMessage
{
  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v4 = MSPBundle();
  v5 = v4;
  if (name)
  {
    v6 = [v4 localizedStringForKey:@"[Shared Trip] arrival text message body" value:@"I’m arriving at %@ soon." table:0];
    [NSString stringWithFormat:v6, name];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"[Shared Trip] arrival text message body value:generic" table:{@"I’m arriving at my destination soon.", 0}];
    [NSString stringWithFormat:v6, v9];
  }
  v7 = ;

  return v7;
}

- (id)arrivalNotificationBody
{
  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v5 = MSPBundle();
  v6 = v5;
  if (name)
  {
    v7 = [v5 localizedStringForKey:@"[Shared Trip] arrival notification body" value:@"%@ is arriving at %@." table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v7, senderNameIncludingHandleIfNecessary, name];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"[Shared Trip] arrival notification body value:generic" table:{@"%@ is arriving at their destination.", 0}];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v7, senderNameIncludingHandleIfNecessary, v11];
  }
  v9 = ;

  return v9;
}

- (id)arrivalNotificationSubtitle
{
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] arrival notification subtitle" value:@"%@ is arriving" table:0];
  senderName = [(GEOSharedNavState *)self senderName];
  v6 = [NSString stringWithFormat:v4, senderName];

  return v6;
}

- (id)waypointResumeMessage
{
  finalETAInfo = [(GEOSharedNavState *)self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  destinationName = [(GEOSharedNavState *)self destinationName];
  v8 = MSPBundle();
  v9 = v8;
  if (destinationName)
  {
    v10 = [v8 localizedStringForKey:@"[Shared Trip] Text message body when resuming sharing" value:@"I will arrive at %@ around %@. I’ll let you know if I’m running late." table:0];
    [NSString stringWithFormat:v10, destinationName, v6];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"[Shared Trip] Text message body when resuming sharing value:generic" table:{@"I will arrive at my destination around %@. I’ll let you know if I’m running late.", 0}];
    [NSString stringWithFormat:v10, v6, v13];
  }
  v11 = ;

  return v11;
}

- (id)waypointResumeNotificationBody
{
  finalETAInfo = [(GEOSharedNavState *)self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  destinationName = [(GEOSharedNavState *)self destinationName];
  v8 = MSPBundle();
  v9 = v8;
  if (destinationName)
  {
    v10 = [v8 localizedStringForKey:@"[Shared Trip] Notification's body when resuming sharing" value:@"%@ will arrive at %@ around %@. Follow along in Maps." table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v10, senderNameIncludingHandleIfNecessary, destinationName, v6];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"[Shared Trip] Notification's body when resuming sharing value:generic" table:{@"%@ will arrive at their destination around %@. Follow along in Maps.", 0}];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v10, senderNameIncludingHandleIfNecessary, v6, v14];
  }
  v12 = ;

  return v12;
}

- (id)waypointResumeNotificationSubtitle
{
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] Notification's subtitle when resuming sharing" value:@"%@ has resumed the route" table:0];

  senderName = [(GEOSharedNavState *)self senderName];
  v6 = [NSString stringWithFormat:v4, senderName];

  return v6;
}

- (id)intermediateArrivalMessage
{
  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  destinationName = [(GEOSharedNavState *)self destinationName];
  v6 = MSPBundle();
  v7 = v6;
  if (destinationName)
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] text message body when stopping at an intermediate waypoint" value:@"I’m making a stop at %@ before continuing to %@." table:0];
    [NSString stringWithFormat:v8, name, destinationName];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] text message body when stopping at an intermediate waypoint value:generic" table:{@"I’m making a stop at %@ before continuing to my destination.", 0}];
    [NSString stringWithFormat:v8, name, v11];
  }
  v9 = ;

  return v9;
}

- (id)intermediateArrivalNotificationBody
{
  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  destinationName = [(GEOSharedNavState *)self destinationName];
  v6 = MSPBundle();
  v7 = v6;
  if (destinationName)
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] Notification's body when stopping at an intermediate waypoint" value:@"%@ is stopping at %@ before continuing to %@." table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v8, senderNameIncludingHandleIfNecessary, name, destinationName];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] Notification's body when stopping at an intermediate waypoint value:generic" table:{@"%@ is stopping at %@ before continuing to their destination.", 0}];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v8, senderNameIncludingHandleIfNecessary, name, v12];
  }
  v10 = ;

  return v10;
}

- (id)intermediateArrivalNotificationSubtitle
{
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] Notification's subtitle when stopping at an intermediate waypoint" value:@"%@ is making a stop" table:0];

  senderName = [(GEOSharedNavState *)self senderName];
  v6 = [NSString stringWithFormat:v4, senderName];

  return v6;
}

- (id)chargingStopMessage
{
  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v4 = MSPBundle();
  v5 = [v4 localizedStringForKey:@"[Shared Trip] text message body when stopping at a charger" value:@"I have stopped at a charging station in %@." table:0];
  v6 = [NSString stringWithFormat:v5, name];

  return v6;
}

- (id)chargingStopNotificationBody
{
  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v5 = MSPBundle();
  v6 = [v5 localizedStringForKey:@"[Shared Trip] Notification's body when stopping at a charger" value:@"%@ has stopped at a charging station in %@." table:0];
  senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
  v8 = [NSString stringWithFormat:v6, senderNameIncludingHandleIfNecessary, name];

  return v8;
}

- (id)chargingStopNotificationSubtitle
{
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] Notification's subtitle when stopping at a charger" value:@"%@ is making a stop" table:0];

  senderName = [(GEOSharedNavState *)self senderName];
  v6 = [NSString stringWithFormat:v4, senderName];

  return v6;
}

- (id)updateMessage
{
  etaInfo = [(GEOSharedNavState *)self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v9 = MSPBundle();
  v10 = v9;
  if (name)
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] update text message body (with destination)" value:@"My updated arrival time to %1$@ is now around %2$@." table:0];
    [NSString stringWithFormat:v11, name, v6];
  }

  else
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] update text message body (without destination)" value:@"My updated arrival time is now around %@." table:0];
    [NSString stringWithFormat:v11, v6, v14];
  }
  v12 = ;

  return v12;
}

- (id)updateNotificationBody
{
  etaInfo = [(GEOSharedNavState *)self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  nextWaypointInfo = [(GEOSharedNavState *)self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v9 = MSPBundle();
  v10 = v9;
  if (name)
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] update Notification's body when sharing (with destination)" value:@"%1$@ will now arrive at %2$@ around %3$@" table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v11, senderNameIncludingHandleIfNecessary, name, v6];
  }

  else
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] update Notification's body when sharing (without destination)" value:@"%1$@ will now arrive around %2$@" table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString stringWithFormat:v11, senderNameIncludingHandleIfNecessary, v6, v15];
  }
  v13 = ;

  return v13;
}

- (id)updateNotificationSubtitle
{
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] update Notification's subtitle when sharing" value:@"%@’s ETA has changed" table:0];
  senderName = [(GEOSharedNavState *)self senderName];
  v6 = [NSString stringWithFormat:v4, senderName];

  return v6;
}

- (id)initialMessage
{
  finalETAInfo = [(GEOSharedNavState *)self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  numberOfIntermediateStopsRemaining = [(GEOSharedNavState *)self numberOfIntermediateStopsRemaining];
  destinationName = [(GEOSharedNavState *)self destinationName];
  v9 = MSPBundle();
  v10 = v9;
  if (destinationName)
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] text message body (with destination name)" value:@"localized string not found" table:0];
    [NSString localizedStringWithFormat:v11, numberOfIntermediateStopsRemaining, destinationName, v6];
  }

  else
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] text message body (no destination name)" value:@"localized string not found" table:0];
    [NSString localizedStringWithFormat:v11, numberOfIntermediateStopsRemaining, v6, v14];
  }
  v12 = ;

  return v12;
}

- (id)initialNotificationBody
{
  finalETAInfo = [(GEOSharedNavState *)self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  numberOfIntermediateStopsRemaining = [(GEOSharedNavState *)self numberOfIntermediateStopsRemaining];
  destinationName = [(GEOSharedNavState *)self destinationName];
  v9 = MSPBundle();
  v10 = v9;
  if (destinationName)
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] Notification's body when sharing (with destination name)" value:@"localized string not found" table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString localizedStringWithFormat:v11, numberOfIntermediateStopsRemaining, senderNameIncludingHandleIfNecessary, destinationName, v6];
  }

  else
  {
    v11 = [v9 localizedStringForKey:@"[Shared Trip] Notification's body when sharing (no destination name)" value:@"localized string not found" table:0];
    senderNameIncludingHandleIfNecessary = [(GEOSharedNavState *)self senderNameIncludingHandleIfNecessary];
    [NSString localizedStringWithFormat:v11, numberOfIntermediateStopsRemaining, senderNameIncludingHandleIfNecessary, v6, v15];
  }
  v13 = ;

  return v13;
}

- (id)initialNotificationSubtitle
{
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] Notification's subtitle when sharing" value:@"%@ is sharing ETA" table:0];

  senderName = [(GEOSharedNavState *)self senderName];
  v6 = [NSString stringWithFormat:v4, senderName];

  return v6;
}

- (id)senderNameIncludingHandleIfNecessary
{
  senderInfo = [(GEOSharedNavState *)self senderInfo];
  hasLocalContactIdentifier = [senderInfo hasLocalContactIdentifier];

  [(GEOSharedNavState *)self senderName];
  if (hasLocalContactIdentifier)
    v5 = {;
  }

  else
    v6 = {;
    senderInfo2 = [(GEOSharedNavState *)self senderInfo];
    fromIdentifier = [senderInfo2 fromIdentifier];
    v5 = [NSString stringWithFormat:@"%@ (%@)", v6, fromIdentifier];
  }

  return v5;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  homeCellTitle = [(GEOSharedNavState *)self homeCellTitle];
  [modelCopy setFirstLine:homeCellTitle];

  homeCellSubtitle = [(GEOSharedNavState *)self homeCellSubtitle];
  [modelCopy setSecondLine:homeCellSubtitle];
}

- (id)_transportTypeStringForAnalytics
{
  if ([(GEOSharedNavState *)self hasTransportType])
  {
    transportType = [(GEOSharedNavState *)self transportType];
    if (transportType >= 7)
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", transportType];
    }

    else
    {
      v4 = off_10164CBB8[transportType];
    }
  }

  else
  {
    v4 = @"UNKNOWN_TRANSPORT_TYPE";
  }

  return v4;
}

- (id)carPlayListCellSubtitle
{
  etaInfo = [(GEOSharedNavState *)self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  if ([(GEOSharedNavState *)self hasArrived]&& [(GEOSharedNavState *)self arrived])
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Arrived [Shared ETA, List, CarPlay]";
  }

  else
  {
    if ([(GEOSharedNavState *)self hasClosed]&& ([(GEOSharedNavState *)self closed]& 1) != 0)
    {
      v8 = 0;
      goto LABEL_12;
    }

    [v4 timeIntervalSinceNow];
    if (![(GEOSharedNavState *)self _willArriveSoon:?])
    {
      v9 = +[NSTimeZone localTimeZone];
      v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v9 canIncludeDate:0];

      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"00:00 ETA [CarPlay value:Shared Trip]" table:{@"localized string not found", 0}];
      v8 = [NSString stringWithFormat:v11, v6];

      goto LABEL_11;
    }

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Arriving soon [Shared ETA, List, CarPlay]";
  }

  v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
LABEL_11:

LABEL_12:

  return v8;
}

- (BOOL)_willArriveSoon:(double)soon
{
  if (soon < 0.0)
  {
    return 0;
  }

  GEOConfigGetDouble();
  if (v6 <= soon)
  {
    return 0;
  }

  if ([(GEOSharedNavState *)self hasClosed])
  {
    return [(GEOSharedNavState *)self closed]^ 1;
  }

  return 1;
}

- (id)_lastUpdatedStringWithElapsedTime:(id)time
{
  timeCopy = time;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Last updated (time ago) [shared eta]" value:@"localized string not found" table:0];

  timeCopy = [NSString localizedStringWithFormat:v5, timeCopy];

  return timeCopy;
}

- (id)_arrivingAroundStringWithETATimeString:(id)string
{
  stringCopy = string;
  numberOfIntermediateStopsRemaining = [(GEOSharedNavState *)self numberOfIntermediateStopsRemaining];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"(time) ETA [shared eta]" value:@"localized string not found" table:0];

  stringCopy = [NSString localizedStringWithFormat:v7, numberOfIntermediateStopsRemaining, stringCopy];

  return stringCopy;
}

- (id)_transportTypeString
{
  if (![(GEOSharedNavState *)self hasTransportType])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  transportType = [(GEOSharedNavState *)self transportType];
  if (transportType > 1)
  {
    if (transportType == 2)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Shared Trip Cell Transport Type: Walking";
      goto LABEL_15;
    }

    if (transportType == 3)
    {
      v4 = +[NSBundle mainBundle];
      v5 = v4;
      v6 = @"Shared Trip Cell Transport Type: Cycling";
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!transportType)
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"Shared Trip Cell Transport Type: Driving";
    goto LABEL_15;
  }

  if (transportType != 1)
  {
LABEL_9:
    v7 = sub_1000946AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10[0] = 67109120;
      v10[1] = [(GEOSharedNavState *)self transportType];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No transport type string for %d", v10, 8u);
    }

    goto LABEL_12;
  }

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"Shared Trip Cell Transport Type: Transit";
LABEL_15:
  v8 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

LABEL_16:

  return v8;
}

- (id)homeCellSubtitle
{
  v3 = [[NSMutableArray alloc] initWithCapacity:2];
  if ([(GEOSharedNavState *)self hasClosed]&& ([(GEOSharedNavState *)self closed]& 1) != 0)
  {
    _transportTypeString = 0;
    v5 = 1;
  }

  else
  {
    _transportTypeString = [(GEOSharedNavState *)self _transportTypeString];
    v5 = 0;
  }

  if ([_transportTypeString length])
  {
    [v3 addObject:_transportTypeString];
  }

  finalETAInfo = [(GEOSharedNavState *)self finalETAInfo];
  if ([finalETAInfo hasEtaTimestamp])
  {
    [finalETAInfo etaTimestamp];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v7 = 0;
  }

  if ([(GEOSharedNavState *)self hasArrived]&& [(GEOSharedNavState *)self arrived])
  {
    if ([(GEOSharedNavState *)self hasArrivedTimestamp])
    {
      [(GEOSharedNavState *)self arrivedTimestamp];
    }

    else
    {
      [(GEOSharedNavState *)self updatedTimestamp];
    }

    v21 = v8;
    if (v8 <= 0.0)
    {
      v32 = sub_10006D178();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [NSString stringWithFormat:@"Both arrived and updated timestamps are missing for this trip"];
        *buf = 136316162;
        v37 = "[GEOSharedNavState(Maps) homeCellSubtitle]";
        v38 = 2080;
        v39 = "GEOSharedNavState+Maps.m";
        v40 = 1024;
        v41 = 195;
        v42 = 2080;
        v43 = "timestamp > 0";
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v34 = sub_10006D178();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v37 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:v21];
    v22 = +[NSTimeZone localTimeZone];
    v15 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v12 inTimeZone:v22 canIncludeDate:0];

    isNavigatingToIntermediateStop = [(GEOSharedNavState *)self isNavigatingToIntermediateStop];
    v24 = +[NSBundle mainBundle];
    v25 = v24;
    if (isNavigatingToIntermediateStop)
    {
      v26 = @"Arrived at a stop at (time) [shared eta]";
    }

    else
    {
      v26 = @"Arrived at (time) [shared eta]";
    }

    v27 = [v24 localizedStringForKey:v26 value:@"localized string not found" table:0];
    v16 = [NSString stringWithFormat:v27, v15];

    [v3 addObject:v16];
    goto LABEL_26;
  }

  if (v7)
  {
    [v7 timeIntervalSinceNow];
    v9 = [(GEOSharedNavState *)self _willArriveSoon:?];
    v10 = +[NSTimeZone localTimeZone];
    v11 = v9 ^ 1;
    v12 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v7 inTimeZone:v10 canIncludeDate:v9 ^ 1];

    if ((v11 & 1) == 0)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Arriving soon around (time) [shared eta]" value:@"localized string not found" table:0];
      v15 = [NSString stringWithFormat:v14, v12];

      [v3 addObject:v15];
LABEL_27:

      goto LABEL_28;
    }

    v15 = [(GEOSharedNavState *)self _arrivingAroundStringWithETATimeString:v12];
    [v3 addObject:v15];
    [(GEOSharedNavState *)self updatedTimestamp];
    v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v16 timeIntervalSinceNow];
    v18 = v17;
    if ([(GEOSharedNavState *)self hasUpdatedTimestamp]&& v18 <= -60.0)
    {
      v19 = [NSDateComponentsFormatter _mapkit_descriptionForTimeSinceDate:v16];
      v20 = [(GEOSharedNavState *)self _lastUpdatedStringWithElapsedTime:v19];

      [v3 addObject:v20];
      v15 = v20;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_28:
  if (v5 && ![v3 count])
  {
    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"[Shared Trip] ETA no longer available" value:@"localized string not found" table:0];
    [v3 addObject:v29];
  }

  v30 = [v3 componentsJoinedByString:@"・"];

  return v30;
}

- (id)homeCellTitle
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"[Shared Trip] Home cell title (Mac)";
LABEL_3:
    v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    senderNameOrHandle = [(GEOSharedNavState *)self senderNameOrHandle];
LABEL_4:
    v10 = senderNameOrHandle;
    v11 = [NSString localizedStringWithFormat:v8, senderNameOrHandle];
    goto LABEL_18;
  }

  if (([(GEOSharedNavState *)self hasArrived]& 1) == 0 && ([(GEOSharedNavState *)self hasClosed]& 1) == 0 && ![(GEOSharedNavState *)self _disallowDetailsForAnyReason])
  {
    destinationName = [(GEOSharedNavState *)self destinationName];

    senderName = [(GEOSharedNavState *)self senderName];

    v6 = +[NSBundle mainBundle];
    if (destinationName)
    {
      if (senderName)
      {
        v14 = @"[Shared Trip] Home cell title (destination, contact card, can see details)";
        goto LABEL_11;
      }

      v17 = @"[Shared Trip] Home cell title (destination, no contact card, can see details)";
LABEL_16:
      v8 = [v6 localizedStringForKey:v17 value:@"localized string not found" table:0];

      senderNameOrHandle2 = [(GEOSharedNavState *)self senderNameOrHandle];
      goto LABEL_17;
    }

    if (senderName)
    {
      v16 = @"[Shared Trip] Home cell title (no destination, contact card, can see details)";
      goto LABEL_14;
    }

    v7 = @"[Shared Trip] Home cell title (no destination, no contact card, can see details)";
LABEL_25:
    v5 = v6;
    goto LABEL_3;
  }

  destinationName2 = [(GEOSharedNavState *)self destinationName];

  senderName2 = [(GEOSharedNavState *)self senderName];

  v6 = +[NSBundle mainBundle];
  if (!destinationName2)
  {
    if (senderName2)
    {
      v16 = @"[Shared Trip] Home cell title (no destination, contact card, cannot see details)";
LABEL_14:
      v8 = [v6 localizedStringForKey:v16 value:@"localized string not found" table:0];

      senderNameOrHandle = [(GEOSharedNavState *)self senderName];
      goto LABEL_4;
    }

    v7 = @"[Shared Trip] Home cell title (no destination, no contact card, cannot see details)";
    goto LABEL_25;
  }

  if (!senderName2)
  {
    v17 = @"[Shared Trip] Home cell title (destination, no contact card, cannot see details)";
    goto LABEL_16;
  }

  v14 = @"[Shared Trip] Home cell title (destination, contact card, cannot see details)";
LABEL_11:
  v8 = [v6 localizedStringForKey:v14 value:@"localized string not found" table:0];

  senderNameOrHandle2 = [(GEOSharedNavState *)self senderName];
LABEL_17:
  v10 = senderNameOrHandle2;
  destinationName3 = [(GEOSharedNavState *)self destinationName];
  v11 = [NSString localizedStringWithFormat:v8, v10, destinationName3];

LABEL_18:

  return v11;
}

- (id)alertMessageForClosedTrip
{
  senderNameOrHandle = [(GEOSharedNavState *)self senderNameOrHandle];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (senderNameOrHandle)
  {
    v6 = [v4 localizedStringForKey:@"Route not available anymore [Share ETA]" value:@"localized string not found" table:0];

    senderNameOrHandle2 = [(GEOSharedNavState *)self senderNameOrHandle];
    v8 = [NSString localizedStringWithFormat:v6, senderNameOrHandle2];

    v5 = v6;
  }

  else
  {
    v8 = [v4 localizedStringForKey:@"Route not available [Share ETA]" value:@"localized string not found" table:0];
  }

  return v8;
}

- (id)alertMessageForTransportOrProtocolError
{
  etaInfo = [(GEOSharedNavState *)self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  destinationName = [(GEOSharedNavState *)self destinationName];

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];
  if (destinationName)
  {
    if (userInterfaceIdiom == 1)
    {
    }

    else
    {
      v10 = +[UIDevice currentDevice];
      userInterfaceIdiom2 = [v10 userInterfaceIdiom];

      if (userInterfaceIdiom2 != 5)
      {
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"Transport error (iOS) [Share ETA]";
        goto LABEL_13;
      }
    }

    v12 = +[NSBundle mainBundle];
    v13 = v12;
    v14 = @"Transport error (iPad) [Share ETA]";
LABEL_13:
    v20 = [v12 localizedStringForKey:v14 value:@"localized string not found" table:0];

    senderNameOrHandle = [(GEOSharedNavState *)self senderNameOrHandle];
    destinationName2 = [(GEOSharedNavState *)self destinationName];
    v23 = [NSString localizedStringWithFormat:v20, senderNameOrHandle, destinationName2, v6];

    goto LABEL_16;
  }

  if (userInterfaceIdiom == 1)
  {
  }

  else
  {
    v15 = +[UIDevice currentDevice];
    userInterfaceIdiom3 = [v15 userInterfaceIdiom];

    if (userInterfaceIdiom3 != 5)
    {
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      v19 = @"Transport error, generic (iOS) [Share ETA]";
      goto LABEL_15;
    }
  }

  v17 = +[NSBundle mainBundle];
  v18 = v17;
  v19 = @"Transport error, generic (iPad) [Share ETA]";
LABEL_15:
  v20 = [v17 localizedStringForKey:v19 value:@"localized string not found" table:0];

  senderNameOrHandle = [(GEOSharedNavState *)self senderNameOrHandle];
  v23 = [NSString stringWithFormat:v20, senderNameOrHandle, v6];
LABEL_16:

  return v23;
}

- (id)alertMessageForChinaError
{
  etaInfo = [(GEOSharedNavState *)self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = +[NSTimeZone localTimeZone];
  v6 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:v5 canIncludeDate:0];

  destinationName = [(GEOSharedNavState *)self destinationName];

  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (destinationName)
  {
    v10 = [v8 localizedStringForKey:@"China outside-in error [Share ETA]" value:@"localized string not found" table:0];

    senderNameOrHandle = [(GEOSharedNavState *)self senderNameOrHandle];
    destinationName2 = [(GEOSharedNavState *)self destinationName];
    v13 = [NSString localizedStringWithFormat:v10, senderNameOrHandle, destinationName2, v6];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"China outside-in error value:generic [Share ETA]" table:{@"localized string not found", 0}];

    senderNameOrHandle = [(GEOSharedNavState *)self senderNameOrHandle];
    v13 = [NSString stringWithFormat:v10, senderNameOrHandle, v6];
  }

  return v13;
}

- (id)alertTitleForDisallowedDetails
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Route Not Viewable [Share ETA]" value:@"localized string not found" table:0];

  return v3;
}

- (BOOL)_disallowDetailsForAnyReason
{
  if ([(GEOSharedNavState *)self disallowDetailsForChina]|| [(GEOSharedNavState *)self disallowDetailsForTransportType])
  {
    return 1;
  }

  return [(GEOSharedNavState *)self disallowDetailsForProtocolVersion];
}

- (BOOL)disallowDetailsForProtocolVersion
{
  hasProtocolVersion = [(GEOSharedNavState *)self hasProtocolVersion];
  if (hasProtocolVersion)
  {
    protocolVersion = [(GEOSharedNavState *)self protocolVersion];
    LOBYTE(hasProtocolVersion) = GEOConfigGetUInteger() < protocolVersion;
  }

  return hasProtocolVersion;
}

- (BOOL)disallowDetailsForTransportType
{
  if (![(GEOSharedNavState *)self hasTransportType])
  {
    return 1;
  }

  [(GEOSharedNavState *)self transportType];
  return MSPSharedTripReceiverDetailViewSupportedForTransportType() ^ 1;
}

@end