@interface PDFDocumentView
- (CGSize)documentViewSize;
- (CGVector)_scaleFromLayerTransforms;
- (PDFDocumentView)initWithPDFView:(id)a3;
- (id)_createPageView:(id)a3;
- (id)backgroundImageForPage:(id)a3 withQuality:(int *)a4;
- (id)createPageViewForPageAtIndex:(unint64_t)a3 withFrame:(CGRect)a4;
- (id)document;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pageViewForPageAtIndex:(unint64_t)a3;
- (id)pdfView;
- (void)_reAddPageOverlaysStartingAtIndex:(unint64_t)a3;
- (void)_removePageOverlaysStartingAtIndex:(unint64_t)a3;
- (void)_shiftPagesAtIndex:(unint64_t)a3 downwards:(BOOL)a4;
- (void)_updateVisibility;
- (void)_updateVisibilityDelegateForVisiblePageView:(id)a3 atIndex:(unint64_t)a4;
- (void)changedBoundsForBoxNotification:(id)a3;
- (void)dealloc;
- (void)didInsertPage:(id)a3 atIndex:(unint64_t)a4;
- (void)didRemovePage:(id)a3 atIndex:(unint64_t)a4;
- (void)didRotatePageNotification:(id)a3;
- (void)didSwapPage:(id)a3 atIndex:(unint64_t)a4 forPage:(id)a5 atIndex:(unint64_t)a6;
- (void)forceUpdateActivePageIndex:(unint64_t)a3 withMaxDuration:(double)a4;
- (void)layoutDocumentView;
- (void)previewRotateShiftPages:(double)a3;
- (void)recieveBackgroundImage:(id)a3 atBackgroundQuality:(int)a4 forPage:(id)a5;
- (void)removePageViewForPageAtIndex:(unint64_t)a3;
- (void)setDocument:(id)a3;
- (void)updateNotificationsForDocument;
- (void)updateVisibility;
- (void)willRemovePage:(id)a3 atIndex:(unint64_t)a4;
- (void)willSwapPage:(id)a3 atIndex:(unint64_t)a4 forPage:(id)a5 atIndex:(unint64_t)a6;
@end

@implementation PDFDocumentView

- (PDFDocumentView)initWithPDFView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PDFDocumentView;
  v5 = [(PDFTextInputView *)&v11 initWithDelegate:self];
  if (v5)
  {
    v6 = objc_alloc_init(PDFDocumentViewPrivate);
    v7 = v5->_private;
    v5->_private = v6;

    objc_storeWeak(&v5->_private->pdfView, v4);
    v8 = [v4 renderingProperties];
    objc_storeWeak(&v5->_private->renderingProperties, v8);
    v5->_private->ignoreChangedBoundsForBoxNotification = 1;
    [(PDFDocumentView *)v5 updateNotificationsForDocument];
    if (([v8 isUsingPDFExtensionView] & 1) == 0)
    {
      [(PDFDocumentView *)v5 becomeFirstResponder];
    }

    [(PDFTextInputView *)v5 updateGestureRecognizerDependencies];
    v9 = [(PDFDocumentView *)v5 layer];
    [v9 setAllowsEdgeAntialiasing:0];
  }

  return v5;
}

- (void)dealloc
{
  pageBackgroundManager = self->_private->pageBackgroundManager;
  if (pageBackgroundManager)
  {
    [(PDFPageBackgroundManager *)pageBackgroundManager cancel];
    v4 = self->_private;
    v5 = v4->pageBackgroundManager;
    v4->pageBackgroundManager = 0;
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = PDFDocumentView;
  [(PDFDocumentView *)&v7 dealloc];
}

- (void)setDocument:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  if (WeakRetained != v4)
  {
    [(NSMutableDictionary *)self->_private->pageViews allValues];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v5 = v28 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = *v28;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v27 + 1) + 8 * v8);
          v10 = objc_loadWeakRetained(&self->_private->pdfView);
          v11 = [v9 visibilityDelegateIndex];
          [v10 callPageVisibilityDelegateMethod:2 forPageView:v9 atPageIndex:v11];
          [v9 removeFromSuperview];
          [v10 callPageVisibilityDelegateMethod:3 forPageView:v9 atPageIndex:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }

    objc_storeWeak(&self->_private->document, v4);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_private;
    pageViews = v13->pageViews;
    v13->pageViews = v12;

    self->_private->pageFrames.__end_ = self->_private->pageFrames.__begin_;
    [v4 setPageChangeDelegate:self];
    v15 = [PDFDocumentContentView alloc];
    [(PDFDocumentView *)self frame];
    v16 = [(PDFDocumentContentView *)v15 initWithFrame:?];
    v17 = self->_private;
    contentView = v17->contentView;
    v17->contentView = v16;

    [(PDFDocumentView *)self addSubview:self->_private->contentView];
    pageBackgroundManager = self->_private->pageBackgroundManager;
    if (pageBackgroundManager)
    {
      [(PDFPageBackgroundManager *)pageBackgroundManager cancel];
    }

    if (v4)
    {
      if ([v4 isLinearized] && (objc_msgSend(v4, "hasHighLatencyDataProvider") & 1) != 0)
      {
        goto LABEL_17;
      }

      v20 = [PDFPageBackgroundManager alloc];
      v21 = objc_loadWeakRetained(&self->_private->renderingProperties);
      v22 = [(PDFPageBackgroundManager *)v20 initWithDelegate:self andRenderingProperties:v21];
      v23 = self->_private;
      v24 = v23->pageBackgroundManager;
      v23->pageBackgroundManager = v22;
    }

    else
    {
      [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager cancel];
      v25 = self->_private;
      v21 = v25->pageBackgroundManager;
      v25->pageBackgroundManager = 0;
    }

LABEL_17:
    [(PDFDocumentContentView *)self->_private->contentView setUserInteractionEnabled:0];
    [(PDFDocumentView *)self updateNotificationsForDocument];
  }
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  return WeakRetained;
}

- (void)updateNotificationsForDocument
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  [v4 removeObserver:self name:@"PDFPageChangedBoundsForBox" object:0];
  [v4 removeObserver:self name:@"PDFPageDidRotate" object:0];
  [v4 removeObserver:self name:@"PDFPageDidChangeBounds" object:0];
  if (WeakRetained)
  {
    [v4 addObserver:self selector:sel_changedBoundsForBoxNotification_ name:@"PDFPageChangedBoundsForBox" object:WeakRetained];
    [v4 addObserver:self selector:sel_didRotatePageNotification_ name:@"PDFPageDidRotate" object:WeakRetained];
    [v4 addObserver:self selector:sel_didRotatePageNotification_ name:@"PDFPageDidChangeBounds" object:WeakRetained];
  }
}

- (id)pageViewForPageAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || ![(NSMutableDictionary *)self->_private->pageViews count])
  {
    v7 = 0;
  }

  else
  {
    pageViews = self->_private->pageViews;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = [(NSMutableDictionary *)pageViews objectForKey:v6];
  }

  return v7;
}

- (id)createPageViewForPageAtIndex:(unint64_t)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_private->document);
    v25 = a3;
    v12 = [v11 pageAtIndex:a3];

    [v12 setView:WeakRetained];
    v13 = [(PDFDocumentView *)self _createPageView:v12];
    [v13 setFrame:{x, y, width, height}];
    v14 = self->_private->pageViews;
    objc_sync_enter(v14);
    [WeakRetained callPageVisibilityDelegateMethod:0 forPageView:v13 atPageIndex:v25];
    pageViews = self->_private->pageViews;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
    [(NSMutableDictionary *)pageViews setObject:v13 forKey:v16];

    [v13 setNeedsLayout];
    [v13 layoutIfNeeded];
    [(PDFDocumentView *)self insertSubview:v13 aboveSubview:self->_private->contentView];
    [(PDFTextInputView *)self updateTextSelectionGraphics];
    objc_sync_exit(v14);

    [WeakRetained highlightedSelections];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v17 = v27 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [v21 pages];
          v23 = [v22 containsObject:v12];

          if (v23)
          {
            [v13 addSearchSelection:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [WeakRetained callPageVisibilityDelegateMethod:1 forPageView:v13 atPageIndex:v25];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)removePageViewForPageAtIndex:(unint64_t)a3
{
  obj = self->_private->pageViews;
  objc_sync_enter(obj);
  pageViews = self->_private->pageViews;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)pageViews objectForKey:v6];

  v8 = [v7 visibilityDelegateIndex];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained callPageVisibilityDelegateMethod:2 forPageView:v7 atPageIndex:v8];
  v10 = self->_private->pageViews;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  [v7 removeFromSuperview];
  [WeakRetained callPageVisibilityDelegateMethod:3 forPageView:v7 atPageIndex:v8];

  objc_sync_exit(obj);
}

- (void)layoutDocumentView
{
  v41 = *MEMORY[0x1E69E9840];
  self->_private->ignoreChangedBoundsForBoxNotification = 1;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v3 = [WeakRetained PDFLayout];
  self->_private->pageFrames.__end_ = self->_private->pageFrames.__begin_;
  v4 = objc_loadWeakRetained(&self->_private->document);
  v5 = [WeakRetained currentPage];
  if (!v5)
  {
    v5 = [v4 pageAtIndex:?];
  }

  [v3 contentSizeWithCurrentPage:v5];
  v7 = v6;
  v8 = self->_private;
  v8->documentViewSize.width = v9;
  v8->documentViewSize.height = v6;
  v10.n128_u64[0] = 0;
  v11.n128_u64[0] = 0;
  [(PDFDocumentView *)self setFrame:PDFRectMake(v10, v11, self->_private->documentViewSize.width, self->_private->documentViewSize.height)];
  v12.n128_u64[0] = 0;
  v13.n128_u64[0] = 0;
  [(PDFDocumentView *)self setBounds:PDFRectMake(v12, v13, self->_private->documentViewSize.width, self->_private->documentViewSize.height)];
  v14 = [WeakRetained documentScrollView];
  [(PDFDocumentView *)self frame];
  [v14 setContentSize:{v15, v16}];
  [v14 centerAlign];

  v17 = [v4 pageCount];
  std::vector<CGRect>::resize(&self->_private->pageFrames.__begin_, v17);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [v3 boundsForPageAtIndex:v19];
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      [(PDFDocumentView *)self _pixelAlignPageFrameOrigin:*v20, *(v20 + 8), v21, v22];
      v24 = &self->_private->pageFrames.__begin_[v18];
      v24->origin.x = v25;
      v24->origin.y = v7 - v23 - v22;
      v24->size.width = v21;
      v24->size.height = v22;
      ++v19;
      ++v18;
    }

    while ((v17 & 0x7FFFFFFF) != v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = [(NSMutableDictionary *)self->_private->pageViews allValues];
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v27)
  {
    v28 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v36 + 1) + 8 * i);
        v31 = [v30 page];
        v32 = [v4 indexForPage:v31];
        begin = self->_private->pageFrames.__begin_;
        if (v32 < self->_private->pageFrames.__end_ - begin)
        {
          [v30 setFrame:{begin[v32].origin.x, begin[v32].origin.y, begin[v32].size.width, begin[v32].size.height}];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v27);
  }

  [(PDFTextInputView *)self updateTextSelectionGraphics];
  self->_private->ignoreChangedBoundsForBoxNotification = 0;
}

- (CGSize)documentViewSize
{
  v2 = self->_private;
  width = v2->documentViewSize.width;
  height = v2->documentViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)updateVisibility
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PDFDocumentView *)self _updateVisibility];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PDFDocumentView_updateVisibility__block_invoke;
    block[3] = &unk_1E8151520;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_updateVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_private->pdfView);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 PDFLayout];
      v7 = [v6 functionalDisplayMode];
      v8 = [v5 currentPage];
      v9 = v8;
      v10 = v7 == 2 || v7 == 0;
      v11 = v10 && v8 == 0;
      if (!v11 && self->_private->pageFrames.__begin_ != self->_private->pageFrames.__end_)
      {
        v62 = v6;
        v63 = v5;
        [v5 bounds];
        [v5 convertRect:self toView:?];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v20 = objc_loadWeakRetained(&self->_private->renderingProperties);
        if ([v20 isUsingPDFExtensionView])
        {
          [v5 extensionViewBoundsInDocument];
          v13 = v21;
          v15 = v22;
          v17 = v23;
          v19 = v24;
        }

        v75.origin.x = v13;
        v75.origin.y = v15;
        v75.size.width = v17;
        v75.size.height = v19;
        v76 = PDFRectInset(v75, -(v17 - v17 * 2.0) * -0.5, -(v19 - v19 * 3.0) * -0.5);
        x = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        v72 = 0;
        v73 = 0;
        v71 = &v72;
        if (v7)
        {
          if (v7 == 2)
          {
            v68 = [WeakRetained indexForPage:v9];
            std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(&v71, &v68);
            v29 = [v5 currentPage];
            v30 = [v6 facingPageForPage:v29];

            if (v30)
            {
              v31 = [v5 displaysAsBook];
              v32 = v68 ? 0 : v31;
              if ((v32 & 1) == 0)
              {
                v74[0] = [WeakRetained indexForPage:v30];
                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(&v71, v74);
              }
            }
          }

          else
          {
            v33 = self->_private;
            v69 = 0;
            v70 = 0;
            v68 = &v69;
            begin = v33->pageFrames.__begin_;
            end = v33->pageFrames.__end_;
            if (begin != end)
            {
              v77.origin.x = x;
              v77.origin.y = y;
              v77.size.width = width;
              v77.size.height = height;
              MinY = CGRectGetMinY(v77);
              v37 = end - begin;
              do
              {
                v38 = &begin[v37 >> 1];
                MaxY = CGRectGetMaxY(*v38);
                if (MaxY >= MinY)
                {
                  v37 >>= 1;
                }

                else
                {
                  v37 += ~(v37 >> 1);
                }

                if (MaxY < MinY)
                {
                  begin = v38 + 1;
                }
              }

              while (v37);
              v40 = v33->pageFrames.__end_;
              v78.origin.x = x;
              v78.origin.y = y;
              v78.size.width = width;
              v78.size.height = height;
              v41 = CGRectGetMaxY(v78);
              if (begin != v40)
              {
                v42 = v41;
                v43 = v40 - begin;
                v44 = begin;
                do
                {
                  v45 = &v44[v43 >> 1];
                  v46 = CGRectGetMinY(*v45);
                  if (v46 >= v42)
                  {
                    v43 >>= 1;
                  }

                  else
                  {
                    v43 += ~(v43 >> 1);
                  }

                  if (v46 < v42)
                  {
                    v44 = v45 + 1;
                  }
                }

                while (v43);
                if (v44 != begin)
                {
                  v47 = begin;
                  do
                  {
                    if (begin == v33->pageFrames.__end_)
                    {
                      break;
                    }

                    v79.origin.x = x;
                    v79.origin.y = y;
                    v79.size.width = width;
                    v79.size.height = height;
                    if (CGRectIntersectsRect(*begin, v79))
                    {
                      v74[0] = v47 - v33->pageFrames.__begin_;
                      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(&v68, v74);
                    }

                    ++begin;
                    ++v47;
                  }

                  while (begin != v44);
                }
              }
            }

            std::__tree<unsigned long>::destroy(&v71, v72);
            v48 = v69;
            v71 = v68;
            v72 = v69;
            v73 = v70;
            if (v70)
            {
              v69[2] = &v72;
              v68 = &v69;
              v69 = 0;
              v70 = 0;
              v48 = 0;
            }

            else
            {
              v71 = &v72;
            }

            std::__tree<unsigned long>::destroy(&v68, v48);
          }
        }

        else
        {
          v68 = [WeakRetained indexForPage:v9];
          std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(&v71, &v68);
        }

        v49 = v71;
        if (v71 != &v72)
        {
          do
          {
            v50 = v49[4];
            v51 = [WeakRetained pageAtIndex:v50];
            pageViews = self->_private->pageViews;
            v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v50];
            v54 = [(NSMutableDictionary *)pageViews objectForKeyedSubscript:v53];

            v55 = &self->_private->pageFrames.__begin_[v50];
            [(PDFDocumentView *)self _pixelAlignPageFrameOrigin:v55->origin.x, v55->origin.y, v55->size.width, v55->size.height];
            if (v54)
            {
              [v54 setFrame:?];
              [(PDFDocumentView *)self _updateVisibilityDelegateForVisiblePageView:v54 atIndex:v50];
            }

            else
            {
              v54 = [(PDFDocumentView *)self createPageViewForPageAtIndex:v50 withFrame:?];
            }

            v56 = v49[1];
            if (v56)
            {
              do
              {
                v57 = v56;
                v56 = *v56;
              }

              while (v56);
            }

            else
            {
              do
              {
                v57 = v49[2];
                v10 = *v57 == v49;
                v49 = v57;
              }

              while (!v10);
            }

            v49 = v57;
          }

          while (v57 != &v72);
        }

        v58 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v59 = self->_private->pageViews;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3321888768;
        v65[2] = __36__PDFDocumentView__updateVisibility__block_invoke;
        v65[3] = &unk_1F416CC50;
        std::set<unsigned long>::set[abi:ne200100](v67, &v71);
        v60 = v58;
        v66 = v60;
        v6 = v62;
        v5 = v63;
        [(NSMutableDictionary *)v59 enumerateKeysAndObjectsUsingBlock:v65];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __36__PDFDocumentView__updateVisibility__block_invoke_158;
        v64[3] = &unk_1E8151548;
        v64[4] = self;
        [v60 enumerateIndexesUsingBlock:v64];
        [MEMORY[0x1E6979518] commit];
        v61 = objc_loadWeakRetained(&self->_private->renderingProperties);
        if ([v61 isUsingPDFExtensionView])
        {
          [v63 syncPageIndexToScrollView];
        }

        std::__tree<unsigned long>::destroy(v67, v67[1]);
        std::__tree<unsigned long>::destroy(&v71, v72);
      }
    }
  }
}

void __36__PDFDocumentView__updateVisibility__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v13 integerValue];
  v7 = v5;
  v8 = *(a1 + 48);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 48;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == a1 + 48 || v6 < *(v9 + 32))
  {
LABEL_9:
    [*(a1 + 32) addIndex:v6];
  }
}

- (void)previewRotateShiftPages:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_private->pageViews allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 frame];
        [v8 setFrame:v9 + a3];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)forceUpdateActivePageIndex:(unint64_t)a3 withMaxDuration:(double)a4
{
  [(PDFDocumentView *)self updateVisibility];
  pageBackgroundManager = self->_private->pageBackgroundManager;

  [(PDFPageBackgroundManager *)pageBackgroundManager forceUpdateActivePageIndex:a3 withMaxDuration:a4];
}

- (id)_createPageView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v6 = [PDFPageView alloc];
  v7 = objc_loadWeakRetained(&self->_private->renderingProperties);
  v8 = [(PDFPageView *)v6 initWithPage:v4 geometryInterface:WeakRetained andRenderingProperties:v7];

  v9 = [(PDFDocumentView *)self document];
  v10 = [v9 indexForPage:v4];

  v13 = 0;
  v11 = [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager backgroundImageForPageIndex:v10 withFoundQuality:&v13];
  if (v11)
  {
    [(PDFPageView *)v8 setBackgroundImage:v11 atBackgroundQuality:v13];
  }

  return v8;
}

- (void)didInsertPage:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  [(PDFDocumentView *)self _shiftPagesAtIndex:a4 downwards:1];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [v11 setView:WeakRetained];
  v7 = [(PDFDocumentView *)self _createPageView:v11];
  [WeakRetained callPageVisibilityDelegateMethod:0 forPageView:v7 atPageIndex:a4];
  [(PDFDocumentView *)self addSubview:v7];
  pageViews = self->_private->pageViews;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)pageViews setObject:v7 forKey:v9];

  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager didInsertPageAtIndex:a4];
  v10 = [WeakRetained PDFLayout];
  [v10 invalidateInternalDocumentGeometry];
  [(PDFDocumentView *)self layoutDocumentView];
  [WeakRetained callPageVisibilityDelegateMethod:1 forPageView:v7 atPageIndex:a4];
  [(PDFDocumentView *)self _reAddPageOverlaysStartingAtIndex:a4 + 1];
  [(PDFDocumentView *)self updateVisibility];
}

- (void)willRemovePage:(id)a3 atIndex:(unint64_t)a4
{
  [(PDFDocumentView *)self _removePageOverlaysStartingAtIndex:a4 + 1];
  pageViews = self->_private->pageViews;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v10 = [(NSMutableDictionary *)pageViews objectForKey:v7];

  v8 = [v10 visibilityDelegateIndex];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained callPageVisibilityDelegateMethod:2 forPageView:v10 atPageIndex:v8];
}

- (void)didRemovePage:(id)a3 atIndex:(unint64_t)a4
{
  [a3 setView:0];
  pageViews = self->_private->pageViews;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v14 = [(NSMutableDictionary *)pageViews objectForKey:v7];

  v8 = [v14 visibilityDelegateIndex];
  v9 = self->_private->pageViews;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)v9 removeObjectForKey:v10];

  [v14 removeFromSuperview];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained callPageVisibilityDelegateMethod:3 forPageView:v14 atPageIndex:v8];

  [(PDFDocumentView *)self _shiftPagesAtIndex:a4 + 1 downwards:0];
  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager didRemovePageAtIndex:a4];
  v12 = objc_loadWeakRetained(&self->_private->pdfView);
  v13 = [v12 PDFLayout];
  [v13 invalidateInternalDocumentGeometry];
  [(PDFDocumentView *)self layoutDocumentView];
  [(PDFDocumentView *)self _reAddPageOverlaysStartingAtIndex:a4];
  [(PDFDocumentView *)self updateVisibility];
}

- (void)willSwapPage:(id)a3 atIndex:(unint64_t)a4 forPage:(id)a5 atIndex:(unint64_t)a6
{
  pageViews = self->_private->pageViews;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v16 = [(NSMutableDictionary *)pageViews objectForKey:v9];

  v10 = self->_private->pageViews;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v12 = [(NSMutableDictionary *)v10 objectForKey:v11];

  v13 = [v16 visibilityDelegateIndex];
  v14 = [v12 visibilityDelegateIndex];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained callPageVisibilityDelegateMethod:2 forPageView:v16 atPageIndex:v13];
  [WeakRetained callPageVisibilityDelegateMethod:3 forPageView:v16 atPageIndex:v13];
  [WeakRetained callPageVisibilityDelegateMethod:2 forPageView:v12 atPageIndex:v14];
  [WeakRetained callPageVisibilityDelegateMethod:3 forPageView:v12 atPageIndex:v14];
}

- (void)didSwapPage:(id)a3 atIndex:(unint64_t)a4 forPage:(id)a5 atIndex:(unint64_t)a6
{
  pageViews = self->_private->pageViews;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v24 = [(NSMutableDictionary *)pageViews objectForKey:v10];

  v11 = self->_private->pageViews;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v13 = [(NSMutableDictionary *)v11 objectForKey:v12];

  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  [WeakRetained callPageVisibilityDelegateMethod:0 forPageView:v24 atPageIndex:a6];
  [WeakRetained callPageVisibilityDelegateMethod:0 forPageView:v13 atPageIndex:a4];
  v15 = self->_private->pageViews;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)v15 removeObjectForKey:v16];

  v17 = self->_private->pageViews;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [(NSMutableDictionary *)v17 removeObjectForKey:v18];

  if (v24)
  {
    v19 = self->_private->pageViews;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
    [(NSMutableDictionary *)v19 setObject:v24 forKey:v20];
  }

  if (v13)
  {
    v21 = self->_private->pageViews;
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v21 setObject:v13 forKey:v22];
  }

  [(PDFPageBackgroundManager *)self->_private->pageBackgroundManager didSwapPageAtIndex:a4 withIndex:a6];
  v23 = [WeakRetained PDFLayout];
  [v23 invalidateInternalDocumentGeometry];
  [(PDFDocumentView *)self layoutDocumentView];
  if (v24)
  {
    [WeakRetained callPageVisibilityDelegateMethod:1 forPageView:v24 atPageIndex:a6];
  }

  if (v13)
  {
    [WeakRetained callPageVisibilityDelegateMethod:1 forPageView:v13 atPageIndex:a4];
  }

  [(PDFDocumentView *)self updateVisibility];
}

- (void)_shiftPagesAtIndex:(unint64_t)a3 downwards:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [(NSMutableDictionary *)self->_private->pageViews allKeys];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v11 unsignedIntegerValue] >= a3)
        {
          v12 = [(NSMutableDictionary *)self->_private->pageViews objectForKey:v11];
          [v25 setObject:v12 forKey:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  pageViews = self->_private->pageViews;
  v14 = [v25 allKeys];
  [(NSMutableDictionary *)pageViews removeObjectsForKeys:v14];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v25 allKeys];
  v15 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = *v27;
    if (v4)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        v20 = [v19 unsignedIntegerValue];
        v21 = [v25 objectForKey:v19];
        v22 = self->_private->pageViews;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20 + v17];
        [(NSMutableDictionary *)v22 setObject:v21 forKey:v23];
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }
}

- (void)_removePageOverlaysStartingAtIndex:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_private->pageViews allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 unsignedIntegerValue] >= a3)
        {
          v10 = [(NSMutableDictionary *)self->_private->pageViews objectForKey:v9];
          v11 = [v10 visibilityDelegateIndex];
          WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
          [WeakRetained callPageVisibilityDelegateMethod:2 forPageView:v10 atPageIndex:v11];
          [WeakRetained callPageVisibilityDelegateMethod:3 forPageView:v10 atPageIndex:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_reAddPageOverlaysStartingAtIndex:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_private->pageViews allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 unsignedIntegerValue];
        if (v10 >= a3)
        {
          v11 = [(NSMutableDictionary *)self->_private->pageViews objectForKey:v9];
          WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
          [WeakRetained callPageVisibilityDelegateMethod:0 forPageView:v11 atPageIndex:v10];
          [WeakRetained callPageVisibilityDelegateMethod:1 forPageView:v11 atPageIndex:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateVisibilityDelegateForVisiblePageView:(id)a3 atIndex:(unint64_t)a4
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained delegate];

    if (v8)
    {
      v9 = [v11 visibilityDelegateIndex];
      v10 = v9;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL || v9 != a4)
      {
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 callPageVisibilityDelegateMethod:2 forPageView:v11 atPageIndex:v9];
          [v7 callPageVisibilityDelegateMethod:3 forPageView:v11 atPageIndex:v10];
        }

        [v7 callPageVisibilityDelegateMethod:0 forPageView:v11 atPageIndex:a4];
        [v7 callPageVisibilityDelegateMethod:1 forPageView:v11 atPageIndex:a4];
      }
    }
  }
}

- (void)changedBoundsForBoxNotification:(id)a3
{
  if (!self->_private->ignoreChangedBoundsForBoxNotification)
  {
    [(PDFDocumentView *)self updateVisibility];
  }
}

- (void)didRotatePageNotification:(id)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PDFDocumentView_didRotatePageNotification___block_invoke;
  block[3] = &unk_1E8151570;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__PDFDocumentView_didRotatePageNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained((WeakRetained[62] + 8));
    v4 = [v3 PDFLayout];

    [v4 invalidateInternalDocumentGeometry];
    [*(a1 + 32) layoutDocumentView];

    WeakRetained = v5;
  }
}

- (id)backgroundImageForPage:(id)a3 withQuality:(int *)a4
{
  v6 = a3;
  v7 = self->_private->pageViews;
  objc_sync_enter(v7);
  v8 = [(PDFDocumentView *)self document];
  v9 = [v8 indexForPage:v6];

  pageViews = self->_private->pageViews;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = [(NSMutableDictionary *)pageViews objectForKey:v11];

  if (v12 && [v12 hasBackgroundImage])
  {
    *a4 = [v12 backgroundImageQuality];
    v13 = [v12 backgroundImage];
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v7);

  return v13;
}

- (void)recieveBackgroundImage:(id)a3 atBackgroundQuality:(int)a4 forPage:(id)a5
{
  v6 = *&a4;
  v15 = a3;
  v8 = a5;
  v9 = self->_private->pageViews;
  objc_sync_enter(v9);
  v10 = [(PDFDocumentView *)self document];
  v11 = [v10 indexForPage:v8];

  pageViews = self->_private->pageViews;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v14 = [(NSMutableDictionary *)pageViews objectForKey:v13];

  if (v14)
  {
    [v14 setBackgroundImage:v15 atBackgroundQuality:v6];
  }

  objc_sync_exit(v9);
}

- (id)pdfView
{
  v3 = self->_private;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&v3->pdfView);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = PDFDocumentView;
  v8 = [(PDFDocumentView *)&v32 hitTest:v7 withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v10 = objc_loadWeakRetained(&self->_private->pointerTrackingView);
  if ([v7 type] == 11)
  {
    [(PDFDocumentView *)self convertPoint:WeakRetained toView:x, y];
    v12 = v11;
    v14 = v13;
    v15 = [WeakRetained pageForPoint:0 nearest:?];
    [WeakRetained convertPoint:v15 toPage:{v12, v14}];
    v17 = v16;
    v19 = v18;
    v20 = [v15 annotationAtPoint:?];
    if (v20 || ([v15 scannedAnnotationAtPoint:{v17, v19}], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v21 = [v10 annotation];

      if (v20 != v21)
      {
        [v10 removeFromSuperview];
        [v20 bounds];
        [WeakRetained convertRect:v15 fromPage:?];
        [WeakRetained convertRect:self toView:?];
        v26 = [[PDFAnnotationPointerTrackingView alloc] initWithFrame:v20 annotation:v22, v23, v24, v25];

        [(PDFDocumentView *)self addSubview:v26];
        objc_storeWeak(&self->_private->pointerTrackingView, v26);
        v10 = v26;
      }
    }
  }

  else
  {
    [v10 removeFromSuperview];
  }

  if ([WeakRetained isInMarkupMode] & 1) != 0 || (objc_msgSend(WeakRetained, "isFormDetectionEnabled"))
  {
    v27 = [WeakRetained hitTestForSubviewsOfView:self atLocation:v7 withEvent:{x, y}];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v8;
    }

    v30 = v29;
  }

  else
  {
    v30 = v8;
  }

  return v30;
}

- (CGVector)_scaleFromLayerTransforms
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfView);
  v4 = objc_loadWeakRetained(&self->_private->renderingProperties);
  v5 = [v4 isUsingPDFExtensionView];

  if (v5)
  {
    [WeakRetained extensionViewZoomScale];
    v7 = v6;
  }

  else
  {
    v8 = [WeakRetained documentScrollView];
    [v8 zoomScale];
    v7 = v9;
  }

  v10 = v7;
  v11 = v7;
  result.dy = v11;
  result.dx = v10;
  return result;
}

@end