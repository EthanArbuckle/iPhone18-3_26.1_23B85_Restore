@interface AKUndoController
- (AKController)controller;
- (AKUndoController)initWithController:(id)controller;
- (void)_addAnnotationsFromModel:(id)model;
- (void)_annotationsWereAdded:(id)added onPageController:(id)controller;
- (void)_annotationsWillBeRemoved:(id)removed onPageController:(id)controller;
- (void)_deleteAnnotationsFromModel:(id)model;
- (void)_endEditingOfTextIfAnnotationsDeleted:(id)deleted;
- (void)_registerUndoForSelectionOnPageModelController:(id)controller;
- (void)_setAnnotationProperties:(id)properties;
- (void)_startObservingAnnotations:(id)annotations;
- (void)_stopObservingAnnotations:(id)annotations;
- (void)_undoActionForSelectionState:(id)state;
- (void)dealloc;
- (void)observePageControllerRequestsDisableRegistration:(id)registration;
- (void)observePageControllerRequestsEnableRegistration:(id)registration;
- (void)observeUndoManagerCheckpoint:(id)checkpoint;
- (void)observeUndoManagerDetectedEdit:(id)edit;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObservingPageModelController:(id)controller;
- (void)stopObservingPageModelController:(id)controller;
@end

@implementation AKUndoController

- (AKUndoController)initWithController:(id)controller
{
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = AKUndoController;
  v5 = [(AKUndoController *)&v26 init];
  v6 = v5;
  if (v5)
  {
    [(AKUndoController *)v5 setController:controllerCopy];
    delegate = [controllerCopy delegate];
    v8 = [delegate undoManagerForAnnotationController:controllerCopy];
    [(AKUndoController *)v6 setUndoManager:v8];
    v9 = [MEMORY[0x277CBEB58] set];
    [(AKUndoController *)v6 setObservedPageModelControllers:v9];

    v10 = [MEMORY[0x277CBEB58] set];
    [(AKUndoController *)v6 setObservedAnnotations:v10];

    [(AKUndoController *)v6 setUndoGroupPresentablePropertyName:0];
    [(AKUndoController *)v6 setUndoGroupHasChangesToMultipleProperties:0];
    [(AKUndoController *)v6 setUndoGroupOldPropertiesPerAnnotation:0];
    if (v8)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = *MEMORY[0x277CCA7F0];
      undoManager = [(AKUndoController *)v6 undoManager];
      [defaultCenter addObserver:v6 selector:sel_observeUndoManagerCheckpoint_ name:v12 object:undoManager];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v15 = *MEMORY[0x277CCA7F8];
      undoManager2 = [(AKUndoController *)v6 undoManager];
      [defaultCenter2 addObserver:v6 selector:sel_observeUndoManagerDetectedEdit_ name:v15 object:undoManager2];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = *MEMORY[0x277CCA810];
      undoManager3 = [(AKUndoController *)v6 undoManager];
      [defaultCenter3 addObserver:v6 selector:sel_observeUndoManagerDetectedEdit_ name:v18 object:undoManager3];

      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v21 = *MEMORY[0x277CCA808];
      undoManager4 = [(AKUndoController *)v6 undoManager];
      [defaultCenter4 addObserver:v6 selector:sel_observeUndoManagerDetectedEdit_ name:v21 object:undoManager4];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter5 addObserver:v6 selector:sel_observePageControllerRequestsDisableRegistration_ name:off_27E39A390[0] object:0];

      defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter6 addObserver:v6 selector:sel_observePageControllerRequestsEnableRegistration_ name:off_27E39A398 object:0];
    }
  }

  return v6;
}

- (void)dealloc
{
  v37 = *MEMORY[0x277D85DE8];
  undoManager = [(AKUndoController *)self undoManager];

  if (undoManager)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    observedAnnotations = [(AKUndoController *)self observedAnnotations];
    v6 = [observedAnnotations countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(observedAnnotations);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          keysForValuesToObserveForUndo = [v10 keysForValuesToObserveForUndo];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(keysForValuesToObserveForUndo);
                }

                [v10 removeObserver:self forKeyPath:*(*(&v26 + 1) + 8 * j)];
              }

              v13 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v13);
          }
        }

        v7 = [observedAnnotations countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v7);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    observedPageModelControllers = [(AKUndoController *)self observedPageModelControllers];
    v17 = [observedPageModelControllers countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(observedPageModelControllers);
          }

          [*(*(&v22 + 1) + 8 * k) removeObserver:self forKeyPath:@"annotations" context:@"AKUndoController.modelAnnotationsObservationContext"];
        }

        v18 = [observedPageModelControllers countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v18);
    }
  }

  [(AKUndoController *)self setObservedAnnotations:0];
  [(AKUndoController *)self setObservedPageModelControllers:0];
  [(AKUndoController *)self setUndoGroupPresentablePropertyName:0];
  [(AKUndoController *)self setUndoGroupOldPropertiesPerAnnotation:0];
  [(AKUndoController *)self setUndoManager:0];
  v21.receiver = self;
  v21.super_class = AKUndoController;
  [(AKUndoController *)&v21 dealloc];
}

- (void)startObservingPageModelController:(id)controller
{
  controllerCopy = controller;
  undoManager = [(AKUndoController *)self undoManager];

  if (undoManager)
  {
    observedPageModelControllers = [(AKUndoController *)self observedPageModelControllers];
    v6 = [observedPageModelControllers containsObject:controllerCopy];

    if ((v6 & 1) == 0)
    {
      annotations = [controllerCopy annotations];
      [(AKUndoController *)self _startObservingAnnotations:annotations];

      [controllerCopy addObserver:self forKeyPath:@"annotations" options:11 context:@"AKUndoController.modelAnnotationsObservationContext"];
      observedPageModelControllers2 = [(AKUndoController *)self observedPageModelControllers];
      [observedPageModelControllers2 addObject:controllerCopy];
    }
  }
}

- (void)stopObservingPageModelController:(id)controller
{
  controllerCopy = controller;
  undoManager = [(AKUndoController *)self undoManager];

  if (undoManager)
  {
    observedPageModelControllers = [(AKUndoController *)self observedPageModelControllers];
    v6 = [observedPageModelControllers containsObject:controllerCopy];

    if (v6)
    {
      [controllerCopy removeObserver:self forKeyPath:@"annotations" context:@"AKUndoController.modelAnnotationsObservationContext"];
      observedPageModelControllers2 = [(AKUndoController *)self observedPageModelControllers];
      [observedPageModelControllers2 removeObject:controllerCopy];

      annotations = [controllerCopy annotations];
      [(AKUndoController *)self _stopObservingAnnotations:annotations];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v60[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == @"AKUndoController.annotationPropertyObservationContext")
  {
    undoManager = [(AKUndoController *)self undoManager];
    controller = [(AKUndoController *)self controller];
    if (![undoManager isUndoRegistrationEnabled])
    {
LABEL_46:
      v59 = AKAnnotationChangeObjectKey;
      v60[0] = objectCopy;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:AKAnnotationPropertiesChangedNotification object:controller userInfo:v47];

LABEL_47:
      goto LABEL_48;
    }

    v15 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    v16 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    null = [MEMORY[0x277CBEB68] null];
    if (v16 == null)
    {
      null2 = [MEMORY[0x277CBEB68] null];
      v26 = v15;
      v27 = null2;
      if (v26 == null2)
      {
        v52 = [v26 isEqual:v16];

        v15 = v26;
        if (v52)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      else
      {

        v15 = v26;
      }
    }

    else
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_45;
      }
    }

    v55 = v15;
    undoGroupOldPropertiesPerAnnotation = [(AKUndoController *)self undoGroupOldPropertiesPerAnnotation];
    if (!undoGroupOldPropertiesPerAnnotation)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      [(AKUndoController *)self setUndoGroupOldPropertiesPerAnnotation:?];
      modelController = [controller modelController];
      v30 = [modelController pageModelControllerForAnnotation:objectCopy];

      if (v30)
      {
        [(AKUndoController *)self _registerUndoForSelectionOnPageModelController:v30];
      }

      undoGroupOldPropertiesPerAnnotation2 = [(AKUndoController *)self undoGroupOldPropertiesPerAnnotation];
      [undoManager registerUndoWithTarget:self selector:sel__setAnnotationProperties_ object:undoGroupOldPropertiesPerAnnotation2];

      undoGroupOldPropertiesPerAnnotation = strongToStrongObjectsMapTable;
    }

    v32 = [undoGroupOldPropertiesPerAnnotation objectForKey:objectCopy];
    if (!v32)
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [undoGroupOldPropertiesPerAnnotation setObject:v32 forKey:objectCopy];
    }

    v33 = [v32 objectForKey:pathCopy];

    if (!v33)
    {
      [v32 setObject:v16 forKey:pathCopy];
    }

    if ([undoManager isUndoing] & 1) != 0 || (objc_msgSend(undoManager, "isRedoing"))
    {
LABEL_39:
      if (([pathCopy isEqualToString:@"modificationDate"] & 1) == 0 && (objc_msgSend(undoManager, "isUndoing") & 1) == 0 && (objc_msgSend(undoManager, "isRedoing") & 1) == 0)
      {
        date = [MEMORY[0x277CBEAA8] date];
        [objectCopy setModificationDate:date];

        author = [controller author];

        if (author)
        {
          author2 = [controller author];
          [objectCopy setAuthor:author2];
        }
      }

      v15 = v55;
      goto LABEL_45;
    }

    v54 = undoGroupOldPropertiesPerAnnotation;
    v34 = [objc_opt_class() displayNameForUndoablePropertyChangeWithKey:pathCopy];
    if ([v34 isEqualToString:&stru_28519E870])
    {
LABEL_38:

      undoGroupOldPropertiesPerAnnotation = v54;
      goto LABEL_39;
    }

    undoGroupPresentablePropertyName = [(AKUndoController *)self undoGroupPresentablePropertyName];
    if (undoGroupPresentablePropertyName)
    {
    }

    else if (![(AKUndoController *)self undoGroupHasChangesToMultipleProperties])
    {
      v41 = MEMORY[0x277CCACA8];
      v49 = +[AKController akBundle];
      [v49 localizedStringForKey:@"Change of %@" value:&stru_28519E870 table:@"AnnotationStrings"];
      v42 = v51 = v34;
      v43 = [v41 stringWithFormat:v42, v51];
      [undoManager setActionName:v43];

      v34 = v51;
      v40 = v51;
LABEL_37:
      [(AKUndoController *)self setUndoGroupPresentablePropertyName:v40];
      goto LABEL_38;
    }

    if ([(AKUndoController *)self undoGroupHasChangesToMultipleProperties])
    {
      goto LABEL_38;
    }

    [(AKUndoController *)self undoGroupPresentablePropertyName];
    v36 = v50 = v34;
    v37 = [v36 isEqualToString:v50];

    v34 = v50;
    if (v37)
    {
      goto LABEL_38;
    }

    v38 = +[AKController akBundle];
    v39 = [v38 localizedStringForKey:@"Change of Annotation Properties" value:&stru_28519E870 table:@"AnnotationStrings"];
    [undoManager setActionName:v39];

    v34 = v50;
    [(AKUndoController *)self setUndoGroupHasChangesToMultipleProperties:1];
    v40 = 0;
    goto LABEL_37;
  }

  if (context == @"AKUndoController.modelAnnotationsObservationContext")
  {
    undoManager = [(AKUndoController *)self controller];
    controller = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    v19 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    v20 = [changeCopy objectForKey:*MEMORY[0x277CCA2F8]];
    bOOLValue = [v20 BOOLValue];

    v22 = objectCopy;
    if (bOOLValue)
    {
      [(AKUndoController *)self _registerUndoForSelectionOnPageModelController:v22];
      if (controller)
      {
        [(AKUndoController *)self _annotationsWillBeRemoved:controller onPageController:v22];
      }
    }

    if (v19)
    {
      [(AKUndoController *)self _annotationsWereAdded:v19 onPageController:v22];
    }

    if ((bOOLValue & 1) == 0)
    {
      v57 = AKAnnotationChangeObjectKey;
      v58 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 postNotificationName:AKAnnotationsAddedOrRemovedNotification object:undoManager userInfo:v23];
    }

    goto LABEL_47;
  }

  v56.receiver = self;
  v56.super_class = AKUndoController;
  [(AKUndoController *)&v56 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_48:
}

- (void)observeUndoManagerDetectedEdit:(id)edit
{
  controller = [(AKUndoController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editDetectedForAnnotationController:controller];
  }
}

- (void)observeUndoManagerCheckpoint:(id)checkpoint
{
  controller = [(AKUndoController *)self controller];
  delegate = [controller delegate];
  mainEventHandler = [controller mainEventHandler];
  if (([mainEventHandler mainEventHandlerIsInTrackingLoop] & 1) == 0)
  {
    annotationEventHandler = [mainEventHandler annotationEventHandler];
    if (annotationEventHandler || [mainEventHandler mainEventHandlerIsInRotationLoop])
    {
    }

    else if (![(AKUndoController *)self externalSourceTrackingChanged])
    {
      [(AKUndoController *)self setUndoGroupPresentablePropertyName:0];
      [(AKUndoController *)self setUndoGroupHasChangesToMultipleProperties:0];
      [(AKUndoController *)self setUndoGroupOldPropertiesPerAnnotation:0];
      if (objc_opt_respondsToSelector())
      {
        [delegate editCheckpointReachedForAnnotationController:controller];
      }
    }
  }
}

- (void)_annotationsWereAdded:(id)added onPageController:(id)controller
{
  v18[2] = *MEMORY[0x277D85DE8];
  addedCopy = added;
  controllerCopy = controller;
  if ([addedCopy count])
  {
    undoManager = [(AKUndoController *)self undoManager];
    if ([undoManager isUndoRegistrationEnabled])
    {
      v17[0] = @"pageModelController";
      v17[1] = @"annotations";
      v18[0] = controllerCopy;
      v9 = [addedCopy copy];
      v18[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

      [undoManager registerUndoWithTarget:self selector:sel__deleteAnnotationsFromModel_ object:v10];
      if (([undoManager isUndoing] & 1) == 0 && (objc_msgSend(undoManager, "isRedoing") & 1) == 0)
      {
        if ([addedCopy count] == 1)
        {
          firstObject = [addedCopy firstObject];
          displayName = [firstObject displayName];

          v13 = MEMORY[0x277CCACA8];
          v14 = +[AKController akBundle];
          v15 = [v14 localizedStringForKey:@"Add %@" value:&stru_28519E870 table:@"AnnotationStrings"];
          v16 = [v13 stringWithFormat:v15, displayName];
          [undoManager setActionName:v16];
        }

        else
        {
          displayName = +[AKController akBundle];
          v14 = [displayName localizedStringForKey:@"Add Annotations" value:&stru_28519E870 table:@"AnnotationStrings"];
          [undoManager setActionName:v14];
        }
      }
    }

    [(AKUndoController *)self _startObservingAnnotations:addedCopy];
  }
}

- (void)_annotationsWillBeRemoved:(id)removed onPageController:(id)controller
{
  v18[2] = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  controllerCopy = controller;
  if ([removedCopy count])
  {
    [(AKUndoController *)self _stopObservingAnnotations:removedCopy];
    [(AKUndoController *)self _endEditingOfTextIfAnnotationsDeleted:removedCopy];
    undoManager = [(AKUndoController *)self undoManager];
    if ([undoManager isUndoRegistrationEnabled])
    {
      v17[0] = @"pageModelController";
      v17[1] = @"annotations";
      v18[0] = controllerCopy;
      v9 = [removedCopy copy];
      v18[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

      [undoManager registerUndoWithTarget:self selector:sel__addAnnotationsFromModel_ object:v10];
      if (([undoManager isUndoing] & 1) == 0 && (objc_msgSend(undoManager, "isRedoing") & 1) == 0)
      {
        if ([removedCopy count] == 1)
        {
          firstObject = [removedCopy firstObject];
          displayName = [firstObject displayName];

          v13 = MEMORY[0x277CCACA8];
          v14 = +[AKController akBundle];
          v15 = [v14 localizedStringForKey:@"Remove %@" value:&stru_28519E870 table:@"AnnotationStrings"];
          v16 = [v13 stringWithFormat:v15, displayName];
          [undoManager setActionName:v16];
        }

        else
        {
          displayName = +[AKController akBundle];
          v14 = [displayName localizedStringForKey:@"Remove Annotations" value:&stru_28519E870 table:@"AnnotationStrings"];
          [undoManager setActionName:v14];
        }
      }
    }
  }
}

- (void)_startObservingAnnotations:(id)annotations
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = annotations;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        observedAnnotations = [(AKUndoController *)self observedAnnotations];
        v10 = [observedAnnotations containsObject:v8];

        if ((v10 & 1) == 0)
        {
          keysForValuesToObserveForUndo = [v8 keysForValuesToObserveForUndo];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v19;
            do
            {
              v15 = 0;
              do
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(keysForValuesToObserveForUndo);
                }

                [v8 addObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v15++) options:3 context:@"AKUndoController.annotationPropertyObservationContext"];
              }

              while (v13 != v15);
              v13 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v13);
          }

          observedAnnotations2 = [(AKUndoController *)self observedAnnotations];
          [observedAnnotations2 addObject:v8];
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)_stopObservingAnnotations:(id)annotations
{
  v28 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [annotationsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(annotationsCopy);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        observedAnnotations = [(AKUndoController *)self observedAnnotations];
        v11 = [observedAnnotations containsObject:v9];

        if (v11)
        {
          keysForValuesToObserveForUndo = [v9 keysForValuesToObserveForUndo];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v19;
            do
            {
              v16 = 0;
              do
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(keysForValuesToObserveForUndo);
                }

                [v9 removeObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v16++)];
              }

              while (v14 != v16);
              v14 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v14);
          }

          observedAnnotations2 = [(AKUndoController *)self observedAnnotations];
          [observedAnnotations2 removeObject:v9];
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [annotationsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }
}

- (void)_setAnnotationProperties:(id)properties
{
  v16 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  keyEnumerator = [propertiesCopy keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [propertiesCopy objectForKey:v9];
        [v9 setValuesForKeysWithDictionary:v10];
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_addAnnotationsFromModel:(id)model
{
  modelCopy = model;
  v11 = [modelCopy objectForKeyedSubscript:@"pageModelController"];
  v4 = [modelCopy objectForKeyedSubscript:@"annotations"];

  v5 = [MEMORY[0x277CBEB40] orderedSetWithArray:v4];
  v6 = MEMORY[0x277CBEB98];
  annotations = [v11 annotations];
  v8 = [v6 setWithArray:annotations];

  [v5 minusSet:v8];
  v9 = [v11 mutableArrayValueForKey:@"annotations"];
  array = [v5 array];
  [v9 addObjectsFromArray:array];
}

- (void)_deleteAnnotationsFromModel:(id)model
{
  modelCopy = model;
  v6 = [modelCopy objectForKeyedSubscript:@"pageModelController"];
  v4 = [modelCopy objectForKeyedSubscript:@"annotations"];

  v5 = [v6 mutableArrayValueForKey:@"annotations"];
  [v5 removeObjectsInArray:v4];
}

- (void)_registerUndoForSelectionOnPageModelController:(id)controller
{
  v9[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  undoManager = [(AKUndoController *)self undoManager];
  if ([undoManager isUndoRegistrationEnabled])
  {
    selectionStateForUndo = [controllerCopy selectionStateForUndo];
    v8[0] = @"pageModelController";
    v8[1] = @"selectionState";
    v9[0] = controllerCopy;
    v9[1] = selectionStateForUndo;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [undoManager registerUndoWithTarget:self selector:sel__undoActionForSelectionState_ object:v7];
  }
}

- (void)_undoActionForSelectionState:(id)state
{
  v11[2] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  undoManager = [(AKUndoController *)self undoManager];
  v6 = [stateCopy objectForKey:@"pageModelController"];
  v7 = [stateCopy objectForKey:@"selectionState"];

  if ([undoManager isUndoRegistrationEnabled])
  {
    selectionStateForUndo = [v6 selectionStateForUndo];
    v10[0] = @"pageModelController";
    v10[1] = @"selectionState";
    v11[0] = v6;
    v11[1] = selectionStateForUndo;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [undoManager registerUndoWithTarget:self selector:sel__undoActionForSelectionState_ object:v9];
  }

  [v6 restoreSelectionStateForUndo:v7];
}

- (void)_endEditingOfTextIfAnnotationsDeleted:(id)deleted
{
  v19 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  controller = [(AKUndoController *)self controller];
  textEditorController = [controller textEditorController];
  if ([textEditorController isEditing])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = deletedCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          annotation = [textEditorController annotation];

          if (v12 == annotation)
          {
            [textEditorController endEditing];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)observePageControllerRequestsDisableRegistration:(id)registration
{
  undoManager = [(AKUndoController *)self undoManager];
  [undoManager disableUndoRegistration];
}

- (void)observePageControllerRequestsEnableRegistration:(id)registration
{
  undoManager = [(AKUndoController *)self undoManager];
  [undoManager enableUndoRegistration];
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end