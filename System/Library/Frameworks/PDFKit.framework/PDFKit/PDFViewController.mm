@interface PDFViewController
- (BOOL)_handleFormFillingEventAtLocation:(CGPoint)a3;
- (BOOL)_shouldUpdateMarkupWithStyle:(unint64_t)a3 onPage:(id)a4 forIndexSet:(id)a5;
- (CGPoint)_convertPoint:(CGPoint)a3 toPageView:(id)a4;
- (PDFViewController)initWithView:(id)a3;
- (id)_annotationAtGestureLocation:(CGPoint)a3;
- (id)_annotationsForSelection:(id)a3;
- (id)_findNextActivatableAnnotationOnPage:(id)a3 fromAnnotation:(id)a4 direction:(unint64_t)a5;
- (id)_getPagePoint:(CGPoint *)a3 forGestureLocation:(CGPoint)a4;
- (id)_pageViewForAnnotation:(id)a3;
- (id)activeAnnotation;
- (id)additionalEditMenuElementsForMarkupAnnotation:(id)a3;
- (id)additionalEditMenuElementsForSelection:(id)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)_addControlForAnnotation:(id)a3;
- (void)_annotationHit:(id)a3 atLocation:(CGPoint)a4;
- (void)_annotationHitLongPress:(id)a3 gestureState:(int64_t)a4 location:(CGPoint)a5;
- (void)_closeTextEditingMenu;
- (void)_doButtonHit:(id)a3;
- (void)_handleButtonHit:(id)a3;
- (void)_performDoubleTapAtLocation:(CGPoint)a3;
- (void)_postAnnotationHitNotification:(id)a3;
- (void)_postAnnotationWillHitNotification:(id)a3;
- (void)activateAnnotation:(id)a3;
- (void)activateNextAnnotation:(unint64_t)a3 withCompletion:(id)a4;
- (void)addDetectedAnnotation:(id)a3 toPage:(id)a4;
- (void)dealloc;
- (void)deleteAnnotation;
- (void)editNoteForAnnotation:(id)a3;
- (void)findNextActivatableAnnotationFromPage:(id)a3 fromAnnotation:(id)a4 direction:(unint64_t)a5 withCompletion:(id)a6;
- (void)handleGesture:(id)a3;
- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5;
- (void)handleTextSuggestion:(id)a3 completionHandler:(id)a4;
- (void)hideActiveMenus;
- (void)highlight:(id)a3;
- (void)interactWithAnnotation:(id)a3;
- (void)populateAnnotationsFromDetectedAnnotationsOnPage:(id)a3;
- (void)removeControlForAnnotation:(id)a3;
- (void)removeNoteForAnnotation:(id)a3;
- (void)setActiveAnnotation:(id)a3;
- (void)setMarkupStyle:(unint64_t)a3;
- (void)setMarkupStyle:(unint64_t)a3 forAnnotation:(id)a4;
- (void)setMarkupStyle:(unint64_t)a3 forSelection:(id)a4 clearSelection:(BOOL)a5;
- (void)showMarkupStyleMenuForMarkupAnnotation;
- (void)showMenuForMarkupAnnotation:(id)a3;
@end

@implementation PDFViewController

- (CGPoint)_convertPoint:(CGPoint)a3 toPageView:(id)a4
{
  v5 = a4;
  v6 = PDFRectToCGRect([v5 boundsForBox:0]);
  v8 = v7;
  v10 = v9;
  rect_8 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  [v5 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];

  rect = PDFRectToCGRect(v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v33.origin.x = rect;
  v33.origin.y = v15;
  v33.size.width = v17;
  v33.size.height = v19;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = rect_8;
  v21 = MinX - CGRectGetMinX(v34);
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = rect_8;
  v22 = v21 - CGRectGetMinX(v35);
  v36.origin.x = rect;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = rect_8;
  v24 = MinY - CGRectGetMinY(v37);
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = rect_8;
  v25 = a3.y - (v24 - CGRectGetMinY(v38));

  v26 = PDFPointMake(a3.x - v22, v25);
  result.y = v27;
  result.x = v26;
  return result;
}

- (PDFViewController)initWithView:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PDFViewController;
  v5 = [(PDFViewController *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFViewControllerPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->view, v4);
    v8 = v5->_private;
    v8->viewMarquee.origin.x = PDFRectFromCGRect(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    v8->viewMarquee.origin.y = v9;
    v8->viewMarquee.size.width = v10;
    v8->viewMarquee.size.height = v11;
    v12 = v5->_private;
    marqueeEffect = v12->marqueeEffect;
    v12->marqueeEffect = 0;

    objc_storeWeak(&v5->_private->activeAnnotation, 0);
    v14 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v5];
    v15 = v5->_private;
    editMenuInteraction = v15->editMenuInteraction;
    v15->editMenuInteraction = v14;

    [v4 addInteraction:v5->_private->editMenuInteraction];
    v5->_private->textSelectionMenu = 0;
    v5->_private->longPressGestureStartTime = 0.0;
    v5->_private->didPostPDFExtensionViewAnnotationLongPress = 0;
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v5 selector:sel_hideActiveMenus name:@"PDFTextSelectionMenuWillChangeScrollPosition" object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v5 selector:sel_showActiveMenus name:@"PDFTextSelectionMenuDidChangeScrollPosition" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFViewController;
  [(PDFViewController *)&v4 dealloc];
}

- (id)activeAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);

  return WeakRetained;
}

- (void)findNextActivatableAnnotationFromPage:(id)a3 fromAnnotation:(id)a4 direction:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 document];
  v14 = [v13 pageCount];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v15 = [v13 formFillingQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__PDFViewController_findNextActivatableAnnotationFromPage_fromAnnotation_direction_withCompletion___block_invoke;
  v20[3] = &unk_1E8151A50;
  v20[4] = self;
  v21 = v10;
  v24 = v12;
  v25 = v28;
  v26 = a5;
  v27 = v14;
  v22 = v11;
  v23 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(v15, v20);

  _Block_object_dispose(v28, 8);
}

void __99__PDFViewController_findNextActivatableAnnotationFromPage_fromAnnotation_direction_withCompletion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PDFViewController_findNextActivatableAnnotationFromPage_fromAnnotation_direction_withCompletion___block_invoke_2;
  aBlock[3] = &unk_1E8151A50;
  v13 = *(a1 + 32);
  v2 = *(&v13 + 1);
  v3 = *(a1 + 48);
  v21 = *(a1 + 80);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v19 = v4;
  v20 = v5;
  v22 = *(a1 + 88);
  v6 = *(a1 + 56);
  *&v7 = v3;
  *(&v7 + 1) = v6;
  v17 = v13;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  if (GetDefaultsWriteUsePageAnalyzerV2())
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 56) renderingProperties];
    +[PDFPageAnalyzerV2 analyzePage:withBox:requestTypes:](PDFPageAnalyzerV2, "analyzePage:withBox:requestTypes:", v9, [v10 displayBox], 2);

    v8[2](v8);
  }

  else
  {
    v11 = +[PDFPageAnalyzer sharedInstance];
    v12 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__PDFViewController_findNextActivatableAnnotationFromPage_fromAnnotation_direction_withCompletion___block_invoke_3;
    v14[3] = &unk_1E8151A78;
    v15 = v8;
    [v11 analyzePage:v12 analysisTypes:2 completionQueue:0 completionBlock:v14];
  }
}

uint64_t __99__PDFViewController_findNextActivatableAnnotationFromPage_fromAnnotation_direction_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _findNextActivatableAnnotationOnPage:*(a1 + 40) fromAnnotation:*(a1 + 48) direction:*(a1 + 80)];
  v3 = v2;
  if (v2)
  {
    v11 = v2;
    v2 = (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 72) + 8);
    v5 = *(v4 + 24) + 1;
    *(v4 + 24) = v5;
    if (v5 >= *(a1 + 88))
    {
      goto LABEL_13;
    }

    v11 = 0;
    v6 = [*(a1 + 56) indexForPage:*(a1 + 40)];
    if (*(a1 + 80))
    {
      if (v6)
      {
        v7 = v6 - 1;
      }

      else
      {
        v7 = *(a1 + 88) - 1;
      }
    }

    else if ((v6 + 1) < *(a1 + 88))
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 32);
    v9 = [*(a1 + 56) pageAtIndex:v7];
    [v8 findNextActivatableAnnotationFromPage:v9 fromAnnotation:0 direction:*(a1 + 80) withCompletion:*(a1 + 64)];
  }

  v3 = v11;
LABEL_13:

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (id)_findNextActivatableAnnotationOnPage:(id)a3 fromAnnotation:(id)a4 direction:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __83__PDFViewController__findNextActivatableAnnotationOnPage_fromAnnotation_direction___block_invoke;
  v18 = &unk_1E8151AA0;
  v19 = v8;
  v20 = a5;
  v9 = v8;
  v10 = _Block_copy(&v15);
  v11 = [v7 annotations];
  v12 = v10[2](v10, v11);

  if (!v12)
  {
    v13 = [v7 detectedAnnotations];
    v12 = v10[2](v10, v13);
  }

  return v12;
}

id __83__PDFViewController__findNextActivatableAnnotationOnPage_fromAnnotation_direction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 indexOfObjectIdenticalTo:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
LABEL_4:
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5, v4}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__PDFViewController__findNextActivatableAnnotationOnPage_fromAnnotation_direction___block_invoke_112;
    v11[3] = &unk_1E81515C0;
    v11[4] = &v12;
    [v3 enumerateObjectsAtIndexes:v8 options:2 * (v7 == 1) usingBlock:v11];

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    goto LABEL_7;
  }

  if (v4 >= 2)
  {
    if (*(a1 + 40))
    {
      if (v6)
      {
        v5 = 0;
        v4 = v6;
        goto LABEL_4;
      }
    }

    else if (v6 != v4)
    {
      v5 = v6 + 1;
      v4 -= v6 + 1;
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_7:

  return v9;
}

void __83__PDFViewController__findNextActivatableAnnotationOnPage_fromAnnotation_direction___block_invoke_112(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isActivatableTextField])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setActiveAnnotation:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  objc_storeWeak(&self->_private->activeAnnotation, obj);
  if (WeakRetained != obj)
  {
    [(PDFViewController *)self removeControlForAnnotation:WeakRetained];
  }

  objc_storeWeak(&self->_private->activeAnnotation, obj);
  v5 = objc_loadWeakRetained(&self->_private->view);
  if (obj)
  {
    if ([obj isMarkupAnnotationSubtype])
    {
      [v5 setActiveMarkupStyle:{objc_msgSend(obj, "markupStyle")}];
    }
  }

  else
  {
    v6 = [v5 document];
    v7 = [v6 akController];
    if (objc_opt_respondsToSelector())
    {
      [v7 endEditingTextAnnotation];
    }

    v8 = [v7 modelController];
    [v8 deselectAllAnnotations];

    self->_private->textSelectionMenu = 0;
    [(PDFViewController *)self _hidePDFMarkupMenuView];
  }
}

- (void)interactWithAnnotation:(id)a3
{
  v4 = self->_private;
  v5 = a3;
  objc_storeWeak(&v4->activeAnnotation, v5);
  [(PDFViewController *)self performSelector:sel__postAnnotationHitNotification_ withObject:v5 afterDelay:0.1];
}

- (void)activateNextAnnotation:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v8 = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v9 = v8;
  if (v8)
  {
    [v8 page];
  }

  else
  {
    [WeakRetained currentPage];
  }
  v10 = ;
  v11 = [WeakRetained document];
  if ([v11 callDelegateHandleTabFrom:v9 direction:a3])
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    objc_initWeak(&v15, v9);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__PDFViewController_activateNextAnnotation_withCompletion___block_invoke;
    v12[3] = &unk_1E8151AF0;
    v12[4] = self;
    objc_copyWeak(&v14, &location);
    v13 = v6;
    [(PDFViewController *)self findNextActivatableAnnotationFromPage:v10 fromAnnotation:v9 direction:a3 withCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __59__PDFViewController_activateNextAnnotation_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PDFViewController_activateNextAnnotation_withCompletion___block_invoke_2;
  v5[3] = &unk_1E8151AC8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
}

uint64_t __59__PDFViewController_activateNextAnnotation_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) page];
  [v2 populateAnnotationsFromDetectedAnnotationsOnPage:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  v8 = WeakRetained;
  if (*(a1 + 40))
  {
    [WeakRetained activateAnnotation:?];
    v5 = v8;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v5);
    v5 = v8;
  }

  return MEMORY[0x1EEE66BB8](v6, v5);
}

- (void)activateAnnotation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    obj = v4;
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    v6 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    objc_storeWeak(&self->_private->activeAnnotation, obj);
    v7 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    v8 = [v7 page];
    [v7 bounds];
    v19 = PDFRectInset(v18, -4.0, -4.0);
    [WeakRetained goToRect:v8 onPage:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
    v9 = [obj akAnnotation];

    if (v9)
    {
      v10 = [obj akAnnotation];
      if (v10)
      {
        v11 = [WeakRetained document];
        v12 = [v11 akController];
        [v12 editTextAnnotation:v10 selectAllText:0];
        if ([obj isDetectedSignature] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v13 = [v12 toolbarViewController];
          if (objc_opt_respondsToSelector())
          {
            v14 = [obj getAKTextView];
            [v13 displaySignaturePopoverOnSender:v14];
          }
        }
      }
    }

    else
    {
      [(PDFViewController *)self _addControlForAnnotation:v7];
    }

    [(PDFViewController *)self removeControlForAnnotation:v6];
    v15 = [obj akAnnotation];

    if (!v15)
    {
      [(PDFViewController *)self _postAnnotationHitNotification:v7];
    }

    v4 = obj;
  }
}

- (void)_addControlForAnnotation:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v5 = [WeakRetained document];
  if ([v5 allowsFormFieldEntry])
  {
    v6 = [WeakRetained isAnnotationEditingEnabled];

    if (!v6)
    {
      goto LABEL_5;
    }

    [(PDFViewController *)self hideActiveMenus];
    [WeakRetained clearSelection];
    v5 = [(PDFViewController *)self _pageViewForAnnotation:obj];
    [v5 addControlForAnnotation:obj];
    objc_storeWeak(&self->_private->activeAnnotation, obj);
  }

LABEL_5:
}

- (void)removeControlForAnnotation:(id)a3
{
  if (a3)
  {
    v4 = self->_private;
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&v4->activeAnnotation);
    v6 = [(PDFViewController *)self _pageViewForAnnotation:v5];
    [v6 removeControlForAnnotation:v5];

    if (WeakRetained == v5)
    {
      objc_storeWeak(&self->_private->activeAnnotation, 0);
      [(PDFViewController *)self hideActiveMenus];
    }
  }
}

- (void)handleTextSuggestion:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (WeakRetained)
  {
    v8 = [(PDFViewController *)self _pageViewForAnnotation:WeakRetained];
    [v8 populateFormFieldsWithAutoFillSuggestion:v9 completionHandler:v6];
  }
}

- (void)addDetectedAnnotation:(id)a3 toPage:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E6979518];
  v7 = a4;
  [v6 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [v7 addAnnotation:v5];

  v8 = [v5 akAnnotation];
  [v8 setOriginalModelBaseScaleFactor:1.0];
  [v8 setShouldUsePlaceholderText:0];
  [v8 setTextIsFixedWidth:1];
  [v8 setTextIsFixedHeight:0];
  [v8 setIsFormField:1];
  [v8 setIsDetectedSignature:{objc_msgSend(v5, "isDetectedSignature")}];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 autoFillTextContentType];
    [v8 setTextContentType:v9];
  }

  if ([v5 hasComb] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 setMaximumNumberOfCharacters:{objc_msgSend(v5, "maximumLength")}];
  }

  v10 = [v8 typingAttributes];
  v11 = [v10 mutableCopy];

  if ([v5 hasComb])
  {
    [v5 bounds];
    v13 = v12 / [v5 maximumLength];
    v22 = *MEMORY[0x1E69DB648];
    v14 = [v5 font];
    v23[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    [@"W" sizeWithAttributes:v15];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13 - v16];
    [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69DB748]];

    [v8 setMaximumNumberOfCharacters:{objc_msgSend(v5, "maximumLength")}];
  }

  v18 = *MEMORY[0x1E69DB688];
  v19 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  v20 = [v19 mutableCopy];

  if (!v20)
  {
    v21 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v20 = [v21 mutableCopy];
  }

  [v20 setAlignment:0];
  if ([v5 isDetectedCheckbox])
  {
    [v20 setAlignment:1];
    [v8 setMaximumNumberOfCharacters:1];
  }

  if ([v5 hasComb])
  {
    [v20 setLineBreakMode:2];
  }

  [v11 setObject:v20 forKeyedSubscript:v18];
  [v8 setTypingAttributes:v11];
  [MEMORY[0x1E6979518] commit];
}

- (void)populateAnnotationsFromDetectedAnnotationsOnPage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 detectedAnnotations];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isActivatableTextField])
        {
          [(PDFViewController *)self addDetectedAnnotation:v11 toPage:v4];
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v4 removeFromDetectedAnnotations:v5];
}

- (BOOL)_shouldUpdateMarkupWithStyle:(unint64_t)a3 onPage:(id)a4 forIndexSet:(id)a5
{
  v8 = a5;
  v9 = self->_private;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&v9->view);
  v12 = [WeakRetained document];
  v13 = [v12 indexForPage:v10];

  v14 = [WeakRetained pageViewForPageAtIndex:v13];

  v15 = [v14 markupAnnotationsForIndexSet:v8];
  if ([v15 count] == 1)
  {
    v16 = [v15 objectAtIndex:0];
    v17 = [v16 markupStyle] != a3;
    v18 = [v16 indexSetForQuadPoints];
    v19 = [v8 isEqualToIndexSet:v18];

    v20 = v17 | v19 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

- (void)setMarkupStyle:(unint64_t)a3 forSelection:(id)a4 clearSelection:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (v8)
  {
    v20 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    [v8 pages];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v25 = 0u;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v8 rangeAtIndex:0 onPage:v14];
          v17 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v15, v16}];
          if ([(PDFViewController *)self _shouldUpdateMarkupWithStyle:a3 onPage:v14 forIndexSet:v17])
          {
            v18 = [WeakRetained document];
            v19 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(v18, "indexForPage:", v14)}];

            [v19 addMarkupWithStyle:a3 forIndexSet:v17];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    if (v20)
    {
      [WeakRetained clearSelection];
      objc_storeWeak(&self->_private->activeAnnotation, 0);
    }
  }
}

- (void)setMarkupStyle:(unint64_t)a3 forAnnotation:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v11 = v6;
    v7 = [v6 indexSetForQuadPoints];
    v8 = [v11 page];
    v9 = [(PDFViewController *)self _shouldUpdateMarkupWithStyle:a3 onPage:v8 forIndexSet:v7];

    if (v9)
    {
      v10 = [(PDFViewController *)self _pageViewForAnnotation:v11];
      [v10 addMarkupWithStyle:a3 forIndexSet:v7];
    }

    v6 = v11;
  }
}

- (void)editNoteForAnnotation:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v4 = [v5 contents];

    if (!v4)
    {
      [v5 setContents:&stru_1F416DF70 withUndo:1];
    }

    [(PDFViewController *)self _addControlForAnnotation:v5];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)removeNoteForAnnotation:(id)a3
{
  if (a3)
  {
    [a3 setContents:0 withUndo:1];
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    [WeakRetained clearSelection];

    p_activeAnnotation = &self->_private->activeAnnotation;

    objc_storeWeak(p_activeAnnotation, 0);
  }
}

- (id)_pageViewForAnnotation:(id)a3
{
  v3 = self->_private;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->view);
  v6 = [v4 page];

  v7 = [WeakRetained document];
  v8 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(v7, "indexForPage:", v6)}];

  return v8;
}

- (void)_postAnnotationWillHitNotification:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = self->_private;
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&v3->view);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"PDFAnnotationWillHit";
    v9[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [v6 postNotificationName:@"PDFViewAnnotationWillHit" object:WeakRetained userInfo:v7];
  }
}

- (void)_postAnnotationHitNotification:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = self->_private;
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&v3->view);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"PDFAnnotationHit";
    v9[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [v6 postNotificationName:@"PDFViewAnnotationHit" object:WeakRetained userInfo:v7];
  }
}

- (void)_handleButtonHit:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 buttonWidgetState])
  {
    v11[0] = @"annotation";
    v11[1] = @"intValue";
    v12[0] = v4;
    v12[1] = &unk_1F4184240;
    v5 = MEMORY[0x1E695DF20];
    v6 = v12;
    v7 = v11;
    goto LABEL_5;
  }

  if ([v4 allowsToggleToOff])
  {
    v9[0] = @"annotation";
    v9[1] = @"intValue";
    v10[0] = v4;
    v10[1] = &unk_1F4184258;
    v5 = MEMORY[0x1E695DF20];
    v6 = v10;
    v7 = v9;
LABEL_5:
    v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:2];
    [(PDFViewController *)self _doButtonHit:v8];
  }
}

- (void)_doButtonHit:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"annotation"];
  if (v5)
  {
    v6 = [v4 objectForKey:@"intValue"];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v4 objectForKey:@"formValue"];
      if (!v7)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    v22 = [v5 buttonWidgetState];
    if ([v5 widgetControlType] == 1)
    {
      v8 = [v5 formData];
      if (v8)
      {
        v9 = [v5 fieldName];
        v10 = [v8 stringValueForFieldNamed:v9];

        if (!v10 || [v10 length])
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_12:
    v23 = v8;
    if (v6)
    {
      [v5 setButtonWidgetState:{objc_msgSend(v6, "intValue")}];
    }

    else if (v8 && v7)
    {
      v11 = [v5 fieldName];
      [v8 setStringValue:v7 forFieldNamed:v11 postFormChangeNotification:1];
    }

    else
    {
      NSLog(&cfstr_ErrorUndefined.isa);
    }

    v24 = v7;
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    v13 = [WeakRetained undoManager];
    if (v10)
    {
      v27[0] = @"annotation";
      v27[1] = @"formValue";
      v28[0] = v5;
      v28[1] = v10;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
      [v13 registerUndoWithTarget:self selector:sel__doButtonHit_ object:v14];
    }

    else
    {
      v25[0] = @"annotation";
      v25[1] = @"intValue";
      v26[0] = v5;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
      v26[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      [v13 registerUndoWithTarget:self selector:sel__doButtonHit_ object:v15];
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = PDFKitLocalizedString(@"Change of %@");
    v18 = [v5 displayName];
    v19 = [v16 stringWithFormat:v17, v18];

    v20 = [WeakRetained undoManager];
    v21 = PDFKitLocalizedString(v19);
    [v20 setActionName:v21];

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_annotationHit:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v40[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    v9 = [v7 valueForAnnotationKey:@"/Subtype"];
    v10 = [WeakRetained renderingProperties];
    v11 = [v10 isUsingPDFExtensionView];

    if (([v9 isEqualToString:@"/Link"] & 1) == 0 && v11)
    {
      goto LABEL_37;
    }

    [(PDFViewController *)self _postAnnotationWillHitNotification:v7];
    if ([v9 isEqualToString:@"/Link"])
    {
      v12 = [v7 action];
      if (v12)
      {
        v13 = [(PDFViewController *)self _pageViewForAnnotation:v7];
        v14 = [v13 pageLayer];
        if (v11)
        {
          v15 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:v7 withLayer:v14 forType:1];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v23 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:v7 withLayer:v14 forType:0];
        }

        objc_initWeak(&location, WeakRetained);
        v24 = dispatch_time(0, 400000000);
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __47__PDFViewController__annotationHit_atLocation___block_invoke;
        v35 = &unk_1E81510E8;
        objc_copyWeak(&v37, &location);
        v36 = v12;
        dispatch_after(v24, MEMORY[0x1E69E96A0], &v32);

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
        if (v11)
        {
LABEL_24:
          v25 = [MEMORY[0x1E696AD88] defaultCenter];
          v39[0] = @"PDFAnnotationHit";
          v39[1] = @"location";
          v40[0] = v7;
          v26 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{x, y}];
          v40[1] = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          [v25 postNotificationName:@"PDFViewAnnotationHit" object:WeakRetained userInfo:v27];

LABEL_37:
          goto LABEL_38;
        }

        goto LABEL_34;
      }

LABEL_35:

LABEL_36:
      [(PDFViewController *)self _postAnnotationHitNotification:v7, v32, v33, v34, v35];
      goto LABEL_37;
    }

    if ([v9 isEqualToString:@"/Widget"] && (objc_msgSend(v7, "isReadOnly") & 1) == 0)
    {
      v12 = [v7 valueForAnnotationKey:@"/FT"];
      v28 = [v12 isEqualToString:@"/Btn"];
      v29 = [v12 isEqualToString:@"/Ch"];
      v30 = [v12 isEqualToString:@"/Tx"];
      v31 = [v12 isEqualToString:@"/Sig"];
      if ((v29 & 1) == 0 && (v30 & 1) == 0 && !v31)
      {
        if (!v28)
        {
          goto LABEL_35;
        }

        if ([v7 widgetControlType])
        {
          [(PDFViewController *)self _handleButtonHit:v7];
          goto LABEL_35;
        }

        v13 = [v7 action];
        if (v13)
        {
          [WeakRetained performAction:v13];
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      if (![v7 isMarkupAnnotationSubtype])
      {
        if ([v9 isEqualToString:@"/Text"])
        {
          v22 = [v7 popup];

          if (v22)
          {
            [(PDFViewController *)self _addControlForAnnotation:v7];
          }
        }

        goto LABEL_36;
      }

      v12 = [v7 page];
      [WeakRetained convertPoint:v12 toPage:{x, y}];
      if (![v7 noteContainsPoint:?])
      {
        v13 = objc_loadWeakRetained(&self->_private->activeAnnotation);
        if (v13 != v7)
        {
          v16 = [WeakRetained currentSelection];

          if (v16)
          {
            v17 = [v7 indexSetForQuadPoints];
            v18 = [WeakRetained currentSelection];
            v19 = [v18 rangeAtIndex:0 onPage:v12];
            v21 = v20;

            if (([v17 containsIndexesInRange:{v19, v21}] & 1) == 0)
            {
              [WeakRetained clearSelection];
            }
          }

          objc_storeWeak(&self->_private->activeAnnotation, v7);
          [(PDFViewController *)self showMenuForMarkupAnnotation:v7];
        }

        goto LABEL_34;
      }
    }

    [(PDFViewController *)self _addControlForAnnotation:v7];
    goto LABEL_35;
  }

LABEL_38:
}

void __47__PDFViewController__annotationHit_atLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained performAction:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)handleGesture:(id)a3
{
  v4 = self->_private;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&v4->activeAnnotation);
  v6 = objc_loadWeakRetained(&self->_private->view);
  v7 = [v6 typeForGestureRecognizer:v5];
  [v5 locationInView:v6];
  v9 = v8;
  v11 = v10;
  v12 = [v5 state];

  [(PDFViewController *)self handleGesture:v7 state:v12 location:v9, v11];
  if (WeakRetained && (v12 == 1 || !v7))
  {
    [(PDFViewController *)self removeControlForAnnotation:WeakRetained];
  }
}

- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v10 = [(PDFViewController *)self _annotationAtGestureLocation:x, y];
  v11 = v10;
  if (a3 == 2 && v10)
  {
    [(PDFViewController *)self _annotationHitLongPress:v10 gestureState:a4 location:x, y];
  }

  else if (a3 == 1)
  {
    [WeakRetained clearSelection];
    [(PDFViewController *)self _performDoubleTapAtLocation:x, y];
  }

  else if (!a3)
  {
    [WeakRetained clearSelection];
    if (v11)
    {
      [(PDFViewController *)self _annotationHit:v11 atLocation:x, y];
    }
  }
}

- (void)_performDoubleTapAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    WeakRetained = [(PDFViewController *)self _handleFormFillingEventAtLocation:x, y];
    v7 = v8;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = [v8 focusOnColumnAtPoint:{x, y}];
      v7 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](WeakRetained, v7);
}

- (void)hideActiveMenus
{
  v10[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v4 = [WeakRetained renderingProperties];
  v5 = [v4 isUsingPDFExtensionView];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = @"visible";
    v9[1] = @"selectionRect";
    v10[0] = MEMORY[0x1E695E110];
    v7 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v10[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v6 postNotificationName:@"PDFTextSelectionShowTextSelectionMenu" object:self userInfo:v8];
  }

  else
  {
    [(PDFViewController *)self _hideTextSelectionMenu];

    [(PDFViewController *)self _hidePDFMarkupMenuView];
  }
}

- (void)showMarkupStyleMenuForMarkupAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v3 = [WeakRetained document];
  if ([v3 allowsCommenting])
  {
    v4 = [WeakRetained isAnnotationEditingEnabled];

    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    v3 = v5;
    if (v5)
    {
      v6 = [v5 page];
      [v3 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [WeakRetained currentSelection];
      v16 = v15;
      if (v15 && ([v15 isEmpty] & 1) == 0)
      {
        [v16 boundsForPage:v6];
        v8 = v17;
        v10 = v18;
        v12 = v19;
        v14 = v20;
      }

      [WeakRetained convertRect:v6 fromPage:{v8, v10, v12, v14}];
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      MidX = CGRectGetMidX(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v26 = [PDFAnnotationEditMenuConfiguration configurationWithIdentifier:@"com.apple.pdfkit.menu.markupstyle" sourcePoint:MidX, CGRectGetMinY(v30)];
      [v26 setAnnotation:v3];
      self->_private->textSelectionMenu = 2;
      [(UIEditMenuInteraction *)self->_private->editMenuInteraction presentEditMenuWithConfiguration:v26];
    }
  }

LABEL_9:
}

- (void)showMenuForMarkupAnnotation:(id)a3
{
  v27 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v5 = [WeakRetained document];
  if ([v5 allowsCommenting])
  {
    v6 = [WeakRetained isAnnotationEditingEnabled];

    if (!v6)
    {
      goto LABEL_8;
    }

    v5 = [v27 page];
    [v27 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [WeakRetained currentSelection];
    v16 = v15;
    if (v15 && ([v15 isEmpty] & 1) == 0)
    {
      [v16 boundsForPage:v5];
      v8 = v17;
      v10 = v18;
      v12 = v19;
      v14 = v20;
    }

    [WeakRetained convertRect:v5 fromPage:{v8, v10, v12, v14}];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    MidX = CGRectGetMidX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v26 = [PDFAnnotationEditMenuConfiguration configurationWithIdentifier:@"com.apple.pdfkit.menu.markup" sourcePoint:MidX, CGRectGetMinY(v30)];
    [v26 setAnnotation:v27];
    self->_private->textSelectionMenu = 2;
    [(UIEditMenuInteraction *)self->_private->editMenuInteraction presentEditMenuWithConfiguration:v26];
  }

LABEL_8:
}

- (void)highlight:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v4 = [WeakRetained activeMarkupStyle];
  v5 = [WeakRetained currentSelection];
  [(PDFViewController *)self setMarkupStyle:v4 forSelection:v5 clearSelection:1];
  v6 = [v5 firstPage];
  v7 = [WeakRetained document];
  v8 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(v7, "indexForPage:", v6)}];

  v9 = objc_alloc(MEMORY[0x1E696AC90]);
  v10 = [v5 rangeAtIndex:0 onPage:v6];
  v12 = [v9 initWithIndexesInRange:{v10, v11}];
  v13 = [v8 markupAnnotationsForIndexSet:v12];

  if ([v13 count])
  {
    v14 = [v13 firstObject];
    if (v14)
    {
      objc_storeWeak(&self->_private->activeAnnotation, v14);
      [(PDFViewController *)self showMarkupStyleMenuForMarkupAnnotation];
    }
  }
}

- (id)additionalEditMenuElementsForSelection:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v6 = [WeakRetained allowsMarkupAnnotationEditing];
  v7 = MEMORY[0x1E695E0F0];
  if (!v4 || !v6 || ([v4 isEmpty] & 1) != 0)
  {
    goto LABEL_20;
  }

  v32 = WeakRetained;
  val = self;
  [(PDFViewController *)self _annotationsForSelection:v4];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v8 = v40 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v9)
  {
LABEL_17:

    objc_initWeak(&location, val);
    v18 = 0;
LABEL_18:
    v19 = MEMORY[0x1E69DC910];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __60__PDFViewController_additionalEditMenuElementsForSelection___block_invoke;
    v36[3] = &unk_1E8151B40;
    objc_copyWeak(&v37, &location);
    v20 = [v19 elementWithViewProvider:v36];
    v21 = MEMORY[0x1E69DC628];
    v22 = PDFKitLocalizedString(@"Highlight");
    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"highlighter"];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __60__PDFViewController_additionalEditMenuElementsForSelection___block_invoke_3;
    v34[3] = &unk_1E8151188;
    objc_copyWeak(&v35, &location);
    v34[4] = val;
    v24 = [v21 actionWithTitle:v22 image:v23 identifier:@"com.apple.pdfkit.action.highlight" handler:v34];
    [v20 setMenuElementRepresentation:v24];

    v43 = v20;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    objc_destroyWeak(&v35);

    objc_destroyWeak(&v37);
    goto LABEL_19;
  }

  v10 = *v40;
LABEL_6:
  v11 = 0;
  while (1)
  {
    if (*v40 != v10)
    {
      objc_enumerationMutation(v8);
    }

    v12 = *(*(&v39 + 1) + 8 * v11);
    if (![v12 isMarkupAnnotationSubtype])
    {
      goto LABEL_12;
    }

    v13 = [v12 indexSetForQuadPoints];
    v14 = [v12 page];
    v15 = [v4 rangeAtIndex:0 onPage:v14];
    v17 = v16;

    if ([v13 containsIndexesInRange:{v15, v17}])
    {
      break;
    }

LABEL_12:
    if (v9 == ++v11)
    {
      v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  v18 = v12;
  objc_storeWeak(&val->_private->activeAnnotation, v18);

  objc_initWeak(&location, val);
  if (!v18)
  {
    goto LABEL_18;
  }

  v7 = [(PDFViewController *)val additionalEditMenuElementsForMarkupAnnotation:v18];
LABEL_19:
  objc_destroyWeak(&location);

  WeakRetained = v32;
LABEL_20:
  v25 = WeakRetained;
  v26 = [WeakRetained delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v28 = [v25 delegate];
    v29 = [v28 additionalEditMenuElementsForSelection:v4];
    if (v29)
    {
      v30 = [v7 arrayByAddingObjectsFromArray:v29];

      v7 = v30;
    }
  }

  return v7;
}

PDFMarkupStyleView *__60__PDFViewController_additionalEditMenuElementsForSelection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PDFMarkupStyleView alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PDFViewController_additionalEditMenuElementsForSelection___block_invoke_2;
  v9[3] = &unk_1E8151B18;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = [(PDFMarkupStyleView *)v4 initWithHandler:v9];
  v6 = [(PDFMarkupStyleView *)v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant:40.0];
  [v7 setActive:1];

  objc_destroyWeak(&v10);

  return v5;
}

void __60__PDFViewController_additionalEditMenuElementsForSelection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMarkupStyle:a2];
  [WeakRetained _closeTextEditingMenu];
}

void __60__PDFViewController_additionalEditMenuElementsForSelection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained highlight:*(a1 + 32)];
}

- (id)additionalEditMenuElementsForMarkupAnnotation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(location, self);
  v6 = MEMORY[0x1E69DC910];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke;
  v36[3] = &unk_1E8151B40;
  objc_copyWeak(&v37, location);
  v7 = [v6 elementWithViewProvider:v36];
  v8 = MEMORY[0x1E69DC628];
  v9 = PDFKitLocalizedString(@"Highlight");
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"highlighter"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_3;
  v34[3] = &unk_1E8151B68;
  objc_copyWeak(&v35, location);
  v11 = [v8 actionWithTitle:v9 image:v10 identifier:@"com.apple.pdfkit.action.highlight" handler:v34];
  [v7 setMenuElementRepresentation:v11];

  [v5 addObject:v7];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v13 = MEMORY[0x1E69DC628];
  v14 = PDFKitLocalizedString(@"Remove");
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_4;
  v32[3] = &unk_1E8151B90;
  v15 = v4;
  v33 = v15;
  v16 = [v13 actionWithTitle:v14 image:v12 identifier:@"com.apple.pdfkit.action.removeMarkup" handler:v32];

  [v16 setAttributes:{objc_msgSend(v16, "attributes") | 2}];
  [v5 addObject:v16];
  v17 = [v15 popup];

  if (v17)
  {
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];

    v19 = MEMORY[0x1E69DC628];
    v20 = PDFKitLocalizedString(@"Remove Note");
    v21 = v30;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_5;
    v30[3] = &unk_1E8151188;
    v22 = &v31;
    objc_copyWeak(&v31, location);
    v30[4] = v15;
    v23 = [v19 actionWithTitle:v20 image:v18 identifier:@"com.apple.pdfkit.action.removeNote" handler:v30];

    [v23 setAttributes:{objc_msgSend(v23, "attributes") | 2}];
    [v5 addObject:v23];
  }

  else
  {
    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"note.text"];

    v24 = MEMORY[0x1E69DC628];
    v25 = PDFKitLocalizedString(@"Add Note");
    v21 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_6;
    v28[3] = &unk_1E8151188;
    v22 = &v29;
    objc_copyWeak(&v29, location);
    v28[4] = v15;
    v23 = [v24 actionWithTitle:v25 image:v18 identifier:@"com.apple.pdfkit.action.addNote" handler:v28];

    [v5 addObject:v23];
  }

  objc_destroyWeak(v22);
  v26 = [v5 copy];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(location);

  return v26;
}

PDFMarkupStyleView *__67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PDFMarkupStyleView alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_2;
  v9[3] = &unk_1E8151B18;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = [(PDFMarkupStyleView *)v4 initWithHandler:v9];
  v6 = [(PDFMarkupStyleView *)v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant:40.0];
  [v7 setActive:1];

  objc_destroyWeak(&v10);

  return v5;
}

void __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMarkupStyle:a2];
  [WeakRetained _closeTextEditingMenu];
}

void __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showMarkupStyleMenuForMarkupAnnotation];
}

void __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) page];
  [v2 removeAnnotation:*(a1 + 32) withUndo:1];
}

void __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeNoteForAnnotation:*(a1 + 32)];
}

void __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained editNoteForAnnotation:*(a1 + 32)];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
  v12 = [v9 identifier];
  v13 = v9;
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 annotation];
    if (v14)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 isEqual:@"com.apple.pdfkit.menu.markup"])
      {
        v15 = [(PDFViewController *)self additionalEditMenuElementsForMarkupAnnotation:v14];
        if ([v15 count])
        {
          v16 = [v10 indexOfObjectPassingTest:&__block_literal_global_12];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [v10 count] - 1;
          }

          v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v16 + 1, objc_msgSend(v15, "count")}];
          [v11 insertObjects:v15 atIndexes:v17];
        }
      }

      else if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 isEqual:@"com.apple.pdfkit.menu.markupstyle"])
      {
        v30 = v12;
        v31 = v8;
        objc_initWeak(&location, self);
        [v11 removeAllObjects];
        v20 = 0;
        do
        {
          v21 = PDFMarkupMenuColorMenuIconForMarkupStyle(v20);
          if (v20 >= 5)
          {
            if (v20 == 5)
            {
              [MEMORY[0x1E69DCAB8] smallUnderlinePot];
            }

            else
            {
              [MEMORY[0x1E69DCAB8] smallStrikeOutPot];
            }
            v26 = ;
          }

          else
          {
            v22 = v21;
            v23 = MEMORY[0x1E69DCAB8];
            v24 = PDFMarkupMenuColorForMenuIcon(v21);
            v25 = PDFMarkupMenuString(v22);
            v26 = [v23 smallColorPotForColor:v24 withAccessibilityLabel:v25];
          }

          v27 = MEMORY[0x1E69DC628];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __79__PDFViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_2;
          v32[3] = &unk_1E8151BB8;
          objc_copyWeak(v34, &location);
          v34[1] = v20;
          v28 = v14;
          v33 = v28;
          v29 = [v27 actionWithTitle:&stru_1F416DF70 image:v26 identifier:0 handler:v32];
          [v11 addObject:v29];

          objc_destroyWeak(v34);
          ++v20;
        }

        while (v20 != 7);
        objc_destroyWeak(&location);
        v14 = v28;
        v12 = v30;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F416DF70 image:0 identifier:0 options:128 children:{v11, v30, v31}];

  return v18;
}

uint64_t __79__PDFViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 identifier];
    v7 = [v6 isEqual:*MEMORY[0x1E69DE1D0]];
    if (v7)
    {
      *a4 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __79__PDFViewController_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMarkupStyle:*(a1 + 48) forAnnotation:*(a1 + 32)];
}

- (void)_closeTextEditingMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v6 = [WeakRetained documentView];

  v3 = [v6 interactions];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_219];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 objectAtIndex:v4];
    [v5 dismissMenu];
  }
}

uint64_t __42__PDFViewController__closeTextEditingMenu__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v5 dismissMenu];
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

- (void)setMarkupStyle:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  [WeakRetained setActiveMarkupStyle:a3];
  v5 = [WeakRetained currentSelection];
  if (v5)
  {
    [(PDFViewController *)self setMarkupStyle:a3 forSelection:v5 clearSelection:0];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    if (v6)
    {
      v7 = v6;
      [(PDFViewController *)self setMarkupStyle:a3 forAnnotation:v6];
    }
  }
}

- (void)deleteAnnotation
{
  v53 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v36 = [WeakRetained document];
  v37 = WeakRetained;
  v4 = [WeakRetained currentSelection];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = self;
  v35 = v4;
  if (v4)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = [v4 pages];
    v7 = [v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          v12 = [v35 rangeAtIndex:0 onPage:{v11, v34}];
          v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v12, v13}];
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v36, "indexForPage:", v11)}];
          [v5 setObject:v14 forKey:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    v6 = v16;
    if (v16)
    {
      v17 = [v16 indexSetForQuadPoints];
      v18 = MEMORY[0x1E696AD98];
      v19 = [v6 page];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v36, "indexForPage:", v19)}];
      [v5 setObject:v17 forKey:v20];
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v42 + 1) + 8 * j);
        v27 = [v21 objectForKey:{v26, v34}];
        v28 = [v37 pageViewForPageAtIndex:{objc_msgSend(v26, "integerValue")}];
        v29 = [v28 markupAnnotationsForIndexSet:v27];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v39;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v39 != v32)
              {
                objc_enumerationMutation(v29);
              }

              [v28 addMarkupWithStyle:objc_msgSend(*(*(&v38 + 1) + 8 * k) forIndexSet:{"markupStyle"), v27}];
            }

            v31 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v31);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v23);
  }

  [(PDFViewController *)v34 _hidePDFMarkupMenuView];
}

- (void)_annotationHitLongPress:(id)a3 gestureState:(int64_t)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v22[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v11 = [WeakRetained renderingProperties];
  v12 = [v11 isUsingPDFExtensionView];

  if (v12)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = self->_private;
    if (a4 == 1)
    {
      v14->longPressGestureStartTime = v13;
      self->_private->didPostPDFExtensionViewAnnotationLongPress = 0;
      v15 = [(PDFViewController *)self _pageViewForAnnotation:v9];
      v16 = [v15 pageLayer];
      v17 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:v9 withLayer:v16 forType:2];
    }

    else if (v13 - v14->longPressGestureStartTime > 0.75 && !v14->didPostPDFExtensionViewAnnotationLongPress)
    {
      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      v21[0] = @"annotation";
      v21[1] = @"location";
      v22[0] = v9;
      v19 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{x, y}];
      v22[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v18 postNotificationName:@"PDFExtensionViewAnnotationLongPress" object:self userInfo:v20];

      self->_private->didPostPDFExtensionViewAnnotationLongPress = 1;
    }
  }
}

- (id)_annotationAtGestureLocation:(CGPoint)a3
{
  v7 = 0.0;
  v8 = 0.0;
  v3 = [(PDFViewController *)self _getPagePoint:&v7 forGestureLocation:a3.x, a3.y];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 annotationAtPoint:{v7, v8}];
    if (!v5)
    {
      v5 = [v4 scannedAnnotationAtPoint:{v7, v8}];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_annotationsForSelection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v6 = [v4 pages];
  if ([v6 count] <= 1)
  {
    v8 = [v6 firstObject];
    v9 = [WeakRetained document];
    v10 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(v9, "indexForPage:", v8)}];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E696AC90]);
      v12 = [v4 rangeAtIndex:0 onPage:v8];
      v14 = [v11 initWithIndexesInRange:{v12, v13}];
      v7 = [v10 markupAnnotationsForIndexSet:v14];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getPagePoint:(CGPoint *)a3 forGestureLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v8 = [WeakRetained pageForPoint:0 nearest:{x, y}];
  v9 = v8;
  if (a3 && v8)
  {
    [WeakRetained convertPoint:v8 toPage:{x, y}];
    a3->x = v10;
    a3->y = v11;
  }

  return v9;
}

- (BOOL)_handleFormFillingEventAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained pageForPoint:0 nearest:{x, y}];
    if (v7 && [v6 isInFormFillingMode] && GetDefaultsWriteAKEnabled())
    {
      [v6 insertFormFieldAtBestLocationNearPoint:v7 onPage:{x, y}];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end