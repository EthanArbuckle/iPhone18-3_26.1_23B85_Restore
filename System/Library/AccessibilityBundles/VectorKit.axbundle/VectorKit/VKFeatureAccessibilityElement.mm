@interface VKFeatureAccessibilityElement
- (BOOL)pointInside:(CGPoint)inside;
- (CGRect)accessibilityFrame;
- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)container feature:(id)feature ignoreMissingName:(BOOL)name useLocalizedLabels:(BOOL)labels;
- (id)_accessibilityMapDetailedInfoAtPoint:(CGPoint)point;
- (id)_accessibilityMapSmartDescriptionDictionary;
- (id)_accessibilityShortAddress:(id)address;
- (id)_accessibilityShortAddress:(id)address alwaysIncludeLocality:(BOOL)locality;
- (id)_distanceAwayStringWithClockDirection:(BOOL)direction;
- (id)_distanceStringForPoint:(id)point usingClockDirection:(BOOL)direction;
- (id)accessibilityLabel;
- (id)accessibilityPaths;
- (id)description;
- (id)pointsFromFeatureWrapper:(id)wrapper;
- (void)_mergePaths;
- (void)_updateElementStatus;
- (void)addFeature:(id)feature;
- (void)addFeatureWrapper:(id)wrapper;
- (void)addFeaturesFromElement:(id)element;
- (void)dealloc;
- (void)removeFeatures;
- (void)startLocationInformationRequest:(CGPoint)request;
@end

@implementation VKFeatureAccessibilityElement

- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)container feature:(id)feature ignoreMissingName:(BOOL)name useLocalizedLabels:(BOOL)labels
{
  labelsCopy = labels;
  nameCopy = name;
  containerCopy = container;
  featureCopy = feature;
  v12 = featureCopy;
  if (featureCopy && ([featureCopy feature], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && ((objc_msgSend(v12, "feature"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "name"), v14, v13, v15) || nameCopy))
  {
    feature = [v12 feature];
    if (labelsCopy)
    {
      GEOFeatureGetLocalizedLabel();
      GEOFeatureGetLocalizedShield();
    }

    else
    {
      GEOFeatureGetNativeLabel();
      GEOFeatureGetNativeShield();
    }

    if (nameCopy)
    {
      v19 = [(VKFeatureAccessibilityElement *)self initWithAccessibilityContainer:containerCopy, 0];
      if (v19)
      {
        [(VKFeatureAccessibilityElement *)v19 setAccessibilityLabel:0];
        [(VKFeatureAccessibilityElement *)v19 setAccessibilityLanguage:0];
        [(VKFeatureAccessibilityElement *)v19 addFeature:v12];
        objc_storeStrong(&v19->_shieldText, 0);
        v19->_shieldType = 0;
        v19->_style = [feature styleID];
      }

      self = v19;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_updateElementStatus
{
  accessibilityContainer = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  [(VKFeatureAccessibilityElement *)self accessibilityActivationPoint];
  -[VKFeatureAccessibilityElement setIsAccessibilityElement:](self, "setIsAccessibilityElement:", [accessibilityContainer accessibilityViewBoundsContainsPathPoint:?]);
}

- (id)accessibilityLabel
{
  if ([(VKFeatureAccessibilityElement *)self mapFeatureType]== 25)
  {
    v3 = AXVectorKitLocString(@"POI_BUILDING");
    v8.receiver = self;
    v8.super_class = VKFeatureAccessibilityElement;
    accessibilityLabel = [(VKFeatureAccessibilityElement *)&v8 accessibilityLabel];
    accessibilityLabel2 = __UIAXStringForVariables();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VKFeatureAccessibilityElement;
    accessibilityLabel2 = [(VKFeatureAccessibilityElement *)&v7 accessibilityLabel];
  }

  return accessibilityLabel2;
}

- (void)removeFeatures
{
  [(NSMutableSet *)self->_featureSet removeAllObjects];
  [(NSMutableArray *)self->_paths removeAllObjects];

  [(VKFeatureAccessibilityElement *)self setHitTestPaths:0];
}

- (void)addFeature:(id)feature
{
  featureCopy = feature;
  if (featureCopy)
  {
    v6 = featureCopy;
    v5 = [[AXVKMultiSectionFeatureWrapper alloc] initWithFeature:featureCopy];
    [(VKFeatureAccessibilityElement *)self addFeatureWrapper:v5];

    featureCopy = v6;
  }
}

- (void)addFeatureWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if (wrapperCopy)
  {
    [(NSMutableSet *)self->_featureSet addObject:wrapperCopy];
    [(NSMutableArray *)self->_paths removeAllObjects];
    [(VKFeatureAccessibilityElement *)self setHitTestPaths:0];
  }
}

- (void)addFeaturesFromElement:(id)element
{
  v18 = *MEMORY[0x29EDCA608];
  elementCopy = element;
  [(VKFeatureAccessibilityElement *)self strokeWidth];
  v6 = v5;
  [(VKFeatureAccessibilityElement *)elementCopy strokeWidth];
  if (v6 <= v7)
  {
    selfCopy = elementCopy;
  }

  else
  {
    selfCopy = self;
  }

  [(VKFeatureAccessibilityElement *)selfCopy strokeWidth];
  [(VKFeatureAccessibilityElement *)self setStrokeWidth:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  featureSet = [(VKFeatureAccessibilityElement *)elementCopy featureSet];
  v10 = [featureSet countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(featureSet);
        }

        [(VKFeatureAccessibilityElement *)self addFeatureWrapper:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [featureSet countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)pointInside:(CGPoint)inside
{
  y = inside.y;
  x = inside.x;
  v16 = *MEMORY[0x29EDCA608];
  [(VKFeatureAccessibilityElement *)self accessibilityFrame];
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v19, v18))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    accessibilityPaths = [(VKFeatureAccessibilityElement *)self accessibilityPaths];
    v7 = [accessibilityPaths countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(accessibilityPaths);
          }

          v17.x = x;
          v17.y = y;
          if (CGPathContainsPoint(*(*(&v11 + 1) + 8 * i), 0, v17, 0))
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [accessibilityPaths countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)pointsFromFeatureWrapper:(id)wrapper
{
  feature = [wrapper feature];
  v4Feature = [feature feature];
  containingTile = [v4Feature containingTile];
  [containingTile geoTileKey];

  VKWorldBoundsFromGEOTileKey();
  sectionCount = [feature sectionCount];
  accessibilityContainer = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  array = [MEMORY[0x29EDB8DE8] array];
  if (sectionCount)
  {
    for (i = 0; i != sectionCount; ++i)
    {
      GEOMultiSectionFeatureGetGEOVectorTilePoints();
    }
  }

  return array;
}

- (void)dealloc
{
  v3 = [(VKFeatureAccessibilityElement *)self _accessibilityValueForKey:@"CLGeocoder"];
  v4 = v3;
  if (v3)
  {
    [v3 cancelGeocode];
  }

  v5.receiver = self;
  v5.super_class = VKFeatureAccessibilityElement;
  [(VKFeatureAccessibilityElement *)&v5 dealloc];
}

- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  containerCopy = container;
  v14.receiver = self;
  v14.super_class = VKFeatureAccessibilityElement;
  v5 = [(VKFeatureAccessibilityElement *)&v14 initWithAccessibilityContainer:containerCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    paths = v5->_paths;
    v5->_paths = v6;

    v8 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    featureSet = v5->_featureSet;
    v5->_featureSet = v8;

    v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    pointToFeatureDict = v5->_pointToFeatureDict;
    v5->_pointToFeatureDict = v10;

    v12 = v5;
  }

  return v5;
}

- (id)_accessibilityMapSmartDescriptionDictionary
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  locationCoordinate = [(VKFeatureAccessibilityElement *)self locationCoordinate];

  if (locationCoordinate)
  {
    locationCoordinate2 = [(VKFeatureAccessibilityElement *)self locationCoordinate];
    [locationCoordinate2 coordinate];
    v7 = v6;

    locationCoordinate3 = [(VKFeatureAccessibilityElement *)self locationCoordinate];
    [locationCoordinate3 coordinate];
    v10 = v9;

    if (v7 != -180.0 && v10 != -180.0)
    {
      v11 = [MEMORY[0x29EDBA070] numberWithDouble:v7];
      [v3 setObject:v11 forKeyedSubscript:@"Latitude"];

      v12 = [MEMORY[0x29EDBA070] numberWithDouble:v10];
      [v3 setObject:v12 forKeyedSubscript:@"Longitude"];
    }

    v13 = [(VKFeatureAccessibilityElement *)self _distanceAwayStringWithClockDirection:1];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"DistanceAway"];
    }

    v14 = [(VKFeatureAccessibilityElement *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
    v15 = v14;
    if (v14)
    {
      [v14 visibleMapRect];
      v19 = AXMapWidthScaleString(v16, v17, v18);
      [v3 setObject:v19 forKeyedSubscript:@"MapWidthScale"];

      [v15 visibleMapRect];
      v24 = AXMapHeightScaleString(v20, v21, v22, v23);
      [v3 setObject:v24 forKeyedSubscript:@"MapHeightScale"];
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  accessibilityLabel = [(VKFeatureAccessibilityElement *)self accessibilityLabel];
  accessibilityPaths = [(VKFeatureAccessibilityElement *)self accessibilityPaths];
  v7 = [accessibilityPaths count];
  accessibilityLanguage = [(VKFeatureAccessibilityElement *)self accessibilityLanguage];
  v9 = [v3 stringWithFormat:@"%@:%p: %@ - Paths: %ld [%@]", v4, self, accessibilityLabel, v7, accessibilityLanguage];

  return v9;
}

- (void)_mergePaths
{
  v14 = *MEMORY[0x29EDCA608];
  Mutable = CGPathCreateMutable();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_paths;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        AX_CGPathEnumerateElementsUsingBlock();
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:Mutable];
  [(VKFeatureAccessibilityElement *)self setAccessibilityPath:v8];

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __44__VKFeatureAccessibilityElement__mergePaths__block_invoke(uint64_t a1, int a2, CGFloat *a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        CGPathAddLineToPoint(*(a1 + 32), 0, *a3, a3[1]);
      }
    }

    else
    {
      CGPathMoveToPoint(*(a1 + 32), 0, *a3, a3[1]);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        CGPathAddQuadCurveToPoint(*(a1 + 32), 0, *a3, a3[1], a3[2], a3[3]);
        break;
      case 3:
        CGPathAddCurveToPoint(*(a1 + 32), 0, *a3, a3[1], a3[2], a3[3], a3[4], a3[5]);
        break;
      case 4:
        CGPathCloseSubpath(*(a1 + 32));
        break;
    }
  }
}

- (CGRect)accessibilityFrame
{
  v3 = [(NSMutableSet *)self->_featureSet count];
  if (v3 != [(NSMutableArray *)self->_paths count])
  {
    [(VKFeatureAccessibilityElement *)self _updatePath];
  }

  v8.receiver = self;
  v8.super_class = VKFeatureAccessibilityElement;
  [(VKFeatureAccessibilityElement *)&v8 accessibilityFrame];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)accessibilityPaths
{
  v3 = [(NSMutableSet *)self->_featureSet count];
  if (v3 != [(NSMutableArray *)self->_paths count])
  {
    [(VKFeatureAccessibilityElement *)self _updatePath];
  }

  paths = self->_paths;

  return paths;
}

- (id)_accessibilityShortAddress:(id)address
{
  v3 = [(VKFeatureAccessibilityElement *)self _accessibilityShortAddress:address alwaysIncludeLocality:1];

  return v3;
}

- (id)_accessibilityShortAddress:(id)address alwaysIncludeLocality:(BOOL)locality
{
  v4 = AXShortAddressDescriptionForPlacemark(address, locality);

  return v4;
}

- (void)startLocationInformationRequest:(CGPoint)request
{
  v4 = [(VKFeatureAccessibilityElement *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  UIAccessibilityPointToPoint();
  v6 = v5;
  v8 = v7;

  accessibilityContainer = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  accessibilityContainer2 = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  [accessibilityContainer convertPoint:accessibilityContainer2 toCoordinateFromLayer:{v6, v8}];
  v12 = v11;
  v14 = v13;

  v15 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:v12 longitude:v14];
  v16 = objc_alloc_init(MEMORY[0x29EDB9260]);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __65__VKFeatureAccessibilityElement_startLocationInformationRequest___block_invoke;
  v18[3] = &unk_29F318538;
  v18[4] = self;
  *&v18[5] = v6;
  *&v18[6] = v8;
  v17 = MEMORY[0x29ED3F700](v18);
  [v16 reverseGeocodeLocation:v15 completionHandler:v17];
  [(VKFeatureAccessibilityElement *)self _accessibilitySetRetainedValue:v16 forKey:@"CLGeocoder"];
}

void __65__VKFeatureAccessibilityElement_startLocationInformationRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = [v5 firstObject];
  v7 = *(a1 + 32);
  if (a3 || !v6)
  {
    [v7 _accessibilityRemoveValueForKey:@"CLGeocoder"];
  }

  else
  {
    v8 = [v7 _accessibilityShortAddress:v6];
    v15 = [*(a1 + 32) _distanceAwayString];
    v9 = __UIAXStringForVariables();

    v10 = *(a1 + 32);
    v17[0] = @"Point";
    v11 = [MEMORY[0x29EDBA168] valueWithCGPoint:{*(a1 + 40), *(a1 + 48), v15, @"__AXStringForVariablesSentinel"}];
    v17[1] = @"String";
    v18[0] = v11;
    v18[1] = v9;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v10 _accessibilitySetRetainedValue:v12 forKey:@"PointInfo"];

    [*(a1 + 32) _accessibilityRemoveValueForKey:@"CLGeocoder"];
    v16 = [*(a1 + 32) detailedFeatureElementInfoAtPoint:{*(a1 + 40), *(a1 + 48)}];
    v13 = __UIAXStringForVariables();

    v14 = [VKMapViewOutputManager sharedOutputManager:v16];
    [v14 queueOutput:v13];
  }
}

- (id)_distanceAwayStringWithClockDirection:(BOOL)direction
{
  directionCopy = direction;
  if (-[NSMutableSet count](self->_featureSet, "count") && ([MEMORY[0x29EDBB270] sharedLocationManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasLocation"), v5, (v6 & 1) != 0))
  {
    anyObject = [(NSMutableSet *)self->_featureSet anyObject];
    feature = [anyObject feature];
    v9 = GEOMultiSectionFeatureBounds();
    v8Feature = [feature feature];
    containingTile = [v8Feature containingTile];
    [containingTile geoTileKey];

    VKWorldBoundsFromGEOTileKey();
    v16 = [(VKFeatureAccessibilityElement *)self _distanceStringForPoint:directionCopy usingClockDirection:AXVKPointForTileGLPoint(v12, v13, v14, v15, (*v9 + v9[2]) * 0.5)];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_distanceStringForPoint:(id)point usingClockDirection:(BOOL)direction
{
  directionCopy = direction;
  VKLocationCoordinate2DForVKPoint();
  mEMORY[0x29EDBB270] = [MEMORY[0x29EDBB270] sharedLocationManager];
  currentLocation = [mEMORY[0x29EDBB270] currentLocation];

  mEMORY[0x29EDBB270]2 = [MEMORY[0x29EDBB270] sharedLocationManager];
  heading = [mEMORY[0x29EDBB270]2 heading];

  latLng = [currentLocation latLng];
  [latLng lat];
  latLng2 = [currentLocation latLng];
  [latLng2 lng];
  GEOCalculateDistance();
  v12 = v11;

  currentLocale = [MEMORY[0x29EDB8DE0] currentLocale];
  LODWORD(latLng2) = [currentLocale _navigation_distanceUsesMetricSystem];

  if (latLng2)
  {
    v14 = AXVectorKitLocString(@"POI_DISTANCE_KM");
    v15 = 1000.0;
  }

  else
  {
    v14 = AXVectorKitLocString(@"POI_DISTANCE_M");
    v15 = 1609.344;
  }

  latLng3 = [currentLocation latLng];
  [latLng3 lat];
  latLng4 = [currentLocation latLng];
  [latLng4 lng];

  GEOBearingFromCoordinateToCoordinate();
  [heading trueHeading];
  GEOAngleDifferenceDegrees();
  v19 = v18;
  v20 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v14, v12 / v15];
  if (directionCopy)
  {
    AXClockDescriptionForHeadingInDegrees(v19);
  }

  else
  {
    AXDescriptionForHeadingInDegrees();
  }
  v23 = ;
  v21 = __UIAXStringForVariables();

  return v21;
}

- (id)_accessibilityMapDetailedInfoAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(VKFeatureAccessibilityElement *)self _accessibilityValueForKey:@"PointInfo"];
  v7 = v6;
  if (v6 && (([v6 objectForKey:@"Point"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "CGPointValue"), v10 = v9, v12 = v11, v8, v10 == x) ? (v13 = v12 == y) : (v13 = 0), v13))
  {
    v15 = [v7 objectForKey:@"String"];
    v17 = [(VKFeatureAccessibilityElement *)self detailedFeatureElementInfoAtPoint:x, y];
    v14 = __UIAXStringForVariables();
  }

  else
  {
    [(VKFeatureAccessibilityElement *)self startLocationInformationRequest:x, y];
    v14 = 0;
  }

  return v14;
}

@end