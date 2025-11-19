@interface PDFScrollView
- (PDFScrollView)initWithFrame:(CGRect)a3;
- (id)pdfDocumentView;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)centerAlign;
- (void)dealloc;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDocument:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateLayout;
@end

@implementation PDFScrollView

- (PDFScrollView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PDFScrollView;
  v3 = [(PDFScrollView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PDFScrollViewPrivate);
    v5 = v3->_private;
    v3->_private = v4;

    v3->_private->forcesTopAlignment = 0;
  }

  return v3;
}

- (void)setDocument:(id)a3
{
  v18 = a3;
  objc_storeWeak(&self->_private->document, v18);
  WeakRetained = objc_loadWeakRetained(&self->_private->documentView);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self];

    [v5 setDocument:0];
    [v5 removeFromSuperview];

    objc_storeWeak(&self->_private->documentView, 0);
  }

  v7 = v18;
  if (v18)
  {
    v8 = [PDFDocumentView alloc];
    v9 = objc_loadWeakRetained(&self->_private->pdfView);
    v10 = [(PDFDocumentView *)v8 initWithPDFView:v9];

    objc_storeWeak(&self->_private->documentView, v10);
    self->_private->oldMagnification = 1.0;
    v11 = [[PDFTimer alloc] initWithThrottleDelay:sel_updateVisibility forSelector:v10 forTarget:0.25];
    v12 = self->_private;
    boundsUpdateTimer = v12->boundsUpdateTimer;
    v12->boundsUpdateTimer = v11;

    [(PDFTimer *)self->_private->boundsUpdateTimer update];
    [(PDFScrollView *)self addSubview:v10];
    [(PDFDocumentView *)v10 setDocument:v18];
    [(PDFDocumentView *)v10 layoutDocumentView];
    [(PDFDocumentView *)v10 documentViewSize];
    [(PDFDocumentView *)v10 setFrame:0.0, 0.0, v14, v15];
    [(PDFDocumentView *)v10 frame];
    [(PDFScrollView *)self setContentSize:v16, v17];
    [(PDFScrollView *)self setDirectionalLockEnabled:1];
    [(PDFScrollView *)self setMinimumZoomScale:0.25];
    [(PDFScrollView *)self setMaximumZoomScale:5.0];
    [(PDFScrollView *)self setDelegate:self];
    [(PDFScrollView *)self setContentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [(PDFScrollView *)self centerAlign];

    v7 = v18;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFScrollView;
  [(PDFScrollView *)&v4 dealloc];
}

- (id)pdfDocumentView
{
  WeakRetained = objc_loadWeakRetained(&self->_private->documentView);

  return WeakRetained;
}

- (void)updateLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_private->documentView);
  [WeakRetained layoutDocumentView];
  [WeakRetained documentViewSize];
  v4 = v3;
  v6 = v5;
  [WeakRetained setBounds:{0.0, 0.0, v3, v5}];
  [WeakRetained setFrame:{0.0, 0.0, v4, v6}];
  [WeakRetained frame];
  [(PDFScrollView *)self setContentSize:v7, v8];
  [(PDFScrollView *)self setContentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(PDFScrollView *)self centerAlign];
}

- (void)setFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PDFScrollView;
  [(PDFScrollView *)&v6 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = self->_private;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&v4->documentView);
    [WeakRetained updateVisibility];

    [(PDFScrollView *)self centerAlign];
  }
}

- (void)setBounds:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PDFScrollView;
  [(PDFScrollView *)&v6 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = self->_private;
  if (v4)
  {
    if (!v4->isZooming)
    {
      WeakRetained = objc_loadWeakRetained(&v4->documentView);
      [WeakRetained updateVisibility];
    }

    [(PDFScrollView *)self centerAlign];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(PDFScrollView *)self contentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PDFScrollView *)self contentOffset];
  v30 = v17;
  v31 = v16;
  v32.receiver = self;
  v32.super_class = PDFScrollView;
  [(PDFScrollView *)&v32 setContentInset:top, left, bottom, right];
  if ([(PDFScrollView *)self contentInsetAdjustmentBehavior]== 2 && !PDFEdgeInsetsEqualToInsets(top, left, bottom, right, v9, v11, v13, v15))
  {
    if (v9 <= top)
    {
      v18 = top;
    }

    else
    {
      v18 = v9;
    }

    v19 = -1.0 - v18;
    [(PDFScrollView *)self contentSize];
    v21 = v20;
    [(PDFScrollView *)self bounds];
    v23 = v13 + v21 - v22;
    v24 = bottom + v21 - v22;
    if (v23 >= v24)
    {
      v25 = bottom + v21 - v22;
    }

    else
    {
      v25 = v13 + v21 - v22;
    }

    if (v23 < v24)
    {
      v23 = bottom + v21 - v22;
    }

    if (v30 < v19)
    {
      goto LABEL_15;
    }

    v26 = -v9;
    v27 = -top;
    if (v9 > top)
    {
      v26 = -top;
    }

    if (v30 > v26 + 1.0)
    {
LABEL_15:
      v28 = v25 + -1.0;
      if (v30 > v23 + 1.0 || v30 < v28)
      {
        v27 = v30;
      }

      else
      {
        v27 = v24;
      }
    }

    if (!PDFPointEqualToPoint(v31, v27, v31, v30))
    {
      [(PDFScrollView *)self setContentOffset:v31, v27];
    }
  }
}

- (id)viewForZoomingInScrollView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->documentView);

  return WeakRetained;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PDFScrollViewWillBeginDraggingNotification" object:self];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = self->_private;
  if (!v4->isZooming)
  {
    WeakRetained = objc_loadWeakRetained(&v4->documentView);
    [WeakRetained updateVisibility];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"PDFScrollViewPageMayHaveChangedNotification" object:self];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"PDFTextSelectionMenuWillChangeScrollPosition" object:self];

  [(PDFScrollView *)self centerAlign];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:self];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:self];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"PDFScrollViewPageMayHaveChangedNotification" object:self];

  [(PDFScrollView *)self centerAlign];
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  self->_private->isZooming = 1;
  WeakRetained = objc_loadWeakRetained(&self->_private->documentView);
  [WeakRetained updateVisibility];

  [(PDFScrollView *)self centerAlign];
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  self->_private->isZooming = 0;
  WeakRetained = objc_loadWeakRetained(&self->_private->documentView);
  [WeakRetained updateVisibility];

  [(PDFScrollView *)self centerAlign];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->_private->pdfView);
  [v7 postNotificationName:@"PDFViewScaleChanged" object:v8];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"PDFScrollViewPageMayHaveChangedNotification" object:self];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"PDFTextSelectionMenuDidChangeScrollPosition" object:self];
}

- (void)scrollViewDidZoom:(id)a3
{
  v12 = a3;
  v4 = self->_private;
  if (!v4->scheduledPageSync)
  {
    v4->scheduledPageSync = 1;
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = self->_private;
    pageSyncDate = v6->pageSyncDate;
    v6->pageSyncDate = v5;

    v4 = self->_private;
  }

  [(NSDate *)v4->pageSyncDate timeIntervalSinceNow];
  if (fabs(v8) > 0.25)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->documentView);
    [WeakRetained updateVisibility];

    self->_private->scheduledPageSync = 0;
  }

  [(PDFScrollView *)self centerAlign];
  v10 = objc_loadWeakRetained(&self->_private->pdfView);
  [v10 setAutoScales:0];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"PDFScrollViewDidChangeZoomFactor" object:self];
}

- (void)centerAlign
{
  [(PDFScrollView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFScrollView *)self contentSize];
  v12 = v11;
  v14 = v13;
  [(PDFScrollView *)self adjustedContentInset];
  v16 = v4 + v15;
  v18 = v8 - (v15 + v17);
  v20 = v6 + v19;
  v22 = v10 - (v19 + v21);
  if (v12 <= v18)
  {
    if ([(PDFScrollView *)self isDragging])
    {
      MidX = v12 * 0.5 + fmax((v18 - v12) * 0.5, 0.0);
    }

    else
    {
      v30.origin.x = v16;
      v30.origin.y = v20;
      v30.size.width = v18;
      v30.size.height = v22;
      MidX = CGRectGetMidX(v30);
    }
  }

  else
  {
    MidX = v12 * 0.5;
  }

  v24 = self->_private;
  if (v24->forcesTopAlignment && (WeakRetained = objc_loadWeakRetained(&v24->document), v26 = [WeakRetained pageCount], WeakRetained, v26) || v14 > v22)
  {
    MidY = v14 * 0.5;
  }

  else
  {
    v31.origin.x = v16;
    v31.origin.y = v20;
    v31.size.width = v18;
    v31.size.height = v22;
    MidY = CGRectGetMidY(v31);
  }

  v28 = objc_loadWeakRetained(&self->_private->documentView);
  [v28 setCenter:{MidX, MidY}];
}

@end