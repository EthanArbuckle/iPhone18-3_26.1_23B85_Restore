@interface RouteStepWaypointItem
- (NSAttributedString)primaryText;
- (NSAttributedString)secondaryText;
- (RouteStepWaypointItem)initWithWaypoint:(id)a3 waypointType:(unint64_t)a4 arrivalStep:(id)a5 vehicle:(id)a6 route:(id)a7 cellClass:(Class)a8 state:(unint64_t)a9 metrics:(id)a10 context:(int64_t)a11 scale:(double)a12;
- (UIImage)pinImage;
- (id)_stepWithEVInfo;
- (id)description;
- (void)_computeContent;
@end

@implementation RouteStepWaypointItem

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(RouteStepWaypointItem *)self primaryText];
  v5 = [v4 string];
  v6 = [(RouteStepWaypointItem *)self secondaryText];
  v7 = [v6 string];
  v8 = [NSString stringWithFormat:@"<%@: %p primaryText = %@; secondaryText = %@>", v3, self, v5, v7];;

  return v8;
}

- (id)_stepWithEVInfo
{
  v4 = [(RouteStepWaypointItem *)self waypointType];
  if (v4 == 2)
  {
    v5 = [(RouteStepItem *)self route];
    v17 = [v5 lastEVStep];
LABEL_18:
    v2 = v17;
LABEL_19:

    goto LABEL_20;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = [(RouteStepItem *)self route];
    v6 = [v5 steps];
    v2 = [v6 firstObject];

    goto LABEL_19;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(RouteStepItem *)self route];
  v8 = [v7 legs];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      v14 = [v13 endStepIndex];
      v15 = [(RouteStepWaypointItem *)self arrivalStep];
      v16 = [v15 stepIndex];

      if (v14 >= v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v18 = [v13 legIndex];

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    v5 = [(RouteStepItem *)self route];
    v17 = [v5 lastEVStepInLegWithIndex:v18];
    goto LABEL_18;
  }

LABEL_13:

LABEL_16:
  v2 = 0;
LABEL_20:

  return v2;
}

- (void)_computeContent
{
  self->_computedContent = 1;
  primaryText = self->_primaryText;
  self->_primaryText = 0;

  v4 = [(RouteStepWaypointItem *)self waypointType];
  if (self->_arrivalStep)
  {
    v5 = [(RouteStepItem *)self route];
    v6 = [v5 legIndexForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_arrivalStep, "stepIndex")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(RouteStepItem *)self route];
  v8 = [v7 legs];
  v9 = [v8 count];

  if (v6 >= v9)
  {
    v89 = 0;
    v13 = 0;
  }

  else
  {
    v10 = [(RouteStepItem *)self route];
    v11 = [v10 legs];
    v12 = [v11 objectAtIndexedSubscript:v6];

    if (v4)
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
      v15 = [v14 name];
    }

    else
    {
      if (v4)
      {
        [v12 destinationListInstructionString];
      }

      else
      {
        [v12 originListInstructionString];
      }
      v15 = ;
    }

    v13 = v15;
    v89 = v12;
  }

  v16 = [(RouteStepWaypointItem *)self waypoint];
  v17 = [v16 isDynamicCurrentLocation];

  v18 = ([v13 length] == 0) & v17;
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

  v20 = [(RouteStepWaypointItem *)self waypointType];
  switch(v20)
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
  v86 = v4;
  if ([v13 length])
  {
    v24 = [(RouteStepItem *)self metrics];
    v25 = [v24 primaryTextFontStyle];
    v26 = [(RouteStepItem *)self metrics];
    [v26 primaryTextFontWeight];
    v28 = v27;
    v29 = [(RouteStepItem *)self traitCollection];
    v30 = [UIFont _maps_fontWithTextStyle:v25 weight:v29 compatibleWithTraitCollection:v28];

    v31 = [NSAttributedString alloc];
    v93[0] = v30;
    v92[0] = NSFontAttributeName;
    v92[1] = NSForegroundColorAttributeName;
    v32 = [(RouteStepItem *)self state];
    v33 = [(RouteStepItem *)self metrics];
    v34 = v33;
    if (v32)
    {
      [v33 primaryTextActiveTextColor];
    }

    else
    {
      [v33 primaryTextDisabledTextColor];
    }
    v35 = ;
    v93[1] = v35;
    v36 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
    v37 = [v31 initWithString:v13 attributes:v36];
    v38 = self->_primaryText;
    self->_primaryText = v37;

    v4 = v86;
  }

  if (v4)
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
  v41 = [(RouteStepItem *)self metrics];
  v42 = [v41 secondaryTextFontStyle];
  v43 = [(RouteStepItem *)self metrics];
  [v43 secondaryTextFontWeight];
  v45 = v44;
  v46 = [(RouteStepItem *)self traitCollection];
  v88 = [UIFont _maps_fontWithTextStyle:v42 weight:v46 compatibleWithTraitCollection:v45];

  v47 = [(RouteStepItem *)self state];
  v48 = [(RouteStepItem *)self metrics];
  v49 = v48;
  if (v47)
  {
    [v48 secondaryTextActiveTextColor];
  }

  else
  {
    [v48 secondaryTextDisabledTextColor];
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
    v87 = 0;
    goto LABEL_49;
  }

  if (![v39 hasFindMyHandleID])
  {
    if (isKindOfClass)
    {
      p_secondaryText = &self->_secondaryText;
      secondaryText = self->_secondaryText;
      self->_secondaryText = 0;

      v87 = 0;
      goto LABEL_52;
    }

    v55 = [RouteStepWaypointItemUtil attributedSubtitleForLeg:v89 waypoint:v39 isOrigin:v86 == 0 attributes:v52];
    goto LABEL_48;
  }

  v53 = [NSAttributedString alloc];
  v54 = [v39 arrivingDisplayName];
  v55 = [v53 initWithString:v54 attributes:v52];

  if (isKindOfClass)
  {
    goto LABEL_44;
  }

LABEL_48:
  v58 = [(RouteStepWaypointItem *)self waypoint];
  v87 = [v58 singleLineAddress];

LABEL_49:
  p_secondaryText = &self->_secondaryText;
  v59 = self->_secondaryText;
  self->_secondaryText = 0;

  if (v55)
  {
    v60 = v55;
    v61 = v60;
LABEL_51:
    v62 = *p_secondaryText;
    *p_secondaryText = v60;
LABEL_55:

    goto LABEL_56;
  }

LABEL_52:
  v63 = [(RouteStepWaypointItem *)self vehicle];

  if (v63)
  {
    v62 = [(RouteStepWaypointItem *)self _stepWithEVInfo];
    v64 = [v62 attributedChargeStringForWaypointType:-[RouteStepWaypointItem waypointType](self font:"waypointType") textColor:v88 includeDaysAgo:{v50, v86 == 0}];
LABEL_54:
    v65 = *p_secondaryText;
    *p_secondaryText = v64;

    v61 = 0;
    goto LABEL_55;
  }

  if ([v87 length])
  {
    v60 = [[NSAttributedString alloc] initWithString:v87 attributes:v52];
    v61 = 0;
    goto LABEL_51;
  }

  if (v84)
  {
    v83 = [NSAttributedString alloc];
    v62 = MKLocalizedStringForUnknownLocation();
    v64 = [v83 initWithString:v62 attributes:v52];
    goto LABEL_54;
  }

  v61 = 0;
LABEL_56:
  v66 = v50;
  v67 = [v39 chargingInfo];

  v68 = v52;
  if (v67)
  {
    v69 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    v70 = [(RouteStepItem *)self metrics];
    v71 = [v70 iconSize];
    [(RouteStepItem *)self scale];
    v72 = v69;
    v73 = v71;
  }

  else
  {
    if ((isKindOfClass & 1) == 0)
    {
      v69 = [(RouteStepWaypointItem *)self waypoint];
      v70 = [v69 mapItemIfLoaded];
      [(RouteStepItem *)self scale];
      v78 = v77;
      v76 = [(RouteStepItem *)self metrics];
      v79 = [v76 iconSize];
      v80 = [(RouteStepItem *)self metrics];
      v81 = +[MKMapItem _maps_markerImageForMapItem:scale:size:useMarkerFallback:](MKMapItem, "_maps_markerImageForMapItem:scale:size:useMarkerFallback:", v70, v79, [v80 useMarkerFallback], v78);
      pinImage = self->_pinImage;
      self->_pinImage = v81;

      v51 = v88;
      goto LABEL_61;
    }

    v69 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
    v70 = [(RouteStepItem *)self metrics];
    v74 = [v70 iconSize];
    [(RouteStepItem *)self scale];
    v72 = v69;
    v73 = v74;
  }

  v75 = [MKIconManager imageForStyle:v72 size:v73 forScale:0 format:?];
  v76 = self->_pinImage;
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

- (RouteStepWaypointItem)initWithWaypoint:(id)a3 waypointType:(unint64_t)a4 arrivalStep:(id)a5 vehicle:(id)a6 route:(id)a7 cellClass:(Class)a8 state:(unint64_t)a9 metrics:(id)a10 context:(int64_t)a11 scale:(double)a12
{
  v26 = a3;
  v25 = a5;
  v19 = a6;
  v20 = a10;
  v27.receiver = self;
  v27.super_class = RouteStepWaypointItem;
  v21 = [(RouteStepItem *)&v27 initWithCellClass:a8 state:a9 metrics:v20 context:a11 route:a7 scale:a12];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_waypoint, a3);
    v22->_waypointType = a4;
    objc_storeStrong(&v22->_arrivalStep, a5);
    objc_storeStrong(&v22->_vehicle, a6);
    [v20 imageAreaWidth];
    [(RouteStepItem *)v22 setHairlineLeadingInset:?];
    [v20 textTrailingMargin];
    [(RouteStepItem *)v22 setHairlineTrailingInset:?];
  }

  return v22;
}

@end