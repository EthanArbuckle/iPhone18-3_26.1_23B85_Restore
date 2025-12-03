@interface AKController
+ (AKController)controllerWithDelegate:(id)delegate;
+ (BOOL)_isInLowMemoryEnvironment;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (BOOL)canConnectToStylus;
+ (BOOL)hasPressureCapableHardware;
+ (id)akBundle;
+ (void)performBlockOnMainThread:(id)thread;
+ (void)renderAnnotation:(id)annotation inContext:(CGContext *)context;
- (AKController)initWithDelegate:(id)delegate;
- (AKControllerDelegateProtocol)delegate;
- (AKControllerOverlayInteractionProtocol)overlayInteractionDelegate;
- (AKPageController)lastCreationCascadingPageController;
- (AKToolbarView)modernToolbarView;
- (BOOL)_validateCutCopyDelete;
- (BOOL)canBeginEditingTextAnnotation:(id)annotation;
- (BOOL)canPerformKeyCommandAction:(SEL)action withSender:(id)sender handled:(BOOL *)handled;
- (BOOL)handleEvent:(id)event;
- (BOOL)hasSelectionWithEditableFillColor;
- (BOOL)hasSelectionWithEditableStrokeColor;
- (BOOL)hasSelectionWithEditableTextColor;
- (BOOL)isOverlayViewLoadedAtIndex:(unint64_t)index;
- (BOOL)isPresentingPopover;
- (BOOL)shouldDrawVariableStrokeDoodles;
- (BOOL)supportForPencilAlwaysDrawsSatisfied;
- (BOOL)supportsFormFill;
- (BOOL)supportsImageDescriptionEditing;
- (BOOL)validateDelete:(id)delete;
- (BOOL)validateDuplicate:(id)duplicate;
- (BOOL)validateEditTextAnnotation:(id)annotation;
- (BOOL)validatePaste:(id)paste;
- (BOOL)validateRedo:(id)redo;
- (BOOL)validateSelectAll:(id)all;
- (BOOL)validateSender:(id)sender;
- (BOOL)validateUndo:(id)undo;
- (CGRect)_popoverAnchorFrameInModelForAnnotations:(id)annotations;
- (CGRect)contentAlignedRectForRect:(CGRect)rect onPageAtIndex:(unint64_t)index;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (PKToolPicker)toolPicker;
- (double)currentModelBaseScaleFactorForPageAtIndex:(unint64_t)index;
- (double)maxHDRGain;
- (id)_toolpicker_color;
- (id)_toolpicker_inkIdentifier;
- (id)currentPageController;
- (id)doubleTapGestureRecognizer;
- (id)initForTesting;
- (id)keyCommandsForAnnotations;
- (id)originalOrModifiedImageDescription;
- (id)overlayViewAtIndex:(unint64_t)index;
- (id)pageControllerForAnnotation:(id)annotation;
- (id)pageControllerForPageModelController:(id)controller;
- (id)panGestureRecognizer;
- (id)pressGestureRecognizer;
- (id)rotationGestureRecognizer;
- (id)singleSelectedAnnotation;
- (id)tapGestureRecognizer;
- (id)toolbarButtonItemOfType:(unint64_t)type;
- (int64_t)currentExifOrientationForPageAtIndex:(unint64_t)index;
- (unint64_t)toolMode;
- (void)_didScrollPDFPage:(id)page;
- (void)_pageModelControllerSelectedAnnotationsChangedNotification:(id)notification;
- (void)_setupPageModelController:(id)controller;
- (void)_toolpicker_setColor:(id)color;
- (void)_toolpicker_setInkIdentifier:(id)identifier;
- (void)_updateGestureDependencyPriority;
- (void)addPopupToAnnotation:(id)annotation openPopup:(BOOL)popup;
- (void)applyCurrentCrop;
- (void)beginLogging:(id)logging documentType:(id)type;
- (void)clearUndoStack;
- (void)commitEditing;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)delayedUndoControllerSetup;
- (void)delete:(id)delete;
- (void)didBeginEditingAnnotation:(id)annotation;
- (void)duplicate:(id)duplicate;
- (void)editTextAnnotation:(id)annotation;
- (void)editTextAnnotation:(id)annotation selectAllText:(BOOL)text;
- (void)enclosingScrollViewDidScroll:(id)scroll;
- (void)endEditingTextAnnotation;
- (void)endLogging;
- (void)hideSelectionMenu:(id)menu;
- (void)highlightableSelectionChanged;
- (void)highlightableSelectionDidEndChanging;
- (void)highlightableSelectionWillBeginChanging;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)paste:(id)paste;
- (void)performActionForSender:(id)sender;
- (void)prepareOverlayAtIndex:(unint64_t)index;
- (void)redo:(id)redo;
- (void)redraw;
- (void)relinquishOverlayAtIndex:(unint64_t)index;
- (void)removeNoteFromAnnotation:(id)annotation;
- (void)renderAnnotation:(id)annotation inContext:(CGContext *)context;
- (void)resetToDefaultToolMode;
- (void)selectAll:(id)all;
- (void)setAnnotationEditingEnabled:(BOOL)enabled;
- (void)setAvailableHeadroom:(double)headroom;
- (void)setFormFillingEnabled:(BOOL)enabled;
- (void)setHideAllAdornments:(BOOL)adornments;
- (void)setMaxHDRGain:(double)gain;
- (void)setModifiedImageDescription:(id)description;
- (void)setOverlayShouldPixelate:(BOOL)pixelate;
- (void)setRulerHostingDelegate:(id)delegate;
- (void)setSelectNewlyCreatedAnnotations:(BOOL)annotations;
- (void)setToolMode:(unint64_t)mode;
- (void)showSelectionMenu:(id)menu;
- (void)strokeAddedNotification:(id)notification;
- (void)teardown;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)undo:(id)undo;
- (void)updateOverlayViewAtIndex:(unint64_t)index;
@end

@implementation AKController

+ (AKController)controllerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[AKController alloc] initWithDelegate:delegateCopy];

  return v4;
}

+ (id)akBundle
{
  akBundleIdentifier = [self akBundleIdentifier];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:akBundleIdentifier];

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

- (AKController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v34.receiver = self;
  v34.super_class = AKController;
  v5 = [(AKController *)&v34 init];
  v6 = v5;
  if (v5)
  {
    [(AKController *)v5 setIsTestingInstance:0];
    [(AKController *)v6 setDelegate:delegateCopy];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_enclosingScrollViewDidScroll_ name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

    v15 = [[AKToolController alloc] initWithController:v6];
    [(AKController *)v6 setToolController:v15];

    v16 = [[AKAttributeController alloc] initWithController:v6];
    [(AKController *)v6 setAttributeController:v16];

    v17 = [[AKActionController alloc] initWithController:v6];
    [(AKController *)v6 setActionController:v17];

    v18 = [objc_alloc(objc_opt_class()) initWithController:v6];
    [(AKController *)v6 setToolbarViewController:v18];

    toolbarViewController = [(AKController *)v6 toolbarViewController];
    view = [toolbarViewController view];
    [(AKController *)v6 setToolbarView:view];

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

      peripheralAvailabilityManager = [(AKController *)v6 peripheralAvailabilityManager];
      [peripheralAvailabilityManager startMonitoringForPeripheralConnection];
    }

    v28 = [[AKSignaturesController alloc] initWithController:v6];
    [(AKController *)v6 setSignaturesController:v28];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

    modelController = [(AKController *)v6 modelController];
    [modelController addObserver:v6 forKeyPath:@"pageModelControllers" options:3 context:@"AKController.modelObservationContext"];

    [(AKController *)v6 addObserver:v6 forKeyPath:@"currentPageIndex" options:3 context:@"AKController.pageIndexObservationContext"];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__pageModelControllerSelectedAnnotationsChangedNotification_ name:off_27E39A380[0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__didScrollPDFPage_ name:@"PDFScrollViewPageMayHaveChangedNotification" object:0];
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
  selfCopy = self;
  v44 = *MEMORY[0x277D85DE8];
  [(AKController *)self setIsTornDown:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AKControllerWillTeardownNotification" object:selfCopy];

  if (![(AKController *)selfCopy isTestingInstance])
  {
    undoController = [(AKController *)selfCopy undoController];
    undoManager = [undoController undoManager];

    isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];
    if (isUndoRegistrationEnabled)
    {
      [undoManager disableUndoRegistration];
    }

    v31 = undoManager;
    [(AKController *)selfCopy resetToDefaultToolMode];
    mainEventHandler = [(AKController *)selfCopy mainEventHandler];
    [mainEventHandler teardown];

    toolbarViewController = [(AKController *)selfCopy toolbarViewController];
    [toolbarViewController teardown];

    peripheralAvailabilityManager = [(AKController *)selfCopy peripheralAvailabilityManager];
    [peripheralAvailabilityManager teardown];

    attributeController = [(AKController *)selfCopy attributeController];
    [attributeController setModelControllerToObserveForSelections:0];

    legacyDoodleController = [(AKController *)selfCopy legacyDoodleController];
    shapeDetectionController = [legacyDoodleController shapeDetectionController];
    [shapeDetectionController setModelControllerToObserveForAnnotationsAndSelections:0];

    modelController = [(AKController *)selfCopy modelController];
    [modelController removeObserver:selfCopy forKeyPath:@"pageModelControllers" context:@"AKController.modelObservationContext"];

    [(AKController *)selfCopy removeObserver:selfCopy forKeyPath:@"currentPageIndex" context:@"AKController.pageIndexObservationContext"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    modelController2 = [(AKController *)selfCopy modelController];
    pageModelControllers = [modelController2 pageModelControllers];

    obj = pageModelControllers;
    v15 = [pageModelControllers countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v33 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          v18 = selfCopy;
          if (*v39 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          annotations = [v19 annotations];
          v21 = [annotations countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                  objc_enumerationMutation(annotations);
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

                appearanceOverride = [v25 appearanceOverride];

                if (appearanceOverride)
                {
                  [v25 setAppearanceOverride:0];
                }
              }

              v22 = [annotations countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v22);
          }

          selfCopy = v18;
          sidecarController = [(AKController *)v18 sidecarController];
          [sidecarController stopObservingPageModelController:v19];

          undoController2 = [(AKController *)v18 undoController];
          [undoController2 stopObservingPageModelController:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    [(AKController *)selfCopy setDelegate:0];
    [(AKController *)selfCopy setSignatureModelController:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:selfCopy];

    [(AKController *)selfCopy setLegacyDoodleController:0];
    [(AKController *)selfCopy setTextEditorController:0];
    [(AKController *)selfCopy setMainEventHandler:0];
    [(AKController *)selfCopy setToolbarView:0];
    [(AKController *)selfCopy setToolbarViewController:0];
    [(AKController *)selfCopy setActionController:0];
    [(AKController *)selfCopy setAttributeController:0];
    [(AKController *)selfCopy setToolController:0];
    [(AKController *)selfCopy setUndoController:0];
    [(AKController *)selfCopy setModelController:0];
    [(AKController *)selfCopy setPeripheralAvailabilityManager:0];
    if (isUndoRegistrationEnabled)
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

- (void)_didScrollPDFPage:(id)page
{
  modernToolbarView = [(AKController *)self modernToolbarView];
  [modernToolbarView updateCurrentOverlaysToolPickerVisibility:self->_toolPickerVisibleBeforeTextEditing];
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  if (!self->_isEditingAnnotation)
  {
    self->_toolPickerVisibleBeforeTextEditing = [change isVisible];
  }
}

- (void)setMaxHDRGain:(double)gain
{
  toolbarViewController = [(AKController *)self toolbarViewController];
  [toolbarViewController setMaxHDRGain:gain];
}

- (double)maxHDRGain
{
  toolbarViewController = [(AKController *)self toolbarViewController];
  [toolbarViewController maxHDRGain];
  v4 = v3;

  return v4;
}

- (void)didBeginEditingAnnotation:(id)annotation
{
  self->_isEditingAnnotation = 1;
  modernToolbarView = [(AKController *)self modernToolbarView];
  self->_toolPickerVisibleBeforeTextEditing = [modernToolbarView isToolPickerVisible];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v120 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context != @"AKController.pageIndexObservationContext")
  {
    if (context != @"AKController.modelObservationContext")
    {
      v104.receiver = self;
      v104.super_class = AKController;
      [(AKController *)&v104 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_76;
    }

    v17 = [changeCopy objectForKey:*MEMORY[0x277CCA2E8]];
    v99 = [v13 objectForKey:*MEMORY[0x277CCA2E0]];
    v18 = [v13 objectForKey:*MEMORY[0x277CCA300]];
    v96 = v13;
    v19 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    v97 = pathCopy;
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
            undoController = [(AKController *)self undoController];
            [undoController stopObservingPageModelController:v25];

            sidecarController = [(AKController *)self sidecarController];
            [sidecarController stopObservingPageModelController:v25];

            pageModelControllersToPageControllers = [(AKController *)self pageModelControllersToPageControllers];
            v29 = [pageModelControllersToPageControllers objectForKey:v25];

            undoController2 = [(AKController *)self undoController];
            undoManager = [undoController2 undoManager];
            [v29 unregisterFromUndoManager:undoManager];

            [v29 teardown];
            pageModelControllersToPageControllers2 = [(AKController *)self pageModelControllersToPageControllers];
            [pageModelControllersToPageControllers2 removeObjectForKey:v25];
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
          attributeController = [(AKController *)self attributeController];
          modelControllerToObserveForSelections = [attributeController modelControllerToObserveForSelections];

          if (v39 == modelControllerToObserveForSelections)
          {
            attributeController2 = [(AKController *)self attributeController];
            [attributeController2 setModelControllerToObserveForSelections:v40];
          }

          legacyDoodleController = [(AKController *)self legacyDoodleController];
          shapeDetectionController = [legacyDoodleController shapeDetectionController];
          modelControllerToObserveForAnnotationsAndSelections = [shapeDetectionController modelControllerToObserveForAnnotationsAndSelections];

          if (v39 == modelControllerToObserveForAnnotationsAndSelections)
          {
            legacyDoodleController2 = [(AKController *)self legacyDoodleController];
            shapeDetectionController2 = [legacyDoodleController2 shapeDetectionController];
            [shapeDetectionController2 setModelControllerToObserveForAnnotationsAndSelections:v40];
          }

          v19 = v102;
          v18 = v103;
        }

        ++v38;
      }

      while (v38 < [v99 count]);
    }

    pageControllers = [(AKController *)self pageControllers];
    [pageControllers removeAllObjects];

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    modelController = [(AKController *)self modelController];
    pageModelControllers = [modelController pageModelControllers];

    v52 = [pageModelControllers countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v52)
    {
      v53 = v52;
      v100 = objectCopy;
      v54 = 0;
      v55 = *v106;
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v57 = pageModelControllers;
        for (k = 0; k != v53; ++k)
        {
          if (*v106 != v55)
          {
            objc_enumerationMutation(v57);
          }

          v59 = *(*(&v105 + 1) + 8 * k);
          null = [MEMORY[0x277CBEB68] null];
          v61 = [v59 isEqual:null];

          if ((v61 & 1) == 0)
          {
            pageModelControllersToPageControllers3 = [(AKController *)self pageModelControllersToPageControllers];
            v63 = [pageModelControllersToPageControllers3 objectForKey:v59];

            if (v63)
            {
              pageControllers2 = [(AKController *)self pageControllers];
              [pageControllers2 replaceObjectAtIndex:v54 withObject:v63];

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

        pageModelControllers = v57;
        v53 = [v57 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v53);

      v66 = 0x7FFFFFFFFFFFFFFFLL;
      objectCopy = v100;
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
      modelController2 = [(AKController *)self modelController];
      pageModelControllers2 = [modelController2 pageModelControllers];
      v75 = [pageModelControllers2 objectAtIndex:{-[AKController currentPageIndex](self, "currentPageIndex")}];

      attributeController3 = [(AKController *)self attributeController];
      [attributeController3 setModelControllerToObserveForSelections:v75];

      legacyDoodleController3 = [(AKController *)self legacyDoodleController];
      shapeDetectionController3 = [legacyDoodleController3 shapeDetectionController];
      [shapeDetectionController3 setModelControllerToObserveForAnnotationsAndSelections:v75];
    }

    pathCopy = v97;
    goto LABEL_76;
  }

  v14 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
  v15 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
  if (v14)
  {
    unsignedIntegerValue = [v14 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v101 = objectCopy;
  if (v15)
  {
    unsignedIntegerValue2 = [v15 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (unsignedIntegerValue != unsignedIntegerValue2)
  {
    if ([(AKController *)self toolMode]== 6)
    {
      v68 = v13;
      modelController3 = [(AKController *)self modelController];
      v70 = [modelController3 pageModelControllerForPage:unsignedIntegerValue];

      cropAnnotation = [v70 cropAnnotation];
      v72 = cropAnnotation;
      if (cropAnnotation && [cropAnnotation cropApplied])
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
    if (unsignedIntegerValue != 0x7FFFFFFFFFFFFFFFLL)
    {
      pageControllers3 = [(AKController *)self pageControllers];
      v80 = v13;
      v81 = [pageControllers3 count];

      v82 = unsignedIntegerValue >= v81;
      v13 = v80;
      if (!v82)
      {
        pageControllers4 = [(AKController *)self pageControllers];
        v84 = [pageControllers4 objectAtIndex:unsignedIntegerValue];

        pageModelController = [v84 pageModelController];
        v86 = [pageModelController mutableSetValueForKey:@"selectedAnnotations"];
        v87 = [MEMORY[0x277CBEB98] set];
        [v86 setSet:v87];

        v13 = v80;
      }
    }

    if (unsignedIntegerValue2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      pageControllers5 = [(AKController *)self pageControllers];
      v89 = [pageControllers5 objectAtIndex:unsignedIntegerValue2];

      pageModelController2 = [v89 pageModelController];
      attributeController4 = [(AKController *)self attributeController];
      [attributeController4 setModelControllerToObserveForSelections:pageModelController2];

      legacyDoodleController4 = [(AKController *)self legacyDoodleController];
      [legacyDoodleController4 shapeDetectionController];
      v94 = v93 = v13;
      [v94 setModelControllerToObserveForAnnotationsAndSelections:pageModelController2];

      v13 = v93;
      modernToolbarView = [(AKController *)self modernToolbarView];
      [modernToolbarView updateCurrentOverlaysToolPickerVisibility];
    }
  }

  objectCopy = v101;
LABEL_76:
}

- (void)_setupPageModelController:(id)controller
{
  controllerCopy = controller;
  representedObject = [controllerCopy representedObject];
  if (!representedObject || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = [AKPageController pageControllerWithController:self andPageModelController:controllerCopy];
    [v5 setShouldPixelate:{-[AKController overlayShouldPixelate](self, "overlayShouldPixelate")}];
    pageModelControllersToPageControllers = [(AKController *)self pageModelControllersToPageControllers];
    [pageModelControllersToPageControllers setObject:v5 forKey:controllerCopy];

    undoController = [(AKController *)self undoController];
    [undoController startObservingPageModelController:controllerCopy];

    sidecarController = [(AKController *)self sidecarController];
    [sidecarController startObservingPageModelController:controllerCopy];
  }
}

- (void)enclosingScrollViewDidScroll:(id)scroll
{
  legacyDoodleController = [(AKController *)self legacyDoodleController];
  shapeDetectionController = [legacyDoodleController shapeDetectionController];
  isShowingCandidatePicker = [shapeDetectionController isShowingCandidatePicker];

  if (isShowingCandidatePicker)
  {
    legacyDoodleController2 = [(AKController *)self legacyDoodleController];
    shapeDetectionController2 = [legacyDoodleController2 shapeDetectionController];
    [shapeDetectionController2 dismissCandidatePicker];
  }
}

- (BOOL)validateSender:(id)sender
{
  senderCopy = sender;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    action = [senderCopy action];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = senderCopy;
    v7 = [v6 actionsForTarget:0 forControlEvent:251658240];
    firstObject = [v7 firstObject];
    action = NSSelectorFromString(firstObject);
    if ([v7 count] >= 2)
    {
      NSLog(&cfstr_WarningMultipl.isa, v6);
    }

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [senderCopy methodSignatureForSelector:sel_action];
    if (!v6)
    {
      action = 0;
      goto LABEL_12;
    }

    v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
    [v7 setSelector:sel_action];
    [v7 setTarget:senderCopy];
    v13 = 0;
    [v7 invoke];
    [v7 getReturnValue:&v13];
    action = v13;
LABEL_11:

LABEL_12:
    goto LABEL_14;
  }

  action = 0;
LABEL_14:
  if (action == sel_undo_)
  {
    v11 = [(AKController *)self validateUndo:senderCopy];
LABEL_34:
    v10 = v11;
    goto LABEL_35;
  }

  if (action == sel_redo_)
  {
    v11 = [(AKController *)self validateRedo:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_cut_)
  {
    v11 = [(AKController *)self validateCut:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_copy_)
  {
    v11 = [(AKController *)self validateCopy:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_paste_)
  {
    v11 = [(AKController *)self validatePaste:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_delete_)
  {
    v11 = [(AKController *)self validateDelete:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_duplicate_)
  {
    v11 = [(AKController *)self validateDuplicate:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_selectAll_)
  {
    v11 = [(AKController *)self validateSelectAll:senderCopy];
    goto LABEL_34;
  }

  if (action == sel_showAttributeInspector_)
  {
    v11 = [(AKController *)self validateShowAttributeInspector:senderCopy];
    goto LABEL_34;
  }

LABEL_23:
  actionController = [(AKController *)self actionController];
  v10 = [actionController validateSender:senderCopy];

LABEL_35:
  return v10;
}

- (void)performActionForSender:(id)sender
{
  senderCopy = sender;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    action = [senderCopy action];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = senderCopy;
      v6 = [v5 actionsForTarget:0 forControlEvent:251658240];
      firstObject = [v6 firstObject];
      action = NSSelectorFromString(firstObject);
      if ([v6 count] >= 2)
      {
        NSLog(&cfstr_WarningMultipl.isa, v5);
      }
    }

    else
    {
      action = 0;
    }
  }

  if (action == sel_undo_)
  {
    [(AKController *)self undo:senderCopy];
  }

  else if (action == sel_redo_)
  {
    [(AKController *)self redo:senderCopy];
  }

  else if (action == sel_cut_)
  {
    [(AKController *)self cut:senderCopy];
  }

  else if (action == sel_copy_)
  {
    [(AKController *)self copy:senderCopy];
  }

  else if (action == sel_paste_)
  {
    [(AKController *)self paste:senderCopy];
  }

  else if (action == sel_delete_)
  {
    [(AKController *)self delete:senderCopy];
  }

  else if (action == sel_duplicate_)
  {
    [(AKController *)self duplicate:senderCopy];
  }

  else if (action == sel_selectAll_)
  {
    [(AKController *)self selectAll:senderCopy];
  }

  else
  {
    if (action != sel_showAttributeInspector_)
    {
LABEL_18:
      actionController = [(AKController *)self actionController];
      [actionController performActionForSender:senderCopy];

      goto LABEL_28;
    }

    [(AKController *)self showAttributeInspector:senderCopy];
  }

LABEL_28:
}

- (id)overlayViewAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v5 = [pageControllers objectAtIndex:index];

  overlayView = [v5 overlayView];

  return overlayView;
}

- (BOOL)isOverlayViewLoadedAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v5 = [pageControllers objectAtIndex:index];

  if (v5)
  {
    relinquishablesAreLoaded = [v5 relinquishablesAreLoaded];
  }

  else
  {
    relinquishablesAreLoaded = 0;
  }

  return relinquishablesAreLoaded;
}

- (void)setRulerHostingDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_rulerHostingDelegate, delegateCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pageControllers = [(AKController *)self pageControllers];
  v6 = [pageControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pageControllers);
        }

        inkPageOverlayController = [*(*(&v11 + 1) + 8 * v9) inkPageOverlayController];
        [inkPageOverlayController setRulerHostingDelegate:delegateCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [pageControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)prepareOverlayAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v8 = [pageControllers objectAtIndex:index];

  [v8 setupRelinquishables];
  rulerHostingDelegate = [(AKController *)self rulerHostingDelegate];
  if (rulerHostingDelegate)
  {
    inkPageOverlayController = [v8 inkPageOverlayController];
    [inkPageOverlayController setRulerHostingDelegate:rulerHostingDelegate];
  }
}

- (void)relinquishOverlayAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v5 = [pageControllers objectAtIndex:index];

  [v5 releaseRelinquishables];
}

- (void)updateOverlayViewAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v6 = [pageControllers objectAtIndex:index];

  if ([v6 relinquishablesAreLoaded])
  {
    overlayView = [v6 overlayView];
    [overlayView updateLayers];
  }
}

- (void)renderAnnotation:(id)annotation inContext:(CGContext *)context
{
  annotationCopy = annotation;
  v6 = [AKAnnotationRenderer _optionsForContext:context forDisplay:0];
  [AKAnnotationRenderer renderAnnotation:annotationCopy intoContext:context options:v6 pageControllerOrNil:0];
}

+ (void)renderAnnotation:(id)annotation inContext:(CGContext *)context
{
  annotationCopy = annotation;
  v6 = [AKAnnotationRenderer _optionsForContext:context forDisplay:0];
  [AKAnnotationRenderer renderAnnotation:annotationCopy intoContext:context options:v6 pageControllerOrNil:0];
}

- (void)redraw
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  pageControllers = [(AKController *)self pageControllers];
  v3 = [pageControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(pageControllers);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        layerPresentationManager = [v7 layerPresentationManager];
        rootLayer = [layerPresentationManager rootLayer];
        sublayers = [rootLayer sublayers];

        v11 = [sublayers countByEnumeratingWithState:&v15 objects:v23 count:16];
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
                objc_enumerationMutation(sublayers);
              }

              [*(*(&v15 + 1) + 8 * v14++) setNeedsDisplay];
            }

            while (v12 != v14);
            v12 = [sublayers countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [pageControllers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }
}

- (void)setOverlayShouldPixelate:(BOOL)pixelate
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->overlayShouldPixelate != pixelate)
  {
    pixelateCopy = pixelate;
    self->overlayShouldPixelate = pixelate;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    pageControllers = [(AKController *)self pageControllers];
    v5 = [pageControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(pageControllers);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 setShouldPixelate:pixelateCopy];
          if ([v9 relinquishablesAreLoaded])
          {
            layerPresentationManager = [v9 layerPresentationManager];
            [layerPresentationManager setShouldPixelate:pixelateCopy];
          }
        }

        v6 = [pageControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)editTextAnnotation:(id)annotation selectAllText:(BOOL)text
{
  textCopy = text;
  annotationCopy = annotation;
  v8 = [(AKController *)self pageControllerForAnnotation:annotationCopy];
  textEditorController = [(AKController *)self textEditorController];
  [textEditorController beginEditingAnnotation:annotationCopy withPageController:v8 selectAllText:textCopy];
}

- (void)endEditingTextAnnotation
{
  textEditorController = [(AKController *)self textEditorController];
  isEditing = [textEditorController isEditing];

  if (isEditing)
  {
    textEditorController2 = [(AKController *)self textEditorController];
    [textEditorController2 endEditing];
  }
}

- (void)commitEditing
{
  textEditorController = [(AKController *)self textEditorController];
  [textEditorController commitToModelWithoutEndingEditing];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:AKControllerWillSaveNotification object:self];
}

- (int64_t)currentExifOrientationForPageAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v5 = [pageControllers objectAtIndex:index];

  currentModelToScreenExifOrientation = [v5 currentModelToScreenExifOrientation];
  return currentModelToScreenExifOrientation;
}

- (double)currentModelBaseScaleFactorForPageAtIndex:(unint64_t)index
{
  pageControllers = [(AKController *)self pageControllers];
  v5 = [pageControllers objectAtIndex:index];

  [v5 modelBaseScaleFactor];
  v7 = v6;

  return v7;
}

- (CGRect)contentAlignedRectForRect:(CGRect)rect onPageAtIndex:(unint64_t)index
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pageControllers = [(AKController *)self pageControllers];
  v10 = [pageControllers objectAtIndex:index];

  geometryHelper = [v10 geometryHelper];
  [geometryHelper contentAlignedRectForRect:{x, y, width, height}];
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

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  mainEventHandler = [(AKController *)self mainEventHandler];
  v6 = [mainEventHandler mainHandleEvent:eventCopy orRecognizer:0];

  return v6;
}

- (id)tapGestureRecognizer
{
  mainEventHandler = [(AKController *)self mainEventHandler];
  tapRecognizer = [mainEventHandler tapRecognizer];

  return tapRecognizer;
}

- (id)doubleTapGestureRecognizer
{
  mainEventHandler = [(AKController *)self mainEventHandler];
  doubleTapRecognizer = [mainEventHandler doubleTapRecognizer];

  return doubleTapRecognizer;
}

- (id)pressGestureRecognizer
{
  mainEventHandler = [(AKController *)self mainEventHandler];
  pressRecognizer = [mainEventHandler pressRecognizer];

  return pressRecognizer;
}

- (id)panGestureRecognizer
{
  mainEventHandler = [(AKController *)self mainEventHandler];
  panRecognizer = [mainEventHandler panRecognizer];

  return panRecognizer;
}

- (id)rotationGestureRecognizer
{
  mainEventHandler = [(AKController *)self mainEventHandler];
  rotationRecognizer = [mainEventHandler rotationRecognizer];

  return rotationRecognizer;
}

- (void)_updateGestureDependencyPriority
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  pageControllers = [(AKController *)self pageControllers];
  v3 = [pageControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(pageControllers);
        }

        inkPageOverlayController = [*(*(&v8 + 1) + 8 * v6) inkPageOverlayController];
        [inkPageOverlayController _updateGestureDependencyPriority];

        ++v6;
      }

      while (v4 != v6);
      v4 = [pageControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)toolbarButtonItemOfType:(unint64_t)type
{
  toolbarViewController = [(AKController *)self toolbarViewController];
  v5 = [toolbarViewController _toolbarButtonItemOfType:type];

  return v5;
}

- (void)setAnnotationEditingEnabled:(BOOL)enabled
{
  self->_annotationEditingEnabled = enabled;
  if (!enabled)
  {
    textEditorController = [(AKController *)self textEditorController];
    isEditing = [textEditorController isEditing];

    if (isEditing)
    {
      textEditorController2 = [(AKController *)self textEditorController];
      [textEditorController2 endEditing];
    }

    if ([(AKController *)self supportForPencilAlwaysDrawsSatisfied])
    {
      attributeController = [(AKController *)self attributeController];
      [attributeController resetToLastDrawingInk];
    }
  }
}

- (void)setFormFillingEnabled:(BOOL)enabled
{
  self->_formFillingEnabled = enabled;
  if (!enabled)
  {
    textEditorController = [(AKController *)self textEditorController];
    isEditing = [textEditorController isEditing];

    if (isEditing)
    {
      textEditorController2 = [(AKController *)self textEditorController];
      [textEditorController2 endEditing];
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

- (BOOL)canPerformKeyCommandAction:(SEL)action withSender:(id)sender handled:(BOOL *)handled
{
  senderCopy = sender;
  if (senderCopy && [(NSArray *)self->_cachedKeyCommands containsObject:senderCopy])
  {
    if (sel_duplicate_ == action)
    {
      v12 = [(AKController *)self validateDuplicate:senderCopy];
    }

    else if (sel_delete_ == action)
    {
      v12 = [(AKController *)self validateDelete:senderCopy];
    }

    else if (sel_cut_ == action)
    {
      v12 = [(AKController *)self validateCut:senderCopy];
    }

    else if (sel_copy_ == action)
    {
      v12 = [(AKController *)self validateCopy:senderCopy];
    }

    else
    {
      if (sel_paste_ != action)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v12 = [(AKController *)self validatePaste:senderCopy];
    }

    v9 = v12;
LABEL_18:
    v10 = 1;
    if (!handled)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  if (handled)
  {
LABEL_10:
    *handled = v10;
  }

LABEL_11:

  return v9;
}

- (unint64_t)toolMode
{
  toolController = [(AKController *)self toolController];
  toolMode = [toolController toolMode];

  return toolMode;
}

- (void)setToolMode:(unint64_t)mode
{
  toolController = [(AKController *)self toolController];
  [toolController setToolMode:mode];
}

- (void)resetToDefaultToolMode
{
  toolController = [(AKController *)self toolController];
  [toolController resetToDefaultMode];
}

- (void)applyCurrentCrop
{
  if ([(AKController *)self toolMode]== 6)
  {
    modelController = [(AKController *)self modelController];
    v5 = [modelController pageModelControllerForPage:{-[AKController currentPageIndex](self, "currentPageIndex")}];

    cropAnnotation = [v5 cropAnnotation];
    [cropAnnotation setCropApplied:1];
    [(AKController *)self resetToDefaultToolMode];
  }
}

- (void)clearUndoStack
{
  undoController = [(AKController *)self undoController];
  undoManager = [undoController undoManager];
  [undoManager removeAllActions];
}

- (BOOL)supportsImageDescriptionEditing
{
  delegate = [(AKController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    supportsImageDescriptionEditing = [delegate supportsImageDescriptionEditing];
  }

  else
  {
    supportsImageDescriptionEditing = 0;
  }

  return supportsImageDescriptionEditing;
}

- (BOOL)supportsFormFill
{
  delegate = [(AKController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    supportsFormFill = [delegate supportsFormFill];
  }

  else
  {
    supportsFormFill = 0;
  }

  return supportsFormFill;
}

- (id)singleSelectedAnnotation
{
  modelController = [(AKController *)self modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  if ([allSelectedAnnotations count] == 1)
  {
    firstObject = [allSelectedAnnotations firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)hasSelectionWithEditableFillColor
{
  singleSelectedAnnotation = [(AKController *)self singleSelectedAnnotation];
  if ([singleSelectedAnnotation conformsToProtocol:&unk_2851D6420])
  {
    v3 = [singleSelectedAnnotation fillColorForOptions:0];
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
  singleSelectedAnnotation = [(AKController *)self singleSelectedAnnotation];
  if ([singleSelectedAnnotation conformsToProtocol:&unk_2851D6300])
  {
    v3 = [singleSelectedAnnotation strokeColorForOptions:0];
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
  singleSelectedAnnotation = [(AKController *)self singleSelectedAnnotation];
  if ([singleSelectedAnnotation conformsToProtocol:&unk_2851D6B08])
  {
    v3 = [singleSelectedAnnotation foregroundColorForOptions:0];
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
  modifiedImageDescription = [(AKController *)self modifiedImageDescription];
  if (!modifiedImageDescription)
  {
    delegate = [(AKController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      modifiedImageDescription = [delegate originalImageDescription];
    }

    else
    {
      modifiedImageDescription = 0;
    }
  }

  return modifiedImageDescription;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"modifiedImageDescription"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___AKController;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (void)setModifiedImageDescription:(id)description
{
  descriptionCopy = description;
  if (self->_modifiedImageDescription != descriptionCopy)
  {
    originalOrModifiedImageDescription = [(AKController *)self originalOrModifiedImageDescription];
    if ((originalOrModifiedImageDescription || -[NSString length](descriptionCopy, "length")) && ([originalOrModifiedImageDescription isEqualToString:descriptionCopy] & 1) == 0)
    {
      undoController = [(AKController *)self undoController];
      undoManager = [undoController undoManager];
      [undoManager registerUndoWithTarget:self selector:sel_setModifiedImageDescription_ object:self->_modifiedImageDescription];

      [(AKController *)self willChangeValueForKey:@"modifiedImageDescription"];
      objc_storeStrong(&self->_modifiedImageDescription, description);
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
  pageControllers = [(AKController *)self pageControllers];
  v5 = [pageControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pageControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        undoController = [(AKController *)self undoController];
        pageModelController = [v9 pageModelController];
        [undoController startObservingPageModelController:pageModelController];

        ++v8;
      }

      while (v6 != v8);
      v6 = [pageControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)undo:(id)undo
{
  if ([(AKController *)self validateUndo:0])
  {
    textEditorController = [(AKController *)self textEditorController];
    [textEditorController endEditing];

    undoController = [(AKController *)self undoController];
    undoManager = [undoController undoManager];
    [undoManager undo];
  }
}

- (BOOL)validateUndo:(id)undo
{
  undoController = [(AKController *)self undoController];
  undoManager = [undoController undoManager];

  LOBYTE(undoController) = [undoManager canUndo];
  return undoController;
}

- (void)redo:(id)redo
{
  if ([(AKController *)self validateRedo:0])
  {
    undoController = [(AKController *)self undoController];
    undoManager = [undoController undoManager];
    [undoManager redo];
  }
}

- (BOOL)validateRedo:(id)redo
{
  undoController = [(AKController *)self undoController];
  undoManager = [undoController undoManager];

  LOBYTE(undoController) = [undoManager canRedo];
  return undoController;
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  if ([(AKController *)self validateCut:0])
  {
    [(AKController *)self copy:cutCopy];
    [(AKController *)self setPasteCascadingMultiplier:0];
    [(AKController *)self delete:cutCopy];
    undoController = [(AKController *)self undoController];
    undoManager = [undoController undoManager];
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:@"Cut" value:&stru_28519E870 table:@"AKController"];
    [undoManager setActionName:v7];
  }
}

- (void)copy:(id)copy
{
  if ([(AKController *)self validateCopy:0])
  {
    modelController = [(AKController *)self modelController];
    allSelectedAnnotations = [modelController allSelectedAnnotations];

    if ([allSelectedAnnotations count])
    {
      generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
      [generalPasteboard akClearContents];
      [generalPasteboard akPasteboardSetAnnotations:allSelectedAnnotations];
      -[AKController setLastPasteboardChangeCount:](self, "setLastPasteboardChangeCount:", [generalPasteboard changeCount]);
      [(AKController *)self setPasteCascadingMultiplier:1];
    }
  }
}

- (void)paste:(id)paste
{
  if ([(AKController *)self validatePaste:0])
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    akPasteboardAnnotations = [generalPasteboard akPasteboardAnnotations];
    if ([akPasteboardAnnotations count])
    {
      changeCount = [generalPasteboard changeCount];
      if ([(AKController *)self lastPasteboardChangeCount]!= changeCount)
      {
        [(AKController *)self setLastPasteboardChangeCount:changeCount];
        [(AKController *)self setPasteCascadingMultiplier:0];
      }

      currentPageController = [(AKController *)self currentPageController];
      pageModelController = [currentPageController pageModelController];
      hasMaskBorderAnnotation = [pageModelController hasMaskBorderAnnotation];

      if (hasMaskBorderAnnotation)
      {
        v9 = [akPasteboardAnnotations indexesOfObjectsPassingTest:&unk_28519E670];
        v10 = [akPasteboardAnnotations objectsAtIndexes:v9];

        akPasteboardAnnotations = v10;
      }

      if ([akPasteboardAnnotations count])
      {
        [AKToolController cascadeAnnotations:akPasteboardAnnotations onPageController:currentPageController forPaste:1];
        pageModelController2 = [currentPageController pageModelController];
        v12 = [pageModelController2 mutableArrayValueForKey:@"annotations"];
        [v12 addObjectsFromArray:akPasteboardAnnotations];

        pageModelController3 = [currentPageController pageModelController];
        v14 = [pageModelController3 mutableSetValueForKey:@"selectedAnnotations"];
        v15 = [MEMORY[0x277CBEB98] setWithArray:akPasteboardAnnotations];
        [v14 setSet:v15];

        undoController = [(AKController *)self undoController];
        undoManager = [undoController undoManager];
        v18 = +[AKController akBundle];
        v19 = [v18 localizedStringForKey:@"Paste" value:&stru_28519E870 table:@"AKController"];
        [undoManager setActionName:v19];
      }
    }
  }
}

- (BOOL)validatePaste:(id)paste
{
  pasteCopy = paste;
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  if ([generalPasteboard akPasteboardContainsAnnotations])
  {
    currentPageController = [(AKController *)self currentPageController];
    pageModelController = [currentPageController pageModelController];
    hasMaskBorderAnnotation = [pageModelController hasMaskBorderAnnotation];

    if (hasMaskBorderAnnotation)
    {
      akPasteboardAnnotations = [generalPasteboard akPasteboardAnnotations];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F44A76C;
      v12[3] = &unk_278C7BCC0;
      v12[4] = &v13;
      [akPasteboardAnnotations enumerateObjectsUsingBlock:v12];
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

- (void)delete:(id)delete
{
  if ([(AKController *)self validateDelete:0])
  {
    modelController = [(AKController *)self modelController];
    [modelController deleteAllSelectedAnnotations];

    undoController = [(AKController *)self undoController];
    undoManager = [undoController undoManager];
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:@"Delete" value:&stru_28519E870 table:@"AKController"];
    [undoManager setActionName:v7];
  }
}

- (BOOL)validateDelete:(id)delete
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(AKController *)self _validateCutCopyDelete])
  {
    return 0;
  }

  textEditorController = [(AKController *)self textEditorController];
  isEditing = [textEditorController isEditing];

  if (!isEditing)
  {
    return 1;
  }

  modelController = [(AKController *)self modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  v8 = [allSelectedAnnotations indexesOfObjectsPassingTest:&unk_28519E690];
  v9 = [allSelectedAnnotations objectsAtIndexes:v8];

  memset(v15, 0, sizeof(v15));
  if ([v9 countByEnumeratingWithState:v15 objects:v16 count:16])
  {
    v10 = **(&v15[0] + 1);
    textEditorController2 = [(AKController *)self textEditorController];
    annotation = [textEditorController2 annotation];

    LOBYTE(textEditorController2) = [annotation isEqual:v10];
    v13 = textEditorController2 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)duplicate:(id)duplicate
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(AKController *)self validateDuplicate:duplicate])
  {
    modelController = [(AKController *)self modelController];
    allSelectedAnnotations = [modelController allSelectedAnnotations];

    v6 = [allSelectedAnnotations indexesOfObjectsPassingTest:&unk_28519E6B0];
    v7 = [allSelectedAnnotations objectsAtIndexes:v6];

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

      currentPageController = [(AKController *)self currentPageController];
      lastCreationCascadingPageController = [(AKController *)self lastCreationCascadingPageController];
      creationCascadingMultiplier = [(AKController *)self creationCascadingMultiplier];
      [(AKController *)self setLastCreationCascadingPageController:currentPageController];
      [(AKController *)self setCreationCascadingMultiplier:1];
      [AKToolController cascadeAnnotations:v8 onPageController:currentPageController forPaste:0];
      [(AKController *)self setLastCreationCascadingPageController:lastCreationCascadingPageController];
      [(AKController *)self setCreationCascadingMultiplier:creationCascadingMultiplier];
      pageModelController = [currentPageController pageModelController];
      v20 = [pageModelController mutableArrayValueForKey:@"annotations"];
      [v20 addObjectsFromArray:v8];

      pageModelController2 = [currentPageController pageModelController];
      v22 = [pageModelController2 mutableSetValueForKey:@"selectedAnnotations"];
      v23 = [MEMORY[0x277CBEB98] setWithArray:v8];
      [v22 setSet:v23];

      undoController = [(AKController *)self undoController];
      undoManager = [undoController undoManager];
      v26 = +[AKController akBundle];
      v27 = [v26 localizedStringForKey:@"Duplicate" value:&stru_28519E870 table:@"AKController"];
      [undoManager setActionName:v27];
    }
  }
}

- (BOOL)validateDuplicate:(id)duplicate
{
  v24 = *MEMORY[0x277D85DE8];
  modelController = [(AKController *)self modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  v6 = [allSelectedAnnotations indexesOfObjectsPassingTest:&unk_28519E6D0];
  v7 = [allSelectedAnnotations objectsAtIndexes:v6];

  textEditorController = [(AKController *)self textEditorController];
  LODWORD(v6) = [textEditorController isEditing];

  if (v6)
  {
    textEditorController2 = [(AKController *)self textEditorController];
    annotation = [textEditorController2 annotation];

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

          if ([annotation isEqual:{*(*(&v19 + 1) + 8 * i), v19}])
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

- (void)selectAll:(id)all
{
  currentPageController = [(AKController *)self currentPageController];
  pageModelController = [currentPageController pageModelController];
  [pageModelController selectAllAnnotations];
}

- (BOOL)validateSelectAll:(id)all
{
  currentPageController = [(AKController *)self currentPageController];
  pageModelController = [currentPageController pageModelController];

  annotations = [pageModelController annotations];
  v6 = [annotations count];

  cropAnnotation = [pageModelController cropAnnotation];

  return v6 - (cropAnnotation != 0) > 0;
}

- (void)editTextAnnotation:(id)annotation
{
  v20 = *MEMORY[0x277D85DE8];
  modelController = [(AKController *)self modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allSelectedAnnotations;
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
    textEditorController = [(AKController *)self textEditorController];
    [textEditorController beginEditingAnnotation:v8 withPageController:v13 selectAllText:0];
  }

LABEL_12:

LABEL_13:
}

- (BOOL)validateEditTextAnnotation:(id)annotation
{
  modelController = [(AKController *)self modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];

  if ([allSelectedAnnotations count] == 1)
  {
    firstObject = [allSelectedAnnotations firstObject];
    v7 = [(AKController *)self canBeginEditingTextAnnotation:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canBeginEditingTextAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if ((-[AKController annotationEditingEnabled](self, "annotationEditingEnabled") || -[AKController formFillingEnabled](self, "formFillingEnabled")) && [annotationCopy conformsToAKTextAnnotationProtocol])
  {
    v5 = annotationCopy;
    textEditorController = [(AKController *)self textEditorController];
    isEditing = [textEditorController isEditing];

    if (isEditing)
    {
      v8 = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      annotationText = [v5 annotationText];
      v11 = [annotationText length] != 0;

      v8 = isKindOfClass | v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)setAvailableHeadroom:(double)headroom
{
  if (self->_availableHeadroom != headroom)
  {
    toolbarViewController = [(AKController *)self toolbarViewController];
    [toolbarViewController revalidateHDRandPropagateChanges:0];

    self->_availableHeadroom = headroom;
    [(AKController *)self redraw];
    attributeController = [(AKController *)self attributeController];
    [attributeController _syncAttributesFromSelectedAnnotationsToUI];
  }
}

- (void)showSelectionMenu:(id)menu
{
  v44[2] = *MEMORY[0x277D85DE8];
  currentPageController = [(AKController *)self currentPageController];
  overlayView = [currentPageController overlayView];
  [overlayView becomeFirstResponder];

  pageModelController = [currentPageController pageModelController];
  selectedAnnotations = [pageModelController selectedAnnotations];

  if ([selectedAnnotations count])
  {
    [(AKController *)self _popoverAnchorFrameInModelForAnnotations:selectedAnnotations];
    [currentPageController convertRectFromModelToOverlay:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [currentPageController visibleRectOfOverlay];
    [currentPageController convertRectFromModelToOverlay:?];
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

    overlayView2 = [currentPageController overlayView];
    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
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
    [mEMORY[0x277D75718] setMenuItems:v42];

    if ([mEMORY[0x277D75718] isMenuVisible])
    {
      [mEMORY[0x277D75718] update];
    }

    else if (([overlayView2 isFirstResponder] & 1) == 0)
    {
      [overlayView2 becomeFirstResponder];
      [mEMORY[0x277D75718] showMenuFromView:overlayView2 rect:{v9, v26, v27, v24}];
      [overlayView2 resignFirstResponder];
      goto LABEL_19;
    }

    [mEMORY[0x277D75718] showMenuFromView:overlayView2 rect:{v9, v26, v27, v24}];
LABEL_19:

    goto LABEL_20;
  }

  mEMORY[0x277D75718]2 = [MEMORY[0x277D75718] sharedMenuController];
  [mEMORY[0x277D75718]2 hideMenu];

LABEL_20:
}

- (void)hideSelectionMenu:(id)menu
{
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  [mEMORY[0x277D75718] hideMenu];
}

- (void)highlightableSelectionChanged
{
  toolController = [(AKController *)self toolController];
  toolMode = [toolController toolMode];

  if (toolMode == 3)
  {
    highlightAnnotationController = [(AKController *)self highlightAnnotationController];
    [highlightAnnotationController continueHighlighting];
  }
}

- (void)highlightableSelectionWillBeginChanging
{
  toolController = [(AKController *)self toolController];
  toolMode = [toolController toolMode];

  if (toolMode == 3)
  {
    highlightAnnotationController = [(AKController *)self highlightAnnotationController];
    [highlightAnnotationController beginContinuousHighlighting];
  }
}

- (void)highlightableSelectionDidEndChanging
{
  toolController = [(AKController *)self toolController];
  toolMode = [toolController toolMode];

  if (toolMode == 3)
  {
    highlightAnnotationController = [(AKController *)self highlightAnnotationController];
    [highlightAnnotationController endContinuousHighlighting];
  }
}

- (void)setSelectNewlyCreatedAnnotations:(BOOL)annotations
{
  annotationsCopy = annotations;
  self->_selectNewlyCreatedAnnotations = annotations;
  legacyDoodleController = [(AKController *)self legacyDoodleController];
  [legacyDoodleController setSelectNewlyCreatedAnnotations:annotationsCopy];
}

- (void)addPopupToAnnotation:(id)annotation openPopup:(BOOL)popup
{
  popupCopy = popup;
  annotationCopy = annotation;
  v6 = [(AKController *)self pageControllerForAnnotation:?];
  v7 = v6;
  if (v6)
  {
    [v6 addPopupToAnnotation:annotationCopy openPopup:popupCopy];
  }
}

- (void)removeNoteFromAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v4 = [(AKController *)self pageControllerForAnnotation:?];
  v5 = v4;
  if (v4)
  {
    [v4 removeNoteFromAnnotation:annotationCopy];
  }
}

- (PKToolPicker)toolPicker
{
  modernToolbarView = [(AKController *)self modernToolbarView];
  toolPicker = [modernToolbarView toolPicker];

  return toolPicker;
}

+ (void)performBlockOnMainThread:(id)thread
{
  v3 = MEMORY[0x277CCACC8];
  block = thread;
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
  modelController = [(AKController *)self modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];
  v4 = [allSelectedAnnotations count] != 0;

  return v4;
}

- (BOOL)shouldDrawVariableStrokeDoodles
{
  if ([objc_opt_class() canConnectToStylus])
  {
    peripheralAvailabilityManager = [(AKController *)self peripheralAvailabilityManager];
    currentAvailability = [peripheralAvailabilityManager currentAvailability];

    if (currentAvailability == 1)
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

- (void)_toolpicker_setColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  v19 = colorCopy;
  currentPageController = [(AKController *)selfCopy currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];
  v9 = [selectedAnnotations count];

  if (!v9)
  {
    attributeController = [(AKController *)selfCopy attributeController];
    v14 = [attributeController ink];

    v15 = MEMORY[0x277CD9638];
    identifier = [(AKMinimalTextColorUserInterfaceItem *)v14 identifier];
    [(AKMinimalTextColorUserInterfaceItem *)v14 weight];
    v17 = [v15 inkWithIdentifier:identifier color:v19 weight:?];

    v18 = [(AKMinimalUserInterfaceItem *)[AKMinimalInkChooserUserInterfaceItem alloc] initWithTag:765300];
    [(AKMinimalInkChooserUserInterfaceItem *)v18 setInk:v17];
    [(AKController *)selfCopy performActionForSender:v18];

LABEL_8:
    goto LABEL_10;
  }

  v10 = [AKToolbarUtilities attributeTagForCurrentSelectionState:selfCopy];
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
    [(AKController *)selfCopy performActionForSender:v14];
    goto LABEL_8;
  }

  NSLog(&cfstr_SCalledWithInc.isa, "[AKController _toolpicker_setColor:]", v10);
LABEL_10:
}

- (id)_toolpicker_color
{
  attributeController = [(AKController *)self attributeController];
  strokeColor = [attributeController strokeColor];

  return strokeColor;
}

- (void)_toolpicker_setInkIdentifier:(id)identifier
{
  selfCopy = self;
  identifierCopy = identifier;
  attributeController = [(AKController *)selfCopy attributeController];
  v6 = [attributeController ink];

  v7 = MEMORY[0x277CD9638];
  color = [v6 color];
  [v6 weight];
  v9 = [v7 inkWithIdentifier:identifierCopy color:color weight:?];

  v10 = [(AKMinimalUserInterfaceItem *)[AKMinimalInkChooserUserInterfaceItem alloc] initWithTag:765300];
  [(AKMinimalInkChooserUserInterfaceItem *)v10 setInk:v9];
  [(AKController *)selfCopy performActionForSender:v10];
  toolController = [(AKController *)selfCopy toolController];
  toolMode = [toolController toolMode];

  if (toolMode != 4 && [(AKController *)selfCopy annotationEditingEnabled])
  {
    v13 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764017];
    [(AKController *)selfCopy performActionForSender:v13];
  }
}

- (id)_toolpicker_inkIdentifier
{
  attributeController = [(AKController *)self attributeController];
  v3 = [attributeController ink];
  identifier = [v3 identifier];

  return identifier;
}

- (id)currentPageController
{
  pageControllers = [(AKController *)self pageControllers];
  v4 = [pageControllers count];

  if (v4)
  {
    pageControllers2 = [(AKController *)self pageControllers];
    v6 = [pageControllers2 objectAtIndex:{-[AKController currentPageIndex](self, "currentPageIndex")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pageControllerForPageModelController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pageControllers = [(AKController *)self pageControllers];
  v6 = [pageControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(pageControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        pageModelController = [v9 pageModelController];

        if (pageModelController == controllerCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pageControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)pageControllerForAnnotation:(id)annotation
{
  v20 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  modelController = [(AKController *)self modelController];
  pageModelControllers = [modelController pageModelControllers];

  v7 = [pageModelControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(pageModelControllers);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 containsAnnotation:annotationCopy])
        {
          pageModelControllersToPageControllers = [(AKController *)self pageModelControllersToPageControllers];
          v12 = [pageModelControllersToPageControllers objectForKey:v11];

          goto LABEL_11;
        }
      }

      v8 = [pageModelControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (CGRect)_popoverAnchorFrameInModelForAnnotations:(id)annotations
{
  v37 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  if ([annotationsCopy count] == 1)
  {
    anyObject = [annotationsCopy anyObject];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [anyObject midPoint];
      v6 = v26 + -5.0;
      MidY = v27 + -5.0;
      v12 = 10.0;
      v10 = 10.0;
    }

    else
    {
      [anyObject drawingBounds];
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
    v17 = annotationsCopy;
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
  toolbarViewController = [(AKController *)self toolbarViewController];
  isPresentingPopover = [toolbarViewController isPresentingPopover];

  if (isPresentingPopover)
  {
    return 1;
  }

  modernToolbarView = [(AKController *)self modernToolbarView];
  isPresentingPopover2 = [modernToolbarView isPresentingPopover];

  return isPresentingPopover2;
}

- (void)setHideAllAdornments:(BOOL)adornments
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_hideAllAdornments != adornments)
  {
    adornmentsCopy = adornments;
    self->_hideAllAdornments = adornments;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    pageControllers = [(AKController *)self pageControllers];
    v6 = [pageControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(pageControllers);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 relinquishablesAreLoaded])
          {
            layerPresentationManager = [v10 layerPresentationManager];
            [layerPresentationManager setAdornmentsHidden:adornmentsCopy];
          }
        }

        v7 = [pageControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_pageModelControllerSelectedAnnotationsChangedNotification:(id)notification
{
  v17[1] = *MEMORY[0x277D85DE8];
  object = [notification object];
  modelController = [(AKController *)self modelController];
  pageModelControllers = [modelController pageModelControllers];
  v7 = [pageModelControllers containsObject:object];

  if (v7)
  {
    v16 = AKSelectionChangedPageModelControllerKey;
    v17[0] = object;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:AKSelectionChangedNotification object:self userInfo:v8];

    [(AKController *)self _updateGestureDependencyPriority];
    modelController2 = [(AKController *)self modelController];
    allSelectedAnnotations = [modelController2 allSelectedAnnotations];

    if ([allSelectedAnnotations count])
    {
      currentPageController = [(AKController *)self currentPageController];
      overlayView = [currentPageController overlayView];

      if (overlayView && ([overlayView isFirstResponder] & 1) == 0)
      {
        firstResponder = [overlayView firstResponder];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([firstResponder isDescendantOfView:overlayView] & 1) == 0)
        {
          modernToolbarView = [(AKController *)self modernToolbarView];
          [modernToolbarView updateCurrentOverlaysToolPickerVisibility];

          [overlayView becomeFirstResponder];
        }
      }
    }

    else
    {
      [(AKController *)self hideSelectionMenu:0];
    }
  }
}

- (void)strokeAddedNotification:(id)notification
{
  object = [notification object];
  if (object == self)
  {
    v8 = object;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    statisticsLogger = [(AKController *)self statisticsLogger];
    [statisticsLogger logInkAnnotationStrokeAdded:v6];

    object = v8;
  }
}

- (void)beginLogging:(id)logging documentType:(id)type
{
  loggingCopy = logging;
  typeCopy = type;
  if (!loggingCopy || !typeCopy)
  {
    NSLog(&cfstr_WarningMissing.isa);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_strokeAddedNotification_ name:off_27E399B30 object:0];

  statisticsLogger = [(AKController *)self statisticsLogger];
  [statisticsLogger setClientPrefix:loggingCopy];

  statisticsLogger2 = [(AKController *)self statisticsLogger];
  [statisticsLogger2 setDocumentType:typeCopy];

  statisticsLogger3 = [(AKController *)self statisticsLogger];
  [statisticsLogger3 resetLogging];
}

- (void)endLogging
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:off_27E399B30 object:0];

  statisticsLogger = [(AKController *)self statisticsLogger];
  [statisticsLogger logDocumentSaved];

  statisticsLogger2 = [(AKController *)self statisticsLogger];
  [statisticsLogger2 resetLogging];
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