@interface AKSidecarController
+ (BOOL)validateInitialMessage:(id)message applicationData:(id)data;
- (AKController)controller;
- (AKSidecarController)initWithController:(id)controller;
- (AKSidecarControllerDelegate)delegate;
- (BOOL)_removeAnnotationUUID:(id)d fromPageModelController:(id)controller;
- (BOOL)_replaceAnnotation:(id)annotation inPageModelController:(id)controller;
- (BOOL)handleLiveStrokeBegan:(id)began onInkOverlayView:(id)view;
- (id)_annotationWithUUID:(id)d inPageModelController:(id)controller;
- (id)_inkAnnotationFromPageModelController:(id)controller;
- (id)_translateColorEncoding:(id)encoding;
- (id)_translateObservationKeys:(id)keys;
- (unint64_t)_indexOfAnnotationUUID:(id)d annotations:(id)annotations;
- (void)_actuallySendAnnotationChange;
- (void)_annotation:(id)_annotation addedToPageController:(unint64_t)controller selected:(BOOL)selected atIndex:(unint64_t)index;
- (void)_annotation:(id)_annotation modifiedInPageController:(unint64_t)controller properties:(id)properties;
- (void)_annotation:(id)_annotation removedFromPageController:(unint64_t)controller;
- (void)_annotationsWereAdded:(id)added onPageController:(id)controller isUndoingRedoing:(BOOL)redoing;
- (void)_annotationsWillBeRemoved:(id)removed onPageController:(id)controller isUndoingRedoing:(BOOL)redoing;
- (void)_coalesceAnnotationChange:(id)change keyChange:(id)keyChange;
- (void)_handleAnnotationAdd:(id)add;
- (void)_handleAnnotationModify:(id)modify;
- (void)_handleAnnotationRemove:(id)remove;
- (void)_handleInternalFailure;
- (void)_handleLiveStrokeUpdate;
- (void)_handleRedo:(id)redo;
- (void)_handleSelectionChanged:(id)changed;
- (void)_handleUndo:(id)undo;
- (void)_handleUndoCheckpoint:(id)checkpoint;
- (void)_registerObservers;
- (void)_selectionChangedOnPageController:(id)controller;
- (void)_sendDictionary:(id)dictionary;
- (void)_startChangeUndoGroup;
- (void)_startObservingAnnotations:(id)annotations;
- (void)_stopObservingAnnotations:(id)annotations;
- (void)_unregisterObservers;
- (void)dealloc;
- (void)done;
- (void)handleIncomingOPACKObject:(id)object;
- (void)handleLiveStrokeComplete:(BOOL)complete;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setShouldObserveEdits:(BOOL)edits;
- (void)startObservingPageModelController:(id)controller;
- (void)stopObservingPageModelController:(id)controller;
@end

@implementation AKSidecarController

+ (BOOL)validateInitialMessage:(id)message applicationData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = messageCopy;
    v8 = [v7 objectForKeyedSubscript:&unk_2851BB6D0];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    v10 = [v7 objectForKeyedSubscript:&unk_2851BB6E8];
    unsignedIntegerValue2 = [v10 unsignedIntegerValue];

    v12 = [v7 objectForKeyedSubscript:&unk_2851BB700];
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = dataCopy[2](dataCopy, v12);
LABEL_14:

          goto LABEL_15;
        }

        v14 = sub_23F4A66C0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_23F4BD5FC();
        }
      }

      else
      {
        v14 = sub_23F4A66C0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_23F4BD638();
        }
      }
    }

    else
    {
      v14 = sub_23F4A66C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_23F4BD6B0();
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (AKSidecarController)initWithController:(id)controller
{
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = AKSidecarController;
  v5 = [(AKSidecarController *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
    v7 = [MEMORY[0x277CBEB58] set];
    observedPageModelControllers = v6->_observedPageModelControllers;
    v6->_observedPageModelControllers = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    observedAnnotations = v6->_observedAnnotations;
    v6->_observedAnnotations = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    coalescingAnnotationKeys = v6->_coalescingAnnotationKeys;
    v6->_coalescingAnnotationKeys = v11;

    v6->_updatingModel = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    undoController = [controllerCopy undoController];
    undoManager = [undoController undoManager];

    objc_initWeak(&location, v6);
    [defaultCenter addObserver:v6 selector:sel__handleUndo_ name:*MEMORY[0x277CCA810] object:undoManager];
    [defaultCenter addObserver:v6 selector:sel__handleRedo_ name:*MEMORY[0x277CCA808] object:undoManager];
    [defaultCenter addObserver:v6 selector:sel__handleUndoCheckpoint_ name:*MEMORY[0x277CCA7F0] object:undoManager];
    [defaultCenter addObserver:v6 selector:sel_observePageControllerRequestsDisableRegistration_ name:off_27E39A390[0] object:0];
    [defaultCenter addObserver:v6 selector:sel_observePageControllerRequestsEnableRegistration_ name:off_27E39A398 object:0];
    v16 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, MEMORY[0x277D85CD0]);
    coalescingAnnotationSource = v6->_coalescingAnnotationSource;
    v6->_coalescingAnnotationSource = v16;

    v18 = v6->_coalescingAnnotationSource;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_23F4A697C;
    v20[3] = &unk_278C7B8F8;
    objc_copyWeak(&v21, &location);
    dispatch_source_set_event_handler(v18, v20);
    dispatch_activate(v6->_coalescingAnnotationSource);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AKSidecarController *)self _unregisterObservers];
  coalescingAnnotationSource = self->_coalescingAnnotationSource;
  if (coalescingAnnotationSource)
  {
    dispatch_source_cancel(coalescingAnnotationSource);
  }

  v5.receiver = self;
  v5.super_class = AKSidecarController;
  [(AKSidecarController *)&v5 dealloc];
}

- (void)setShouldObserveEdits:(BOOL)edits
{
  if (self->_shouldObserveEdits != edits)
  {
    self->_shouldObserveEdits = edits;
    if (edits)
    {
      MEMORY[0x2821F9670](self, sel__registerObservers);
    }

    else
    {
      [(AKSidecarController *)self _unregisterObservers];
    }
  }
}

- (void)_registerObservers
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained addObserver:self forKeyPath:@"currentPageIndex" options:3 context:@"AKSidecarController.currentPageIndex"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  modelController = [WeakRetained modelController];
  pageModelControllers = [modelController pageModelControllers];

  v6 = [pageModelControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(pageModelControllers);
        }

        [(AKSidecarController *)self startObservingPageModelController:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [pageModelControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_unregisterObservers
{
  v15 = *MEMORY[0x277D85DE8];
  allObjects = [(NSMutableSet *)self->_observedAnnotations allObjects];
  [(AKSidecarController *)self _stopObservingAnnotations:allObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableSet *)self->_observedPageModelControllers copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AKSidecarController *)self stopObservingPageModelController:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained removeObserver:self forKeyPath:@"currentPageIndex" context:@"AKSidecarController.currentPageIndex"];

  [(NSMutableSet *)self->_observedPageModelControllers removeAllObjects];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(AKSidecarController *)self setShouldObserveEdits:delegate != 0];
}

- (void)done
{
  v3 = sub_23F4A66C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23F3EC000, v3, OS_LOG_TYPE_DEFAULT, "Client finished session", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sidecarControllerCancelled:self];
}

- (void)_handleInternalFailure
{
  v3 = sub_23F4A66C0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_23F4BD700();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sidecarControllerCancelled:self];
}

- (void)startObservingPageModelController:(id)controller
{
  if (self->_shouldObserveEdits)
  {
    controllerCopy = controller;
    annotations = [controllerCopy annotations];
    [(AKSidecarController *)self _startObservingAnnotations:annotations];

    [controllerCopy addObserver:self forKeyPath:@"annotations" options:11 context:@"AKSidecarController.modelAnnotationsObservationContext"];
    [controllerCopy addObserver:self forKeyPath:@"selectedAnnotations" options:1 context:@"AKSidecarController.selectedAnnotationsObservationContext"];
    [(NSMutableSet *)self->_observedPageModelControllers addObject:controllerCopy];
  }
}

- (void)stopObservingPageModelController:(id)controller
{
  controllerCopy = controller;
  if ([(NSMutableSet *)self->_observedPageModelControllers containsObject:?])
  {
    [controllerCopy removeObserver:self forKeyPath:@"annotations" context:@"AKSidecarController.modelAnnotationsObservationContext"];
    [controllerCopy removeObserver:self forKeyPath:@"selectedAnnotations" context:@"AKSidecarController.selectedAnnotationsObservationContext"];
    [(NSMutableSet *)self->_observedPageModelControllers removeObject:controllerCopy];
    annotations = [controllerCopy annotations];
    [(AKSidecarController *)self _stopObservingAnnotations:annotations];
  }
}

- (unint64_t)_indexOfAnnotationUUID:(id)d annotations:(id)annotations
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  annotationsCopy = annotations;
  v7 = [annotationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v9 += v8;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(annotationsCopy);
      }

      uUID = [*(*(&v16 + 1) + 8 * v11) UUID];
      v14 = [uUID isEqualToString:dCopy];

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [annotationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)_annotationWithUUID:(id)d inPageModelController:(id)controller
{
  dCopy = d;
  annotations = [controller annotations];
  v8 = [(AKSidecarController *)self _indexOfAnnotationUUID:dCopy annotations:annotations];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [annotations objectAtIndex:v8];
  }

  return v9;
}

- (BOOL)_replaceAnnotation:(id)annotation inPageModelController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  uUID = [annotationCopy UUID];
  annotations = [controllerCopy annotations];
  v10 = [(AKSidecarController *)self _indexOfAnnotationUUID:uUID annotations:annotations];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    annotations2 = [controllerCopy annotations];
    [controllerCopy insertObject:annotationCopy inAnnotationsAtIndex:{objc_msgSend(annotations2, "count")}];
  }

  else
  {
    [controllerCopy replaceObjectInAnnotationsAtIndex:v10 withObject:annotationCopy];
  }

  return 1;
}

- (id)_inkAnnotationFromPageModelController:(id)controller
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objc_opt_class();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  annotations = [controllerCopy annotations];
  reverseObjectEnumerator = [annotations reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          uUID = [v10 UUID];
          goto LABEL_11;
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  uUID = 0;
LABEL_11:

  return uUID;
}

- (BOOL)_removeAnnotationUUID:(id)d fromPageModelController:(id)controller
{
  controllerCopy = controller;
  dCopy = d;
  annotations = [controllerCopy annotations];
  v9 = [(AKSidecarController *)self _indexOfAnnotationUUID:dCopy annotations:annotations];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [controllerCopy removeObjectFromAnnotationsAtIndex:v9];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)handleIncomingOPACKObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v6 = objectCopy;
    v7 = [v6 objectForKeyedSubscript:&unk_2851BB718];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    v9 = sub_23F4A66C0();
    v10 = v9;
    if (!unsignedIntegerValue)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_23F4BD850();
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_23F4BD778();
    }

    self->_updatingModel = 1;
    if (unsignedIntegerValue > 999)
    {
      if (unsignedIntegerValue > 1999)
      {
        if (unsignedIntegerValue > 2001)
        {
          if (unsignedIntegerValue == 2002)
          {
            [(AKSidecarController *)self _handleAnnotationModify:v6];
          }

          else if (unsignedIntegerValue == 2003)
          {
            [(AKSidecarController *)self _handleSelectionChanged:v6];
          }
        }

        else if (unsignedIntegerValue == 2000)
        {
          [(AKSidecarController *)self _handleAnnotationAdd:v6];
        }

        else
        {
          [(AKSidecarController *)self _handleAnnotationRemove:v6];
        }
      }

      else if ((unsignedIntegerValue - 1000) < 4)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

    if (unsignedIntegerValue > 2)
    {
      if (unsignedIntegerValue != 3)
      {
        if (unsignedIntegerValue == 4)
        {
          undoController = [WeakRetained undoController];
          undoManager = [undoController undoManager];
          self->_sendingCheckpoint = 1;
          [undoController setExternalSourceTrackingChanged:0];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:*MEMORY[0x277CCA7F0] object:undoManager];

          self->_sendingCheckpoint = 0;
        }

        goto LABEL_32;
      }

      self->_handlingUndoRedo = 1;
      undoController2 = [WeakRetained undoController];
      undoManager2 = [undoController2 undoManager];
      [undoManager2 redo];
    }

    else
    {
      if (unsignedIntegerValue == 1)
      {
LABEL_8:
        v10 = sub_23F4A66C0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_23F4BD7E0();
        }

LABEL_14:

        [(AKSidecarController *)self _handleInternalFailure];
LABEL_33:

        goto LABEL_34;
      }

      if (unsignedIntegerValue != 2)
      {
LABEL_32:
        self->_updatingModel = 0;
        goto LABEL_33;
      }

      self->_handlingUndoRedo = 1;
      undoController2 = [WeakRetained undoController];
      undoManager2 = [undoController2 undoManager];
      [undoManager2 undo];
    }

    self->_handlingUndoRedo = 0;
    goto LABEL_32;
  }

  WeakRetained = sub_23F4A66C0();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    sub_23F4BD73C();
  }

LABEL_34:
}

- (void)_handleAnnotationAdd:(id)add
{
  addCopy = add;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  modelController = [WeakRetained modelController];
  pageModelControllers = [modelController pageModelControllers];

  v8 = [addCopy objectForKeyedSubscript:&unk_2851BB730];
  v9 = [addCopy objectForKeyedSubscript:&unk_2851BB748];
  v10 = [addCopy objectForKeyedSubscript:&unk_2851BB760];
  v11 = [addCopy objectForKeyedSubscript:&unk_2851BB778];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v12 = [AKAnnotation annotationWithData:v8];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    unsignedIntegerValue2 = [v10 unsignedIntegerValue];
    v35 = v12;
    if (v12)
    {
      v32 = unsignedIntegerValue2;
      if (unsignedIntegerValue < [pageModelControllers count])
      {
        modelController2 = [WeakRetained modelController];
        v34 = [modelController2 pageModelControllerForPage:unsignedIntegerValue];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = sub_23F4A66C0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_23F4BDA54();
          }

          inkCanvasAnnotation = [v34 inkCanvasAnnotation];

          if (inkCanvasAnnotation)
          {
            undoController = [WeakRetained undoController];
            undoManager = [undoController undoManager];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = sub_23F4A7C64;
            v42[3] = &unk_278C7B810;
            v43 = v34;
            v44 = v35;
            sub_23F4A7BAC(undoManager, v42);

            [(AKSidecarController *)self _startChangeUndoGroup];
            v20 = v43;
          }

          else
          {
            pageControllers = [WeakRetained pageControllers];
            v20 = [pageControllers objectAtIndex:unsignedIntegerValue];

            drawing = [v35 drawing];
            inkPageOverlayController = [v20 inkPageOverlayController];
            inkOverlayView = [inkPageOverlayController inkOverlayView];
            canvasView = [inkOverlayView canvasView];
            [canvasView setDrawing:drawing];
          }
        }

        else
        {
          annotations = [v34 annotations];
          v24 = [annotations count];

          v25 = sub_23F4A66C0();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            sub_23F4BD9B0(v35, v25);
          }

          undoController2 = [WeakRetained undoController];
          undoManager2 = [undoController2 undoManager];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = sub_23F4A7D24;
          v36[3] = &unk_278C7C3F0;
          v37 = v34;
          v38 = v35;
          v40 = v32;
          v41 = v24;
          v39 = v11;
          sub_23F4A7BAC(undoManager2, v36);

          v20 = v37;
        }

        goto LABEL_25;
      }

      v22 = sub_23F4A66C0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_23F4BD940();
      }
    }

    else
    {
      v22 = sub_23F4A66C0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_23F4BDA94();
      }
    }

    [(AKSidecarController *)self _handleInternalFailure];
LABEL_25:

    goto LABEL_14;
  }

  v21 = sub_23F4A66C0();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_23F4BD8C8();
  }

  [(AKSidecarController *)self _handleInternalFailure];
LABEL_14:
}

- (void)_handleAnnotationRemove:(id)remove
{
  removeCopy = remove;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = [removeCopy objectForKeyedSubscript:&unk_2851BB790];
  v7 = [removeCopy objectForKeyedSubscript:&unk_2851BB748];
  v8 = [removeCopy objectForKeyedSubscript:&unk_2851BB7A8];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    modelController = [WeakRetained modelController];
    v11 = [modelController pageModelControllerForPage:unsignedIntegerValue];

    if ([v8 BOOLValue])
    {
      v12 = [(AKSidecarController *)self _inkAnnotationFromPageModelController:v11];

      v6 = v12;
    }

    v13 = sub_23F4A66C0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_23F4BDB48();
    }

    undoController = [WeakRetained undoController];
    undoManager = [undoController undoManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_23F4A7FF8;
    v18[3] = &unk_278C7BBF8;
    v18[4] = self;
    v6 = v6;
    v19 = v6;
    v20 = v11;
    v16 = v11;
    sub_23F4A7BAC(undoManager, v18);
  }

  else
  {
    v17 = sub_23F4A66C0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BDAD0();
    }

    [(AKSidecarController *)self _handleInternalFailure];
  }
}

- (void)_handleAnnotationModify:(id)modify
{
  v75[10] = *MEMORY[0x277D85DE8];
  modifyCopy = modify;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  modelController = [WeakRetained modelController];
  pageModelControllers = [modelController pageModelControllers];

  v75[0] = objc_opt_class();
  v75[1] = objc_opt_class();
  v75[2] = objc_opt_class();
  v75[3] = objc_opt_class();
  v75[4] = objc_opt_class();
  v75[5] = objc_opt_class();
  v75[6] = objc_opt_class();
  v75[7] = objc_opt_class();
  v75[8] = objc_opt_class();
  v75[9] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:10];
  v9 = [modifyCopy objectForKeyedSubscript:&unk_2851BB790];
  v10 = [modifyCopy objectForKeyedSubscript:&unk_2851BB748];
  v62 = modifyCopy;
  v11 = [modifyCopy objectForKeyedSubscript:&unk_2851BB7C0];
  v61 = WeakRetained;
  undoController = [WeakRetained undoController];
  undoManager = [undoController undoManager];

  v14 = v10;
  unsignedIntegerValue = [v10 unsignedIntegerValue];
  v60 = pageModelControllers;
  if (unsignedIntegerValue >= [pageModelControllers count])
  {
    v27 = sub_23F4A66C0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD940();
    }

    [(AKSidecarController *)selfCopy _handleInternalFailure];
    v18 = v11;
    v16 = v61;
    v20 = v62;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v61;
        modelController2 = [v61 modelController];
        v59 = [modelController2 pageModelControllerForPage:unsignedIntegerValue];

        v18 = v11;
        if (v11)
        {
          objc_opt_class();
          v19 = undoManager;
          v20 = v62;
          if (objc_opt_isKindOfClass())
          {
            v21 = [v62 objectForKeyedSubscript:&unk_2851BB7A8];
            v22 = [AKSecureSerializationHelper secureCodingCompliantObjectForData:v18 ofClasses:v8 withOptionalKey:0];
            v23 = [(AKSidecarController *)selfCopy _translateColorEncoding:v22];

            v24 = v23;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v21 BOOLValue])
              {
                v25 = [(AKSidecarController *)selfCopy _inkAnnotationFromPageModelController:v59];

                v26 = selfCopy;
                v9 = v25;
                v24 = v23;
              }

              else
              {
                v26 = selfCopy;
              }

              v41 = [(AKSidecarController *)v26 _annotationWithUUID:v9 inPageModelController:v59];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
                v43 = sub_23F4A66C0();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  sub_23F4BDD48();
                }

                v68[0] = MEMORY[0x277D85DD0];
                v68[1] = 3221225472;
                v68[2] = sub_23F4A896C;
                v68[3] = &unk_278C7B810;
                v69 = v42;
                v70 = v24;
                v44 = v42;
                sub_23F4A7BAC(v19, v68);
              }

              else
              {
                v45 = sub_23F4A66C0();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                {
                  sub_23F4BDCDC();
                }

                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = sub_23F4A8978;
                v64[3] = &unk_278C7BBF8;
                v65 = v61;
                v66 = v41;
                v67 = v24;
                sub_23F4A7BAC(v19, v64);
                [(AKSidecarController *)selfCopy _startChangeUndoGroup];

                v44 = v65;
              }

              v16 = v61;
              v20 = v62;
            }

            else
            {
              v40 = sub_23F4A66C0();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_23F4BDCA0();
              }

              [(AKSidecarController *)selfCopy _handleInternalFailure];
              v24 = v23;
            }

            v34 = v59;
          }

          else
          {
            v38 = sub_23F4A66C0();
            v34 = v59;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_23F4BDC28();
            }

            [(AKSidecarController *)selfCopy _handleInternalFailure];
          }

          goto LABEL_51;
        }

        v20 = v62;
        v29 = [v62 objectForKeyedSubscript:&unk_2851BB7D8];
        v30 = [v62 objectForKeyedSubscript:&unk_2851BB730];
        v31 = v29;
        objc_opt_class();
        v19 = undoManager;
        v57 = v30;
        v58 = v31;
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v39 = sub_23F4A66C0();
          v34 = v59;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_23F4BDDB4();
          }

          [(AKSidecarController *)selfCopy _handleInternalFailure];
          goto LABEL_50;
        }

        v32 = v31;
        v33 = [AKAnnotation annotationWithData:v30];
        v34 = v59;
        v56 = v33;
        if (!v33)
        {
          v46 = sub_23F4A66C0();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_23F4BDE98();
          }

          [(AKSidecarController *)selfCopy _handleInternalFailure];
          goto LABEL_49;
        }

        v35 = [v33 dictionaryWithValuesForKeys:v32];
        v36 = [v35 mutableCopy];

        v54 = [(AKSidecarController *)selfCopy _annotationWithUUID:v9 inPageModelController:v59];
        v37 = [v36 objectForKeyedSubscript:@"annotationText"];
        v55 = v36;
        if (v37)
        {
        }

        else
        {
          v47 = [v36 objectForKeyedSubscript:@"typingAttributes"];

          if (!v47)
          {
LABEL_46:
            v51 = sub_23F4A66C0();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              sub_23F4BDE2C();
            }

            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = sub_23F4A88E8;
            v71[3] = &unk_278C7BBF8;
            v72 = v61;
            v73 = v54;
            v74 = v55;
            v52 = v55;
            v53 = v54;
            sub_23F4A7BAC(v19, v71);
            [(AKSidecarController *)selfCopy _startChangeUndoGroup];

            v20 = v62;
LABEL_49:

LABEL_50:
LABEL_51:

            goto LABEL_16;
          }
        }

        v48 = v56;
        foregroundColor = [v48 foregroundColor];
        [v55 setObject:foregroundColor forKeyedSubscript:@"foregroundColor"];

        foregroundColorHDR = [v48 foregroundColorHDR];

        [v55 setObject:foregroundColorHDR forKeyedSubscript:@"foregroundColorHDR"];
        goto LABEL_46;
      }
    }

    v28 = sub_23F4A66C0();
    v18 = v11;
    v16 = v61;
    v20 = v62;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BDBB0();
    }

    [(AKSidecarController *)selfCopy _handleInternalFailure];
  }

  v19 = undoManager;
LABEL_16:
}

- (void)_handleSelectionChanged:(id)changed
{
  v38 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  modelController = [WeakRetained modelController];
  pageModelControllers = [modelController pageModelControllers];

  v8 = [changedCopy objectForKeyedSubscript:&unk_2851BB748];
  v9 = [changedCopy objectForKeyedSubscript:&unk_2851BB7F0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v25 = sub_23F4A66C0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BDED4();
    }

    goto LABEL_23;
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (unsignedIntegerValue >= [pageModelControllers count])
  {
    v26 = sub_23F4A66C0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD940();
    }

LABEL_23:
    [(AKSidecarController *)self _handleInternalFailure];
    goto LABEL_24;
  }

  modelController2 = [WeakRetained modelController];
  v12 = [modelController2 pageModelControllerForPage:unsignedIntegerValue];

  if (v12)
  {
    v13 = [v12 valueForKeyPath:@"selectedAnnotations.UUID"];
    v14 = [MEMORY[0x277CBEB98] setWithArray:v9];
    if (([v13 isEqualToSet:v14] & 1) == 0)
    {
      v27 = v13;
      v29 = v9;
      v30 = v8;
      v31 = pageModelControllers;
      v32 = WeakRetained;
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      v16 = sub_23F4A66C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_23F4BDF4C();
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v28 = v12;
      annotations = [v12 annotations];
      v18 = [annotations countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v34;
        do
        {
          v22 = 0;
          do
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(annotations);
            }

            uUID = [*(*(&v33 + 1) + 8 * v22) UUID];
            v24 = [v14 containsObject:uUID];

            if (v24)
            {
              [indexSet addIndex:v20];
            }

            ++v20;
            ++v22;
          }

          while (v19 != v22);
          v19 = [annotations countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v19);
      }

      v12 = v28;
      [v28 selectAnnotationsAtIndexes:indexSet byExtendingSelection:0];

      pageModelControllers = v31;
      WeakRetained = v32;
      v9 = v29;
      v8 = v30;
      v13 = v27;
    }
  }

LABEL_24:
}

- (BOOL)handleLiveStrokeBegan:(id)began onInkOverlayView:(id)view
{
  v27[4] = *MEMORY[0x277D85DE8];
  beganCopy = began;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    pageController = [viewCopy pageController];
    inkPageOverlayController = [pageController inkPageOverlayController];
    inkOverlayView = [inkPageOverlayController inkOverlayView];
    canvasView = [inkOverlayView canvasView];
    [inkPageOverlayController scaleFromDrawingInCanvasView:canvasView toPageControllerModelSpace:pageController];
    v15 = v14;

    objc_storeStrong(&self->_currentStroke, began);
    dataRepresentation = [beganCopy dataRepresentation];
    v24 = beganCopy;
    v26[0] = &unk_2851BB718;
    v26[1] = &unk_2851BB808;
    v27[0] = &unk_2851BB748;
    v27[1] = dataRepresentation;
    v26[2] = &unk_2851BB820;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v27[2] = v17;
    v26[3] = &unk_2851BB748;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(pageController, "pageIndex")}];
    v27[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
    [(AKSidecarController *)self _sendDictionary:v19];

    objc_storeStrong(&self->_currentStrokeOverlay, view);
    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    dispatch_source_set_timer(v20, 0, 0xFE502AuLL, 0xFE502AuLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_23F4A8FE8;
    handler[3] = &unk_278C7B540;
    handler[4] = self;
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(v20);
    strokeTimer = self->_strokeTimer;
    self->_strokeTimer = v20;
    v22 = v20;

    beganCopy = v24;
  }

  return WeakRetained != 0;
}

- (void)_handleLiveStrokeUpdate
{
  v15[2] = *MEMORY[0x277D85DE8];
  canvasView = [(AKInkOverlayView *)self->_currentStrokeOverlay canvasView];
  _currentStroke = [canvasView _currentStroke];

  if (_currentStroke)
  {
    v5 = [(PKStroke *)self->_currentStroke deltaTo:_currentStroke];
    v6 = v5;
    if (v5)
    {
      v15[0] = &unk_2851BB7F0;
      v14[0] = &unk_2851BB718;
      v14[1] = &unk_2851BB838;
      dataRepresentation = [v5 dataRepresentation];
      v15[1] = dataRepresentation;
      v8 = MEMORY[0x277CBEAC0];
      v9 = v15;
      v10 = v14;
    }

    else
    {
      v13[0] = &unk_2851BB7F0;
      v12[0] = &unk_2851BB718;
      v12[1] = &unk_2851BB808;
      dataRepresentation = [_currentStroke dataRepresentation];
      v13[1] = dataRepresentation;
      v8 = MEMORY[0x277CBEAC0];
      v9 = v13;
      v10 = v12;
    }

    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:2];
    [(AKSidecarController *)self _sendDictionary:v11];
  }
}

- (void)handleLiveStrokeComplete:(BOOL)complete
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (complete)
  {
    v4 = 1002;
  }

  else
  {
    v4 = 1003;
  }

  v10 = &unk_2851BB718;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(AKSidecarController *)self _sendDictionary:v6];

  strokeTimer = self->_strokeTimer;
  if (strokeTimer)
  {
    dispatch_source_cancel(strokeTimer);
    v8 = self->_strokeTimer;
  }

  else
  {
    v8 = 0;
  }

  self->_strokeTimer = 0;

  currentStrokeOverlay = self->_currentStrokeOverlay;
  self->_currentStrokeOverlay = 0;
}

- (void)_actuallySendAnnotationChange
{
  if (self->_coalescingAnnotationChange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    modelController = [WeakRetained modelController];

    v4 = [modelController pageModelControllerForAnnotation:self->_coalescingAnnotationChange];
    pageModelControllers = [modelController pageModelControllers];
    v6 = [pageModelControllers indexOfObject:v4];

    [(AKSidecarController *)self _annotation:self->_coalescingAnnotationChange modifiedInPageController:v6 properties:self->_coalescingAnnotationKeys];
    [(NSMutableSet *)self->_coalescingAnnotationKeys removeAllObjects];
    coalescingAnnotationChange = self->_coalescingAnnotationChange;
    self->_coalescingAnnotationChange = 0;
  }
}

- (void)_coalesceAnnotationChange:(id)change keyChange:(id)keyChange
{
  changeCopy = change;
  keyChangeCopy = keyChange;
  if (self->_coalescingAnnotationChange != changeCopy)
  {
    [(AKSidecarController *)self _actuallySendAnnotationChange];
  }

  if (changeCopy)
  {
    objc_storeStrong(&self->_coalescingAnnotationChange, change);
    [(NSMutableSet *)self->_coalescingAnnotationKeys addObject:keyChangeCopy];
    dispatch_source_merge_data(self->_coalescingAnnotationSource, 1uLL);
  }
}

- (void)_handleUndo:(id)undo
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->_handlingUndoRedo)
  {
    v5 = &unk_2851BB718;
    v6[0] = &unk_2851BB718;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [(AKSidecarController *)self _sendDictionary:v4];
  }
}

- (void)_handleRedo:(id)redo
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (!self->_handlingUndoRedo)
  {
    v5 = &unk_2851BB718;
    v6[0] = &unk_2851BB700;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [(AKSidecarController *)self _sendDictionary:v4];
  }
}

- (void)_handleUndoCheckpoint:(id)checkpoint
{
  v10[1] = *MEMORY[0x277D85DE8];
  checkpointCopy = checkpoint;
  if (!self->_handlingUndoRedo && !self->_sendingCheckpoint && self->_needCheckpointSent)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    mainEventHandler = [WeakRetained mainEventHandler];
    if (([mainEventHandler mainEventHandlerIsInTrackingLoop] & 1) == 0)
    {
      annotationEventHandler = [mainEventHandler annotationEventHandler];
      if (annotationEventHandler)
      {
      }

      else if (([mainEventHandler mainEventHandlerIsInRotationLoop] & 1) == 0)
      {
        self->_needCheckpointSent = 0;
        v9 = &unk_2851BB718;
        v10[0] = &unk_2851BB850;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
        [(AKSidecarController *)self _sendDictionary:v8];
      }
    }
  }
}

- (void)_startChangeUndoGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  undoController = [WeakRetained undoController];

  if (([undoController externalSourceTrackingChanged] & 1) == 0)
  {
    [undoController setExternalSourceTrackingChanged:1];
    [MEMORY[0x277CCAD90] _endTopLevelGroupings];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (!self->_ignoreKVOChanges)
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F8]];
    bOOLValue = [v14 BOOLValue];

    WeakRetained = objc_loadWeakRetained(&self->_controller);
    undoController = [WeakRetained undoController];
    undoManager = [undoController undoManager];

    if ([undoManager isUndoing])
    {
      isRedoing = 1;
    }

    else
    {
      isRedoing = [undoManager isRedoing];
    }

    if (context == @"AKSidecarController.annotationPropertyObservationContext")
    {
      if (((self->_updatingModel | isRedoing) & 1) == 0)
      {
        v20 = [v13 objectForKey:*MEMORY[0x277CCA300]];
        v21 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
        v22 = objectCopy;
        if (![v20 isEqual:v21] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [(AKSidecarController *)self _coalesceAnnotationChange:v22 keyChange:pathCopy];
        }
      }
    }

    else if (context == @"AKSidecarController.modelAnnotationsObservationContext")
    {
      v23 = [v13 objectForKey:*MEMORY[0x277CCA300]];
      v24 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = objectCopy;
        v26 = v23;
        v27 = v25;
        v29 = v26;
        if (((v26 != 0) & bOOLValue) == 1)
        {
          [(AKSidecarController *)self _annotationsWillBeRemoved:v26 onPageController:v25 isUndoingRedoing:isRedoing];
        }

        if (v24)
        {
          [(AKSidecarController *)self _annotationsWereAdded:v24 onPageController:v27 isUndoingRedoing:isRedoing];
        }

        v23 = v29;
      }

      else
      {
        v28 = sub_23F4A66C0();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_23F4BDFB4(objectCopy, v28);
        }
      }
    }

    else if (context == @"AKSidecarController.selectedAnnotationsObservationContext" && !self->_updatingModel)
    {
      [(AKSidecarController *)self _selectionChangedOnPageController:objectCopy];
    }
  }
}

- (void)_annotationsWereAdded:(id)added onPageController:(id)controller isUndoingRedoing:(BOOL)redoing
{
  v28 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  controllerCopy = controller;
  if ([addedCopy count])
  {
    [(AKSidecarController *)self _startObservingAnnotations:addedCopy];
    if (!self->_updatingModel && !redoing)
    {
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      modelController = [WeakRetained modelController];
      pageModelControllers = [modelController pageModelControllers];
      v13 = [pageModelControllers indexOfObject:controllerCopy];

      annotations = [controllerCopy annotations];
      v21 = controllerCopy;
      selectedAnnotations = [controllerCopy selectedAnnotations];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v22 = addedCopy;
      v16 = addedCopy;
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
        do
        {
          v20 = 0;
          do
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v16);
            }

            -[AKSidecarController _annotation:addedToPageController:selected:atIndex:](self, "_annotation:addedToPageController:selected:atIndex:", *(*(&v23 + 1) + 8 * v20), v13, [selectedAnnotations containsObject:*(*(&v23 + 1) + 8 * v20)], objc_msgSend(annotations, "indexOfObject:", *(*(&v23 + 1) + 8 * v20)));
            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v18);
      }

      controllerCopy = v21;
      addedCopy = v22;
    }
  }
}

- (void)_annotationsWillBeRemoved:(id)removed onPageController:(id)controller isUndoingRedoing:(BOOL)redoing
{
  v31 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  controllerCopy = controller;
  if ([removedCopy count])
  {
    [(AKSidecarController *)self _stopObservingAnnotations:removedCopy];
    if (!redoing)
    {
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      modelController = [WeakRetained modelController];
      pageModelControllers = [modelController pageModelControllers];
      v24 = controllerCopy;
      v13 = [pageModelControllers indexOfObject:controllerCopy];

      uUID = [(AKAnnotation *)self->_coalescingAnnotationChange UUID];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = removedCopy;
      v15 = removedCopy;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * i);
            uUID2 = [v20 UUID];
            v22 = [uUID isEqualToString:uUID2];

            if (v22)
            {
              coalescingAnnotationChange = self->_coalescingAnnotationChange;
              self->_coalescingAnnotationChange = 0;
            }

            if (!self->_updatingModel)
            {
              [(AKSidecarController *)self _annotation:v20 removedFromPageController:v13];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }

      controllerCopy = v24;
      removedCopy = v25;
    }
  }
}

- (id)_translateObservationKeys:(id)keys
{
  v20 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [keysCopy mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = keysCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isEqualToString:{@"strokeColor", v15}])
        {
          v11 = @"strokeColorSDR";
          v12 = @"strokeColorHDR";
          v13 = @"strokeColor";
        }

        else if ([v10 isEqualToString:@"fillColor"])
        {
          v11 = @"fillColorSDR";
          v12 = @"fillColorHDR";
          v13 = @"fillColor";
        }

        else
        {
          if (![v10 isEqualToString:@"foregroundColor"])
          {
            continue;
          }

          v11 = @"fillColorSDR";
          v12 = @"foregroundColorHDR";
          v13 = @"foregroundColor";
        }

        [v4 addObject:v11];
        [v4 addObject:v12];
        [v4 removeObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_startObservingAnnotations:(id)annotations
{
  v29 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2851BB190];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = annotationsCopy;
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        keysForValuesToObserveForUndo = [v7 keysForValuesToObserveForUndo];
        v9 = [(AKSidecarController *)self _translateObservationKeys:keysForValuesToObserveForUndo];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              if (([v5 containsObject:v15] & 1) == 0)
              {
                [v7 addObserver:self forKeyPath:v15 options:3 context:@"AKSidecarController.annotationPropertyObservationContext"];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }

        [(NSMutableSet *)self->_observedAnnotations addObject:v7];
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (void)_stopObservingAnnotations:(id)annotations
{
  v31 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2851BB1A8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = annotationsCopy;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      v19 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        if ([(NSMutableSet *)self->_observedAnnotations containsObject:v10, v19])
        {
          keysForValuesToObserveForUndo = [v10 keysForValuesToObserveForUndo];
          v12 = [(AKSidecarController *)self _translateObservationKeys:keysForValuesToObserveForUndo];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v21 + 1) + 8 * i);
                if (([v5 containsObject:v18] & 1) == 0)
                {
                  [v10 removeObserver:self forKeyPath:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v15);
          }

          [(NSMutableSet *)self->_observedAnnotations removeObject:v10];
          v7 = v19;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }
}

- (void)_annotation:(id)_annotation addedToPageController:(unint64_t)controller selected:(BOOL)selected atIndex:(unint64_t)index
{
  selectedCopy = selected;
  v19[5] = *MEMORY[0x277D85DE8];
  _annotationCopy = _annotation;
  dataRepresentation = [_annotationCopy dataRepresentation];
  v12 = dataRepresentation;
  if (dataRepresentation)
  {
    v18[0] = &unk_2851BB718;
    v18[1] = &unk_2851BB730;
    v19[0] = &unk_2851BB790;
    v19[1] = dataRepresentation;
    v18[2] = &unk_2851BB748;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:controller];
    v19[2] = v13;
    v18[3] = &unk_2851BB760;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v19[3] = v14;
    v18[4] = &unk_2851BB778;
    v15 = [MEMORY[0x277CCABB0] numberWithBool:selectedCopy];
    v19[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    [(AKSidecarController *)self _sendDictionary:v16];
  }

  else
  {
    v17 = sub_23F4A66C0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BE04C();
    }

    [(AKSidecarController *)self _handleInternalFailure];
  }
}

- (void)_annotation:(id)_annotation removedFromPageController:(unint64_t)controller
{
  v14[4] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2851BB760;
  v13[0] = &unk_2851BB718;
  v13[1] = &unk_2851BB790;
  _annotationCopy = _annotation;
  uUID = [_annotationCopy UUID];
  v14[1] = uUID;
  v13[2] = &unk_2851BB748;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:controller];
  v14[2] = v8;
  v13[3] = &unk_2851BB7A8;
  v9 = MEMORY[0x277CCABB0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = [v9 numberWithBool:isKindOfClass & 1];
  v14[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [(AKSidecarController *)self _sendDictionary:v12];
}

- (id)_translateColorEncoding:(id)encoding
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [encoding mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [v3 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x277D75348] akStringFromColor:v10];
          akColorString = [v11 akColorString];
          [v3 setObject:akColorString forKey:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v13 = MEMORY[0x277D75348];
          string = [v10 string];
          v11 = [v13 akColorFromString:string];

          [v3 setObject:v11 forKey:v9];
        }

LABEL_11:
      }

      v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_annotation:(id)_annotation modifiedInPageController:(unint64_t)controller properties:(id)properties
{
  v22[5] = *MEMORY[0x277D85DE8];
  _annotationCopy = _annotation;
  propertiesCopy = properties;
  allObjects = [propertiesCopy allObjects];
  if (([propertiesCopy containsObject:@"typingAttributes"] & 1) != 0 || (objc_msgSend(propertiesCopy, "containsObject:", @"annotationText") & 1) != 0 || objc_msgSend(propertiesCopy, "containsObject:", @"quadPoints"))
  {
    dataRepresentation = [_annotationCopy dataRepresentation];
    v22[0] = &unk_2851BB730;
    v21[0] = &unk_2851BB718;
    v21[1] = &unk_2851BB790;
    uUID = [_annotationCopy UUID];
    v22[1] = uUID;
    v21[2] = &unk_2851BB748;
    uUID2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:controller];
    v22[2] = uUID2;
    v22[3] = allObjects;
    v21[3] = &unk_2851BB7D8;
    v21[4] = &unk_2851BB730;
    v22[4] = dataRepresentation;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
    [(AKSidecarController *)self _sendDictionary:v14];
  }

  else
  {
    v15 = [_annotationCopy dictionaryWithValuesForKeys:allObjects];
    dataRepresentation = [(AKSidecarController *)self _translateColorEncoding:v15];

    uUID = [AKSecureSerializationHelper dataForSecureCodingCompliantObject:dataRepresentation withOptionalKey:0];
    v20[0] = &unk_2851BB730;
    uUID2 = [_annotationCopy UUID];
    v20[1] = uUID2;
    v19[2] = &unk_2851BB748;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:controller];
    v20[2] = v14;
    v20[3] = uUID;
    v19[3] = &unk_2851BB7C0;
    v19[4] = &unk_2851BB7A8;
    v16 = MEMORY[0x277CCABB0];
    objc_opt_class();
    v17 = [v16 numberWithBool:objc_opt_isKindOfClass() & 1];
    v20[4] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    [(AKSidecarController *)self _sendDictionary:v18];
  }

  self->_needCheckpointSent = 1;
}

- (void)_selectionChangedOnPageController:(id)controller
{
  v14[3] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  modelController = [WeakRetained modelController];
  pageModelControllers = [modelController pageModelControllers];
  v8 = [pageModelControllers indexOfObject:controllerCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14[0] = &unk_2851BB778;
    v13[0] = &unk_2851BB718;
    v13[1] = &unk_2851BB748;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    v14[1] = v9;
    v13[2] = &unk_2851BB7F0;
    v10 = [controllerCopy valueForKeyPath:@"selectedAnnotations.UUID"];
    allObjects = [v10 allObjects];
    v14[2] = allObjects;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    [(AKSidecarController *)self _sendDictionary:v12];
  }
}

- (void)_sendDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = sub_23F4A66C0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_23F4BE0BC();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sidecarController:self sendOPACKObject:dictionaryCopy];
}

- (AKSidecarControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end