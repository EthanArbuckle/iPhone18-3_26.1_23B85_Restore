@interface AXMLElementCoagulation
+ (id)sharedInstance;
- (AXMLElementCoagulation)init;
- (BOOL)_allTabGroupsHaveSingleSubfeature:(id)subfeature;
- (BOOL)_hasXOverlap:(CGRect)overlap obj2:(CGRect)obj2;
- (BOOL)_hasYOverlap:(CGRect)overlap obj2:(CGRect)obj2;
- (BOOL)_isInTopBar:(id)bar;
- (BOOL)_shouldBeTabBar:(BOOL)bar groupedTabButtons:(id)buttons;
- (CGRect)appFrame;
- (CGSize)canvasSize;
- (double)_getXOverlap:(CGRect)overlap obj2:(CGRect)obj2;
- (double)_getYOverlap:(CGRect)overlap obj2:(CGRect)obj2;
- (id)_applyCrossUITypeNMS:(id)s;
- (id)_applyHorizontalMirrorToFeatures:(id)features;
- (id)_compareForX:(id)x;
- (id)_compareForY:(id)y;
- (id)_createToggleGroup:(id)group toGroup:(id)toGroup;
- (id)_featuresByReorderingTwoRows:(id)rows minY:(double)y maxY:(double)maxY;
- (id)_flattenFeatures:(id)features;
- (id)_getCandidateTabBarFeatures:(id)features screenSize:(CGSize)size;
- (id)_getClickableTextButtons:(id)buttons;
- (id)_getClosestDetectionBelow:(id)below target:(id)target maxDistance:(int64_t)distance;
- (id)_getFeaturesForAXMLTabButtonGroups:(id)groups;
- (id)_getFlattenedChildFeatures:(id)features;
- (id)_getGroupedPictureAndSubtitleFeature:(id)feature;
- (id)_getGroupedSegmentedControlFeatures:(id)features;
- (id)_getGroupedTabBarFeatures:(id)features;
- (id)_getGroupedTextButtonFeatures:(id)features;
- (id)_getGroupedTextFeatures:(id)features;
- (id)_getGroupedTextFields:(id)fields;
- (id)_getGroupedToggleCheckboxWithText:(id)text;
- (id)_getHorizontalSegmentationPointDict:(id)dict;
- (id)_getTabGroupSubfeatureUIClassTypes:(id)types;
- (id)_getTopLevelFeatureGroups:(id)groups;
- (id)_groupFeatures:(id)features;
- (id)_groupFeaturesByContainment:(id)containment;
- (id)_groupSingleContainerAsButton:(id)button featureToGroup:(id)group;
- (id)_mergeTopLeftButton:(id)button;
- (id)_removeExtraOCRAndIconFromTextField:(id)field;
- (id)_removeTextContainingOnlyToggles:(id)toggles toggleCheckboxTypes:(id)types;
- (id)_reorderByXCut:(id)cut;
- (id)_reorderByYCut:(id)cut;
- (id)_reorderSimilarTopNeighbors:(id)neighbors;
- (id)_reorderedTabsForSortedFeatures:(id)features screenSize:(CGSize)size;
- (id)_repairTextInTabItems:(id)items;
- (id)coagulateElements:(id)elements;
- (int64_t)_compareX:(CGRect)x frame2:(CGRect)frame2;
- (int64_t)_compareY:(CGRect)y frame2:(CGRect)frame2;
- (void)_improveFeatureFrames:(id)frames;
- (void)_mergeFeatureIntoGroup:(id)group feature:(id)feature;
- (void)_removeFeatureFromGroup:(id)group feature:(id)feature;
@end

@implementation AXMLElementCoagulation

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[AXMLElementCoagulation sharedInstance];
  }

  v3 = sharedInstance_Coagulator;

  return v3;
}

void __40__AXMLElementCoagulation_sharedInstance__block_invoke()
{
  v0 = [[AXMLElementCoagulation alloc] init];
  v1 = sharedInstance_Coagulator;
  sharedInstance_Coagulator = v0;
}

- (AXMLElementCoagulation)init
{
  v12.receiver = self;
  v12.super_class = AXMLElementCoagulation;
  v2 = [(AXMLElementCoagulation *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = MEMORY[0x1E695DF20];
    v5 = [v3 pathForResource:@"AXMLElementProperties" ofType:@"plist"];
    v6 = [v4 dictionaryWithContentsOfFile:v5];

    v7 = [v6 objectForKeyedSubscript:@"clickable_text_keywords"];
    clickableTextKeywords = v2->_clickableTextKeywords;
    v2->_clickableTextKeywords = v7;

    v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[^[a-z]]" options:1 error:0];
    nonAlphaCharactersRegex = v2->_nonAlphaCharactersRegex;
    v2->_nonAlphaCharactersRegex = v9;

    v2->_isiPad = AXDeviceIsPad();
  }

  return v2;
}

- (BOOL)_hasXOverlap:(CGRect)overlap obj2:(CGRect)obj2
{
  height = obj2.size.height;
  width = obj2.size.width;
  y = obj2.origin.y;
  x = obj2.origin.x;
  v8 = overlap.size.height;
  v9 = overlap.size.width;
  v10 = overlap.origin.y;
  v11 = overlap.origin.x;
  MinX = CGRectGetMinX(overlap);
  v17.origin.x = v11;
  v17.origin.y = v10;
  v17.size.width = v9;
  v17.size.height = v8;
  MaxX = CGRectGetMaxX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetMinX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = MinX < CGRectGetMaxX(v19);
  return MaxX > v13 && v14;
}

- (double)_getXOverlap:(CGRect)overlap obj2:(CGRect)obj2
{
  height = obj2.size.height;
  width = obj2.size.width;
  y = obj2.origin.y;
  x = obj2.origin.x;
  v8 = overlap.size.height;
  v9 = overlap.size.width;
  v10 = overlap.origin.y;
  v11 = overlap.origin.x;
  MinX = CGRectGetMinX(overlap);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v14 = CGRectGetMinX(v16);
  v17.origin.x = v11;
  v17.origin.y = v10;
  v17.size.width = v9;
  v17.size.height = v8;
  MaxX = CGRectGetMaxX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  return fmax(fmin(MaxX, CGRectGetMaxX(v18)) - fmax(MinX, v14) + 1.0, 0.0);
}

- (BOOL)_hasYOverlap:(CGRect)overlap obj2:(CGRect)obj2
{
  height = obj2.size.height;
  width = obj2.size.width;
  y = obj2.origin.y;
  x = obj2.origin.x;
  v8 = overlap.size.height;
  v9 = overlap.size.width;
  v10 = overlap.origin.y;
  v11 = overlap.origin.x;
  MinY = CGRectGetMinY(overlap);
  v17.origin.x = v11;
  v17.origin.y = v10;
  v17.size.width = v9;
  v17.size.height = v8;
  MaxY = CGRectGetMaxY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v14 = MinY < CGRectGetMaxY(v19);
  return MaxY > v13 && v14;
}

- (double)_getYOverlap:(CGRect)overlap obj2:(CGRect)obj2
{
  height = obj2.size.height;
  width = obj2.size.width;
  y = obj2.origin.y;
  x = obj2.origin.x;
  v8 = overlap.size.height;
  v9 = overlap.size.width;
  v10 = overlap.origin.y;
  v11 = overlap.origin.x;
  MinY = CGRectGetMinY(overlap);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v14 = CGRectGetMinY(v16);
  v17.origin.x = v11;
  v17.origin.y = v10;
  v17.size.width = v9;
  v17.size.height = v8;
  MaxY = CGRectGetMaxY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  return fmax(fmin(MaxY, CGRectGetMaxY(v18)) - fmax(MinY, v14) + 1.0, 0.0);
}

- (id)coagulateElements:(id)elements
{
  v86 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  [(AXMLElementCoagulation *)self screenScale];
  v6 = v5;
  [(AXMLElementCoagulation *)self appFrame];
  v8 = v6 * v7;
  [(AXMLElementCoagulation *)self screenScale];
  v10 = v9;
  [(AXMLElementCoagulation *)self appFrame];
  [(AXMLElementCoagulation *)self setCanvasSize:v8, v10 * v11];
  if (([(AXMLElementCoagulation *)self appOrientation]- 3) <= 1)
  {
    [(AXMLElementCoagulation *)self canvasSize];
    v13 = v12;
    [(AXMLElementCoagulation *)self canvasSize];
    [(AXMLElementCoagulation *)self setCanvasSize:v13, v14];
  }

  v15 = [elementsCopy ax_filteredArrayUsingBlock:&__block_literal_global_117];
  if ([v15 count])
  {
    v71 = elementsCopy;
    v16 = [(AXMLElementCoagulation *)self _applyCrossUITypeNMS:v15];

    [(AXMLElementCoagulation *)self screenScale];
    v18 = v17;
    [(AXMLElementCoagulation *)self appFrame];
    v20 = v18 * v19;
    [(AXMLElementCoagulation *)self screenScale];
    v22 = v21;
    [(AXMLElementCoagulation *)self appFrame];
    v24 = [(AXMLElementCoagulation *)self _getCandidateTabBarFeatures:v16 screenSize:v20, v22 * v23];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __44__AXMLElementCoagulation_coagulateElements___block_invoke_2;
    v82[3] = &unk_1E7A1DBB0;
    v83 = v24;
    v25 = v24;
    v69 = v16;
    v26 = [v16 ax_filteredArrayUsingBlock:v82];
    v27 = [v26 mutableCopy];

    v28 = [(AXMLElementCoagulation *)self _repairTextInTabItems:v25];

    v67 = v28;
    v29 = [(AXMLElementCoagulation *)self _getAXMLElementGroupsForFeatures:v28];
    v30 = [(AXMLElementCoagulation *)self _sortFeaturesReadingOrder:v29];

    v31 = [(AXMLElementCoagulation *)self _getGroupedTabBarFeatures:v30];
    selfCopy = self;
    v68 = v27;
    v32 = [(AXMLElementCoagulation *)self _getAXMLElementGroupsForFeatures:v27];
    v33 = [v32 mutableCopy];

    if ([v30 count] && !objc_msgSend(v31, "count"))
    {
      [v33 addObjectsFromArray:v30];
    }

    v66 = v30;
    array = [MEMORY[0x1E695DF70] array];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v33;
    v35 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
    if (v35)
    {
      v36 = v35;
      v73 = *v79;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v79 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v78 + 1) + 8 * i);
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v39 = v31;
          v40 = v31;
          v41 = [v40 countByEnumeratingWithState:&v74 objects:v84 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v75;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v75 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                [*(*(&v74 + 1) + 8 * j) frame];
                v46 = v45;
                v48 = v47;
                v50 = v49;
                v52 = v51;
                [v38 frame];
                if (AXMIsContainedBy(v46, v48, v50, v52, v53, v54, v55, v56, 0.7))
                {
                  [array addObject:v38];
                }
              }

              v42 = [v40 countByEnumeratingWithState:&v74 objects:v84 count:16];
            }

            while (v42);
          }

          v31 = v39;
        }

        v36 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
      }

      while (v36);
    }

    [obj removeObjectsInArray:array];
    v57 = [(AXMLElementCoagulation *)selfCopy _groupFeatures:obj];
    v58 = [(AXMLElementCoagulation *)selfCopy _flattenFeatures:v57];

    v59 = [v58 ax_filteredArrayUsingBlock:&__block_literal_global_120];

    [(AXMLElementCoagulation *)selfCopy _improveFeatureFrames:v59];
    if ([(AXMLElementCoagulation *)selfCopy isRTL])
    {
      reverseObjectEnumerator = [v31 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v31 = allObjects;
    }

    elementsCopy = v71;
    v62 = [v59 arrayByAddingObjectsFromArray:v31];

    v63 = [v62 ax_mappedArrayUsingBlock:&__block_literal_global_123_0];

    v64 = v63;
  }

  else
  {
    v64 = v15;
  }

  return v64;
}

BOOL __44__AXMLElementCoagulation_coagulateElements___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ([*(a1 + 32) containsObject:v3] & 1) == 0 && objc_msgSend(v3, "uiClass") != 10;

  return v4;
}

BOOL __44__AXMLElementCoagulation_coagulateElements___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature];
  if ([v3 uiClass] == 3)
  {
    v4 = [v2 feature];
    v5 = [v4 subfeatures];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

AXMMLElementGroup *__59__AXMLElementCoagulation__getAXMLElementGroupsForFeatures___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(AXMMLElementGroup);
  [(AXMMLElementGroup *)v3 setFeature:v2];
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(AXMMLElementGroup *)v3 setFrame:v5, v7, v9, v11];

  return v3;
}

- (id)_applyCrossUITypeNMS:(id)s
{
  v56[7] = *MEMORY[0x1E69E9840];
  sCopy = s;
  array = [MEMORY[0x1E695DF70] array];
  v55[0] = &unk_1F240A900;
  v55[1] = &unk_1F240A948;
  v56[0] = &unk_1F240B490;
  v56[1] = &unk_1F240B4A8;
  v55[2] = &unk_1F240A918;
  v55[3] = &unk_1F240A930;
  v56[2] = &unk_1F240B4C0;
  v56[3] = &unk_1F240B4D8;
  v55[4] = &unk_1F240A978;
  v55[5] = &unk_1F240A990;
  v56[4] = &unk_1F240B4F0;
  v56[5] = &unk_1F240B508;
  v55[6] = &unk_1F240A9A8;
  v56[6] = &unk_1F240B520;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:7];
  v33 = sCopy;
  [sCopy sortedArrayUsingComparator:&__block_literal_global_163];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v37 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v37)
  {
    v35 = *v50;
    v5 = 0x1E696A000uLL;
    v41 = v4;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v8 = array;
        v44 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (!v44)
        {

LABEL_22:
          [v8 addObject:v7];
          continue;
        }

        v38 = i;
        v42 = v7;
        v43 = *v46;
        v39 = 1;
        v40 = v8;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v46 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v10 = *(*(&v45 + 1) + 8 * j);
            v11 = [*(v5 + 3480) numberWithInteger:{objc_msgSend(v10, "uiClass")}];
            v12 = [v4 objectForKeyedSubscript:v11];
            if (v12)
            {
              v13 = v12;
              v14 = [*(v5 + 3480) numberWithInteger:{objc_msgSend(v10, "uiClass")}];
              v15 = [v4 objectForKeyedSubscript:v14];
              v16 = v5;
              v17 = [*(v5 + 3480) numberWithInteger:{objc_msgSend(v42, "uiClass")}];
              v18 = [v15 indexOfObject:v17];

              if (v18 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v4 = v41;
                v5 = v16;
              }

              else
              {
                [v10 frame];
                v20 = v19;
                v22 = v21;
                v24 = v23;
                v26 = v25;
                [v42 frame];
                AXMIntersectionOverUnion(v20, v22, v24, v26, v27, v28, v29, v30);
                v4 = v41;
                v5 = v16;
                if (v31 > 0.7)
                {
                  v39 = 0;
                }
              }
            }

            else
            {
            }
          }

          v8 = v40;
          v44 = [v40 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v44);

        i = v38;
        v7 = v42;
        if (v39)
        {
          goto LABEL_22;
        }
      }

      v37 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v37);
  }

  return array;
}

uint64_t __47__AXMLElementCoagulation__applyCrossUITypeNMS___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  if (v6 >= 1.0)
  {
    v12 = -1;
  }

  else
  {
    [v5 confidence];
    if (v7 >= 1.0)
    {
      v12 = 1;
    }

    else
    {
      v8 = MEMORY[0x1E696AD98];
      [v4 confidence];
      v9 = [v8 numberWithDouble:?];
      v10 = MEMORY[0x1E696AD98];
      [v5 confidence];
      v11 = [v10 numberWithDouble:?];
      v12 = [v9 compare:v11] == 0;
    }
  }

  return v12;
}

- (BOOL)_isInTopBar:(id)bar
{
  barCopy = bar;
  [barCopy frame];
  MinX = CGRectGetMinX(v25);
  [barCopy frame];
  v6 = MinX + CGRectGetWidth(v26) * 0.5;
  [barCopy frame];
  MinY = CGRectGetMinY(v27);
  [barCopy frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v16 = MinY + CGRectGetHeight(v28) * 0.5;
  [(AXMLElementCoagulation *)self canvasSize];
  v18 = vabdd_f64(v6, v17 * 0.5);
  [(AXMLElementCoagulation *)self canvasSize];
  v20 = v18 < v19 / 10.0;
  [(AXMLElementCoagulation *)self canvasSize];
  v22 = fabs(v16 + v21 / -13.0);
  [(AXMLElementCoagulation *)self canvasSize];
  return v22 < v23 / 20.0 && v20;
}

- (id)_getClickableTextButtons:(id)buttons
{
  buttonsCopy = buttons;
  if ([buttonsCopy count])
  {
    v5 = 0;
    v6 = 0x1E695D000uLL;
    while (1)
    {
      v7 = [buttonsCopy objectAtIndex:v5];
      feature = [v7 feature];
      if ([feature uiClass] != 11 || -[AXMLElementCoagulation _isInTopBar:](self, "_isInTopBar:", v7))
      {
        goto LABEL_10;
      }

      feature2 = [v7 feature];
      value = [feature2 value];
      null = [*(v6 + 4016) null];
      v12 = [value isEqual:null];

      if ((v12 & 1) == 0)
      {
        break;
      }

LABEL_11:

      if (++v5 >= [buttonsCopy count])
      {
        goto LABEL_12;
      }
    }

    nonAlphaCharactersRegex = [(AXMLElementCoagulation *)self nonAlphaCharactersRegex];
    feature3 = [v7 feature];
    value2 = [feature3 value];
    feature4 = [v7 feature];
    value3 = [feature4 value];
    v18 = [nonAlphaCharactersRegex stringByReplacingMatchesInString:value2 options:0 range:0 withTemplate:{objc_msgSend(value3, "length"), &stru_1F23EA908}];

    feature = [v18 lowercaseString];

    if ([feature length])
    {
      clickableTextKeywords = [(AXMLElementCoagulation *)self clickableTextKeywords];
      v20 = [clickableTextKeywords containsObject:feature];

      if (v20)
      {
        [v7 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        feature5 = [v7 feature];
        [feature5 confidence];
        v31 = v30;
        feature6 = [v7 feature];
        value4 = [feature6 value];
        [(AXMLElementCoagulation *)self canvasSize];
        v35 = v34;
        v37 = v36;
        array = [MEMORY[0x1E695DEC8] array];
        v39 = [AXMVisionFeature groupedFeatureWithElementRect:17 uiClass:value4 confidence:array label:v22 canvasSize:v24 subElements:v26, v28, v31, v35, v37];

        [v7 setFeature:v39];
      }
    }

    v6 = 0x1E695D000;
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:

  return buttonsCopy;
}

- (id)_flattenFeatures:(id)features
{
  v20 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = featuresCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [array addObject:{v11, v15}];
        subfeatures = [v11 subfeatures];
        if ([subfeatures count])
        {
          includeChildren = [v11 includeChildren];

          if (!includeChildren)
          {
            continue;
          }

          subfeatures = [(AXMLElementCoagulation *)self _getFlattenedChildFeatures:v11];
          [array addObjectsFromArray:subfeatures];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_getFlattenedChildFeatures:(id)features
{
  v20 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  subfeatures = [featuresCopy subfeatures];
  v7 = [subfeatures countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(subfeatures);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [array addObject:v11];
        subfeatures2 = [v11 subfeatures];
        if ([subfeatures2 count])
        {
          includeChildren = [v11 includeChildren];

          if (!includeChildren)
          {
            continue;
          }

          subfeatures2 = [(AXMLElementCoagulation *)self _getFlattenedChildFeatures:v11];
          [array addObjectsFromArray:subfeatures2];
        }
      }

      v8 = [subfeatures countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_groupFeatures:(id)features
{
  v4 = [(AXMLElementCoagulation *)self _getClickableTextButtons:features];
  v5 = [(AXMLElementCoagulation *)self _sortFeaturesReadingOrder:v4];
  v6 = [v5 mutableCopy];

  v7 = [(AXMLElementCoagulation *)self _getGroupedSegmentedControlFeatures:v6];

  v8 = [(AXMLElementCoagulation *)self _getGroupedTextFields:v7];

  v9 = [(AXMLElementCoagulation *)self _mergeTopLeftButton:v8];

  v10 = [(AXMLElementCoagulation *)self _getGroupedToggleCheckboxWithText:v9];

  v11 = [(AXMLElementCoagulation *)self _getGroupedTextFeatures:v10];

  v12 = [(AXMLElementCoagulation *)self _getGroupedPictureAndSubtitleFeature:v11];

  v13 = [(AXMLElementCoagulation *)self _groupFeaturesByContainment:v12];

  v14 = [(AXMLElementCoagulation *)self _getTopLevelFeatureGroups:v13];

  v15 = [(AXMLElementCoagulation *)self _getGroupedTextButtonFeatures:v14];

  if ([(AXMLElementCoagulation *)self isRTL])
  {
    v16 = [(AXMLElementCoagulation *)self _applyHorizontalMirrorToFeatures:v15];
  }

  v17 = [(AXMLElementCoagulation *)self _reorderByYCut:v15];

  if ([(AXMLElementCoagulation *)self isRTL])
  {
    v18 = [(AXMLElementCoagulation *)self _applyHorizontalMirrorToFeatures:v17];
  }

  return v17;
}

- (id)_applyHorizontalMirrorToFeatures:(id)features
{
  v22 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [featuresCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(featuresCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        [(AXMLElementCoagulation *)self canvasSize];
        v11 = v10;
        [v9 frame];
        v12 = v11 - CGRectGetMinX(v24);
        [v9 frame];
        v13 = v12 - CGRectGetWidth(v25);
        [v9 frame];
        MinY = CGRectGetMinY(v26);
        [v9 frame];
        Width = CGRectGetWidth(v27);
        [v9 frame];
        [v9 setFrame:{v13, MinY, Width, CGRectGetHeight(v28)}];
      }

      v6 = [featuresCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return featuresCopy;
}

- (id)_getGroupedTextFeatures:(id)features
{
  v237 = *MEMORY[0x1E69E9840];
  v192 = [features mutableCopy];
  v4 = [v192 ax_filteredArrayUsingBlock:&__block_literal_global_168];
  v5 = [v4 mutableCopy];

  selfCopy = self;
  v6 = [(AXMLElementCoagulation *)self _compareForY:v5];
  v7 = [v6 mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [v7 count];
  v205 = v7;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0x1E696A000uLL;
  v202 = v10;
  do
  {
    v14 = [v7 objectAtIndex:v12];
    v15 = 0;
    while (1)
    {
      v16 = [v7 objectAtIndex:v15];
      if (v15 > v12)
      {
        [v14 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [v16 frame];
        v29 = [(AXMLElementCoagulation *)selfCopy _hasXOverlap:v18 obj2:v20, v22, v24, v25, v26, v27, v28];
        [v16 frame];
        MinY = CGRectGetMinY(v239);
        [v14 frame];
        v31 = CGRectGetMinY(v240);
        v32 = [array indexOfObject:v16];
        if (v29 && MinY > v31 && v32 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

LABEL_15:

      ++v15;
      v7 = v205;
      if (v11 == v15)
      {
        goto LABEL_18;
      }
    }

    [v14 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v16 frame];
    [(AXMLElementCoagulation *)selfCopy _getXOverlap:v34 obj2:v36, v38, v40, v41, v42, v43, v44];
    v46 = v45;
    [v14 frame];
    Width = CGRectGetWidth(v241);
    [v16 frame];
    if ((Width + CGRectGetWidth(v242) - v46) / v46 <= 2.0)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = 1.5;
    }

    [v16 frame];
    v49 = CGRectGetMinY(v243);
    [v14 frame];
    v50 = v49 - CGRectGetMaxY(v244);
    [v14 frame];
    Height = CGRectGetHeight(v245);
    [v16 frame];
    if (v50 <= fmin(Height, CGRectGetHeight(v246)) / v48)
    {
      v52 = array;
      [array addObject:v16];
      v53 = [*(v13 + 3480) numberWithUnsignedInteger:v12];
      v54 = [dictionary objectForKey:v53];

      if (!v54)
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v56 = [*(v13 + 3480) numberWithUnsignedInteger:v12];
        [dictionary setObject:array2 forKeyedSubscript:v56];
      }

      v57 = [*(v13 + 3480) numberWithUnsignedInteger:v12];
      v58 = [dictionary objectForKey:v57];
      [*(v13 + 3480) numberWithUnsignedInteger:v15];
      v60 = v59 = v13;
      [v58 addObject:v60];

      v13 = v59;
      array = v52;
      v11 = v202;
      goto LABEL_15;
    }

    v7 = v205;
LABEL_18:

    ++v12;
  }

  while (v12 != v11);
LABEL_19:
  v191 = array;
  [dictionary allKeys];
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  obj = v230 = 0u;
  v61 = [obj countByEnumeratingWithState:&v227 objects:v236 count:16];
  if (v61)
  {
    v62 = v61;
    v203 = *v228;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v228 != v203)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v227 + 1) + 8 * i);
        v65 = [dictionary objectForKey:v64];
        if ([v65 count])
        {
          v66 = 0;
          do
          {
            v67 = [v65 objectAtIndex:v66];
            intValue = [v67 intValue];

            v69 = [v7 objectAtIndex:intValue];
            if (++v66 < [v65 count])
            {
              v70 = v66;
              while (1)
              {
                v71 = [v65 objectAtIndex:v70];
                intValue2 = [v71 intValue];

                v73 = [v205 objectAtIndex:intValue2];
                [v69 frame];
                v75 = v74;
                v77 = v76;
                v79 = v78;
                v81 = v80;
                [v73 frame];
                if ([(AXMLElementCoagulation *)selfCopy _hasYOverlap:v75 obj2:v77, v79, v81, v82, v83, v84, v85])
                {
                  [v69 frame];
                  v87 = v86;
                  v89 = v88;
                  v91 = v90;
                  v93 = v92;
                  [v73 frame];
                  if (![(AXMLElementCoagulation *)selfCopy _hasXOverlap:v87 obj2:v89, v91, v93, v94, v95, v96, v97])
                  {
                    break;
                  }
                }

                if (++v70 >= [v65 count])
                {
                  goto LABEL_33;
                }
              }

              array3 = [MEMORY[0x1E695DF70] array];
              [dictionary setObject:array3 forKeyedSubscript:v64];
            }

LABEL_33:

            v7 = v205;
          }

          while (v66 < [v65 count]);
        }
      }

      v62 = [obj countByEnumeratingWithState:&v227 objects:v236 count:16];
    }

    while (v62);
  }

  v204 = dictionary;
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v99 = obj;
  v100 = [v99 countByEnumeratingWithState:&v223 objects:v235 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v224;
    do
    {
      for (j = 0; j != v101; ++j)
      {
        if (*v224 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = *(*(&v223 + 1) + 8 * j);
        v105 = [v204 objectForKeyedSubscript:v104];

        if (v105)
        {
          array4 = [MEMORY[0x1E695DF70] array];
          v107 = [v204 objectForKey:v104];
          v108 = v107;
          while ([v107 count])
          {
            v109 = [v108 objectAtIndex:0];
            v110 = [v204 objectForKeyedSubscript:v109];

            if (v110)
            {
              v111 = [v204 objectForKeyedSubscript:v109];
              [v108 addObjectsFromArray:v111];

              [v204 removeObjectForKey:v109];
            }

            [array4 addObject:v109];
            [v108 removeObjectAtIndex:0];

            v107 = v108;
          }

          [v204 setObject:array4 forKeyedSubscript:v104];

          v7 = v205;
        }
      }

      v101 = [v99 countByEnumeratingWithState:&v223 objects:v235 count:16];
    }

    while (v101);
  }

  array5 = [MEMORY[0x1E695DF70] array];
  v113 = v204;
  allKeys = [v204 allKeys];

  array6 = [MEMORY[0x1E695DF70] array];
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v194 = allKeys;
  obja = [v194 countByEnumeratingWithState:&v219 objects:v234 count:16];
  if (obja)
  {
    v195 = *v220;
    do
    {
      for (k = 0; k != obja; k = k + 1)
      {
        if (*v220 != v195)
        {
          objc_enumerationMutation(v194);
        }

        v116 = *(*(&v219 + 1) + 8 * k);
        v117 = [v7 objectAtIndex:{objc_msgSend(v116, "intValue")}];
        v118 = objc_alloc_init(AXMMLElementGroup);
        [(AXMLElementCoagulation *)selfCopy _mergeFeatureIntoGroup:v118 feature:v117];
        v119 = v117;
        [array5 addObject:v117];
        v120 = [v113 objectForKey:v116];
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v121 = [v120 countByEnumeratingWithState:&v215 objects:v233 count:16];
        if (v121)
        {
          v122 = v121;
          v123 = *v216;
          do
          {
            for (m = 0; m != v122; ++m)
            {
              if (*v216 != v123)
              {
                objc_enumerationMutation(v120);
              }

              v125 = [v7 objectAtIndex:{objc_msgSend(*(*(&v215 + 1) + 8 * m), "intValue")}];
              [(AXMLElementCoagulation *)selfCopy _mergeFeatureIntoGroup:v118 feature:v125];
              [array5 addObject:v125];
            }

            v122 = [v120 countByEnumeratingWithState:&v215 objects:v233 count:16];
          }

          while (v122);
        }

        subfeatures = [(AXMMLElementGroup *)v118 subfeatures];
        v127 = [(AXMLElementCoagulation *)selfCopy _sortFeaturesReadingOrder:subfeatures];
        v128 = [v127 mutableCopy];
        [(AXMMLElementGroup *)v118 setSubfeatures:v128];

        [(AXMMLElementGroup *)v118 frame];
        v130 = v129;
        v132 = v131;
        v134 = v133;
        v136 = v135;
        feature = [(AXMMLElementGroup *)v118 feature];
        [feature confidence];
        v139 = v138;
        textLabel = [(AXMMLElementGroup *)v118 textLabel];
        [(AXMLElementCoagulation *)selfCopy canvasSize];
        v142 = v141;
        v144 = v143;
        childFeatures = [(AXMMLElementGroup *)v118 childFeatures];
        v144 = [AXMVisionFeature groupedFeatureWithElementRect:11 uiClass:textLabel confidence:childFeatures label:v130 canvasSize:v132 subElements:v134, v136, v139, v142, v144];

        v7 = v205;
        [(AXMMLElementGroup *)v118 setFeature:v144];
        [(AXMMLElementGroup *)v118 setIncludeChildren:0];
        [array6 addObject:v118];

        v113 = v204;
      }

      obja = [v194 countByEnumeratingWithState:&v219 objects:v234 count:16];
    }

    while (obja);
  }

  [v7 removeObjectsInArray:array5];
  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v193 = array6;
  v198 = [v193 countByEnumeratingWithState:&v211 objects:v232 count:16];
  if (v198)
  {
    v196 = *v212;
    do
    {
      v147 = 0;
      do
      {
        if (*v212 != v196)
        {
          objc_enumerationMutation(v193);
        }

        objb = v147;
        v148 = *(*(&v211 + 1) + 8 * v147);
        v207 = 0u;
        v208 = 0u;
        v209 = 0u;
        v210 = 0u;
        v149 = v205;
        v150 = [v149 countByEnumeratingWithState:&v207 objects:v231 count:16];
        if (v150)
        {
          v151 = v150;
          v152 = *v208;
          do
          {
            for (n = 0; n != v151; ++n)
            {
              if (*v208 != v152)
              {
                objc_enumerationMutation(v149);
              }

              v154 = *(*(&v207 + 1) + 8 * n);
              [v148 frame];
              v156 = v155;
              v158 = v157;
              v160 = v159;
              v162 = v161;
              [v154 frame];
              if (AXMIsContainedBy(v156, v158, v160, v162, v163, v164, v165, v166, 0.7))
              {
                subfeatures2 = [v148 subfeatures];
                v168 = [subfeatures2 indexOfObject:v154];

                if (v168 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(AXMLElementCoagulation *)selfCopy _mergeFeatureIntoGroup:v148 feature:v154];
                  [array5 addObject:v154];
                  subfeatures3 = [v148 subfeatures];
                  v170 = [(AXMLElementCoagulation *)selfCopy _sortFeaturesReadingOrder:subfeatures3];
                  v171 = [v170 mutableCopy];
                  [v148 setSubfeatures:v171];

                  [v148 frame];
                  v173 = v172;
                  v175 = v174;
                  v177 = v176;
                  v179 = v178;
                  feature2 = [v148 feature];
                  [feature2 confidence];
                  v182 = v181;
                  textLabel2 = [v148 textLabel];
                  [(AXMLElementCoagulation *)selfCopy canvasSize];
                  v185 = v184;
                  v187 = v186;
                  childFeatures2 = [v148 childFeatures];
                  v187 = [AXMVisionFeature groupedFeatureWithElementRect:11 uiClass:textLabel2 confidence:childFeatures2 label:v173 canvasSize:v175 subElements:v177, v179, v182, v185, v187];

                  [v148 setFeature:v187];
                }
              }
            }

            v151 = [v149 countByEnumeratingWithState:&v207 objects:v231 count:16];
          }

          while (v151);
        }

        v147 = objb + 1;
      }

      while (objb + 1 != v198);
      v198 = [v193 countByEnumeratingWithState:&v211 objects:v232 count:16];
    }

    while (v198);
  }

  [v192 removeObjectsInArray:array5];
  [v192 addObjectsFromArray:v193];

  return v192;
}

BOOL __50__AXMLElementCoagulation__getGroupedTextFeatures___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature];
  if ([v3 uiClass] == 11)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 feature];
    v4 = [v5 uiClass] == 17;
  }

  return v4;
}

- (id)_mergeTopLeftButton:(id)button
{
  v75 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v5 = [buttonCopy mutableCopy];
  [(AXMLElementCoagulation *)self canvasSize];
  v7 = v6;
  [(AXMLElementCoagulation *)self canvasSize];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __46__AXMLElementCoagulation__mergeTopLeftButton___block_invoke;
  v71[3] = &unk_1E7A1DC18;
  selfCopy = self;
  v71[4] = self;
  v9 = vdup_n_s32(v7 > v8);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  v72 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v10, 0x3FuLL)), xmmword_1AE451BA0, xmmword_1AE451B90);
  v61 = v5;
  v11 = [v5 ax_filteredArrayUsingBlock:v71];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v68;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v68 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v67 + 1) + 8 * i);
      feature = [v17 feature];
      if ([feature uiClass] == 16)
      {
      }

      else
      {
        feature2 = [v17 feature];
        uiClass = [feature2 uiClass];

        if (uiClass != 5)
        {
          continue;
        }
      }

      v21 = v17;

      v14 = v21;
    }

    v13 = [v11 countByEnumeratingWithState:&v67 objects:v74 count:16];
  }

  while (v13);
  if (!v14)
  {
LABEL_29:
    v57 = buttonCopy;
    v56 = v61;
    goto LABEL_33;
  }

  v59 = buttonCopy;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v22 = v11;
  v23 = [v22 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (!v23)
  {

    goto LABEL_31;
  }

  v24 = v23;
  v62 = 0;
  v25 = *v64;
  while (2)
  {
    v26 = 0;
    while (2)
    {
      if (*v64 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v63 + 1) + 8 * v26);
      feature3 = [v27 feature];
      if ([feature3 uiClass] == 11)
      {

        goto LABEL_21;
      }

      feature4 = [v27 feature];
      uiClass2 = [feature4 uiClass];

      if (uiClass2 == 17)
      {
LABEL_21:
        [v27 frame];
        MidY = CGRectGetMidY(v77);
        [v14 frame];
        if (MidY <= CGRectGetMaxY(v78))
        {
          [v27 frame];
          v32 = CGRectGetMidY(v79);
          [v14 frame];
          if (v32 >= CGRectGetMinY(v80))
          {
            [v27 frame];
            MinX = CGRectGetMinX(v81);
            [v14 frame];
            if (vabdd_f64(MinX, CGRectGetMaxX(v82)) < 40.0)
            {
              v34 = v27;

              v62 = v34;
            }
          }
        }
      }

      if (v24 != ++v26)
      {
        continue;
      }

      break;
    }

    v24 = [v22 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

  if (v62)
  {
    [(AXMLElementCoagulation *)selfCopy _mergeFeatureIntoGroup:v14 feature:v62];
    [v14 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    feature5 = [v14 feature];
    [feature5 confidence];
    v45 = v44;
    textLabel = [v14 textLabel];
    [(AXMLElementCoagulation *)selfCopy canvasSize];
    v48 = v47;
    v50 = v49;
    childFeatures = [v14 childFeatures];
    v52 = [AXMVisionFeature groupedFeatureWithElementRect:16 uiClass:textLabel confidence:childFeatures label:v36 canvasSize:v38 subElements:v40, v42, v45, v48, v50];

    [v14 setFeature:v52];
    [v14 setIncludeChildren:0];
    [v14 frame];
    MidX = CGRectGetMidX(v83);
    [v14 frame];
    v54 = CGRectGetMidY(v84);
    feature6 = [v14 feature];
    [feature6 setActivationPoint:{MidX, v54}];

    v56 = v61;
    [v61 removeObject:v62];
    v57 = v61;

    buttonCopy = v59;
    goto LABEL_32;
  }

LABEL_31:
  buttonCopy = v59;
  v57 = v59;
  v56 = v61;
LABEL_32:

LABEL_33:

  return v57;
}

uint64_t __46__AXMLElementCoagulation__mergeTopLeftButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 feature];
  if ([v4 uiClass] == 5)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 feature];
    if ([v6 uiClass] == 16)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 feature];
      if ([v7 uiClass] == 11)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 feature];
        v5 = [v8 uiClass] == 17;
      }
    }
  }

  [v3 frame];
  MaxY = CGRectGetMaxY(v15);
  [*(a1 + 32) canvasSize];
  if (MaxY >= v10 / *(a1 + 40))
  {
    v13 = 0;
  }

  else
  {
    [v3 frame];
    MinX = CGRectGetMinX(v16);
    [*(a1 + 32) canvasSize];
    v13 = MinX < v12 / *(a1 + 48);
  }

  return v5 & v13;
}

- (id)_removeExtraOCRAndIconFromTextField:(id)field
{
  fieldCopy = field;
  selfCopy = self;
  v4 = [(AXMLElementCoagulation *)self _compareArea:?];
  v5 = [v4 mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      if ([v5 count])
      {
        break;
      }

LABEL_38:

      if (++v6 >= [v5 count])
      {
        goto LABEL_39;
      }
    }

    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndex:v8];
      v10 = v9;
      if (v8 <= v6)
      {
        goto LABEL_37;
      }

      [v9 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [v7 frame];
      if (!AXMIsContainedBy(v12, v14, v16, v18, v19, v20, v21, v22, 0.7))
      {
        goto LABEL_37;
      }

      [v7 frame];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v10 frame];
      AXMIntersectionOverUnion(v24, v26, v28, v30, v31, v32, v33, v34);
      if (v35 <= 0.7)
      {
        goto LABEL_12;
      }

      feature = [v7 feature];
      if ([feature uiClass] != 5)
      {
        break;
      }

      feature2 = [v7 feature];
      value = [feature2 value];
      v39 = axMLElementsUnknownIconType;

      if (value == v39)
      {
        v40 = 1;
      }

      else
      {
        [array addObject:v10];
        v40 = 0;
      }

LABEL_14:
      feature3 = [v7 feature];
      uiClass = [feature3 uiClass];
      if (uiClass != 5)
      {
        feature4 = [v7 feature];
        if ([feature4 uiClass] != 16)
        {
          v68 = feature4;
LABEL_34:

LABEL_35:
          goto LABEL_36;
        }
      }

      feature5 = [v10 feature];
      if ([feature5 uiClass] != 11)
      {
        feature6 = [v10 feature];
        if ([feature6 uiClass] != 17)
        {
          v40 = 0;
        }
      }

      if (uiClass == 5)
      {

        if (!v40)
        {
          goto LABEL_36;
        }

LABEL_24:
        feature7 = [v10 feature];
        feature3 = [feature7 value];

        v46 = [feature3 rangeOfString:@"Q " options:1];
        v47 = [feature3 rangeOfString:@"O " options:1];
        if (v46)
        {
          v48 = v47 == 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = !v48;
        if ([feature3 length] >= 3 && (v49 & 1) == 0)
        {
          v72 = [feature3 substringFromIndex:2];

          [v10 frame];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          feature8 = [v10 feature];
          uiClass2 = [feature8 uiClass];
          feature9 = [v10 feature];
          [feature9 confidence];
          v61 = v60;
          [(AXMLElementCoagulation *)selfCopy canvasSize];
          v63 = v62;
          v65 = v64;
          feature10 = [v10 feature];
          subfeatures = [feature10 subfeatures];
          feature3 = v72;
          v68 = [AXMVisionFeature groupedFeatureWithElementRect:uiClass2 uiClass:v72 confidence:subfeatures label:v51 canvasSize:v53 subElements:v55, v57, v61, v63, v65];

          [v10 setFeature:v68];
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (v40)
      {
        goto LABEL_24;
      }

LABEL_36:
      [array addObject:v7];
LABEL_37:

      if (++v8 >= [v5 count])
      {
        goto LABEL_38;
      }
    }

LABEL_12:
    v40 = 1;
    goto LABEL_14;
  }

LABEL_39:
  [v5 removeObjectsInArray:array];

  return v5;
}

- (id)_getGroupedTextFields:(id)fields
{
  v117 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v90 = [fieldsCopy mutableCopy];
  v4 = [v90 ax_filteredArrayUsingBlock:&__block_literal_global_177];
  array = [MEMORY[0x1E695DF70] array];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v4;
  v94 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
  if (v94)
  {
    v92 = *v111;
    do
    {
      v6 = 0;
      do
      {
        if (*v111 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v95 = v6;
        v7 = *(*(&v110 + 1) + 8 * v6);
        array2 = [MEMORY[0x1E695DF70] array];
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v101 = fieldsCopy;
        v8 = [v101 countByEnumeratingWithState:&v106 objects:v115 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v107;
          v96 = *v107;
          v97 = v7;
          do
          {
            v11 = 0;
            v98 = v9;
            do
            {
              if (*v107 != v10)
              {
                objc_enumerationMutation(v101);
              }

              v12 = *(*(&v106 + 1) + 8 * v11);
              [v7 frame];
              v14 = v13;
              v16 = v15;
              v18 = v17;
              v20 = v19;
              [v12 frame];
              if (AXMIsContainedBy(v14, v16, v18, v20, v21, v22, v23, v24, 0.8))
              {
                feature = [v12 feature];
                if ([feature uiClass] == 11)
                {
                  goto LABEL_17;
                }

                feature2 = [v12 feature];
                if ([feature2 uiClass] == 17)
                {
                  goto LABEL_16;
                }

                feature3 = [v12 feature];
                if ([feature3 uiClass] == 5)
                {

                  v9 = v98;
LABEL_16:

LABEL_17:
                }

                else
                {
                  feature4 = [v12 feature];
                  uiClass = [feature4 uiClass];

                  v10 = v96;
                  v57 = uiClass == 16;
                  v7 = v97;
                  v9 = v98;
                  if (!v57)
                  {
                    goto LABEL_23;
                  }
                }

                [v12 frame];
                MinX = CGRectGetMinX(v119);
                [v7 frame];
                v29 = CGRectGetMinX(v120);
                [v7 frame];
                if (MinX >= v29 + CGRectGetMaxX(v121) * 0.5)
                {
                  feature5 = [v12 feature];
                  uiClass2 = [feature5 uiClass];
                  v32 = 16;
                  if (uiClass2 != 5)
                  {
                    v32 = 17;
                  }

                  v99 = v32;

                  [v12 frame];
                  v34 = v33;
                  v36 = v35;
                  v38 = v37;
                  v40 = v39;
                  feature6 = [v12 feature];
                  [feature6 confidence];
                  v43 = v42;
                  feature7 = [v12 feature];
                  value = [feature7 value];
                  [(AXMLElementCoagulation *)self canvasSize];
                  v47 = v46;
                  v49 = v48;
                  [v12 feature];
                  v50 = array;
                  v52 = v51 = self;
                  subfeatures = [v52 subfeatures];
                  v54 = [AXMVisionFeature groupedFeatureWithElementRect:v99 uiClass:value confidence:subfeatures label:v34 canvasSize:v36 subElements:v38, v40, v43, v47, v49];

                  self = v51;
                  array = v50;
                  v10 = v96;

                  v7 = v97;
                  v9 = v98;

                  [v12 setFeature:v54];
                }

                [array2 addObject:v12];
                [array addObject:v12];
              }

LABEL_23:
              ++v11;
            }

            while (v9 != v11);
            v58 = [v101 countByEnumeratingWithState:&v106 objects:v115 count:16];
            v9 = v58;
          }

          while (v58);
        }

        v59 = [(AXMLElementCoagulation *)self _removeExtraOCRAndIconFromTextField:array2];
        v60 = [v59 mutableCopy];

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v61 = v60;
        v62 = [v61 countByEnumeratingWithState:&v102 objects:v114 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v103;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v103 != v64)
              {
                objc_enumerationMutation(v61);
              }

              [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:v7 feature:*(*(&v102 + 1) + 8 * i)];
            }

            v63 = [v61 countByEnumeratingWithState:&v102 objects:v114 count:16];
          }

          while (v63);
        }

        subfeatures2 = [v7 subfeatures];
        v67 = [subfeatures2 count];

        if (v67)
        {
          subfeatures3 = [v7 subfeatures];
          v69 = [(AXMLElementCoagulation *)self _compareForX:subfeatures3];
          v70 = [v69 mutableCopy];
          [v7 setSubfeatures:v70];

          [v7 frame];
          v72 = v71;
          v74 = v73;
          v76 = v75;
          v78 = v77;
          feature8 = [v7 feature];
          [feature8 confidence];
          v81 = v80;
          textLabel = [v7 textLabel];
          [(AXMLElementCoagulation *)self canvasSize];
          v84 = v83;
          v86 = v85;
          childFeatures = [v7 childFeatures];
          v88 = [AXMVisionFeature groupedFeatureWithElementRect:12 uiClass:textLabel confidence:childFeatures label:v72 canvasSize:v74 subElements:v76, v78, v81, v84, v86];

          [v7 setFeature:v88];
          [v7 setIncludeChildren:0];
        }

        v6 = v95 + 1;
      }

      while (v95 + 1 != v94);
      v94 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
    }

    while (v94);
  }

  [v90 removeObjectsInArray:array];

  return v90;
}

BOOL __48__AXMLElementCoagulation__getGroupedTextFields___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 feature];
  v3 = [v2 uiClass] == 12;

  return v3;
}

- (id)_getGroupedSegmentedControlFeatures:(id)features
{
  v149 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v5 = [featuresCopy mutableCopy];
  v6 = [featuresCopy ax_filteredArrayUsingBlock:&__block_literal_global_179];
  v7 = [featuresCopy ax_filteredArrayUsingBlock:&__block_literal_global_181];
  if ([v6 count])
  {
    v113 = featuresCopy;
    v8 = [(AXMLElementCoagulation *)self _compareForY:v6];

    v115 = [(AXMLElementCoagulation *)self _compareForY:v7];

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v140 objects:v148 count:16];
    v112 = v5;
    if (v12)
    {
      v13 = v12;
      v14 = *v141;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v141 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v140 + 1) + 8 * i);
          if ([array2 count])
          {
            lastObject = [array2 lastObject];
            [v16 frame];
            v19 = v18;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            [lastObject frame];
            [(AXMLElementCoagulation *)self _getYOverlap:v19 obj2:v21, v23, v25, v26, v27, v28, v29];
            if (v30 <= 0.0)
            {
              [array addObject:array2];
              array3 = [MEMORY[0x1E695DF70] array];
              v32 = array2;
              array2 = array3;
            }

            [array2 addObject:v16];
          }

          else
          {
            [array2 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v140 objects:v148 count:16];
      }

      while (v13);
    }

    v111 = v11;

    v110 = array2;
    [array addObject:array2];
    array4 = [MEMORY[0x1E695DF70] array];
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v34 = array;
    v116 = [v34 countByEnumeratingWithState:&v136 objects:v147 count:16];
    v117 = v34;
    if (v116)
    {
      v114 = *v137;
      do
      {
        v35 = 0;
        do
        {
          if (*v137 != v114)
          {
            objc_enumerationMutation(v34);
          }

          v118 = v35;
          v36 = *(*(&v136 + 1) + 8 * v35);
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          obj = v115;
          v37 = [obj countByEnumeratingWithState:&v132 objects:v146 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v133;
            v119 = *v133;
            v120 = v36;
            do
            {
              v40 = 0;
              v121 = v38;
              do
              {
                if (*v133 != v39)
                {
                  objc_enumerationMutation(obj);
                }

                v123 = v40;
                v41 = *(*(&v132 + 1) + 8 * v40);
                [v41 frame];
                v43 = v42;
                v45 = v44;
                v47 = v46;
                v49 = v48;
                v50 = [v36 objectAtIndexedSubscript:0];
                [v50 frame];
                [(AXMLElementCoagulation *)self _getYOverlap:v43 obj2:v45, v47, v49, v51, v52, v53, v54];
                v56 = v55;

                [v41 frame];
                if (v56 >= CGRectGetHeight(v151))
                {
                  v130 = 0u;
                  v131 = 0u;
                  v128 = 0u;
                  v129 = 0u;
                  v57 = v36;
                  v58 = [v57 countByEnumeratingWithState:&v128 objects:v145 count:16];
                  if (!v58)
                  {

LABEL_37:
                    [v57 addObject:v41];
                    goto LABEL_38;
                  }

                  v59 = v58;
                  v60 = 0;
                  v61 = *v129;
                  do
                  {
                    for (j = 0; j != v59; ++j)
                    {
                      if (*v129 != v61)
                      {
                        objc_enumerationMutation(v57);
                      }

                      v63 = *(*(&v128 + 1) + 8 * j);
                      [v63 frame];
                      v65 = v64;
                      v67 = v66;
                      v69 = v68;
                      v71 = v70;
                      [v41 frame];
                      if (AXMIsContainedBy(v65, v67, v69, v71, v72, v73, v74, v75, 1.0))
                      {
                        [v63 setIncludeChildren:0];
                        [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:v63 feature:v41];
                        [array4 addObject:v41];
                        v60 = 1;
                      }
                    }

                    v59 = [v57 countByEnumeratingWithState:&v128 objects:v145 count:16];
                  }

                  while (v59);

                  v39 = v119;
                  v36 = v120;
                  v38 = v121;
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_37;
                  }
                }

LABEL_38:
                v40 = v123 + 1;
              }

              while (v123 + 1 != v38);
              v38 = [obj countByEnumeratingWithState:&v132 objects:v146 count:16];
            }

            while (v38);
          }

          v34 = v117;
          v35 = v118 + 1;
        }

        while (v118 + 1 != v116);
        v116 = [v117 countByEnumeratingWithState:&v136 objects:v147 count:16];
      }

      while (v116);
    }

    if ([v34 count])
    {
      v76 = 0;
      do
      {
        v77 = v76;
        v78 = [v34 objectAtIndex:v76];
        v79 = [(AXMLElementCoagulation *)self _compareForX:v78];

        [(AXMLElementCoagulation *)self canvasSize];
        v81 = v80 + 1.0;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v82 = v79;
        v83 = [v82 countByEnumeratingWithState:&v124 objects:v144 count:16];
        if (v83)
        {
          v84 = v83;
          v85 = *v125;
          v86 = 0.0;
          do
          {
            for (k = 0; k != v84; ++k)
            {
              if (*v125 != v85)
              {
                objc_enumerationMutation(v82);
              }

              v88 = *(*(&v124 + 1) + 8 * k);
              [v88 frame];
              v81 = fmin(v81, CGRectGetMinY(v152));
              [v88 frame];
              v86 = fmax(v86, CGRectGetMaxY(v153));
            }

            v84 = [v82 countByEnumeratingWithState:&v124 objects:v144 count:16];
          }

          while (v84);
        }

        else
        {
          v86 = 0.0;
        }

        if ([v82 count])
        {
          v89 = 0;
          v90 = v86 - v81;
          do
          {
            v91 = [v82 objectAtIndex:v89];
            [v91 frame];
            MinX = CGRectGetMinX(v154);
            [v91 frame];
            Width = CGRectGetWidth(v155);
            textLabel = [v91 textLabel];
            feature = [v91 feature];
            uiClass = [feature uiClass];

            if (uiClass == 11)
            {
              feature2 = [v91 feature];
              value = [feature2 value];

              textLabel = value;
            }

            feature3 = [v91 feature];
            [feature3 confidence];
            v101 = v100;
            [(AXMLElementCoagulation *)self canvasSize];
            v103 = v102;
            v105 = v104;
            childFeatures = [v91 childFeatures];
            v105 = [AXMVisionFeature groupedFeatureWithElementRect:8 uiClass:textLabel confidence:childFeatures label:MinX canvasSize:v81 subElements:Width, v90, v101, v103, v105];

            [v91 setFeature:v105];
            [v91 setIncludeChildren:0];

            ++v89;
          }

          while (v89 < [v82 count]);
        }

        v76 = v77 + 1;
        v34 = v117;
      }

      while (v77 + 1 < [v117 count]);
    }

    v5 = v112;
    [v112 removeObjectsInArray:array4];
    v108 = v112;

    v6 = v111;
    v7 = v115;
    featuresCopy = v113;
  }

  else
  {
    v108 = featuresCopy;
  }

  return v108;
}

BOOL __62__AXMLElementCoagulation__getGroupedSegmentedControlFeatures___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 feature];
  v3 = [v2 uiClass] == 8;

  return v3;
}

BOOL __62__AXMLElementCoagulation__getGroupedSegmentedControlFeatures___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feature];
  if ([v3 uiClass] == 11)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 feature];
    v4 = [v5 uiClass] == 17;
  }

  return v4;
}

- (id)_createToggleGroup:(id)group toGroup:(id)toGroup
{
  v41 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  toGroupCopy = toGroup;
  [groupCopy frame];
  MidX = CGRectGetMidX(v43);
  [groupCopy frame];
  MidY = CGRectGetMidY(v44);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = toGroupCopy;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:groupCopy feature:*(*(&v36 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  [groupCopy frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  feature = [groupCopy feature];
  uiClass = [feature uiClass];
  feature2 = [groupCopy feature];
  [feature2 confidence];
  v26 = v25;
  textLabel = [groupCopy textLabel];
  [(AXMLElementCoagulation *)self canvasSize];
  v29 = v28;
  v31 = v30;
  childFeatures = [groupCopy childFeatures];
  v33 = [AXMVisionFeature groupedFeatureWithElementRect:uiClass uiClass:textLabel confidence:childFeatures label:v15 canvasSize:v17 subElements:v19, v21, v26, v29, v31];

  [v33 setActivationPoint:{MidX, MidY}];
  [groupCopy setFeature:v33];
  [groupCopy setIncludeChildren:0];

  return groupCopy;
}

- (id)_removeTextContainingOnlyToggles:(id)toggles toggleCheckboxTypes:(id)types
{
  v50 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v6 = [toggles mutableCopy];
  v7 = [v6 ax_filteredArrayUsingBlock:&__block_literal_global_183];
  array = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
  v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v38)
  {
    v36 = v6;
    v37 = *v45;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v10 = v6;
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v11)
        {
          v12 = v11;
          v39 = i;
          v13 = 0;
          v14 = *v41;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v41 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v40 + 1) + 8 * j);
              if (v16 != v9)
              {
                [v9 frame];
                v18 = v17;
                v20 = v19;
                v22 = v21;
                v24 = v23;
                [v16 frame];
                if (AXMIsContainedBy(v18, v20, v22, v24, v25, v26, v27, v28, 1.0))
                {
                  v29 = MEMORY[0x1E696AD98];
                  feature = [v16 feature];
                  v31 = [v29 numberWithInteger:{objc_msgSend(feature, "uiClass")}];
                  v32 = [typesCopy indexOfObject:v31];

                  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
                  {

                    v6 = v36;
                    i = v39;
                    goto LABEL_21;
                  }

                  v13 = 1;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

          v6 = v36;
          i = v39;
          if (v13)
          {
            [array addObject:v9];
          }
        }

        else
        {
        }

LABEL_21:
        ;
      }

      v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v38);
  }

  [v6 removeObjectsInArray:array];

  return v6;
}

BOOL __79__AXMLElementCoagulation__removeTextContainingOnlyToggles_toggleCheckboxTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 feature];
  v3 = [v2 uiClass] == 11;

  return v3;
}

- (id)_getGroupedToggleCheckboxWithText:(id)text
{
  v213 = *MEMORY[0x1E69E9840];
  v4 = &unk_1F240B538;
  textCopy = text;
  v5 = [AXMLElementCoagulation _removeTextContainingOnlyToggles:"_removeTextContainingOnlyToggles:toggleCheckboxTypes:" toggleCheckboxTypes:?];
  v205[0] = MEMORY[0x1E69E9820];
  v205[1] = 3221225472;
  v205[2] = __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke;
  v205[3] = &unk_1E7A1DC40;
  v206 = &unk_1F240B538;
  v6 = [v5 ax_filteredArrayUsingBlock:v205];
  v7 = [v6 mutableCopy];

  v8 = v7;
  v158 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_196];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v159 = v5;
  v166 = v7;
  v161 = array;
  if ([v7 count])
  {
    v10 = 0;
    v11 = 0x1E696A000uLL;
    selfCopy = self;
    do
    {
      v12 = [v8 objectAtIndex:v10];
      if (([array containsObject:v12] & 1) == 0)
      {
        v160 = v10;
        v169 = v12;
        [array addObject:v12];
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v13 = v158;
        v14 = [v13 countByEnumeratingWithState:&v201 objects:v212 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v202;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v202 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v201 + 1) + 8 * i);
              [v19 frame];
              v21 = v20;
              v23 = v22;
              v25 = v24;
              v27 = v26;
              [v169 frame];
              if (AXMIsContainedBy(v21, v23, v25, v27, v28, v29, v30, v31, 1.0))
              {
                v32 = v19;

                v16 = v32;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v201 objects:v212 count:16];
          }

          while (v15);
        }

        else
        {
          v16 = 0;
        }

        array3 = [MEMORY[0x1E695DF70] array];
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        v200 = 0u;
        obj = v5;
        v34 = [obj countByEnumeratingWithState:&v197 objects:v211 count:16];
        v35 = v169;
        v165 = v16;
        if (v34)
        {
          v36 = v34;
          v37 = *v198;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v198 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v197 + 1) + 8 * j);
              if (([v39 isEqual:v35] & 1) == 0 && (objc_msgSend(array, "containsObject:", v39) & 1) == 0)
              {
                if (v16)
                {
                  [v16 frame];
                  v41 = v40;
                  v43 = v42;
                  v45 = v44;
                  v47 = v46;
                  [v39 frame];
                  if (AXMIsContainedBy(v41, v43, v45, v47, v48, v49, v50, v51, 0.8))
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  feature = [v39 feature];
                  if ([feature uiClass] != 3)
                  {

                    v35 = v169;
LABEL_29:
                    [v39 frame];
                    v68 = v67;
                    v70 = v69;
                    v72 = v71;
                    v74 = v73;
                    [v35 frame];
                    if (![(AXMLElementCoagulation *)selfCopy _hasYOverlap:v68 obj2:v70, v72, v74, v75, v76, v77, v78])
                    {
                      continue;
                    }

LABEL_30:
                    [array3 addObject:v39];
                    continue;
                  }

                  [v39 frame];
                  v54 = v53;
                  v56 = v55;
                  v58 = v57;
                  v60 = v59;
                  [v169 frame];
                  AXMIntersectionOverUnion(v54, v56, v58, v60, v61, v62, v63, v64);
                  v66 = v65;

                  v35 = v169;
                  v16 = v165;
                  if (v66 <= 0.0)
                  {
                    goto LABEL_29;
                  }
                }
              }
            }

            v36 = [obj countByEnumeratingWithState:&v197 objects:v211 count:16];
          }

          while (v36);
        }

        v195[0] = MEMORY[0x1E69E9820];
        v195[1] = 3221225472;
        v195[2] = __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke_3;
        v195[3] = &unk_1E7A1DC40;
        v79 = v35;
        v196 = v79;
        v80 = [array3 ax_filteredArrayUsingBlock:v195];
        v81 = [v80 mutableCopy];

        v193[0] = MEMORY[0x1E69E9820];
        v193[1] = 3221225472;
        v193[2] = __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke_4;
        v193[3] = &unk_1E7A1DC40;
        v194 = v4;
        v82 = [v81 ax_filteredArrayUsingBlock:v193];
        v83 = [v82 mutableCopy];

        if ([v83 count])
        {
          [v83 addObject:v79];
          if ([v83 count])
          {
            v84 = 0;
            v162 = v81;
            v172 = v83;
            do
            {
              v164 = v84;
              v173 = [v83 objectAtIndex:v84];
              [array addObject:?];
              array4 = [MEMORY[0x1E695DF70] array];
              v189 = 0u;
              v190 = 0u;
              v191 = 0u;
              v192 = 0u;
              v175 = v81;
              v85 = [v175 countByEnumeratingWithState:&v189 objects:v210 count:16];
              if (v85)
              {
                v86 = v85;
                v87 = *v190;
                v171 = *v190;
                do
                {
                  v88 = 0;
                  v174 = v86;
                  do
                  {
                    if (*v190 != v87)
                    {
                      objc_enumerationMutation(v175);
                    }

                    v89 = *(*(&v189 + 1) + 8 * v88);
                    v90 = *(v11 + 3480);
                    feature2 = [v89 feature];
                    v92 = [v90 numberWithInteger:{objc_msgSend(feature2, "uiClass")}];
                    v93 = [v4 indexOfObject:v92];

                    if (v93 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v94 = v4;
                      v95 = v173;
                      v185 = 0u;
                      v186 = 0u;
                      v187 = 0u;
                      v188 = 0u;
                      v96 = v172;
                      v97 = [v96 countByEnumeratingWithState:&v185 objects:v209 count:16];
                      v98 = v95;
                      if (v97)
                      {
                        v99 = v97;
                        v100 = *v186;
                        v98 = v95;
                        do
                        {
                          for (k = 0; k != v99; ++k)
                          {
                            if (*v186 != v100)
                            {
                              objc_enumerationMutation(v96);
                            }

                            v102 = *(*(&v185 + 1) + 8 * k);
                            [v89 frame];
                            v104 = v103;
                            v106 = v105;
                            v108 = v107;
                            v110 = v109;
                            [v102 frame];
                            v115 = AXMDistanceBetweenCenters(v104, v106, v108, v110, v111, v112, v113, v114);
                            [v89 frame];
                            v117 = v116;
                            v119 = v118;
                            v121 = v120;
                            v123 = v122;
                            [v98 frame];
                            if (v115 < AXMDistanceBetweenCenters(v117, v119, v121, v123, v124, v125, v126, v127))
                            {
                              v128 = v102;

                              v98 = v128;
                            }
                          }

                          v99 = [v96 countByEnumeratingWithState:&v185 objects:v209 count:16];
                        }

                        while (v99);
                      }

                      if ([v98 isEqual:v95])
                      {
                        [array4 addObject:v89];
                      }

                      v4 = v94;
                      v11 = 0x1E696A000;
                      v87 = v171;
                      v86 = v174;
                    }

                    ++v88;
                  }

                  while (v88 != v86);
                  v86 = [v175 countByEnumeratingWithState:&v189 objects:v210 count:16];
                }

                while (v86);
              }

              v129 = [(AXMLElementCoagulation *)selfCopy _createToggleGroup:v173 toGroup:array4];
              [obj removeObjectsInArray:array4];

              v84 = v164 + 1;
              v83 = v172;
              array = v161;
              v81 = v162;
            }

            while (v164 + 1 < [v172 count]);
          }
        }

        else
        {
          v130 = [(AXMLElementCoagulation *)selfCopy _createToggleGroup:v79 toGroup:v81];
          [obj removeObjectsInArray:v81];
        }

        v5 = v159;
        v10 = v160;
        v8 = v166;
        v12 = v169;
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v176 = v158;
  v131 = [v176 countByEnumeratingWithState:&v181 objects:v208 count:16];
  if (v131)
  {
    v132 = v131;
    v133 = *v182;
    do
    {
      for (m = 0; m != v132; ++m)
      {
        if (*v182 != v133)
        {
          objc_enumerationMutation(v176);
        }

        v135 = *(*(&v181 + 1) + 8 * m);
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v136 = v8;
        v137 = [v136 countByEnumeratingWithState:&v177 objects:v207 count:16];
        if (v137)
        {
          v138 = v137;
          v139 = 0;
          v140 = *v178;
          do
          {
            for (n = 0; n != v138; ++n)
            {
              if (*v178 != v140)
              {
                objc_enumerationMutation(v136);
              }

              v142 = *(*(&v177 + 1) + 8 * n);
              [v135 frame];
              v144 = v143;
              v146 = v145;
              v148 = v147;
              v150 = v149;
              [v142 frame];
              AXMIntersectionOverUnion(v144, v146, v148, v150, v151, v152, v153, v154);
              if (v155 > 0.0)
              {
                ++v139;
              }
            }

            v138 = [v136 countByEnumeratingWithState:&v177 objects:v207 count:16];
          }

          while (v138);

          v8 = v166;
          if (v139 >= 2)
          {
            [array2 addObject:v135];
          }
        }

        else
        {
        }
      }

      v132 = [v176 countByEnumeratingWithState:&v181 objects:v208 count:16];
    }

    while (v132);
  }

  [v159 removeObjectsInArray:array2];

  return v159;
}

BOOL __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 feature];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "uiClass")}];
  v6 = [v2 indexOfObject:v5] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

BOOL __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 feature];
  v3 = [v2 uiClass] == 3;

  return v3;
}

BOOL __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 frame];
  Height = CGRectGetHeight(v6);
  [*(a1 + 32) frame];
  v4 = CGRectGetHeight(v7);
  [*(a1 + 32) frame];
  return Height < fmax(v4, CGRectGetWidth(v8)) * 4.0;
}

BOOL __60__AXMLElementCoagulation__getGroupedToggleCheckboxWithText___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 feature];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "uiClass")}];
  v6 = [v2 indexOfObject:v5] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (id)_groupFeaturesByContainment:(id)containment
{
  v61 = *MEMORY[0x1E69E9840];
  containmentCopy = containment;
  v5 = [containmentCopy mutableCopy];
  v53 = [(AXMLElementCoagulation *)self _compareArea:v5];

  v52 = containmentCopy;
  v54 = [containmentCopy count];
  if (!v54)
  {
    goto LABEL_27;
  }

  for (i = 0; i != v54; ++i)
  {
    v6 = [v53 objectAtIndex:i];
    v7 = 0;
    while (v7 <= i)
    {
LABEL_19:
      if (++v7 == v54)
      {
        goto LABEL_26;
      }
    }

    v8 = [v53 objectAtIndex:v7];
    feature = [v8 feature];
    [feature frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    feature2 = [v6 feature];
    [feature2 frame];
    v23 = AXMIsContainedBy(v11, v13, v15, v17, v19, v20, v21, v22, 0.7);

    if (!v23)
    {
      goto LABEL_18;
    }

    feature3 = [v6 feature];
    [feature3 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    feature4 = [v8 feature];
    [feature4 frame];
    AXMIntersectionOverUnion(v26, v28, v30, v32, v34, v35, v36, v37);
    if (v38 <= 0.7)
    {
      goto LABEL_22;
    }

    feature5 = [v6 feature];
    if ([feature5 uiClass] == 7)
    {
      feature6 = [v8 feature];
      v41 = v8;
      uiClass = [feature6 uiClass];

      v43 = uiClass == 3;
      v8 = v41;
      if (!v43)
      {
        goto LABEL_23;
      }

      [v41 setTopLevel:0];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      subfeatures = [v41 subfeatures];
      v45 = [subfeatures countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v57;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v57 != v47)
            {
              objc_enumerationMutation(subfeatures);
            }

            [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:v6 feature:*(*(&v56 + 1) + 8 * j)];
          }

          v46 = [subfeatures countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v46);
      }

      v8 = v41;
LABEL_18:

      goto LABEL_19;
    }

LABEL_22:
LABEL_23:
    [v6 setTopLevel:0];
    feature7 = [v8 feature];
    uiClass2 = [feature7 uiClass];

    if (uiClass2 != 11)
    {
      [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:v8 feature:v6];
    }

LABEL_26:
  }

LABEL_27:

  return v52;
}

- (id)_getClosestDetectionBelow:(id)below target:(id)target maxDistance:(int64_t)distance
{
  v45 = *MEMORY[0x1E69E9840];
  belowCopy = below;
  targetCopy = target;
  [targetCopy frame];
  MaxY = CGRectGetMaxY(v47);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = belowCopy;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = MaxY;
    v15 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [targetCopy frame];
        [(AXMLElementCoagulation *)self _getXOverlap:v19 obj2:v21, v23, v25, v26, v27, v28, v29];
        v31 = v30;
        [v17 frame];
        Width = CGRectGetWidth(v48);
        [targetCopy frame];
        if (fmin(Width, CGRectGetWidth(v49)) * 0.5 < v31)
        {
          [v17 frame];
          v33 = CGRectGetMaxY(v50);
          [v17 frame];
          MinY = CGRectGetMinY(v51);
          if (v33 > v14)
          {
            v35 = MinY;
            if (MinY - v14 < distance)
            {
              [v13 frame];
              v36 = CGRectGetMinY(v52);
              if (!v13 || v35 < v36)
              {
                v37 = v17;

                v13 = v37;
              }
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_getGroupedPictureAndSubtitleFeature:(id)feature
{
  v81 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  array = [MEMORY[0x1E695DF70] array];
  v61 = featureCopy;
  v5 = [featureCopy mutableCopy];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v76;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v75 + 1) + 8 * i);
        feature = [v12 feature];
        if ([feature uiClass] == 11)
        {

          v14 = array3;
        }

        else
        {
          feature2 = [v12 feature];
          uiClass = [feature2 uiClass];

          if (uiClass == 17)
          {
            v14 = array3;
          }

          else
          {
            v14 = array4;
          }
        }

        [v14 addObject:v12];
        feature3 = [v12 feature];
        if ([feature3 uiClass] == 7)
        {
        }

        else
        {
          feature4 = [v12 feature];
          uiClass2 = [feature4 uiClass];

          if (uiClass2 != 15)
          {
            continue;
          }
        }

        [array2 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v9);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v62 = array2;
  v67 = [v62 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (!v67)
  {
    goto LABEL_37;
  }

  v66 = *v72;
  do
  {
    for (j = 0; j != v67; ++j)
    {
      if (*v72 != v66)
      {
        objc_enumerationMutation(v62);
      }

      v21 = *(*(&v71 + 1) + 8 * j);
      [(AXMLElementCoagulation *)self canvasSize];
      v23 = [(AXMLElementCoagulation *)self _getClosestDetectionBelow:array3 target:v21 maxDistance:(v22 * 0.03)];
      if (v23 && [array indexOfObject:v23] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v23 frame];
        MinY = CGRectGetMinY(v83);
        [v21 frame];
        v25 = [(AXMLElementCoagulation *)self _getClosestDetectionBelow:array4 target:v23 maxDistance:(MinY - CGRectGetMaxY(v84))];
        if (!v25)
        {
          [array addObject:v23];
          [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:v21 feature:v23];
          [(AXMLElementCoagulation *)self canvasSize];
          v27 = [(AXMLElementCoagulation *)self _getClosestDetectionBelow:array3 target:v23 maxDistance:(v26 * 0.03)];
          if (v27)
          {
            if ([array indexOfObject:v27] != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_34;
            }

            [v27 frame];
            v28 = CGRectGetMinY(v85);
            [v23 frame];
            v29 = [(AXMLElementCoagulation *)self _getClosestDetectionBelow:v61 target:v27 maxDistance:(v28 - CGRectGetMaxY(v86))];
            if (!v29)
            {
              [array addObject:v27];
              [(AXMLElementCoagulation *)self _mergeFeatureIntoGroup:v21 feature:v27];
            }
          }
        }
      }

      subfeatures = [v21 subfeatures];
      v31 = [subfeatures count];

      if (!v31)
      {
        goto LABEL_35;
      }

      subfeatures2 = [v21 subfeatures];
      v33 = [(AXMLElementCoagulation *)self _reorderByYCut:subfeatures2];
      v34 = [v33 mutableCopy];
      [v21 setSubfeatures:v34];

      [v21 frame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      feature5 = [v21 feature];
      uiClass3 = [feature5 uiClass];
      [v21 feature];
      v46 = v45 = array3;
      [v46 confidence];
      v48 = v47;
      [v21 textLabel];
      v49 = v68 = v23;
      [(AXMLElementCoagulation *)self canvasSize];
      v51 = v50;
      v53 = v52;
      childFeatures = [v21 childFeatures];
      v27 = [AXMVisionFeature groupedFeatureWithElementRect:uiClass3 uiClass:v49 confidence:childFeatures label:v36 canvasSize:v38 subElements:v40, v42, v48, v51, v53];

      array3 = v45;
      [v21 setFeature:v27];
      [v21 setIncludeChildren:0];
      [v21 frame];
      MidX = CGRectGetMidX(v87);
      [v21 frame];
      MidY = CGRectGetMidY(v88);
      feature6 = [v21 feature];
      [feature6 setActivationPoint:{MidX, MidY}];

      v23 = v68;
LABEL_34:

LABEL_35:
    }

    v67 = [v62 countByEnumeratingWithState:&v71 objects:v79 count:16];
  }

  while (v67);
LABEL_37:

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __63__AXMLElementCoagulation__getGroupedPictureAndSubtitleFeature___block_invoke;
  v69[3] = &unk_1E7A1DC40;
  v70 = array;
  v58 = array;
  v59 = [v61 ax_filteredArrayUsingBlock:v69];

  return v59;
}

- (id)_getTopLevelFeatureGroups:(id)groups
{
  v26 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = groupsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 topLevel])
        {
          subfeatures = [v11 subfeatures];
          v13 = [subfeatures count];

          if (v13)
          {
            subfeatures2 = [v11 subfeatures];
            v15 = [(AXMLElementCoagulation *)self _reorderByXCut:subfeatures2];
            v16 = [v15 mutableCopy];
            [v11 setSubfeatures:v16];
          }

          [array addObject:v11];
          feature = [v11 feature];
          uiClass = [feature uiClass];

          if (uiClass == 4)
          {
            [v11 setIncludeChildren:0];
            subfeatures3 = [v11 subfeatures];
            [array addObjectsFromArray:subfeatures3];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_groupSingleContainerAsButton:(id)button featureToGroup:(id)group
{
  v72 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  groupCopy = group;
  array = [MEMORY[0x1E695DF70] array];
  v9 = [buttonCopy mutableCopy];
  feature = [groupCopy feature];
  if ([feature uiClass] == 3)
  {
    goto LABEL_4;
  }

  feature2 = [groupCopy feature];
  if ([feature2 uiClass] == 7)
  {

LABEL_4:
LABEL_5:
    feature3 = [groupCopy feature];
    if ([feature3 uiClass] == 3)
    {
      subfeatures = [groupCopy subfeatures];
      v14 = [subfeatures count];

      if (!v14)
      {
        [array addObject:groupCopy];
        goto LABEL_20;
      }
    }

    else
    {
    }

    feature4 = [groupCopy feature];
    uiClass = [feature4 uiClass];

    feature5 = [groupCopy feature];
    uiClass2 = [feature5 uiClass];

    if (uiClass2 == 3)
    {
      v19 = 17;
    }

    else
    {
      v19 = uiClass;
    }

    if ([(AXMLElementCoagulation *)self isRTL])
    {
      subfeatures2 = [groupCopy subfeatures];
      v21 = [subfeatures2 count];

      if (v21 >= 2)
      {
        subfeatures3 = [groupCopy subfeatures];
        v23 = [(AXMLElementCoagulation *)self _applyHorizontalMirrorToFeatures:subfeatures3];
      }
    }

    subfeatures4 = [groupCopy subfeatures];
    v25 = [(AXMLElementCoagulation *)self _reorderByYCut:subfeatures4];
    v26 = [v25 mutableCopy];
    [groupCopy setSubfeatures:v26];

    if ([(AXMLElementCoagulation *)self isRTL])
    {
      subfeatures5 = [groupCopy subfeatures];
      v28 = [subfeatures5 count];

      if (v28 >= 2)
      {
        subfeatures6 = [groupCopy subfeatures];
        v30 = [(AXMLElementCoagulation *)self _applyHorizontalMirrorToFeatures:subfeatures6];
      }
    }

    [groupCopy frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    feature6 = [groupCopy feature];
    [feature6 confidence];
    v41 = v40;
    textLabel = [groupCopy textLabel];
    [(AXMLElementCoagulation *)self canvasSize];
    v44 = v43;
    v46 = v45;
    childFeatures = [groupCopy childFeatures];
    v48 = [AXMVisionFeature groupedFeatureWithElementRect:v19 uiClass:textLabel confidence:childFeatures label:v32 canvasSize:v34 subElements:v36, v38, v41, v44, v46];

    subfeatures7 = [groupCopy subfeatures];
    [array addObjectsFromArray:subfeatures7];

    [groupCopy setFeature:v48];
    [groupCopy setIncludeChildren:0];
    goto LABEL_19;
  }

  feature7 = [groupCopy feature];
  uiClass3 = [feature7 uiClass];

  if (uiClass3 == 15)
  {
    goto LABEL_5;
  }

  feature8 = [groupCopy feature];
  if ([feature8 uiClass] == 5)
  {
  }

  else
  {
    feature9 = [groupCopy feature];
    uiClass4 = [feature9 uiClass];

    if (uiClass4 != 16)
    {
      goto LABEL_20;
    }
  }

  subfeatures8 = [groupCopy subfeatures];
  v62 = [subfeatures8 count];

  if (v62 == 1)
  {
    subfeatures9 = [groupCopy subfeatures];
    v48 = [subfeatures9 objectAtIndex:0];

    feature10 = [v48 feature];
    if ([feature10 uiClass] == 11)
    {
    }

    else
    {
      feature11 = [v48 feature];
      uiClass5 = [feature11 uiClass];

      if (uiClass5 != 17)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    [groupCopy setIncludeChildren:0];
    [(AXMLElementCoagulation *)self _removeFeatureFromGroup:groupCopy feature:v48];
    [array addObject:v48];
    goto LABEL_19;
  }

LABEL_20:
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v50 = array;
  v51 = [v50 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v68;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v68 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [v9 removeObject:{*(*(&v67 + 1) + 8 * i), v67}];
      }

      v52 = [v50 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v52);
  }

  return v9;
}

- (id)_getGroupedTextButtonFeatures:(id)features
{
  featuresCopy = features;
  v5 = [featuresCopy count];
  v6 = [featuresCopy copy];
  v7 = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v9 = [featuresCopy objectAtIndex:i];
      v10 = [(AXMLElementCoagulation *)self _groupSingleContainerAsButton:featuresCopy featureToGroup:v9];

      v7 = v10;
    }
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (void)_mergeFeatureIntoGroup:(id)group feature:(id)feature
{
  groupCopy = group;
  featureCopy = feature;
  [featureCopy setTopLevel:0];
  [groupCopy frame];
  if (CGRectIsEmpty(v25))
  {
    [featureCopy frame];
  }

  else
  {
    [groupCopy frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [featureCopy frame];
    v27.origin.x = v18;
    v27.origin.y = v19;
    v27.size.width = v20;
    v27.size.height = v21;
    v26.origin.x = v11;
    v26.origin.y = v13;
    v26.size.width = v15;
    v26.size.height = v17;
    *&v6 = CGRectUnion(v26, v27);
  }

  [groupCopy setFrame:{v6, v7, v8, v9}];
  subfeatures = [groupCopy subfeatures];
  [subfeatures addObject:featureCopy];
}

- (void)_removeFeatureFromGroup:(id)group feature:(id)feature
{
  v38 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  featureCopy = feature;
  [featureCopy setTopLevel:{objc_msgSend(groupCopy, "topLevel")}];
  subfeatures = [groupCopy subfeatures];
  [subfeatures removeObject:featureCopy];

  subfeatures2 = [groupCopy subfeatures];
  if ([subfeatures2 count])
  {
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    feature = [groupCopy feature];
    [feature frame];
    v9 = v14;
    v10 = v15;
    v11 = v16;
    v12 = v17;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  subfeatures3 = [groupCopy subfeatures];
  v19 = [subfeatures3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      v22 = 0;
      do
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(subfeatures3);
        }

        v23 = *(*(&v33 + 1) + 8 * v22);
        v39.origin.x = v9;
        v39.origin.y = v10;
        v39.size.width = v11;
        v39.size.height = v12;
        IsEmpty = CGRectIsEmpty(v39);
        [v23 frame];
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v32 = v28;
        if (!IsEmpty)
        {
          v40.origin.x = v9;
          v40.origin.y = v10;
          v40.size.width = v11;
          v40.size.height = v12;
          *&v25 = CGRectUnion(v40, *&v29);
        }

        v9 = v25;
        v10 = v26;
        v11 = v27;
        v12 = v28;
        ++v22;
      }

      while (v20 != v22);
      v20 = [subfeatures3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v20);
  }

  [groupCopy setFrame:{v9, v10, v11, v12}];
}

- (BOOL)_allTabGroupsHaveSingleSubfeature:(id)subfeature
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subfeatureCopy = subfeature;
  v4 = [subfeatureCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(subfeatureCopy);
        }

        subfeatures = [*(*(&v12 + 1) + 8 * i) subfeatures];
        v9 = [subfeatures count];

        if (v9 > 1)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [subfeatureCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)_getTabGroupSubfeatureUIClassTypes:(id)types
{
  v30 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = typesCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        subfeatures = [v8 subfeatures];
        v10 = [subfeatures countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(subfeatures);
              }

              v14 = MEMORY[0x1E696AD98];
              feature = [*(*(&v20 + 1) + 8 * j) feature];
              v16 = [v14 numberWithInteger:{objc_msgSend(feature, "uiClass")}];
              [v4 addObject:v16];
            }

            v11 = [subfeatures countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)_shouldBeTabBar:(BOOL)bar groupedTabButtons:(id)buttons
{
  barCopy = bar;
  buttonsCopy = buttons;
  v7 = [(AXMLElementCoagulation *)self _getTabGroupSubfeatureUIClassTypes:buttonsCopy];
  v11 = (!barCopy || [v7 count] == 1 && (objc_msgSend(v8, "anyObject"), v9 = v8 = v7;

  return v11;
}

- (void)_improveFeatureFrames:(id)frames
{
  v109 = *MEMORY[0x1E69E9840];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  framesCopy = frames;
  v5 = [framesCopy countByEnumeratingWithState:&v103 objects:v108 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v104;
    do
    {
      v8 = 0;
      v98 = v6;
      do
      {
        if (*v104 != v7)
        {
          objc_enumerationMutation(framesCopy);
        }

        v9 = *(*(&v103 + 1) + 8 * v8);
        [(AXMLElementCoagulation *)self canvasSize];
        v11 = v10;
        [(AXMLElementCoagulation *)self canvasSize];
        v13 = v12;
        feature = [v9 feature];
        uiClass = [feature uiClass];

        if (uiClass != 8)
        {
          [(AXMLElementCoagulation *)self canvasSize];
          v17 = v16 * 0.125;
          [v9 frame];
          if (CGRectGetWidth(v110) <= v17 || ([v9 frame], CGRectGetHeight(v111) <= v17))
          {
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v18 = framesCopy;
            v19 = [v18 countByEnumeratingWithState:&v99 objects:v107 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v100;
              v22 = 0.0;
              v23 = 0.0;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v100 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v25 = *(*(&v99 + 1) + 8 * i);
                  if (([v9 isEqual:v25] & 1) == 0)
                  {
                    [v9 frame];
                    v27 = v26;
                    v29 = v28;
                    v31 = v30;
                    v33 = v32;
                    [v25 frame];
                    AXMIntersectionOverUnion(v27, v29, v31, v33, v34, v35, v36, v37);
                    if (v38 != 0.0)
                    {
                      goto LABEL_31;
                    }

                    [v9 frame];
                    v40 = v39;
                    v42 = v41;
                    v44 = v43;
                    v46 = v45;
                    [v25 frame];
                    if ([(AXMLElementCoagulation *)self _hasYOverlap:v40 obj2:v42, v44, v46, v47, v48, v49, v50])
                    {
                      [v25 frame];
                      MaxX = CGRectGetMaxX(v112);
                      [v9 frame];
                      MinX = CGRectGetMinX(v113);
                      v53 = fmax(v23, MaxX);
                      if (MaxX <= MinX)
                      {
                        v23 = v53;
                      }

                      [v25 frame];
                      v54 = CGRectGetMinX(v114);
                      [v9 frame];
                      v55 = v54 < CGRectGetMaxX(v115);
                      v56 = fmin(v11, v54);
                      if (!v55)
                      {
                        v11 = v56;
                      }
                    }

                    [v9 frame];
                    v58 = v57;
                    v60 = v59;
                    v62 = v61;
                    v64 = v63;
                    [v25 frame];
                    if ([(AXMLElementCoagulation *)self _hasXOverlap:v58 obj2:v60, v62, v64, v65, v66, v67, v68])
                    {
                      [v25 frame];
                      MaxY = CGRectGetMaxY(v116);
                      [v9 frame];
                      MinY = CGRectGetMinY(v117);
                      v71 = fmax(v22, MaxY);
                      if (MaxY <= MinY)
                      {
                        v22 = v71;
                      }

                      [v25 frame];
                      v72 = CGRectGetMinY(v118);
                      [v9 frame];
                      if (v72 >= CGRectGetMaxY(v119))
                      {
                        v13 = fmin(v13, v72);
                      }
                    }
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v99 objects:v107 count:16];
              }

              while (v20);
            }

            else
            {
              v22 = 0.0;
              v23 = 0.0;
            }

            [v9 frame];
            v73 = fmax(v23, CGRectGetMinX(v120) + -20.0);
            [v9 frame];
            v74 = fmax(v22, CGRectGetMinY(v121) + -20.0);
            [v9 frame];
            v75 = fmin(v11, CGRectGetMaxX(v122) + 20.0);
            [v9 frame];
            v76 = fmin(v13, CGRectGetMaxY(v123) + 20.0);
            v77 = fmax(v73, 0.0);
            v78 = fmax(v74, 0.0);
            [(AXMLElementCoagulation *)self canvasSize];
            v80 = fmin(v75, v79);
            [(AXMLElementCoagulation *)self canvasSize];
            v82 = v80 - v77;
            v83 = fmin(v76, v81) - v78;
            [v9 setFrame:{v77, v78, v82, v83}];
            feature2 = [v9 feature];
            uiClass2 = [feature2 uiClass];
            [v9 confidence];
            v86 = v85;
            feature3 = [v9 feature];
            value = [feature3 value];
            [(AXMLElementCoagulation *)self canvasSize];
            v90 = v89;
            v92 = v91;
            [v9 childFeatures];
            v93 = v7;
            v95 = v94 = framesCopy;
            v18 = [AXMVisionFeature groupedFeatureWithElementRect:uiClass2 uiClass:value confidence:v95 label:v77 canvasSize:v78 subElements:v82, v83, v86, v90, v92];

            framesCopy = v94;
            v7 = v93;

            feature4 = [v9 feature];
            [feature4 activationPoint];
            [v18 setActivationPoint:?];

            [v9 setFeature:v18];
LABEL_31:

            v6 = v98;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [framesCopy countByEnumeratingWithState:&v103 objects:v108 count:16];
    }

    while (v6);
  }
}

- (id)_getFeaturesForAXMLTabButtonGroups:(id)groups
{
  v102 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v5 = [groupsCopy count];
  [(AXMLElementCoagulation *)self canvasSize];
  v7 = v6;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v8 = groupsCopy;
  v9 = [v8 countByEnumeratingWithState:&v96 objects:v101 count:16];
  if (v9)
  {
    v10 = v9;
    v89 = v5;
    v11 = 0;
    v12 = 0;
    v13 = *v97;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v97 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v96 + 1) + 8 * i);
        [v15 frame];
        v7 = fmin(v7, CGRectGetMinY(v104));
        [v15 frame];
        v12 = fmax(v12, CGRectGetMaxY(v105));
        subfeatures = [v15 subfeatures];
        v17 = [subfeatures count] == 1;

        v11 |= v17;
      }

      v10 = [v8 countByEnumeratingWithState:&v96 objects:v101 count:16];
    }

    while (v10);

    if (v11)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v18 = v8;
      v19 = [v18 countByEnumeratingWithState:&v92 objects:v100 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v93;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v93 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v92 + 1) + 8 * j);
            subfeatures2 = [v23 subfeatures];
            v25 = [subfeatures2 count];

            if (v25 == 1)
            {
              [v23 frame];
              v26 = fmax(CGRectGetMinX(v106) + -20.0, 0.0);
              [v23 frame];
              v27 = fmax(CGRectGetMinY(v107) + -20.0, 0.0);
              [(AXMLElementCoagulation *)self canvasSize];
              v29 = v28;
              [v23 frame];
              v30 = fmin(v29, CGRectGetMaxX(v108) + 20.0);
              [(AXMLElementCoagulation *)self canvasSize];
              v32 = v31;
              [v23 frame];
              [v23 setFrame:{v26, v27, (v30 - v26), (fmin(v32, CGRectGetMaxY(v109) + 20.0) - v27)}];
            }

            subfeatures3 = [v23 subfeatures];
            v34 = [(AXMLElementCoagulation *)self _compareForY:subfeatures3];
            v35 = [v34 mutableCopy];
            [v23 setSubfeatures:v35];

            [v23 setIncludeChildren:0];
            [v23 frame];
            v37 = v36;
            v39 = v38;
            v41 = v40;
            v43 = v42;
            [v23 confidence];
            v45 = v44;
            textLabel = [v23 textLabel];
            [(AXMLElementCoagulation *)self canvasSize];
            v48 = v47;
            v50 = v49;
            childFeatures = [v23 childFeatures];
            v52 = [AXMVisionFeature groupedFeatureWithElementRect:18 uiClass:textLabel confidence:childFeatures label:v37 canvasSize:v39 subElements:v41, v43, v45, v48, v50];

            [v23 setFeature:v52];
          }

          v20 = [v18 countByEnumeratingWithState:&v92 objects:v100 count:16];
        }

        while (v20);
      }

      goto LABEL_31;
    }

    v91 = v12 + 20.0;
    v5 = v89;
  }

  else
  {

    v91 = 20.0;
  }

  if ([v8 count])
  {
    v53 = 0;
    v54 = fmax(v7, 0.0);
    v90 = v5 - 2;
    do
    {
      v55 = [v8 objectAtIndex:{v53, v90}];
      if (v5 >= 2)
      {
        if (v53)
        {
          if (v5 - 1 == v53)
          {
            v56 = [v8 objectAtIndex:v90];
            [v56 frame];
            MaxX = CGRectGetMaxX(v110);
            [v55 frame];
            v58 = CGRectGetMaxX(v111);
            [v55 frame];
            v59 = v58 + CGRectGetMinX(v112) - MaxX;
          }

          else
          {
            v56 = [v8 objectAtIndex:v53 - 1];
            v62 = [v8 objectAtIndex:v53 + 1];
            [v56 frame];
            MaxX = CGRectGetMaxX(v117);
            [v55 frame];
            v63 = CGRectGetMaxX(v118);
            [v62 frame];
            v59 = (v63 + CGRectGetMinX(v119)) * 0.5;
          }
        }

        else
        {
          v56 = [v8 objectAtIndex:1];
          [v55 frame];
          v60 = CGRectGetMaxX(v113);
          [v56 frame];
          v59 = (v60 + CGRectGetMinX(v114)) * 0.5;
          [v55 frame];
          MinX = CGRectGetMinX(v115);
          [v55 frame];
          MaxX = MinX - (v59 - CGRectGetMaxX(v116));
        }

        v64 = fmax(floor(MaxX), 0.0);
        [(AXMLElementCoagulation *)self canvasSize];
        v66 = fmin(v65, floor(v59));
        [(AXMLElementCoagulation *)self canvasSize];
        [v55 setFrame:{v64, v54, v66 - v64, fmin(v67, v91) - v54}];
      }

      subfeatures4 = [v55 subfeatures];
      v69 = [(AXMLElementCoagulation *)self _compareForY:subfeatures4];
      v70 = [v69 mutableCopy];
      [v55 setSubfeatures:v70];

      [v55 setIncludeChildren:0];
      [v55 frame];
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      [v55 confidence];
      v80 = v79;
      textLabel2 = [v55 textLabel];
      [(AXMLElementCoagulation *)self canvasSize];
      v83 = v82;
      v85 = v84;
      childFeatures2 = [v55 childFeatures];
      v87 = [AXMVisionFeature groupedFeatureWithElementRect:18 uiClass:textLabel2 confidence:childFeatures2 label:v72 canvasSize:v74 subElements:v76, v78, v80, v83, v85];

      [v55 setFeature:v87];
      ++v53;
    }

    while (v53 < [v8 count]);
  }

LABEL_31:

  return v8;
}

- (id)_getGroupedTabBarFeatures:(id)features
{
  v53 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  array = [MEMORY[0x1E695DF70] array];
  if ([featuresCopy count])
  {
    v6 = [(AXMLElementCoagulation *)self _compareForX:featuresCopy];

    if ([(AXMLElementCoagulation *)self isiPad])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v47;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v46 + 1) + 8 * i);
            [v12 frame];
            v13 = CGRectGetHeight(v55) * 0.5;
            [v12 frame];
            v14 = CGRectGetMinX(v56) - v13;
            [v12 frame];
            v15 = CGRectGetWidth(v57) + v13 * 2.0;
            [v12 frame];
            MinY = CGRectGetMinY(v58);
            [v12 frame];
            [v12 setFrame:{v14, MinY, v15, CGRectGetHeight(v59)}];
          }

          v9 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v9);
      }
    }

    v17 = [(AXMLElementCoagulation *)self _getHorizontalSegmentationPointDict:v6];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __52__AXMLElementCoagulation__getGroupedTabBarFeatures___block_invoke;
    v44[3] = &unk_1E7A1DC68;
    v44[4] = self;
    array = array;
    v45 = array;
    [v17 enumerateKeysAndObjectsUsingBlock:v44];
    if ([array count] > 1)
    {
      selfCopy = self;
      v34 = v17;
      v35 = v6;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      array = array;
      v24 = [array countByEnumeratingWithState:&v36 objects:v50 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        v27 = 1;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(array);
            }

            subfeatures = [*(*(&v36 + 1) + 8 * j) subfeatures];
            v30 = [subfeatures ax_mappedArrayUsingBlock:&__block_literal_global_201];

            if (([v30 containsObject:&unk_1F240A960] & 1) == 0)
            {
              v27 &= [v30 containsObject:&unk_1F240AA20];
            }
          }

          v25 = [array countByEnumeratingWithState:&v36 objects:v50 count:16];
        }

        while (v25);
      }

      else
      {
        LOBYTE(v27) = 1;
      }

      if ([array count] < 6 || (v27 & 1) != 0)
      {
        v31 = [(AXMLElementCoagulation *)selfCopy _reorderByXCut:array];

        array2 = [(AXMLElementCoagulation *)selfCopy _getFeaturesForAXMLTabButtonGroups:v31];
        array = v31;
      }

      else
      {
        array2 = [MEMORY[0x1E695DF70] array];
      }

      v17 = v34;
      v6 = v35;
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v18 = v6;
      v19 = [v18 countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v41;
        do
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v40 + 1) + 8 * k) setTopLevel:1];
          }

          v20 = [v18 countByEnumeratingWithState:&v40 objects:v51 count:16];
        }

        while (v20);
      }

      array2 = [MEMORY[0x1E695DF70] array];
    }
  }

  else
  {
    v6 = featuresCopy;
    array2 = v6;
  }

  return array2;
}

void __52__AXMLElementCoagulation__getGroupedTabBarFeatures___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(AXMLTabButtonGroup);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) _mergeFeatureIntoGroup:v5 feature:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [*(a1 + 40) addObject:v5];
  }
}

id __52__AXMLElementCoagulation__getGroupedTabBarFeatures___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 feature];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "uiClass")}];

  return v4;
}

- (id)_compareForY:(id)y
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AXMLElementCoagulation__compareForY___block_invoke;
  v5[3] = &unk_1E7A1DC90;
  v5[4] = self;
  v3 = [y sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __39__AXMLElementCoagulation__compareForY___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  return [v4 _compareY:v7 frame2:{v9, v11, v13, v15, v17, v19, v21}];
}

- (id)_compareForX:(id)x
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AXMLElementCoagulation__compareForX___block_invoke;
  v5[3] = &unk_1E7A1DC90;
  v5[4] = self;
  v3 = [x sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __39__AXMLElementCoagulation__compareForX___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  return [v4 _compareX:v7 frame2:{v9, v11, v13, v15, v17, v19, v21}];
}

uint64_t __39__AXMLElementCoagulation__compareArea___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 frame];
  v7 = v6;
  [v5 frame];
  v9 = v8;

  v10 = v7 * v9;
  [v4 frame];
  v12 = v11;
  [v4 frame];
  v14 = v13;

  if (v10 >= v12 * v14)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __52__AXMLElementCoagulation__sortFeaturesReadingOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 frame];
  v7 = v6;
  [v4 frame];
  v9 = vabdd_f64(v7, v8);
  [v5 frame];
  v11 = v10;
  v13 = v12;

  [v4 frame];
  v16 = v13 < v15;
  if (v9 < 20.0)
  {
    v16 = v11 < v14;
  }

  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)_getCandidateTabBarFeatures:(id)features screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v62 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  array = [MEMORY[0x1E695DF70] array];
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F240A960, &unk_1F240AA20, &unk_1F240A918, &unk_1F240A930, 0}];
  if (![featuresCopy count])
  {
    goto LABEL_41;
  }

  if ([(AXMLElementCoagulation *)self isiPad])
  {
    v9 = 0.9;
  }

  else
  {
    v9 = 0.85;
  }

  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  featuresCopy = featuresCopy;
  v10 = [featuresCopy countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (!v10)
  {

LABEL_41:
    v44 = array;
    goto LABEL_45;
  }

  v11 = v10;
  v12 = 0;
  v13 = height * v9;
  v14 = *v56;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v56 != v14)
      {
        objc_enumerationMutation(featuresCopy);
      }

      v16 = *(*(&v55 + 1) + 8 * i);
      if ([v16 uiClass] == 10)
      {
        [v16 frame];
        if (CGRectGetMinY(v64) >= v13)
        {
          if (!v12 || ([v12 confidence], v18 = v17, objc_msgSend(v16, "confidence"), v18 < v19))
          {
            v20 = v16;

            v12 = v20;
          }
        }
      }
    }

    v11 = [featuresCopy countByEnumeratingWithState:&v55 objects:v61 count:16];
  }

  while (v11);

  if (!v12)
  {
    goto LABEL_41;
  }

  [v12 frame];
  MinY = CGRectGetMinY(v65);
  v22 = [featuresCopy sortedArrayUsingComparator:&__block_literal_global_210];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  featuresCopy = v22;
  v23 = [featuresCopy countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = height - MinY;
    v26 = *v52;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(featuresCopy);
        }

        v28 = *(*(&v51 + 1) + 8 * j);
        v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v28, "uiClass")}];
        v30 = [v46 indexOfObject:v29];

        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v28 frame];
          if (CGRectGetMinY(v66) >= v13)
          {
            [v28 frame];
            if (AXMIsContainedBy(0.0, MinY, width, v25, v31, v32, v33, v34, 0.5))
            {
              [array addObject:v28];
            }
          }
        }
      }

      v24 = [featuresCopy countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v24);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v35 = array;
  v36 = [v35 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v36)
  {

    v40 = 0x1E695D000uLL;
LABEL_43:
    array2 = [*(v40 + 3952) array];
    goto LABEL_44;
  }

  v37 = v36;
  v38 = *v48;
  v39 = 1;
  v40 = 0x1E695D000;
  do
  {
    for (k = 0; k != v37; ++k)
    {
      if (*v48 != v38)
      {
        objc_enumerationMutation(v35);
      }

      v42 = *(*(&v47 + 1) + 8 * k);
      if ([v42 uiClass] != 11)
      {
        v39 &= [v42 uiClass] == 17;
      }
    }

    v37 = [v35 countByEnumeratingWithState:&v47 objects:v59 count:16];
  }

  while (v37);

  if (v39)
  {
    goto LABEL_43;
  }

  array2 = v35;
LABEL_44:
  v44 = array2;

LABEL_45:

  return v44;
}

uint64_t __65__AXMLElementCoagulation__getCandidateTabBarFeatures_screenSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  if (v6 >= 1.0)
  {
    v12 = -1;
  }

  else
  {
    [v5 confidence];
    if (v7 >= 1.0)
    {
      v12 = 1;
    }

    else
    {
      v8 = MEMORY[0x1E696AD98];
      [v4 confidence];
      v9 = [v8 numberWithDouble:?];
      v10 = MEMORY[0x1E696AD98];
      [v5 confidence];
      v11 = [v10 numberWithDouble:?];
      v12 = [v9 compare:v11] == 0;
    }
  }

  return v12;
}

- (id)_repairTextInTabItems:(id)items
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [items mutableCopy];
  v4 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_212];
  v60 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_214];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v4;
  v61 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v61)
  {
    v59 = *v69;
    do
    {
      v5 = 0;
      do
      {
        if (*v69 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v5;
        v6 = *(*(&v68 + 1) + 8 * v5);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v7 = v60;
        v8 = [v7 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v65;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v65 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v64 + 1) + 8 * i);
              [v6 frame];
              v14 = v13;
              v16 = v15;
              v18 = v17;
              v20 = v19;
              [v12 frame];
              AXMIntersectionOverUnion(v14, v16, v18, v20, v21, v22, v23, v24);
              if (v25 != 0.0)
              {
                [v12 frame];
                v27 = v26;
                v29 = v28;
                v31 = v30;
                v33 = v32;
                [v6 frame];
                if (AXMIsContainedBy(v27, v29, v31, v33, v34, v35, v36, v37, 0.8))
                {
                  [v3 removeObject:v6];
                  goto LABEL_22;
                }

                [v6 frame];
                MaxX = CGRectGetMaxX(v76);
                [v12 frame];
                if (MaxX > CGRectGetMaxX(v77))
                {
                  [v12 frame];
                  v39 = CGRectGetMaxX(v78);
                  [v6 frame];
                  MinY = CGRectGetMinY(v79);
                  [v6 frame];
                  v41 = CGRectGetMaxX(v80);
                  [v12 frame];
                  v42 = CGRectGetMaxX(v81);
                  [v6 frame];
                  Height = CGRectGetHeight(v82);
                  value = [v6 value];
                  v45 = [value rangeOfString:@" "];
                  if (v45 != 0x7FFFFFFFFFFFFFFFLL && [value length] > (v45 + 1))
                  {
                    v46 = [value substringFromIndex:?];

                    value = v46;
                  }

                  v47 = v41 - v42;
                  uiClass = [v6 uiClass];
                  [v6 confidence];
                  v50 = v49;
                  [(AXMLElementCoagulation *)self canvasSize];
                  v52 = v51;
                  v54 = v53;
                  subfeatures = [v6 subfeatures];
                  v56 = [AXMVisionFeature groupedFeatureWithElementRect:uiClass uiClass:value confidence:subfeatures label:v39 canvasSize:MinY subElements:v47, Height, v50, v52, v54];

                  [v3 removeObject:v6];
                  [v3 addObject:v56];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v64 objects:v72 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        v5 = v62 + 1;
      }

      while (v62 + 1 != v61);
      v61 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v61);
  }

  return v3;
}

BOOL __48__AXMLElementCoagulation__repairTextInTabItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 uiClass] == 11 || objc_msgSend(v2, "uiClass") == 17;

  return v3;
}

BOOL __48__AXMLElementCoagulation__repairTextInTabItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 uiClass] == 5 || objc_msgSend(v2, "uiClass") == 16;

  return v3;
}

- (id)_reorderedTabsForSortedFeatures:(id)features screenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v25 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  height = [(AXMLElementCoagulation *)self _getCandidateTabBarFeatures:featuresCopy screenSize:width, height];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [height countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = 0.0;
    v13 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(height);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        [v15 frame];
        v13 = fmin(v13, CGRectGetMinY(v27));
        [v15 frame];
        v12 = fmax(v12, CGRectGetMaxY(v28));
      }

      v10 = [height countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
    v16 = v13 + -1.0;
    v17 = v12 + 1.0;
  }

  else
  {
    v17 = 1.0;
    v16 = 1.79769313e308;
  }

  v18 = [(AXMLElementCoagulation *)self _featuresByReorderingTwoRows:featuresCopy minY:v16 maxY:v17];

  return v18;
}

- (id)_featuresByReorderingTwoRows:(id)rows minY:(double)y maxY:(double)maxY
{
  v27 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = rowsCopy;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        [v17 frame];
        MinY = CGRectGetMinY(v29);
        v19 = array;
        if (MinY >= y)
        {
          [v17 frame];
          if (CGRectGetMaxY(v30) <= maxY)
          {
            v19 = array2;
          }

          else
          {
            v19 = array3;
          }
        }

        [v19 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v20 = [(AXMLElementCoagulation *)self _reorderByXCut:array2];
  [array addObjectsFromArray:v20];

  [array addObjectsFromArray:array3];

  return array;
}

- (id)_reorderSimilarTopNeighbors:(id)neighbors
{
  neighborsCopy = neighbors;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [neighborsCopy mutableCopy];
  if ([v5 count] != 1)
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      v10 = [v5 objectAtIndexedSubscript:++v8];
      [v9 frame];
      MinY = CGRectGetMinY(v21);
      [v10 frame];
      if (MinY <= CGRectGetMinY(v22) && ([v9 frame], MaxY = CGRectGetMaxY(v23), objc_msgSend(v9, "frame"), v13 = fmin(MaxY, CGRectGetMaxY(v24)), objc_msgSend(v9, "frame"), v14 = CGRectGetMinY(v25), objc_msgSend(v10, "frame"), v15 = v13 - fmax(v14, CGRectGetMinY(v26)), objc_msgSend(v9, "frame"), v17 = v16, objc_msgSend(v10, "frame"), v15 >= fmin(v17, v18) * 0.9) && (objc_msgSend(v9, "frame"), MinX = CGRectGetMinX(v27), objc_msgSend(v10, "frame"), MinX >= CGRectGetMaxX(v28)))
      {
        [array addObject:v10];
        [v5 setObject:v9 atIndexedSubscript:v8];
      }

      else
      {
        [array addObject:v9];
      }
    }

    while (v8 < [v5 count] - 1);
  }

  lastObject = [v5 lastObject];
  [array addObject:lastObject];

  return array;
}

- (id)_reorderByYCut:(id)cut
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  cutCopy = cut;
  array = [v4 array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array2 = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v7 = [(AXMLElementCoagulation *)self _compareForY:cutCopy];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v64;
    MaxY = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        [v14 frame];
        if (CGRectGetMinY(v73) <= MaxY)
        {
          [v14 frame];
          if (CGRectGetMaxY(v75) <= MaxY)
          {
            continue;
          }
        }

        else
        {
          v15 = MEMORY[0x1E696AD98];
          [v14 frame];
          v16 = [v15 numberWithDouble:(MaxY + CGRectGetMinY(v74)) * 0.5];
          [array addObject:v16];
        }

        [v14 frame];
        MaxY = CGRectGetMaxY(v76);
      }

      v10 = [v8 countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v10);
  }

  v17 = [array sortedArrayUsingComparator:&__block_literal_global_220];
  v18 = MEMORY[0x1E696AD98];
  [(AXMLElementCoagulation *)selfCopy canvasSize];
  v20 = [v18 numberWithDouble:v19 + 1.0];
  [array addObject:v20];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v8;
  v21 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v60;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v59 + 1) + 8 * j);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v26 = array;
        v27 = [v26 countByEnumeratingWithState:&v55 objects:v68 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v56;
          while (2)
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v56 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v55 + 1) + 8 * k);
              [v31 floatValue];
              v33 = v32;
              [v25 frame];
              if (CGRectGetMinY(v77) < v33)
              {
                v34 = [dictionary objectForKey:v31];

                if (!v34)
                {
                  array3 = [MEMORY[0x1E695DF70] array];
                  [dictionary setObject:array3 forKeyedSubscript:v31];
                }

                v36 = [dictionary objectForKey:v31];
                [v36 addObject:v25];

                goto LABEL_29;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v55 objects:v68 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

LABEL_29:
      }

      v22 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v22);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = array;
  v38 = [v37 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v52;
    v41 = dictionary;
    do
    {
      v42 = 0;
      v43 = array2;
      do
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v44 = [dictionary objectForKey:*(*(&v51 + 1) + 8 * v42)];
        v45 = [(AXMLElementCoagulation *)selfCopy _reorderByXCut:v44];
        array2 = [v43 arrayByAddingObjectsFromArray:v45];

        ++v42;
        v43 = array2;
      }

      while (v39 != v42);
      v39 = [v37 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v39);
  }

  else
  {
    v41 = dictionary;
  }

  return array2;
}

- (int64_t)_compareY:(CGRect)y frame2:(CGRect)frame2
{
  if (y.origin.y < frame2.origin.y)
  {
    return -1;
  }

  else
  {
    return y.origin.y > frame2.origin.y;
  }
}

- (int64_t)_compareX:(CGRect)x frame2:(CGRect)frame2
{
  if (x.origin.x < frame2.origin.x)
  {
    return -1;
  }

  else
  {
    return x.origin.x > frame2.origin.x;
  }
}

- (id)_getHorizontalSegmentationPointDict:(id)dict
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  dictCopy = dict;
  array = [v4 array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(AXMLElementCoagulation *)self _compareForX:dictCopy];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    MaxX = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        [v14 frame];
        MinX = CGRectGetMinX(v63);
        [v14 frame];
        if (MinX <= MaxX)
        {
          if (CGRectGetMaxX(*&v16) > MaxX)
          {
            [v14 frame];
            MaxX = CGRectGetMaxX(v65);
          }
        }

        else
        {
          v20 = (MaxX + CGRectGetMinX(*&v16)) * 0.5;
          *&v20 = v20;
          v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
          [array addObject:v21];
          [v14 frame];
          MaxX = CGRectGetMaxX(v64);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v10);
  }

  v22 = [array sortedArrayUsingComparator:&__block_literal_global_222];
  v23 = MEMORY[0x1E696AD98];
  [(AXMLElementCoagulation *)self canvasSize];
  v25 = v24 + 1.0;
  *&v25 = v25;
  v43 = [v23 numberWithFloat:v25];
  [array addObject:?];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v8;
  v26 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v51;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v51 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v50 + 1) + 8 * j);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v31 = array;
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v47;
          while (2)
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v47 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v46 + 1) + 8 * k);
              [v36 floatValue];
              v38 = v37;
              [v30 frame];
              if (CGRectGetMinX(v66) < v38)
              {
                v39 = [dictionary objectForKey:v36];

                if (!v39)
                {
                  array2 = [MEMORY[0x1E695DF70] array];
                  [dictionary setObject:array2 forKeyedSubscript:v36];
                }

                v41 = [dictionary objectForKey:v36];
                [v41 addObject:v30];

                goto LABEL_29;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

LABEL_29:
      }

      v27 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v27);
  }

  return dictionary;
}

- (id)_reorderByXCut:(id)cut
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(AXMLElementCoagulation *)self _getHorizontalSegmentationPointDict:cut];
  allKeys = [v4 allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_225];

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = array;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v4 objectForKey:{*(*(&v17 + 1) + 8 * v12), v17}];
        v15 = [(AXMLElementCoagulation *)self _sortFeaturesReadingOrder:v14];
        array = [v13 arrayByAddingObjectsFromArray:v15];

        ++v12;
        v13 = array;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return array;
}

uint64_t __41__AXMLElementCoagulation__reorderByXCut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 floatValue];
  v6 = v5;
  [v4 floatValue];
  v8 = v7;

  if (v6 > v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (CGRect)appFrame
{
  x = self->_appFrame.origin.x;
  y = self->_appFrame.origin.y;
  width = self->_appFrame.size.width;
  height = self->_appFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end