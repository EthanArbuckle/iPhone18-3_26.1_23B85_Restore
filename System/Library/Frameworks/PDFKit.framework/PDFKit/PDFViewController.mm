@interface PDFViewController
- (BOOL)_handleFormFillingEventAtLocation:(CGPoint)location;
- (BOOL)_shouldUpdateMarkupWithStyle:(unint64_t)style onPage:(id)page forIndexSet:(id)set;
- (CGPoint)_convertPoint:(CGPoint)point toPageView:(id)view;
- (PDFViewController)initWithView:(id)view;
- (id)_annotationAtGestureLocation:(CGPoint)location;
- (id)_annotationsForSelection:(id)selection;
- (id)_findNextActivatableAnnotationOnPage:(id)page fromAnnotation:(id)annotation direction:(unint64_t)direction;
- (id)_getPagePoint:(CGPoint *)point forGestureLocation:(CGPoint)location;
- (id)_pageViewForAnnotation:(id)annotation;
- (id)activeAnnotation;
- (id)additionalEditMenuElementsForMarkupAnnotation:(id)annotation;
- (id)additionalEditMenuElementsForSelection:(id)selection;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_addControlForAnnotation:(id)annotation;
- (void)_annotationHit:(id)hit atLocation:(CGPoint)location;
- (void)_annotationHitLongPress:(id)press gestureState:(int64_t)state location:(CGPoint)location;
- (void)_closeTextEditingMenu;
- (void)_doButtonHit:(id)hit;
- (void)_handleButtonHit:(id)hit;
- (void)_performDoubleTapAtLocation:(CGPoint)location;
- (void)_postAnnotationHitNotification:(id)notification;
- (void)_postAnnotationWillHitNotification:(id)notification;
- (void)activateAnnotation:(id)annotation;
- (void)activateNextAnnotation:(unint64_t)annotation withCompletion:(id)completion;
- (void)addDetectedAnnotation:(id)annotation toPage:(id)page;
- (void)dealloc;
- (void)deleteAnnotation;
- (void)editNoteForAnnotation:(id)annotation;
- (void)findNextActivatableAnnotationFromPage:(id)page fromAnnotation:(id)annotation direction:(unint64_t)direction withCompletion:(id)completion;
- (void)handleGesture:(id)gesture;
- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location;
- (void)handleTextSuggestion:(id)suggestion completionHandler:(id)handler;
- (void)hideActiveMenus;
- (void)highlight:(id)highlight;
- (void)interactWithAnnotation:(id)annotation;
- (void)populateAnnotationsFromDetectedAnnotationsOnPage:(id)page;
- (void)removeControlForAnnotation:(id)annotation;
- (void)removeNoteForAnnotation:(id)annotation;
- (void)setActiveAnnotation:(id)annotation;
- (void)setMarkupStyle:(unint64_t)style;
- (void)setMarkupStyle:(unint64_t)style forAnnotation:(id)annotation;
- (void)setMarkupStyle:(unint64_t)style forSelection:(id)selection clearSelection:(BOOL)clearSelection;
- (void)showMarkupStyleMenuForMarkupAnnotation;
- (void)showMenuForMarkupAnnotation:(id)annotation;
@end

@implementation PDFViewController

- (CGPoint)_convertPoint:(CGPoint)point toPageView:(id)view
{
  viewCopy = view;
  v6 = PDFRectToCGRect([viewCopy boundsForBox:0]);
  v8 = v7;
  v10 = v9;
  rect_8 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  [viewCopy boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];

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
  v25 = point.y - (v24 - CGRectGetMinY(v38));

  v26 = PDFPointMake(point.x - v22, v25);
  result.y = v27;
  result.x = v26;
  return result;
}

- (PDFViewController)initWithView:(id)view
{
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = PDFViewController;
  v5 = [(PDFViewController *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(PDFViewControllerPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->view, viewCopy);
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

    [viewCopy addInteraction:v5->_private->editMenuInteraction];
    v5->_private->textSelectionMenu = 0;
    v5->_private->longPressGestureStartTime = 0.0;
    v5->_private->didPostPDFExtensionViewAnnotationLongPress = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_hideActiveMenus name:@"PDFTextSelectionMenuWillChangeScrollPosition" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_showActiveMenus name:@"PDFTextSelectionMenuDidChangeScrollPosition" object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFViewController;
  [(PDFViewController *)&v4 dealloc];
}

- (id)activeAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);

  return WeakRetained;
}

- (void)findNextActivatableAnnotationFromPage:(id)page fromAnnotation:(id)annotation direction:(unint64_t)direction withCompletion:(id)completion
{
  pageCopy = page;
  annotationCopy = annotation;
  completionCopy = completion;
  document = [pageCopy document];
  pageCount = [document pageCount];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  formFillingQueue = [document formFillingQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__PDFViewController_findNextActivatableAnnotationFromPage_fromAnnotation_direction_withCompletion___block_invoke;
  v20[3] = &unk_1E8151A50;
  v20[4] = self;
  v21 = pageCopy;
  v24 = completionCopy;
  v25 = v28;
  directionCopy = direction;
  v27 = pageCount;
  v22 = annotationCopy;
  v23 = document;
  v16 = document;
  v17 = completionCopy;
  v18 = annotationCopy;
  v19 = pageCopy;
  dispatch_async(formFillingQueue, v20);

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

- (id)_findNextActivatableAnnotationOnPage:(id)page fromAnnotation:(id)annotation direction:(unint64_t)direction
{
  pageCopy = page;
  annotationCopy = annotation;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __83__PDFViewController__findNextActivatableAnnotationOnPage_fromAnnotation_direction___block_invoke;
  v18 = &unk_1E8151AA0;
  v19 = annotationCopy;
  directionCopy = direction;
  v9 = annotationCopy;
  v10 = _Block_copy(&v15);
  annotations = [pageCopy annotations];
  v12 = v10[2](v10, annotations);

  if (!v12)
  {
    detectedAnnotations = [pageCopy detectedAnnotations];
    v12 = v10[2](v10, detectedAnnotations);
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

- (void)setActiveAnnotation:(id)annotation
{
  obj = annotation;
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
    document = [v5 document];
    akController = [document akController];
    if (objc_opt_respondsToSelector())
    {
      [akController endEditingTextAnnotation];
    }

    modelController = [akController modelController];
    [modelController deselectAllAnnotations];

    self->_private->textSelectionMenu = 0;
    [(PDFViewController *)self _hidePDFMarkupMenuView];
  }
}

- (void)interactWithAnnotation:(id)annotation
{
  v4 = self->_private;
  annotationCopy = annotation;
  objc_storeWeak(&v4->activeAnnotation, annotationCopy);
  [(PDFViewController *)self performSelector:sel__postAnnotationHitNotification_ withObject:annotationCopy afterDelay:0.1];
}

- (void)activateNextAnnotation:(unint64_t)annotation withCompletion:(id)completion
{
  completionCopy = completion;
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
  document = [WeakRetained document];
  if ([document callDelegateHandleTabFrom:v9 direction:annotation])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
    v13 = completionCopy;
    [(PDFViewController *)self findNextActivatableAnnotationFromPage:v10 fromAnnotation:v9 direction:annotation withCompletion:v12];

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

- (void)activateAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (annotationCopy)
  {
    obj = annotationCopy;
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    v6 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    objc_storeWeak(&self->_private->activeAnnotation, obj);
    v7 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    page = [v7 page];
    [v7 bounds];
    v19 = PDFRectInset(v18, -4.0, -4.0);
    [WeakRetained goToRect:page onPage:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
    akAnnotation = [obj akAnnotation];

    if (akAnnotation)
    {
      akAnnotation2 = [obj akAnnotation];
      if (akAnnotation2)
      {
        document = [WeakRetained document];
        akController = [document akController];
        [akController editTextAnnotation:akAnnotation2 selectAllText:0];
        if ([obj isDetectedSignature] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          toolbarViewController = [akController toolbarViewController];
          if (objc_opt_respondsToSelector())
          {
            getAKTextView = [obj getAKTextView];
            [toolbarViewController displaySignaturePopoverOnSender:getAKTextView];
          }
        }
      }
    }

    else
    {
      [(PDFViewController *)self _addControlForAnnotation:v7];
    }

    [(PDFViewController *)self removeControlForAnnotation:v6];
    akAnnotation3 = [obj akAnnotation];

    if (!akAnnotation3)
    {
      [(PDFViewController *)self _postAnnotationHitNotification:v7];
    }

    annotationCopy = obj;
  }
}

- (void)_addControlForAnnotation:(id)annotation
{
  obj = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  document = [WeakRetained document];
  if ([document allowsFormFieldEntry])
  {
    isAnnotationEditingEnabled = [WeakRetained isAnnotationEditingEnabled];

    if (!isAnnotationEditingEnabled)
    {
      goto LABEL_5;
    }

    [(PDFViewController *)self hideActiveMenus];
    [WeakRetained clearSelection];
    document = [(PDFViewController *)self _pageViewForAnnotation:obj];
    [document addControlForAnnotation:obj];
    objc_storeWeak(&self->_private->activeAnnotation, obj);
  }

LABEL_5:
}

- (void)removeControlForAnnotation:(id)annotation
{
  if (annotation)
  {
    v4 = self->_private;
    annotationCopy = annotation;
    WeakRetained = objc_loadWeakRetained(&v4->activeAnnotation);
    v6 = [(PDFViewController *)self _pageViewForAnnotation:annotationCopy];
    [v6 removeControlForAnnotation:annotationCopy];

    if (WeakRetained == annotationCopy)
    {
      objc_storeWeak(&self->_private->activeAnnotation, 0);
      [(PDFViewController *)self hideActiveMenus];
    }
  }
}

- (void)handleTextSuggestion:(id)suggestion completionHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (WeakRetained)
  {
    v8 = [(PDFViewController *)self _pageViewForAnnotation:WeakRetained];
    [v8 populateFormFieldsWithAutoFillSuggestion:suggestionCopy completionHandler:handlerCopy];
  }
}

- (void)addDetectedAnnotation:(id)annotation toPage:(id)page
{
  v23[1] = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  v6 = MEMORY[0x1E6979518];
  pageCopy = page;
  [v6 begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [pageCopy addAnnotation:annotationCopy];

  akAnnotation = [annotationCopy akAnnotation];
  [akAnnotation setOriginalModelBaseScaleFactor:1.0];
  [akAnnotation setShouldUsePlaceholderText:0];
  [akAnnotation setTextIsFixedWidth:1];
  [akAnnotation setTextIsFixedHeight:0];
  [akAnnotation setIsFormField:1];
  [akAnnotation setIsDetectedSignature:{objc_msgSend(annotationCopy, "isDetectedSignature")}];
  if (objc_opt_respondsToSelector())
  {
    autoFillTextContentType = [annotationCopy autoFillTextContentType];
    [akAnnotation setTextContentType:autoFillTextContentType];
  }

  if ([annotationCopy hasComb] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [akAnnotation setMaximumNumberOfCharacters:{objc_msgSend(annotationCopy, "maximumLength")}];
  }

  typingAttributes = [akAnnotation typingAttributes];
  v11 = [typingAttributes mutableCopy];

  if ([annotationCopy hasComb])
  {
    [annotationCopy bounds];
    v13 = v12 / [annotationCopy maximumLength];
    v22 = *MEMORY[0x1E69DB648];
    font = [annotationCopy font];
    v23[0] = font;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    [@"W" sizeWithAttributes:v15];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13 - v16];
    [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69DB748]];

    [akAnnotation setMaximumNumberOfCharacters:{objc_msgSend(annotationCopy, "maximumLength")}];
  }

  v18 = *MEMORY[0x1E69DB688];
  v19 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  v20 = [v19 mutableCopy];

  if (!v20)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v20 = [defaultParagraphStyle mutableCopy];
  }

  [v20 setAlignment:0];
  if ([annotationCopy isDetectedCheckbox])
  {
    [v20 setAlignment:1];
    [akAnnotation setMaximumNumberOfCharacters:1];
  }

  if ([annotationCopy hasComb])
  {
    [v20 setLineBreakMode:2];
  }

  [v11 setObject:v20 forKeyedSubscript:v18];
  [akAnnotation setTypingAttributes:v11];
  [MEMORY[0x1E6979518] commit];
}

- (void)populateAnnotationsFromDetectedAnnotationsOnPage:(id)page
{
  v17 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  detectedAnnotations = [pageCopy detectedAnnotations];
  v7 = [detectedAnnotations countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(detectedAnnotations);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isActivatableTextField])
        {
          [(PDFViewController *)self addDetectedAnnotation:v11 toPage:pageCopy];
          [array addObject:v11];
        }
      }

      v8 = [detectedAnnotations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [pageCopy removeFromDetectedAnnotations:array];
}

- (BOOL)_shouldUpdateMarkupWithStyle:(unint64_t)style onPage:(id)page forIndexSet:(id)set
{
  setCopy = set;
  v9 = self->_private;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&v9->view);
  document = [WeakRetained document];
  v13 = [document indexForPage:pageCopy];

  v14 = [WeakRetained pageViewForPageAtIndex:v13];

  v15 = [v14 markupAnnotationsForIndexSet:setCopy];
  if ([v15 count] == 1)
  {
    v16 = [v15 objectAtIndex:0];
    v17 = [v16 markupStyle] != style;
    indexSetForQuadPoints = [v16 indexSetForQuadPoints];
    v19 = [setCopy isEqualToIndexSet:indexSetForQuadPoints];

    v20 = v17 | v19 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

- (void)setMarkupStyle:(unint64_t)style forSelection:(id)selection clearSelection:(BOOL)clearSelection
{
  clearSelectionCopy = clearSelection;
  v27 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  if (selectionCopy)
  {
    v20 = clearSelectionCopy;
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    [selectionCopy pages];
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
          v15 = [selectionCopy rangeAtIndex:0 onPage:v14];
          v17 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v15, v16}];
          if ([(PDFViewController *)self _shouldUpdateMarkupWithStyle:style onPage:v14 forIndexSet:v17])
          {
            document = [WeakRetained document];
            v19 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(document, "indexForPage:", v14)}];

            [v19 addMarkupWithStyle:style forIndexSet:v17];
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

- (void)setMarkupStyle:(unint64_t)style forAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (annotationCopy)
  {
    v11 = annotationCopy;
    indexSetForQuadPoints = [annotationCopy indexSetForQuadPoints];
    page = [v11 page];
    v9 = [(PDFViewController *)self _shouldUpdateMarkupWithStyle:style onPage:page forIndexSet:indexSetForQuadPoints];

    if (v9)
    {
      v10 = [(PDFViewController *)self _pageViewForAnnotation:v11];
      [v10 addMarkupWithStyle:style forIndexSet:indexSetForQuadPoints];
    }

    annotationCopy = v11;
  }
}

- (void)editNoteForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (annotationCopy)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    contents = [annotationCopy contents];

    if (!contents)
    {
      [annotationCopy setContents:&stru_1F416DF70 withUndo:1];
    }

    [(PDFViewController *)self _addControlForAnnotation:annotationCopy];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)removeNoteForAnnotation:(id)annotation
{
  if (annotation)
  {
    [annotation setContents:0 withUndo:1];
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    [WeakRetained clearSelection];

    p_activeAnnotation = &self->_private->activeAnnotation;

    objc_storeWeak(p_activeAnnotation, 0);
  }
}

- (id)_pageViewForAnnotation:(id)annotation
{
  v3 = self->_private;
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&v3->view);
  page = [annotationCopy page];

  document = [WeakRetained document];
  v8 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(document, "indexForPage:", page)}];

  return v8;
}

- (void)_postAnnotationWillHitNotification:(id)notification
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (notification)
  {
    v3 = self->_private;
    notificationCopy = notification;
    WeakRetained = objc_loadWeakRetained(&v3->view);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"PDFAnnotationWillHit";
    v9[0] = notificationCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [defaultCenter postNotificationName:@"PDFViewAnnotationWillHit" object:WeakRetained userInfo:v7];
  }
}

- (void)_postAnnotationHitNotification:(id)notification
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (notification)
  {
    v3 = self->_private;
    notificationCopy = notification;
    WeakRetained = objc_loadWeakRetained(&v3->view);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"PDFAnnotationHit";
    v9[0] = notificationCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [defaultCenter postNotificationName:@"PDFViewAnnotationHit" object:WeakRetained userInfo:v7];
  }
}

- (void)_handleButtonHit:(id)hit
{
  v12[2] = *MEMORY[0x1E69E9840];
  hitCopy = hit;
  if (![hitCopy buttonWidgetState])
  {
    v11[0] = @"annotation";
    v11[1] = @"intValue";
    v12[0] = hitCopy;
    v12[1] = &unk_1F4184240;
    v5 = MEMORY[0x1E695DF20];
    v6 = v12;
    v7 = v11;
    goto LABEL_5;
  }

  if ([hitCopy allowsToggleToOff])
  {
    v9[0] = @"annotation";
    v9[1] = @"intValue";
    v10[0] = hitCopy;
    v10[1] = &unk_1F4184258;
    v5 = MEMORY[0x1E695DF20];
    v6 = v10;
    v7 = v9;
LABEL_5:
    v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:2];
    [(PDFViewController *)self _doButtonHit:v8];
  }
}

- (void)_doButtonHit:(id)hit
{
  v28[2] = *MEMORY[0x1E69E9840];
  hitCopy = hit;
  v5 = [hitCopy objectForKey:@"annotation"];
  if (v5)
  {
    v6 = [hitCopy objectForKey:@"intValue"];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [hitCopy objectForKey:@"formValue"];
      if (!v7)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    buttonWidgetState = [v5 buttonWidgetState];
    if ([v5 widgetControlType] == 1)
    {
      formData = [v5 formData];
      if (formData)
      {
        fieldName = [v5 fieldName];
        v10 = [formData stringValueForFieldNamed:fieldName];

        if (!v10 || [v10 length])
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      formData = 0;
    }

    v10 = 0;
LABEL_12:
    v23 = formData;
    if (v6)
    {
      [v5 setButtonWidgetState:{objc_msgSend(v6, "intValue")}];
    }

    else if (formData && v7)
    {
      fieldName2 = [v5 fieldName];
      [formData setStringValue:v7 forFieldNamed:fieldName2 postFormChangeNotification:1];
    }

    else
    {
      NSLog(&cfstr_ErrorUndefined.isa);
    }

    v24 = v7;
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    undoManager = [WeakRetained undoManager];
    if (v10)
    {
      v27[0] = @"annotation";
      v27[1] = @"formValue";
      v28[0] = v5;
      v28[1] = v10;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
      [undoManager registerUndoWithTarget:self selector:sel__doButtonHit_ object:v14];
    }

    else
    {
      v25[0] = @"annotation";
      v25[1] = @"intValue";
      v26[0] = v5;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:buttonWidgetState];
      v26[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
      [undoManager registerUndoWithTarget:self selector:sel__doButtonHit_ object:v15];
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = PDFKitLocalizedString(@"Change of %@");
    displayName = [v5 displayName];
    v19 = [v16 stringWithFormat:v17, displayName];

    undoManager2 = [WeakRetained undoManager];
    v21 = PDFKitLocalizedString(v19);
    [undoManager2 setActionName:v21];

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_annotationHit:(id)hit atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v40[2] = *MEMORY[0x1E69E9840];
  hitCopy = hit;
  if (hitCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    v9 = [hitCopy valueForAnnotationKey:@"/Subtype"];
    renderingProperties = [WeakRetained renderingProperties];
    isUsingPDFExtensionView = [renderingProperties isUsingPDFExtensionView];

    if (([v9 isEqualToString:@"/Link"] & 1) == 0 && isUsingPDFExtensionView)
    {
      goto LABEL_37;
    }

    [(PDFViewController *)self _postAnnotationWillHitNotification:hitCopy];
    if ([v9 isEqualToString:@"/Link"])
    {
      action = [hitCopy action];
      if (action)
      {
        action2 = [(PDFViewController *)self _pageViewForAnnotation:hitCopy];
        pageLayer = [action2 pageLayer];
        if (isUsingPDFExtensionView)
        {
          v15 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:hitCopy withLayer:pageLayer forType:1];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v23 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:hitCopy withLayer:pageLayer forType:0];
        }

        objc_initWeak(&location, WeakRetained);
        v24 = dispatch_time(0, 400000000);
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __47__PDFViewController__annotationHit_atLocation___block_invoke;
        v35 = &unk_1E81510E8;
        objc_copyWeak(&v37, &location);
        v36 = action;
        dispatch_after(v24, MEMORY[0x1E69E96A0], &v32);

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
        if (isUsingPDFExtensionView)
        {
LABEL_24:
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v39[0] = @"PDFAnnotationHit";
          v39[1] = @"location";
          v40[0] = hitCopy;
          v26 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{x, y}];
          v40[1] = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          [defaultCenter postNotificationName:@"PDFViewAnnotationHit" object:WeakRetained userInfo:v27];

LABEL_37:
          goto LABEL_38;
        }

        goto LABEL_34;
      }

LABEL_35:

LABEL_36:
      [(PDFViewController *)self _postAnnotationHitNotification:hitCopy, v32, v33, v34, v35];
      goto LABEL_37;
    }

    if ([v9 isEqualToString:@"/Widget"] && (objc_msgSend(hitCopy, "isReadOnly") & 1) == 0)
    {
      action = [hitCopy valueForAnnotationKey:@"/FT"];
      v28 = [action isEqualToString:@"/Btn"];
      v29 = [action isEqualToString:@"/Ch"];
      v30 = [action isEqualToString:@"/Tx"];
      v31 = [action isEqualToString:@"/Sig"];
      if ((v29 & 1) == 0 && (v30 & 1) == 0 && !v31)
      {
        if (!v28)
        {
          goto LABEL_35;
        }

        if ([hitCopy widgetControlType])
        {
          [(PDFViewController *)self _handleButtonHit:hitCopy];
          goto LABEL_35;
        }

        action2 = [hitCopy action];
        if (action2)
        {
          [WeakRetained performAction:action2];
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      if (![hitCopy isMarkupAnnotationSubtype])
      {
        if ([v9 isEqualToString:@"/Text"])
        {
          popup = [hitCopy popup];

          if (popup)
          {
            [(PDFViewController *)self _addControlForAnnotation:hitCopy];
          }
        }

        goto LABEL_36;
      }

      action = [hitCopy page];
      [WeakRetained convertPoint:action toPage:{x, y}];
      if (![hitCopy noteContainsPoint:?])
      {
        action2 = objc_loadWeakRetained(&self->_private->activeAnnotation);
        if (action2 != hitCopy)
        {
          currentSelection = [WeakRetained currentSelection];

          if (currentSelection)
          {
            indexSetForQuadPoints = [hitCopy indexSetForQuadPoints];
            currentSelection2 = [WeakRetained currentSelection];
            v19 = [currentSelection2 rangeAtIndex:0 onPage:action];
            v21 = v20;

            if (([indexSetForQuadPoints containsIndexesInRange:{v19, v21}] & 1) == 0)
            {
              [WeakRetained clearSelection];
            }
          }

          objc_storeWeak(&self->_private->activeAnnotation, hitCopy);
          [(PDFViewController *)self showMenuForMarkupAnnotation:hitCopy];
        }

        goto LABEL_34;
      }
    }

    [(PDFViewController *)self _addControlForAnnotation:hitCopy];
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

- (void)handleGesture:(id)gesture
{
  v4 = self->_private;
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&v4->activeAnnotation);
  v6 = objc_loadWeakRetained(&self->_private->view);
  v7 = [v6 typeForGestureRecognizer:gestureCopy];
  [gestureCopy locationInView:v6];
  v9 = v8;
  v11 = v10;
  state = [gestureCopy state];

  [(PDFViewController *)self handleGesture:v7 state:state location:v9, v11];
  if (WeakRetained && (state == 1 || !v7))
  {
    [(PDFViewController *)self removeControlForAnnotation:WeakRetained];
  }
}

- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v10 = [(PDFViewController *)self _annotationAtGestureLocation:x, y];
  v11 = v10;
  if (gesture == 2 && v10)
  {
    [(PDFViewController *)self _annotationHitLongPress:v10 gestureState:state location:x, y];
  }

  else if (gesture == 1)
  {
    [WeakRetained clearSelection];
    [(PDFViewController *)self _performDoubleTapAtLocation:x, y];
  }

  else if (!gesture)
  {
    [WeakRetained clearSelection];
    if (v11)
    {
      [(PDFViewController *)self _annotationHit:v11 atLocation:x, y];
    }
  }
}

- (void)_performDoubleTapAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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
  renderingProperties = [WeakRetained renderingProperties];
  isUsingPDFExtensionView = [renderingProperties isUsingPDFExtensionView];

  if (isUsingPDFExtensionView)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = @"visible";
    v9[1] = @"selectionRect";
    v10[0] = MEMORY[0x1E695E110];
    v7 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v10[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [defaultCenter postNotificationName:@"PDFTextSelectionShowTextSelectionMenu" object:self userInfo:v8];
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
  document = [WeakRetained document];
  if ([document allowsCommenting])
  {
    isAnnotationEditingEnabled = [WeakRetained isAnnotationEditingEnabled];

    if (!isAnnotationEditingEnabled)
    {
      goto LABEL_9;
    }

    v5 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    document = v5;
    if (v5)
    {
      page = [v5 page];
      [document bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      currentSelection = [WeakRetained currentSelection];
      v16 = currentSelection;
      if (currentSelection && ([currentSelection isEmpty] & 1) == 0)
      {
        [v16 boundsForPage:page];
        v8 = v17;
        v10 = v18;
        v12 = v19;
        v14 = v20;
      }

      [WeakRetained convertRect:page fromPage:{v8, v10, v12, v14}];
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
      [v26 setAnnotation:document];
      self->_private->textSelectionMenu = 2;
      [(UIEditMenuInteraction *)self->_private->editMenuInteraction presentEditMenuWithConfiguration:v26];
    }
  }

LABEL_9:
}

- (void)showMenuForMarkupAnnotation:(id)annotation
{
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  document = [WeakRetained document];
  if ([document allowsCommenting])
  {
    isAnnotationEditingEnabled = [WeakRetained isAnnotationEditingEnabled];

    if (!isAnnotationEditingEnabled)
    {
      goto LABEL_8;
    }

    document = [annotationCopy page];
    [annotationCopy bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    currentSelection = [WeakRetained currentSelection];
    v16 = currentSelection;
    if (currentSelection && ([currentSelection isEmpty] & 1) == 0)
    {
      [v16 boundsForPage:document];
      v8 = v17;
      v10 = v18;
      v12 = v19;
      v14 = v20;
    }

    [WeakRetained convertRect:document fromPage:{v8, v10, v12, v14}];
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
    [v26 setAnnotation:annotationCopy];
    self->_private->textSelectionMenu = 2;
    [(UIEditMenuInteraction *)self->_private->editMenuInteraction presentEditMenuWithConfiguration:v26];
  }

LABEL_8:
}

- (void)highlight:(id)highlight
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  activeMarkupStyle = [WeakRetained activeMarkupStyle];
  currentSelection = [WeakRetained currentSelection];
  [(PDFViewController *)self setMarkupStyle:activeMarkupStyle forSelection:currentSelection clearSelection:1];
  firstPage = [currentSelection firstPage];
  document = [WeakRetained document];
  v8 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(document, "indexForPage:", firstPage)}];

  v9 = objc_alloc(MEMORY[0x1E696AC90]);
  v10 = [currentSelection rangeAtIndex:0 onPage:firstPage];
  v12 = [v9 initWithIndexesInRange:{v10, v11}];
  v13 = [v8 markupAnnotationsForIndexSet:v12];

  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    if (firstObject)
    {
      objc_storeWeak(&self->_private->activeAnnotation, firstObject);
      [(PDFViewController *)self showMarkupStyleMenuForMarkupAnnotation];
    }
  }
}

- (id)additionalEditMenuElementsForSelection:(id)selection
{
  v45 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  allowsMarkupAnnotationEditing = [WeakRetained allowsMarkupAnnotationEditing];
  v7 = MEMORY[0x1E695E0F0];
  if (!selectionCopy || !allowsMarkupAnnotationEditing || ([selectionCopy isEmpty] & 1) != 0)
  {
    goto LABEL_20;
  }

  v32 = WeakRetained;
  val = self;
  [(PDFViewController *)self _annotationsForSelection:selectionCopy];
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

    indexSetForQuadPoints = [v12 indexSetForQuadPoints];
    page = [v12 page];
    v15 = [selectionCopy rangeAtIndex:0 onPage:page];
    v17 = v16;

    if ([indexSetForQuadPoints containsIndexesInRange:{v15, v17}])
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
  delegate = [WeakRetained delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    delegate2 = [v25 delegate];
    v29 = [delegate2 additionalEditMenuElementsForSelection:selectionCopy];
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

- (id)additionalEditMenuElementsForMarkupAnnotation:(id)annotation
{
  annotationCopy = annotation;
  array = [MEMORY[0x1E695DF70] array];
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

  [array addObject:v7];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v13 = MEMORY[0x1E69DC628];
  v14 = PDFKitLocalizedString(@"Remove");
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __67__PDFViewController_additionalEditMenuElementsForMarkupAnnotation___block_invoke_4;
  v32[3] = &unk_1E8151B90;
  v15 = annotationCopy;
  v33 = v15;
  v16 = [v13 actionWithTitle:v14 image:v12 identifier:@"com.apple.pdfkit.action.removeMarkup" handler:v32];

  [v16 setAttributes:{objc_msgSend(v16, "attributes") | 2}];
  [array addObject:v16];
  popup = [v15 popup];

  if (popup)
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
    [array addObject:v23];
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

    [array addObject:v23];
  }

  objc_destroyWeak(v22);
  v26 = [array copy];

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

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  actionsCopy = actions;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:actionsCopy];
  identifier = [configurationCopy identifier];
  v13 = configurationCopy;
  if (objc_opt_respondsToSelector())
  {
    annotation = [v13 annotation];
    if (annotation)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [identifier isEqual:@"com.apple.pdfkit.menu.markup"])
      {
        v15 = [(PDFViewController *)self additionalEditMenuElementsForMarkupAnnotation:annotation];
        if ([v15 count])
        {
          v16 = [actionsCopy indexOfObjectPassingTest:&__block_literal_global_12];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [actionsCopy count] - 1;
          }

          v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v16 + 1, objc_msgSend(v15, "count")}];
          [v11 insertObjects:v15 atIndexes:v17];
        }
      }

      else if ((objc_opt_respondsToSelector() & 1) != 0 && [identifier isEqual:@"com.apple.pdfkit.menu.markupstyle"])
      {
        v30 = identifier;
        v31 = interactionCopy;
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
          v28 = annotation;
          v33 = v28;
          v29 = [v27 actionWithTitle:&stru_1F416DF70 image:v26 identifier:0 handler:v32];
          [v11 addObject:v29];

          objc_destroyWeak(v34);
          ++v20;
        }

        while (v20 != 7);
        objc_destroyWeak(&location);
        annotation = v28;
        identifier = v30;
      }
    }
  }

  else
  {
    annotation = 0;
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
  documentView = [WeakRetained documentView];

  interactions = [documentView interactions];
  v4 = [interactions indexOfObjectPassingTest:&__block_literal_global_219];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [interactions objectAtIndex:v4];
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

- (void)setMarkupStyle:(unint64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  [WeakRetained setActiveMarkupStyle:style];
  currentSelection = [WeakRetained currentSelection];
  if (currentSelection)
  {
    [(PDFViewController *)self setMarkupStyle:style forSelection:currentSelection clearSelection:0];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    if (v6)
    {
      v7 = v6;
      [(PDFViewController *)self setMarkupStyle:style forAnnotation:v6];
    }
  }
}

- (void)deleteAnnotation
{
  v53 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  document = [WeakRetained document];
  v37 = WeakRetained;
  currentSelection = [WeakRetained currentSelection];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy = self;
  v35 = currentSelection;
  if (currentSelection)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    pages = [currentSelection pages];
    v7 = [pages countByEnumeratingWithState:&v46 objects:v52 count:16];
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
            objc_enumerationMutation(pages);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          v12 = [v35 rangeAtIndex:0 onPage:{v11, selfCopy}];
          v14 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v12, v13}];
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(document, "indexForPage:", v11)}];
          [v5 setObject:v14 forKey:v15];
        }

        v8 = [pages countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v16 = objc_loadWeakRetained(&self->_private->activeAnnotation);
    pages = v16;
    if (v16)
    {
      indexSetForQuadPoints = [v16 indexSetForQuadPoints];
      v18 = MEMORY[0x1E696AD98];
      page = [pages page];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(document, "indexForPage:", page)}];
      [v5 setObject:indexSetForQuadPoints forKey:v20];
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
        v27 = [v21 objectForKey:{v26, selfCopy}];
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

  [(PDFViewController *)selfCopy _hidePDFMarkupMenuView];
}

- (void)_annotationHitLongPress:(id)press gestureState:(int64_t)state location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v22[2] = *MEMORY[0x1E69E9840];
  pressCopy = press;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  renderingProperties = [WeakRetained renderingProperties];
  isUsingPDFExtensionView = [renderingProperties isUsingPDFExtensionView];

  if (isUsingPDFExtensionView)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = self->_private;
    if (state == 1)
    {
      v14->longPressGestureStartTime = v13;
      self->_private->didPostPDFExtensionViewAnnotationLongPress = 0;
      v15 = [(PDFViewController *)self _pageViewForAnnotation:pressCopy];
      pageLayer = [v15 pageLayer];
      v17 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:pressCopy withLayer:pageLayer forType:2];
    }

    else if (v13 - v14->longPressGestureStartTime > 0.75 && !v14->didPostPDFExtensionViewAnnotationLongPress)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v21[0] = @"annotation";
      v21[1] = @"location";
      v22[0] = pressCopy;
      v19 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{x, y}];
      v22[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [defaultCenter postNotificationName:@"PDFExtensionViewAnnotationLongPress" object:self userInfo:v20];

      self->_private->didPostPDFExtensionViewAnnotationLongPress = 1;
    }
  }
}

- (id)_annotationAtGestureLocation:(CGPoint)location
{
  v7 = 0.0;
  v8 = 0.0;
  v3 = [(PDFViewController *)self _getPagePoint:&v7 forGestureLocation:location.x, location.y];
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

- (id)_annotationsForSelection:(id)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  pages = [selectionCopy pages];
  if ([pages count] <= 1)
  {
    firstObject = [pages firstObject];
    document = [WeakRetained document];
    v10 = [WeakRetained pageViewForPageAtIndex:{objc_msgSend(document, "indexForPage:", firstObject)}];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E696AC90]);
      v12 = [selectionCopy rangeAtIndex:0 onPage:firstObject];
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

- (id)_getPagePoint:(CGPoint *)point forGestureLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v8 = [WeakRetained pageForPoint:0 nearest:{x, y}];
  v9 = v8;
  if (point && v8)
  {
    [WeakRetained convertPoint:v8 toPage:{x, y}];
    point->x = v10;
    point->y = v11;
  }

  return v9;
}

- (BOOL)_handleFormFillingEventAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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