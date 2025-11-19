@interface VKFeatureAccessibilityElement
- (BOOL)pointInside:(CGPoint)a3;
- (CGRect)accessibilityFrame;
- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)a3;
- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)a3 feature:(id)a4 ignoreMissingName:(BOOL)a5 useLocalizedLabels:(BOOL)a6;
- (id)_accessibilityMapDetailedInfoAtPoint:(CGPoint)a3;
- (id)_accessibilityMapSmartDescriptionDictionary;
- (id)_accessibilityShortAddress:(id)a3;
- (id)_accessibilityShortAddress:(id)a3 alwaysIncludeLocality:(BOOL)a4;
- (id)_distanceAwayStringWithClockDirection:(BOOL)a3;
- (id)_distanceStringForPoint:(id)a3 usingClockDirection:(BOOL)a4;
- (id)accessibilityLabel;
- (id)accessibilityPaths;
- (id)description;
- (id)pointsFromFeatureWrapper:(id)a3;
- (void)_mergePaths;
- (void)_updateElementStatus;
- (void)addFeature:(id)a3;
- (void)addFeatureWrapper:(id)a3;
- (void)addFeaturesFromElement:(id)a3;
- (void)dealloc;
- (void)removeFeatures;
- (void)startLocationInformationRequest:(CGPoint)a3;
@end

@implementation VKFeatureAccessibilityElement

- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)a3 feature:(id)a4 ignoreMissingName:(BOOL)a5 useLocalizedLabels:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v11 && ([v11 feature], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && ((objc_msgSend(v12, "feature"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "name"), v14, v13, v15) || v7))
  {
    v18 = [v12 feature];
    if (v6)
    {
      GEOFeatureGetLocalizedLabel();
      GEOFeatureGetLocalizedShield();
    }

    else
    {
      GEOFeatureGetNativeLabel();
      GEOFeatureGetNativeShield();
    }

    if (v7)
    {
      v19 = [(VKFeatureAccessibilityElement *)self initWithAccessibilityContainer:v10, 0];
      if (v19)
      {
        [(VKFeatureAccessibilityElement *)v19 setAccessibilityLabel:0];
        [(VKFeatureAccessibilityElement *)v19 setAccessibilityLanguage:0];
        [(VKFeatureAccessibilityElement *)v19 addFeature:v12];
        objc_storeStrong(&v19->_shieldText, 0);
        v19->_shieldType = 0;
        v19->_style = [v18 styleID];
      }

      self = v19;
      v16 = self;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_updateElementStatus
{
  v3 = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  [(VKFeatureAccessibilityElement *)self accessibilityActivationPoint];
  -[VKFeatureAccessibilityElement setIsAccessibilityElement:](self, "setIsAccessibilityElement:", [v3 accessibilityViewBoundsContainsPathPoint:?]);
}

- (id)accessibilityLabel
{
  if ([(VKFeatureAccessibilityElement *)self mapFeatureType]== 25)
  {
    v3 = AXVectorKitLocString(@"POI_BUILDING");
    v8.receiver = self;
    v8.super_class = VKFeatureAccessibilityElement;
    v6 = [(VKFeatureAccessibilityElement *)&v8 accessibilityLabel];
    v4 = __UIAXStringForVariables();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VKFeatureAccessibilityElement;
    v4 = [(VKFeatureAccessibilityElement *)&v7 accessibilityLabel];
  }

  return v4;
}

- (void)removeFeatures
{
  [(NSMutableSet *)self->_featureSet removeAllObjects];
  [(NSMutableArray *)self->_paths removeAllObjects];

  [(VKFeatureAccessibilityElement *)self setHitTestPaths:0];
}

- (void)addFeature:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [[AXVKMultiSectionFeatureWrapper alloc] initWithFeature:v4];
    [(VKFeatureAccessibilityElement *)self addFeatureWrapper:v5];

    v4 = v6;
  }
}

- (void)addFeatureWrapper:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableSet *)self->_featureSet addObject:v4];
    [(NSMutableArray *)self->_paths removeAllObjects];
    [(VKFeatureAccessibilityElement *)self setHitTestPaths:0];
  }
}

- (void)addFeaturesFromElement:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a3;
  [(VKFeatureAccessibilityElement *)self strokeWidth];
  v6 = v5;
  [(VKFeatureAccessibilityElement *)v4 strokeWidth];
  if (v6 <= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = self;
  }

  [(VKFeatureAccessibilityElement *)v8 strokeWidth];
  [(VKFeatureAccessibilityElement *)self setStrokeWidth:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [(VKFeatureAccessibilityElement *)v4 featureSet];
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v9);
        }

        [(VKFeatureAccessibilityElement *)self addFeatureWrapper:*(*(&v13 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BOOL)pointInside:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
    v6 = [(VKFeatureAccessibilityElement *)self accessibilityPaths];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v17.x = x;
          v17.y = y;
          if (CGPathContainsPoint(*(*(&v11 + 1) + 8 * i), 0, v17, 0))
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)pointsFromFeatureWrapper:(id)a3
{
  v4 = [a3 feature];
  v5 = [v4 feature];
  v6 = [v5 containingTile];
  [v6 geoTileKey];

  VKWorldBoundsFromGEOTileKey();
  v7 = [v4 sectionCount];
  v8 = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  v9 = [MEMORY[0x29EDB8DE8] array];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      GEOMultiSectionFeatureGetGEOVectorTilePoints();
    }
  }

  return v9;
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

- (VKFeatureAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VKFeatureAccessibilityElement;
  v5 = [(VKFeatureAccessibilityElement *)&v14 initWithAccessibilityContainer:v4];
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
  v4 = [(VKFeatureAccessibilityElement *)self locationCoordinate];

  if (v4)
  {
    v5 = [(VKFeatureAccessibilityElement *)self locationCoordinate];
    [v5 coordinate];
    v7 = v6;

    v8 = [(VKFeatureAccessibilityElement *)self locationCoordinate];
    [v8 coordinate];
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
  v5 = [(VKFeatureAccessibilityElement *)self accessibilityLabel];
  v6 = [(VKFeatureAccessibilityElement *)self accessibilityPaths];
  v7 = [v6 count];
  v8 = [(VKFeatureAccessibilityElement *)self accessibilityLanguage];
  v9 = [v3 stringWithFormat:@"%@:%p: %@ - Paths: %ld [%@]", v4, self, v5, v7, v8];

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

- (id)_accessibilityShortAddress:(id)a3
{
  v3 = [(VKFeatureAccessibilityElement *)self _accessibilityShortAddress:a3 alwaysIncludeLocality:1];

  return v3;
}

- (id)_accessibilityShortAddress:(id)a3 alwaysIncludeLocality:(BOOL)a4
{
  v4 = AXShortAddressDescriptionForPlacemark(a3, a4);

  return v4;
}

- (void)startLocationInformationRequest:(CGPoint)a3
{
  v4 = [(VKFeatureAccessibilityElement *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  UIAccessibilityPointToPoint();
  v6 = v5;
  v8 = v7;

  v9 = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  v10 = [(VKFeatureAccessibilityElement *)self accessibilityContainer];
  [v9 convertPoint:v10 toCoordinateFromLayer:{v6, v8}];
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

- (id)_distanceAwayStringWithClockDirection:(BOOL)a3
{
  v3 = a3;
  if (-[NSMutableSet count](self->_featureSet, "count") && ([MEMORY[0x29EDBB270] sharedLocationManager], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasLocation"), v5, (v6 & 1) != 0))
  {
    v7 = [(NSMutableSet *)self->_featureSet anyObject];
    v8 = [v7 feature];
    v9 = GEOMultiSectionFeatureBounds();
    v10 = [v8 feature];
    v11 = [v10 containingTile];
    [v11 geoTileKey];

    VKWorldBoundsFromGEOTileKey();
    v16 = [(VKFeatureAccessibilityElement *)self _distanceStringForPoint:v3 usingClockDirection:AXVKPointForTileGLPoint(v12, v13, v14, v15, (*v9 + v9[2]) * 0.5)];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_distanceStringForPoint:(id)a3 usingClockDirection:(BOOL)a4
{
  v4 = a4;
  VKLocationCoordinate2DForVKPoint();
  v5 = [MEMORY[0x29EDBB270] sharedLocationManager];
  v6 = [v5 currentLocation];

  v7 = [MEMORY[0x29EDBB270] sharedLocationManager];
  v8 = [v7 heading];

  v9 = [v6 latLng];
  [v9 lat];
  v10 = [v6 latLng];
  [v10 lng];
  GEOCalculateDistance();
  v12 = v11;

  v13 = [MEMORY[0x29EDB8DE0] currentLocale];
  LODWORD(v10) = [v13 _navigation_distanceUsesMetricSystem];

  if (v10)
  {
    v14 = AXVectorKitLocString(@"POI_DISTANCE_KM");
    v15 = 1000.0;
  }

  else
  {
    v14 = AXVectorKitLocString(@"POI_DISTANCE_M");
    v15 = 1609.344;
  }

  v16 = [v6 latLng];
  [v16 lat];
  v17 = [v6 latLng];
  [v17 lng];

  GEOBearingFromCoordinateToCoordinate();
  [v8 trueHeading];
  GEOAngleDifferenceDegrees();
  v19 = v18;
  v20 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v14, v12 / v15];
  if (v4)
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

- (id)_accessibilityMapDetailedInfoAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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