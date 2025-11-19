@interface PDFAKPageAdaptor
- (PDFAKPageAdaptor)initWithPDFPage:(id)a3;
- (PDFAKPageAdaptor)initWithPDFPage:(id)a3 pageModelController:(id)a4;
- (PDFPage)pdfPage;
- (void)_annotationsWereAdded:(id)a3;
- (void)_annotationsWereRemoved:(id)a3;
- (void)_startObservingPageModel;
- (void)_stopObservingPageModel;
- (void)_teardown;
- (void)dealloc;
- (void)initializeExifAndScaleOnAnnotation:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pdfPage:(id)a3 didAddAnnotation:(id)a4;
- (void)pdfPage:(id)a3 didRemoveAnnotation:(id)a4;
- (void)pdfPageWasRotated:(id)a3;
- (void)teardown;
@end

@implementation PDFAKPageAdaptor

- (PDFAKPageAdaptor)initWithPDFPage:(id)a3
{
  v4 = a3;
  if (GetDefaultsWriteAKEnabled())
  {
    v5 = objc_alloc_init(AKPageModelControllerClass());
    [v5 setRepresentedObject:v4];
    self = [(PDFAKPageAdaptor *)self initWithPDFPage:v4 pageModelController:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PDFAKPageAdaptor)initWithPDFPage:(id)a3 pageModelController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (GetDefaultsWriteAKEnabled())
  {
    v13.receiver = self;
    v13.super_class = PDFAKPageAdaptor;
    v8 = [(PDFAKPageAdaptor *)&v13 init];
    if (v8)
    {
      v9 = objc_opt_new();
      v10 = v8->_private;
      v8->_private = v9;

      objc_storeWeak(&v8->_private->pdfPage, v6);
      objc_storeStrong(&v8->_private->akPageModelController, a4);
      [(PDFAKPageAdaptor *)v8 _startObservingPageModel];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  if (!self->_private->isTornDown)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PDFAKPageAdaptor *)self _teardown];
    }

    else
    {
      NSLog(&cfstr_SCalledFromABa.isa, "[PDFAKPageAdaptor dealloc]");
    }
  }

  v3.receiver = self;
  v3.super_class = PDFAKPageAdaptor;
  [(PDFAKPageAdaptor *)&v3 dealloc];
}

- (void)teardown
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PDFAKPageAdaptor *)self _teardown];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__PDFAKPageAdaptor_teardown__block_invoke;
    block[3] = &unk_1E8150990;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_teardown
{
  v3 = self->_private;
  if (v3 && !v3->isTornDown)
  {
    v3->isTornDown = 1;
    [(PDFAKPageAdaptor *)self _stopObservingPageModel];
    v5 = self->_private;
    akPageModelController = v5->akPageModelController;
    v5->akPageModelController = 0;

    p_pdfPage = &self->_private->pdfPage;

    objc_storeWeak(p_pdfPage, 0);
  }
}

- (PDFPage)pdfPage
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfPage);

  return WeakRetained;
}

- (void)pdfPage:(id)a3 didAddAnnotation:(id)a4
{
  v5 = self->_private;
  if (!v5->isSyncingFromAKPageModel)
  {
    isSyncingFromPDFPage = v5->isSyncingFromPDFPage;
    v5->isSyncingFromPDFPage = 1;
    v10 = [a4 akAnnotationAdaptor];
    v8 = [v10 akAnnotation];
    if (v8)
    {
      [(PDFAKPageAdaptor *)self initializeExifAndScaleOnAnnotation:v8];
      v9 = [(AKPageModelController *)self->_private->akPageModelController mutableArrayValueForKey:@"annotations"];
      [v9 addObject:v8];
    }

    self->_private->isSyncingFromPDFPage = isSyncingFromPDFPage;
  }
}

- (void)pdfPage:(id)a3 didRemoveAnnotation:(id)a4
{
  v5 = self->_private;
  if (!v5->isSyncingFromAKPageModel)
  {
    isSyncingFromPDFPage = v5->isSyncingFromPDFPage;
    v5->isSyncingFromPDFPage = 1;
    v10 = [a4 akAnnotationAdaptor];
    v8 = [v10 akAnnotation];
    if (v8)
    {
      v9 = [(AKPageModelController *)self->_private->akPageModelController mutableArrayValueForKey:@"annotations"];
      [v9 removeObject:v8];
    }

    self->_private->isSyncingFromPDFPage = isSyncingFromPDFPage;
  }
}

- (void)pdfPageWasRotated:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = self->_private;
  isSyncingFromPDFPage = v4->isSyncingFromPDFPage;
  v4->isSyncingFromPDFPage = 1;
  v6 = [a3 annotations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) akAnnotationAdaptor];
        [v11 invalidateAppearanceStream];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  self->_private->isSyncingFromPDFPage = isSyncingFromPDFPage;
}

- (void)initializeExifAndScaleOnAnnotation:(id)a3
{
  v21 = a3;
  [v21 originalModelBaseScaleFactor];
  if (v4 == 0.0 || ![v21 originalExifOrientation])
  {
    v5 = [(PDFAKPageAdaptor *)self pdfPage];
    v6 = [v5 view];
    v7 = v6;
    v8 = 1.0;
    if (v6 && ([v6 window], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v5 document];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 akDocumentAdaptor];
        v13 = [v12 akMainController];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 modelController];
          v16 = [v15 pageModelControllers];
          v17 = [v16 indexOfObjectIdenticalTo:self->_private->akPageModelController];

          if (v17 == 0x7FFFFFFFFFFFFFFFLL || ![v14 isOverlayViewLoadedAtIndex:v17])
          {
            v19 = 1;
          }

          else
          {
            [v14 currentModelBaseScaleFactorForPageAtIndex:v17];
            v8 = v18;
            v19 = [v14 currentExifOrientationForPageAtIndex:v17];
          }
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 1;
    }

    [v21 originalModelBaseScaleFactor];
    if (v20 == 0.0)
    {
      [v21 setOriginalModelBaseScaleFactor:v8];
    }

    if (![v21 originalExifOrientation])
    {
      [v21 setOriginalExifOrientation:v19];
    }
  }
}

- (void)_startObservingPageModel
{
  v3 = self->_private;
  if (!v3->isObservingPageModel)
  {
    v3->isObservingPageModel = 1;
    v5 = self->_private->akPageModelController;
    [(AKPageModelController *)v5 addObserver:self forKeyPath:@"annotations" options:3 context:@"PDFAKPageAdaptor.modelAnnotationsObservationContext"];
    [(AKPageModelController *)v5 addObserver:self forKeyPath:@"selectedAnnotations" options:3 context:@"PDFAKPageAdaptor.modelSelectedAnnotationsObservationContext"];
  }
}

- (void)_stopObservingPageModel
{
  v3 = self->_private;
  if (v3->isObservingPageModel)
  {
    v5 = v3->akPageModelController;
    [(AKPageModelController *)v5 removeObserver:self forKeyPath:@"annotations" context:@"PDFAKPageAdaptor.modelAnnotationsObservationContext"];
    [(AKPageModelController *)v5 removeObserver:self forKeyPath:@"selectedAnnotations" context:@"PDFAKPageAdaptor.modelSelectedAnnotationsObservationContext"];
    self->_private->isObservingPageModel = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == @"PDFAKPageAdaptor.modelAnnotationsObservationContext")
  {
    v13 = self->_private;
    if (!v13->isSyncingFromPDFPage)
    {
      isSyncingFromAKPageModel = v13->isSyncingFromAKPageModel;
      v13->isSyncingFromAKPageModel = 1;
      v15 = self->_private->akPageModelController;
      v16 = [v12 objectForKey:*MEMORY[0x1E696A500]];
      v17 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
      if (v16)
      {
        [(PDFAKPageAdaptor *)self _annotationsWereRemoved:v16];
      }

      if (v17)
      {
        [(PDFAKPageAdaptor *)self _annotationsWereAdded:v17];
      }

      self->_private->isSyncingFromAKPageModel = isSyncingFromAKPageModel;
    }
  }

  else if (a6 == @"PDFAKPageAdaptor.modelSelectedAnnotationsObservationContext")
  {
    v33 = v11;
    v34 = v10;
    v18 = [(AKPageModelController *)self->_private->akPageModelController selectedAnnotations];
    v19 = [v18 allObjects];

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = [(PDFAKPageAdaptor *)self pdfPage];
    v21 = [v32 annotations];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v36 + 1) + 8 * i);
          v27 = [v26 akAnnotationAdaptor];
          v28 = [v27 akAnnotation];
          if (v28 && [v19 containsObject:v28])
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v23);
    }

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    v30 = [v32 view];
    v40 = @"PDFAnnotationsHit";
    v41 = v20;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v29 postNotificationName:@"PDFViewAnnotationHit" object:v30 userInfo:v31];

    v11 = v33;
    v10 = v34;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = PDFAKPageAdaptor;
    [(PDFAKPageAdaptor *)&v35 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_annotationsWereRemoved:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = objc_opt_new();
  v6 = [(PDFAKPageAdaptor *)self pdfPage];
  v7 = [v6 annotations];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 akAnnotationAdaptor];
        v14 = [v13 akAnnotation];
        if (v14 && [v4 containsObject:v14])
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v6 removeAnnotation:{*(*(&v20 + 1) + 8 * j), v20}];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)_annotationsWereAdded:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PDFAKPageAdaptor *)self pdfPage];
  v33 = [v5 annotations];
  v30 = self->_private->akPageModelController;
  v6 = [(AKPageModelController *)v30 annotations];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    p_vtable = &OBJC_METACLASS___PDFAKPageOverlayViewProvider.vtable;
    v31 = *v43;
    v32 = v5;
    do
    {
      v12 = 0;
      v35 = v9;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        AKSignatureAnnotationClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v5 view];
          v15 = [v14 activeAnnotation];
          if (v15)
          {
            v16 = v15;
            v17 = [v14 undoManager];
            [v17 undo];

            v9 = v35;
            [v16 setSignatureAnnotationForRendering:v13];
            [v14 removeControlForAnnotation:v16];
            goto LABEL_42;
          }
        }

        v18 = [p_vtable + 182 newPDFAnnotationFromAKAnnotation:v13];
        v14 = v18;
        if (!v18)
        {
          goto LABEL_43;
        }

        v36 = v18;
        v19 = [v6 indexOfObjectIdenticalTo:v13];
        for (i = v19 + 1; ; ++i)
        {
          if (i >= [v6 count])
          {
            goto LABEL_18;
          }

          v16 = [v6 objectAtIndex:i];
          if (([v7 containsObject:v16] & 1) == 0)
          {
            AKCropAnnotationClass();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }
          }
        }

        if (v16)
        {
          v34 = 0;
          goto LABEL_27;
        }

LABEL_18:
        if (v19 - 1 < 1)
        {
          v16 = 0;
          goto LABEL_40;
        }

        v14 = v36;
        while (1)
        {
          v16 = [v6 objectAtIndex:--v19];
          if (([v7 containsObject:v16] & 1) == 0)
          {
            AKCropAnnotationClass();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }
          }

          if (v19 <= 1)
          {
            v16 = 0;
            goto LABEL_41;
          }
        }

        if (v16)
        {
          v34 = 1;
LABEL_27:
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = v33;
          v21 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v39;
LABEL_29:
            v24 = 0;
            while (1)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v38 + 1) + 8 * v24);
              v26 = [v25 akAnnotationAdaptor];
              v27 = [v26 akAnnotation];
              v28 = v27;
              if (v27 == v16)
              {
                break;
              }

              if (v22 == ++v24)
              {
                v22 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
                p_vtable = (&OBJC_METACLASS___PDFAKPageOverlayViewProvider + 24);
                if (v22)
                {
                  goto LABEL_29;
                }

                goto LABEL_35;
              }
            }

            v29 = v25;

            if (v29)
            {
              v5 = v32;
              [v32 insertAnnotation:v36 atIndex:{objc_msgSend(obj, "indexOfObjectIdenticalTo:", v29) + v34}];

              v14 = v36;
              v10 = v31;
              p_vtable = (&OBJC_METACLASS___PDFAKPageOverlayViewProvider + 24);
              v9 = v35;
              goto LABEL_42;
            }

            v10 = v31;
            v5 = v32;
            p_vtable = (&OBJC_METACLASS___PDFAKPageOverlayViewProvider + 24);
          }

          else
          {
LABEL_35:

            v10 = v31;
            v5 = v32;
          }

          v9 = v35;
LABEL_40:
          v14 = v36;
        }

LABEL_41:
        [v5 addAnnotation:v14];
LABEL_42:

LABEL_43:
        ++v12;
      }

      while (v12 != v9);
      v9 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v9);
  }
}

@end