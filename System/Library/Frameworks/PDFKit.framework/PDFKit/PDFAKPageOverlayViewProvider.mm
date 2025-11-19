@interface PDFAKPageOverlayViewProvider
- (PDFAKPageOverlayViewProvider)initWithPDFDocument:(id)a3 pdfView:(id)a4 andAKController:(id)a5;
- (id)pdfView:(id)a3 overlayViewForPage:(id)a4;
- (void)overlayViewInstalledForPage:(id)a3;
- (void)overlayViewWillBeUninstalledForPage:(id)a3;
- (void)pdfView:(id)a3 willEndDisplayingOverlayView:(id)a4 forPage:(id)a5;
- (void)setupGestureRecognizersForView:(id)a3;
- (void)teardownGestureRecognizersForView:(id)a3;
@end

@implementation PDFAKPageOverlayViewProvider

- (PDFAKPageOverlayViewProvider)initWithPDFDocument:(id)a3 pdfView:(id)a4 andAKController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PDFAKPageOverlayViewProvider;
  v11 = [(PDFAKPageOverlayViewProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_pdfDocument, v8);
    objc_storeWeak(&v12->_pdfView, v9);
    objc_storeWeak(&v12->_akController, v10);
  }

  return v12;
}

- (id)pdfView:(id)a3 overlayViewForPage:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  v7 = [WeakRetained indexForPage:v5];

  v8 = objc_loadWeakRetained(&self->_akController);
  if (([v8 isOverlayViewLoadedAtIndex:v7] & 1) == 0)
  {
    [v8 prepareOverlayAtIndex:v7];
  }

  v9 = [v8 overlayViewAtIndex:v7];

  return v9;
}

- (void)pdfView:(id)a3 willEndDisplayingOverlayView:(id)a4 forPage:(id)a5
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_pdfDocument);
  v8 = [WeakRetained indexForPage:v6];

  v9 = objc_loadWeakRetained(&self->_akController);
  [v9 relinquishOverlayAtIndex:v8];
}

- (void)setupGestureRecognizersForView:(id)a3
{
  v45[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_akController);
  v6 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v7 = [WeakRetained tapGestureRecognizer];
    v45[0] = v7;
    v8 = [v6 doubleTapGestureRecognizer];
    v45[1] = v8;
    v9 = [v6 pressGestureRecognizer];
    v45[2] = v9;
    v10 = [v6 panGestureRecognizer];
    v45[3] = v10;
    v11 = [v6 rotationGestureRecognizer];
    v45[4] = v11;
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

          [v4 addGestureRecognizer:{*(*(&v40 + 1) + 8 * v17++), v40}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v15);
    }

    v18 = [v4 tapGestureRecognizer];
    v19 = [v6 tapGestureRecognizer];
    [v18 requireGestureRecognizerToFail:v19];

    v20 = [v4 longPressGestureRecognizer];
    v21 = [v6 tapGestureRecognizer];
    [v20 requireGestureRecognizerToFail:v21];

    v22 = [v4 longPressGestureRecognizer];
    v23 = [v6 pressGestureRecognizer];
    [v22 requireGestureRecognizerToFail:v23];

    v24 = [v4 longPressGestureRecognizer];
    v25 = [v6 panGestureRecognizer];
    [v24 requireGestureRecognizerToFail:v25];

    v26 = [v4 longPressGestureRecognizer];
    v27 = [v6 rotationGestureRecognizer];
    [v26 requireGestureRecognizerToFail:v27];

    if ([v4 isUsingPageViewController])
    {
      v28 = [v4 documentViewController];
      v29 = [v28 scrollView];
    }

    else
    {
      v29 = [v4 documentScrollView];
    }

    v30 = [v29 panGestureRecognizer];
    v31 = [v6 panGestureRecognizer];
    [v30 requireGestureRecognizerToFail:v31];

    v32 = [v29 panGestureRecognizer];
    v33 = [v6 rotationGestureRecognizer];
    [v32 requireGestureRecognizerToFail:v33];

    v34 = [v29 pinchGestureRecognizer];
    v35 = [v6 panGestureRecognizer];
    [v34 requireGestureRecognizerToFail:v35];

    v36 = [v29 pinchGestureRecognizer];
    v37 = [v6 rotationGestureRecognizer];
    [v36 requireGestureRecognizerToFail:v37];

    v38 = [v4 scrollViewMinimumNumberOfTouches];
    v39 = [v29 panGestureRecognizer];
    [v39 setMinimumNumberOfTouches:v38];
  }
}

- (void)teardownGestureRecognizersForView:(id)a3
{
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_akController);
  v6 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v7 = [WeakRetained tapGestureRecognizer];
    v23[0] = v7;
    v8 = [v6 doubleTapGestureRecognizer];
    v23[1] = v8;
    v9 = [v6 pressGestureRecognizer];
    v23[2] = v9;
    v10 = [v6 panGestureRecognizer];
    v23[3] = v10;
    v11 = [v6 rotationGestureRecognizer];
    v23[4] = v11;
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

          [v4 removeGestureRecognizer:{*(*(&v18 + 1) + 8 * v17++), v18}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (void)overlayViewInstalledForPage:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_akController);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_pdfView);
    v7 = objc_loadWeakRetained(&self->_pdfDocument);
    v8 = [v7 indexForPage:v4];

    if ([v6 isUsingPageViewController])
    {
      v9 = [v6 documentViewController];
      v10 = [v9 findPageViewControllerForPageIndex:v8];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 scrollView];
        v13 = [v12 panGestureRecognizer];
        v14 = [WeakRetained panGestureRecognizer];
        [v13 requireGestureRecognizerToFail:v14];

        v15 = [v12 panGestureRecognizer];
        v16 = [WeakRetained rotationGestureRecognizer];
        [v15 requireGestureRecognizerToFail:v16];

        v17 = [v12 pinchGestureRecognizer];
        v18 = [WeakRetained panGestureRecognizer];
        [v17 requireGestureRecognizerToFail:v18];

        v19 = [v12 pinchGestureRecognizer];
        v20 = [WeakRetained rotationGestureRecognizer];
        [v19 requireGestureRecognizerToFail:v20];

        v21 = [v6 scrollViewMinimumNumberOfTouches];
        v22 = [v12 panGestureRecognizer];
        [v22 setMinimumNumberOfTouches:v21];
      }
    }

    v23 = [v6 pageViewForPageAtIndex:v8];
    if (v23)
    {
      v35 = v6;
      v24 = [WeakRetained tapGestureRecognizer];
      v36 = WeakRetained;
      v25 = [WeakRetained panGestureRecognizer];
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
            v28 = [v27 gestureRecognizers];
            v29 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v40 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v33 requireGestureRecognizerToFail:v24];
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v33 requireGestureRecognizerToFail:v25];
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v40 objects:v48 count:16];
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

- (void)overlayViewWillBeUninstalledForPage:(id)a3
{
  v19 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pdfView);
  if ([WeakRetained isUsingPageViewController])
  {
    v5 = objc_loadWeakRetained(&self->_pdfDocument);
    v6 = [v5 indexForPage:v19];

    v7 = [WeakRetained documentViewController];
    v8 = [v7 findPageViewControllerForPageIndex:v6];
    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_akController);
      if (v9)
      {
        v10 = [v8 scrollView];
        v11 = [v10 panGestureRecognizer];
        v12 = [v9 panGestureRecognizer];
        [v11 removeFailureRequirement:v12];

        v13 = [v10 panGestureRecognizer];
        v14 = [v9 rotationGestureRecognizer];
        [v13 removeFailureRequirement:v14];

        v15 = [v10 pinchGestureRecognizer];
        v16 = [v9 panGestureRecognizer];
        [v15 removeFailureRequirement:v16];

        v17 = [v10 pinchGestureRecognizer];
        v18 = [v9 rotationGestureRecognizer];
        [v17 removeFailureRequirement:v18];
      }
    }
  }
}

@end