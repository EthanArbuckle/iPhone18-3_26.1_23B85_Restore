@interface AKUndoController
- (AKController)controller;
- (AKUndoController)initWithController:(id)a3;
- (void)_addAnnotationsFromModel:(id)a3;
- (void)_annotationsWereAdded:(id)a3 onPageController:(id)a4;
- (void)_annotationsWillBeRemoved:(id)a3 onPageController:(id)a4;
- (void)_deleteAnnotationsFromModel:(id)a3;
- (void)_endEditingOfTextIfAnnotationsDeleted:(id)a3;
- (void)_registerUndoForSelectionOnPageModelController:(id)a3;
- (void)_setAnnotationProperties:(id)a3;
- (void)_startObservingAnnotations:(id)a3;
- (void)_stopObservingAnnotations:(id)a3;
- (void)_undoActionForSelectionState:(id)a3;
- (void)dealloc;
- (void)observePageControllerRequestsDisableRegistration:(id)a3;
- (void)observePageControllerRequestsEnableRegistration:(id)a3;
- (void)observeUndoManagerCheckpoint:(id)a3;
- (void)observeUndoManagerDetectedEdit:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObservingPageModelController:(id)a3;
- (void)stopObservingPageModelController:(id)a3;
@end

@implementation AKUndoController

- (AKUndoController)initWithController:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = AKUndoController;
  v5 = [(AKUndoController *)&v26 init];
  v6 = v5;
  if (v5)
  {
    [(AKUndoController *)v5 setController:v4];
    v7 = [v4 delegate];
    v8 = [v7 undoManagerForAnnotationController:v4];
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
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = *MEMORY[0x277CCA7F0];
      v13 = [(AKUndoController *)v6 undoManager];
      [v11 addObserver:v6 selector:sel_observeUndoManagerCheckpoint_ name:v12 object:v13];

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      v15 = *MEMORY[0x277CCA7F8];
      v16 = [(AKUndoController *)v6 undoManager];
      [v14 addObserver:v6 selector:sel_observeUndoManagerDetectedEdit_ name:v15 object:v16];

      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = *MEMORY[0x277CCA810];
      v19 = [(AKUndoController *)v6 undoManager];
      [v17 addObserver:v6 selector:sel_observeUndoManagerDetectedEdit_ name:v18 object:v19];

      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      v21 = *MEMORY[0x277CCA808];
      v22 = [(AKUndoController *)v6 undoManager];
      [v20 addObserver:v6 selector:sel_observeUndoManagerDetectedEdit_ name:v21 object:v22];

      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      [v23 addObserver:v6 selector:sel_observePageControllerRequestsDisableRegistration_ name:off_27E39A390[0] object:0];

      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      [v24 addObserver:v6 selector:sel_observePageControllerRequestsEnableRegistration_ name:off_27E39A398 object:0];
    }
  }

  return v6;
}

- (void)dealloc
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(AKUndoController *)self undoManager];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [(AKUndoController *)self observedAnnotations];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 keysForValuesToObserveForUndo];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
                  objc_enumerationMutation(v11);
                }

                [v10 removeObserver:self forKeyPath:*(*(&v26 + 1) + 8 * j)];
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v7);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = [(AKUndoController *)self observedPageModelControllers];
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
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
            objc_enumerationMutation(v16);
          }

          [*(*(&v22 + 1) + 8 * k) removeObserver:self forKeyPath:@"annotations" context:@"AKUndoController.modelAnnotationsObservationContext"];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
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

- (void)startObservingPageModelController:(id)a3
{
  v9 = a3;
  v4 = [(AKUndoController *)self undoManager];

  if (v4)
  {
    v5 = [(AKUndoController *)self observedPageModelControllers];
    v6 = [v5 containsObject:v9];

    if ((v6 & 1) == 0)
    {
      v7 = [v9 annotations];
      [(AKUndoController *)self _startObservingAnnotations:v7];

      [v9 addObserver:self forKeyPath:@"annotations" options:11 context:@"AKUndoController.modelAnnotationsObservationContext"];
      v8 = [(AKUndoController *)self observedPageModelControllers];
      [v8 addObject:v9];
    }
  }
}

- (void)stopObservingPageModelController:(id)a3
{
  v9 = a3;
  v4 = [(AKUndoController *)self undoManager];

  if (v4)
  {
    v5 = [(AKUndoController *)self observedPageModelControllers];
    v6 = [v5 containsObject:v9];

    if (v6)
    {
      [v9 removeObserver:self forKeyPath:@"annotations" context:@"AKUndoController.modelAnnotationsObservationContext"];
      v7 = [(AKUndoController *)self observedPageModelControllers];
      [v7 removeObject:v9];

      v8 = [v9 annotations];
      [(AKUndoController *)self _stopObservingAnnotations:v8];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v60[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == @"AKUndoController.annotationPropertyObservationContext")
  {
    v13 = [(AKUndoController *)self undoManager];
    v14 = [(AKUndoController *)self controller];
    if (![v13 isUndoRegistrationEnabled])
    {
LABEL_46:
      v59 = AKAnnotationChangeObjectKey;
      v60[0] = v11;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      v48 = [MEMORY[0x277CCAB98] defaultCenter];
      [v48 postNotificationName:AKAnnotationPropertiesChangedNotification object:v14 userInfo:v47];

LABEL_47:
      goto LABEL_48;
    }

    v15 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v16 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v17 = [MEMORY[0x277CBEB68] null];
    if (v16 == v17)
    {
      v25 = [MEMORY[0x277CBEB68] null];
      v26 = v15;
      v27 = v25;
      if (v26 == v25)
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
    v28 = [(AKUndoController *)self undoGroupOldPropertiesPerAnnotation];
    if (!v28)
    {
      v53 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      [(AKUndoController *)self setUndoGroupOldPropertiesPerAnnotation:?];
      v29 = [v14 modelController];
      v30 = [v29 pageModelControllerForAnnotation:v11];

      if (v30)
      {
        [(AKUndoController *)self _registerUndoForSelectionOnPageModelController:v30];
      }

      v31 = [(AKUndoController *)self undoGroupOldPropertiesPerAnnotation];
      [v13 registerUndoWithTarget:self selector:sel__setAnnotationProperties_ object:v31];

      v28 = v53;
    }

    v32 = [v28 objectForKey:v11];
    if (!v32)
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v28 setObject:v32 forKey:v11];
    }

    v33 = [v32 objectForKey:v10];

    if (!v33)
    {
      [v32 setObject:v16 forKey:v10];
    }

    if ([v13 isUndoing] & 1) != 0 || (objc_msgSend(v13, "isRedoing"))
    {
LABEL_39:
      if (([v10 isEqualToString:@"modificationDate"] & 1) == 0 && (objc_msgSend(v13, "isUndoing") & 1) == 0 && (objc_msgSend(v13, "isRedoing") & 1) == 0)
      {
        v44 = [MEMORY[0x277CBEAA8] date];
        [v11 setModificationDate:v44];

        v45 = [v14 author];

        if (v45)
        {
          v46 = [v14 author];
          [v11 setAuthor:v46];
        }
      }

      v15 = v55;
      goto LABEL_45;
    }

    v54 = v28;
    v34 = [objc_opt_class() displayNameForUndoablePropertyChangeWithKey:v10];
    if ([v34 isEqualToString:&stru_28519E870])
    {
LABEL_38:

      v28 = v54;
      goto LABEL_39;
    }

    v35 = [(AKUndoController *)self undoGroupPresentablePropertyName];
    if (v35)
    {
    }

    else if (![(AKUndoController *)self undoGroupHasChangesToMultipleProperties])
    {
      v41 = MEMORY[0x277CCACA8];
      v49 = +[AKController akBundle];
      [v49 localizedStringForKey:@"Change of %@" value:&stru_28519E870 table:@"AnnotationStrings"];
      v42 = v51 = v34;
      v43 = [v41 stringWithFormat:v42, v51];
      [v13 setActionName:v43];

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
    [v13 setActionName:v39];

    v34 = v50;
    [(AKUndoController *)self setUndoGroupHasChangesToMultipleProperties:1];
    v40 = 0;
    goto LABEL_37;
  }

  if (a6 == @"AKUndoController.modelAnnotationsObservationContext")
  {
    v13 = [(AKUndoController *)self controller];
    v14 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v19 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v20 = [v12 objectForKey:*MEMORY[0x277CCA2F8]];
    v21 = [v20 BOOLValue];

    v22 = v11;
    if (v21)
    {
      [(AKUndoController *)self _registerUndoForSelectionOnPageModelController:v22];
      if (v14)
      {
        [(AKUndoController *)self _annotationsWillBeRemoved:v14 onPageController:v22];
      }
    }

    if (v19)
    {
      [(AKUndoController *)self _annotationsWereAdded:v19 onPageController:v22];
    }

    if ((v21 & 1) == 0)
    {
      v57 = AKAnnotationChangeObjectKey;
      v58 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      [v24 postNotificationName:AKAnnotationsAddedOrRemovedNotification object:v13 userInfo:v23];
    }

    goto LABEL_47;
  }

  v56.receiver = self;
  v56.super_class = AKUndoController;
  [(AKUndoController *)&v56 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_48:
}

- (void)observeUndoManagerDetectedEdit:(id)a3
{
  v4 = [(AKUndoController *)self controller];
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 editDetectedForAnnotationController:v4];
  }
}

- (void)observeUndoManagerCheckpoint:(id)a3
{
  v7 = [(AKUndoController *)self controller];
  v4 = [v7 delegate];
  v5 = [v7 mainEventHandler];
  if (([v5 mainEventHandlerIsInTrackingLoop] & 1) == 0)
  {
    v6 = [v5 annotationEventHandler];
    if (v6 || [v5 mainEventHandlerIsInRotationLoop])
    {
    }

    else if (![(AKUndoController *)self externalSourceTrackingChanged])
    {
      [(AKUndoController *)self setUndoGroupPresentablePropertyName:0];
      [(AKUndoController *)self setUndoGroupHasChangesToMultipleProperties:0];
      [(AKUndoController *)self setUndoGroupOldPropertiesPerAnnotation:0];
      if (objc_opt_respondsToSelector())
      {
        [v4 editCheckpointReachedForAnnotationController:v7];
      }
    }
  }
}

- (void)_annotationsWereAdded:(id)a3 onPageController:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(AKUndoController *)self undoManager];
    if ([v8 isUndoRegistrationEnabled])
    {
      v17[0] = @"pageModelController";
      v17[1] = @"annotations";
      v18[0] = v7;
      v9 = [v6 copy];
      v18[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

      [v8 registerUndoWithTarget:self selector:sel__deleteAnnotationsFromModel_ object:v10];
      if (([v8 isUndoing] & 1) == 0 && (objc_msgSend(v8, "isRedoing") & 1) == 0)
      {
        if ([v6 count] == 1)
        {
          v11 = [v6 firstObject];
          v12 = [v11 displayName];

          v13 = MEMORY[0x277CCACA8];
          v14 = +[AKController akBundle];
          v15 = [v14 localizedStringForKey:@"Add %@" value:&stru_28519E870 table:@"AnnotationStrings"];
          v16 = [v13 stringWithFormat:v15, v12];
          [v8 setActionName:v16];
        }

        else
        {
          v12 = +[AKController akBundle];
          v14 = [v12 localizedStringForKey:@"Add Annotations" value:&stru_28519E870 table:@"AnnotationStrings"];
          [v8 setActionName:v14];
        }
      }
    }

    [(AKUndoController *)self _startObservingAnnotations:v6];
  }
}

- (void)_annotationsWillBeRemoved:(id)a3 onPageController:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(AKUndoController *)self _stopObservingAnnotations:v6];
    [(AKUndoController *)self _endEditingOfTextIfAnnotationsDeleted:v6];
    v8 = [(AKUndoController *)self undoManager];
    if ([v8 isUndoRegistrationEnabled])
    {
      v17[0] = @"pageModelController";
      v17[1] = @"annotations";
      v18[0] = v7;
      v9 = [v6 copy];
      v18[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

      [v8 registerUndoWithTarget:self selector:sel__addAnnotationsFromModel_ object:v10];
      if (([v8 isUndoing] & 1) == 0 && (objc_msgSend(v8, "isRedoing") & 1) == 0)
      {
        if ([v6 count] == 1)
        {
          v11 = [v6 firstObject];
          v12 = [v11 displayName];

          v13 = MEMORY[0x277CCACA8];
          v14 = +[AKController akBundle];
          v15 = [v14 localizedStringForKey:@"Remove %@" value:&stru_28519E870 table:@"AnnotationStrings"];
          v16 = [v13 stringWithFormat:v15, v12];
          [v8 setActionName:v16];
        }

        else
        {
          v12 = +[AKController akBundle];
          v14 = [v12 localizedStringForKey:@"Remove Annotations" value:&stru_28519E870 table:@"AnnotationStrings"];
          [v8 setActionName:v14];
        }
      }
    }
  }
}

- (void)_startObservingAnnotations:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
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
        v9 = [(AKUndoController *)self observedAnnotations];
        v10 = [v9 containsObject:v8];

        if ((v10 & 1) == 0)
        {
          v11 = [v8 keysForValuesToObserveForUndo];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                  objc_enumerationMutation(v11);
                }

                [v8 addObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v15++) options:3 context:@"AKUndoController.annotationPropertyObservationContext"];
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v13);
          }

          v16 = [(AKUndoController *)self observedAnnotations];
          [v16 addObject:v8];
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)_stopObservingAnnotations:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [(AKUndoController *)self observedAnnotations];
        v11 = [v10 containsObject:v9];

        if (v11)
        {
          v12 = [v9 keysForValuesToObserveForUndo];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                  objc_enumerationMutation(v12);
                }

                [v9 removeObserver:self forKeyPath:*(*(&v18 + 1) + 8 * v16++)];
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v14);
          }

          v17 = [(AKUndoController *)self observedAnnotations];
          [v17 removeObject:v9];
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }
}

- (void)_setAnnotationProperties:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 keyEnumerator];
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
        v10 = [v3 objectForKey:v9];
        [v9 setValuesForKeysWithDictionary:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_addAnnotationsFromModel:(id)a3
{
  v3 = a3;
  v11 = [v3 objectForKeyedSubscript:@"pageModelController"];
  v4 = [v3 objectForKeyedSubscript:@"annotations"];

  v5 = [MEMORY[0x277CBEB40] orderedSetWithArray:v4];
  v6 = MEMORY[0x277CBEB98];
  v7 = [v11 annotations];
  v8 = [v6 setWithArray:v7];

  [v5 minusSet:v8];
  v9 = [v11 mutableArrayValueForKey:@"annotations"];
  v10 = [v5 array];
  [v9 addObjectsFromArray:v10];
}

- (void)_deleteAnnotationsFromModel:(id)a3
{
  v3 = a3;
  v6 = [v3 objectForKeyedSubscript:@"pageModelController"];
  v4 = [v3 objectForKeyedSubscript:@"annotations"];

  v5 = [v6 mutableArrayValueForKey:@"annotations"];
  [v5 removeObjectsInArray:v4];
}

- (void)_registerUndoForSelectionOnPageModelController:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKUndoController *)self undoManager];
  if ([v5 isUndoRegistrationEnabled])
  {
    v6 = [v4 selectionStateForUndo];
    v8[0] = @"pageModelController";
    v8[1] = @"selectionState";
    v9[0] = v4;
    v9[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v5 registerUndoWithTarget:self selector:sel__undoActionForSelectionState_ object:v7];
  }
}

- (void)_undoActionForSelectionState:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKUndoController *)self undoManager];
  v6 = [v4 objectForKey:@"pageModelController"];
  v7 = [v4 objectForKey:@"selectionState"];

  if ([v5 isUndoRegistrationEnabled])
  {
    v8 = [v6 selectionStateForUndo];
    v10[0] = @"pageModelController";
    v10[1] = @"selectionState";
    v11[0] = v6;
    v11[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v5 registerUndoWithTarget:self selector:sel__undoActionForSelectionState_ object:v9];
  }

  [v6 restoreSelectionStateForUndo:v7];
}

- (void)_endEditingOfTextIfAnnotationsDeleted:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKUndoController *)self controller];
  v6 = [v5 textEditorController];
  if ([v6 isEditing])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v4;
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
          v13 = [v6 annotation];

          if (v12 == v13)
          {
            [v6 endEditing];
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

- (void)observePageControllerRequestsDisableRegistration:(id)a3
{
  v3 = [(AKUndoController *)self undoManager];
  [v3 disableUndoRegistration];
}

- (void)observePageControllerRequestsEnableRegistration:(id)a3
{
  v3 = [(AKUndoController *)self undoManager];
  [v3 enableUndoRegistration];
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end