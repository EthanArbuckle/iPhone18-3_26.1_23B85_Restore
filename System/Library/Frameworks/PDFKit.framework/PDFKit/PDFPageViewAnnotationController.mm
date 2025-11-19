@interface PDFPageViewAnnotationController
- (BOOL)_indexSet:(id)a3 touchesIndexSet:(id)a4;
- (PDFPageViewAnnotationController)initWithPDFPageView:(id)a3;
- (id)_getIndexSetIntersectionBetween:(id)a3 and:(id)a4;
- (id)_markupAnnotationsForExactIndexSet:(id)a3;
- (id)activeAnnotation;
- (id)markupAnnotationsForIndexSet:(id)a3;
- (void)_addPopupForAnnotation:(id)a3;
- (void)_propagateNotesForIndexSet:(id)a3;
- (void)_rotateActiveAnnotation;
- (void)addControlForAnnotation:(id)a3;
- (void)addMarkupWithStyle:(unint64_t)a3 forIndexSet:(id)a4;
- (void)dealloc;
- (void)removeControlForAnnotation:(id)a3;
@end

@implementation PDFPageViewAnnotationController

- (PDFPageViewAnnotationController)initWithPDFPageView:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PDFPageViewAnnotationController;
  v5 = [(PDFPageViewAnnotationController *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFPageViewAnnotationControllerPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->pageView, v4);
    v8 = [v4 page];
    objc_storeWeak(&v5->_private->page, v8);
    v9 = [v8 view];
    objc_storeWeak(&v5->_private->view, v9);

    objc_storeWeak(&v5->_private->activeAnnotation, 0);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = v5->_private;
    activeControls = v11->activeControls;
    v11->activeControls = v10;

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v5 selector:sel__didRotatePageNotification_ name:@"PDFPageDidRotate" object:v8];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v5 selector:sel__didRotatePageNotification_ name:@"PDFPageDidChangeBounds" object:v8];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFPageViewAnnotationController;
  [(PDFPageViewAnnotationController *)&v4 dealloc];
}

- (id)activeAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);

  return WeakRetained;
}

- (void)addControlForAnnotation:(id)a3
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v5 = [WeakRetained document];
  v6 = [v5 allowsFormFieldEntry];

  if (v6)
  {
    activeControls = self->_private->activeControls;
    v8 = [v14 pdfAnnotationUUID];
    v9 = [(NSMutableDictionary *)activeControls objectForKey:v8];

    if (!v9)
    {
      v10 = [v14 valueForAnnotationKey:@"/Subtype"];
      v11 = [v14 popup];

      if ((([v10 isEqualToString:@"/Widget"] & 1) != 0 || v11) && (objc_msgSend(v14, "isReadOnly") & 1) == 0 && (objc_msgSend(v14, "isLocked") & 1) == 0)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        if (v11)
        {
          [(PDFPageViewAnnotationController *)self _addPopupForAnnotation:v14];
        }

        else
        {
          v12 = objc_loadWeakRetained(&self->_private->pageView);
          v13 = [v14 valueForAnnotationKey:@"/FT"];
          if ([v13 isEqualToString:@"/Tx"])
          {
            [v12 _addPDFAnnotationTextWidget:v14];
          }

          else if ([v13 isEqualToString:@"/Ch"])
          {
            [v12 _addPDFAnnotationChoiceWidget:v14];
          }

          else if ([v13 isEqualToString:@"/Sig"])
          {
            [v12 _addPDFAnnotationSignatureWidget:v14];
          }
        }

        [MEMORY[0x1E6979518] commit];
      }
    }
  }
}

- (void)removeControlForAnnotation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    if ([v4 isSelected])
    {
      [v10 setIsSelected:0];
    }

    v5 = [v10 pdfAnnotationUUID];
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_private->activeControls objectForKey:v5];
      if (v6)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        WeakRetained = objc_loadWeakRetained(&self->_private->view);
        v8 = [WeakRetained undoManager];
        [v8 removeAllActionsWithTarget:v6];

        [v10 setControl:0];
        [v6 removeFromSuperview];
        v9 = objc_loadWeakRetained(&self->_private->activeAnnotation);

        if (v9 == v10)
        {
          objc_storeWeak(&self->_private->activeAnnotation, 0);
        }

        [(NSMutableDictionary *)self->_private->activeControls removeObjectForKey:v5];
        [MEMORY[0x1E6979518] commit];
      }
    }

    v4 = v10;
  }
}

- (void)_rotateActiveAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained pdfAnnotationUUID];
    if (v4)
    {
      v5 = [(NSMutableDictionary *)self->_private->activeControls objectForKey:v4];
      if (v5)
      {
        [(PDFPageViewAnnotationController *)self removeControlForAnnotation:v6];
        [(PDFPageViewAnnotationController *)self addControlForAnnotation:v6];
      }
    }

    WeakRetained = v6;
  }
}

- (void)addMarkupWithStyle:(unint64_t)a3 forIndexSet:(id)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v8 = [WeakRetained allowsMarkupAnnotationEditing];

  if (!v8)
  {
    goto LABEL_69;
  }

  v9 = objc_loadWeakRetained(&self->_private->page);
  [v9 pageLayout];
  if (a3 == 8 || ![v6 rangeCount])
  {
    goto LABEL_68;
  }

  v10 = [PDFAnnotation MarkupTypeForMarkupStyle:a3];
  v11 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v6];
  v80 = v9;
  v12 = [v9 annotations];
  v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v93 objects:v101 count:16];
  v69 = v6;
  v84 = self;
  v73 = v13;
  if (!v14)
  {
    goto LABEL_40;
  }

  v15 = v14;
  v16 = *v94;
  v78 = v10;
  v79 = a3;
  v81 = *v94;
  do
  {
    v17 = 0;
    v82 = v15;
    do
    {
      if (*v94 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v93 + 1) + 8 * v17);
      if ([v18 isMarkupAnnotationSubtype] && (v10 == 3 || objc_msgSend(v18, "markupType") == 3 || objc_msgSend(v18, "markupType") == v10))
      {
        v19 = [v18 indexSetForQuadPoints];
        v20 = [(PDFPageViewAnnotationController *)self _getIndexSetIntersectionBetween:v6 and:v19];
        if ([v20 count] || -[PDFPageViewAnnotationController _indexSet:touchesIndexSet:](self, "_indexSet:touchesIndexSet:", v19, v6))
        {
          if ([v18 markupStyle] == a3)
          {
            if ([v19 containsIndexes:v6])
            {
              if ([v19 isEqualToIndexSet:v6])
              {
                [v77 addObject:v18];
              }

              else
              {
                v70 = v11;
                v26 = [v80 string];
                v27 = [v6 firstIndex] - 1;
                v72 = [v6 lastIndex];
                v74 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v6];
                v28 = [v19 containsIndex:v27];
                v75 = v26;
                v29 = [v26 substringWithRange:{v27, 1}];
                v30 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                v31 = [v29 stringByTrimmingCharactersInSet:v30];
                v32 = [v31 length];

                if (v28 && !v32)
                {
                  [v74 addIndex:v27];
                }

                v33 = [v19 containsIndex:v72 + 1];
                v34 = [v75 substringWithRange:{v72 + 1, 1}];
                v35 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                v36 = [v34 stringByTrimmingCharactersInSet:v35];
                v37 = [v36 length];

                self = v84;
                if (v33 && !v37)
                {
                  [v74 addIndex:v72 + 1];
                }

                v38 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v19];
                [v38 removeIndexes:v74];
                [v76 setObject:v18 forKey:v38];

                v6 = v69;
                v11 = v70;
                v13 = v73;
                v10 = v78;
                a3 = v79;
              }

              v11 = 0;
            }

            else
            {
              [v77 addObject:v18];
              [v11 addIndexes:v19];
            }

            goto LABEL_35;
          }

          v21 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v19];
          [v21 removeIndexes:v6];
          if ([v21 count])
          {
            [v76 setObject:v18 forKey:v21];
            goto LABEL_25;
          }

          v22 = [v18 popup];
          if (v22 && (v23 = v22, v24 = [v19 isEqualToIndexSet:v6], v23, !v24))
          {
            [v11 removeIndexes:v19];

            v13 = v73;
          }

          else
          {
            [v77 addObject:v18];
            v13 = v73;
LABEL_25:
            v25 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v19];
            [v25 removeIndexes:v21];
            [v11 addIndexes:v25];
          }

          v10 = v78;
          a3 = v79;
        }

LABEL_35:

        v16 = v81;
        v15 = v82;
      }

      ++v17;
    }

    while (v15 != v17);
    v39 = [v13 countByEnumeratingWithState:&v93 objects:v101 count:16];
    v15 = v39;
  }

  while (v39);
LABEL_40:

  v9 = v80;
  if (v11)
  {
    v40 = [PDFAnnotation SubtypeForPDFMarkupStyle:a3];
    v41 = +[PDFAnnotation PDFMarkupColors];
    v42 = [v41 objectAtIndex:a3];

    v43 = objc_alloc([v80 annotationSubclassForSubtype:v40]);
    v99 = @"/C";
    v100 = v42;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v45 = [v43 initWithBounds:v40 forType:v44 withProperties:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

    [v45 setPage:v80];
    [v45 setQuadPointsForIndexSet:v11 withUndo:0];
    if ([v40 isEqualToString:@"/Redact"])
    {
      [v45 setShouldBurnIn:1];
    }

    [v80 addAnnotation:v45 withUndo:{1, v69}];
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v46 = v76;
  v47 = [v46 countByEnumeratingWithState:&v89 objects:v98 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v90;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v90 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v89 + 1) + 8 * i);
        v52 = [v46 objectForKey:{v51, v69}];
        [v52 setQuadPointsForIndexSet:v51 withUndo:1];
      }

      v48 = [v46 countByEnumeratingWithState:&v89 objects:v98 count:16];
    }

    while (v48);
  }

  v71 = v11;
  v83 = v46;

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v53 = v77;
  v54 = [v53 countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v86;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v86 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v85 + 1) + 8 * j);
        [v9 removeAnnotation:v58 withUndo:{1, v69}];
        v59 = [v58 contents];
        if (v59)
        {
          v60 = v59;
          v61 = [v58 indexSetForQuadPoints];
          v62 = [(PDFPageViewAnnotationController *)self markupAnnotationsForIndexSet:v61];

          if ([v62 count])
          {
            v63 = [v62 objectAtIndex:0];
            v64 = [v63 contents];

            if (v64)
            {
              v65 = [v63 contents];
              v66 = [v65 stringByAppendingString:@"\n\n"];
              v67 = [v66 stringByAppendingString:v60];

              v60 = v67;
              v9 = v80;
            }

            [v63 setContents:v60 withUndo:1];
          }

          self = v84;
        }
      }

      v55 = [v53 countByEnumeratingWithState:&v85 objects:v97 count:16];
    }

    while (v55);
  }

  v6 = v69;
  if (v71)
  {
    v68 = v71;
  }

  else
  {
    v68 = v69;
  }

  [(PDFPageViewAnnotationController *)self _propagateNotesForIndexSet:v68, v69];

LABEL_68:
LABEL_69:
}

- (id)markupAnnotationsForIndexSet:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v6 = [WeakRetained annotations];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isMarkupAnnotationSubtype])
        {
          v13 = [v12 indexSetForQuadPoints];
          v14 = [(PDFPageViewAnnotationController *)self _getIndexSetIntersectionBetween:v4 and:v13];
          v15 = [v14 count];

          if (v15)
          {
            [v17 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [v17 sortUsingComparator:&__block_literal_global_0];

  return v17;
}

uint64_t __64__PDFPageViewAnnotationController_markupAnnotationsForIndexSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 indexSetForQuadPoints];
  v7 = [v6 count];

  v8 = [v5 indexSetForQuadPoints];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    if (v7 <= v9)
    {
      v11 = [v4 priority];
      v12 = [v5 priority];
      if (v11 > v12)
      {
        v10 = -1;
      }

      else
      {
        v10 = v11 < v12;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)_addPopupForAnnotation:(id)a3
{
  obj = a3;
  v4 = [PDFKitPopupView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_private->pageView);
  v6 = objc_loadWeakRetained(&self->_private->view);
  v7 = [(PDFKitPopupView *)v4 initWithParentAnnotation:obj owningPageView:WeakRetained owningPDFView:v6];

  if (v7)
  {
    objc_storeWeak(&self->_private->activeAnnotation, obj);
    activeControls = self->_private->activeControls;
    v9 = [obj pdfAnnotationUUID];
    [(NSMutableDictionary *)activeControls setObject:v7 forKey:v9];

    [obj setControl:v7];
  }
}

- (id)_getIndexSetIntersectionBetween:(id)a3 and:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PDFPageViewAnnotationController__getIndexSetIntersectionBetween_and___block_invoke;
  v9[3] = &unk_1E8150908;
  v10 = v5;
  v6 = v5;
  v7 = [a3 indexesPassingTest:v9];

  return v7;
}

- (BOOL)_indexSet:(id)a3 touchesIndexSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PDFPageViewAnnotationController__indexSet_touchesIndexSet___block_invoke;
  v10[3] = &unk_1E8150958;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 enumerateRangesUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __61__PDFPageViewAnnotationController__indexSet_touchesIndexSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PDFPageViewAnnotationController__indexSet_touchesIndexSet___block_invoke_2;
  v8[3] = &unk_1E8150930;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = *(a1 + 40);
  result = [v6 enumerateRangesUsingBlock:v8];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void *__61__PDFPageViewAnnotationController__indexSet_touchesIndexSet___block_invoke_2(void *result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = result[5];
  if (v4 >= a2)
  {
    v5 = a2 + a3 == v4;
  }

  else
  {
    v5 = result[6] + v4 == a2;
  }

  v6 = v5;
  *(*(result[4] + 8) + 24) = v6;
  if (*(*(result[4] + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (id)_markupAnnotationsForExactIndexSet:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = [WeakRetained annotations];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 isMarkupAnnotationSubtype])
        {
          v14 = [v13 indexSetForQuadPoints];
          v15 = [v14 isEqualToIndexSet:v4];

          if (v15)
          {
            [v5 addObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v5 sortUsingComparator:&__block_literal_global_77];

  return v5;
}

BOOL __70__PDFPageViewAnnotationController__markupAnnotationsForExactIndexSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 priority];
  v6 = [v4 priority];

  return v5 < v6;
}

- (void)_propagateNotesForIndexSet:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(PDFPageViewAnnotationController *)self _markupAnnotationsForExactIndexSet:a3];
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  if ([v4 count])
  {
    v6 = [v4 objectAtIndex:0];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 contents];
          if (v13)
          {
            v14 = v13;
            [v12 setContents:0 withUndo:1];
            [v6 setContents:v14 withUndo:1];

            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [WeakRetained setActiveAnnotation:v6];
  }

  else
  {
    v15 = [WeakRetained currentSelection];

    if (!v15)
    {
      [WeakRetained setActiveAnnotation:0];
    }
  }
}

@end