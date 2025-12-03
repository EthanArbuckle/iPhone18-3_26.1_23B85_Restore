@interface AKHighlightAnnotationController
- (AKController)controller;
- (AKHighlightAnnotationController)initWithController:(id)controller;
- (BOOL)_adaptExistingHighlightsToNewHighlight:(id)highlight onPageController:(id)controller firstModifiedHighlight:(id *)modifiedHighlight;
- (BOOL)_clearHighlightsWithStyleMatchingMask:(unint64_t)mask except:(id)except inRange:(_NSRange)range onPageController:(id)controller;
- (id)_createHighlightAnnotationWithAttributeTag:(int64_t)tag;
- (id)_highlightsInCharacterIndexRange:(_NSRange)range onPageController:(id)controller;
- (id)highlightsWithinSelection;
- (void)beginContinuousHighlighting;
- (void)clearHighlightsWithinSelection;
- (void)continueHighlighting;
- (void)endContinuousHighlighting;
- (void)performOneShotHighlightWithAttributeTag:(int64_t)tag;
@end

@implementation AKHighlightAnnotationController

- (AKHighlightAnnotationController)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKHighlightAnnotationController;
  v5 = [(AKHighlightAnnotationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v6;
}

- (void)performOneShotHighlightWithAttributeTag:(int64_t)tag
{
  controller = [(AKHighlightAnnotationController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      currentPageController = [controller currentPageController];
      v8 = [delegate highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(currentPageController forAnnotationController:{"pageIndex"), controller}];
      v9 = [(AKHighlightAnnotationController *)self _createHighlightAnnotationWithAttributeTag:tag];
      v10 = [delegate quadPointsForCharacterIndexes:v8 onPageAtIndex:objc_msgSend(currentPageController forAnnotationController:{"pageIndex"), controller}];
      [v9 setQuadPoints:v10];
      v18 = 0;
      v11 = [(AKHighlightAnnotationController *)self _adaptExistingHighlightsToNewHighlight:v9 onPageController:currentPageController firstModifiedHighlight:&v18];
      v12 = v18;
      if (v11)
      {
        toolController = [controller toolController];
        [toolController addNewAnnotation:v9 onPageController:currentPageController shouldSelect:1 shouldCascade:0];

        v14 = v9;
        v12 = v14;
      }

      if (v12)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F44EC64;
        block[3] = &unk_278C7B810;
        v16 = currentPageController;
        v17 = v12;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      NSLog(&cfstr_SDelegateDoesN_0.isa, "[AKHighlightAnnotationController performOneShotHighlightWithAttributeTag:]");
    }
  }

  else
  {
    NSLog(&cfstr_SDelegateDoesN.isa, "[AKHighlightAnnotationController performOneShotHighlightWithAttributeTag:]");
  }
}

- (void)clearHighlightsWithinSelection
{
  controller = [(AKHighlightAnnotationController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      currentPageController = [controller currentPageController];
      v5 = [delegate highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(currentPageController forAnnotationController:{"pageIndex"), controller}];
      -[AKHighlightAnnotationController _clearHighlightsWithStyleMatchingMask:except:inRange:onPageController:](self, "_clearHighlightsWithStyleMatchingMask:except:inRange:onPageController:", -1, 0, [v5 firstIndex], objc_msgSend(v5, "lastIndex") - objc_msgSend(v5, "firstIndex") + 1, currentPageController);
    }

    else
    {
      NSLog(&cfstr_SDelegateDoesN.isa, "[AKHighlightAnnotationController clearHighlightsWithinSelection]");
    }
  }

  else
  {
    NSLog(&cfstr_SDelegateDoesN_1.isa, "[AKHighlightAnnotationController clearHighlightsWithinSelection]");
  }
}

- (id)highlightsWithinSelection
{
  controller = [(AKHighlightAnnotationController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if ([delegate hasHighlightableSelectionForAnnotationController:controller])
    {
      currentPageController = [controller currentPageController];
      v6 = [delegate highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(currentPageController forAnnotationController:{"pageIndex"), controller}];
      v7 = -[AKHighlightAnnotationController _highlightsInCharacterIndexRange:onPageController:](self, "_highlightsInCharacterIndexRange:onPageController:", [v6 firstIndex], objc_msgSend(v6, "lastIndex") - objc_msgSend(v6, "firstIndex") + 1, currentPageController);

      goto LABEL_7;
    }
  }

  else
  {
    NSLog(&cfstr_SDelegateDoesN.isa, "[AKHighlightAnnotationController highlightsWithinSelection]");
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_7:

  return v7;
}

- (void)beginContinuousHighlighting
{
  controller = [(AKHighlightAnnotationController *)self controller];
  attributeController = [controller attributeController];
  v4 = -[AKHighlightAnnotationController _createHighlightAnnotationWithAttributeTag:](self, "_createHighlightAnnotationWithAttributeTag:", [attributeController highlightStyle]);
  [(AKHighlightAnnotationController *)self setContinuousHighlight:v4];

  toolController = [controller toolController];
  continuousHighlight = [(AKHighlightAnnotationController *)self continuousHighlight];
  [toolController addNewAnnotation:continuousHighlight onPageController:0 shouldSelect:1 shouldCascade:0];
}

- (void)continueHighlighting
{
  controller = [(AKHighlightAnnotationController *)self controller];
  delegate = [controller delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate hasHighlightableSelectionForAnnotationController:controller])
  {
    currentPageController = [controller currentPageController];
    v5 = [delegate highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(currentPageController forAnnotationController:{"pageIndex"), controller}];
    v6 = [delegate quadPointsForCharacterIndexes:v5 onPageAtIndex:objc_msgSend(currentPageController forAnnotationController:{"pageIndex"), controller}];
    continuousHighlight = [(AKHighlightAnnotationController *)self continuousHighlight];
    [continuousHighlight setQuadPoints:v6];
  }
}

- (void)endContinuousHighlighting
{
  continuousHighlight = [(AKHighlightAnnotationController *)self continuousHighlight];

  if (continuousHighlight)
  {
    controller = [(AKHighlightAnnotationController *)self controller];
    delegate = [controller delegate];
    currentPageController = [controller currentPageController];
    continuousHighlight2 = [(AKHighlightAnnotationController *)self continuousHighlight];
    quadPoints = [continuousHighlight2 quadPoints];
    v8 = [quadPoints count];

    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        continuousHighlight3 = [(AKHighlightAnnotationController *)self continuousHighlight];
        v10 = [(AKHighlightAnnotationController *)self _adaptExistingHighlightsToNewHighlight:continuousHighlight3 onPageController:currentPageController firstModifiedHighlight:0];

        if (!v10)
        {
          pageModelController = [currentPageController pageModelController];
          v12 = [pageModelController mutableArrayValueForKey:@"annotations"];
          continuousHighlight4 = [(AKHighlightAnnotationController *)self continuousHighlight];
          [v12 removeObject:continuousHighlight4];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate clearHighlightableSelectionForAnnotationController:controller];
      }
    }

    else
    {
      pageModelController2 = [currentPageController pageModelController];
      v15 = [pageModelController2 mutableArrayValueForKey:@"annotations"];
      continuousHighlight5 = [(AKHighlightAnnotationController *)self continuousHighlight];
      [v15 removeObject:continuousHighlight5];
    }

    [(AKHighlightAnnotationController *)self setContinuousHighlight:0];
  }
}

- (id)_createHighlightAnnotationWithAttributeTag:(int64_t)tag
{
  v4 = objc_opt_new();
  if ((tag - 765200) > 6)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = qword_23F4D8F70[tag - 765200];
    v6 = [AKHighlightAppearanceHelper colorForHighlightAttributeWithTag:tag];
  }

  [v4 setColor:v6];
  [v4 setStyle:v5];

  return v4;
}

- (id)_highlightsInCharacterIndexRange:(_NSRange)range onPageController:(id)controller
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  array = [MEMORY[0x277CBEB18] array];
  controller = [controllerCopy controller];
  delegate = [controller delegate];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = controllerCopy;
  pageModelController = [controllerCopy pageModelController];
  annotations = [pageModelController annotations];

  v9 = [annotations countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(annotations);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = v13;
          quadPoints = [v16 quadPoints];
          v18 = [delegate characterIndexesForQuadPoints:quadPoints onPageAtIndex:objc_msgSend(v6 forAnnotationController:{"pageIndex"), controller}];
          v19 = v18;
          if (v18 && [v18 countOfIndexesInRange:{range.location, range.length}])
          {
            [array addObject:v16];
          }
        }
      }

      v10 = [annotations countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  return array;
}

- (BOOL)_adaptExistingHighlightsToNewHighlight:(id)highlight onPageController:(id)controller firstModifiedHighlight:(id *)modifiedHighlight
{
  v122 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  controllerCopy = controller;
  selfCopy = self;
  controller = [(AKHighlightAnnotationController *)self controller];
  delegate = [controller delegate];
  array = [MEMORY[0x277CBEB18] array];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v105 = controllerCopy;
  pageModelController = [controllerCopy pageModelController];
  annotations = [pageModelController annotations];

  v11 = [annotations countByEnumeratingWithState:&v113 objects:v121 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v114;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v114 != v13)
        {
          objc_enumerationMutation(annotations);
        }

        v15 = *(*(&v113 + 1) + 8 * i);
        v16 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) != 0 && v15 != highlightCopy)
        {
          quadPoints = [v15 quadPoints];
          v19 = [delegate characterIndexesForQuadPoints:quadPoints onPageAtIndex:objc_msgSend(controllerCopy forAnnotationController:{"pageIndex"), controller}];

          v119[0] = @"annotation";
          v119[1] = @"characterIndexes";
          v120[0] = v15;
          v120[1] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
          [array addObject:v20];
        }
      }

      v12 = [annotations countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v12);
  }

  v21 = array;
  if (![array count])
  {
    v30 = 0;
    v31 = 1;
    modifiedHighlightCopy4 = modifiedHighlight;
    if (!modifiedHighlight)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  [array sortUsingComparator:&unk_28519E6F0];
  quadPoints2 = [highlightCopy quadPoints];
  v23 = [delegate characterIndexesForQuadPoints:quadPoints2 onPageAtIndex:objc_msgSend(controllerCopy forAnnotationController:{"pageIndex"), controller}];

  firstIndex = [v23 firstIndex];
  lastIndex = [v23 lastIndex];
  firstIndex2 = [v23 firstIndex];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = sub_23F450084;
  v110[3] = &unk_278C7BD08;
  v25 = highlightCopy;
  v111 = v25;
  v26 = v23;
  v112 = v26;
  v27 = [array indexOfObjectPassingTest:v110];
  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v33 = v27;
    [array objectAtIndex:v27];
    v35 = v34 = lastIndex;
    v29 = [v35 objectForKeyedSubscript:@"annotation"];

    lastIndex = v34;
    v36 = [v21 objectAtIndex:v33];
    v28 = [v36 objectForKeyedSubscript:@"characterIndexes"];
  }

  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = sub_23F45013C;
  v107[3] = &unk_278C7BD08;
  v37 = v25;
  v108 = v37;
  v38 = v26;
  v109 = v38;
  v39 = [v21 indexOfObjectPassingTest:v107];
  if (v39 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v100 = 0;
    v40 = 0;
    if (!v29)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v39;
    v42 = [v21 objectAtIndex:v39];
    v40 = [v42 objectForKeyedSubscript:@"annotation"];

    v43 = [v21 objectAtIndex:v41];
    v100 = [v43 objectForKeyedSubscript:@"characterIndexes"];

    if (!v29)
    {
      goto LABEL_32;
    }
  }

  if (v29 != v40 || (v44 = [v29 style], v44 != objc_msgSend(v37, "style")) || (objc_msgSend(v29, "color"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "color"), v46 = lastIndex, v47 = objc_claimAutoreleasedReturnValue(), v48 = +[AKHighlightAppearanceHelper highlightColor:isEquivalentToHighlightColor:](AKHighlightAppearanceHelper, "highlightColor:isEquivalentToHighlightColor:", v45, v47), v47, lastIndex = v46, v45, !v48))
  {
LABEL_32:
    v96 = v38;
    v57 = lastIndex - firstIndex2;
    if ((v29 != 0) != (v40 != 0))
    {
      style = [v37 style];
      v59 = v29 ? v29 : v40;
      if (style == [v59 style])
      {
        color = [v37 color];
        color2 = [v59 color];
        v62 = [AKHighlightAppearanceHelper highlightColor:color isEquivalentToHighlightColor:color2];

        if (v62)
        {
          v63 = v59;
          quadPoints3 = [v63 quadPoints];
          v98 = v57;
          v93 = [delegate characterIndexesForQuadPoints:quadPoints3 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), controller}];

          pageModelController3 = [v93 mutableCopy];
          [pageModelController3 addIndexes:v96];
          v65 = [delegate quadPointsForCharacterIndexes:pageModelController3 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), controller}];
          [v63 setQuadPoints:v65];
          v30 = v63;
          v66 = 1 << [v37 style];
          v67 = MEMORY[0x277CBEB98];
          v118[0] = v37;
          v118[1] = v30;
          v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
          v69 = [v67 setWithArray:v68];
          v70 = v66;
          v38 = v96;
          [(AKHighlightAnnotationController *)selfCopy _clearHighlightsWithStyleMatchingMask:v70 except:v69 inRange:firstIndex onPageController:v98 + 1, v105];

          goto LABEL_39;
        }
      }
    }

    if (v29)
    {
      if (v40)
      {
        if (v29 != v40)
        {
          style2 = [v37 style];
          if (style2 == [v29 style])
          {
            style3 = [v37 style];
            if (style3 == [v40 style])
            {
              color3 = [v37 color];
              color4 = [v29 color];
              if ([AKHighlightAppearanceHelper highlightColor:color3 isEquivalentToHighlightColor:color4])
              {
                color5 = [v37 color];
                color6 = [v40 color];
                v95 = [AKHighlightAppearanceHelper highlightColor:color5 isEquivalentToHighlightColor:color6];

                if (v95)
                {
                  v91 = v100;
                  v92 = v28;
                  pageModelController3 = [v92 mutableCopy];
                  [pageModelController3 addIndexes:v91];
                  [pageModelController3 addIndexes:v96];
                  v94 = [delegate quadPointsForCharacterIndexes:pageModelController3 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), controller}];
                  [v29 setQuadPoints:v94];
                  v30 = v29;
                  pageModelController2 = [v105 pageModelController];
                  v78 = [pageModelController2 mutableArrayValueForKey:@"annotations"];
                  [v78 removeObject:v40];

                  v79 = 1 << [v37 style];
                  v80 = MEMORY[0x277CBEB98];
                  v117[0] = v37;
                  v117[1] = v30;
                  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];

                  v82 = [v80 setWithArray:v81];
                  v83 = v79;
                  v38 = v96;
                  [(AKHighlightAnnotationController *)selfCopy _clearHighlightsWithStyleMatchingMask:v83 except:v82 inRange:firstIndex onPageController:v57 + 1, v105];

                  goto LABEL_39;
                }
              }

              else
              {
              }
            }
          }
        }
      }
    }

    v31 = 1;
    v87 = 1 << [v37 style];
    pageModelController3 = [MEMORY[0x277CBEB98] setWithObject:v37];
    [(AKHighlightAnnotationController *)selfCopy _clearHighlightsWithStyleMatchingMask:v87 except:pageModelController3 inRange:firstIndex onPageController:v57 + 1, v105];
    v30 = 0;
    modifiedHighlightCopy4 = modifiedHighlight;
    v38 = v96;
    goto LABEL_52;
  }

  firstIndex3 = [v38 firstIndex];
  firstIndex4 = [v28 firstIndex];
  if (firstIndex3 - firstIndex4 >= 0)
  {
    v51 = firstIndex3 - firstIndex4;
  }

  else
  {
    v51 = firstIndex4 - firstIndex3;
  }

  lastIndex2 = [v38 lastIndex];
  lastIndex3 = [v28 lastIndex];
  v54 = lastIndex2 - lastIndex3;
  if (lastIndex2 - lastIndex3 < 0)
  {
    v54 = lastIndex3 - lastIndex2;
  }

  if (v51 <= 1 && v54 <= 1)
  {
    pageModelController3 = [v105 pageModelController];
    v56 = [pageModelController3 mutableArrayValueForKey:@"annotations"];
    [v56 removeObject:v29];

    v30 = 0;
LABEL_39:
    v31 = 0;
    modifiedHighlightCopy4 = modifiedHighlight;
    goto LABEL_52;
  }

  v84 = [v38 mutableCopy];
  [v84 removeIndexes:v28];
  v85 = [v84 count];
  v86 = [v28 mutableCopy];
  pageModelController3 = v86;
  if (v85)
  {
    [v86 addIndexes:v38];
  }

  else
  {
    [v86 removeIndexes:v38];
  }

  modifiedHighlightCopy4 = modifiedHighlight;
  v90 = [delegate quadPointsForCharacterIndexes:pageModelController3 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), controller}];
  [v29 setQuadPoints:v90];
  v30 = v29;

  v31 = 0;
LABEL_52:

  if (modifiedHighlightCopy4)
  {
LABEL_53:
    v88 = v30;
    *modifiedHighlightCopy4 = v30;
  }

LABEL_54:

  return v31;
}

- (BOOL)_clearHighlightsWithStyleMatchingMask:(unint64_t)mask except:(id)except inRange:(_NSRange)range onPageController:(id)controller
{
  length = range.length;
  location = range.location;
  v42 = *MEMORY[0x277D85DE8];
  exceptCopy = except;
  controllerCopy = controller;
  v31 = location;
  v32 = length;
  controllerCopy = [(AKHighlightAnnotationController *)self _highlightsInCharacterIndexRange:location onPageController:length, controllerCopy];
  array = [MEMORY[0x277CBEB18] array];
  controller = [(AKHighlightAnnotationController *)self controller];
  delegate = [controller delegate];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = controllerCopy;
  v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v38;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v37 + 1) + 8 * i);
      if ([exceptCopy containsObject:v18] & 1) == 0 && ((mask >> objc_msgSend(v18, "style")))
      {
        quadPoints = [v18 quadPoints];
        v20 = controllerCopy;
        v21 = [delegate characterIndexesForQuadPoints:quadPoints onPageAtIndex:objc_msgSend(controllerCopy forAnnotationController:{"pageIndex"), controller}];
        v22 = [v21 countOfIndexesInRange:{v31, v32}];
        v23 = [v21 count];
        v24 = v22 - v23;
        if (v22 - v23 < 0)
        {
          v24 = v23 - v22;
        }

        if (v24 <= 1)
        {
          [array addObject:v18];
          goto LABEL_14;
        }

        if (v22)
        {
          v25 = [v21 mutableCopy];
          [v25 removeIndexesInRange:{v31, v32}];
          v26 = [delegate quadPointsForCharacterIndexes:v25 onPageAtIndex:objc_msgSend(v20 forAnnotationController:{"pageIndex"), controller}];
          [v18 setQuadPoints:v26];

LABEL_14:
          v15 = 1;
        }

        controllerCopy = v20;
        continue;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v14);
LABEL_20:

  if ([array count])
  {
    pageModelController = [controllerCopy pageModelController];
    v28 = [pageModelController mutableArrayValueForKey:@"annotations"];
    [v28 removeObjectsInArray:array];
  }

  return v15 & 1;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end