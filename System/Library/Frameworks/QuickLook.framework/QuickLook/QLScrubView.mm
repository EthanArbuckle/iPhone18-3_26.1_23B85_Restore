@interface QLScrubView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)_thumbnailFrameForPageAtIndex:(int64_t)a3;
- (QLScrubView)init;
- (QLScrubViewDataSource)dataSource;
- (QLScrubViewDelegate)delegate;
- (void)_handleSwipAtLocation:(CGPoint)a3;
- (void)_notifyPageChanged;
- (void)_removeThumbviews;
- (void)_showPageLabel;
- (void)_updatePageLabelPosition;
- (void)_updateSelectedThumbnailView;
- (void)layoutSubviews;
- (void)longTapReceived:(id)a3;
- (void)panReceived:(id)a3;
- (void)reloadThumbnails;
- (void)selectPageNumber:(int64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)tapReceived:(id)a3;
@end

@implementation QLScrubView

- (QLScrubView)init
{
  v26[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = QLScrubView;
  v2 = [(QLScrubView *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    [(QLScrubView *)v2 setBackgroundColor:v3];

    v4 = [MEMORY[0x277D75210] effectWithStyle:1200];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    [(QLScrubView *)v2 addSubview:v5];
    [(QLScrubView *)v2 sendSubviewToBack:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = MEMORY[0x277CCAAD0];
    v25 = @"visualEffectView";
    v26[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v8 = [v6 constraintsWithVisualFormat:@"V:|[visualEffectView]|" options:0 metrics:0 views:v7];
    [(QLScrubView *)v2 addConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v23 = @"visualEffectView";
    v24 = v5;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v11 = [v9 constraintsWithVisualFormat:@"H:|[visualEffectView]|" options:0 metrics:0 views:v10];
    [(QLScrubView *)v2 addConstraints:v11];

    v12 = objc_opt_new();
    thumbViews = v2->_thumbViews;
    v2->_thumbViews = v12;

    v14 = objc_opt_new();
    visibleThumbIndexes = v2->_visibleThumbIndexes;
    v2->_visibleThumbIndexes = v14;

    v2->_selectedPage = -1;
    v16 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v2 action:sel_panReceived_];
    [v16 setDelegate:v2];
    [(QLScrubView *)v2 addGestureRecognizer:v16];
    v17 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v2 action:sel_tapReceived_];
    [v17 setDelegate:v2];
    [(QLScrubView *)v2 addGestureRecognizer:v17];
    v18 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v2 action:sel_longTapReceived_];
    [v18 setDelegate:v2];
    [(QLScrubView *)v2 addGestureRecognizer:v18];
    [(QLScrubView *)v2 setDeliversTouchesForGesturesToSuperview:0];
    v19 = v2;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_removeThumbviews
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_thumbViews;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_thumbViews objectForKey:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_visibleThumbIndexes removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)reloadThumbnails
{
  [(QLScrubView *)self _removeThumbviews];
  self->_needsThumbLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_pageCount = [WeakRetained numberOfPagesInScrubView:self];

  [(QLScrubView *)self layoutSubviews];
}

- (void)selectPageNumber:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0 && self->_pageCount > a3)
  {
    self->_selectedPage = a3;
    [(QLScrubView *)self _updateSelectedThumbnailView];
  }
}

- (void)_notifyPageChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 scrubView:self didSelectPageAtIndex:self->_selectedPage];
  }
}

- (void)_handleSwipAtLocation:(CGPoint)a3
{
  pageCount = self->_pageCount;
  if (pageCount)
  {
    v5 = ((a3.y - self->_thumbOrigin) / ((self->_thumbEnd - self->_thumbOrigin) / pageCount));
    if ((v5 & 0x8000000000000000) == 0 && pageCount > v5 && self->_selectedPage != v5)
    {
      self->_selectedPage = v5;
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifyPageChanged object:0];
      [(QLScrubView *)self performSelector:sel__notifyPageChanged withObject:0 afterDelay:0.2];
      [(QLScrubView *)self _updateSelectedThumbnailView];

      [(QLScrubView *)self _updatePageLabelPosition];
    }
  }
}

- (void)panReceived:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(QLScrubView *)self _showPageLabel];
  }

  [v4 locationInView:self];
  [(QLScrubView *)self _handleSwipAtLocation:?];
  v5 = [v4 state];

  if (v5 == 3)
  {

    [(QLScrubView *)self _hidePageLabel];
  }
}

- (void)tapReceived:(id)a3
{
  [a3 locationInView:self];

  [(QLScrubView *)self _handleSwipAtLocation:?];
}

- (void)longTapReceived:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(QLScrubView *)self _showPageLabel];
  }

  [v4 locationInView:self];
  [(QLScrubView *)self _handleSwipAtLocation:?];
  v5 = [v4 state];

  if (v5 == 3)
  {

    [(QLScrubView *)self _hidePageLabel];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = [a4 view];
  LOBYTE(self) = v5 == self;

  return self;
}

- (void)setFrame:(CGRect)a3
{
  self->_needsThumbLayout = 1;
  v3.receiver = self;
  v3.super_class = QLScrubView;
  [(QLScrubView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (CGRect)_thumbnailFrameForPageAtIndex:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_visibleThumbIndexes count];
  if (v5 < 1)
  {
LABEL_6:
    v7 = -1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_visibleThumbIndexes objectAtIndex:v7];
      v9 = [v8 integerValue];

      if (v9 == a3)
      {
        break;
      }

      if (v9 > a3)
      {
        v14 = v7;
        if (v7)
        {
          v14 = 1;
        }

        v15 = v7 - v14;
        v16 = [(NSMutableArray *)self->_visibleThumbIndexes objectAtIndex:(v7 - v14)];
        v17 = [v16 integerValue];

        if (v7 != v15)
        {
          thumbHeight = self->_thumbHeight;
          v11 = self->_thumbOrigin + v15 * (thumbHeight + 8.0) + floor((self->_thumbOrigin + v7 * (thumbHeight + 8.0) - (self->_thumbOrigin + v15 * (thumbHeight + 8.0))) * (a3 - v17) / (v9 - v17));
          goto LABEL_8;
        }

        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  thumbHeight = self->_thumbHeight;
  v11 = self->_thumbOrigin + v7 * (thumbHeight + 8.0);
LABEL_8:
  v12 = 32.0;
  v13 = 17.0;
  result.size.height = thumbHeight;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v13;
  return result;
}

- (void)_showPageLabel
{
  if (!self->_pageNumberLabel)
  {
    v3 = objc_alloc_init(QLPageNumberView);
    pageNumberLabel = self->_pageNumberLabel;
    self->_pageNumberLabel = v3;
  }

  [(QLScrubView *)self _updatePageLabelPosition];
  [(QLScrubView *)self addSubview:self->_pageNumberLabel];
  v5 = self->_pageNumberLabel;

  [(QLScrubView *)self bringSubviewToFront:v5];
}

- (void)_updatePageLabelPosition
{
  pageNumberLabel = self->_pageNumberLabel;
  if (pageNumberLabel)
  {
    [(QLPageNumberView *)pageNumberLabel setPageCount:self->_pageCount];
    [(QLPageNumberView *)self->_pageNumberLabel setPageNumber:self->_selectedPage + 1];
    [(QLPageNumberView *)self->_pageNumberLabel sizeToFit];
    thumbViews = self->_thumbViews;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectedPage];
    v14 = [(NSMutableDictionary *)thumbViews objectForKey:v5];

    [v14 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(QLPageNumberView *)self->_pageNumberLabel frame];
    [(QLPageNumberView *)self->_pageNumberLabel setFrame:v7 - v12 + -10.0, v9 + floor((v11 - v13) * 0.5 + 2.0)];
  }
}

- (void)layoutSubviews
{
  v75 = *MEMORY[0x277D85DE8];
  if (self->_needsThumbLayout)
  {
    if (self->_pageCount)
    {
      [(QLScrubView *)self bounds];
      if (v3 != 0.0)
      {
        self->_needsThumbLayout = 0;
        [(QLScrubView *)self _removeThumbviews];
        [(QLScrubView *)self bounds];
        v6 = v5;
        [(QLScrubView *)self topOffset];
        v8 = v6 - v7;
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        [WeakRetained scrubView:self pageSizeAtIndex:0];
        v11 = v10;
        v13 = v12;

        v14 = floor(v13 * 32.0 / v11);
        self->_thumbHeight = v14;
        v15 = v14 + 8.0;
        v16 = (v8 + -36.0) / v15 + 1.0;
        if (v16)
        {
          if (self->_pageCount >= v16)
          {
            pageCount = v16;
          }

          else
          {
            pageCount = self->_pageCount;
          }

          v18 = pageCount * v15 + -8.0;
          [(QLScrubView *)self topOffset];
          v20 = v19 + floor((v8 - v18) * 0.5);
          self->_thumbOrigin = v20;
          self->_thumbEnd = v18 + v20;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v21 = self->_thumbViews;
          v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v69 objects:v74 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v70;
            v25 = *MEMORY[0x277CBF3A0];
            v26 = *(MEMORY[0x277CBF3A0] + 8);
            v27 = *(MEMORY[0x277CBF3A0] + 16);
            v28 = *(MEMORY[0x277CBF3A0] + 24);
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v70 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v30 = [(NSMutableDictionary *)self->_thumbViews objectForKey:*(*(&v69 + 1) + 8 * i)];
                [v30 setAlwaysVisible:0];
                [v30 setFrame:{v25, v26, v27, v28}];
                [v30 setUnselectedFrame:{v25, v26, v27, v28}];
              }

              v23 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v69 objects:v74 count:16];
            }

            while (v23);
          }

          [(NSMutableArray *)self->_visibleThumbIndexes removeAllObjects];
          if (pageCount >= 1)
          {
            v31 = 0;
            v32 = pageCount;
            do
            {
              v33 = self->_pageCount;
              if (v32 == 1)
              {
                v34 = v33 - 1;
              }

              else
              {
                v34 = (v33 / pageCount + v33) * v31 / pageCount;
              }

              visibleThumbIndexes = self->_visibleThumbIndexes;
              v36 = [MEMORY[0x277CCABB0] numberWithInteger:v34];
              [(NSMutableArray *)visibleThumbIndexes addObject:v36];

              ++v31;
              --v32;
            }

            while (v32);
          }

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v37 = self->_visibleThumbIndexes;
          v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v66;
            v41 = *(MEMORY[0x277CBF3A0] + 8);
            v60 = *MEMORY[0x277CBF3A0];
            v42 = *(MEMORY[0x277CBF3A0] + 16);
            v43 = *(MEMORY[0x277CBF3A0] + 24);
            v59 = v62;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v66 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v45 = *(*(&v65 + 1) + 8 * j);
                v46 = [v45 integerValue];
                v47 = [(NSMutableDictionary *)self->_thumbViews objectForKey:v45];
                if (!v47)
                {
                  v47 = [[QLThumbnailView alloc] initWithFrame:v60, v41, v42, v43];
                  [(QLThumbnailView *)v47 setPageNumber:v46];
                  [(NSMutableDictionary *)self->_thumbViews setObject:v47 forKey:v45];
                }

                v48 = [(QLThumbnailView *)v47 image];

                if (!v48)
                {
                  v49 = objc_loadWeakRetained(&self->_dataSource);
                  thumbHeight = self->_thumbHeight;
                  v61[0] = MEMORY[0x277D85DD0];
                  v61[1] = 3221225472;
                  v62[0] = __29__QLScrubView_layoutSubviews__block_invoke;
                  v62[1] = &unk_278B57918;
                  v63 = v47;
                  v64 = v46;
                  [v49 scrubView:self thumbnailForPage:v46 size:v61 withCompletionBlock:{32.0, thumbHeight}];
                }

                [(QLScrubView *)self _thumbnailFrameForPageAtIndex:v46];
                v52 = v51;
                v54 = v53;
                v56 = v55;
                v58 = v57;
                [(QLThumbnailView *)v47 setUnselectedFrame:?];
                if (v46 == self->_selectedPage)
                {
                  v76.origin.x = v52;
                  v76.origin.y = v54;
                  v76.size.width = v56;
                  v76.size.height = v58;
                  v77 = CGRectInset(v76, -8.0, -8.0);
                  [(QLThumbnailView *)v47 setFrame:v77.origin.x, v77.origin.y, v77.size.width, v77.size.height];
                  objc_storeStrong(&self->_selectedThumbnailView, v47);
                }

                else
                {
                  [(QLThumbnailView *)v47 setFrame:v52, v54, v56, v58];
                }

                [(QLThumbnailView *)v47 setAlwaysVisible:1];
                [(QLScrubView *)self addSubview:v47];
                [(QLScrubView *)self bringSubviewToFront:v47];
              }

              v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v65 objects:v73 count:16];
            }

            while (v39);
          }

          if (self->_selectedThumbnailView)
          {
            [(QLScrubView *)self bringSubviewToFront:?];
          }
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __29__QLScrubView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = v4;
  v5 = v3;
  QLRunInMainThread();
}

uint64_t __29__QLScrubView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) pageNumber];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setImage:v4];
  }

  return result;
}

- (void)_updateSelectedThumbnailView
{
  selectedPage = self->_selectedPage;
  if ((selectedPage & 0x8000000000000000) == 0 && (selectedPage != [(QLThumbnailView *)self->_selectedThumbnailView pageNumber]|| !self->_selectedThumbnailView))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectedPage];
    v5 = [(QLThumbnailView *)self->_selectedThumbnailView alwaysVisible];
    selectedThumbnailView = self->_selectedThumbnailView;
    if (v5)
    {
      [(QLThumbnailView *)selectedThumbnailView unselectedFrame];
      [(QLThumbnailView *)self->_selectedThumbnailView setFrame:?];
    }

    else
    {
      [(QLThumbnailView *)selectedThumbnailView removeFromSuperview];
    }

    v7 = [(NSMutableDictionary *)self->_thumbViews objectForKey:v4];
    v8 = self->_selectedThumbnailView;
    self->_selectedThumbnailView = v7;

    v9 = self->_selectedThumbnailView;
    if (v9)
    {
      [(QLThumbnailView *)v9 unselectedFrame];
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      if (CGRectEqualToRect(v29, *MEMORY[0x277CBF3A0]))
      {
        [(QLScrubView *)self _thumbnailFrameForPageAtIndex:self->_selectedPage];
        x = v14;
        y = v15;
        width = v16;
        height = v17;
        [(QLThumbnailView *)self->_selectedThumbnailView setUnselectedFrame:?];
      }
    }

    else
    {
      [(QLScrubView *)self _thumbnailFrameForPageAtIndex:self->_selectedPage];
      x = v18;
      y = v19;
      width = v20;
      height = v21;
      v22 = [[QLThumbnailView alloc] initWithFrame:v18, v19, v20, v21];
      v23 = self->_selectedThumbnailView;
      self->_selectedThumbnailView = v22;

      [(QLThumbnailView *)self->_selectedThumbnailView setPageNumber:self->_selectedPage];
      [(QLThumbnailView *)self->_selectedThumbnailView setUnselectedFrame:x, y, width, height];
      [(NSMutableDictionary *)self->_thumbViews setObject:self->_selectedThumbnailView forKey:v4];
    }

    v24 = [(QLThumbnailView *)self->_selectedThumbnailView image];

    if (!v24)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v26 = self->_selectedPage;
      thumbHeight = self->_thumbHeight;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __43__QLScrubView__updateSelectedThumbnailView__block_invoke;
      v28[3] = &unk_278B57940;
      v28[4] = self;
      [WeakRetained scrubView:self thumbnailForPage:v26 size:v28 withCompletionBlock:{32.0, thumbHeight}];
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectInset(v30, -8.0, -8.0);
    [(QLThumbnailView *)self->_selectedThumbnailView setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
    [(QLScrubView *)self addSubview:self->_selectedThumbnailView];
    [(QLScrubView *)self bringSubviewToFront:self->_selectedThumbnailView];
  }
}

void __43__QLScrubView__updateSelectedThumbnailView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  QLRunInMainThread();
}

uint64_t __43__QLScrubView__updateSelectedThumbnailView__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 472) pageNumber];
  v3 = *(a1 + 32);
  if (result == *(v3 + 448))
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 472);

    return [v5 setImage:v4];
  }

  return result;
}

- (QLScrubViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (QLScrubViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end