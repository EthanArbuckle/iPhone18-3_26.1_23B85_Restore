@interface VKRoadFeatureAccessibilityElement
- (AXVKFeaturePointIndices)featureAndPointIndicesForPoint:(CGPoint)a3;
- (BOOL)_accessibilityRoadContainsTrackingPoint:(CGPoint)a3;
- (BOOL)pointInside:(CGPoint)a3;
- (CGRect)accessibilityFrame;
- (NSArray)consolidatedAndOrderedFeatures;
- (NSArray)originalPaths;
- (_NSRange)_roadSuffixRangeForCommonRoadAbbreviations:(id)a3 replacement:(id *)a4;
- (float)_accessibilityDistance:(CGPoint)a3 forAngle:(float)a4 toRoad:(id)a5;
- (float)_accessibilityDistanceFromEndOfRoad:(CGPoint)a3 forAngle:(float)a4;
- (id)_accessibilityUpcomingRoadsForPoint:(CGPoint)a3 forAngle:(float)a4;
- (id)_axRoadPrefix;
- (id)_axRoadSuffix;
- (id)_nearestIntersectionForPoint:(CGPoint)a3;
- (id)_roadDirectionDescription;
- (id)_roadLength;
- (id)accessibilityLabel;
- (id)accessibilityPaths;
- (id)accessibilitySortedIntersectorsForPoint:(CGPoint)a3;
- (id)accessibilityViableIntersectorsForPoint:(CGPoint)a3 fromSortedArray:(id)a4 isStart:(BOOL)a5;
- (id)adjacentIntersectorsForPoint:(CGPoint)a3 isStart:(BOOL)a4;
- (id)consolidatedAndOrderedFeaturesFromAllFeaturePoints:(id)a3;
- (id)detailedFeatureElementInfoAtPoint:(CGPoint)a3;
- (id)trueLabel;
- (int64_t)_accessibilityMapRoadType;
- (void)_accessibilityMapsExplorationBeginFromCurrentElement;
- (void)_combineRoadPaths:(id)a3;
- (void)_updatePath;
@end

@implementation VKRoadFeatureAccessibilityElement

- (id)_axRoadPrefix
{
  v2 = [(VKRoadFeatureAccessibilityElement *)self _accessibilityMapRoadType]- 1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXVectorKitLocString(off_29F318670[v2]);
  }

  return v3;
}

- (id)trueLabel
{
  v4.receiver = self;
  v4.super_class = VKRoadFeatureAccessibilityElement;
  v2 = [(VKFeatureAccessibilityElement *)&v4 accessibilityLabel];

  return v2;
}

- (id)_axRoadSuffix
{
  if ([(VKRoadFeatureAccessibilityElement *)self travelDirection]- 1 > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = AXVectorKitLocString(@"ROAD_ONE_WAY");
  }

  return v2;
}

- (id)accessibilityLabel
{
  v3 = [(VKRoadFeatureAccessibilityElement *)self _axRoadPrefix];
  if (v3)
  {
    v4 = v3;
    v5 = [(VKFeatureAccessibilityElement *)self shieldText];

    if (v5)
    {
      v6 = MEMORY[0x29EDBA0F8];
      v7 = [(VKFeatureAccessibilityElement *)self shieldText];
      v8 = [v6 stringWithFormat:@"%@ %@", v4, v7];

      v4 = v8;
    }

    v21.receiver = self;
    v21.super_class = VKRoadFeatureAccessibilityElement;
    v9 = [(VKFeatureAccessibilityElement *)&v21 accessibilityLabel];
    v10 = __UIAXStringForVariables();
    goto LABEL_5;
  }

  v20.receiver = self;
  v20.super_class = VKRoadFeatureAccessibilityElement;
  v12 = [(VKFeatureAccessibilityElement *)&v20 accessibilityLabel];
  if (!v12)
  {
    v12 = [(VKFeatureAccessibilityElement *)self shieldText];
  }

  v13 = [(VKRoadFeatureAccessibilityElement *)self _axRoadSuffix];
  v18 = [(VKRoadFeatureAccessibilityElement *)self _roadDirectionDescription];
  v9 = __UIAXStringForVariables();

  if (!AXDoesRequestingClientDeserveAutomation())
  {
    v19 = 0;
    v15 = [(VKRoadFeatureAccessibilityElement *)self _roadSuffixRangeForCommonRoadAbbreviations:v9 replacement:&v19, v13, v18, @"__AXStringForVariablesSentinel"];
    v17 = v16;
    v4 = v19;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    v10 = [v9 stringByReplacingCharactersInRange:v15 withString:{v17, v4}];
LABEL_5:
    v11 = v10;

    v9 = v11;
LABEL_6:
  }

  return v9;
}

- (_NSRange)_roadSuffixRangeForCommonRoadAbbreviations:(id)a3 replacement:(id *)a4
{
  v5 = a3;
  if ([VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::onceToken != -1)
  {
    [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x4012000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = &unk_29C723C02;
  v25 = xmmword_29C71B610;
  v6 = [MEMORY[0x29EDBDF80] sharedInstance];
  v7 = [v6 dialectForSystemLanguage];
  v8 = [v7 specificLanguageID];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if ([-[VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::SupportedLangs containsObject:v9])
  {
    v10 = [v5 length];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __92__VKRoadFeatureAccessibilityElement__roadSuffixRangeForCommonRoadAbbreviations_replacement___block_invoke_622;
    v15[3] = &unk_29F318560;
    v16 = v9;
    v17 = &v19;
    v18 = a4;
    [v5 enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v15}];
    v11 = v20[6];
    v12 = v20[7];
  }

  else
  {
    v11 = v20[6];
    v12 = v20[7];
  }

  _Block_object_dispose(&v19, 8);
  v13 = v11;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

uint64_t __92__VKRoadFeatureAccessibilityElement__roadSuffixRangeForCommonRoadAbbreviations_replacement___block_invoke()
{
  v0 = [MEMORY[0x29EDB8E50] setWithArray:&unk_2A239BA60];
  v1 = [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::SupportedLangs;
  [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::SupportedLangs = v0;

  v2 = MEMORY[0x29EDB9F48];
  v3 = AXAccessibilityBundlesDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"MapsStreetNames.axbundle"];
  v5 = [v2 bundleWithPath:v4];
  v6 = [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::Bundle;
  [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::Bundle = v5;

  v7 = [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::Bundle;

  return [v7 load];
}

void __92__VKRoadFeatureAccessibilityElement__roadSuffixRangeForCommonRoadAbbreviations_replacement___block_invoke_622(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v11 = a2;
  v12 = MEMORY[0x29EDBA0F8];
  v19 = v11;
  v13 = [v11 lowercaseString];
  v14 = [v12 stringWithFormat:@"ROAD.SUFFIX.%@", v13];

  v15 = [VKRoadFeatureAccessibilityElement _roadSuffixRangeForCommonRoadAbbreviations:replacement:]::Bundle;
  v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"StreetNames-%@", *(a1 + 32)];
  v17 = [v15 localizedStringForKey:v14 value:&stru_2A2395E90 table:v16];

  if ([v17 length] && (objc_msgSend(v17, "isEqualToString:", v14) & 1) == 0)
  {
    **(a1 + 48) = [v17 copy];
    v18 = *(*(a1 + 40) + 8);
    *(v18 + 48) = a3;
    *(v18 + 56) = a4;
    *a7 = 1;
  }
}

- (int64_t)_accessibilityMapRoadType
{
  v2 = [(VKFeatureAccessibilityElement *)self shieldType];
  if (v2 <= 5449)
  {
    if (v2 == 1045)
    {
      return 3;
    }

    if (v2 == 5400)
    {
      return 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 5450:
        return 2;
      case 6650:
        return 5;
      case 5700:
        return 4;
    }
  }

  return 0;
}

- (NSArray)originalPaths
{
  originalPaths = self->_originalPaths;
  if (!originalPaths)
  {
    [(VKRoadFeatureAccessibilityElement *)self _updatePath];
    originalPaths = self->_originalPaths;
  }

  return originalPaths;
}

- (void)_combineRoadPaths:(id)a3
{
  v65 = a3;
  objc_storeStrong(&self->_allPoints, a3);
  if ([v65 count] >= 2)
  {
    for (i = 0; i < [v65 count]; ++i)
    {
      v6 = [v65 objectAtIndex:i];
      v7 = [(NSArray *)v6 objectAtIndex:0];
      [v7 CGPointValue];
      v9 = v8;
      v11 = v10;

      v12 = [(NSArray *)v6 lastObject];
      v63 = v11;
      v64 = v9;
      [v12 CGPointValue];
      v14 = v13;
      v16 = v15;

      v17 = 0;
      v18 = 0;
      v19 = i + 1;
      v20 = -1;
      v66 = 3.4028e38;
      v67 = 3.4028e38;
      v21 = -1;
      v62 = v16;
      while (v19 < [v65 count])
      {
        v22 = [v65 objectAtIndex:v19];
        v23 = [v22 objectAtIndex:0];
        [v23 CGPointValue];
        v25 = v24;
        v27 = v26;

        v28 = [v22 lastObject];
        [v28 CGPointValue];
        v30 = v29;
        v32 = v31;
        v33 = v14;

        v69.x = v64;
        v69.y = v63;
        v73.x = v25;
        v73.y = v27;
        DistanceBetweenPoints = AXVKMathGetDistanceBetweenPoints(v69, v73);
        v70.x = v64;
        v70.y = v63;
        v74.x = v30;
        v74.y = v32;
        v37 = AXVKMathGetDistanceBetweenPoints(v70, v74);
        v35 = v37;
        v36 = DistanceBetweenPoints;
        *&v37 = v67;
        if (v67 <= v36)
        {
          v36 = v67;
        }

        else
        {
          v38 = [v22 reverseObjectEnumerator];
          v39 = [v38 allObjects];

          v18 = v39;
          v21 = v19;
        }

        v40 = v35;
        v67 = v40;
        if (v36 <= v40)
        {
          v67 = v36;
        }

        else
        {
          v41 = v22;

          v18 = v41;
          v21 = v19;
        }

        v71.x = v33;
        v71.y = v62;
        v75.x = v25;
        v75.y = v27;
        v42 = AXVKMathGetDistanceBetweenPoints(v71, v75);
        v72.x = v33;
        v72.y = v62;
        v76.x = v30;
        v76.y = v32;
        v43 = AXVKMathGetDistanceBetweenPoints(v72, v76);
        v44 = v42;
        if (v66 <= v44)
        {
          v44 = v66;
        }

        else
        {
          v45 = v22;

          v17 = v45;
          v20 = v19;
        }

        v46 = v43;
        v66 = v46;
        if (v44 <= v46)
        {
          v66 = v44;
          v14 = v33;
        }

        else
        {
          v47 = [v22 reverseObjectEnumerator];
          v14 = v33;
          v48 = [v47 allObjects];

          v17 = v48;
          v20 = v19;
        }

        ++v19;
      }

      v49 = v67 >= 1.0 || v21 < 1;
      v50 = v49;
      if (v49)
      {
        v51 = 0;
        v52 = v66;
      }

      else
      {
        v53 = _areSetsBasicallyDuplicates(v6, v18);
        v52 = v66;
        if (v53)
        {
          v51 = 0;
        }

        else
        {
          v54 = [(NSArray *)v18 arrayByAddingObjectsFromArray:v6];
          [v65 replaceObjectAtIndex:i withObject:v54];
          v51 = v54;

          v6 = v51;
        }

        [v65 removeObjectAtIndex:v21];
        v20 -= v21 < v20;
        --i;
      }

      if (v20 == v21)
      {
        v55 = v50;
      }

      else
      {
        v55 = 1;
      }

      if (v52 >= 1.0 || v20 < 1 || v55 == 0)
      {
        v58 = v51;
      }

      else
      {
        v59 = _areSetsBasicallyDuplicates(v17, v6);
        if (v59)
        {
          v60 = v6;
        }

        else
        {
          v60 = [(NSArray *)v6 arrayByAddingObjectsFromArray:v17];
        }

        v58 = v60;

        v61 = i + (v50 ^ 1u);
        [v65 replaceObjectAtIndex:v61 withObject:v58];
        [v65 removeObjectAtIndex:v20];
        i = v61 - 1;
      }
    }
  }
}

- (void)_updatePath
{
  v105 = *MEMORY[0x29EDCA608];
  [(VKFeatureAccessibilityElement *)self strokeWidth];
  if (v3 != 0.0)
  {
    if (!self->_expandedPaths)
    {
      v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      expandedPaths = self->_expandedPaths;
      self->_expandedPaths = v4;

      v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      originalPaths = self->_originalPaths;
      self->_originalPaths = v6;

      v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      gutterPaths = self->_gutterPaths;
      self->_gutterPaths = v8;
    }

    [(VKFeatureAccessibilityElement *)self setHitTestPaths:0];
    v76 = self;
    v10 = [(VKFeatureAccessibilityElement *)self paths];
    [v10 removeAllObjects];

    [(NSMutableArray *)v76->_originalPaths removeAllObjects];
    [(NSMutableArray *)v76->_expandedPaths removeAllObjects];
    [(NSMutableArray *)v76->_gutterPaths removeAllObjects];
    v70 = [MEMORY[0x29EDB8DE8] array];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v11 = v76;
    v12 = [(VKFeatureAccessibilityElement *)v76 featureSet];
    v13 = [v12 countByEnumeratingWithState:&v99 objects:v104 count:16];
    if (v13)
    {
      v14 = *v100;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v100 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [(VKFeatureAccessibilityElement *)v11 pointsFromFeatureWrapper:*(*(&v99 + 1) + 8 * i)];
          if ([v16 count])
          {
            [v70 addObject:v16];
          }

          v11 = v76;
        }

        v13 = [v12 countByEnumeratingWithState:&v99 objects:v104 count:16];
      }

      while (v13);
    }

    [(VKRoadFeatureAccessibilityElement *)v76 _combineRoadPaths:v70];
    v17 = [(VKRoadFeatureAccessibilityElement *)v76 accessibilityContainer];
    [v17 accessibilityClearVisibleAXBoundsFrame];

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v70;
    v72 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (v72)
    {
      v71 = *v96;
      do
      {
        for (j = 0; j != v72; ++j)
        {
          if (*v96 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v95 + 1) + 8 * j);
          v19 = objc_opt_new();
          v77 = objc_opt_new();
          v73 = objc_opt_new();
          v20 = objc_opt_new();
          v21 = [v18 count];
          v22 = AXCArrayCreate();
          v23 = AXCArrayCreate();
          v24 = AXCArrayCreate();
          v93[0] = 0;
          v93[1] = v93;
          v93[2] = 0x4012000000;
          v93[3] = __Block_byref_object_copy__633;
          v93[4] = __Block_byref_object_dispose__634;
          v93[5] = &unk_29C723C02;
          v94 = *MEMORY[0x29EDB90B8];
          [(VKFeatureAccessibilityElement *)v76 strokeWidth];
          v26 = v25 + 4.0;
          v91[0] = 0;
          v91[1] = v91;
          v91[2] = 0x2020000000;
          v92 = 0;
          v89[0] = 0;
          v89[1] = v89;
          v89[2] = 0x2020000000;
          v90 = 0;
          v78[0] = MEMORY[0x29EDCA5F8];
          v78[1] = 3221225472;
          v78[2] = __48__VKRoadFeatureAccessibilityElement__updatePath__block_invoke;
          v78[3] = &unk_29F318588;
          v80 = v93;
          v81 = v89;
          v78[4] = v76;
          v78[5] = v18;
          v82 = v91;
          v83 = v21;
          v27 = v73;
          v87 = v26;
          v88 = 0x4248000042960000;
          v75 = v27;
          v79 = v27;
          v84 = v22;
          v85 = v23;
          v86 = v24;
          [v18 enumerateObjectsUsingBlock:v78];
          Count = AXCArrayGetCount();
          if (Count >= 1)
          {
            if (!AXCArrayGetCount())
            {
              v67 = AXCArrayGetCount();
              v68 = 0;
              v66 = v22;
              _AXAssert();
            }

            UnderlyingArray = _AXCArrayGetUnderlyingArray();
            [v19 moveToPoint:{*UnderlyingArray, UnderlyingArray[1]}];
            if (!AXCArrayGetCount())
            {
              v67 = AXCArrayGetCount();
              v68 = 0;
              v66 = v23;
              _AXAssert();
            }

            v30 = _AXCArrayGetUnderlyingArray();
            [v77 moveToPoint:{*v30, v30[1]}];
            if (!AXCArrayGetCount())
            {
              v67 = AXCArrayGetCount();
              v68 = 0;
              v66 = v24;
              _AXAssert();
            }

            v31 = _AXCArrayGetUnderlyingArray();
            [v20 moveToPoint:{*v31, v31[1]}];
            if (Count != 1)
            {
              v32 = 0;
              for (k = 1; k != Count; ++k)
              {
                if (k >= AXCArrayGetCount())
                {
                  v67 = AXCArrayGetCount();
                  v68 = k;
                  v66 = v22;
                  _AXAssert();
                }

                v34 = _AXCArrayGetUnderlyingArray();
                [v19 addLineToPoint:{*(v34 + v32 + 32), *(v34 + v32 + 40)}];
                if (k >= AXCArrayGetCount())
                {
                  v67 = AXCArrayGetCount();
                  v68 = k;
                  v66 = v23;
                  _AXAssert();
                }

                v35 = _AXCArrayGetUnderlyingArray();
                [v77 addLineToPoint:{*(v35 + v32 + 32), *(v35 + v32 + 40)}];
                if (k >= AXCArrayGetCount())
                {
                  v67 = AXCArrayGetCount();
                  v68 = k;
                  v66 = v24;
                  _AXAssert();
                }

                v36 = _AXCArrayGetUnderlyingArray();
                [v20 addLineToPoint:{*(v36 + v32 + 32), *(v36 + v32 + 40)}];
                v32 += 32;
              }
            }
          }

          v37 = AXCArrayGetCount();
          v38 = 32 * v37 - 8;
          while (v37 > 0)
          {
            if (--v37 >= AXCArrayGetCount())
            {
              v67 = AXCArrayGetCount();
              v68 = v37;
              v66 = v22;
              _AXAssert();
            }

            v39 = _AXCArrayGetUnderlyingArray();
            [v19 addLineToPoint:{*(v39 + v38 - 8), *(v39 + v38)}];
            if (v37 >= AXCArrayGetCount())
            {
              v67 = AXCArrayGetCount();
              v68 = v37;
              v66 = v23;
              _AXAssert();
            }

            v40 = _AXCArrayGetUnderlyingArray();
            [v77 addLineToPoint:{*(v40 + v38 - 8), *(v40 + v38)}];
            if (v37 >= AXCArrayGetCount())
            {
              v67 = AXCArrayGetCount();
              v68 = v37;
              v66 = v24;
              _AXAssert();
            }

            v41 = _AXCArrayGetUnderlyingArray();
            v42 = *(v41 + v38 - 8);
            v43 = *(v41 + v38);
            v38 -= 32;
            [v20 addLineToPoint:{v42, v43}];
          }

          if (([v19 isEmpty] & 1) == 0)
          {
            [v19 closePath];
          }

          if (([v77 isEmpty] & 1) == 0)
          {
            [v77 closePath];
          }

          if (([v20 isEmpty] & 1) == 0)
          {
            [v20 closePath];
          }

          [v19 setFlatness:0.6];
          v44 = [(VKFeatureAccessibilityElement *)v76 paths];
          v45 = v19;
          [v44 addObject:{objc_msgSend(v19, "CGPath")}];

          v46 = v76->_expandedPaths;
          v47 = v77;
          -[NSMutableArray addObject:](v46, "addObject:", [v77 CGPath]);
          v48 = v76->_originalPaths;
          v49 = v75;
          -[NSMutableArray addObject:](v48, "addObject:", [v75 CGPath]);
          v50 = v76->_gutterPaths;
          v51 = v20;
          -[NSMutableArray addObject:](v50, "addObject:", [v20 CGPath]);
          v52 = v19;
          PathBoundingBox = CGPathGetPathBoundingBox([v19 CGPath]);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;
          [(VKRoadFeatureAccessibilityElement *)v76 accessibilityFrame];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v109.origin.x = v57;
          v109.origin.y = v59;
          v109.size.width = v61;
          v109.size.height = v63;
          if (!CGRectEqualToRect(*MEMORY[0x29EDB90E0], v109))
          {
            v107.origin.x = v58;
            v107.origin.y = v60;
            v107.size.width = v62;
            v107.size.height = v64;
            v110.origin.x = x;
            v110.origin.y = y;
            v110.size.width = width;
            v110.size.height = height;
            v108 = CGRectUnion(v107, v110);
            x = v108.origin.x;
            y = v108.origin.y;
            width = v108.size.width;
            height = v108.size.height;
          }

          [(VKRoadFeatureAccessibilityElement *)v76 setAccessibilityFrame:x, y, width, height];
          if (v22)
          {
            CFRelease(v22);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          if (v24)
          {
            CFRelease(v24);
          }

          _Block_object_dispose(v89, 8);
          _Block_object_dispose(v91, 8);
          _Block_object_dispose(v93, 8);
        }

        v72 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
      }

      while (v72);
    }

    [(VKFeatureAccessibilityElement *)v76 _mergePaths];
    v65 = [(VKRoadFeatureAccessibilityElement *)v76 accessibilityContainer];
    [v65 accessibilityClearVisibleAXBoundsFrame];
  }
}

void __48__VKRoadFeatureAccessibilityElement__updatePath__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 CGPointValue];
  v8 = v7;
  v9 = v6;
  v10 = *(*(a1 + 56) + 8);
  if (*(v10 + 48) == v7 && *(v10 + 56) == v6)
  {
    goto LABEL_43;
  }

  v12 = [*(a1 + 32) accessibilityContainer];
  v13 = [v12 accessibilityViewBoundsContainsPathPoint:{v8, v9}];

  v14 = *(*(a1 + 64) + 8);
  if (v13)
  {
    *(v14 + 24) = 0;
LABEL_7:
    if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || *(a1 + 80) < 2)
    {
      [*(a1 + 48) addLineToPoint:{v8, v9}];
    }

    else
    {
      v15 = [*(a1 + 40) objectAtIndex:1];
      [v15 CGPointValue];
      v16 = *(*(a1 + 56) + 8);
      *(v16 + 48) = v17;
      *(v16 + 56) = v18;

      [*(a1 + 48) moveToPoint:{v8, v9}];
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    v73 = 0.0;
    v74 = 0.0;
    v75.x = v8;
    v75.y = v9;
    AXVKMathGetVectorAndDistanceForPoints(&v74, &v73, *(*(*(a1 + 56) + 8) + 48), v75);
    v19 = a3 == 0;
    v20 = dbl_29C71B620[v19] + v74;
    if (v20 <= 360.0)
    {
      v21 = dbl_29C71B620[v19] + v74;
    }

    else
    {
      v21 = v20 + -360.0;
    }

    v22 = v21 * 0.0174532924;
    v23 = __sincosf_stret(v22);
    v24 = *(a1 + 112);
    v25 = *(a1 + 116);
    v72[0] = v8 + (v24 * v23.__cosval);
    v72[1] = v9 + (v24 * v23.__sinval);
    v60 = v9;
    v71[0] = v8 + (v23.__cosval * v25);
    v71[1] = v9 + (v23.__sinval * v25);
    v26 = v8;
    v27 = *(a1 + 120);
    v70[0] = v26 + (v23.__cosval * v27);
    v70[1] = v60 + (v23.__sinval * v27);
    v28 = dbl_29C71B630[v19] + v21;
    if (v28 < 0.0)
    {
      v28 = v28 + 360.0;
    }

    v74 = v28;
    v29 = v28 * 0.0174532924;
    v30 = __sincosf_stret(v29);
    v69[0] = v26 + (v24 * v30.__cosval);
    v69[1] = v60 + (v24 * v30.__sinval);
    v68[0] = v26 + (v25 * v30.__cosval);
    v68[1] = v60 + (v25 * v30.__sinval);
    v67[0] = v26 + (v30.__cosval * v27);
    v67[1] = v60 + (v30.__sinval * v27);
    if (CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
    {
      v31 = v72;
    }

    else
    {
      v31 = MEMORY[0x29EDB90B8];
    }

    v65 = *v31;
    if (CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
    {
      v32 = v69;
    }

    else
    {
      v32 = MEMORY[0x29EDB90B8];
    }

    v66 = *v32;
    if (CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
    {
      v33 = v71;
    }

    else
    {
      v33 = MEMORY[0x29EDB90B8];
    }

    v63 = *v33;
    if (CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
    {
      v34 = v68;
    }

    else
    {
      v34 = MEMORY[0x29EDB90B8];
    }

    v64 = *v34;
    if (CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
    {
      v35 = v70;
    }

    else
    {
      v35 = MEMORY[0x29EDB90B8];
    }

    v61 = *v35;
    if (CGFloatIsValid() && (CGFloatIsValid() & 1) != 0)
    {
      v36 = v67;
    }

    else
    {
      v36 = MEMORY[0x29EDB90B8];
    }

    v62 = *v36;
    Count = AXCArrayGetCount();
    _AXCArrayPrepareForInsertingElementAtIndex();
    v38 = (_AXCArrayGetUnderlyingArray() + 32 * Count);
    *v38 = v65;
    v38[1] = v66;
    v39 = AXCArrayGetCount();
    _AXCArrayPrepareForInsertingElementAtIndex();
    v40 = (_AXCArrayGetUnderlyingArray() + 32 * v39);
    *v40 = v63;
    v40[1] = v64;
    v41 = AXCArrayGetCount();
    _AXCArrayPrepareForInsertingElementAtIndex();
    v42 = (_AXCArrayGetUnderlyingArray() + 32 * v41);
    *v42 = v61;
    v42[1] = v62;
    v43 = *(*(a1 + 56) + 8);
    *(v43 + 48) = v26;
    *(v43 + 56) = v60;
    goto LABEL_43;
  }

  if (*(v14 + 24))
  {
    *(v14 + 24) = 1;
    goto LABEL_43;
  }

  v44 = [*(a1 + 32) accessibilityContainer];
  [v44 accessibilityVisibleAXViewBounds];

  v45 = *(*(a1 + 56) + 8);
  v46 = *(v45 + 48);
  v47 = *(v45 + 56);
  v48 = MEMORY[0x29EDB90B8];
  v49 = *MEMORY[0x29EDB90B8];
  v50 = *(MEMORY[0x29EDB90B8] + 8);
  v51 = *MEMORY[0x29EDB90B8] == v46 && v50 == v47;
  if (v51 && [*(a1 + 40) count] - 1 > a3)
  {
    v52 = [*(a1 + 40) objectAtIndex:a3 + 1];
    [v52 CGPointValue];
    v46 = v53;
    v47 = v54;
  }

  v55 = [*(a1 + 32) accessibilityContainer];
  v56 = [v55 accessibilityViewBoundsContainsPathPoint:{v46, v47}];

  if (v56)
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v46, v47);
    CGPathAddLineToPoint(Mutable, 0, v8, v9);
    AX_CGPathGetIntersectionPointWithRect();
    if (v58 != 3.40282347e38 && (*v48 != v58 || v48[1] != v59))
    {
      v9 = v59;
      v8 = v58;
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    CGPathRelease(Mutable);
    goto LABEL_7;
  }

LABEL_43:
}

- (id)accessibilityPaths
{
  v3 = [(VKFeatureAccessibilityElement *)self paths];
  v4 = [v3 count];

  if (!v4)
  {
    [(VKRoadFeatureAccessibilityElement *)self _updatePath];
  }

  return [(VKFeatureAccessibilityElement *)self paths];
}

- (CGRect)accessibilityFrame
{
  v3 = [(VKFeatureAccessibilityElement *)self paths];
  v4 = [v3 count];

  if (!v4)
  {
    [(VKRoadFeatureAccessibilityElement *)self _updatePath];
  }

  v18.receiver = self;
  v18.super_class = VKRoadFeatureAccessibilityElement;
  v5 = [(VKRoadFeatureAccessibilityElement *)&v18 accessibilityUserDefinedFrame];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (float)_accessibilityDistance:(CGPoint)a3 forAngle:(float)a4 toRoad:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
  *&v11 = a4;
  [v10 accessibilityDistance:v9 forAngle:self toRoad:x withElement:{y, v11}];
  v13 = v12;

  return v13;
}

- (id)_accessibilityUpcomingRoadsForPoint:(CGPoint)a3 forAngle:(float)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
  *&v9 = a4;
  v10 = [v8 accessibilityUpcomingRoadsForPoint:self forAngle:x withElement:{y, v9}];

  return v10;
}

- (void)_accessibilityMapsExplorationBeginFromCurrentElement
{
  v4 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
  v3 = [v4 accessibilityElementManager];
  [v3 accessibilityMapsExplorationBeginFromRoad:self];
}

- (NSArray)consolidatedAndOrderedFeatures
{
  v34 = *MEMORY[0x29EDCA608];
  consolidatedAndOrderedFeatures = self->_consolidatedAndOrderedFeatures;
  if (consolidatedAndOrderedFeatures)
  {
    v3 = consolidatedAndOrderedFeatures;
  }

  else
  {
    v21 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [(VKFeatureAccessibilityElement *)self featureSet];
    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v22 = *v29;
      do
      {
        v23 = v6;
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v9 = [(VKFeatureAccessibilityElement *)self pointsFromFeatureWrapper:v8];
          v10 = [v9 mutableCopy];

          if ([v10 count])
          {
            [v21 addObject:v10];
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              v13 = *v25;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v25 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v24 + 1) + 8 * j);
                  v16 = [(VKFeatureAccessibilityElement *)self pointToFeatureDict];
                  [v16 setObject:v8 forKey:v15];
                }

                v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v12);
            }
          }
        }

        v5 = obj;
        v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }

    v17 = [(VKRoadFeatureAccessibilityElement *)self consolidatedAndOrderedFeaturesFromAllFeaturePoints:v21];
    v18 = self->_consolidatedAndOrderedFeatures;
    self->_consolidatedAndOrderedFeatures = v17;

    v3 = self->_consolidatedAndOrderedFeatures;
  }

  return v3;
}

- (id)consolidatedAndOrderedFeaturesFromAllFeaturePoints:(id)a3
{
  v49 = *MEMORY[0x29EDCA608];
  v43 = a3;
  v42 = objc_opt_new();
LABEL_2:
  if ([v43 count])
  {
    v3 = [v43 firstObject];
    [v43 removeObject:v3];
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = v43;
    v6 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = *v45;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [v3 firstObject];
        [v10 CGPointValue];
        v12 = v11;
        v14 = v13;

        v15 = [v3 lastObject];
        [v15 CGPointValue];
        v17 = v16;
        v19 = v18;

        v20 = [v9 firstObject];
        [v20 CGPointValue];
        v22 = v21;
        v24 = v23;

        v25 = [v9 lastObject];
        [v25 CGPointValue];
        v27 = v26;
        v29 = v28;

        if (v12 == v22 && v14 == v24)
        {
          v30 = [v3 reverseObjectEnumerator];
          v31 = [v30 allObjects];
          v32 = [v31 mutableCopy];

          v33 = v9;
          goto LABEL_14;
        }

        if (v12 == v27 && v14 == v29)
        {
          v34 = [v3 reverseObjectEnumerator];
          v35 = [v34 allObjects];
          v32 = [v35 mutableCopy];

          v36 = [v9 reverseObjectEnumerator];
          v37 = [v36 allObjects];
          v33 = [v37 mutableCopy];

LABEL_14:
          v3 = v32;
LABEL_15:
          [v33 removeObjectAtIndex:0];
          [v3 addObjectsFromArray:v33];
          [v4 addObject:v9];
          goto LABEL_16;
        }

        if (v17 == v22 && v19 == v24)
        {
          v33 = v9;
          goto LABEL_15;
        }

        v33 = 0;
        if (v17 == v27 && v19 == v29)
        {
          v38 = [v9 reverseObjectEnumerator];
          v39 = [v38 allObjects];
          v33 = [v39 mutableCopy];

          goto LABEL_15;
        }

LABEL_16:

        ++v8;
      }

      while (v6 != v8);
      v40 = [v5 countByEnumeratingWithState:&v44 objects:v48 count:16];
      v6 = v40;
      if (!v40)
      {
LABEL_25:

        [v5 removeObjectsInArray:v4];
        [v42 addObject:v3];

        goto LABEL_2;
      }
    }
  }

  return v42;
}

- (AXVKFeaturePointIndices)featureAndPointIndicesForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKRoadFeatureAccessibilityElement *)self consolidatedAndOrderedFeatures];
  v7 = [v6 count];
  if (v7 < 1)
  {
    v9 = -1;
    v11 = -1;
  }

  else
  {
    v8 = 0;
    v9 = -1;
    v10 = 1.79769313e308;
    v11 = -1;
    while (1)
    {
      v12 = [v6 objectAtIndex:v8];
      v13 = [v12 count];
      if (v13 >= 1)
      {
        break;
      }

LABEL_10:

      if (++v8 == v7)
      {
        goto LABEL_14;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = [v12 objectAtIndex:v14];
      [v15 CGPointValue];
      v17 = v16;
      v19 = v18;

      if (vabdd_f64(x, v17) < 0.001 && vabdd_f64(y, v19) < 0.001)
      {
        break;
      }

      v20 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
      [v20 accessibilityRealDistanceBetweenPoint:x screenPoint2:{y, v17, v19}];
      v22 = v21;

      if (v10 > v22)
      {
        v11 = v8;
        v9 = v14;
        v10 = v22;
      }

      if (v13 == ++v14)
      {
        goto LABEL_10;
      }
    }

    v9 = v14;
    v11 = v8;
  }

LABEL_14:

  v23 = v11;
  v24 = v9;
  result.var1 = v24;
  result.var0 = v23;
  return result;
}

- (id)adjacentIntersectorsForPoint:(CGPoint)a3 isStart:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(VKRoadFeatureAccessibilityElement *)self accessibilitySortedIntersectorsForPoint:?];
  v9 = [(VKRoadFeatureAccessibilityElement *)self accessibilityViableIntersectorsForPoint:v8 fromSortedArray:v4 isStart:x, y];

  return v9;
}

- (id)accessibilitySortedIntersectorsForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
  v7 = [v6 accessibilityIntersectorsForRoad:self withPoint:{x, y}];

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __77__VKRoadFeatureAccessibilityElement_accessibilitySortedIntersectorsForPoint___block_invoke;
  v10[3] = &unk_29F3185B0;
  v10[4] = self;
  *&v10[5] = x;
  *&v10[6] = y;
  v8 = [v7 sortedArrayUsingComparator:v10];

  return v8;
}

uint64_t __77__VKRoadFeatureAccessibilityElement_accessibilitySortedIntersectorsForPoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isDeadEnd])
  {
    v7 = 1;
  }

  else if ([v6 isDeadEnd])
  {
    v7 = -1;
  }

  else
  {
    v8 = [*(a1 + 32) accessibilityContainer];
    [v5 coordinates];
    [v8 accessibilityConvertCoordinateToWindow:?];
    v10 = v9;
    v12 = v11;
    [v6 coordinates];
    [v8 accessibilityConvertCoordinateToWindow:?];
    v14 = v13;
    v16 = v15;
    v19.x = v10;
    v19.y = v12;
    DistanceBetweenPoints = AXVKMathGetDistanceBetweenPoints(*(a1 + 40), v19);
    v20.x = v14;
    v20.y = v16;
    if (DistanceBetweenPoints >= AXVKMathGetDistanceBetweenPoints(*(a1 + 40), v20))
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (id)accessibilityViableIntersectorsForPoint:(CGPoint)a3 fromSortedArray:(id)a4 isStart:(BOOL)a5
{
  v33 = a5;
  y = a3.y;
  x = a3.x;
  v40 = *MEMORY[0x29EDCA608];
  obj = a4;
  v8 = objc_opt_new();
  if ([obj count])
  {
    v9 = [obj subarrayWithRange:{!v33, objc_msgSend(obj, "count") - !v33}];

    v10 = [(VKRoadFeatureAccessibilityElement *)self featureAndPointIndicesForPoint:x, y];
    v12 = v11;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v9;
    v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v13)
    {
      v14 = *v36;
      v15 = -1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
          [v17 coordinates];
          [v18 accessibilityConvertCoordinateToWindow:?];
          v20 = v19;
          v22 = v21;

          if ((vabdd_f64(x, v20) >= 0.001 || vabdd_f64(y, v22) >= 0.001) && [(VKRoadFeatureAccessibilityElement *)self featureAndPointIndicesForPoint:v20, v22]== v10)
          {
            v24 = v23;
            if ([v8 count] != 1 || (v15 <= v12 || v24 <= v12) && (v15 >= v12 || v24 >= v12))
            {
              [v8 addObject:v17];
              if (v33 && [v8 count] || objc_msgSend(v8, "count") == 2)
              {
                goto LABEL_22;
              }

              if ([v8 count] == 1)
              {
                v25 = [v8 firstObject];
                v26 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
                [v25 coordinates];
                [v26 accessibilityConvertCoordinateToWindow:?];
                v28 = v27;
                v30 = v29;

                [(VKRoadFeatureAccessibilityElement *)self featureAndPointIndicesForPoint:v28, v30];
                v15 = v31;
              }
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

LABEL_22:
  }

  return v8;
}

- (float)_accessibilityDistanceFromEndOfRoad:(CGPoint)a3 forAngle:(float)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
  *&v9 = a4;
  [v8 accessibilityDistanceToEndOfRoad:self forAngle:x withElement:{y, v9}];
  v11 = v10;

  return v11;
}

- (BOOL)_accessibilityRoadContainsTrackingPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v24 = *MEMORY[0x29EDCA608];
  self->_lastHitTestNearBorder = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_gutterPaths;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v25.x = x;
        v25.y = y;
        if (CGPathContainsPoint(*(*(&v18 + 1) + 8 * i), 0, v25, 0))
        {
          LOBYTE(v10) = 1;
          goto LABEL_20;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_expandedPaths;
  v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v26.x = x;
        v26.y = y;
        if (CGPathContainsPoint(*(*(&v14 + 1) + 8 * j), 0, v26, 0))
        {
          LOBYTE(v10) = 1;
          self->_lastHitTestNearBorder = 1;
          goto LABEL_20;
        }
      }

      v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v10;
}

- (id)_roadLength
{
  v30 = *MEMORY[0x29EDCA608];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(VKFeatureAccessibilityElement *)self featureSet];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(VKFeatureAccessibilityElement *)self pointsFromFeatureWrapper:*(*(&v25 + 1) + 8 * i)];
        v9 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
        v10 = [v8 objectAtIndex:0];
        [v10 CGPointValue];
        v12 = v11;
        v14 = v13;
        v15 = [v8 lastObject];
        [v15 CGPointValue];
        [v9 accessibilityRealDistanceBetweenPoint:v12 screenPoint2:{v14, v16, v17}];
        LODWORD(v12) = v18;

        v6 = v6 + *&v12;
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v19 = [MEMORY[0x29EDB8DE0] currentLocale];
  v20 = [v19 _navigation_distanceUsesMetricSystem];

  if (v20)
  {
    v21 = AXVectorKitLocString(@"ROAD_DISTANCE_KM");
    v22 = v6 / 1000.0;
  }

  else
  {
    v21 = AXVectorKitLocString(@"ROAD_DISTANCE_M");
    v22 = v6 / 1609.344;
  }

  v23 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v21, v22];

  return v23;
}

- (id)detailedFeatureElementInfoAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKRoadFeatureAccessibilityElement *)self _nearestIntersectionForPoint:?];
  v7 = [(VKRoadFeatureAccessibilityElement *)self _roadLength];
  v10 = [(VKRoadFeatureAccessibilityElement *)self _nearestPOIsForPoint:x, y];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x29EDCA608];
  [(VKRoadFeatureAccessibilityElement *)self accessibilityFrame];
  v20 = CGRectInset(v19, -40.0, -40.0);
  v20.origin.x = v20.origin.x + -20.0;
  v20.origin.y = v20.origin.y + -20.0;
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v20, v18))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(VKFeatureAccessibilityElement *)self paths];
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

- (id)_nearestIntersectionForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x29EDCA608];
  [(VKRoadFeatureAccessibilityElement *)self intersectingRoads];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v7 = v5;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = *v24;
  v9 = 3.4028e38;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [v11 objectAtIndex:1];
      [v12 CGPointValue];
      v14 = v13;
      v16 = v15;

      v30.x = x;
      v30.y = y;
      v31.x = v14;
      v31.y = v16;
      DistanceBetweenPoints = AXVKMathGetDistanceBetweenPoints(v30, v31);
      if (DistanceBetweenPoints < v9)
      {
        v18 = [v11 objectAtIndex:0];

        v9 = DistanceBetweenPoints;
        v7 = v18;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v6);

  if (v7)
  {
    v19 = MEMORY[0x29EDBA0F8];
    v20 = AXVectorKitLocString(@"NEAREST_INTERSECTION");
    v21 = [v7 accessibilityLabel];
    v6 = [v19 localizedStringWithFormat:v20, v21];

LABEL_13:
    goto LABEL_15;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (id)_roadDirectionDescription
{
  v3 = [(VKRoadFeatureAccessibilityElement *)self roadDirection];

  if (v3)
  {
    goto LABEL_30;
  }

  v4 = [MEMORY[0x29EDB8DE8] array];
  v5 = [(VKFeatureAccessibilityElement *)self featureSet];
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __62__VKRoadFeatureAccessibilityElement__roadDirectionDescription__block_invoke;
  v31[3] = &unk_29F3185D8;
  v31[4] = self;
  v6 = v4;
  v32 = v6;
  [v5 enumerateObjectsUsingBlock:v31];

  v7 = [(VKRoadFeatureAccessibilityElement *)self accessibilityContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v21 = @"Access to the map view is required to compute road direction";
    LOBYTE(v20) = 1;
    _AXLogWithFacility();
    goto LABEL_29;
  }

  [v7 accessibilityYaw];
  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x5012000000;
  v26 = __Block_byref_object_copy__658;
  v27 = __Block_byref_object_dispose__659;
  v28 = &unk_29C723C02;
  v29 = 0u;
  v30 = 0u;
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __62__VKRoadFeatureAccessibilityElement__roadDirectionDescription__block_invoke_661;
  v22[3] = &unk_29F318600;
  *&v22[5] = v9;
  v22[4] = &v23;
  [v6 enumerateObjectsUsingBlock:v22];
  v11 = v24[6];
  v10 = v24[7];
  if (v11 <= v10)
  {
    v12 = v24[7];
  }

  else
  {
    v12 = v24[6];
  }

  v14 = v24[8];
  v13 = v24[9];
  if (v14 <= v13)
  {
    v15 = v24[9];
  }

  else
  {
    v15 = v24[8];
  }

  if (v12 <= v15)
  {
    v12 = v15;
  }

  if (v12 / (v11 + v10 + v14 + v13) >= 0.75)
  {
    if (v11 == v12)
    {
      v16 = AXVectorKitLocString(@"ROAD_DIRECTION_EW");
      [(VKRoadFeatureAccessibilityElement *)self setRoadDirection:v16];
LABEL_25:

      goto LABEL_26;
    }

    if (v10 == v12)
    {
      v16 = AXVectorKitLocString(@"ROAD_DIRECTION_NS");
      [(VKRoadFeatureAccessibilityElement *)self setRoadDirection:v16];
      goto LABEL_25;
    }

    if (v14 == v12)
    {
      v16 = AXVectorKitLocString(@"ROAD_DIRECTION_NE-SW");
      [(VKRoadFeatureAccessibilityElement *)self setRoadDirection:v16];
      goto LABEL_25;
    }

    if (v13 == v12)
    {
      v16 = AXVectorKitLocString(@"ROAD_DIRECTION_NW-SE");
      [(VKRoadFeatureAccessibilityElement *)self setRoadDirection:v16];
      goto LABEL_25;
    }
  }

LABEL_26:
  v17 = [(VKRoadFeatureAccessibilityElement *)self roadDirection];

  if (!v17)
  {
    [(VKRoadFeatureAccessibilityElement *)self setRoadDirection:&stru_2A2395E90];
  }

  _Block_object_dispose(&v23, 8);
LABEL_29:

  if (isKindOfClass)
  {
LABEL_30:
    v18 = [(VKRoadFeatureAccessibilityElement *)self roadDirection:v20];
    goto LABEL_31;
  }

  v18 = 0;
LABEL_31:

  return v18;
}

void __62__VKRoadFeatureAccessibilityElement__roadDirectionDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pointsFromFeatureWrapper:a2];
  [*(a1 + 40) addObject:?];
}

void __62__VKRoadFeatureAccessibilityElement__roadDirectionDescription__block_invoke_661(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] >= 2)
  {
    v4 = [v3 count];
    if (v4)
    {
      v5 = 0;
      v23 = 330.0;
      do
      {
        v6 = [v3 objectAtIndexedSubscript:{v5, *&v23}];
        [v6 CGPointValue];
        v8 = v7;
        v10 = v9;
        v11 = v5 + 1;

        if (v5 + 1 >= v4)
        {
          v12 = v5 - 1;
        }

        else
        {
          v12 = v5 + 1;
        }

        v13 = [v3 objectAtIndexedSubscript:v12];
        [v13 CGPointValue];
        v15 = v14;
        v17 = v16;

        v26.y = -v10;
        v27.y = -v17;
        v24 = 0.0;
        v25 = 0.0;
        v26.x = v8;
        v27.x = v15;
        AXVKMathGetVectorAndDistanceForPoints(&v25, &v24, v26, v27);
        v18 = *(a1 + 40) + 360.0 - v25 + dbl_29C71B5B0[360.0 - v25 >= 270.0];
        if (v18 > 360.0)
        {
          v18 = v18 + -360.0;
        }

        if (v18 <= 90.0 || v18 > 180.0)
        {
          if (v18 < 270.0 && v18 > 180.0)
          {
            v18 = v18 + -180.0;
          }
        }

        else
        {
          v18 = v18 + 180.0;
        }

        if ((v18 < 270.0 || v18 >= 300.0) && (v18 <= 60.0 || v18 > 90.0))
        {
          if (v18 > v23 && v18 <= 360.0 || (v18 >= 0.0 ? (v21 = v18 < 30.0) : (v21 = 0), v21))
          {
            v20 = 56;
          }

          else if (v18 < 30.0 || v18 > 60.0)
          {
            if (v18 < 300.0 || v18 > v23)
            {
              goto LABEL_23;
            }

            v20 = 72;
          }

          else
          {
            v20 = 64;
          }
        }

        else
        {
          v20 = 48;
        }

        *(*(*(a1 + 32) + 8) + v20) = v24 + *(*(*(a1 + 32) + 8) + v20);
LABEL_23:
        v5 = v11;
      }

      while (v4 != v11);
    }
  }
}

@end