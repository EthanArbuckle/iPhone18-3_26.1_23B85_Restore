@interface AKController
+ (AKController)controllerWithDelegate:(id)a3;
+ (BOOL)_isInLowMemoryEnvironment;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (BOOL)canConnectToStylus;
+ (BOOL)hasPressureCapableHardware;
+ (id)akBundle;
+ (void)performBlockOnMainThread:(id)a3;
+ (void)renderAnnotation:(id)a3 inContext:(CGContext *)a4;
- (AKController)initWithDelegate:(id)a3;
- (AKControllerDelegateProtocol)delegate;
- (AKControllerOverlayInteractionProtocol)overlayInteractionDelegate;
- (AKPageController)lastCreationCascadingPageController;
- (AKToolbarView)modernToolbarView;
- (BOOL)_validateCutCopyDelete;
- (BOOL)canBeginEditingTextAnnotation:(id)a3;
- (BOOL)canPerformKeyCommandAction:(SEL)a3 withSender:(id)a4 handled:(BOOL *)a5;
- (BOOL)handleEvent:(id)a3;
- (BOOL)hasSelectionWithEditableFillColor;
- (BOOL)hasSelectionWithEditableStrokeColor;
- (BOOL)hasSelectionWithEditableTextColor;
- (BOOL)isOverlayViewLoadedAtIndex:(unint64_t)a3;
- (BOOL)isPresentingPopover;
- (BOOL)shouldDrawVariableStrokeDoodles;
- (BOOL)supportForPencilAlwaysDrawsSatisfied;
- (BOOL)supportsFormFill;
- (BOOL)supportsImageDescriptionEditing;
- (BOOL)validateDelete:(id)a3;
- (BOOL)validateDuplicate:(id)a3;
- (BOOL)validateEditTextAnnotation:(id)a3;
- (BOOL)validatePaste:(id)a3;
- (BOOL)validateRedo:(id)a3;
- (BOOL)validateSelectAll:(id)a3;
- (BOOL)validateSender:(id)a3;
- (BOOL)validateUndo:(id)a3;
- (CGRect)_popoverAnchorFrameInModelForAnnotations:(id)a3;
- (CGRect)contentAlignedRectForRect:(CGRect)a3 onPageAtIndex:(unint64_t)a4;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (PKToolPicker)toolPicker;
- (double)currentModelBaseScaleFactorForPageAtIndex:(unint64_t)a3;
- (double)maxHDRGain;
- (id)_toolpicker_color;
- (id)_toolpicker_inkIdentifier;
- (id)currentPageController;
- (id)doubleTapGestureRecognizer;
- (id)initForTesting;
- (id)keyCommandsForAnnotations;
- (id)originalOrModifiedImageDescription;
- (id)overlayViewAtIndex:(unint64_t)a3;
- (id)pageControllerForAnnotation:(id)a3;
- (id)pageControllerForPageModelController:(id)a3;
- (id)panGestureRecognizer;
- (id)pressGestureRecognizer;
- (id)rotationGestureRecognizer;
- (id)singleSelectedAnnotation;
- (id)tapGestureRecognizer;
- (id)toolbarButtonItemOfType:(unint64_t)a3;
- (int64_t)currentExifOrientationForPageAtIndex:(unint64_t)a3;
- (unint64_t)toolMode;
- (void)_didScrollPDFPage:(id)a3;
- (void)_pageModelControllerSelectedAnnotationsChangedNotification:(id)a3;
- (void)_setupPageModelController:(id)a3;
- (void)_toolpicker_setColor:(id)a3;
- (void)_toolpicker_setInkIdentifier:(id)a3;
- (void)_updateGestureDependencyPriority;
- (void)addPopupToAnnotation:(id)a3 openPopup:(BOOL)a4;
- (void)applyCurrentCrop;
- (void)beginLogging:(id)a3 documentType:(id)a4;
- (void)clearUndoStack;
- (void)commitEditing;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)delayedUndoControllerSetup;
- (void)delete:(id)a3;
- (void)didBeginEditingAnnotation:(id)a3;
- (void)duplicate:(id)a3;
- (void)editTextAnnotation:(id)a3;
- (void)editTextAnnotation:(id)a3 selectAllText:(BOOL)a4;
- (void)enclosingScrollViewDidScroll:(id)a3;
- (void)endEditingTextAnnotation;
- (void)endLogging;
- (void)hideSelectionMenu:(id)a3;
- (void)highlightableSelectionChanged;
- (void)highlightableSelectionDidEndChanging;
- (void)highlightableSelectionWillBeginChanging;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)paste:(id)a3;
- (void)performActionForSender:(id)a3;
- (void)prepareOverlayAtIndex:(unint64_t)a3;
- (void)redo:(id)a3;
- (void)redraw;
- (void)relinquishOverlayAtIndex:(unint64_t)a3;
- (void)removeNoteFromAnnotation:(id)a3;
- (void)renderAnnotation:(id)a3 inContext:(CGContext *)a4;
- (void)resetToDefaultToolMode;
- (void)selectAll:(id)a3;
- (void)setAnnotationEditingEnabled:(BOOL)a3;
- (void)setAvailableHeadroom:(double)a3;
- (void)setFormFillingEnabled:(BOOL)a3;
- (void)setHideAllAdornments:(BOOL)a3;
- (void)setMaxHDRGain:(double)a3;
- (void)setModifiedImageDescription:(id)a3;
- (void)setOverlayShouldPixelate:(BOOL)a3;
- (void)setRulerHostingDelegate:(id)a3;
- (void)setSelectNewlyCreatedAnnotations:(BOOL)a3;
- (void)setToolMode:(unint64_t)a3;
- (void)showSelectionMenu:(id)a3;
- (void)strokeAddedNotification:(id)a3;
- (void)teardown;
- (void)toolPickerVisibilityDidChange:(id)a3;
- (void)undo:(id)a3;
- (void)updateOverlayViewAtIndex:(unint64_t)a3;
@end

@implementation AKController

+ (AKController)controllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[AKController alloc] initWithDelegate:v3];

  return v4;
}

+ (id)akBundle
{
  v2 = [a1 akBundleIdentifier];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v2];

  return v3;
}

+ (BOOL)canConnectToStylus
{
  if (qword_27E39B630 != -1)
  {
    sub_23F4BD04C();
  }

  return byte_27E39B628;
}

+ (BOOL)hasPressureCapableHardware
{
  if (qword_27E39B640 != -1)
  {
    sub_23F4BD060();
  }

  return byte_27E39B638;
}

+ (BOOL)_isInLowMemoryEnvironment
{
  if (qword_27E39B650 != -1)
  {
    sub_23F4BD074();
  }

  return byte_27E39B648;
}

- (AKController)initWithDelegate:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = AKController;
  v5 = [(AKController *)&v34 init];
  v6 = v5;
  if (v5)
  {
    [(AKController *)v5 setIsTestingInstance:0];
    [(AKController *)v6 setDelegate:v4];
    v7 = objc_opt_new();
    [(AKController *)v6 setStatisticsLogger:v7];

    v8 = +[AKSparseMutableControllerArray array];
    [(AKController *)v6 setPageControllers:v8];

    *&v6->_selectNewlyCreatedAnnotations = 1;
    v9 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:512];
    [(AKController *)v6 setPageModelControllersToPageControllers:v9];

    [(AKController *)v6 setCurrentPageIndex:0x7FFFFFFFFFFFFFFFLL];
    [(AKController *)v6 setAllEditingDisabled:0];
    [(AKController *)v6 setAnnotationEditingEnabled:0];
    [(AKController *)v6 setFormFillingEnabled:0];
    [(AKController *)v6 setPencilAlwaysDraws:0];
    v10 = objc_alloc_init(AKModelController);
    [(AKController *)v6 setModelController:v10];

    v11 = [[AKUndoController alloc] initWithController:v6];
    [(AKController *)v6 setUndoController:v11];

    v12 = [[AKSidecarController alloc] initWithController:v6];
    [(AKController *)v6 setSidecarController:v12];

    v13 = [[AKLegacyDoodleController alloc] initWithController:v6];
    [(AKController *)v6 setLegacyDoodleController:v13];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v6 selector:sel_enclosingScrollViewDidScroll_ name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

    v15 = [[AKToolController alloc] initWithController:v6];
    [(AKController *)v6 setToolController:v15];

    v16 = [[AKAttributeController alloc] initWithController:v6];
    [(AKController *)v6 setAttributeController:v16];

    v17 = [[AKActionController alloc] initWithController:v6];
    [(AKController *)v6 setActionController:v17];

    v18 = [objc_alloc(objc_opt_class()) initWithController:v6];
    [(AKController *)v6 setToolbarViewController:v18];

    v19 = [(AKController *)v6 toolbarViewController];
    v20 = [v19 view];
    [(AKController *)v6 setToolbarView:v20];

    v21 = [AKMainEventHandler newMainEventHandlerForCurrentPlatformWithController:v6];
    [(AKController *)v6 setMainEventHandler:v21];

    v22 = [[AKTextEditorController alloc] initWithController:v6];
    [(AKController *)v6 setTextEditorController:v22];

    v23 = [[AKSignatureModelController alloc] initWithController:v6];
    [(AKController *)v6 setSignatureModelController:v23];

    v24 = [[AKFormFeatureDetectorController alloc] initWithController:v6];
    [(AKController *)v6 setFormDetectionController:v24];

    v25 = [[AKHighlightAnnotationController alloc] initWithController:v6];
    [(AKController *)v6 setHighlightAnnotationController:v25];

    if (+[AKController canConnectToStylus])
    {
      v26 = objc_alloc_init(AKPeripheralAvailabilityManager_iOS);
      [(AKController *)v6 setPeripheralAvailabilityManager:v26];

      v27 = [(AKController *)v6 peripheralAvailabilityManager];
      [v27 startMonitoringForPeripheralConnection];
    }

    v28 = [[AKSignaturesController alloc] initWithController:v6];
    [(AKController *)v6 setSignaturesController:v28];

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v6 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

    v30 = [(AKController *)v6 modelController];
    [v30 addObserver:v6 forKeyPath:@"pageModelControllers" options:3 context:@"AKController.modelObservationContext"];

    [(AKController *)v6 addObserver:v6 forKeyPath:@"currentPageIndex" options:3 context:@"AKController.pageIndexObservationContext"];
    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v6 selector:sel__pageModelControllerSelectedAnnotationsChangedNotification_ name:off_27E39A380[0] object:0];

    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v6 selector:sel__didScrollPDFPage_ name:@"PDFScrollViewPageMayHaveChangedNotification" object:0];
  }

  return v6;
}

- (id)initForTesting
{
  v5.receiver = self;
  v5.super_class = AKController;
  v2 = [(AKController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AKController *)v2 setIsTestingInstance:1];
  }

  return v3;
}

- (void)teardown
{
  v2 = self;
  v44 = *MEMORY[0x277D85DE8];
  [(AKController *)self setIsTornDown:1];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"AKControllerWillTeardownNotification" object:v2];

  if (![(AKController *)v2 isTestingInstance])
  {
    v4 = [(AKController *)v2 undoController];
    v5 = [v4 undoManager];

    v30 = [v5 isUndoRegistrationEnabled];
    if (v30)
    {
      [v5 disableUndoRegistration];
    }

    v31 = v5;
    [(AKController *)v2 resetToDefaultToolMode];
    v6 = [(AKController *)v2 mainEventHandler];
    [v6 teardown];

    v7 = [(AKController *)v2 toolbarViewController];
    [v7 teardown];

    v8 = [(AKController *)v2 peripheralAvailabilityManager];
    [v8 teardown];

    v9 = [(AKController *)v2 attributeController];
    [v9 setModelControllerToObserveForSelections:0];

    v10 = [(AKController *)v2 legacyDoodleController];
    v11 = [v10 shapeDetectionController];
    [v11 setModelControllerToObserveForAnnotationsAndSelections:0];

    v12 = [(AKController *)v2 modelController];
    [v12 removeObserver:v2 forKeyPath:@"pageModelControllers" context:@"AKController.modelObservationContext"];

    [(AKController *)v2 removeObserver:v2 forKeyPath:@"currentPageIndex" context:@"AKController.pageIndexObservationContext"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = [(AKController *)v2 modelController];
    v14 = [v13 pageModelControllers];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          v18 = v2;
          if (*v39 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v20 = [v19 annotations];
          v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v35;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v35 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v34 + 1) + 8 * j);
                if ([v25 shouldObserveEdits])
                {
                  [v25 setShouldObserveEdits:0];
                }

                if ([v25 shouldUseAppearanceOverride])
                {
                  [v25 setShouldUseAppearanceOverride:0];
                }

                v26 = [v25 appearanceOverride];

                if (v26)
                {
                  [v25 setAppearanceOverride:0];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v22);
          }

          v2 = v18;
          v27 = [(AKController *)v18 sidecarController];
          [v27 stopObservingPageModelController:v19];

          v28 = [(AKController *)v18 undoController];
          [v28 stopObservingPageModelController:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    [(AKController *)v2 setDelegate:0];
    [(AKController *)v2 setSignatureModelController:0];
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 removeObserver:v2];

    [(AKController *)v2 setLegacyDoodleController:0];
    [(AKController *)v2 setTextEditorController:0];
    [(AKController *)v2 setMainEventHandler:0];
    [(AKController *)v2 setToolbarView:0];
    [(AKController *)v2 setToolbarViewController:0];
    [(AKController *)v2 setActionController:0];
    [(AKController *)v2 setAttributeController:0];
    [(AKController *)v2 setToolController:0];
    [(AKController *)v2 setUndoController:0];
    [(AKController *)v2 setModelController:0];
    [(AKController *)v2 setPeripheralAvailabilityManager:0];
    if (v30)
    {
      if (([v31 isUndoRegistrationEnabled] & 1) == 0)
      {
        [v31 enableUndoRegistration];
      }
    }
  }
}

- (void)dealloc
{
  AKLog(@"%s (If you do not see this in a debug build, we've got a world leak to fix.)");
  v3.receiver = self;
  v3.super_class = AKController;
  [(AKController *)&v3 dealloc];
}

- (void)_didScrollPDFPage:(id)a3
{
  v4 = [(AKController *)self modernToolbarView];
  [v4 updateCurrentOverlaysToolPickerVisibility:self->_toolPickerVisibleBeforeTextEditing];
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  if (!self->_isEditingAnnotation)
  {
    self->_toolPickerVisibleBeforeTextEditing = [a3 isVisible];
  }
}

- (void)setMaxHDRGain:(double)a3
{
  v4 = [(AKController *)self toolbarViewController];
  [v4 setMaxHDRGain:a3];
}

- (double)maxHDRGain
{
  v2 = [(AKController *)self toolbarViewController];
  [v2 maxHDRGain];
  v4 = v3;

  return v4;
}

- (void)didBeginEditingAnnotation:(id)a3
{
  self->_isEditingAnnotation = 1;
  v4 = [(AKController *)self modernToolbarView];
  self->_toolPickerVisibleBeforeTextEditing = [v4 isToolPickerVisible];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v120 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 != @"AKController.pageIndexObservationContext")
  {
    if (a6 != @"AKController.modelObservationContext")
    {
      v104.receiver = self;
      v104.super_class = AKController;
      [(AKController *)&v104 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_76;
    }

    v17 = [v12 objectForKey:*MEMORY[0x277CCA2E8]];
    v99 = [v13 objectForKey:*MEMORY[0x277CCA2E0]];
    v18 = [v13 objectForKey:*MEMORY[0x277CCA300]];
    v96 = v13;
    v19 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    v97 = v10;
    v98 = v17;
    v102 = v19;
    v103 = v18;
    if (v18)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v113 objects:v119 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v114;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v114 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v113 + 1) + 8 * i);
            v26 = [(AKController *)self undoController];
            [v26 stopObservingPageModelController:v25];

            v27 = [(AKController *)self sidecarController];
            [v27 stopObservingPageModelController:v25];

            v28 = [(AKController *)self pageModelControllersToPageControllers];
            v29 = [v28 objectForKey:v25];

            v30 = [(AKController *)self undoController];
            v31 = [v30 undoManager];
            [v29 unregisterFromUndoManager:v31];

            [v29 teardown];
            v32 = [(AKController *)self pageModelControllersToPageControllers];
            [v32 removeObjectForKey:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v113 objects:v119 count:16];
        }

        while (v22);
      }

      v17 = v98;
      v19 = v102;
      v18 = v103;
    }

    if (v19)
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v33 = v19;
      v34 = [v33 countByEnumeratingWithState:&v109 objects:v118 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v110;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v110 != v36)
            {
              objc_enumerationMutation(v33);
            }

            [(AKController *)self _setupPageModelController:*(*(&v109 + 1) + 8 * j)];
          }

          v35 = [v33 countByEnumeratingWithState:&v109 objects:v118 count:16];
        }

        while (v35);
      }
    }

    if ([v17 unsignedIntegerValue] == 4 && objc_msgSend(v99, "count"))
    {
      v38 = 0;
      do
      {
        if (v38 < [v18 count] && v38 < objc_msgSend(v19, "count"))
        {
          v39 = [v18 objectAtIndexedSubscript:v38];
          v40 = [v19 objectAtIndexedSubscript:v38];
          v41 = [(AKController *)self attributeController];
          v42 = [v41 modelControllerToObserveForSelections];

          if (v39 == v42)
          {
            v43 = [(AKController *)self attributeController];
            [v43 setModelControllerToObserveForSelections:v40];
          }

          v44 = [(AKController *)self legacyDoodleController];
          v45 = [v44 shapeDetectionController];
          v46 = [v45 modelControllerToObserveForAnnotationsAndSelections];

          if (v39 == v46)
          {
            v47 = [(AKController *)self legacyDoodleController];
            v48 = [v47 shapeDetectionController];
            [v48 setModelControllerToObserveForAnnotationsAndSelections:v40];
          }

          v19 = v102;
          v18 = v103;
        }

        ++v38;
      }

      while (v38 < [v99 count]);
    }

    v49 = [(AKController *)self pageControllers];
    [v49 removeAllObjects];

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v50 = [(AKController *)self modelController];
    v51 = [v50 pageModelControllers];

    v52 = [v51 countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v52)
    {
      v53 = v52;
      v100 = v11;
      v54 = 0;
      v55 = *v106;
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v57 = v51;
        for (k = 0; k != v53; ++k)
        {
          if (*v106 != v55)
          {
            objc_enumerationMutation(v57);
          }

          v59 = *(*(&v105 + 1) + 8 * k);
          v60 = [MEMORY[0x277CBEB68] null];
          v61 = [v59 isEqual:v60];

          if ((v61 & 1) == 0)
          {
            v62 = [(AKController *)self pageModelControllersToPageControllers];
            v63 = [v62 objectForKey:v59];

            if (v63)
            {
              v64 = [(AKController *)self pageControllers];
              [v64 replaceObjectAtIndex:v54 withObject:v63];

              [v63 setPageIndex:v54];
              if (v54 <= v56)
              {
                v65 = v56;
              }

              else
              {
                v65 = v54;
              }

              if (v56 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v56 = v54;
              }

              else
              {
                v56 = v65;
              }
            }
          }

          ++v54;
        }

        v51 = v57;
        v53 = [v57 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v53);

      v66 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = v100;
      v19 = v102;
      v13 = v96;
      v17 = v98;
      v18 = v103;
      if (v56 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(AKController *)self currentPageIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v66 = v56;
        }

        else
        {
          v66 = v56;
          if ([(AKController *)self currentPageIndex]< v56)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else
    {

      v66 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = v96;
    }

    [(AKController *)self setCurrentPageIndex:v66];
LABEL_65:
    if ([(AKController *)self currentPageIndex]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v73 = [(AKController *)self modelController];
      v74 = [v73 pageModelControllers];
      v75 = [v74 objectAtIndex:{-[AKController currentPageIndex](self, "currentPageIndex")}];

      v76 = [(AKController *)self attributeController];
      [v76 setModelControllerToObserveForSelections:v75];

      v77 = [(AKController *)self legacyDoodleController];
      v78 = [v77 shapeDetectionController];
      [v78 setModelControllerToObserveForAnnotationsAndSelections:v75];
    }

    v10 = v97;
    goto LABEL_76;
  }

  v14 = [v12 objectForKey:*MEMORY[0x277CCA300]];
  v15 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
  if (v14)
  {
    v16 = [v14 unsignedIntegerValue];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v101 = v11;
  if (v15)
  {
    v67 = [v15 unsignedIntegerValue];
  }

  else
  {
    v67 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v16 != v67)
  {
    if ([(AKController *)self toolMode]== 6)
    {
      v68 = v13;
      v69 = [(AKController *)self modelController];
      v70 = [v69 pageModelControllerForPage:v16];

      v71 = [v70 cropAnnotation];
      v72 = v71;
      if (v71 && [v71 cropApplied])
      {
        [v72 setShowHandles:0];
      }

      else
      {
        [v70 removeCropToolAnnotation];
      }

      [(AKController *)self resetToDefaultToolMode];

      v13 = v68;
    }

    [(AKController *)self setPasteCascadingMultiplier:0];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v79 = [(AKController *)self pageControllers];
      v80 = v13;
      v81 = [v79 count];

      v82 = v16 >= v81;
      v13 = v80;
      if (!v82)
      {
        v83 = [(AKController *)self pageControllers];
        v84 = [v83 objectAtIndex:v16];

        v85 = [v84 pageModelController];
        v86 = [v85 mutableSetValueForKey:@"selectedAnnotations"];
        v87 = [MEMORY[0x277CBEB98] set];
        [v86 setSet:v87];

        v13 = v80;
      }
    }

    if (v67 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v88 = [(AKController *)self pageControllers];
      v89 = [v88 objectAtIndex:v67];

      v90 = [v89 pageModelController];
      v91 = [(AKController *)self attributeController];
      [v91 setModelControllerToObserveForSelections:v90];

      v92 = [(AKController *)self legacyDoodleController];
      [v92 shapeDetectionController];
      v94 = v93 = v13;
      [v94 setModelControllerToObserveForAnnotationsAndSelections:v90];

      v13 = v93;
      v95 = [(AKController *)self modernToolbarView];
      [v95 updateCurrentOverlaysToolPickerVisibility];
    }
  }

  v11 = v101;
LABEL_76:
}

- (void)_setupPageModelController:(id)a3
{
  v9 = a3;
  v4 = [v9 representedObject];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = [AKPageController pageControllerWithController:self andPageModelController:v9];
    [v5 setShouldPixelate:{-[AKController overlayShouldPixelate](self, "overlayShouldPixelate")}];
    v6 = [(AKController *)self pageModelControllersToPageControllers];
    [v6 setObject:v5 forKey:v9];

    v7 = [(AKController *)self undoController];
    [v7 startObservingPageModelController:v9];

    v8 = [(AKController *)self sidecarController];
    [v8 startObservingPageModelController:v9];
  }
}

- (void)enclosingScrollViewDidScroll:(id)a3
{
  v4 = [(AKController *)self legacyDoodleController];
  v5 = [v4 shapeDetectionController];
  v6 = [v5 isShowingCandidatePicker];

  if (v6)
  {
    v8 = [(AKController *)self legacyDoodleController];
    v7 = [v8 shapeDetectionController];
    [v7 dismissCandidatePicker];
  }
}

- (BOOL)validateSender:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 action];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 actionsForTarget:0 forControlEvent:251658240];
    v8 = [v7 firstObject];
    v5 = NSSelectorFromString(v8);
    if ([v7 count] >= 2)
    {
      NSLog(&cfstr_WarningMultipl.isa, v6);
    }

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 methodSignatureForSelector:sel_action];
    if (!v6)
    {
      v5 = 0;
      goto LABEL_12;
    }

    v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
    [v7 setSelector:sel_action];
    [v7 setTarget:v4];
    v13 = 0;
    [v7 invoke];
    [v7 getReturnValue:&v13];
    v5 = v13;
LABEL_11:

LABEL_12:
    goto LABEL_14;
  }

  v5 = 0;
LABEL_14:
  if (v5 == sel_undo_)
  {
    v11 = [(AKController *)self validateUndo:v4];
LABEL_34:
    v10 = v11;
    goto LABEL_35;
  }

  if (v5 == sel_redo_)
  {
    v11 = [(AKController *)self validateRedo:v4];
    goto LABEL_34;
  }

  if (v5 == sel_cut_)
  {
    v11 = [(AKController *)self validateCut:v4];
    goto LABEL_34;
  }

  if (v5 == sel_copy_)
  {
    v11 = [(AKController *)self validateCopy:v4];
    goto LABEL_34;
  }

  if (v5 == sel_paste_)
  {
    v11 = [(AKController *)self validatePaste:v4];
    goto LABEL_34;
  }

  if (v5 == sel_delete_)
  {
    v11 = [(AKController *)self validateDelete:v4];
    goto LABEL_34;
  }

  if (v5 == sel_duplicate_)
  {
    v11 = [(AKController *)self validateDuplicate:v4];
    goto LABEL_34;
  }

  if (v5 == sel_selectAll_)
  {
    v11 = [(AKController *)self validateSelectAll:v4];
    goto LABEL_34;
  }

  if (v5 == sel_showAttributeInspector_)
  {
    v11 = [(AKController *)self validateShowAttributeInspector:v4];
    goto LABEL_34;
  }

LABEL_23:
  v9 = [(AKController *)self actionController];
  v10 = [v9 validateSender:v4];

LABEL_35:
  return v10;
}

- (void)performActionForSender:(id)a3
{
  v9 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v9 action];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v9;
      v6 = [v5 actionsForTarget:0 forControlEvent:251658240];
      v7 = [v6 firstObject];
      v4 = NSSelectorFromString(v7);
      if ([v6 count] >= 2)
      {
        NSLog(&cfstr_WarningMultipl.isa, v5);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4 == sel_undo_)
  {
    [(AKController *)self undo:v9];
  }

  else if (v4 == sel_redo_)
  {
    [(AKController *)self redo:v9];
  }

  else if (v4 == sel_cut_)
  {
    [(AKController *)self cut:v9];
  }

  else if (v4 == sel_copy_)
  {
    [(AKController *)self copy:v9];
  }

  else if (v4 == sel_paste_)
  {
    [(AKController *)self paste:v9];
  }

  else if (v4 == sel_delete_)
  {
    [(AKController *)self delete:v9];
  }

  else if (v4 == sel_duplicate_)
  {
    [(AKController *)self duplicate:v9];
  }

  else if (v4 == sel_selectAll_)
  {
    [(AKController *)self selectAll:v9];
  }

  else
  {
    if (v4 != sel_showAttributeInspector_)
    {
LABEL_18:
      v8 = [(AKController *)self actionController];
      [v8 performActionForSender:v9];

      goto LABEL_28;
    }

    [(AKController *)self showAttributeInspector:v9];
  }

LABEL_28:
}

- (id)overlayViewAtIndex:(unint64_t)a3
{
  v4 = [(AKController *)self pageControllers];
  v5 = [v4 objectAtIndex:a3];

  v6 = [v5 overlayView];

  return v6;
}

- (BOOL)isOverlayViewLoadedAtIndex:(unint64_t)a3
{
  v4 = [(AKController *)self pageControllers];
  v5 = [v4 objectAtIndex:a3];

  if (v5)
  {
    v6 = [v5 relinquishablesAreLoaded];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setRulerHostingDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_rulerHostingDelegate, v4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AKController *)self pageControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) inkPageOverlayController];
        [v10 setRulerHostingDelegate:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareOverlayAtIndex:(unint64_t)a3
{
  v5 = [(AKController *)self pageControllers];
  v8 = [v5 objectAtIndex:a3];

  [v8 setupRelinquishables];
  v6 = [(AKController *)self rulerHostingDelegate];
  if (v6)
  {
    v7 = [v8 inkPageOverlayController];
    [v7 setRulerHostingDelegate:v6];
  }
}

- (void)relinquishOverlayAtIndex:(unint64_t)a3
{
  v4 = [(AKController *)self pageControllers];
  v5 = [v4 objectAtIndex:a3];

  [v5 releaseRelinquishables];
}

- (void)updateOverlayViewAtIndex:(unint64_t)a3
{
  v4 = [(AKController *)self pageControllers];
  v6 = [v4 objectAtIndex:a3];

  if ([v6 relinquishablesAreLoaded])
  {
    v5 = [v6 overlayView];
    [v5 updateLayers];
  }
}

- (void)renderAnnotation:(id)a3 inContext:(CGContext *)a4
{
  v5 = a3;
  v6 = [AKAnnotationRenderer _optionsForContext:a4 forDisplay:0];
  [AKAnnotationRenderer renderAnnotation:v5 intoContext:a4 options:v6 pageControllerOrNil:0];
}

+ (void)renderAnnotation:(id)a3 inContext:(CGContext *)a4
{
  v5 = a3;
  v6 = [AKAnnotationRenderer _optionsForContext:a4 forDisplay:0];
  [AKAnnotationRenderer renderAnnotation:v5 intoContext:a4 options:v6 pageControllerOrNil:0];
}

- (void)redraw
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [(AKController *)self pageControllers];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 layerPresentationManager];
        v9 = [v8 rootLayer];
        v10 = [v9 sublayers];

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14++) setNeedsDisplay];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }
}

- (void)setOverlayShouldPixelate:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->overlayShouldPixelate != a3)
  {
    v3 = a3;
    self->overlayShouldPixelate = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(AKController *)self pageControllers];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 setShouldPixelate:v3];
          if ([v9 relinquishablesAreLoaded])
          {
            v10 = [v9 layerPresentationManager];
            [v10 setShouldPixelate:v3];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)editTextAnnotation:(id)a3 selectAllText:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(AKController *)self pageControllerForAnnotation:v6];
  v7 = [(AKController *)self textEditorController];
  [v7 beginEditingAnnotation:v6 withPageController:v8 selectAllText:v4];
}

- (void)endEditingTextAnnotation
{
  v3 = [(AKController *)self textEditorController];
  v4 = [v3 isEditing];

  if (v4)
  {
    v5 = [(AKController *)self textEditorController];
    [v5 endEditing];
  }
}

- (void)commitEditing
{
  v3 = [(AKController *)self textEditorController];
  [v3 commitToModelWithoutEndingEditing];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:AKControllerWillSaveNotification object:self];
}

- (int64_t)currentExifOrientationForPageAtIndex:(unint64_t)a3
{
  v4 = [(AKController *)self pageControllers];
  v5 = [v4 objectAtIndex:a3];

  v6 = [v5 currentModelToScreenExifOrientation];
  return v6;
}

- (double)currentModelBaseScaleFactorForPageAtIndex:(unint64_t)a3
{
  v4 = [(AKController *)self pageControllers];
  v5 = [v4 objectAtIndex:a3];

  [v5 modelBaseScaleFactor];
  v7 = v6;

  return v7;
}

- (CGRect)contentAlignedRectForRect:(CGRect)a3 onPageAtIndex:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(AKController *)self pageControllers];
  v10 = [v9 objectAtIndex:a4];

  v11 = [v10 geometryHelper];
  [v11 contentAlignedRectForRect:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(AKController *)self mainEventHandler];
  v6 = [v5 mainHandleEvent:v4 orRecognizer:0];

  return v6;
}

- (id)tapGestureRecognizer
{
  v2 = [(AKController *)self mainEventHandler];
  v3 = [v2 tapRecognizer];

  return v3;
}

- (id)doubleTapGestureRecognizer
{
  v2 = [(AKController *)self mainEventHandler];
  v3 = [v2 doubleTapRecognizer];

  return v3;
}

- (id)pressGestureRecognizer
{
  v2 = [(AKController *)self mainEventHandler];
  v3 = [v2 pressRecognizer];

  return v3;
}

- (id)panGestureRecognizer
{
  v2 = [(AKController *)self mainEventHandler];
  v3 = [v2 panRecognizer];

  return v3;
}

- (id)rotationGestureRecognizer
{
  v2 = [(AKController *)self mainEventHandler];
  v3 = [v2 rotationRecognizer];

  return v3;
}

- (void)_updateGestureDependencyPriority
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AKController *)self pageControllers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) inkPageOverlayController];
        [v7 _updateGestureDependencyPriority];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)toolbarButtonItemOfType:(unint64_t)a3
{
  v4 = [(AKController *)self toolbarViewController];
  v5 = [v4 _toolbarButtonItemOfType:a3];

  return v5;
}

- (void)setAnnotationEditingEnabled:(BOOL)a3
{
  self->_annotationEditingEnabled = a3;
  if (!a3)
  {
    v4 = [(AKController *)self textEditorController];
    v5 = [v4 isEditing];

    if (v5)
    {
      v6 = [(AKController *)self textEditorController];
      [v6 endEditing];
    }

    if ([(AKController *)self supportForPencilAlwaysDrawsSatisfied])
    {
      v7 = [(AKController *)self attributeController];
      [v7 resetToLastDrawingInk];
    }
  }
}

- (void)setFormFillingEnabled:(BOOL)a3
{
  self->_formFillingEnabled = a3;
  if (!a3)
  {
    v4 = [(AKController *)self textEditorController];
    v5 = [v4 isEditing];

    if (v5)
    {
      v6 = [(AKController *)self textEditorController];
      [v6 endEditing];
    }
  }
}

- (id)keyCommandsForAnnotations
{
  cachedKeyCommands = self->_cachedKeyCommands;
  if (!cachedKeyCommands)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    v5 = +[AKController akBundle];
    v6 = [v5 localizedStringForKey:@"Copy" value:&stru_28519E870 table:@"AKController"];
    v7 = sub_23F4496C8(v6, @"c", 0x100000, sel_copy_, v6);
    [v4 addObject:v7];

    v8 = +[AKController akBundle];
    v9 = [v8 localizedStringForKey:@"Cut" value:&stru_28519E870 table:@"AKController"];
    v10 = sub_23F4496C8(v9, @"x", 0x100000, sel_cut_, v9);
    [v4 addObject:v10];

    v11 = +[AKController akBundle];
    v12 = [v11 localizedStringForKey:@"Paste" value:&stru_28519E870 table:@"AKController"];
    v13 = sub_23F4496C8(v12, @"v", 0x100000, sel_paste_, v12);
    [v4 addObject:v13];

    v14 = +[AKController akBundle];
    v15 = [v14 localizedStringForKey:@"Delete" value:&stru_28519E870 table:@"AKController"];
    v16 = sub_23F4496C8(v15, @"\b", 0, sel_delete_, v15);
    [v4 addObject:v16];

    v17 = +[AKController akBundle];
    v18 = [v17 localizedStringForKey:@"Duplicate" value:&stru_28519E870 table:@"AKController"];
    v19 = sub_23F4496C8(v18, @"d", 0x100000, sel_duplicate_, v18);
    [v4 addObject:v19];

    v20 = [v4 copy];
    v21 = self->_cachedKeyCommands;
    self->_cachedKeyCommands = v20;

    cachedKeyCommands = self->_cachedKeyCommands;
  }

  return cachedKeyCommands;
}

- (BOOL)canPerformKeyCommandAction:(SEL)a3 withSender:(id)a4 handled:(BOOL *)a5
{
  v8 = a4;
  if (v8 && [(NSArray *)self->_cachedKeyCommands containsObject:v8])
  {
    if (sel_duplicate_ == a3)
    {
      v12 = [(AKController *)self validateDuplicate:v8];
    }

    else if (sel_delete_ == a3)
    {
      v12 = [(AKController *)self validateDelete:v8];
    }

    else if (sel_cut_ == a3)
    {
      v12 = [(AKController *)self validateCut:v8];
    }

    else if (sel_copy_ == a3)
    {
      v12 = [(AKController *)self validateCopy:v8];
    }

    else
    {
      if (sel_paste_ != a3)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v12 = [(AKController *)self validatePaste:v8];
    }

    v9 = v12;
LABEL_18:
    v10 = 1;
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  if (a5)
  {
LABEL_10:
    *a5 = v10;
  }

LABEL_11:

  return v9;
}

- (unint64_t)toolMode
{
  v2 = [(AKController *)self toolController];
  v3 = [v2 toolMode];

  return v3;
}

- (void)setToolMode:(unint64_t)a3
{
  v4 = [(AKController *)self toolController];
  [v4 setToolMode:a3];
}

- (void)resetToDefaultToolMode
{
  v2 = [(AKController *)self toolController];
  [v2 resetToDefaultMode];
}

- (void)applyCurrentCrop
{
  if ([(AKController *)self toolMode]== 6)
  {
    v3 = [(AKController *)self modelController];
    v5 = [v3 pageModelControllerForPage:{-[AKController currentPageIndex](self, "currentPageIndex")}];

    v4 = [v5 cropAnnotation];
    [v4 setCropApplied:1];
    [(AKController *)self resetToDefaultToolMode];
  }
}

- (void)clearUndoStack
{
  v3 = [(AKController *)self undoController];
  v2 = [v3 undoManager];
  [v2 removeAllActions];
}

- (BOOL)supportsImageDescriptionEditing
{
  v2 = [(AKController *)self delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 supportsImageDescriptionEditing];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsFormFill
{
  v2 = [(AKController *)self delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 supportsFormFill];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)singleSelectedAnnotation
{
  v2 = [(AKController *)self modelController];
  v3 = [v2 allSelectedAnnotations];

  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasSelectionWithEditableFillColor
{
  v2 = [(AKController *)self singleSelectedAnnotation];
  if ([v2 conformsToProtocol:&unk_2851D6420])
  {
    v3 = [v2 fillColorForOptions:0];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasSelectionWithEditableStrokeColor
{
  v2 = [(AKController *)self singleSelectedAnnotation];
  if ([v2 conformsToProtocol:&unk_2851D6300])
  {
    v3 = [v2 strokeColorForOptions:0];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasSelectionWithEditableTextColor
{
  v2 = [(AKController *)self singleSelectedAnnotation];
  if ([v2 conformsToProtocol:&unk_2851D6B08])
  {
    v3 = [v2 foregroundColorForOptions:0];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)originalOrModifiedImageDescription
{
  v3 = [(AKController *)self modifiedImageDescription];
  if (!v3)
  {
    v4 = [(AKController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v4 originalImageDescription];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"modifiedImageDescription"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___AKController;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v5;
}

- (void)setModifiedImageDescription:(id)a3
{
  v8 = a3;
  if (self->_modifiedImageDescription != v8)
  {
    v5 = [(AKController *)self originalOrModifiedImageDescription];
    if ((v5 || -[NSString length](v8, "length")) && ([v5 isEqualToString:v8] & 1) == 0)
    {
      v6 = [(AKController *)self undoController];
      v7 = [v6 undoManager];
      [v7 registerUndoWithTarget:self selector:sel_setModifiedImageDescription_ object:self->_modifiedImageDescription];

      [(AKController *)self willChangeValueForKey:@"modifiedImageDescription"];
      objc_storeStrong(&self->_modifiedImageDescription, a3);
      [(AKController *)self didChangeValueForKey:@"modifiedImageDescription"];
    }
  }
}

- (void)delayedUndoControllerSetup
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [[AKUndoController alloc] initWithController:self];
  [(AKController *)self setUndoController:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AKController *)self pageControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(AKController *)self undoController];
        v11 = [v9 pageModelController];
        [v10 startObservingPageModelController:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)undo:(id)a3
{
  if ([(AKController *)self validateUndo:0])
  {
    v4 = [(AKController *)self textEditorController];
    [v4 endEditing];

    v6 = [(AKController *)self undoController];
    v5 = [v6 undoManager];
    [v5 undo];
  }
}

- (BOOL)validateUndo:(id)a3
{
  v3 = [(AKController *)self undoController];
  v4 = [v3 undoManager];

  LOBYTE(v3) = [v4 canUndo];
  return v3;
}

- (void)redo:(id)a3
{
  if ([(AKController *)self validateRedo:0])
  {
    v5 = [(AKController *)self undoController];
    v4 = [v5 undoManager];
    [v4 redo];
  }
}

- (BOOL)validateRedo:(id)a3
{
  v3 = [(AKController *)self undoController];
  v4 = [v3 undoManager];

  LOBYTE(v3) = [v4 canRedo];
  return v3;
}

- (void)cut:(id)a3
{
  v8 = a3;
  if ([(AKController *)self validateCut:0])
  {
    [(AKController *)self copy:v8];
    [(AKController *)self setPasteCascadingMultiplier:0];
    [(AKController *)self delete:v8];
    v4 = [(AKController *)self undoController];
    v5 = [v4 undoManager];
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:@"Cut" value:&stru_28519E870 table:@"AKController"];
    [v5 setActionName:v7];
  }
}

- (void)copy:(id)a3
{
  if ([(AKController *)self validateCopy:0])
  {
    v4 = [(AKController *)self modelController];
    v6 = [v4 allSelectedAnnotations];

    if ([v6 count])
    {
      v5 = [MEMORY[0x277D75810] generalPasteboard];
      [v5 akClearContents];
      [v5 akPasteboardSetAnnotations:v6];
      -[AKController setLastPasteboardChangeCount:](self, "setLastPasteboardChangeCount:", [v5 changeCount]);
      [(AKController *)self setPasteCascadingMultiplier:1];
    }
  }
}

- (void)paste:(id)a3
{
  if ([(AKController *)self validatePaste:0])
  {
    v20 = [MEMORY[0x277D75810] generalPasteboard];
    v4 = [v20 akPasteboardAnnotations];
    if ([v4 count])
    {
      v5 = [v20 changeCount];
      if ([(AKController *)self lastPasteboardChangeCount]!= v5)
      {
        [(AKController *)self setLastPasteboardChangeCount:v5];
        [(AKController *)self setPasteCascadingMultiplier:0];
      }

      v6 = [(AKController *)self currentPageController];
      v7 = [v6 pageModelController];
      v8 = [v7 hasMaskBorderAnnotation];

      if (v8)
      {
        v9 = [v4 indexesOfObjectsPassingTest:&unk_28519E670];
        v10 = [v4 objectsAtIndexes:v9];

        v4 = v10;
      }

      if ([v4 count])
      {
        [AKToolController cascadeAnnotations:v4 onPageController:v6 forPaste:1];
        v11 = [v6 pageModelController];
        v12 = [v11 mutableArrayValueForKey:@"annotations"];
        [v12 addObjectsFromArray:v4];

        v13 = [v6 pageModelController];
        v14 = [v13 mutableSetValueForKey:@"selectedAnnotations"];
        v15 = [MEMORY[0x277CBEB98] setWithArray:v4];
        [v14 setSet:v15];

        v16 = [(AKController *)self undoController];
        v17 = [v16 undoManager];
        v18 = +[AKController akBundle];
        v19 = [v18 localizedStringForKey:@"Paste" value:&stru_28519E870 table:@"AKController"];
        [v17 setActionName:v19];
      }
    }
  }
}

- (BOOL)validatePaste:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75810] generalPasteboard];
  if ([v5 akPasteboardContainsAnnotations])
  {
    v6 = [(AKController *)self currentPageController];
    v7 = [v6 pageModelController];
    v8 = [v7 hasMaskBorderAnnotation];

    if (v8)
    {
      v9 = [v5 akPasteboardAnnotations];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F44A76C;
      v12[3] = &unk_278C7BCC0;
      v12[4] = &v13;
      [v9 enumerateObjectsUsingBlock:v12];
      v10 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)delete:(id)a3
{
  if ([(AKController *)self validateDelete:0])
  {
    v4 = [(AKController *)self modelController];
    [v4 deleteAllSelectedAnnotations];

    v8 = [(AKController *)self undoController];
    v5 = [v8 undoManager];
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:@"Delete" value:&stru_28519E870 table:@"AKController"];
    [v5 setActionName:v7];
  }
}

- (BOOL)validateDelete:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(AKController *)self _validateCutCopyDelete])
  {
    return 0;
  }

  v4 = [(AKController *)self textEditorController];
  v5 = [v4 isEditing];

  if (!v5)
  {
    return 1;
  }

  v6 = [(AKController *)self modelController];
  v7 = [v6 allSelectedAnnotations];

  v8 = [v7 indexesOfObjectsPassingTest:&unk_28519E690];
  v9 = [v7 objectsAtIndexes:v8];

  memset(v15, 0, sizeof(v15));
  if ([v9 countByEnumeratingWithState:v15 objects:v16 count:16])
  {
    v10 = **(&v15[0] + 1);
    v11 = [(AKController *)self textEditorController];
    v12 = [v11 annotation];

    LOBYTE(v11) = [v12 isEqual:v10];
    v13 = v11 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)duplicate:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(AKController *)self validateDuplicate:a3])
  {
    v4 = [(AKController *)self modelController];
    v5 = [v4 allSelectedAnnotations];

    v6 = [v5 indexesOfObjectsPassingTest:&unk_28519E6B0];
    v7 = [v5 objectsAtIndexes:v6];

    if ([v7 count])
    {
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            [v14 setIsBeingCopied:{1, v28}];
            v15 = [v14 copy];
            [v14 setIsBeingCopied:0];
            if (v15)
            {
              [v8 addObject:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }

      v16 = [(AKController *)self currentPageController];
      v17 = [(AKController *)self lastCreationCascadingPageController];
      v18 = [(AKController *)self creationCascadingMultiplier];
      [(AKController *)self setLastCreationCascadingPageController:v16];
      [(AKController *)self setCreationCascadingMultiplier:1];
      [AKToolController cascadeAnnotations:v8 onPageController:v16 forPaste:0];
      [(AKController *)self setLastCreationCascadingPageController:v17];
      [(AKController *)self setCreationCascadingMultiplier:v18];
      v19 = [v16 pageModelController];
      v20 = [v19 mutableArrayValueForKey:@"annotations"];
      [v20 addObjectsFromArray:v8];

      v21 = [v16 pageModelController];
      v22 = [v21 mutableSetValueForKey:@"selectedAnnotations"];
      v23 = [MEMORY[0x277CBEB98] setWithArray:v8];
      [v22 setSet:v23];

      v24 = [(AKController *)self undoController];
      v25 = [v24 undoManager];
      v26 = +[AKController akBundle];
      v27 = [v26 localizedStringForKey:@"Duplicate" value:&stru_28519E870 table:@"AKController"];
      [v25 setActionName:v27];
    }
  }
}

- (BOOL)validateDuplicate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(AKController *)self modelController];
  v5 = [v4 allSelectedAnnotations];

  v6 = [v5 indexesOfObjectsPassingTest:&unk_28519E6D0];
  v7 = [v5 objectsAtIndexes:v6];

  v8 = [(AKController *)self textEditorController];
  LODWORD(v6) = [v8 isEditing];

  if (v6)
  {
    v9 = [(AKController *)self textEditorController];
    v10 = [v9 annotation];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([v10 isEqual:{*(*(&v19 + 1) + 8 * i), v19}])
          {
            v16 = 0;
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_13:
  }

  else
  {
    v16 = 1;
  }

  if ([v7 count])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)selectAll:(id)a3
{
  v4 = [(AKController *)self currentPageController];
  v3 = [v4 pageModelController];
  [v3 selectAllAnnotations];
}

- (BOOL)validateSelectAll:(id)a3
{
  v3 = [(AKController *)self currentPageController];
  v4 = [v3 pageModelController];

  v5 = [v4 annotations];
  v6 = [v5 count];

  v7 = [v4 cropAnnotation];

  return v6 - (v7 != 0) > 0;
}

- (void)editTextAnnotation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(AKController *)self modelController];
  v5 = [v4 allSelectedAnnotations];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if ([v12 conformsToAKTextAnnotationProtocol])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        v8 = v6;
        goto LABEL_12;
      }
    }

    v8 = v12;

    if (!v8)
    {
      goto LABEL_13;
    }

    v13 = [(AKController *)self pageControllerForAnnotation:v8];
    v14 = [(AKController *)self textEditorController];
    [v14 beginEditingAnnotation:v8 withPageController:v13 selectAllText:0];
  }

LABEL_12:

LABEL_13:
}

- (BOOL)validateEditTextAnnotation:(id)a3
{
  v4 = [(AKController *)self modelController];
  v5 = [v4 allSelectedAnnotations];

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [(AKController *)self canBeginEditingTextAnnotation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canBeginEditingTextAnnotation:(id)a3
{
  v4 = a3;
  if ((-[AKController annotationEditingEnabled](self, "annotationEditingEnabled") || -[AKController formFillingEnabled](self, "formFillingEnabled")) && [v4 conformsToAKTextAnnotationProtocol])
  {
    v5 = v4;
    v6 = [(AKController *)self textEditorController];
    v7 = [v6 isEditing];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = [v5 annotationText];
      v11 = [v10 length] != 0;

      v8 = isKindOfClass | v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)setAvailableHeadroom:(double)a3
{
  if (self->_availableHeadroom != a3)
  {
    v5 = [(AKController *)self toolbarViewController];
    [v5 revalidateHDRandPropagateChanges:0];

    self->_availableHeadroom = a3;
    [(AKController *)self redraw];
    v6 = [(AKController *)self attributeController];
    [v6 _syncAttributesFromSelectedAnnotationsToUI];
  }
}

- (void)showSelectionMenu:(id)a3
{
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = [(AKController *)self currentPageController];
  v5 = [v4 overlayView];
  [v5 becomeFirstResponder];

  v6 = [v4 pageModelController];
  v7 = [v6 selectedAnnotations];

  if ([v7 count])
  {
    [(AKController *)self _popoverAnchorFrameInModelForAnnotations:v7];
    [v4 convertRectFromModelToOverlay:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v4 visibleRectOfOverlay];
    [v4 convertRectFromModelToOverlay:?];
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    v20 = j__NSStringFromCGRect(v45);
    NSLog(&cfstr_SVisiblerectof.isa, "[AKController showSelectionMenu:]", v20);

    v46.origin.x = v9;
    v46.origin.y = v11;
    v46.size.width = v13;
    v46.size.height = v15;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v47 = CGRectIntersection(v46, v48);
    v21 = v47.origin.x;
    v22 = v47.origin.y;
    v23 = v47.size.width;
    v24 = v47.size.height;
    IsNull = CGRectIsNull(v47);
    if (IsNull)
    {
      v26 = v11;
    }

    else
    {
      v9 = v21;
      v26 = v22;
    }

    if (IsNull)
    {
      v27 = v13;
    }

    else
    {
      v27 = v23;
    }

    if (IsNull)
    {
      v24 = v15;
    }

    v28 = [v4 overlayView];
    v29 = [MEMORY[0x277D75718] sharedMenuController];
    v30 = objc_alloc(MEMORY[0x277D75728]);
    v31 = +[AKController akBundle];
    v32 = [v31 localizedStringForKey:@"STRING_EDIT_BUTTON" value:@"Edit" table:@"AKController"];
    v33 = [v30 initWithTitle:v32 action:sel_editTextAnnotation_];

    v34 = objc_alloc(MEMORY[0x277D75728]);
    v35 = +[AKController akBundle];
    v36 = [v35 localizedStringForKey:@"STRING_DUPLICATE_BUTTON" value:@"Duplicate" table:@"AKController"];
    v37 = [v34 initWithTitle:v36 action:sel_duplicate_];

    if ([(AKController *)self validateEditTextAnnotation:self])
    {
      v44[0] = v33;
      v44[1] = v37;
      v38 = MEMORY[0x277CBEA60];
      v39 = v44;
      v40 = 2;
    }

    else
    {
      v43 = v37;
      v38 = MEMORY[0x277CBEA60];
      v39 = &v43;
      v40 = 1;
    }

    v42 = [v38 arrayWithObjects:v39 count:v40];
    [v29 setMenuItems:v42];

    if ([v29 isMenuVisible])
    {
      [v29 update];
    }

    else if (([v28 isFirstResponder] & 1) == 0)
    {
      [v28 becomeFirstResponder];
      [v29 showMenuFromView:v28 rect:{v9, v26, v27, v24}];
      [v28 resignFirstResponder];
      goto LABEL_19;
    }

    [v29 showMenuFromView:v28 rect:{v9, v26, v27, v24}];
LABEL_19:

    goto LABEL_20;
  }

  v41 = [MEMORY[0x277D75718] sharedMenuController];
  [v41 hideMenu];

LABEL_20:
}

- (void)hideSelectionMenu:(id)a3
{
  v3 = [MEMORY[0x277D75718] sharedMenuController];
  [v3 hideMenu];
}

- (void)highlightableSelectionChanged
{
  v3 = [(AKController *)self toolController];
  v4 = [v3 toolMode];

  if (v4 == 3)
  {
    v5 = [(AKController *)self highlightAnnotationController];
    [v5 continueHighlighting];
  }
}

- (void)highlightableSelectionWillBeginChanging
{
  v3 = [(AKController *)self toolController];
  v4 = [v3 toolMode];

  if (v4 == 3)
  {
    v5 = [(AKController *)self highlightAnnotationController];
    [v5 beginContinuousHighlighting];
  }
}

- (void)highlightableSelectionDidEndChanging
{
  v3 = [(AKController *)self toolController];
  v4 = [v3 toolMode];

  if (v4 == 3)
  {
    v5 = [(AKController *)self highlightAnnotationController];
    [v5 endContinuousHighlighting];
  }
}

- (void)setSelectNewlyCreatedAnnotations:(BOOL)a3
{
  v3 = a3;
  self->_selectNewlyCreatedAnnotations = a3;
  v4 = [(AKController *)self legacyDoodleController];
  [v4 setSelectNewlyCreatedAnnotations:v3];
}

- (void)addPopupToAnnotation:(id)a3 openPopup:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(AKController *)self pageControllerForAnnotation:?];
  v7 = v6;
  if (v6)
  {
    [v6 addPopupToAnnotation:v8 openPopup:v4];
  }
}

- (void)removeNoteFromAnnotation:(id)a3
{
  v6 = a3;
  v4 = [(AKController *)self pageControllerForAnnotation:?];
  v5 = v4;
  if (v4)
  {
    [v4 removeNoteFromAnnotation:v6];
  }
}

- (PKToolPicker)toolPicker
{
  v2 = [(AKController *)self modernToolbarView];
  v3 = [v2 toolPicker];

  return v3;
}

+ (void)performBlockOnMainThread:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (BOOL)_validateCutCopyDelete
{
  v2 = [(AKController *)self modelController];
  v3 = [v2 allSelectedAnnotations];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)shouldDrawVariableStrokeDoodles
{
  if ([objc_opt_class() canConnectToStylus])
  {
    v3 = [(AKController *)self peripheralAvailabilityManager];
    v4 = [v3 currentAvailability];

    if (v4 == 1)
    {
      return 1;
    }
  }

  v6 = objc_opt_class();

  return MEMORY[0x2821F9670](v6, sel_hasPressureCapableHardware);
}

- (BOOL)supportForPencilAlwaysDrawsSatisfied
{
  v3 = +[AKController canConnectToStylus];
  if (v3)
  {

    LOBYTE(v3) = [(AKController *)self pencilAlwaysDraws];
  }

  return v3;
}

- (void)_toolpicker_setColor:(id)a3
{
  v4 = a3;
  v5 = self;
  v19 = v4;
  v6 = [(AKController *)v5 currentPageController];
  v7 = [v6 pageModelController];

  v8 = [v7 selectedAnnotations];
  v9 = [v8 count];

  if (!v9)
  {
    v13 = [(AKController *)v5 attributeController];
    v14 = [v13 ink];

    v15 = MEMORY[0x277CD9638];
    v16 = [(AKMinimalTextColorUserInterfaceItem *)v14 identifier];
    [(AKMinimalTextColorUserInterfaceItem *)v14 weight];
    v17 = [v15 inkWithIdentifier:v16 color:v19 weight:?];

    v18 = [(AKMinimalUserInterfaceItem *)[AKMinimalInkChooserUserInterfaceItem alloc] initWithTag:765300];
    [(AKMinimalInkChooserUserInterfaceItem *)v18 setInk:v17];
    [(AKController *)v5 performActionForSender:v18];

LABEL_8:
    goto LABEL_10;
  }

  v10 = [AKToolbarUtilities attributeTagForCurrentSelectionState:v5];
  if (v10 == 765106)
  {
    v11 = [AKMinimalTextColorUserInterfaceItem alloc];
    v12 = 765106;
    goto LABEL_7;
  }

  if (v10 == 765101)
  {
    v11 = [AKMinimalColorChooserUserInterfaceItem alloc];
    v12 = 765101;
LABEL_7:
    v14 = [(AKMinimalUserInterfaceItem *)v11 initWithTag:v12];
    [(AKMinimalColorChooserUserInterfaceItem *)v14 setColor:v19];
    [(AKController *)v5 performActionForSender:v14];
    goto LABEL_8;
  }

  NSLog(&cfstr_SCalledWithInc.isa, "[AKController _toolpicker_setColor:]", v10);
LABEL_10:
}

- (id)_toolpicker_color
{
  v2 = [(AKController *)self attributeController];
  v3 = [v2 strokeColor];

  return v3;
}

- (void)_toolpicker_setInkIdentifier:(id)a3
{
  v14 = self;
  v4 = a3;
  v5 = [(AKController *)v14 attributeController];
  v6 = [v5 ink];

  v7 = MEMORY[0x277CD9638];
  v8 = [v6 color];
  [v6 weight];
  v9 = [v7 inkWithIdentifier:v4 color:v8 weight:?];

  v10 = [(AKMinimalUserInterfaceItem *)[AKMinimalInkChooserUserInterfaceItem alloc] initWithTag:765300];
  [(AKMinimalInkChooserUserInterfaceItem *)v10 setInk:v9];
  [(AKController *)v14 performActionForSender:v10];
  v11 = [(AKController *)v14 toolController];
  v12 = [v11 toolMode];

  if (v12 != 4 && [(AKController *)v14 annotationEditingEnabled])
  {
    v13 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764017];
    [(AKController *)v14 performActionForSender:v13];
  }
}

- (id)_toolpicker_inkIdentifier
{
  v2 = [(AKController *)self attributeController];
  v3 = [v2 ink];
  v4 = [v3 identifier];

  return v4;
}

- (id)currentPageController
{
  v3 = [(AKController *)self pageControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AKController *)self pageControllers];
    v6 = [v5 objectAtIndex:{-[AKController currentPageIndex](self, "currentPageIndex")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pageControllerForPageModelController:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AKController *)self pageControllers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 pageModelController];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)pageControllerForAnnotation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(AKController *)self modelController];
  v6 = [v5 pageModelControllers];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 containsAnnotation:v4])
        {
          v13 = [(AKController *)self pageModelControllersToPageControllers];
          v12 = [v13 objectForKey:v11];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (CGRect)_popoverAnchorFrameInModelForAnnotations:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v4 midPoint];
      v6 = v26 + -5.0;
      MidY = v27 + -5.0;
      v12 = 10.0;
      v10 = 10.0;
    }

    else
    {
      [v4 drawingBounds];
      v6 = v5;
      MidY = v7;
      v10 = v9;
      v12 = v11;
    }
  }

  else
  {
    v14 = *MEMORY[0x277CBF390];
    v13 = *(MEMORY[0x277CBF390] + 8);
    v16 = *(MEMORY[0x277CBF390] + 16);
    v15 = *(MEMORY[0x277CBF390] + 24);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v3;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        v21 = 0;
        do
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v32 + 1) + 8 * v21) drawingBounds];
          x = v38.origin.x;
          y = v38.origin.y;
          width = v38.size.width;
          height = v38.size.height;
          if (!CGRectIsInfinite(v38))
          {
            v39.origin.x = v14;
            v39.origin.y = v13;
            v39.size.width = v16;
            v39.size.height = v15;
            if (CGRectIsInfinite(v39))
            {
              v15 = height;
              v16 = width;
              v13 = y;
              v14 = x;
            }

            else
            {
              v40.origin.x = v14;
              v40.origin.y = v13;
              v40.size.width = v16;
              v40.size.height = v15;
              v45.origin.x = x;
              v45.origin.y = y;
              v45.size.width = width;
              v45.size.height = height;
              v41 = CGRectUnion(v40, v45);
              v14 = v41.origin.x;
              v13 = v41.origin.y;
              v16 = v41.size.width;
              v15 = v41.size.height;
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    v42.origin.x = v14;
    v42.origin.y = v13;
    v42.size.width = v16;
    v42.size.height = v15;
    v43.origin.x = CGRectGetMidX(v42);
    v6 = v43.origin.x;
    v43.origin.y = v13;
    v43.size.width = v16;
    v43.size.height = v15;
    MidY = CGRectGetMidY(v43);
    v12 = 1.0;
    v10 = 1.0;
  }

  v28 = v6;
  v29 = MidY;
  v30 = v10;
  v31 = v12;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)isPresentingPopover
{
  v3 = [(AKController *)self toolbarViewController];
  v4 = [v3 isPresentingPopover];

  if (v4)
  {
    return 1;
  }

  v6 = [(AKController *)self modernToolbarView];
  v7 = [v6 isPresentingPopover];

  return v7;
}

- (void)setHideAllAdornments:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_hideAllAdornments != a3)
  {
    v3 = a3;
    self->_hideAllAdornments = a3;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(AKController *)self pageControllers];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 relinquishablesAreLoaded])
          {
            v11 = [v10 layerPresentationManager];
            [v11 setAdornmentsHidden:v3];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_pageModelControllerSelectedAnnotationsChangedNotification:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [(AKController *)self modelController];
  v6 = [v5 pageModelControllers];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v16 = AKSelectionChangedPageModelControllerKey;
    v17[0] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:AKSelectionChangedNotification object:self userInfo:v8];

    [(AKController *)self _updateGestureDependencyPriority];
    v10 = [(AKController *)self modelController];
    v11 = [v10 allSelectedAnnotations];

    if ([v11 count])
    {
      v12 = [(AKController *)self currentPageController];
      v13 = [v12 overlayView];

      if (v13 && ([v13 isFirstResponder] & 1) == 0)
      {
        v14 = [v13 firstResponder];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 isDescendantOfView:v13] & 1) == 0)
        {
          v15 = [(AKController *)self modernToolbarView];
          [v15 updateCurrentOverlaysToolPickerVisibility];

          [v13 becomeFirstResponder];
        }
      }
    }

    else
    {
      [(AKController *)self hideSelectionMenu:0];
    }
  }
}

- (void)strokeAddedNotification:(id)a3
{
  v4 = [a3 object];
  if (v4 == self)
  {
    v8 = v4;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(AKController *)self statisticsLogger];
    [v7 logInkAnnotationStrokeAdded:v6];

    v4 = v8;
  }
}

- (void)beginLogging:(id)a3 documentType:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!v11 || !v6)
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_strokeAddedNotification_ name:off_27E399B30 object:0];

  v8 = [(AKController *)self statisticsLogger];
  [v8 setClientPrefix:v11];

  v9 = [(AKController *)self statisticsLogger];
  [v9 setDocumentType:v6];

  v10 = [(AKController *)self statisticsLogger];
  [v10 resetLogging];
}

- (void)endLogging
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:off_27E399B30 object:0];

  v4 = [(AKController *)self statisticsLogger];
  [v4 logDocumentSaved];

  v5 = [(AKController *)self statisticsLogger];
  [v5 resetLogging];
}

- (AKControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKRulerHostingDelegate)rulerHostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostingDelegate);

  return WeakRetained;
}

- (AKPageController)lastCreationCascadingPageController
{
  WeakRetained = objc_loadWeakRetained(&self->_lastCreationCascadingPageController);

  return WeakRetained;
}

- (AKToolbarView)modernToolbarView
{
  WeakRetained = objc_loadWeakRetained(&self->_modernToolbarView);

  return WeakRetained;
}

- (AKControllerOverlayInteractionProtocol)overlayInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayInteractionDelegate);

  return WeakRetained;
}

@end