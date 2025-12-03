@interface RouteStepWaypointItem
- (NSAttributedString)primaryText;
- (NSAttributedString)secondaryText;
- (RouteStepWaypointItem)initWithWaypoint:(id)waypoint waypointType:(unint64_t)type arrivalStep:(id)step vehicle:(id)vehicle route:(id)route cellClass:(Class)class state:(unint64_t)state metrics:(id)self0 context:(int64_t)self1 scale:(double)self2;
- (UIImage)pinImage;
- (id)_stepWithEVInfo;
- (id)description;
- (void)_computeContent;
@end

@implementation RouteStepWaypointItem

- (id)description
{
  v3 = objc_opt_class();
  primaryText = [(RouteStepWaypointItem *)self primaryText];
  string = [primaryText string];
  secondaryText = [(RouteStepWaypointItem *)self secondaryText];
  string2 = [secondaryText string];
  v8 = [NSString stringWithFormat:@"<%@: %p primaryText = %@; secondaryText = %@>", v3, self, string, string2];;

  return v8;
}

- (id)_stepWithEVInfo
{
  waypointType = [(RouteStepWaypointItem *)self waypointType];
  if (waypointType == 2)
  {
    route = [(RouteStepItem *)self route];
    lastEVStep = [route lastEVStep];
LABEL_18:
    firstObject = lastEVStep;
LABEL_19:

    goto LABEL_20;
  }

  if (waypointType != 1)
  {
    if (waypointType)
    {
      goto LABEL_20;
    }

    route = [(RouteStepItem *)self route];
    steps = [route steps];
    firstObject = [steps firstObject];

    goto LABEL_19;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  route2 = [(RouteStepItem *)self route];
  legs = [route2 legs];

  v9 = [legs countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(legs);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      endStepIndex = [v13 endStepIndex];
      arrivalStep = [(RouteStepWaypointItem *)self arrivalStep];
      stepIndex = [arrivalStep stepIndex];

      if (endStepIndex >= stepIndex)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [legs countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    legIndex = [v13 legIndex];

    if (legIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    route = [(RouteStepItem *)self route];
    lastEVStep = [route lastEVStepInLegWithIndex:legIndex];
    goto LABEL_18;
  }

LABEL_13:

LABEL_16:
  firstObject = 0;
LABEL_20:

  return firstObject;
}

- (void)_computeContent
{
  self->_computedContent = 1;
  primaryText = self->_primaryText;
  self->_primaryText = 0;

  waypointType = [(RouteStepWaypointItem *)self waypointType];
  if (self->_arrivalStep)
  {
    route = [(RouteStepItem *)self route];
    v6 = [route legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_arrivalStep, "stepIndex")}];
  }

  else
  {
    v6 = 0;
  }

  route2 = [(RouteStepItem *)self route];
  legs = [route2 legs];
  v9 = [legs count];

  if (v6 >= v9)
  {
    v89 = 0;
    v13 = 0;
  }

  else
  {
    route3 = [(RouteStepItem *)self route];
    legs2 = [route3 legs];
    v12 = [legs2 objectAtIndexedSubscript:v6];

    if (waypointType)
    {
      [v12 destination];
    }

    else
    {
      [v12 origin];
    }
    v14 = ;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [v14 name];
    }

    else
    {
      if (waypointType)
      {
        [v12 destinationListInstructionString];
      }

      else
      {
        [v12 originListInstructionString];
      }
      name = ;
    }

    v13 = name;
    v89 = v12;
  }

  waypoint = [(RouteStepWaypointItem *)self waypoint];
  isDynamicCurrentLocation = [waypoint isDynamicCurrentLocation];

  v18 = ([v13 length] == 0) & isDynamicCurrentLocation;
  if (v18 == 1)
  {
    v19 = MKLocalizedStringForCurrentLocation();
LABEL_27:
    v84 = v18 ^ 1;

    v13 = v19;
    goto LABEL_28;
  }

  if ([v13 length])
  {
    v84 = 0;
    goto LABEL_28;
  }

  waypointType2 = [(RouteStepWaypointItem *)self waypointType];
  switch(waypointType2)
  {
    case 2uLL:
      v21 = +[NSBundle mainBundle];
      v22 = v21;
      v23 = @"Arrive [Directions Step]";
      goto LABEL_26;
    case 1uLL:
      v21 = +[NSBundle mainBundle];
      v22 = v21;
      v23 = @"Stop [Directions Step]";
      goto LABEL_26;
    case 0uLL:
      v21 = +[NSBundle mainBundle];
      v22 = v21;
      v23 = @"Start [Directions Step]";
LABEL_26:
      v19 = [v21 localizedStringForKey:v23 value:@"localized string not found" table:0];

      v13 = v22;
      goto LABEL_27;
  }

  v84 = 1;
LABEL_28:
  v86 = waypointType;
  if ([v13 length])
  {
    metrics = [(RouteStepItem *)self metrics];
    primaryTextFontStyle = [metrics primaryTextFontStyle];
    metrics2 = [(RouteStepItem *)self metrics];
    [metrics2 primaryTextFontWeight];
    v28 = v27;
    traitCollection = [(RouteStepItem *)self traitCollection];
    v30 = [UIFont _maps_fontWithTextStyle:primaryTextFontStyle weight:traitCollection compatibleWithTraitCollection:v28];

    v31 = [NSAttributedString alloc];
    v93[0] = v30;
    v92[0] = NSFontAttributeName;
    v92[1] = NSForegroundColorAttributeName;
    state = [(RouteStepItem *)self state];
    metrics3 = [(RouteStepItem *)self metrics];
    v34 = metrics3;
    if (state)
    {
      [metrics3 primaryTextActiveTextColor];
    }

    else
    {
      [metrics3 primaryTextDisabledTextColor];
    }
    v35 = ;
    v93[1] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
    v37 = [v31 initWithString:v13 attributes:v36];
    v38 = self->_primaryText;
    self->_primaryText = v37;

    waypointType = v86;
  }

  if (waypointType)
  {
    [v89 destination];
  }

  else
  {
    [v89 origin];
  }
  v39 = ;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  metrics4 = [(RouteStepItem *)self metrics];
  secondaryTextFontStyle = [metrics4 secondaryTextFontStyle];
  metrics5 = [(RouteStepItem *)self metrics];
  [metrics5 secondaryTextFontWeight];
  v45 = v44;
  traitCollection2 = [(RouteStepItem *)self traitCollection];
  v88 = [UIFont _maps_fontWithTextStyle:secondaryTextFontStyle weight:traitCollection2 compatibleWithTraitCollection:v45];

  state2 = [(RouteStepItem *)self state];
  metrics6 = [(RouteStepItem *)self metrics];
  v49 = metrics6;
  if (state2)
  {
    [metrics6 secondaryTextActiveTextColor];
  }

  else
  {
    [metrics6 secondaryTextDisabledTextColor];
  }
  v50 = ;

  v90[0] = NSFontAttributeName;
  v90[1] = NSForegroundColorAttributeName;
  v51 = v88;
  v91[0] = v88;
  v91[1] = v50;
  v52 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
  v85 = v13;
  if (!v89)
  {
    v55 = 0;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_44:
    singleLineAddress = 0;
    goto LABEL_49;
  }

  if (![v39 hasFindMyHandleID])
  {
    if (isKindOfClass)
    {
      p_secondaryText = &self->_secondaryText;
      secondaryText = self->_secondaryText;
      self->_secondaryText = 0;

      singleLineAddress = 0;
      goto LABEL_52;
    }

    v55 = [RouteStepWaypointItemUtil attributedSubtitleForLeg:v89 waypoint:v39 isOrigin:v86 == 0 attributes:v52];
    goto LABEL_48;
  }

  v53 = [NSAttributedString alloc];
  arrivingDisplayName = [v39 arrivingDisplayName];
  v55 = [v53 initWithString:arrivingDisplayName attributes:v52];

  if (isKindOfClass)
  {
    goto LABEL_44;
  }

LABEL_48:
  waypoint2 = [(RouteStepWaypointItem *)self waypoint];
  singleLineAddress = [waypoint2 singleLineAddress];

LABEL_49:
  p_secondaryText = &self->_secondaryText;
  v59 = self->_secondaryText;
  self->_secondaryText = 0;

  if (v55)
  {
    v60 = v55;
    v61 = v60;
LABEL_51:
    _stepWithEVInfo = *p_secondaryText;
    *p_secondaryText = v60;
LABEL_55:

    goto LABEL_56;
  }

LABEL_52:
  vehicle = [(RouteStepWaypointItem *)self vehicle];

  if (vehicle)
  {
    _stepWithEVInfo = [(RouteStepWaypointItem *)self _stepWithEVInfo];
    v64 = [_stepWithEVInfo attributedChargeStringForWaypointType:-[RouteStepWaypointItem waypointType](self font:"waypointType") textColor:v88 includeDaysAgo:{v50, v86 == 0}];
LABEL_54:
    v65 = *p_secondaryText;
    *p_secondaryText = v64;

    v61 = 0;
    goto LABEL_55;
  }

  if ([singleLineAddress length])
  {
    v60 = [[NSAttributedString alloc] initWithString:singleLineAddress attributes:v52];
    v61 = 0;
    goto LABEL_51;
  }

  if (v84)
  {
    v83 = [NSAttributedString alloc];
    _stepWithEVInfo = MKLocalizedStringForUnknownLocation();
    v64 = [v83 initWithString:_stepWithEVInfo attributes:v52];
    goto LABEL_54;
  }

  v61 = 0;
LABEL_56:
  v66 = v50;
  chargingInfo = [v39 chargingInfo];

  v68 = v52;
  if (chargingInfo)
  {
    waypoint3 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    metrics7 = [(RouteStepItem *)self metrics];
    iconSize = [metrics7 iconSize];
    [(RouteStepItem *)self scale];
    v72 = waypoint3;
    v73 = iconSize;
  }

  else
  {
    if ((isKindOfClass & 1) == 0)
    {
      waypoint3 = [(RouteStepWaypointItem *)self waypoint];
      metrics7 = [waypoint3 mapItemIfLoaded];
      [(RouteStepItem *)self scale];
      v78 = v77;
      metrics8 = [(RouteStepItem *)self metrics];
      iconSize2 = [metrics8 iconSize];
      metrics9 = [(RouteStepItem *)self metrics];
      v81 = +[MKMapItem _maps_markerImageForMapItem:scale:size:useMarkerFallback:](MKMapItem, "_maps_markerImageForMapItem:scale:size:useMarkerFallback:", metrics7, iconSize2, [metrics9 useMarkerFallback], v78);
      pinImage = self->_pinImage;
      self->_pinImage = v81;

      v51 = v88;
      goto LABEL_61;
    }

    waypoint3 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
    metrics7 = [(RouteStepItem *)self metrics];
    iconSize3 = [metrics7 iconSize];
    [(RouteStepItem *)self scale];
    v72 = waypoint3;
    v73 = iconSize3;
  }

  v75 = [MKIconManager imageForStyle:v72 size:v73 forScale:0 format:?];
  metrics8 = self->_pinImage;
  self->_pinImage = v75;
LABEL_61:
}

- (UIImage)pinImage
{
  if (!self->_computedContent)
  {
    [(RouteStepWaypointItem *)self _computeContent];
  }

  pinImage = self->_pinImage;

  return pinImage;
}

- (NSAttributedString)secondaryText
{
  if (!self->_computedContent)
  {
    [(RouteStepWaypointItem *)self _computeContent];
  }

  secondaryText = self->_secondaryText;

  return secondaryText;
}

- (NSAttributedString)primaryText
{
  if (!self->_computedContent)
  {
    [(RouteStepWaypointItem *)self _computeContent];
  }

  primaryText = self->_primaryText;

  return primaryText;
}

- (RouteStepWaypointItem)initWithWaypoint:(id)waypoint waypointType:(unint64_t)type arrivalStep:(id)step vehicle:(id)vehicle route:(id)route cellClass:(Class)class state:(unint64_t)state metrics:(id)self0 context:(int64_t)self1 scale:(double)self2
{
  waypointCopy = waypoint;
  stepCopy = step;
  vehicleCopy = vehicle;
  metricsCopy = metrics;
  v27.receiver = self;
  v27.super_class = RouteStepWaypointItem;
  v21 = [(RouteStepItem *)&v27 initWithCellClass:class state:state metrics:metricsCopy context:context route:route scale:scale];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_waypoint, waypoint);
    v22->_waypointType = type;
    objc_storeStrong(&v22->_arrivalStep, step);
    objc_storeStrong(&v22->_vehicle, vehicle);
    [metricsCopy imageAreaWidth];
    [(RouteStepItem *)v22 setHairlineLeadingInset:?];
    [metricsCopy textTrailingMargin];
    [(RouteStepItem *)v22 setHairlineTrailingInset:?];
  }

  return v22;
}

@end