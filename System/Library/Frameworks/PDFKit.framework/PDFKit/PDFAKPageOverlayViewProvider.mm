@interface PDFAKPageOverlayViewProvider
- (PDFAKPageOverlayViewProvider)initWithPDFDocument:(id)document pdfView:(id)view andAKController:(id)controller;
- (id)pdfView:(id)view overlayViewForPage:(id)page;
- (void)overlayViewInstalledForPage:(id)page;
- (void)overlayViewWillBeUninstalledForPage:(id)page;
- (void)pdfView:(id)view willEndDisplayingOverlayView:(id)overlayView forPage:(id)page;
- (void)setupGestureRecognizersForView:(id)view;
- (void)teardownGestureRecognizersForView:(id)view;
@end

@implementation PDFAKPageOverlayViewProvider

- (PDFAKPageOverlayViewProvider)initWithPDFDocument:(id)document pdfView:(id)view andAKController:(id)controller
{
  documentCopy = document;
  viewCopy = view;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = PDFAKPageOverlayViewProvider;
  v11 = [(PDFAKPageOverlayViewProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_pdfDocument, documentCopy);
    objc_storeWeak(&v12->_pdfView, viewCopy);
    objc_storeWeak(&v12->_akController, controllerCopy);
  }

  return v12;
}

- (id)pdfView:(id)view overlayViewForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  v7 = [WeakRetained indexForPage:pageCopy];

  v8 = objc_loadWeakRetained(&self->_akController);
  if (([v8 isOverlayViewLoadedAtIndex:v7] & 1) == 0)
  {
    [v8 prepareOverlayAtIndex:v7];
  }

  v9 = [v8 overlayViewAtIndex:v7];

  return v9;
}

- (void)pdfView:(id)view willEndDisplayingOverlayView:(id)overlayView forPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  v8 = [WeakRetained indexForPage:pageCopy];

  v9 = objc_loadWeakRetained(&self->_akController);
  [v9 relinquishOverlayAtIndex:v8];
}

- (void)setupGestureRecognizersForView:(id)view
{
  v45[5] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_akController);
  v6 = WeakRetained;
  if (viewCopy && WeakRetained)
  {
    tapGestureRecognizer = [WeakRetained tapGestureRecognizer];
    v45[0] = tapGestureRecognizer;
    doubleTapGestureRecognizer = [v6 doubleTapGestureRecognizer];
    v45[1] = doubleTapGestureRecognizer;
    pressGestureRecognizer = [v6 pressGestureRecognizer];
    v45[2] = pressGestureRecognizer;
    panGestureRecognizer = [v6 panGestureRecognizer];
    v45[3] = panGestureRecognizer;
    rotationGestureRecognizer = [v6 rotationGestureRecognizer];
    v45[4] = rotationGestureRecognizer;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        v17 = 0;
        do
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [viewCopy addGestureRecognizer:{*(*(&v40 + 1) + 8 * v17++), v40}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }

    tapGestureRecognizer2 = [viewCopy tapGestureRecognizer];
    tapGestureRecognizer3 = [v6 tapGestureRecognizer];
    [tapGestureRecognizer2 requireGestureRecognizerToFail:tapGestureRecognizer3];

    longPressGestureRecognizer = [viewCopy longPressGestureRecognizer];
    tapGestureRecognizer4 = [v6 tapGestureRecognizer];
    [longPressGestureRecognizer requireGestureRecognizerToFail:tapGestureRecognizer4];

    longPressGestureRecognizer2 = [viewCopy longPressGestureRecognizer];
    pressGestureRecognizer2 = [v6 pressGestureRecognizer];
    [longPressGestureRecognizer2 requireGestureRecognizerToFail:pressGestureRecognizer2];

    longPressGestureRecognizer3 = [viewCopy longPressGestureRecognizer];
    panGestureRecognizer2 = [v6 panGestureRecognizer];
    [longPressGestureRecognizer3 requireGestureRecognizerToFail:panGestureRecognizer2];

    longPressGestureRecognizer4 = [viewCopy longPressGestureRecognizer];
    rotationGestureRecognizer2 = [v6 rotationGestureRecognizer];
    [longPressGestureRecognizer4 requireGestureRecognizerToFail:rotationGestureRecognizer2];

    if ([viewCopy isUsingPageViewController])
    {
      documentViewController = [viewCopy documentViewController];
      scrollView = [documentViewController scrollView];
    }

    else
    {
      scrollView = [viewCopy documentScrollView];
    }

    panGestureRecognizer3 = [scrollView panGestureRecognizer];
    panGestureRecognizer4 = [v6 panGestureRecognizer];
    [panGestureRecognizer3 requireGestureRecognizerToFail:panGestureRecognizer4];

    panGestureRecognizer5 = [scrollView panGestureRecognizer];
    rotationGestureRecognizer3 = [v6 rotationGestureRecognizer];
    [panGestureRecognizer5 requireGestureRecognizerToFail:rotationGestureRecognizer3];

    pinchGestureRecognizer = [scrollView pinchGestureRecognizer];
    panGestureRecognizer6 = [v6 panGestureRecognizer];
    [pinchGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer6];

    pinchGestureRecognizer2 = [scrollView pinchGestureRecognizer];
    rotationGestureRecognizer4 = [v6 rotationGestureRecognizer];
    [pinchGestureRecognizer2 requireGestureRecognizerToFail:rotationGestureRecognizer4];

    scrollViewMinimumNumberOfTouches = [viewCopy scrollViewMinimumNumberOfTouches];
    panGestureRecognizer7 = [scrollView panGestureRecognizer];
    [panGestureRecognizer7 setMinimumNumberOfTouches:scrollViewMinimumNumberOfTouches];
  }
}

- (void)teardownGestureRecognizersForView:(id)view
{
  v23[5] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_akController);
  v6 = WeakRetained;
  if (viewCopy && WeakRetained)
  {
    tapGestureRecognizer = [WeakRetained tapGestureRecognizer];
    v23[0] = tapGestureRecognizer;
    doubleTapGestureRecognizer = [v6 doubleTapGestureRecognizer];
    v23[1] = doubleTapGestureRecognizer;
    pressGestureRecognizer = [v6 pressGestureRecognizer];
    v23[2] = pressGestureRecognizer;
    panGestureRecognizer = [v6 panGestureRecognizer];
    v23[3] = panGestureRecognizer;
    rotationGestureRecognizer = [v6 rotationGestureRecognizer];
    v23[4] = rotationGestureRecognizer;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [viewCopy removeGestureRecognizer:{*(*(&v18 + 1) + 8 * v17++), v18}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (void)overlayViewInstalledForPage:(id)page
{
  v50 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_akController);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_pdfView);
    v7 = objc_loadWeakRetained(&self->_pdfDocument);
    v8 = [v7 indexForPage:pageCopy];

    if ([v6 isUsingPageViewController])
    {
      documentViewController = [v6 documentViewController];
      v10 = [documentViewController findPageViewControllerForPageIndex:v8];
      v11 = v10;
      if (v10)
      {
        scrollView = [v10 scrollView];
        panGestureRecognizer = [scrollView panGestureRecognizer];
        panGestureRecognizer2 = [WeakRetained panGestureRecognizer];
        [panGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer2];

        panGestureRecognizer3 = [scrollView panGestureRecognizer];
        rotationGestureRecognizer = [WeakRetained rotationGestureRecognizer];
        [panGestureRecognizer3 requireGestureRecognizerToFail:rotationGestureRecognizer];

        pinchGestureRecognizer = [scrollView pinchGestureRecognizer];
        panGestureRecognizer4 = [WeakRetained panGestureRecognizer];
        [pinchGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer4];

        pinchGestureRecognizer2 = [scrollView pinchGestureRecognizer];
        rotationGestureRecognizer2 = [WeakRetained rotationGestureRecognizer];
        [pinchGestureRecognizer2 requireGestureRecognizerToFail:rotationGestureRecognizer2];

        scrollViewMinimumNumberOfTouches = [v6 scrollViewMinimumNumberOfTouches];
        panGestureRecognizer5 = [scrollView panGestureRecognizer];
        [panGestureRecognizer5 setMinimumNumberOfTouches:scrollViewMinimumNumberOfTouches];
      }
    }

    v23 = [v6 pageViewForPageAtIndex:v8];
    if (v23)
    {
      v35 = v6;
      tapGestureRecognizer = [WeakRetained tapGestureRecognizer];
      v36 = WeakRetained;
      panGestureRecognizer6 = [WeakRetained panGestureRecognizer];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v34 = v23;
      obj = [v23 subviews];
      v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v39)
      {
        v38 = *v45;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v45 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      continue;
                    }
                  }
                }
              }
            }

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            gestureRecognizers = [v27 gestureRecognizers];
            v29 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v41;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v41 != v31)
                  {
                    objc_enumerationMutation(gestureRecognizers);
                  }

                  v33 = *(*(&v40 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v33 requireGestureRecognizerToFail:tapGestureRecognizer];
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v33 requireGestureRecognizerToFail:panGestureRecognizer6];
                  }
                }

                v30 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v48 count:16];
              }

              while (v30);
            }
          }

          v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v39);
      }

      WeakRetained = v36;
      v23 = v34;
      v6 = v35;
    }
  }
}

- (void)overlayViewWillBeUninstalledForPage:(id)page
{
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  if ([WeakRetained isUsingPageViewController])
  {
    v5 = objc_loadWeakRetained(&self->_pdfDocument);
    v6 = [v5 indexForPage:pageCopy];

    documentViewController = [WeakRetained documentViewController];
    v8 = [documentViewController findPageViewControllerForPageIndex:v6];
    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_akController);
      if (v9)
      {
        scrollView = [v8 scrollView];
        panGestureRecognizer = [scrollView panGestureRecognizer];
        panGestureRecognizer2 = [v9 panGestureRecognizer];
        [panGestureRecognizer removeFailureRequirement:panGestureRecognizer2];

        panGestureRecognizer3 = [scrollView panGestureRecognizer];
        rotationGestureRecognizer = [v9 rotationGestureRecognizer];
        [panGestureRecognizer3 removeFailureRequirement:rotationGestureRecognizer];

        pinchGestureRecognizer = [scrollView pinchGestureRecognizer];
        panGestureRecognizer4 = [v9 panGestureRecognizer];
        [pinchGestureRecognizer removeFailureRequirement:panGestureRecognizer4];

        pinchGestureRecognizer2 = [scrollView pinchGestureRecognizer];
        rotationGestureRecognizer2 = [v9 rotationGestureRecognizer];
        [pinchGestureRecognizer2 removeFailureRequirement:rotationGestureRecognizer2];
      }
    }
  }
}

@end