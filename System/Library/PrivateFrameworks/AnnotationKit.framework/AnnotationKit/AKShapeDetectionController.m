@interface AKShapeDetectionController
+ (BOOL)drawingIsValidForRecognition:(id)a3 withPath:(CGPath *)a4;
- (AKAnnotation)candidateAnnotation;
- (AKController)controller;
- (AKShapeDetectionController)initWithController:(id)a3;
- (AKShapeDetectionControllerDelegate)delegate;
- (BOOL)_isResultVeryHighConfidence:(id)a3;
- (BOOL)isShowingCandidatePicker;
- (CHRecognizer)shapeRecognizer;
- (id)_createAnnotationWithRecognizerResult:(id)a3 forDrawingBoundsInInputView:(CGRect)a4 shouldGoToPageController:(id *)a5;
- (id)_createDoodleShapeResultWithPath:(CGPath *)a3 withDrawingCenter:(CGPoint)a4 pathIsPrestroked:(BOOL)a5;
- (id)_createFlippedCHDrawingFromCHDrawing:(id)a3 withDrawingCenter:(CGPoint)a4;
- (id)convertDrawingBoundsInInputView:(CGRect)a3 outBoundsInPageModel:(CGRect *)a4;
- (id)createInkResultFromInkDrawing:(id)a3 annotation:(id)a4;
- (int64_t)_toolTagForCHRecognitionResult:(id)a3;
- (void)_performRecognitionOnDrawing:(id)a3 withInkDrawing:(id)a4 orWithDoodlePath:(CGPath *)a5 boundsInInputView:(CGRect)a6 center:(CGPoint)a7 isPrestroked:(BOOL)a8 optionalAnnotation:(id)a9;
- (void)_pickCandidateResult:(id)a3;
- (void)_pickCandidateResultWithAnnotationType:(int64_t)a3;
- (void)_presentCandidatePickerBarWithCandidates:(id)a3 ofDrawing:(id)a4;
- (void)_shouldDismissNotification:(id)a3;
- (void)_showCandidatePickerWithTypes:(id)a3 forDrawingInInputView:(id)a4 shouldSurfaceDoodle:(BOOL)a5;
- (void)_teardownCandidatePicker;
- (void)_teardownCandidatePickerBar;
- (void)clearPreviousCandidateAnnotation;
- (void)dealloc;
- (void)dismissCandidatePicker;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setModelControllerToObserveForAnnotationsAndSelections:(id)a3;
@end

@implementation AKShapeDetectionController

- (AKShapeDetectionController)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKShapeDetectionController;
  v5 = [(AKShapeDetectionController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AKShapeDetectionController *)v5 setController:v4];
    [(AKShapeDetectionController *)v6 setVeryHighConfidenceLevel:0.7];
    [(AKShapeDetectionController *)v6 setIsPreviousCandidateAnnotationUndecided:0];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__shouldDismissNotification_ name:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AKShapeDetectionController;
  [(AKShapeDetectionController *)&v4 dealloc];
}

- (CHRecognizer)shapeRecognizer
{
  shapeRecognizer = self->_shapeRecognizer;
  if (!shapeRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x277CFEE50]) initWithMode:3 locale:0];
    v5 = self->_shapeRecognizer;
    self->_shapeRecognizer = v4;

    v6 = [(CHRecognizer *)self->_shapeRecognizer supportedStrings];
    v7 = [v6 mutableCopy];

    [v7 removeObject:@"Manhattan Line"];
    v8 = [(CHRecognizer *)self->_shapeRecognizer characterSetForStrings:v7];
    [(CHRecognizer *)self->_shapeRecognizer setActiveCharacterSet:v8];

    shapeRecognizer = self->_shapeRecognizer;
  }

  return shapeRecognizer;
}

- (BOOL)isShowingCandidatePicker
{
  v2 = [(AKShapeDetectionController *)self candidatePickerView];
  v3 = v2 != 0;

  return v3;
}

- (void)_shouldDismissNotification:(id)a3
{
  if ([(AKShapeDetectionController *)self isShowingCandidatePicker])
  {

    [(AKShapeDetectionController *)self dismissCandidatePicker];
  }
}

- (void)dismissCandidatePicker
{
  if ([(AKShapeDetectionController *)self isPreviousCandidateAnnotationUndecided])
  {
    v3 = [(AKShapeDetectionController *)self delegate];
    v4 = [v3 isWaitingToCoalesceStrokes];

    if ((v4 & 1) == 0)
    {
      [(AKShapeDetectionController *)self clearPreviousCandidateAnnotation];
    }
  }

  [(AKShapeDetectionController *)self _teardownCandidatePicker];
}

- (void)clearPreviousCandidateAnnotation
{
  v9 = [(AKShapeDetectionController *)self controller];
  v3 = [(AKShapeDetectionController *)self candidateAnnotation];
  v4 = [(AKShapeDetectionController *)self delegate];
  v5 = v4;
  if (v3)
  {
    [v4 beginIgnoringAnnotationSelectionObservation:self];
    v6 = [v9 modelController];
    v7 = [v6 pageModelControllerForAnnotation:v3];

    v8 = [v7 mutableArrayValueForKeyPath:@"annotations"];
    [v8 removeObjectIdenticalTo:v3];
    [v5 endIgnoringAnnotationSelectionObservation:self];
  }

  [(AKShapeDetectionController *)self setCandidateAnnotation:0];
  [(AKShapeDetectionController *)self setIsPreviousCandidateAnnotationUndecided:0];
}

- (void)_showCandidatePickerWithTypes:(id)a3 forDrawingInInputView:(id)a4 shouldSurfaceDoodle:(BOOL)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v25 = [(AKShapeDetectionController *)self controller];
  v9 = [MEMORY[0x277CBEB18] array];
  [(AKShapeDetectionController *)self setCandidateAKTags:v9];

  v10 = [MEMORY[0x277CBEB38] dictionary];
  [(AKShapeDetectionController *)self setCandidateAKTagsToAnnotationInfoMap:v10];

  v28 = v8;
  v11 = [v8 copy];
  [(AKShapeDetectionController *)self setCandidateDrawing:v11];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v27 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [(AKShapeDetectionController *)self candidateAKTags];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "tag")}];
        [v16 addObject:v17];

        [v28 bounds];
        v29 = 0;
        v18 = [(AKShapeDetectionController *)self _createAnnotationWithRecognizerResult:v15 forDrawingBoundsInInputView:&v29 shouldGoToPageController:?];
        v19 = v29;
        v20 = v19;
        if (v19)
        {
          v34[0] = @"AKShapeDetectionController.candidateAnnotation";
          v34[1] = @"AKShapeDetectionController.candidatePageController";
          v35[0] = v18;
          v35[1] = v19;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
          v22 = [(AKShapeDetectionController *)self candidateAKTagsToAnnotationInfoMap];
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "tag")}];
          [v22 setObject:v21 forKey:v23];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  if ([obj count] >= 2)
  {
    [(AKShapeDetectionController *)self _presentCandidatePickerBarWithCandidates:obj ofDrawing:v28];
    v24 = [v25 statisticsLogger];
    [v24 logShapeDetectionHUDShown];
  }
}

- (void)_teardownCandidatePicker
{
  [(AKShapeDetectionController *)self _teardownCandidatePickerBar];
  [(AKShapeDetectionController *)self setCandidateAKTags:0];
  [(AKShapeDetectionController *)self setCandidateAKTagsToAnnotationInfoMap:0];
  [(AKShapeDetectionController *)self setCandidateDrawing:0];
  [(AKShapeDetectionController *)self setCandidateAnnotation:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"AKShapeDetectionController.didDismissCandidatePicker" object:self];
}

- (int64_t)_toolTagForCHRecognitionResult:(id)a3
{
  v3 = 763000;
  v4 = [a3 string];
  v5 = [v4 lowercaseString];

  if ([v5 isEqualToString:@"arrow"])
  {
    v3 = 764005;
  }

  else if ([v5 isEqualToString:@"outline arrow"])
  {
    v3 = 764006;
  }

  else if ([v5 isEqualToString:@"line"])
  {
    v3 = 764003;
  }

  else if ([v5 isEqualToString:@"star"])
  {
    v3 = 764008;
  }

  else if ([v5 isEqualToString:@"rectangle"])
  {
    v3 = 764000;
  }

  else if ([v5 isEqualToString:@"rounded rectangle"])
  {
    v3 = 764001;
  }

  else if ([v5 isEqualToString:@"oval"])
  {
    v3 = 764002;
  }

  else if ([v5 isEqualToString:@"chat bubble"])
  {
    v3 = 764007;
  }

  else if ([v5 isEqualToString:@"pentagon"])
  {
    v3 = 764009;
  }

  else if ([v5 isEqualToString:@"triangle"])
  {
    v3 = 764010;
  }

  else if ([v5 isEqualToString:@"freeform"])
  {
    v3 = 764018;
  }

  else if ([v5 isEqualToString:@"heart"])
  {
    v3 = 764011;
  }

  else if ([v5 isEqualToString:@"cloud"])
  {
    v3 = 764013;
  }

  else
  {
    NSLog(&cfstr_CouldNotMapChr.isa, v5);
  }

  return v3;
}

- (void)setModelControllerToObserveForAnnotationsAndSelections:(id)a3
{
  v5 = a3;
  p_modelControllerToObserveForAnnotationsAndSelections = &self->_modelControllerToObserveForAnnotationsAndSelections;
  modelControllerToObserveForAnnotationsAndSelections = self->_modelControllerToObserveForAnnotationsAndSelections;
  v8 = v5;
  if (modelControllerToObserveForAnnotationsAndSelections != v5)
  {
    if (modelControllerToObserveForAnnotationsAndSelections)
    {
      [(AKPageModelController *)modelControllerToObserveForAnnotationsAndSelections removeObserver:self forKeyPath:@"annotations"];
      [(AKPageModelController *)self->_modelControllerToObserveForAnnotationsAndSelections removeObserver:self forKeyPath:@"selectedAnnotations"];
    }

    objc_storeStrong(&self->_modelControllerToObserveForAnnotationsAndSelections, a3);
    if (*p_modelControllerToObserveForAnnotationsAndSelections)
    {
      [(AKPageModelController *)*p_modelControllerToObserveForAnnotationsAndSelections addObserver:self forKeyPath:@"annotations" options:3 context:@"AKShapeDetectionController.annotationsChangeObservationContext"];
      [(AKPageModelController *)self->_modelControllerToObserveForAnnotationsAndSelections addObserver:self forKeyPath:@"selectedAnnotations" options:0 context:@"AKShapeDetectionController.selectedAnnotationsObservationContext"];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(AKShapeDetectionController *)self delegate];
  v14 = v13;
  if (a6 == @"AKShapeDetectionController.annotationsChangeObservationContext")
  {
    if (([v13 isIgnoringAnnotationAndSelectionKVO:self] & 1) == 0)
    {
      v15 = [v12 objectForKey:*MEMORY[0x277CCA300]];
      v16 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
      if ([v15 count] || objc_msgSend(v16, "count"))
      {
        [(AKShapeDetectionController *)self _teardownCandidatePicker];
      }
    }
  }

  else if (a6 == @"AKShapeDetectionController.selectedAnnotationsObservationContext")
  {
    if (([v13 isIgnoringAnnotationAndSelectionKVO:self] & 1) == 0)
    {
      v17 = [(AKShapeDetectionController *)self modelControllerToObserveForAnnotationsAndSelections];
      v18 = [v17 selectedAnnotations];
      v19 = [v18 count];

      if (v19 != 1)
      {
        [(AKShapeDetectionController *)self _teardownCandidatePicker];
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = AKShapeDetectionController;
    [(AKShapeDetectionController *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_presentCandidatePickerBarWithCandidates:(id)a3 ofDrawing:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AKShapeDetectionController *)self candidatePickerView];

  if (!v8)
  {
    v9 = [(AKShapeDetectionController *)self controller];
    v10 = [v9 modernToolbarView];
    v11 = [v10 superview];

    if (v11)
    {
      v12 = [v9 modernToolbarView];
      if (!v12)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v13 = [v9 toolbarView];
      v14 = [v13 superview];

      if (!v14)
      {
        goto LABEL_23;
      }

      v12 = [v9 toolbarView];
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    v50 = v9;
    v15 = v12;
    v16 = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v52;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v51 + 1) + 8 * i);
          [v7 bounds];
          v23 = [(AKShapeDetectionController *)self _createAnnotationWithRecognizerResult:v22 forDrawingBoundsInInputView:0 shouldGoToPageController:?];
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v19);
    }

    v24 = [v50 delegate];
    v49 = v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = [v24 popoverPresentingViewControllerForAnnotationController:v50];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = [v26 view];
    v29 = [v28 superview];

    v48 = v26;
    if (v29)
    {
      [v26 view];
    }

    else
    {
      [v15 superview];
    }
    v30 = ;
    v31 = [(AKShapeDetectionController *)self _matchingBlurEffectStyleForCurrentTintColor:v15, v30];
    v32 = [AKCandidatePickerView_iOS alloc];
    v33 = [(AKShapeDetectionController *)self candidateAKTags];
    v34 = [(AKCandidatePickerView_iOS *)v32 initWithFrame:v33 items:v16 annotations:self target:sel__pickCandidateResult_ action:v31 visualStyle:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(AKShapeDetectionController *)self setCandidatePickerView:v34];

    v35 = [(AKShapeDetectionController *)self candidatePickerView];
    [v30 addSubview:v35];

    v36 = [(AKShapeDetectionController *)self candidatePickerView];
    v37 = [v36 bottomAnchor];
    v38 = [v15 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:-16.0];
    v40 = [(AKShapeDetectionController *)self candidatePickerView];
    v41 = [v40 centerXAnchor];
    v42 = [v15 centerXAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    v44 = MEMORY[0x277CCAAD0];
    v55[0] = v43;
    v55[1] = v39;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    [v44 activateConstraints:v45];

    v46 = [(AKShapeDetectionController *)self candidatePickerView];
    [v46 setBarHidden:0 animated:1 completion:&unk_28519E590];

    v9 = v50;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)_teardownCandidatePickerBar
{
  v2 = self;
  v3 = [(AKShapeDetectionController *)v2 candidatePickerView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F419854;
  v5[3] = &unk_278C7B540;
  v6 = v2;
  v4 = v2;
  [v3 setBarHidden:1 animated:0 completion:v5];
}

- (void)_pickCandidateResult:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_S.isa, "[AKShapeDetectionController _pickCandidateResult:]", v4);
  [v4 tag];

  MEMORY[0x2821F9670](self, sel__pickCandidateResultWithAnnotationType_);
}

- (void)_pickCandidateResultWithAnnotationType:(int64_t)a3
{
  v13 = [(AKShapeDetectionController *)self controller];
  v5 = [(AKShapeDetectionController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 shapeDetectionControllerWillPickCandidate:self isInk:a3 == 764017];
  }

  [(AKShapeDetectionController *)self clearPreviousCandidateAnnotation];
  v6 = [(AKShapeDetectionController *)self candidateAKTagsToAnnotationInfoMap];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8 = [v6 objectForKey:v7];

  v9 = [v8 objectForKeyedSubscript:@"AKShapeDetectionController.candidatePageController"];
  v10 = [v8 objectForKeyedSubscript:@"AKShapeDetectionController.candidateAnnotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v10 = 0;
  }

  else if (v10)
  {
    [v5 beginIgnoringAnnotationSelectionObservation:self];
    v11 = [v13 toolController];
    [v11 addNewAnnotation:v10 onPageController:v9 shouldSelect:objc_msgSend(v5 shouldCascade:{"shapeDetectionController:shouldSelectCandidateAnnotation:", self, v10), 0}];

    [v5 endIgnoringAnnotationSelectionObservation:self];
  }

  [(AKShapeDetectionController *)self setCandidateAnnotation:v10];
  [(AKShapeDetectionController *)self setIsPreviousCandidateAnnotationUndecided:0];
  v12 = [v13 statisticsLogger];
  [v12 logShapeDetectionHUDPickedShape:v10];

  [(AKShapeDetectionController *)self dismissCandidatePicker];
}

- (void)_performRecognitionOnDrawing:(id)a3 withInkDrawing:(id)a4 orWithDoodlePath:(CGPath *)a5 boundsInInputView:(CGRect)a6 center:(CGPoint)a7 isPrestroked:(BOOL)a8 optionalAnnotation:(id)a9
{
  v10 = a8;
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v15 = a6.origin.y;
  v16 = a6.origin.x;
  v64 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a9;
  v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:0 outBoundsInPageModel:v16, v15, width, height];
  if (!v22)
  {
    goto LABEL_29;
  }

  v48 = v10;
  v23 = [(AKShapeDetectionController *)self _createFlippedCHDrawingFromCHDrawing:v19 withDrawingCenter:x, y];
  v24 = [(AKShapeDetectionController *)self shapeRecognizer];
  v57 = v23;
  v25 = [v24 recognitionResultsForDrawing:v23 options:0];
  v26 = [v25 mutableCopy];

  v27 = [v26 count];
  v28 = v27;
  if (v27)
  {
    v50 = v27;
    v51 = v22;
    v52 = self;
    v53 = v21;
    v54 = v20;
    v55 = v19;
    v29 = [v26 firstObject];
    v30 = [v29 string];
    v31 = [v30 lowercaseString];
    v32 = [v31 isEqualToString:@"freeform"];

    v58 = v32;
    if (v32)
    {
      [v26 removeObject:v29];
    }

    v49 = v29;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v33 = [v26 copy];
    v34 = [v33 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v60;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v59 + 1) + 8 * i);
          v39 = [v38 string];
          v40 = [v39 lowercaseString];
          v41 = [v40 isEqualToString:@"freeform"];

          if (v41)
          {
            [v26 removeObject:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v35);
    }

    v20 = v54;
    v19 = v55;
    self = v52;
    v21 = v53;
    v28 = v50;
    v22 = v51;
  }

  else
  {
    v58 = 1;
  }

  v42 = [MEMORY[0x277CBEB18] array];
  if (v20)
  {
    v43 = [(AKShapeDetectionController *)self createInkResultFromInkDrawing:v20 annotation:v21];
LABEL_20:
    v44 = v43;
    [v42 addObject:v43];

    goto LABEL_21;
  }

  if (a5)
  {
    v43 = [(AKShapeDetectionController *)self _createDoodleShapeResultWithPath:a5 withDrawingCenter:v48 pathIsPrestroked:x, y];
    goto LABEL_20;
  }

LABEL_21:
  if (v28)
  {
    v45 = [v26 objectAtIndex:0];
  }

  else
  {
    v45 = 0;
  }

  if ((v58 & 1) == 0)
  {
    if ([(AKShapeDetectionController *)self _isResultVeryHighConfidence:v45])
    {
      v46 = [(AKShapeDetectionController *)self _toolTagForCHRecognitionResult:v45];
      if (v46 != 763000)
      {
        v47 = [[AKShapeToCHRecognitionResult alloc] initWith:v46 result:v45];
        [v42 addObject:v47];
      }
    }
  }

  [(AKShapeDetectionController *)self _showCandidatePickerWithTypes:v42 forDrawingInInputView:v19 shouldSurfaceDoodle:v58];

LABEL_29:
}

- (BOOL)_isResultVeryHighConfidence:(id)a3
{
  [a3 score];
  v5 = __exp10(v4);
  [(AKShapeDetectionController *)self veryHighConfidenceLevel];
  return v5 > v6;
}

- (id)_createAnnotationWithRecognizerResult:(id)a3 forDrawingBoundsInInputView:(CGRect)a4 shouldGoToPageController:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = [v11 tag];
  v13 = [v11 result];
  v14 = [(AKShapeDetectionController *)self controller];
  v15 = [v11 annotation];
  if (v15)
  {
    v16 = [v11 annotation];
  }

  else
  {
    v17 = [v14 toolController];
    v16 = [v17 createAnnotationOfType:v12 centeredAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  }

  v18 = [(AKShapeDetectionController *)self delegate];
  v19 = [v18 overlayView:self];

  v253.origin.x = x;
  v253.origin.y = y;
  v253.size.width = width;
  v253.size.height = height;
  MidX = CGRectGetMidX(v253);
  v254.origin.x = x;
  v254.origin.y = y;
  v254.size.width = width;
  v254.size.height = height;
  MidY = CGRectGetMidY(v254);
  v22 = 0;
  v23 = fmax(width, 1.0);
  v24 = fmax(height, 1.0);
  if (v12 > 764007)
  {
    if (v12 <= 764010)
    {
      if (v12 != 764008)
      {
        if (v12 != 764009)
        {
          memset(&v250, 0, sizeof(v250));
          v245 = v16;
          v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&v250 outBoundsInPageModel:x, y, v23, v24];
          [v13 vertex1];
          v95 = v94;
          v97 = v96;
          [v13 vertex2];
          v99 = v98;
          v101 = v100;
          [v13 vertex3];
          v102 = MidX + v95;
          v103 = MidY + v97;
          v104 = MidX + v99;
          v105 = MidY + v101;
          v107 = MidX + v106;
          v109 = MidY + v108;
          v240 = [v22 overlayView];
          [v19 convertPoint:v240 toView:{v102, v103}];
          v111 = v110;
          v113 = v112;
          [v19 convertPoint:v240 toView:{v104, v105}];
          v115 = v114;
          v117 = v116;
          [v19 convertPoint:v240 toView:{v107, v109}];
          v119 = v118;
          v121 = v120;
          [v22 convertPointFromOverlayToModel:{v111, v113}];
          v123 = v122;
          v125 = v124;
          [v22 convertPointFromOverlayToModel:{v115, v117}];
          v127 = v126;
          v129 = v128;
          [v22 convertPointFromOverlayToModel:{v119, v121}];
          v131 = v130;
          v133 = v132;
          memset(&m, 0, sizeof(m));
          v134 = [v22 currentModelToScreenExifOrientation];
          v135 = CGRectGetMidX(v250);
          [AKGeometryHelper affineTransformForExifOrientation:v134 aboutCenter:v135, CGRectGetMidY(v250)];
          v248 = m;
          memset(&v249, 0, sizeof(v249));
          CGAffineTransformInvert(&v249, &v248);
          Mutable = CGPathCreateMutable();
          CGPathMoveToPoint(Mutable, &m, v123, v125);
          CGPathAddLineToPoint(Mutable, &m, v127, v129);
          CGPathAddLineToPoint(Mutable, &m, v131, v133);
          CGPathCloseSubpath(Mutable);
          BoundingBox = CGPathGetBoundingBox(Mutable);
          v248 = v249;
          v260 = CGRectApplyAffineTransform(BoundingBox, &v248);
          [v245 setRectangle:{v260.origin.x, v260.origin.y, fmax(v260.size.width, 1.0), fmax(v260.size.height, 1.0)}];
          v137 = [MEMORY[0x277D75208] bezierPathWithCGPath:Mutable];
          [v245 setPath:v137];

          CGPathRelease(Mutable);
          goto LABEL_44;
        }

        memset(&m, 0, 32);
        v25 = v16;
        v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:x, y, v23, v24];
        v263.size.width = m.c;
        v263.size.height = m.d;
        v226 = (m.c + m.d) * 0.5;
        v263.origin.x = m.a;
        v263.origin.y = m.b;
        v227 = CGRectGetMidX(v263) - v226 * 0.5;
        v264.origin.x = m.a;
        v264.origin.y = m.b;
        v264.size.width = m.c;
        v264.size.height = m.d;
        [v25 setRectangle:{v227, CGRectGetMidY(v264) - v226 * 0.5, v226, v226}];
        [v25 setPointCount:5];
        goto LABEL_43;
      }

      memset(&m, 0, 32);
      v25 = v16;
      v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:x, y, v23, v24];
      v265.size.width = m.c;
      v265.size.height = m.d;
      v228 = (m.c + m.d) * 0.5;
      v265.origin.x = m.a;
      v265.origin.y = m.b;
      v229 = CGRectGetMidX(v265) - v228 * 0.5;
      v266.origin.x = m.a;
      v266.origin.y = m.b;
      v266.size.width = m.c;
      v266.size.height = m.d;
      b = CGRectGetMidY(v266) - v228 * 0.5;
      v225 = v25;
      a = v229;
      c = v228;
      d = v228;
    }

    else
    {
      if (v12 > 764016)
      {
        if (v12 == 764017)
        {
          memset(&m, 0, 32);
          v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:x, y, v23, v24];
          goto LABEL_44;
        }

        if (v12 != 764018)
        {
          goto LABEL_44;
        }

        v25 = v16;
        v22 = [v11 doodlePath];

        if (v22)
        {
          [v11 doodlePathBoundsInInputView];
          v152 = *(MEMORY[0x277CBF3A0] + 16);
          *&m.a = *MEMORY[0x277CBF3A0];
          *&m.c = v152;
          v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:?];
          [v25 setRectangle:{m.a, m.b, m.c, m.d}];
          v153 = [v11 doodlePath];
          [v25 setPath:v153];

          [v25 setPathIsPrestroked:{objc_msgSend(v11, "doodlePathIsPrestroked")}];
        }

        goto LABEL_43;
      }

      if (v12 != 764011)
      {
        if (v12 != 764013)
        {
          goto LABEL_44;
        }

        memset(&v250, 0, sizeof(v250));
        v25 = v16;
        v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&v250 outBoundsInPageModel:x, y, v23, v24];
        v68 = CGRectGetMidX(v250);
        v69 = CGRectGetMidY(v250);
        memset(&m, 0, sizeof(m));
        +[AKGeometryHelper affineTransformForExifOrientation:aboutCenter:](AKGeometryHelper, "affineTransformForExifOrientation:aboutCenter:", [v22 currentModelToScreenExifOrientation], v68, v69);
        v248 = m;
        memset(&v249, 0, sizeof(v249));
        CGAffineTransformInvert(&v249, &v248);
        v248 = m;
        v255 = CGRectApplyAffineTransform(v250, &v248);
        v70 = v255.origin.x;
        v71 = v255.origin.y;
        v72 = v255.size.width;
        v73 = v255.size.height;
        MinX = CGRectGetMinX(v255);
        v256.origin.x = v70;
        v256.origin.y = v71;
        v256.size.width = v72;
        v256.size.height = v73;
        MinY = CGRectGetMinY(v256);
        v243 = vaddq_f64(*&v249.tx, vmlaq_n_f64(vmulq_n_f64(*&v249.c, MinY + (MinY - (m.ty + v69 * m.d + m.b * v68)) * 0.3), *&v249.a, MinX + (MinX - (m.tx + v69 * m.c + m.a * v68)) * -0.1));
        [v25 setRectangle:{*&v250.origin, *&v250.size}];
        [v25 setPointyBitPoint:*&v243];
        goto LABEL_43;
      }

      memset(&m, 0, 32);
      v25 = v16;
      v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:x, y, v23, v24];
      a = m.a;
      b = m.b;
      c = m.c;
      d = m.d;
      v225 = v25;
    }

    [v225 setRectangle:{a, b, c, d}];
LABEL_43:

    goto LABEL_44;
  }

  if (v12 <= 764002)
  {
    if ((v12 - 764000) >= 2)
    {
      if (v12 != 764002)
      {
        goto LABEL_44;
      }

      v25 = v16;
      [v13 center];
      v155 = v154;
      v157 = v156;
      [v13 size];
      v261.size.width = v158;
      v261.size.height = v159;
      v261.origin.x = v155 - v158 * 0.5;
      v261.origin.y = v157 - v159 * 0.5;
      v262 = CGRectStandardize(v261);
      memset(&m, 0, 32);
      v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:MidX + v262.origin.x, MidY + v262.origin.y, v262.size.width, v262.size.height];
      [v13 rotation];
      v89 = v160;
      v90 = m.a;
      v91 = m.b;
      v92 = m.c;
      v93 = m.d;
    }

    else
    {
      v25 = v16;
      [v13 lowerLeftPoint];
      v77 = v76;
      v79 = v78;
      [v13 lowerRightPoint];
      v239 = v81;
      v244 = v80;
      [v13 upperRightPoint];
      v83 = v82;
      v85 = v84;
      v86 = (v77 + v82) * 0.5;
      [v13 rotation];
      memset(&m, 0, sizeof(m));
      [AKGeometryHelper rotationTransformAroundPoint:v86 withAngle:(v79 + v85) * 0.5, v87 * 3.14159265 / -180.0];
      v257.origin.x = m.tx + v79 * m.c + m.a * v77;
      v257.origin.y = m.ty + v79 * m.d + m.b * v77;
      v257.size.width = m.tx + v239 * m.c + m.a * v244 - v257.origin.x;
      v257.size.height = m.ty + v85 * m.d + m.b * v83 - (m.ty + v239 * m.d + m.b * v244);
      v258 = CGRectStandardize(v257);
      memset(&v249, 0, 32);
      v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&v249 outBoundsInPageModel:MidX + v258.origin.x, MidY + v258.origin.y, v258.size.width, v258.size.height];
      [v13 rotation];
      v89 = v88;
      v90 = v249.a;
      v91 = v249.b;
      v92 = v249.c;
      v93 = v249.d;
    }

    sub_23F41AEDC(v25, v90, v91, v92, v93, v89);
    goto LABEL_43;
  }

  if ((v12 - 764003) < 3)
  {
    v25 = v16;
    memset(&m, 0, 32);
    v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:x, y, v23, v24];
    v26 = [v22 overlayView];
    [v13 startLocation];
    v28 = v27;
    v30 = v29;
    [v13 midpointLocation];
    v32 = v31;
    v34 = v33;
    [v13 endLocation];
    v35 = MidX + v28;
    v36 = MidY + v30;
    v37 = MidX + v32;
    v38 = MidY + v34;
    v40 = MidX + v39;
    v42 = MidY + v41;
    [v19 convertPoint:v26 toView:{v35, v36}];
    v44 = v43;
    v46 = v45;
    [v19 convertPoint:v26 toView:{v37, v38}];
    v48 = v47;
    v50 = v49;
    [v19 convertPoint:v26 toView:{v40, v42}];
    v52 = v51;
    v54 = v53;
    [v22 convertPointFromOverlayToModel:{v44, v46}];
    v56 = v55;
    v58 = v57;
    [v22 convertPointFromOverlayToModel:{v48, v50}];
    v60 = v59;
    v62 = v61;
    [v22 convertPointFromOverlayToModel:{v52, v54}];
    v64 = v63;
    v66 = v65;
    [v25 setStartPoint:{v56, v58}];
    [v25 setMidPoint:{v60, v62}];
    [v25 setEndPoint:{v64, v66}];
    [v25 setArrowHeadStyle:0];
    if ([v13 startEndpointType] == 1 && objc_msgSend(v13, "endEndpointType") == 1)
    {
      v67 = 3;
    }

    else if ([v13 startEndpointType] == 1)
    {
      v67 = 1;
    }

    else
    {
      if ([v13 endEndpointType] != 1)
      {
LABEL_35:

        goto LABEL_43;
      }

      v67 = 2;
    }

    [v25 setArrowHeadStyle:v67];
    goto LABEL_35;
  }

  if (v12 == 764006)
  {
    memset(&m, 0, 32);
    v138 = v16;
    v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:x, y, v23, v24];
    v151 = [v22 overlayView];
    [v13 size];
    v162 = v161;
    v246 = v163;
    [v13 center];
    v165 = v164;
    v167 = v166;
    [v13 controlPoint];
    v169 = v168;
    v171 = v170;
    [v13 rotation];
    v173 = __sincos_stret(v172 * 3.14159265 / -180.0 + 3.14159265);
    v174 = v165 + v173.__cosval * (v162 * 0.5);
    v175 = v167 + v173.__sinval * (v162 * 0.5);
    v176 = v165 - v173.__cosval * (v162 * 0.5);
    v177 = v167 - v173.__sinval * (v162 * 0.5);
    v178 = MidX + v165;
    v179 = MidY + v167;
    v180 = MidX + v169;
    v181 = MidY + v171;
    v182 = MidX + v174;
    v183 = MidY + v175;
    v184 = MidX + v176;
    v185 = MidY + v177;
    [v19 convertPoint:v151 toView:{v178, v179}];
    v187 = v186;
    v241 = v188;
    [v19 convertPoint:v151 toView:{v180, v181}];
    v190 = v189;
    v192 = v191;
    [v19 convertPoint:v151 toView:{v182, v183}];
    v194 = v193;
    v238 = v195;
    [v19 convertPoint:v151 toView:{v184, v185}];
    v236 = v197;
    v237 = v196;
    [v19 convertRect:v151 toView:{0.0, 0.0, v162, v246}];
    v247 = v198;
    v234 = v200;
    v235 = v199;
    v233 = v201;
    [v22 convertPointFromOverlayToModel:{v187, v241}];
    v203 = v202;
    v242 = v204;
    [v22 convertPointFromOverlayToModel:{v190, v192}];
    v206 = v205;
    v208 = v207;
    [v22 convertPointFromOverlayToModel:{v194, v238}];
    v210 = v209;
    v212 = v211;
    [v22 convertPointFromOverlayToModel:{v237, v236}];
    v214 = v213;
    v216 = v215;
    [v22 convertRectFromOverlayToModel:{v247, v235, v234, v233}];
    v218 = v217;
    v220 = v203 + v219 * 0.5 - v206;
    [v138 setStartPoint:{v210, v212}];
    [v138 setEndPoint:{v214, v216}];
    [v138 setArrowHeadLength:v220];
    [v138 setArrowHeadWidth:v218];
    [v138 setArrowLineWidth:fabs(v208 - v242 + v208 - v242)];
  }

  else
  {
    if (v12 != 764007)
    {
      goto LABEL_44;
    }

    v138 = v16;
    [v13 stemWidth];
    v140 = v139;
    [v13 size];
    v142 = v141;
    v144 = v143;
    [v13 stemLocation];
    v146 = v145;
    v148 = v147;
    [v13 center];
    memset(&m, 0, 32);
    v22 = [(AKShapeDetectionController *)self convertDrawingBoundsInInputView:&m outBoundsInPageModel:MidX + v149 - v142 * 0.5, MidY + v150 - v144 * 0.5, v142, v144];
    [v138 setRectangle:{m.a, m.b, m.c, m.d}];
    v151 = [v22 overlayView];
    [v19 convertPoint:v151 toView:{MidX + v146, MidY + v148}];
    [v22 convertPointFromOverlayToModel:?];
    [AKAnnotationPointOfInterestHelper validatePoint:10 ofDraggableArea:v138 forAnnotation:v22 onPageController:?];
    [v138 setPointyBitPoint:?];
    [v138 setPointyBitBaseWidthAngle:v140 * 180.0 / 3.14159265];
  }

LABEL_44:
  if (![v16 originalExifOrientation])
  {
    [v16 setOriginalExifOrientation:{objc_msgSend(v22, "currentModelToScreenExifOrientation")}];
  }

  [v16 originalModelBaseScaleFactor];
  if (v230 == 0.0)
  {
    [v22 modelBaseScaleFactor];
    [v16 setOriginalModelBaseScaleFactor:?];
  }

  if (a5)
  {
    v231 = v22;
    *a5 = v22;
  }

  return v16;
}

- (id)_createFlippedCHDrawingFromCHDrawing:(id)a3 withDrawingCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CFEE38]);
  if ([v6 strokeCount])
  {
    v8 = 0;
    do
    {
      if ([v6 pointCountForStrokeIndex:v8])
      {
        v9 = 0;
        do
        {
          [v6 pointForStrokeIndex:v8 pointIndex:v9];
          [v7 addPoint:{v10 - x, v11 - y}];
          ++v9;
        }

        while (v9 < [v6 pointCountForStrokeIndex:v8]);
      }

      [v7 endStroke];
      ++v8;
    }

    while (v8 < [v6 strokeCount]);
  }

  return v7;
}

- (id)_createDoodleShapeResultWithPath:(CGPath *)a3 withDrawingCenter:(CGPoint)a4 pathIsPrestroked:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = [[AKShapeToCHRecognitionResult alloc] initWith:764018 result:0];
  [AKGeometryHelper affineTransformForExifOrientation:4 aboutCenter:x, y, 0, 0, 0, 0, 0, 0];
  v10 = MEMORY[0x245CAE590](a3, &v18);
  v11 = [MEMORY[0x277D75208] bezierPathWithCGPath:v10];
  CGPathRelease(v10);
  [(AKShapeToCHRecognitionResult *)v9 setDoodlePath:v11];
  [(AKShapeToCHRecognitionResult *)v9 setDoodlePathIsPrestroked:v5];
  BoundingBox = CGPathGetBoundingBox(a3);
  v12 = BoundingBox.origin.x;
  v13 = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if (CGRectGetHeight(BoundingBox) == 0.0)
  {
    height = 1.0;
  }

  v21.origin.x = v12;
  v21.origin.y = v13;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectGetWidth(v21) == 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = width;
  }

  [(AKShapeToCHRecognitionResult *)v9 setDoodlePathBoundsInInputView:v12, v13, v16, height];

  return v9;
}

- (id)createInkResultFromInkDrawing:(id)a3 annotation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AKShapeToCHRecognitionResult alloc] initWith:764017 result:0];
  [(AKShapeToCHRecognitionResult *)v7 setInkDrawing:v6];

  [(AKShapeToCHRecognitionResult *)v7 setAnnotation:v5];

  return v7;
}

- (id)convertDrawingBoundsInInputView:(CGRect)a3 outBoundsInPageModel:(CGRect *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = [(AKShapeDetectionController *)self controller];
  v7 = [(AKShapeDetectionController *)self delegate];
  v8 = [v7 overlayView:self];

  v46 = *(MEMORY[0x277CBF3A0] + 8);
  v47 = *MEMORY[0x277CBF3A0];
  v44 = *(MEMORY[0x277CBF3A0] + 24);
  v45 = *(MEMORY[0x277CBF3A0] + 16);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = [v6 pageControllers];
  v10 = [v9 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v52;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        if ([v16 relinquishablesAreLoaded])
        {
          v50 = v14;
          v17 = [v16 overlayView];
          [v17 bounds];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          [v8 convertRect:v17 toView:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v58.origin.x = v19;
          v58.origin.y = v21;
          v58.size.width = v23;
          v58.size.height = v25;
          v62.origin.x = v27;
          v62.origin.y = v29;
          v62.size.width = v31;
          v62.size.height = v33;
          if (CGRectIntersectsRect(v58, v62))
          {
            v59.origin.x = v19;
            v59.origin.y = v21;
            v59.size.width = v23;
            v59.size.height = v25;
            v63.origin.x = v27;
            v63.origin.y = v29;
            v63.size.width = v31;
            v63.size.height = v33;
            v60 = CGRectIntersection(v59, v63);
            x = v60.origin.x;
            y = v60.origin.y;
            width = v60.size.width;
            height = v60.size.height;
            v48 = CGRectGetWidth(v60);
            v61.origin.x = x;
            v61.origin.y = y;
            v61.size.width = width;
            v61.size.height = height;
            v14 = v48 * CGRectGetHeight(v61);
            if (v14 <= v50)
            {
              v14 = v50;
            }

            else
            {
              [v16 convertRectFromOverlayToModel:{v27, v29, v31, v33}];
              v46 = v39;
              v47 = v38;
              v44 = v41;
              v45 = v40;
              v42 = v16;

              v12 = v42;
            }
          }

          else
          {
            v14 = v50;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    a4->origin.x = v47;
    a4->origin.y = v46;
    a4->size.width = v45;
    a4->size.height = v44;
  }

  return v12;
}

+ (BOOL)drawingIsValidForRecognition:(id)a3 withPath:(CGPath *)a4
{
  v5 = a3;
  v6 = a4 && !CGPathIsEmpty(a4) && (!v5 || [v5 strokeCount]);

  return v6;
}

- (AKShapeDetectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (AKAnnotation)candidateAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_candidateAnnotation);

  return WeakRetained;
}

@end