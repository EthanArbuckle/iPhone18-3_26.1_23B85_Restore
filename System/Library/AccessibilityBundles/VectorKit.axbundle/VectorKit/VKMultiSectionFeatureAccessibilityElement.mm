@interface VKMultiSectionFeatureAccessibilityElement
- (VKMultiSectionFeatureAccessibilityElement)initWithAccessibilityContainer:(id)container feature:(id)feature ignoreMissingName:(BOOL)name useLocalizedLabels:(BOOL)labels;
- (void)_startUpdatingDescriptionForBuilding:(id)building;
- (void)_updatePath;
@end

@implementation VKMultiSectionFeatureAccessibilityElement

- (VKMultiSectionFeatureAccessibilityElement)initWithAccessibilityContainer:(id)container feature:(id)feature ignoreMissingName:(BOOL)name useLocalizedLabels:(BOOL)labels
{
  labelsCopy = labels;
  nameCopy = name;
  containerCopy = container;
  featureCopy = feature;
  v14.receiver = self;
  v14.super_class = VKMultiSectionFeatureAccessibilityElement;
  v12 = [(VKFeatureAccessibilityElement *)&v14 initWithAccessibilityContainer:containerCopy feature:featureCopy ignoreMissingName:nameCopy useLocalizedLabels:labelsCopy];
  [(VKMultiSectionFeatureAccessibilityElement *)v12 _startUpdatingDescriptionForBuilding:featureCopy];

  return v12;
}

- (void)_updatePath
{
  v40 = *MEMORY[0x29EDCA608];
  paths = [(VKFeatureAccessibilityElement *)self paths];
  [paths removeAllObjects];

  [(VKFeatureAccessibilityElement *)self setHitTestPaths:0];
  v4 = MEMORY[0x29EDB90E0];
  v5 = *MEMORY[0x29EDB90E0];
  v6 = *(MEMORY[0x29EDB90E0] + 8);
  v7 = *(MEMORY[0x29EDB90E0] + 16);
  v8 = *(MEMORY[0x29EDB90E0] + 24);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(VKFeatureAccessibilityElement *)self featureSet];
  v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v29 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(VKFeatureAccessibilityElement *)self pointsFromFeatureWrapper:*(*(&v34 + 1) + 8 * v10)];
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = v11;
        v13 = 0;
        v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v14)
        {
          v15 = *v31;
          do
          {
            v16 = 0;
            do
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v30 + 1) + 8 * v16) CGPointValue];
              v19 = v17;
              v20 = v18;
              if (v13)
              {
                [v13 addLineToPoint:{v17, v18}];
              }

              else
              {
                v13 = objc_opt_new();
                [v13 moveToPoint:{v19, v20}];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v14);
        }

        [v13 closePath];
        v21 = v13;
        cGPath = [v13 CGPath];
        if (cGPath)
        {
          paths2 = [(VKFeatureAccessibilityElement *)self paths];
          [paths2 addObject:cGPath];

          PathBoundingBox = CGPathGetPathBoundingBox(cGPath);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;
          v44.origin.x = v5;
          v44.origin.y = v6;
          v44.size.width = v7;
          v44.size.height = v8;
          if (CGRectEqualToRect(*v4, v44))
          {
            v5 = x;
            v6 = y;
            v7 = width;
            v8 = height;
          }

          else
          {
            v42.origin.x = v5;
            v42.origin.y = v6;
            v42.size.width = v7;
            v42.size.height = v8;
            v45.origin.x = x;
            v45.origin.y = y;
            v45.size.width = width;
            v45.size.height = height;
            v43 = CGRectUnion(v42, v45);
            v5 = v43.origin.x;
            v6 = v43.origin.y;
            v7 = v43.size.width;
            v8 = v43.size.height;
          }
        }

        ++v10;
      }

      while (v10 != v9);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  [(VKFeatureAccessibilityElement *)self _mergePaths];
  [(VKMultiSectionFeatureAccessibilityElement *)self setAccessibilityFrame:v5, v6, v7, v8];
  [(VKFeatureAccessibilityElement *)self _updateElementStatus];
}

- (void)_startUpdatingDescriptionForBuilding:(id)building
{
  buildingCopy = building;
  featureSet = [(VKFeatureAccessibilityElement *)self featureSet];
  if (![featureSet count])
  {
    goto LABEL_4;
  }

  v19.receiver = self;
  v19.super_class = VKMultiSectionFeatureAccessibilityElement;
  accessibilityLabel = [(VKFeatureAccessibilityElement *)&v19 accessibilityLabel];

  if (!accessibilityLabel)
  {
    v7 = GEOMultiSectionFeatureBounds();
    feature = [buildingCopy feature];
    containingTile = [feature containingTile];
    [containingTile geoTileKey];

    VKWorldBoundsFromGEOTileKey();
    AXVKPointForTileGLPoint(v10, v11, v12, v13, (*v7 + v7[2]) * 0.5);
    VKLocationCoordinate2DForVKPoint();
    featureSet = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:v14 longitude:v15];
    [(VKFeatureAccessibilityElement *)self setLocationCoordinate:featureSet];
    v16 = objc_alloc_init(MEMORY[0x29EDB9260]);
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __82__VKMultiSectionFeatureAccessibilityElement__startUpdatingDescriptionForBuilding___block_invoke;
    v18[3] = &unk_29F318650;
    v18[4] = self;
    v17 = MEMORY[0x29ED3F700](v18);
    [v16 reverseGeocodeLocation:featureSet completionHandler:v17];
    [(VKMultiSectionFeatureAccessibilityElement *)self _accessibilitySetRetainedValue:v16 forKey:@"CLGeocoder"];

LABEL_4:
  }
}

void __82__VKMultiSectionFeatureAccessibilityElement__startUpdatingDescriptionForBuilding___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 firstObject];
  v6 = *(a1 + 32);
  v11 = v5;
  if (a3 || !v5)
  {
    [v6 _accessibilityRemoveValueForKey:@"CLGeocoder"];
  }

  else
  {
    v7 = [v6 _accessibilityShortAddress:v5 alwaysIncludeLocality:0];
    v8 = v7;
    if (!v7 || ![v7 length])
    {
      v9 = [v11 formattedAddressLines];
      v10 = [v9 componentsJoinedByString:@"\n"];

      v8 = v10;
    }

    [*(a1 + 32) setAccessibilityLabel:v8];
  }
}

@end