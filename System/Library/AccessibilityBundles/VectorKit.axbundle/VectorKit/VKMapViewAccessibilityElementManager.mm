@interface VKMapViewAccessibilityElementManager
- ($01BB1521EC52D44A8E7628F5261DCEC8)_boundsForMapView:(id)view;
- ($01BB1521EC52D44A8E7628F5261DCEC8)bounds;
- ($01BB1521EC52D44A8E7628F5261DCEC8)boundsForMapView:(id)view;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_centerForMapView:(id)view;
- ($F24F406B2B787EFB06265DBA3D28CBD5)center;
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerForMapView:(id)view;
- (BOOL)_isValidBoundsForMapView:(id)view bounds:(id)bounds;
- (BOOL)_isValidYawForMapView:(id)view yaw:(double)yaw;
- (BOOL)hitPointHasMapAncestor:(CGPoint)ancestor inWindow:(id)window;
- (BOOL)roadHasMapAncestor:(id)ancestor inWindow:(id)window;
- (CGPoint)adjacentPointToPoint:(CGPoint)point withOtherPoint:(CGPoint)otherPoint onRoad:(id)road;
- (CGPoint)explorationLastTouchPoint;
- (VKMapView)currentMapView;
- (VKMapViewAccessibilityElementManager)init;
- (VKMapViewAccessibilityElementManagerDelegate)delegate;
- (double)accessibilityAngleWithThreePointsFirst:(CGPoint)first second:(CGPoint)second third:(CGPoint)third inRadians:(BOOL)radians;
- (double)accessibilityDistanceBetweenPoint:(CGPoint)point andPoint:(CGPoint)andPoint onRoad:(id)road;
- (double)yawForMapView:(id)view;
- (id)_accessibilityElementsForMapView:(id)view mapViewBounds:(id)bounds visibleLabels:(id)labels visibleTiles:(id)tiles existingElements:(id)elements;
- (id)_descriptionForRouteTransitNodeLabel:(id)label;
- (id)_descriptionForTransitLineLabel:(id)label;
- (id)_descriptionForTransitNodeLabel:(id)label;
- (id)_gatherVisibleLabelMarkersForMapView:(id)view;
- (id)_gatherVisibleTilesForMapView:(id)view;
- (id)accessibilityElementsForMapView:(id)view;
- (id)accessibilityMapsExplorationChangeVerbosityIncreasing:(BOOL)increasing;
- (id)accessibilityMapsExplorationCurrentIntersectionDescription;
- (id)accessibilityMapsExplorationCurrentRoadsWithAngles;
- (id)accessibilityMapsExplorationDescriptionForAdjacentPOIs:(id)is;
- (id)accessibilityMapsExplorationStringForElement:(id)element withRelativeAngle:(double)angle;
- (id)accessibilityVisiblePOIsBetweenPoint:(CGPoint)point andPoint:(CGPoint)andPoint onRoad:(id)road;
- (id)edgeBetweenVertex:(id)vertex andVertex:(id)andVertex;
- (id)roadElementForFeatureWrapper:(id)wrapper;
- (id)roadsForVertex:(id)vertex;
- (int64_t)orientationForMapView:(id)view;
- (void)_consolidateAccessibilityElements:(id)elements;
- (void)_filterAccessibilityElements:(id)elements zoomLevel:(float)level mapView:(id)view;
- (void)_processVisibleTile:(id)tile accessibilityElements:(id *)elements mapViewBounds:(id)bounds mapView:(id)view roadLabels:(id)labels;
- (void)_sortAccessibilityElements:(id)elements mapView:(id)view;
- (void)accessibilityMapsExplorationBacktrack;
- (void)accessibilityMapsExplorationBeginFromCurrentLocation;
- (void)accessibilityMapsExplorationBeginFromLocationCoordinate:(id)coordinate;
- (void)accessibilityMapsExplorationBeginFromPoint:(CGPoint)point withRoad:(id)road;
- (void)accessibilityMapsExplorationBeginFromRoad:(id)road;
- (void)accessibilityMapsExplorationContinueWithVertex:(id)vertex fromVertex:(id)fromVertex;
- (void)accessibilityMapsExplorationContinueWithVertexIndex:(unint64_t)index;
- (void)accessibilityMapsExplorationEnd;
- (void)addNeighborsAsRelevantFeaturesForVertex:(id)vertex;
- (void)computeVertex:(id)vertex;
- (void)setCurrentExplorationVertex:(id)vertex;
- (void)setExplorationState:(int64_t)state;
- (void)updateAccessibilityElementsForMapView:(id)view isRetry:(BOOL)retry;
@end

@implementation VKMapViewAccessibilityElementManager

- (id)_gatherVisibleLabelMarkersForMapView:(id)view
{
  v3 = [view safeValueForKey:@"labelMarkers"];

  return v3;
}

- (id)_gatherVisibleTilesForMapView:(id)view
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  viewCopy = view;
  v3 = viewCopy;
  AXPerformSafeBlock();
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __70__VKMapViewAccessibilityElementManager__gatherVisibleTilesForMapView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"roadLabelTilesInScene"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_descriptionForTransitNodeLabel:(id)label
{
  v34 = *MEMORY[0x29EDCA608];
  labelCopy = label;
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  imageKeys = [labelCopy imageKeys];
  v5 = [imageKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(imageKeys);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if ([v8 dataType] == 2)
        {
          relatedText = [v8 relatedText];
          if ([relatedText length])
          {
            v10 = [array indexOfObject:relatedText];
            if (v10 == 0x7FFFFFFFFFFFFFFFLL)
            {
              array3 = [MEMORY[0x29EDB8DE8] array];
              [array addObject:relatedText];
              [array2 addObject:array3];
            }

            else
            {
              array3 = [array2 objectAtIndexedSubscript:v10];
            }

            text = [v8 text];
            if ([text length])
            {
              [array3 addObject:text];
            }
          }
        }
      }

      v5 = [imageKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v13 = [array count];
  if (v13)
  {
    v14 = 0;
    for (j = 0; j != v13; ++j)
    {
      v16 = [array objectAtIndexedSubscript:{j, v25, v26}];
      v17 = [array2 objectAtIndexedSubscript:j];
      v18 = MEMORY[0x29EDBA0F8];
      if ([v17 count] == 1)
      {
        v19 = @"TRANSIT_LINE_FORMAT_SINGULAR";
      }

      else
      {
        v19 = @"TRANSIT_LINE_FORMAT_PLURAL";
      }

      v20 = AXVectorKitLocString(v19);
      v21 = AXLabelForElements();
      v22 = [v18 stringWithFormat:v20, v16, v21];

      v25 = v22;
      v26 = @"__AXStringForVariablesSentinel";
      v23 = __AXStringForVariables();

      v14 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_descriptionForTransitLineLabel:(id)label
{
  v23 = *MEMORY[0x29EDCA608];
  labelCopy = label;
  relatedTexts = [labelCopy relatedTexts];
  array = [MEMORY[0x29EDB8DE8] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  imageKeys = [labelCopy imageKeys];
  v7 = [imageKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(imageKeys);
        }

        shieldText = [*(*(&v18 + 1) + 8 * i) shieldText];
        if ([shieldText length])
        {
          [array addObject:shieldText];
        }
      }

      v7 = [imageKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x29EDBA0F8];
  if ([array count] >= 2)
  {
    v12 = @"TRANSIT_LINE_FORMAT_PLURAL";
  }

  else
  {
    v12 = @"TRANSIT_LINE_FORMAT_SINGULAR";
  }

  v13 = AXVectorKitLocString(v12);
  v14 = AXLabelForElements();
  v15 = AXLabelForElements();
  v16 = [v11 stringWithFormat:v13, v14, v15];

  return v16;
}

- (id)_descriptionForRouteTransitNodeLabel:(id)label
{
  v29 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  labelCopy = label;
  imageKeys = [labelCopy imageKeys];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = [imageKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v23 = 0;
    v8 = *v25;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(imageKeys);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 dataType] == 3)
        {
          relatedText = [v10 relatedText];

          text = [v10 text];
          v13 = v5;
          v5 = text;
        }

        else
        {
          if ([v10 dataType] != 4)
          {
            continue;
          }

          relatedText2 = [v10 relatedText];

          text2 = [v10 text];
          v13 = v23;
          relatedText = v4;
          v6 = relatedText2;
          v23 = text2;
        }

        v4 = relatedText;
      }

      v7 = [imageKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  v23 = 0;
LABEL_15:

  if ([v4 length] && objc_msgSend(v5, "length") && objc_msgSend(v6, "length") && objc_msgSend(v23, "length"))
  {
    v16 = MEMORY[0x29EDBA0F8];
    v17 = AXVectorKitLocString(@"TRANSIT_TRANSFER_FORMAT");
    v18 = [v16 localizedStringWithFormat:v17, v4, v5, v6, v23];
  }

  else
  {
    v17 = AXVectorKitLocString(@"TRANSIT_ROUTE_NODE");
    v18 = __AXStringForVariables();
  }

  v19 = v18;

  v20 = v19;
  return v19;
}

- (id)_accessibilityElementsForMapView:(id)view mapViewBounds:(id)bounds visibleLabels:(id)labels visibleTiles:(id)tiles existingElements:(id)elements
{
  var3 = bounds.var3;
  var2 = bounds.var2;
  var1 = bounds.var1;
  var0 = bounds.var0;
  v71 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  labelsCopy = labels;
  tilesCopy = tiles;
  elementsCopy = elements;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__3;
  v67 = __Block_byref_object_dispose__3;
  v68 = objc_opt_new();
  if (UIAccessibilityIsVoiceOverRunning() && ([viewCopy accessibilityMapTypeSupportsAccessibility] & 1) == 0)
  {
    v31 = v64[5];
  }

  else
  {
    accessibilityMapTypeShouldShowTransit = [viewCopy accessibilityMapTypeShouldShowTransit];
    accessibilityOnlyShowRouteNodesDuringTransit = [viewCopy accessibilityOnlyShowRouteNodesDuringTransit];
    v52[0] = MEMORY[0x29EDCA5F8];
    v52[1] = 3221225472;
    v52[2] = __131__VKMapViewAccessibilityElementManager__accessibilityElementsForMapView_mapViewBounds_visibleLabels_visibleTiles_existingElements___block_invoke;
    v52[3] = &unk_29F318A10;
    v61 = accessibilityMapTypeShouldShowTransit;
    v62 = accessibilityOnlyShowRouteNodesDuringTransit;
    v57 = var0;
    v58 = var1;
    v59 = var2;
    v60 = var3;
    v18 = viewCopy;
    v53 = v18;
    selfCopy = self;
    v55 = elementsCopy;
    v56 = &v63;
    [labelsCopy enumerateObjectsUsingBlock:v52];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v19 = [MEMORY[0x29EDB8E20] set];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v20 = labelsCopy;
      v21 = [v20 countByEnumeratingWithState:&v48 objects:v70 count:16];
      if (v21)
      {
        v22 = *v49;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v49 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v48 + 1) + 8 * i);
            text = [v24 text];
            if ([text length] && (objc_msgSend(v24, "hasBusinessID") & 1) == 0 && (objc_msgSend(v24, "isOneWayArrow") & 1) == 0 && (objc_msgSend(v24, "isTrafficIncident") & 1) == 0 && (objc_msgSend(v24, "isTransit") & 1) == 0 && (objc_msgSend(v24, "isTransitLine") & 1) == 0)
            {
              [v19 addObject:text];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v48 objects:v70 count:16];
        }

        while (v21);
      }

      v40[0] = MEMORY[0x29EDCA5F8];
      v40[1] = 3221225472;
      v40[2] = __131__VKMapViewAccessibilityElementManager__accessibilityElementsForMapView_mapViewBounds_visibleLabels_visibleTiles_existingElements___block_invoke_2;
      v40[3] = &unk_29F318A38;
      v40[4] = self;
      v43 = &v63;
      v44 = var0;
      v45 = var1;
      v46 = var2;
      v47 = var3;
      v41 = v18;
      v26 = v19;
      v42 = v26;
      [tilesCopy enumerateObjectsUsingBlock:v40];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = tilesCopy;
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v69 count:16];
    if (v28)
    {
      v29 = *v37;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v27);
          }

          AXPerformBlockAsynchronouslyOnMainThread();
        }

        v28 = [v27 countByEnumeratingWithState:&v36 objects:v69 count:16];
      }

      while (v28);
    }

    v31 = v64[5];
  }

  _Block_object_dispose(&v63, 8);

  return v31;
}

void __131__VKMapViewAccessibilityElementManager__accessibilityElementsForMapView_mapViewBounds_visibleLabels_visibleTiles_existingElements___block_invoke(uint64_t a1, void *a2)
{
  v110 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = [v3 featureType];
  v5 = [v3 featureType];
  v6 = [v3 featureType] == 7 || objc_msgSend(v3, "featureType") == 9;
  v8 = v4 == 5 || v5 == 6;
  v9 = [v3 isCluster];
  v10 = [v3 isClusterChild];
  IsPointOfInterest = AXVKLabelMarkerIsPointOfInterest(v3);
  IsVenueButton = AXVKLabelMarkerIsVenueButton(v3);
  IsRouteEta = AXVKLabelMarkerIsRouteEta(v3);
  v13 = [v3 isRouteWaypoint];
  v101 = v8 || v6;
  if (*(a1 + 96) != 1)
  {
    if (!(IsPointOfInterest | v9 | IsRouteEta | v13))
    {
      v21 = [MEMORY[0x29EDBD6B0] sharedInstance];
      v22 = [v21 ignoreLogging];

      if ((v22 & 1) == 0)
      {
        v23 = [MEMORY[0x29EDBD6B0] identifier];
        v17 = AXLoggerForFacility();

        v24 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v17, v24))
        {
          v25 = AXColorizeFormatLog();
          v26 = _AXStringForArgs();
          if (os_log_type_enabled(v17, v24))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v26;
            _os_log_impl(&dword_29C6F1000, v17, v24, "%{public}@", &buf, 0xCu);
          }
        }

        goto LABEL_42;
      }

      goto LABEL_88;
    }

    goto LABEL_28;
  }

  if (*(a1 + 97) == 1)
  {
    if (v4 != 5 || ([v3 isOnRoute] & 1) == 0)
    {
      v14 = [MEMORY[0x29EDBD6B0] sharedInstance];
      v15 = [v14 ignoreLogging];

      if ((v15 & 1) == 0)
      {
        v16 = [MEMORY[0x29EDBD6B0] identifier];
        v17 = AXLoggerForFacility();

        v18 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = AXColorizeFormatLog();
          v20 = _AXStringForArgs();
          if (os_log_type_enabled(v17, v18))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v20;
            _os_log_impl(&dword_29C6F1000, v17, v18, "%{public}@", &buf, 0xCu);
          }
        }

LABEL_42:

        goto LABEL_88;
      }

      goto LABEL_88;
    }

LABEL_28:
    [v3 coordinate];
    VKPointForVKLocationCoordinate2D();
    *&buf = v27;
    *(&buf + 1) = v28;
    v109 = v29;
    if (VKRectContainsPoint())
    {
      v30 = [[VKPointFeatureAccessibilityElement alloc] initWithAccessibilityContainer:*(a1 + 32)];
      oslog = &v30->super.super.super.super;
      if (v30)
      {
        [(VKPointFeatureAccessibilityElement *)v30 setLocation:buf, v109];
        [v3 coordinate];
        v32 = v31;
        [v3 coordinate];
        v34 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:v32 longitude:v33];
        [oslog setLocationCoordinate:v34];

        v35 = [v3 text];
        v98 = [v3 featureAnnotation];
        if (v4 == 5)
        {
          v36 = *(a1 + 40);
          if (*(a1 + 97) == 1)
          {
            [v36 _descriptionForRouteTransitNodeLabel:v3];
          }

          else
          {
            [v36 _descriptionForTransitNodeLabel:v3];
          }
          v51 = ;
          v85 = v51;
          v89 = @"__AXStringForVariablesSentinel";
          v103 = __AXStringForVariables();
          goto LABEL_54;
        }

        if (v6)
        {
          v103 = [*(a1 + 40) _descriptionForTransitLineLabel:v3];
          v51 = v35;
LABEL_55:

LABEL_56:
          v95 = [v98 accessibilityLabel];
          if (v95)
          {
            v86 = v103;
            v90 = @"__AXStringForVariablesSentinel";
            v57 = __AXStringForVariables();

            v58 = v57;
          }

          else
          {
            v58 = v103;
          }

          v104 = v58;
          if ([v58 hasPrefix:@"♥", v86, v90])
          {
            v59 = AXVectorKitLocString(@"POI_FAVORITE");
            v87 = -[NSObject stringByReplacingCharactersInRange:withString:](v104, "stringByReplacingCharactersInRange:withString:", 0, [@"♥" length], &stru_2A2395E90);
            v91 = @"__AXStringForVariablesSentinel";
            v60 = __AXStringForVariables();

            v104 = v60;
          }

          if (IsVenueButton)
          {
            v87 = AXVectorKitLocString(@"LOOK_INSIDE");
            v91 = @"__AXStringForVariablesSentinel";
            v61 = __AXStringForVariables();

            v104 = v61;
          }

          if (IsRouteEta)
          {
            v100 = [v3 routeInfo];
            NSClassFromString(&cfstr_Vkalternaterou.isa);
            if (objc_opt_isKindOfClass())
            {
              AXVectorKitLocString(@"ALTERNATE_ROUTE_LABEL");
            }

            else
            {
              AXVectorKitLocString(@"ACTIVE_ROUTE_LABEL");
            }
            v94 = ;
            v63 = [v100 etaDescription];
            v91 = [v63 etaText];
            v93 = @"__AXStringForVariablesSentinel";
            v87 = v94;
            v64 = __AXStringForVariables();

            v62 = v64;
          }

          else
          {
            v62 = v104;
          }

          v102 = v62;
          [oslog setAccessibilityLabel:v87, v91, v93];
          [oslog setIsPOI:IsPointOfInterest];
          [oslog setIsTransitStop:v4 == 5];
          [oslog setIsTransitLine:v6];
          [oslog setIsRouteEta:IsRouteEta];
          v65 = [v3 locale];
          [oslog setAccessibilityLanguage:v65];

          if ([v3 externalFeatureCategory] == 1)
          {
            v66 = [v3 styleAttributes];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v68 = [v3 styleAttributes];
              v69 = [v68 poiCategory];
              [oslog setPoiCategory:v69];
            }
          }

          if ([v3 isRouteWaypoint])
          {
            v70 = [v3 waypointInfo];
            v88 = [v70 waypointIndex];
            v71 = AXCFormattedString();
            [oslog setAccessibilityIdentifier:v71, v88];
          }

          v72 = [objc_alloc(MEMORY[0x29EDB8DE8]) init];
          for (i = 0; i < [v3 countFeatureIDs]; ++i)
          {
            v74 = [v3 featureIDs];
            v75 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(v74 + 8 * i)];
            [v72 addObject:v75];
          }

          [oslog setFeatureIds:v72];
          if (!v101 || *(a1 + 96) == 1)
          {
            v76 = [*(a1 + 48) indexOfObject:oslog];
            v77 = *(a1 + 48);
            v78 = *(*(*(a1 + 56) + 8) + 40);
            if (!v77 || v76 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v78 addObject:oslog];
            }

            else
            {
              v79 = [v77 objectAtIndexedSubscript:?];
              [v78 addObject:v79];
            }
          }

          -[NSObject setSortKey:](oslog, "setSortKey:", [v3 sortKey]);

LABEL_84:
LABEL_85:

          goto LABEL_86;
        }

        if (v5 == 6)
        {
          v106[0] = 0;
          v96 = v35;
          objc_opt_class();
          v52 = [v3 iconImageKeys];
          v53 = [v52 firstObject];
          v54 = __UIAccessibilityCastAsClass();

          v51 = [v54 shieldText];

          v55 = [v3 relatedTexts];
          v56 = [v55 firstObject];

          v89 = v56;
          v92 = @"__AXStringForVariablesSentinel";
          v85 = v51;
          v35 = v96;
          v103 = __AXStringForVariables();
        }

        else
        {
          if (v9)
          {
            v97 = v35;
            v80 = [v3 clusterFeatureCount];
            v81 = v80;
            v82 = v80 - 1;
            if (v80 <= 1)
            {
              v85 = v80;
              _AXAssert();
              v103 = v35;
              goto LABEL_56;
            }

            v83 = MEMORY[0x29EDBA0F8];
            v51 = AXVectorKitLocString(@"CLUSTER_FEATURE_COUNT_FORMAT");
            v103 = [v83 localizedStringWithFormat:v51, v81, v97, v82];
            v35 = v97;
            goto LABEL_54;
          }

          if (v10)
          {
            v51 = [v98 safeValueForKey:@"_subtext"];
            v85 = v51;
            v89 = @"__AXStringForVariablesSentinel";
            v103 = __AXStringForVariables();
            goto LABEL_54;
          }

          NSClassFromString(&cfstr_Mkannotationvi.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v103 = v35;
            goto LABEL_56;
          }

          objc_opt_class();
          v84 = [v98 safeValueForKey:@"annotationView"];
          v51 = __UIAccessibilityCastAsClass();

          if (!v51)
          {
            v103 = v35;
            goto LABEL_55;
          }

          v56 = [v51 accessibilityLabel];
          v85 = v56;
          v89 = @"__AXStringForVariablesSentinel";
          v103 = __AXStringForVariables();
        }

        v35 = v56;
LABEL_54:

        goto LABEL_55;
      }

      v47 = [MEMORY[0x29EDBD6B0] sharedInstance];
      v48 = [v47 ignoreLogging];

      if ((v48 & 1) == 0)
      {
        v49 = [MEMORY[0x29EDBD6B0] identifier];
        v102 = AXLoggerForFacility();

        v50 = AXOSLogLevelFromAXLogLevel();
        if (!os_log_type_enabled(v102, v50))
        {
LABEL_86:

          goto LABEL_87;
        }

        v98 = AXColorizeFormatLog();
        v95 = _AXStringForArgs();
        if (os_log_type_enabled(v102, v50))
        {
          *v106 = 138543362;
          v107 = v95;
          _os_log_impl(&dword_29C6F1000, v102, v50, "%{public}@", v106, 0xCu);
        }

        goto LABEL_84;
      }
    }

    else
    {
      v37 = [MEMORY[0x29EDBD6B0] sharedInstance];
      v38 = [v37 ignoreLogging];

      if (v38)
      {
        goto LABEL_88;
      }

      v39 = [MEMORY[0x29EDBD6B0] identifier];
      oslog = AXLoggerForFacility();

      v40 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(oslog, v40))
      {
        v102 = AXColorizeFormatLog();
        v98 = _AXStringForArgs();
        if (os_log_type_enabled(oslog, v40))
        {
          *v106 = 138543362;
          v107 = v98;
          _os_log_impl(&dword_29C6F1000, oslog, v40, "%{public}@", v106, 0xCu);
        }

        goto LABEL_85;
      }
    }

LABEL_87:

    goto LABEL_88;
  }

  if ((IsPointOfInterest || v101) | v9)
  {
    goto LABEL_28;
  }

  v41 = [MEMORY[0x29EDBD6B0] sharedInstance];
  v42 = [v41 ignoreLogging];

  if ((v42 & 1) == 0)
  {
    v43 = [MEMORY[0x29EDBD6B0] identifier];
    v17 = AXLoggerForFacility();

    v44 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v17, v44))
    {
      v45 = AXColorizeFormatLog();
      v46 = _AXStringForArgs();
      if (os_log_type_enabled(v17, v44))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v46;
        _os_log_impl(&dword_29C6F1000, v17, v44, "%{public}@", &buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

LABEL_88:
}

void __131__VKMapViewAccessibilityElementManager__accessibilityElementsForMapView_mapViewBounds_visibleLabels_visibleTiles_existingElements___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  [*(a1 + 32) _processVisibleTile:a2 accessibilityElements:&obj mapViewBounds:*(a1 + 40) mapView:v2 roadLabels:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  objc_storeStrong((v3 + 40), obj);
}

void __131__VKMapViewAccessibilityElementManager__accessibilityElementsForMapView_mapViewBounds_visibleLabels_visibleTiles_existingElements___block_invoke_3(uint64_t a1)
{
  objc_setAssociatedObject(*(a1 + 32), &_MapTileModelKey, 0, 0);
  v2 = *(a1 + 32);

  objc_setAssociatedObject(v2, &_TileInScene, 0, 0);
}

- (void)_processVisibleTile:(id)tile accessibilityElements:(id *)elements mapViewBounds:(id)bounds mapView:(id)view roadLabels:(id)labels
{
  tileCopy = tile;
  viewCopy = view;
  labelsCopy = labels;
  v13 = [viewCopy safeValueForKey:@"localizeLabels"];
  [v13 BOOLValue];

  [(VKMapViewAccessibilityElementManager *)self explorationState];
  v14 = tileCopy;
  v15 = labelsCopy;
  v16 = viewCopy;
  AXPerformSafeBlock();
}

void __115__VKMapViewAccessibilityElementManager__processVisibleTile_accessibilityElements_mapViewBounds_mapView_roadLabels___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __115__VKMapViewAccessibilityElementManager__processVisibleTile_accessibilityElements_mapViewBounds_mapView_roadLabels___block_invoke_2;
  v5[3] = &unk_29F318A60;
  v9 = *(a1 + 64);
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = *(a1 + 65);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  [v2 enumerateVisibleRoadsUsingBlock:v5];
}

void __115__VKMapViewAccessibilityElementManager__processVisibleTile_accessibilityElements_mapViewBounds_mapView_roadLabels___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if ((*(a1 + 56) & 1) == 0)
  {
    if (!AXVKRoadShouldBeVisible(v3, *(a1 + 32)))
    {
      goto LABEL_15;
    }

    v3 = v17;
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ([v3 roadClass] == 8 || objc_msgSend(v17, "formOfWay") == 6 || objc_msgSend(v17, "formOfWay") == 7 || objc_msgSend(v17, "formOfWay") == 8 || objc_msgSend(v17, "formOfWay") == 12 || objc_msgSend(v17, "formOfWay") == 21)
  {
LABEL_11:
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(VKMultiSectionFeatureAccessibilityElement *)[VKRoadFeatureAccessibilityElement alloc] initWithAccessibilityContainer:*(a1 + 40) feature:v17 ignoreMissingName:v4 useLocalizedLabels:*(a1 + 57)];
  if (v5)
  {
    *&v6 = AXVKStrokeWidthForRoad(v17, *(a1 + 40));
    [(VKFeatureAccessibilityElement *)v5 setStrokeWidth:v6];
    -[VKRoadFeatureAccessibilityElement setTravelDirection:](v5, "setTravelDirection:", [v17 travelDirection]);
    [(VKFeatureAccessibilityElement *)v5 setIsPOI:0];
    v7 = GEOMultiSectionFeatureBounds();
    v8 = [v17 feature];
    v9 = [v8 containingTile];
    [v9 geoTileKey];

    VKWorldBoundsFromGEOTileKey();
    AXVKPointForTileGLPoint(v10, v11, v12, v13, (*v7 + v7[2]) * 0.5);
    VKLocationCoordinate2DForVKPoint();
    v16 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:v14 longitude:v15];
    [(VKFeatureAccessibilityElement *)v5 setLocationCoordinate:v16];

    [**(a1 + 48) addObject:v5];
  }

LABEL_15:
}

- (void)_consolidateAccessibilityElements:(id)elements
{
  elementsCopy = elements;
  v3 = objc_opt_new();
  for (i = 0; i < [elementsCopy count]; ++i)
  {
    v5 = [elementsCopy objectAtIndex:i];
    if ([v5 isRoad])
    {
      trueLabel = [v5 trueLabel];
      if ([trueLabel length])
      {
        v7 = [v3 objectForKey:trueLabel];
        v8 = v7;
        if (v7)
        {
          [v7 addFeaturesFromElement:v5];
          [elementsCopy removeObjectAtIndex:i--];
        }

        else
        {
          [v3 setObject:v5 forKey:trueLabel];
        }
      }
    }
  }
}

- (void)_sortAccessibilityElements:(id)elements mapView:(id)view
{
  elementsCopy = elements;
  viewCopy = view;
  if ([viewCopy accessibilityMapTypeShouldShowTransit])
  {
    AXVKTransitRouteElementComparator();
  }

  else
  {
    AXVKMapElementComparator();
  }
  v6 = ;
  [elementsCopy sortUsingComparator:v6];
}

- (void)_filterAccessibilityElements:(id)elements zoomLevel:(float)level mapView:(id)view
{
  v49 = *MEMORY[0x29EDCA608];
  elementsCopy = elements;
  viewCopy = view;
  v39 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v40 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v41 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v43 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v11 = [bundleIdentifier isEqualToString:@"com.apple.Maps"];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = elementsCopy;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v13)
  {
    v14 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        [v16 accessibilityFrame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        accessibilityPath = [v16 accessibilityPath];
        v26 = accessibilityPath;
        cGPath = [accessibilityPath CGPath];

        v50.origin.x = v18;
        v50.origin.y = v20;
        v50.size.width = v22;
        v50.size.height = v24;
        LODWORD(accessibilityPath) = CGRectIsEmpty(v50);
        v51.origin.x = v18;
        v51.origin.y = v20;
        v51.size.width = v22;
        v51.size.height = v24;
        if (((accessibilityPath | CGRectIsNull(v51)) & 1) == 0 && cGPath)
        {
          _accessibilityParentView = [viewCopy _accessibilityParentView];
          window = [_accessibilityParentView window];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v16;
            if (!v11 || [(VKMapViewAccessibilityElementManager *)self roadHasMapAncestor:v30 inWindow:window])
            {
              [v41 addObject:v30];
            }
          }

          else
          {
            v52.origin.x = v18;
            v52.origin.y = v20;
            v52.size.width = v22;
            v52.size.height = v24;
            MidX = CGRectGetMidX(v52);
            v53.origin.x = v18;
            v53.origin.y = v20;
            v53.size.width = v22;
            v53.size.height = v24;
            MidY = CGRectGetMidY(v53);
            if (!v11 || [(VKMapViewAccessibilityElementManager *)self hitPointHasMapAncestor:window inWindow:MidX, MidY])
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v34 = v43;
              if (isKindOfClass)
              {
                if ([v16 isPOI])
                {
                  v34 = v40;
                }

                else
                {
                  v34 = v43;
                }
              }

              [v34 addObject:v16];
            }
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v13);
  }

  v35 = _maximumVisiblePOIs(level);
  if ([v40 count] <= v35)
  {
    [v39 addObjectsFromArray:v40];
  }

  else
  {
    [v40 sortUsingComparator:&__block_literal_global_6];
    v36 = [v40 subarrayWithRange:{0, v35}];
    [v39 addObjectsFromArray:v36];
  }

  v37 = _maximumVisibleRoads(level);
  if ([v41 count] <= v37)
  {
    [v39 addObjectsFromArray:v41];
  }

  else
  {
    [v41 sortUsingComparator:&__block_literal_global_399];
    v38 = [v41 subarrayWithRange:{0, v37}];
    [v39 addObjectsFromArray:v38];
  }

  [v39 addObjectsFromArray:v43];
  [v12 removeAllObjects];
  [v12 addObjectsFromArray:v39];
}

uint64_t __87__VKMapViewAccessibilityElementManager__filterAccessibilityElements_zoomLevel_mapView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 accessibilityFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  Height = CGRectGetHeight(v32);
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v28 = CGRectGetWidth(v33);
  v34.origin.x = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  v21 = CGRectGetHeight(v34);
  v22.f64[0] = Width;
  v23.f64[0] = Height;
  v22.f64[1] = v28;
  *&v22.f64[0] = vcvt_f32_f64(v22);
  v23.f64[1] = v21;
  v24 = vcvt_f32_f64(v23);
  v25 = vsqrt_f32(vadd_f32(vmul_f32(*&v22.f64[0], *&v22.f64[0]), vmul_f32(v24, v24)));
  if (v25.f32[0] > v25.f32[1])
  {
    v26 = -1;
  }

  else
  {
    v26 = v25.f32[0] < v25.f32[1];
  }

  return v26;
}

uint64_t __87__VKMapViewAccessibilityElementManager__filterAccessibilityElements_zoomLevel_mapView___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 accessibilityFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  Height = CGRectGetHeight(v32);
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v28 = CGRectGetWidth(v33);
  v34.origin.x = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  v21 = CGRectGetHeight(v34);
  v22.f64[0] = Width;
  v23.f64[0] = Height;
  v22.f64[1] = v28;
  *&v22.f64[0] = vcvt_f32_f64(v22);
  v23.f64[1] = v21;
  v24 = vcvt_f32_f64(v23);
  v25 = vsqrt_f32(vadd_f32(vmul_f32(*&v22.f64[0], *&v22.f64[0]), vmul_f32(v24, v24)));
  if (v25.f32[0] > v25.f32[1])
  {
    v26 = -1;
  }

  else
  {
    v26 = v25.f32[0] < v25.f32[1];
  }

  return v26;
}

- (BOOL)roadHasMapAncestor:(id)ancestor inWindow:(id)window
{
  v28 = *MEMORY[0x29EDCA608];
  windowCopy = window;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(ancestor + 19);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v13)
        {
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v18 + 1) + 8 * j) CGPointValue];
              if ([(VKMapViewAccessibilityElementManager *)self hitPointHasMapAncestor:windowCopy inWindow:?])
              {

                v16 = 1;
                goto LABEL_19;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      v16 = 0;
    }

    while (v8);
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (BOOL)hitPointHasMapAncestor:(CGPoint)ancestor inWindow:(id)window
{
  y = ancestor.y;
  x = ancestor.x;
  windowCopy = window;
  [windowCopy _convertPointToSceneReferenceSpace:{x, y}];
  EventForSceneReferencePoint = UIAccessibilityCreateEventForSceneReferencePoint();
  v8 = [windowCopy hitTest:EventForSceneReferencePoint withEvent:{x, y}];
  v9 = NSClassFromString(&cfstr_Mkmapview.isa);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __72__VKMapViewAccessibilityElementManager_hitPointHasMapAncestor_inWindow___block_invoke;
  v13[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v13[4] = v9;
  v10 = [v8 _accessibilityFindAncestor:v13 startWithSelf:1];
  v11 = v10 != 0;

  return v11;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_boundsForMapView:(id)view
{
  [view accessibilityBounds];
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_centerForMapView:(id)view
{
  [view accessibilityCenter];
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (BOOL)_isValidBoundsForMapView:(id)view bounds:(id)bounds
{
  var3 = bounds.var3;
  var2 = bounds.var2;
  var1 = bounds.var1;
  var0 = bounds.var0;
  viewCopy = view;
  [(VKMapViewAccessibilityElementManager *)self _boundsForMapView:viewCopy];
  LOBYTE(self) = AXVKRectEqualToRect(var0, var1, var2, var3, v10, v11, v12, v13);

  return self;
}

- (BOOL)_isValidYawForMapView:(id)view yaw:(double)yaw
{
  viewCopy = view;
  [(VKMapViewAccessibilityElementManager *)self _yawForMapView:viewCopy];
  v8 = v7;
  v9 = (![viewCopy accessibilityIsInTourGuideMode] || !AXVKIsInvalidLocationDegrees(yaw) && !AXVKIsInvalidLocationDegrees(v8)) && AXVKLocationDegreesEqualToLocationDegrees(yaw, v8);

  return v9;
}

- (void)accessibilityMapsExplorationBeginFromCurrentLocation
{
  mEMORY[0x29EDBB270] = [MEMORY[0x29EDBB270] sharedLocationManager];
  currentLocation = [mEMORY[0x29EDBB270] currentLocation];

  latLng = [currentLocation latLng];
  [latLng lat];
  v6 = v5;
  latLng2 = [currentLocation latLng];
  [latLng2 lng];
  v9 = v8;

  [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationBeginFromLocationCoordinate:v6, v9];
}

- (void)accessibilityMapsExplorationBeginFromLocationCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v66 = *MEMORY[0x29EDCA608];
  currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
  [currentMapView accessibilityConvertCoordinateToWindow:{var0, var1}];
  v9 = v8;
  v11 = v10;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(VKMapViewAccessibilityElementManager *)self accessibilityElements];
  v44 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v44)
  {
    v42 = 0;
    v12 = 1.79769313e308;
    v45 = *v60;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v13;
          currentMapView2 = [(VKMapViewAccessibilityElementManager *)self currentMapView];
          v15 = currentMapView2 == 0;

          if (v15)
          {
            v58 = 0;
            objc_opt_class();
            accessibilityContainer = [v49 accessibilityContainer];
            v17 = __UIAccessibilityCastAsClass();

            if (v58 == 1)
            {
              abort();
            }

            if (!v17)
            {
              _AXAssert();
            }

            [(VKMapViewAccessibilityElementManager *)self setCurrentMapView:v17, *&v40, *&v41];
            [v17 accessibilityConvertCoordinateToWindow:{var0, var1}];
            v9 = v18;
            v11 = v19;
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          featureSet = [v49 featureSet];
          v48 = featureSet;
          v21 = [featureSet countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v21)
          {
            v22 = *v55;
            v23 = 1.79769313e308;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v55 != v22)
                {
                  objc_enumerationMutation(v48);
                }

                v25 = [v49 pointsFromFeatureWrapper:*(*(&v54 + 1) + 8 * j)];
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v26 = v25;
                v27 = [v26 countByEnumeratingWithState:&v50 objects:v63 count:16];
                if (v27)
                {
                  v28 = *v51;
                  do
                  {
                    for (k = 0; k != v27; ++k)
                    {
                      if (*v51 != v28)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v30 = *(*(&v50 + 1) + 8 * k);
                      currentMapView3 = [(VKMapViewAccessibilityElementManager *)self currentMapView];
                      [v30 CGPointValue];
                      [currentMapView3 accessibilityRealDistanceBetweenPoint:v9 screenPoint2:{v11, v32, v33}];
                      v35 = v34;

                      v36 = v35;
                      if (v23 > v36)
                      {
                        [v30 CGPointValue];
                        v3 = v37;
                        v4 = v38;
                        v23 = v36;
                      }
                    }

                    v27 = [v26 countByEnumeratingWithState:&v50 objects:v63 count:16];
                  }

                  while (v27);
                }
              }

              featureSet = v48;
              v21 = [v48 countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v21);
          }

          else
          {
            v23 = 1.79769313e308;
          }

          if (v23 >= v12)
          {
            v23 = v12;
          }

          else
          {
            v39 = v49;

            v40 = v4;
            v41 = v3;
            v42 = v39;
          }

          v12 = v23;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v44);
  }

  else
  {
    v42 = 0;
  }

  [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationBeginFromPoint:v42 withRoad:v41, v40];
}

- (void)accessibilityMapsExplorationBeginFromRoad:(id)road
{
  v46 = *MEMORY[0x29EDCA608];
  v43 = 0;
  roadCopy = road;
  objc_opt_class();
  accessibilityContainer = [roadCopy accessibilityContainer];
  v34 = __UIAccessibilityCastAsClass();

  if (!v34)
  {
    _AXAssert();
  }

  [(VKMapViewAccessibilityElementManager *)self setCurrentMapView:v34];
  [(VKMapViewAccessibilityElementManager *)self explorationLastTouchPoint];
  v7 = v6;
  v8 = v5;
  if (v6 == *MEMORY[0x29EDB90B8] && v5 == *(MEMORY[0x29EDB90B8] + 8))
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = roadCopy[19];
    v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v10)
    {
      v31 = *v40;
      do
      {
        v30 = v10;
        for (i = 0; i != v30; ++i)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v14)
          {
            v15 = *v36;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v36 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v35 + 1) + 8 * j);
                mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
                [mainScreen bounds];
                v20 = v19;
                v22 = v21;
                v24 = v23;
                v26 = v25;
                [v17 CGPointValue];
                v47.x = v27;
                v47.y = v28;
                v48.origin.x = v20;
                v48.origin.y = v22;
                v48.size.width = v24;
                v48.size.height = v26;
                v29 = CGRectContainsPoint(v48, v47);

                if (v29)
                {
                  [v17 CGPointValue];
                  [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationBeginFromPoint:roadCopy withRoad:?];

                  goto LABEL_26;
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v10);
    }
  }

  [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationBeginFromPoint:roadCopy withRoad:v7, v8];
LABEL_26:
}

- (void)accessibilityMapsExplorationBeginFromPoint:(CGPoint)point withRoad:(id)road
{
  y = point.y;
  x = point.x;
  v24[2] = *MEMORY[0x29EDCA608];
  roadCopy = road;
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotificationName:@"AXCollapseMapsChromeNotification" object:0];

  [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationEnd];
  [(VKMapViewAccessibilityElementManager *)self setExplorationState:1];
  v9 = [roadCopy adjacentIntersectorsForPoint:1 isStart:{x, y}];
  if ([v9 count])
  {
    firstObject = [v9 firstObject];
    featureWrapper = [firstObject featureWrapper];
    v12 = [(VKMapViewAccessibilityElementManager *)self roadElementForFeatureWrapper:featureWrapper];

    if (v12)
    {
      if (!roadCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [VKRoadFeatureAccessibilityElement alloc];
      currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
      featureWrapper2 = [firstObject featureWrapper];
      feature = [featureWrapper2 feature];
      v12 = [(VKMultiSectionFeatureAccessibilityElement *)v13 initWithAccessibilityContainer:currentMapView feature:feature ignoreMissingName:1 useLocalizedLabels:1];

      if (!roadCopy)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    if (v12)
    {
      v17 = [AXVKExplorationVertexElement alloc];
      [firstObject coordinates];
      v19 = v18;
      v21 = v20;
      v24[0] = roadCopy;
      v24[1] = v12;
      v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:v24 count:2];
      v23 = [(AXVKExplorationVertexElement *)v17 initWithCoordinates:v22 betweenRoads:v19, v21];

      [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationContinueWithVertex:v23];
    }

    goto LABEL_9;
  }

  _AXLogWithFacility();
LABEL_10:
}

- (void)accessibilityMapsExplorationContinueWithVertexIndex:(unint64_t)index
{
  neighborExplorationElements = [(VKMapViewAccessibilityElementManager *)self neighborExplorationElements];
  v5 = [neighborExplorationElements count];

  if (v5 > index)
  {
    neighborExplorationElements2 = [(VKMapViewAccessibilityElementManager *)self neighborExplorationElements];
    v6 = [neighborExplorationElements2 objectAtIndex:index];
    vertex = [v6 vertex];
    [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationContinueWithVertex:vertex];
  }
}

- (void)accessibilityMapsExplorationContinueWithVertex:(id)vertex fromVertex:(id)fromVertex
{
  vertexCopy = vertex;
  [(VKMapViewAccessibilityElementManager *)self setExplorationState:1];
  [(VKMapViewAccessibilityElementManager *)self setCurrentExplorationVertex:vertexCopy];
  [vertexCopy setIsComputed:0];
  currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
  [(VKMapViewAccessibilityElementManager *)self explorationZoomLevel];
  v7 = v6;
  [vertexCopy coordinates];
  [currentMapView accessibilitySetMapZoomLevel:0 center:v7 yaw:v8 completionHandler:{v9, 0.0}];

  v10 = +[VKMapDebugView sharedInstance];
  currentExplorationVertex = [(VKMapViewAccessibilityElementManager *)self currentExplorationVertex];
  [v10 setCurrentExplorationVertex:currentExplorationVertex];
}

- (void)accessibilityMapsExplorationBacktrack
{
  lastObject = [(NSMutableArray *)self->_lastExplorationVertices lastObject];
  if ([(NSMutableArray *)self->_lastExplorationVertices count]>= 2)
  {
    v3 = [(NSMutableArray *)self->_lastExplorationVertices objectAtIndexedSubscript:[(NSMutableArray *)self->_lastExplorationVertices count]- 2];
    if (!lastObject)
    {
      goto LABEL_8;
    }

    if (v3)
    {
      [(NSMutableArray *)self->_lastExplorationVertices removeLastObject];
      [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationContinueWithVertex:lastObject fromVertex:v3];
      [(NSMutableArray *)self->_lastExplorationVertices removeLastObject];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (lastObject)
  {
LABEL_6:
    v3 = 0;
    [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationContinueWithVertex:lastObject];
    goto LABEL_8;
  }

  v3 = 0;
LABEL_8:
}

- (void)addNeighborsAsRelevantFeaturesForVertex:(id)vertex
{
  v20 = *MEMORY[0x29EDCA608];
  vertexCopy = vertex;
  neighborExplorationElements = [(VKMapViewAccessibilityElementManager *)self neighborExplorationElements];
  [neighborExplorationElements removeAllObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  neighbors = [vertexCopy neighbors];
  v7 = [neighbors countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(neighbors);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [VKExplorationAccessibilityElement alloc];
        currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
        v13 = [(VKExplorationAccessibilityElement *)v11 initWithAccessibilityContainer:currentMapView andVertex:v10];

        neighborExplorationElements2 = [(VKMapViewAccessibilityElementManager *)self neighborExplorationElements];
        [neighborExplorationElements2 addObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [neighbors countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)accessibilityMapsExplorationEnd
{
  neighborExplorationElements = [(VKMapViewAccessibilityElementManager *)self neighborExplorationElements];
  [neighborExplorationElements removeAllObjects];

  [(VKMapViewAccessibilityElementManager *)self setCurrentExplorationVertex:0];
  [(NSMutableArray *)self->_lastExplorationVertices removeAllObjects];
  [(VKMapViewAccessibilityElementManager *)self setExplorationState:0];
  currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
  [(VKMapViewAccessibilityElementManager *)self updateAccessibilityElementsForMapView:?];
}

- (void)computeVertex:(id)vertex
{
  v67 = *MEMORY[0x29EDCA608];
  vertexCopy = vertex;
  v4 = [(VKMapViewAccessibilityElementManager *)self roadsForVertex:vertexCopy];
  [vertexCopy setRoads:v4];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [vertexCopy roads];
  v43 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v43)
  {
    v42 = *v59;
    do
    {
      v45 = 0;
      do
      {
        if (*v59 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v58 + 1) + 8 * v45);
        [vertexCopy getScreenPoint];
        v44 = [v5 adjacentIntersectorsForPoint:0 isStart:?];
        if ([v44 count])
        {
          v47 = v5;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v46 = v44;
          v6 = [v46 countByEnumeratingWithState:&v54 objects:v65 count:16];
          if (v6)
          {
            v48 = *v55;
            do
            {
              v7 = 0;
              do
              {
                if (*v55 != v48)
                {
                  objc_enumerationMutation(v46);
                }

                v8 = *(*(&v54 + 1) + 8 * v7);
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                neighbors = [vertexCopy neighbors];
                v10 = [(AXVKExplorationVertexElement *)neighbors countByEnumeratingWithState:&v50 objects:v64 count:16];
                if (v10)
                {
                  v11 = *v51;
LABEL_14:
                  v12 = 0;
                  while (1)
                  {
                    if (*v51 != v11)
                    {
                      objc_enumerationMutation(neighbors);
                    }

                    v13 = *(*(&v50 + 1) + 8 * v12);
                    currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
                    [v8 coordinates];
                    [currentMapView accessibilityConvertCoordinateToWindow:?];
                    v16 = v15;
                    v18 = v17;

                    [v13 getScreenPoint];
                    if (vabdd_f64(v16, v20) < 0.001 && vabdd_f64(v18, v19) < 0.001)
                    {
                      break;
                    }

                    if (v10 == ++v12)
                    {
                      v10 = [(AXVKExplorationVertexElement *)neighbors countByEnumeratingWithState:&v50 objects:v64 count:16];
                      if (v10)
                      {
                        goto LABEL_14;
                      }

                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:

                  if ([v8 isDeadEnd])
                  {
                    v21 = [AXVKExplorationVertexElement alloc];
                    [v8 coordinates];
                    v23 = v22;
                    v25 = v24;
                    v62 = v47;
                    v26 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v62 count:1];
                    neighbors = [(AXVKExplorationVertexElement *)v21 initWithCoordinates:v26 betweenRoads:v23, v25];
                  }

                  else
                  {
                    featureWrapper = [v8 featureWrapper];
                    v26 = [(VKMapViewAccessibilityElementManager *)self roadElementForFeatureWrapper:featureWrapper];

                    if (!v26)
                    {
                      v28 = [VKRoadFeatureAccessibilityElement alloc];
                      currentMapView2 = [(VKMapViewAccessibilityElementManager *)self currentMapView];
                      featureWrapper2 = [v8 featureWrapper];
                      feature = [featureWrapper2 feature];
                      v26 = [(VKMultiSectionFeatureAccessibilityElement *)v28 initWithAccessibilityContainer:currentMapView2 feature:feature ignoreMissingName:1 useLocalizedLabels:1];
                    }

                    v32 = [AXVKExplorationVertexElement alloc];
                    [v8 coordinates];
                    v34 = v33;
                    v36 = v35;
                    v63[0] = v47;
                    v63[1] = v26;
                    v37 = [MEMORY[0x29EDB8D80] arrayWithObjects:v63 count:2];
                    neighbors = [(AXVKExplorationVertexElement *)v32 initWithCoordinates:v37 betweenRoads:v34, v36];
                  }

                  v38 = [[AXVKExplorationEdgeElement alloc] initWithRoad:v47 betweenFirstVertex:vertexCopy andSecondVertex:neighbors];
                  edges = [vertexCopy edges];
                  [edges addObject:v38];

                  edges2 = [(AXVKExplorationVertexElement *)neighbors edges];
                  [edges2 addObject:v38];
                }

                ++v7;
              }

              while (v7 != v6);
              v6 = [v46 countByEnumeratingWithState:&v54 objects:v65 count:16];
            }

            while (v6);
          }
        }

        ++v45;
      }

      while (v45 != v43);
      v43 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v43);
  }

  [vertexCopy setIsComputed:1];
}

- (void)setCurrentExplorationVertex:(id)vertex
{
  vertexCopy = vertex;
  currentExplorationVertex = self->_currentExplorationVertex;
  v12 = vertexCopy;
  if (currentExplorationVertex != vertexCopy)
  {
    if (currentExplorationVertex)
    {
      [(AXVKExplorationVertexElement *)currentExplorationVertex setIsCurrent:0];
      [(NSMutableArray *)self->_lastExplorationVertices addObject:self->_currentExplorationVertex];
      if ([(NSMutableArray *)self->_lastExplorationVertices count]>= 6)
      {
        [(NSMutableArray *)self->_lastExplorationVertices removeObjectAtIndex:0];
      }
    }

    objc_storeStrong(&self->_currentExplorationVertex, vertex);
    if (v12)
    {
      v7 = [VKExplorationAccessibilityElement alloc];
      currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
      v9 = [(VKExplorationAccessibilityElement *)v7 initWithAccessibilityContainer:currentMapView andVertex:v12];
      currentExplorationElement = self->_currentExplorationElement;
      self->_currentExplorationElement = v9;
    }

    else
    {
      currentMapView = self->_currentExplorationElement;
      self->_currentExplorationElement = 0;
    }

    [(AXVKExplorationVertexElement *)self->_currentExplorationVertex setIsCurrent:1];
    v11 = +[VKMapDebugView sharedInstance];
    [v11 setCurrentExplorationVertex:v12];
  }
}

- (void)setExplorationState:(int64_t)state
{
  self->_explorationState = state;
  delegate = [(VKMapViewAccessibilityElementManager *)self delegate];
  [delegate explorationStateChanged:state];
}

- (id)roadElementForFeatureWrapper:(id)wrapper
{
  v30 = *MEMORY[0x29EDCA608];
  wrapperCopy = wrapper;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(VKMapViewAccessibilityElementManager *)self accessibilityElements];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v18 = *v25;
    do
    {
      v17 = v5;
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          featureSet = [v8 featureSet];
          v10 = [featureSet countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v10)
          {
            v11 = *v21;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(featureSet);
                }

                feature = [*(*(&v20 + 1) + 8 * j) feature];
                feature2 = [wrapperCopy feature];
                IsSameRoad = GEOMultiSectionFeatureIsSameRoad();

                if (IsSameRoad)
                {

                  goto LABEL_21;
                }
              }

              v10 = [featureSet countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      v8 = 0;
    }

    while (v5);
  }

  else
  {
    v8 = 0;
  }

LABEL_21:

  return v8;
}

- (CGPoint)adjacentPointToPoint:(CGPoint)point withOtherPoint:(CGPoint)otherPoint onRoad:(id)road
{
  y = otherPoint.y;
  x = otherPoint.x;
  v7 = point.y;
  v8 = point.x;
  roadCopy = road;
  consolidatedAndOrderedFeatures = [roadCopy consolidatedAndOrderedFeatures];
  v11 = [roadCopy featureAndPointIndicesForPoint:{v8, v7}];
  v13 = v12;
  v14 = [roadCopy featureAndPointIndicesForPoint:{x, y}];
  if (v11 != -1 && v11 == v14)
  {
    v16 = v15;
    v17 = [consolidatedAndOrderedFeatures objectAtIndex:v11];
    v18 = v17;
    if (v16 <= v13)
    {
      if (v16 >= v13)
      {
        v22 = *MEMORY[0x29EDB90B8];
        v23 = *(MEMORY[0x29EDB90B8] + 8);
LABEL_10:

        goto LABEL_11;
      }

      v19 = [v17 objectAtIndex:v13 - 1];
      [v19 CGPointValue];
    }

    else
    {
      v19 = [v17 objectAtIndex:v13 + 1];
      [v19 CGPointValue];
    }

    v22 = v20;
    v23 = v21;

    goto LABEL_10;
  }

  v22 = *MEMORY[0x29EDB90B8];
  v23 = *(MEMORY[0x29EDB90B8] + 8);
LABEL_11:

  v24 = v22;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (id)accessibilityMapsExplorationCurrentRoadsWithAngles
{
  v69 = *MEMORY[0x29EDCA608];
  currentExplorationVertex = [(VKMapViewAccessibilityElementManager *)self currentExplorationVertex];
  [currentExplorationVertex getScreenPoint];
  v5 = v4;
  v7 = v6;

  v8 = *MEMORY[0x29EDB90B8];
  v9 = *(MEMORY[0x29EDB90B8] + 8);
  lastExplorationVertices = [(VKMapViewAccessibilityElementManager *)self lastExplorationVertices];
  lastObject = [lastExplorationVertices lastObject];

  v12 = MEMORY[0x29EDB90B8];
  if (lastObject)
  {
    currentExplorationVertex2 = [(VKMapViewAccessibilityElementManager *)self currentExplorationVertex];
    v14 = [(VKMapViewAccessibilityElementManager *)self edgeBetweenVertex:currentExplorationVertex2 andVertex:lastObject];

    [lastObject getScreenPoint];
    v16 = v15;
    v18 = v17;
    road = [v14 road];
    [(VKMapViewAccessibilityElementManager *)self adjacentPointToPoint:road withOtherPoint:v5 onRoad:v7, v16, v18];
    v8 = v20;
    v9 = v21;

    if (v8 == *v12 && v9 == v12[1])
    {
      [lastObject getScreenPoint];
      v8 = v22;
      v9 = v23;
    }
  }

  v24 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(VKMapViewAccessibilityElementManager *)self neighborExplorationElements];
  v25 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v25)
  {
    v26 = *v64;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v64 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v63 + 1) + 8 * i);
        if (lastObject)
        {
          currentExplorationVertex3 = [(VKMapViewAccessibilityElementManager *)self currentExplorationVertex];
          vertex = [v28 vertex];
          v31 = [(VKMapViewAccessibilityElementManager *)self edgeBetweenVertex:currentExplorationVertex3 andVertex:vertex];

          vertex2 = [v28 vertex];
          [vertex2 getScreenPoint];
          v34 = v33;
          v36 = v35;
          road2 = [v31 road];
          [(VKMapViewAccessibilityElementManager *)self adjacentPointToPoint:road2 withOtherPoint:v5 onRoad:v7, v34, v36];
          v39 = v38;
          v41 = v40;

          if (v39 == *MEMORY[0x29EDB90B8] && v41 == *(MEMORY[0x29EDB90B8] + 8))
          {
            vertex3 = [v28 vertex];
            [vertex3 getScreenPoint];
            v39 = v44;
            v41 = v45;
          }

          [(VKMapViewAccessibilityElementManager *)self accessibilityAngleWithThreePointsFirst:1 second:v8 third:v9 inRadians:v5, v7, v39, v41];
          v47 = v46;
          *&v46 = v41 - v7;
          v48 = v39 - v5;
          v49 = atan2f(*&v46, v48);

          v50 = v49;
        }

        else
        {
          vertex4 = [v28 vertex];
          [vertex4 getScreenPoint];
          v53 = v52;
          v55 = v54;

          v56 = v55 - v7;
          v57 = v53 - v5;
          v50 = atan2f(v56, v57);
          v47 = v50;
        }

        v58 = [MEMORY[0x29EDBA070] numberWithDouble:v50];
        v67[0] = v58;
        v59 = [(VKMapViewAccessibilityElementManager *)self accessibilityMapsExplorationStringForElement:v28 withRelativeAngle:v47];
        v67[1] = v59;
        v60 = [MEMORY[0x29EDB8D80] arrayWithObjects:v67 count:2];
        [v24 addObject:v60];
      }

      v25 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v25);
  }

  return v24;
}

- (id)accessibilityMapsExplorationStringForElement:(id)element withRelativeAngle:(double)angle
{
  elementCopy = element;
  v7 = objc_opt_new();
  lastExplorationVertices = [(VKMapViewAccessibilityElementManager *)self lastExplorationVertices];
  v9 = [lastExplorationVertices count];

  if (v9)
  {
    v10 = @"DOUBLE_BACK";
    if (angle >= 0.392699082 && angle < 5.89048623)
    {
      if (angle >= 1.17809725)
      {
        if (angle >= 1.96349541)
        {
          if (angle >= 2.74889357)
          {
            if (angle >= 3.53429174)
            {
              if (angle >= 4.3196899)
              {
                if (angle >= 5.10508806)
                {
                  if (angle >= 5.89048623)
                  {
                    v11 = 0;
                    goto LABEL_19;
                  }

                  v10 = @"HARD_LEFT";
                }

                else
                {
                  v10 = @"LEFT";
                }
              }

              else
              {
                v10 = @"SLIGHT_LEFT";
              }
            }

            else
            {
              v10 = @"CONTINUE_STRAIGHT";
            }
          }

          else
          {
            v10 = @"SLIGHT_RIGHT";
          }
        }

        else
        {
          v10 = @"RIGHT";
        }
      }

      else
      {
        v10 = @"HARD_RIGHT";
      }
    }

    v11 = AXVectorKitLocString(v10);
LABEL_19:
    v12 = MEMORY[0x29EDBA0F8];
    v13 = AXVectorKitLocString(@"DIRECTION_FORMAT");
    v14 = [v12 stringWithFormat:v13, v11];
    [v7 appendString:v14];
  }

  accessibilityLabel = [elementCopy accessibilityLabel];
  [v7 appendString:accessibilityLabel];

  return v7;
}

- (id)edgeBetweenVertex:(id)vertex andVertex:(id)andVertex
{
  v27 = *MEMORY[0x29EDCA608];
  andVertexCopy = andVertex;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  edges = [vertex edges];
  v7 = [edges countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(edges);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        vertices = [v10 vertices];
        v12 = [vertices countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = *v18;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(vertices);
              }

              if (*(*(&v17 + 1) + 8 * j) == andVertexCopy)
              {
                v15 = v10;

                goto LABEL_19;
              }
            }

            v12 = [vertices countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [edges countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
    }

    while (v7);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (double)accessibilityDistanceBetweenPoint:(CGPoint)point andPoint:(CGPoint)andPoint onRoad:(id)road
{
  y = andPoint.y;
  x = andPoint.x;
  v7 = point.y;
  v8 = point.x;
  roadCopy = road;
  consolidatedAndOrderedFeatures = [roadCopy consolidatedAndOrderedFeatures];
  v12 = [roadCopy featureAndPointIndicesForPoint:{v8, v7}];
  v14 = v13;
  v15 = [roadCopy featureAndPointIndicesForPoint:{x, y}];
  v17 = -1.0;
  if (v12 != -1 && v12 == v15)
  {
    v18 = v16;
    v19 = [consolidatedAndOrderedFeatures objectAtIndex:v12];
    if (v14 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v14;
    }

    if (v14 > v18)
    {
      v18 = v14;
    }

    v17 = 0.0;
    if (v20 < v18)
    {
      do
      {
        v21 = [v19 objectAtIndex:v20];
        [v21 CGPointValue];
        v23 = v22;
        v25 = v24;

        v26 = [v19 objectAtIndex:++v20];
        [v26 CGPointValue];
        v28 = v27;
        v30 = v29;

        currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
        [currentMapView accessibilityRealDistanceBetweenPoint:v23 screenPoint2:{v25, v28, v30}];
        v17 = v17 + v32;
      }

      while (v18 != v20);
    }
  }

  return v17;
}

- (id)accessibilityVisiblePOIsBetweenPoint:(CGPoint)point andPoint:(CGPoint)andPoint onRoad:(id)road
{
  y = andPoint.y;
  x = andPoint.x;
  v7 = point.y;
  v8 = point.x;
  v75 = *MEMORY[0x29EDCA608];
  roadCopy = road;
  v64 = objc_opt_new();
  v68 = objc_opt_new();
  consolidatedAndOrderedFeatures = [roadCopy consolidatedAndOrderedFeatures];
  v10 = [roadCopy featureAndPointIndicesForPoint:{v8, v7}];
  v65 = v11;
  v12 = v10;
  v13 = [roadCopy featureAndPointIndicesForPoint:{x, y}];
  v60 = v14;
  v15 = 0;
  if (v12 != -1 && v12 == v13)
  {
    v61 = [consolidatedAndOrderedFeatures objectAtIndex:v12];
    if (v65 != v60)
    {
      v17 = 1;
      if (v65 >= v60)
      {
        v17 = -1;
      }

      v58 = v17;
      v18 = v65;
      do
      {
        v66 = v18;
        v19 = [v61 objectAtIndex:?];
        [v19 CGPointValue];
        v67 = v20;
        v22 = v21;

        v23 = [v61 objectAtIndex:?];
        [v23 CGPointValue];
        v25 = v24;
        v27 = v26;

        currentMapView = [(VKMapViewAccessibilityElementManager *)self currentMapView];
        [currentMapView accessibilityRealDistanceBetweenPoint:v67 screenPoint2:{v22, v25, v27}];
        v30 = v29;

        v31 = v67;
        v62 = (v27 - v22) / v30 * 50.0;
        v63 = (v25 - v67) / v30 * 50.0;
        for (i = v22; ; i = v62 + i)
        {
          [(VKMapViewAccessibilityElementManager *)self accessibilityAngleWithThreePointsFirst:1 second:v67 third:v22 inRadians:v25, v27, v31, i];
          if (v33 != 0.0)
          {
            break;
          }

          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          accessibilityElements = [(VKMapViewAccessibilityElementManager *)self accessibilityElements];
          v35 = [accessibilityElements countByEnumeratingWithState:&v69 objects:v74 count:16];
          if (v35)
          {
            v36 = *v70;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v70 != v36)
                {
                  objc_enumerationMutation(accessibilityElements);
                }

                v38 = *(*(&v69 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v39 = v38;
                  if ([v39 isPOI])
                  {
                    [v39 location];
                    VKLocationCoordinate2DForVKPoint();
                    v41 = v40;
                    v43 = v42;
                    currentMapView2 = [(VKMapViewAccessibilityElementManager *)self currentMapView];
                    [currentMapView2 accessibilityConvertCoordinateToWindow:{v41, v43}];
                    v46 = v45;
                    v48 = v47;

                    currentMapView3 = [(VKMapViewAccessibilityElementManager *)self currentMapView];
                    [currentMapView3 accessibilityRealDistanceBetweenPoint:v46 screenPoint2:{v48, v31, i}];
                    if (v50 <= 50.0)
                    {
                      v51 = [v68 containsObject:v39];

                      if ((v51 & 1) == 0)
                      {
                        [(VKMapViewAccessibilityElementManager *)self accessibilityAngleWithThreePointsFirst:1 second:v67 third:v22 inRadians:v25, v27, v46, v48];
                        v53 = v52;
                        if (v66 != v65 || ([(VKMapViewAccessibilityElementManager *)self accessibilityAngleWithThreePointsFirst:1 second:v25 third:v27 inRadians:v67, v22, v46, v48], v54 <= 1.57079633) || v54 >= 4.71238898)
                        {
                          v55 = [MEMORY[0x29EDBA070] numberWithDouble:v53];
                          v73[0] = v55;
                          v73[1] = v39;
                          v56 = [MEMORY[0x29EDB8D80] arrayWithObjects:v73 count:2];
                          [v64 addObject:v56];

                          [v68 addObject:v39];
                        }
                      }
                    }

                    else
                    {
                    }
                  }
                }
              }

              v35 = [accessibilityElements countByEnumeratingWithState:&v69 objects:v74 count:16];
            }

            while (v35);
          }

          v31 = v63 + v31;
        }

        v18 = v66 + v58;
      }

      while (v66 + v58 != v60);
    }

    v15 = v64;
  }

  return v15;
}

- (id)accessibilityMapsExplorationDescriptionForAdjacentPOIs:(id)is
{
  isCopy = is;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [isCopy count];
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [isCopy objectAtIndex:i];
      firstObject = [v8 firstObject];
      [firstObject floatValue];
      v11 = v10;

      v12 = [isCopy objectAtIndex:i];
      v13 = [v12 objectAtIndex:1];
      accessibilityLabel = [v13 accessibilityLabel];

      if (v11 <= 3.14159265)
      {
        v15 = v4;
      }

      else
      {
        v15 = v5;
      }

      v16 = v15;
      [v16 addObject:accessibilityLabel];
    }
  }

  if ([v4 count] > 2)
  {
    v17 = 3;
  }

  else
  {
    v17 = [v4 count];
  }

  v18 = [v4 subarrayWithRange:{0, v17}];
  v19 = AXFormatAndListWithElements();

  if ([v5 count] > 2)
  {
    v20 = 3;
  }

  else
  {
    v20 = [v5 count];
  }

  v21 = [v5 subarrayWithRange:{0, v20}];
  v22 = AXFormatAndListWithElements();

  v23 = objc_opt_new();
  if ([v19 length])
  {
    v24 = MEMORY[0x29EDBA0F8];
    v25 = AXVectorKitLocString(@"ON_LEFT_FORMAT");
    v26 = [v24 stringWithFormat:v25, v19];
    [v23 appendString:v26];
  }

  if ([v22 length])
  {
    v27 = MEMORY[0x29EDBA0F8];
    v28 = AXVectorKitLocString(@"ON_RIGHT_FORMAT");
    v29 = [v27 stringWithFormat:v28, v22];
    [v23 appendString:v29];
  }

  return v23;
}

- (id)accessibilityMapsExplorationCurrentIntersectionDescription
{
  v2 = objc_opt_new();

  return v2;
}

- (id)accessibilityMapsExplorationChangeVerbosityIncreasing:(BOOL)increasing
{
  increasingCopy = increasing;
  verbosityLevel = [(VKMapViewAccessibilityElementManager *)self verbosityLevel];
  if (verbosityLevel == 2)
  {
    v7 = AXVectorKitLocString(@"VERBOSITY_HIGH");
    v6 = !increasingCopy;
LABEL_11:
    v8 = v7;
    goto LABEL_13;
  }

  v6 = verbosityLevel;
  if (verbosityLevel == 1)
  {
    v7 = AXVectorKitLocString(@"VERBOSITY_AVERAGE");
    if (increasingCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_11;
  }

  if (!verbosityLevel)
  {
    v7 = AXVectorKitLocString(@"VERBOSITY_LOW");
    if (increasingCopy)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_11;
  }

  v8 = 0;
LABEL_13:
  [(VKMapViewAccessibilityElementManager *)self setVerbosityLevel:v6];

  return v8;
}

- (double)accessibilityAngleWithThreePointsFirst:(CGPoint)first second:(CGPoint)second third:(CGPoint)third inRadians:(BOOL)radians
{
  radiansCopy = radians;
  y = third.y;
  x = third.x;
  v9 = second.y;
  v10 = second.x;
  v14 = 0.0;
  v15 = 0.0;
  AXVKMathGetVectorAndDistanceForPoints(&v15, &v14, first, second);
  v12 = 0;
  v13 = 0.0;
  v16.x = x;
  v16.y = y;
  v17.x = v10;
  v17.y = v9;
  AXVKMathGetVectorAndDistanceForPoints(&v13, &v12, v16, v17);
  result = v15 - v13;
  if (v15 - v13 < 0.0)
  {
    result = v15 - v13 + 360.0;
  }

  if (radiansCopy)
  {
    return result / 180.0 * 3.14159265;
  }

  return result;
}

- (id)roadsForVertex:(id)vertex
{
  vertexCopy = vertex;
  [vertexCopy getScreenPoint];
  v6 = v5;
  v8 = v7;
  accessibilityElements = [(VKMapViewAccessibilityElementManager *)self accessibilityElements];
  v10 = [accessibilityElements copy];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = objc_opt_new();
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __55__VKMapViewAccessibilityElementManager_roadsForVertex___block_invoke;
  v14[3] = &unk_29F318B10;
  v14[5] = v6;
  v14[6] = v8;
  v14[4] = &v15;
  [v10 enumerateObjectsUsingBlock:v14];
  if (![v16[5] count])
  {
    _AXAssert();
  }

  if ([v16[5] count])
  {
    roads = v16[5];
  }

  else
  {
    roads = [vertexCopy roads];
  }

  v12 = roads;
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __55__VKMapViewAccessibilityElementManager_roadsForVertex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([v3 pointInside:{*(a1 + 40), *(a1 + 48)}] & 1) != 0 || (objc_msgSend(v3, "pointInside:", *(a1 + 40) + 1.0, *(a1 + 48) + 1.0) & 1) != 0 || (objc_msgSend(v3, "pointInside:", *(a1 + 40) + 1.0, *(a1 + 48) + -1.0) & 1) != 0 || (objc_msgSend(v3, "pointInside:", *(a1 + 40) + -1.0, *(a1 + 48) + 1.0) & 1) != 0 || objc_msgSend(v3, "pointInside:", *(a1 + 40) + -1.0, *(a1 + 48) + -1.0)))
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

- (id)accessibilityElementsForMapView:(id)view
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  properties_queue = self->_properties_queue;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __72__VKMapViewAccessibilityElementManager_accessibilityElementsForMapView___block_invoke;
  v6[3] = &unk_29F318890;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(properties_queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __72__VKMapViewAccessibilityElementManager_accessibilityElementsForMapView___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) accessibilityElements];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)boundsForMapView:(id)view
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = __Block_byref_object_copy__469;
  v17 = __Block_byref_object_dispose__470;
  v18 = &unk_29C723C02;
  v19 = 0u;
  v20 = 0u;
  properties_queue = self->_properties_queue;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __57__VKMapViewAccessibilityElementManager_boundsForMapView___block_invoke;
  v12[3] = &unk_29F318890;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(properties_queue, v12);
  v4 = v14[6];
  v5 = v14[7];
  v6 = v14[8];
  v7 = v14[9];
  _Block_object_dispose(&v13, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.var3 = v11;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

uint64_t __57__VKMapViewAccessibilityElementManager_boundsForMapView___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) bounds];
  v3 = *(*(a1 + 40) + 8);
  v3[6] = v4;
  v3[7] = v5;
  v3[8] = v6;
  v3[9] = v7;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerForMapView:(id)view
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4012000000;
  v15 = __Block_byref_object_copy__472;
  v16 = __Block_byref_object_dispose__473;
  v17 = &unk_29C723C02;
  v18 = 0;
  v19 = 0;
  VKLocationCoordinate2DMake();
  v18 = v4;
  v19 = v5;
  properties_queue = self->_properties_queue;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __57__VKMapViewAccessibilityElementManager_centerForMapView___block_invoke;
  v11[3] = &unk_29F318890;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(properties_queue, v11);
  v7 = v13[6];
  v8 = v13[7];
  _Block_object_dispose(&v12, 8);
  v9 = v7;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

uint64_t __57__VKMapViewAccessibilityElementManager_centerForMapView___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) center];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 48) = v4;
  *(v3 + 56) = v5;
  return result;
}

- (int64_t)orientationForMapView:(id)view
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  properties_queue = self->_properties_queue;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __62__VKMapViewAccessibilityElementManager_orientationForMapView___block_invoke;
  v6[3] = &unk_29F318890;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(properties_queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __62__VKMapViewAccessibilityElementManager_orientationForMapView___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) orientation];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)yawForMapView:(id)view
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  properties_queue = self->_properties_queue;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __54__VKMapViewAccessibilityElementManager_yawForMapView___block_invoke;
  v6[3] = &unk_29F318890;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(properties_queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __54__VKMapViewAccessibilityElementManager_yawForMapView___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) yaw];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)updateAccessibilityElementsForMapView:(id)view isRetry:(BOOL)retry
{
  viewCopy = view;
  if (!viewCopy)
  {
    _AXAssert();
  }

  _AXLogWithFacility();
  v5 = viewCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __86__VKMapViewAccessibilityElementManager_updateAccessibilityElementsForMapView_isRetry___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _boundsForMapView:*(a1 + 40)];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) _centerForMapView:*(a1 + 40)];
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) _orientationForMapView:*(a1 + 40)];
  [*(a1 + 32) _yawForMapView:*(a1 + 40)];
  v16 = v15;
  [*(a1 + 32) _zoomForMapView:*(a1 + 40)];
  v18 = v17;
  v19 = [*(a1 + 32) _gatherVisibleLabelMarkersForMapView:*(a1 + 40)];
  v20 = [*(a1 + 32) _gatherVisibleTilesForMapView:*(a1 + 40)];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = [v21 accessibilityElements];
  v24 = [v21 _accessibilityElementsForMapView:v22 mapViewBounds:v19 visibleLabels:v20 visibleTiles:v23 existingElements:{v3, v5, v7, v9}];
  v25 = v43[5];
  v43[5] = v24;

  [*(a1 + 32) _consolidateAccessibilityElements:v43[5]];
  [*(a1 + 32) _sortAccessibilityElements:v43[5] mapView:*(a1 + 40)];
  LODWORD(v26) = v18;
  [*(a1 + 32) _filterAccessibilityElements:v43[5] zoomLevel:*(a1 + 40) mapView:v26];
  LODWORD(v23) = [*(a1 + 32) _isValidBoundsForMapView:*(a1 + 40) bounds:{v3, v5, v7, v9}];
  LODWORD(v21) = [*(a1 + 32) _isValidOrientationForMapView:*(a1 + 40) orientation:v14];
  if ((v23 & v21 & [*(a1 + 32) _isValidYawForMapView:*(a1 + 40) yaw:v16]) == 1)
  {
    LOBYTE(v38) = 1;
    _AXLogWithFacility();
    v27 = *(a1 + 32);
    v28 = *(v27 + 96);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __86__VKMapViewAccessibilityElementManager_updateAccessibilityElementsForMapView_isRetry___block_invoke_2;
    block[3] = &unk_29F318B38;
    block[4] = v27;
    block[5] = &v42;
    *&block[6] = v3;
    *&block[7] = v5;
    *&block[8] = v7;
    *&block[9] = v9;
    block[10] = v11;
    block[11] = v13;
    block[12] = v14;
    *&block[13] = v16;
    dispatch_sync(v28, block);
    v29 = [MEMORY[0x29EDB8E00] dictionary];
    if ([*(a1 + 32) explorationState] == 1)
    {
      v30 = *(a1 + 32);
      v31 = [v30 currentExplorationVertex];
      [v30 computeVertex:v31];

      v32 = *(a1 + 32);
      v33 = [v32 currentExplorationVertex];
      [v32 addNeighborsAsRelevantFeaturesForVertex:v33];

      [*(a1 + 32) setExplorationState:2];
      v34 = [*(a1 + 32) currentExplorationElement];
      [v29 setObject:v34 forKey:@"AXVKUpdateAccessibilityElementsFocusedElementKey"];
    }

    v35 = [MEMORY[0x29EDBA068] defaultCenter];
    [v35 postNotificationName:@"UpdateAccessibilityElementsComplete" object:*(a1 + 32) userInfo:v29];
  }

  else
  {
    _AXLogWithFacility();
    v36 = *(a1 + 32);
    v37 = *(v36 + 96);
    v40[0] = MEMORY[0x29EDCA5F8];
    v40[1] = 3221225472;
    v40[2] = __86__VKMapViewAccessibilityElementManager_updateAccessibilityElementsForMapView_isRetry___block_invoke_3;
    v40[3] = &unk_29F318628;
    v40[4] = v36;
    dispatch_sync(v37, v40);
    v39 = *(a1 + 40);
    AXPerformBlockOnMainThreadAfterDelay();
  }

  _Block_object_dispose(&v42, 8);
}

uint64_t __86__VKMapViewAccessibilityElementManager_updateAccessibilityElementsForMapView_isRetry___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAccessibilityElements:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setCenter:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 32) setOrientation:*(a1 + 96)];
  [*(a1 + 32) setYaw:*(a1 + 104)];
  v2 = *(a1 + 32);

  return [v2 setUpdating:0];
}

- (VKMapViewAccessibilityElementManager)init
{
  v14.receiver = self;
  v14.super_class = VKMapViewAccessibilityElementManager;
  v2 = [(VKMapViewAccessibilityElementManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_bounds.x0 = 0u;
    *&v2->_bounds.y0 = 0u;
    VKLocationCoordinate2DMake();
    v3->_center.latitude = v4;
    v3->_center.longitude = v5;
    v3->_orientation = 1;
    v3->_yaw = 0.0;
    v3->_updating = 0;
    v6 = dispatch_queue_create("com.maps.accessibility.properties", 0);
    properties_queue = v3->_properties_queue;
    v3->_properties_queue = v6;

    *&v3->_explorationState = xmmword_29C71B7A0;
    currentExplorationVertex = v3->_currentExplorationVertex;
    v3->_currentExplorationVertex = 0;

    v9 = objc_opt_new();
    lastExplorationVertices = v3->_lastExplorationVertices;
    v3->_lastExplorationVertices = v9;

    v11 = objc_opt_new();
    neighborExplorationElements = v3->_neighborExplorationElements;
    v3->_neighborExplorationElements = v11;

    v3->_explorationZoomLevel = 18.0;
  }

  return v3;
}

- (VKMapViewAccessibilityElementManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)explorationLastTouchPoint
{
  x = self->_explorationLastTouchPoint.x;
  y = self->_explorationLastTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)bounds
{
  x0 = self->_bounds.x0;
  x1 = self->_bounds.x1;
  y0 = self->_bounds.y0;
  y1 = self->_bounds.y1;
  result.var3 = y1;
  result.var2 = y0;
  result.var1 = x1;
  result.var0 = x0;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)center
{
  latitude = self->_center.latitude;
  longitude = self->_center.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (VKMapView)currentMapView
{
  WeakRetained = objc_loadWeakRetained(&self->_currentMapView);

  return WeakRetained;
}

@end