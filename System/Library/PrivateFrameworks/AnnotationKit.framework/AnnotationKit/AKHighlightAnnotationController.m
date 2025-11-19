@interface AKHighlightAnnotationController
- (AKController)controller;
- (AKHighlightAnnotationController)initWithController:(id)a3;
- (BOOL)_adaptExistingHighlightsToNewHighlight:(id)a3 onPageController:(id)a4 firstModifiedHighlight:(id *)a5;
- (BOOL)_clearHighlightsWithStyleMatchingMask:(unint64_t)a3 except:(id)a4 inRange:(_NSRange)a5 onPageController:(id)a6;
- (id)_createHighlightAnnotationWithAttributeTag:(int64_t)a3;
- (id)_highlightsInCharacterIndexRange:(_NSRange)a3 onPageController:(id)a4;
- (id)highlightsWithinSelection;
- (void)beginContinuousHighlighting;
- (void)clearHighlightsWithinSelection;
- (void)continueHighlighting;
- (void)endContinuousHighlighting;
- (void)performOneShotHighlightWithAttributeTag:(int64_t)a3;
@end

@implementation AKHighlightAnnotationController

- (AKHighlightAnnotationController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKHighlightAnnotationController;
  v5 = [(AKHighlightAnnotationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, v4);
  }

  return v6;
}

- (void)performOneShotHighlightWithAttributeTag:(int64_t)a3
{
  v5 = [(AKHighlightAnnotationController *)self controller];
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 currentPageController];
      v8 = [v6 highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(v7 forAnnotationController:{"pageIndex"), v5}];
      v9 = [(AKHighlightAnnotationController *)self _createHighlightAnnotationWithAttributeTag:a3];
      v10 = [v6 quadPointsForCharacterIndexes:v8 onPageAtIndex:objc_msgSend(v7 forAnnotationController:{"pageIndex"), v5}];
      [v9 setQuadPoints:v10];
      v18 = 0;
      v11 = [(AKHighlightAnnotationController *)self _adaptExistingHighlightsToNewHighlight:v9 onPageController:v7 firstModifiedHighlight:&v18];
      v12 = v18;
      if (v11)
      {
        v13 = [v5 toolController];
        [v13 addNewAnnotation:v9 onPageController:v7 shouldSelect:1 shouldCascade:0];

        v14 = v9;
        v12 = v14;
      }

      if (v12)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_23F44EC64;
        block[3] = &unk_278C7B810;
        v16 = v7;
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
  v6 = [(AKHighlightAnnotationController *)self controller];
  v3 = [v6 delegate];
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v6 currentPageController];
      v5 = [v3 highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(v4 forAnnotationController:{"pageIndex"), v6}];
      -[AKHighlightAnnotationController _clearHighlightsWithStyleMatchingMask:except:inRange:onPageController:](self, "_clearHighlightsWithStyleMatchingMask:except:inRange:onPageController:", -1, 0, [v5 firstIndex], objc_msgSend(v5, "lastIndex") - objc_msgSend(v5, "firstIndex") + 1, v4);
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
  v3 = [(AKHighlightAnnotationController *)self controller];
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if ([v4 hasHighlightableSelectionForAnnotationController:v3])
    {
      v5 = [v3 currentPageController];
      v6 = [v4 highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(v5 forAnnotationController:{"pageIndex"), v3}];
      v7 = -[AKHighlightAnnotationController _highlightsInCharacterIndexRange:onPageController:](self, "_highlightsInCharacterIndexRange:onPageController:", [v6 firstIndex], objc_msgSend(v6, "lastIndex") - objc_msgSend(v6, "firstIndex") + 1, v5);

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
  v7 = [(AKHighlightAnnotationController *)self controller];
  v3 = [v7 attributeController];
  v4 = -[AKHighlightAnnotationController _createHighlightAnnotationWithAttributeTag:](self, "_createHighlightAnnotationWithAttributeTag:", [v3 highlightStyle]);
  [(AKHighlightAnnotationController *)self setContinuousHighlight:v4];

  v5 = [v7 toolController];
  v6 = [(AKHighlightAnnotationController *)self continuousHighlight];
  [v5 addNewAnnotation:v6 onPageController:0 shouldSelect:1 shouldCascade:0];
}

- (void)continueHighlighting
{
  v8 = [(AKHighlightAnnotationController *)self controller];
  v3 = [v8 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 hasHighlightableSelectionForAnnotationController:v8])
  {
    v4 = [v8 currentPageController];
    v5 = [v3 highlightableSelectionCharacterIndexesOnPageAtIndex:objc_msgSend(v4 forAnnotationController:{"pageIndex"), v8}];
    v6 = [v3 quadPointsForCharacterIndexes:v5 onPageAtIndex:objc_msgSend(v4 forAnnotationController:{"pageIndex"), v8}];
    v7 = [(AKHighlightAnnotationController *)self continuousHighlight];
    [v7 setQuadPoints:v6];
  }
}

- (void)endContinuousHighlighting
{
  v3 = [(AKHighlightAnnotationController *)self continuousHighlight];

  if (v3)
  {
    v17 = [(AKHighlightAnnotationController *)self controller];
    v4 = [v17 delegate];
    v5 = [v17 currentPageController];
    v6 = [(AKHighlightAnnotationController *)self continuousHighlight];
    v7 = [v6 quadPoints];
    v8 = [v7 count];

    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(AKHighlightAnnotationController *)self continuousHighlight];
        v10 = [(AKHighlightAnnotationController *)self _adaptExistingHighlightsToNewHighlight:v9 onPageController:v5 firstModifiedHighlight:0];

        if (!v10)
        {
          v11 = [v5 pageModelController];
          v12 = [v11 mutableArrayValueForKey:@"annotations"];
          v13 = [(AKHighlightAnnotationController *)self continuousHighlight];
          [v12 removeObject:v13];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [v4 clearHighlightableSelectionForAnnotationController:v17];
      }
    }

    else
    {
      v14 = [v5 pageModelController];
      v15 = [v14 mutableArrayValueForKey:@"annotations"];
      v16 = [(AKHighlightAnnotationController *)self continuousHighlight];
      [v15 removeObject:v16];
    }

    [(AKHighlightAnnotationController *)self setContinuousHighlight:0];
  }
}

- (id)_createHighlightAnnotationWithAttributeTag:(int64_t)a3
{
  v4 = objc_opt_new();
  if ((a3 - 765200) > 6)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = qword_23F4D8F70[a3 - 765200];
    v6 = [AKHighlightAppearanceHelper colorForHighlightAttributeWithTag:a3];
  }

  [v4 setColor:v6];
  [v4 setStyle:v5];

  return v4;
}

- (id)_highlightsInCharacterIndexRange:(_NSRange)a3 onPageController:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v21 = [MEMORY[0x277CBEB18] array];
  v23 = [v4 controller];
  v5 = [v23 delegate];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v4 pageModelController];
  v8 = [v7 annotations];

  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = v13;
          v17 = [v16 quadPoints];
          v18 = [v5 characterIndexesForQuadPoints:v17 onPageAtIndex:objc_msgSend(v6 forAnnotationController:{"pageIndex"), v23}];
          v19 = v18;
          if (v18 && [v18 countOfIndexesInRange:{a3.location, a3.length}])
          {
            [v21 addObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  return v21;
}

- (BOOL)_adaptExistingHighlightsToNewHighlight:(id)a3 onPageController:(id)a4 firstModifiedHighlight:(id *)a5
{
  v122 = *MEMORY[0x277D85DE8];
  v106 = a3;
  v7 = a4;
  v101 = self;
  v104 = [(AKHighlightAnnotationController *)self controller];
  v103 = [v104 delegate];
  v8 = [MEMORY[0x277CBEB18] array];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v105 = v7;
  v9 = [v7 pageModelController];
  v10 = [v9 annotations];

  v11 = [v10 countByEnumeratingWithState:&v113 objects:v121 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v113 + 1) + 8 * i);
        v16 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) != 0 && v15 != v106)
        {
          v18 = [v15 quadPoints];
          v19 = [v103 characterIndexesForQuadPoints:v18 onPageAtIndex:objc_msgSend(v7 forAnnotationController:{"pageIndex"), v104}];

          v119[0] = @"annotation";
          v119[1] = @"characterIndexes";
          v120[0] = v15;
          v120[1] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
          [v8 addObject:v20];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v113 objects:v121 count:16];
    }

    while (v12);
  }

  v21 = v8;
  if (![v8 count])
  {
    v30 = 0;
    v31 = 1;
    v32 = a5;
    if (!a5)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  [v8 sortUsingComparator:&unk_28519E6F0];
  v22 = [v106 quadPoints];
  v23 = [v103 characterIndexesForQuadPoints:v22 onPageAtIndex:objc_msgSend(v7 forAnnotationController:{"pageIndex"), v104}];

  v99 = [v23 firstIndex];
  v24 = [v23 lastIndex];
  v97 = [v23 firstIndex];
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = sub_23F450084;
  v110[3] = &unk_278C7BD08;
  v25 = v106;
  v111 = v25;
  v26 = v23;
  v112 = v26;
  v27 = [v8 indexOfObjectPassingTest:v110];
  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v33 = v27;
    [v8 objectAtIndex:v27];
    v35 = v34 = v24;
    v29 = [v35 objectForKeyedSubscript:@"annotation"];

    v24 = v34;
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

  if (v29 != v40 || (v44 = [v29 style], v44 != objc_msgSend(v37, "style")) || (objc_msgSend(v29, "color"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "color"), v46 = v24, v47 = objc_claimAutoreleasedReturnValue(), v48 = +[AKHighlightAppearanceHelper highlightColor:isEquivalentToHighlightColor:](AKHighlightAppearanceHelper, "highlightColor:isEquivalentToHighlightColor:", v45, v47), v47, v24 = v46, v45, !v48))
  {
LABEL_32:
    v96 = v38;
    v57 = v24 - v97;
    if ((v29 != 0) != (v40 != 0))
    {
      v58 = [v37 style];
      v59 = v29 ? v29 : v40;
      if (v58 == [v59 style])
      {
        v60 = [v37 color];
        v61 = [v59 color];
        v62 = [AKHighlightAppearanceHelper highlightColor:v60 isEquivalentToHighlightColor:v61];

        if (v62)
        {
          v63 = v59;
          v64 = [v63 quadPoints];
          v98 = v57;
          v93 = [v103 characterIndexesForQuadPoints:v64 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), v104}];

          v55 = [v93 mutableCopy];
          [v55 addIndexes:v96];
          v65 = [v103 quadPointsForCharacterIndexes:v55 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), v104}];
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
          [(AKHighlightAnnotationController *)v101 _clearHighlightsWithStyleMatchingMask:v70 except:v69 inRange:v99 onPageController:v98 + 1, v105];

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
          v71 = [v37 style];
          if (v71 == [v29 style])
          {
            v72 = [v37 style];
            if (v72 == [v40 style])
            {
              v73 = [v37 color];
              v74 = [v29 color];
              if ([AKHighlightAppearanceHelper highlightColor:v73 isEquivalentToHighlightColor:v74])
              {
                v75 = [v37 color];
                v76 = [v40 color];
                v95 = [AKHighlightAppearanceHelper highlightColor:v75 isEquivalentToHighlightColor:v76];

                if (v95)
                {
                  v91 = v100;
                  v92 = v28;
                  v55 = [v92 mutableCopy];
                  [v55 addIndexes:v91];
                  [v55 addIndexes:v96];
                  v94 = [v103 quadPointsForCharacterIndexes:v55 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), v104}];
                  [v29 setQuadPoints:v94];
                  v30 = v29;
                  v77 = [v105 pageModelController];
                  v78 = [v77 mutableArrayValueForKey:@"annotations"];
                  [v78 removeObject:v40];

                  v79 = 1 << [v37 style];
                  v80 = MEMORY[0x277CBEB98];
                  v117[0] = v37;
                  v117[1] = v30;
                  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];

                  v82 = [v80 setWithArray:v81];
                  v83 = v79;
                  v38 = v96;
                  [(AKHighlightAnnotationController *)v101 _clearHighlightsWithStyleMatchingMask:v83 except:v82 inRange:v99 onPageController:v57 + 1, v105];

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
    v55 = [MEMORY[0x277CBEB98] setWithObject:v37];
    [(AKHighlightAnnotationController *)v101 _clearHighlightsWithStyleMatchingMask:v87 except:v55 inRange:v99 onPageController:v57 + 1, v105];
    v30 = 0;
    v32 = a5;
    v38 = v96;
    goto LABEL_52;
  }

  v49 = [v38 firstIndex];
  v50 = [v28 firstIndex];
  if (v49 - v50 >= 0)
  {
    v51 = v49 - v50;
  }

  else
  {
    v51 = v50 - v49;
  }

  v52 = [v38 lastIndex];
  v53 = [v28 lastIndex];
  v54 = v52 - v53;
  if (v52 - v53 < 0)
  {
    v54 = v53 - v52;
  }

  if (v51 <= 1 && v54 <= 1)
  {
    v55 = [v105 pageModelController];
    v56 = [v55 mutableArrayValueForKey:@"annotations"];
    [v56 removeObject:v29];

    v30 = 0;
LABEL_39:
    v31 = 0;
    v32 = a5;
    goto LABEL_52;
  }

  v84 = [v38 mutableCopy];
  [v84 removeIndexes:v28];
  v85 = [v84 count];
  v86 = [v28 mutableCopy];
  v55 = v86;
  if (v85)
  {
    [v86 addIndexes:v38];
  }

  else
  {
    [v86 removeIndexes:v38];
  }

  v32 = a5;
  v90 = [v103 quadPointsForCharacterIndexes:v55 onPageAtIndex:objc_msgSend(v105 forAnnotationController:{"pageIndex"), v104}];
  [v29 setQuadPoints:v90];
  v30 = v29;

  v31 = 0;
LABEL_52:

  if (v32)
  {
LABEL_53:
    v88 = v30;
    *v32 = v30;
  }

LABEL_54:

  return v31;
}

- (BOOL)_clearHighlightsWithStyleMatchingMask:(unint64_t)a3 except:(id)a4 inRange:(_NSRange)a5 onPageController:(id)a6
{
  length = a5.length;
  location = a5.location;
  v42 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v31 = location;
  v32 = length;
  v12 = [(AKHighlightAnnotationController *)self _highlightsInCharacterIndexRange:location onPageController:length, v11];
  v30 = [MEMORY[0x277CBEB18] array];
  v34 = [(AKHighlightAnnotationController *)self controller];
  v33 = [v34 delegate];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v12;
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
      if ([v10 containsObject:v18] & 1) == 0 && ((a3 >> objc_msgSend(v18, "style")))
      {
        v19 = [v18 quadPoints];
        v20 = v11;
        v21 = [v33 characterIndexesForQuadPoints:v19 onPageAtIndex:objc_msgSend(v11 forAnnotationController:{"pageIndex"), v34}];
        v22 = [v21 countOfIndexesInRange:{v31, v32}];
        v23 = [v21 count];
        v24 = v22 - v23;
        if (v22 - v23 < 0)
        {
          v24 = v23 - v22;
        }

        if (v24 <= 1)
        {
          [v30 addObject:v18];
          goto LABEL_14;
        }

        if (v22)
        {
          v25 = [v21 mutableCopy];
          [v25 removeIndexesInRange:{v31, v32}];
          v26 = [v33 quadPointsForCharacterIndexes:v25 onPageAtIndex:objc_msgSend(v20 forAnnotationController:{"pageIndex"), v34}];
          [v18 setQuadPoints:v26];

LABEL_14:
          v15 = 1;
        }

        v11 = v20;
        continue;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v14);
LABEL_20:

  if ([v30 count])
  {
    v27 = [v11 pageModelController];
    v28 = [v27 mutableArrayValueForKey:@"annotations"];
    [v28 removeObjectsInArray:v30];
  }

  return v15 & 1;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end