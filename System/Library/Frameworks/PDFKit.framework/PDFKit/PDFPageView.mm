@interface PDFPageView
- (BOOL)_allowsFormFieldEntry;
- (BOOL)_shouldReplaceStringOnAnnotation:(id)a3 withTextView:(id)a4;
- (BOOL)enablesTileUpdates;
- (BOOL)hasBackgroundImage;
- (BOOL)isVisible;
- (BOOL)shouldRegisterUndo;
- (CGAffineTransform)_rotationTransformForPageView;
- (CGAffineTransform)layerEffectTransform;
- (CGPoint)convertPointToPageView:(CGPoint)a3;
- (CGRect)convertRectToPageView:(CGRect)a3;
- (PDFPageView)initWithPage:(id)a3 geometryInterface:(id)a4 andRenderingProperties:(id)a5;
- (id)activeAnnotation;
- (id)backgroundImage;
- (id)geometryInterface;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)page;
- (id)pageLayer;
- (id)pageLayerEffectForID:(id)a3;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (id)renderingProperties;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int)backgroundImageQuality;
- (int64_t)displayBox;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)visibilityDelegateIndex;
- (void)_addPDFAnnotation:(id)a3;
- (void)_addPDFAnnotationChoiceWidget:(id)a3;
- (void)_addPDFAnnotationSignatureWidget:(id)a3;
- (void)_addPDFAnnotationTextWidget:(id)a3;
- (void)_beginObservingScrollViewMagnification;
- (void)_choiceWidgetDone;
- (void)_formChanged:(id)a3;
- (void)_initPageCornerRadiusForMagnification:(double)a3;
- (void)_releaseBackgroundImage;
- (void)_renderingPropertyUpdate:(id)a3;
- (void)_rotateActiveAnnotation;
- (void)_setAttributedStringForAnnotation:(id)a3 stringValue:(id)a4 textView:(id)a5;
- (void)_setupBookmarkLayer;
- (void)_setuppageAnnotationEffects;
- (void)_updateAnnotationVisibility:(id)a3;
- (void)_updateBackgroundColor;
- (void)_updateWidgetControl:(id)a3 forBounds:(CGRect)a4;
- (void)_viewDidMoveToSuperviewCommon;
- (void)addBookmark;
- (void)addControlForAnnotation:(id)a3;
- (void)addPageLayerEffect:(id)a3;
- (void)addSearchSelection:(id)a3;
- (void)applyTileLayoutScale:(double)a3;
- (void)clearTiles;
- (void)colorWidgetBackgrounds:(BOOL)a3;
- (void)dealloc;
- (void)enableHighlightDetectedFormFields:(BOOL)a3;
- (void)forceTileUpdate;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)populateFormFieldsWithAutoFillSuggestion:(id)a3 completionHandler:(id)a4;
- (void)previewRotatePage:(double)a3;
- (void)removeAnnotation:(id)a3;
- (void)removeBookmark;
- (void)removeControlForAnnotation:(id)a3;
- (void)removePageLayerEffectForID:(id)a3;
- (void)restoreOriginalTileLayout;
- (void)saveOriginalTileLayout;
- (void)scalePageLayerEffects:(double)a3;
- (void)setBackgroundImage:(id)a3 atBackgroundQuality:(int)a4;
- (void)setEnableTileUpdates:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setNeedsTilesUpdate;
- (void)setState:(int64_t)a3 onButtonWidgetAnnotation:(id)a4;
- (void)setStringValue:(id)a3 onChoiceWidgetAnnotation:(id)a4 withTableView:(id)a5;
- (void)setStringValue:(id)a3 onChoiceWidgetAnnotation:(id)a4 withTextField:(id)a5;
- (void)setStringValue:(id)a3 onTextAnnotation:(id)a4;
- (void)setStringValue:(id)a3 onTextWidgetAnnotation:(id)a4;
- (void)setStringValue:(id)a3 onTextWidgetAnnotation:(id)a4 withTextView:(id)a5;
- (void)setVisibilityDelegateIndex:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateAnnotation:(id)a3;
- (void)updateBookmark;
- (void)updatePageLayerEffectForID:(id)a3;
- (void)updatePageLayerEffects;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PDFPageView

- (PDFPageView)initWithPage:(id)a3 geometryInterface:(id)a4 andRenderingProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 boundsForBox:{objc_msgSend(v10, "displayBox")}];
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v42.receiver = self;
  v42.super_class = PDFPageView;
  v13 = [(PDFPageView *)&v42 initWithFrame:v11, v12];
  if (v13)
  {
    v14 = objc_alloc_init(PDFPageViewPrivate);
    v15 = v13->_private;
    v13->_private = v14;

    objc_storeWeak(&v13->_private->page, v8);
    objc_storeWeak(&v13->_private->geometryInterface, v9);
    objc_storeWeak(&v13->_private->renderingProperties, v10);
    v16 = [[PDFPageLayer alloc] initWithPage:v8 geometryInterface:v9 andRenderingProperties:v10];
    objc_storeWeak(&v13->_private->pageLayer, v16);
    [(PDFPageLayer *)v16 setZPosition:-1100.0];
    v17 = [(PDFPageView *)v13 layer];
    [v17 addSublayer:v16];

    objc_storeWeak(&v13->_private->activeAnnotation, 0);
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = v13->_private;
    activeControls = v19->activeControls;
    v19->activeControls = v18;

    v13->_private->isPerformingUndo = 0;
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = v13->_private;
    pageSignatures = v22->pageSignatures;
    v22->pageSignatures = v21;

    v24 = [[PDFPageViewAnnotationController alloc] initWithPDFPageView:v13];
    v25 = v13->_private;
    annotationController = v25->annotationController;
    v25->annotationController = v24;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = v13->_private;
    pageAnnotationEffects = v28->pageAnnotationEffects;
    v28->pageAnnotationEffects = v27;

    v13->_private->visibilityDelegateIndex = 0x7FFFFFFFFFFFFFFFLL;
    v30 = v13->_private;
    bookmarkLayer = v30->bookmarkLayer;
    v30->bookmarkLayer = 0;

    v13->_private->bookmarkSize = *MEMORY[0x1E695F060];
    v13->_private->backgroundImageLock._os_unfair_lock_opaque = 0;
    v32 = objc_alloc_init(MEMORY[0x1E6979398]);
    v33 = v13->_private;
    backgroundLayer = v33->backgroundLayer;
    v33->backgroundLayer = v32;

    [(CALayer *)v13->_private->backgroundLayer setMasksToBounds:1];
    v13->_private->backgroundQuality = 2;
    [(CALayer *)v13->_private->backgroundLayer setFrame:PDFRectToCGRect([(PDFPageView *)v13 bounds])];
    [(CALayer *)v13->_private->backgroundLayer setName:@"backgroundLayer"];
    [(PDFPageLayer *)v16 addSublayer:v13->_private->backgroundLayer];
    [(CALayer *)v13->_private->backgroundLayer setZPosition:-900.0];
    [(CALayer *)v13->_private->backgroundLayer setMinificationFilter:*MEMORY[0x1E6979C48]];
    [(PDFPageView *)v13 _updateBackgroundColor];
    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 addObserver:v13 selector:sel__renderingPropertyUpdate_ name:@"PDFRenderingPropertiesChanged" object:v10];

    v36 = [PDFPageLayerEffect createPDFSelectionLayerEffectsForSelections:0 withLayer:v16];
    v37 = v13->_private;
    searchLayer = v37->searchLayer;
    v37->searchLayer = v36;

    [(PDFPageLayerEffect *)v13->_private->searchLayer setZPosition:-500.0];
    [(PDFPageView *)v13 _setupBookmarkLayer];
    [(PDFPageView *)v13 _setuppageAnnotationEffects];
    [(PDFPageView *)v13 setUserInteractionEnabled:0];
    if (GetDefaultsWriteHighlightDetectedAnnotations())
    {
      [(PDFPageView *)v13 enableHighlightDetectedFormFields:1];
    }

    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v13 selector:sel__didRotatePageNotification_ name:@"PDFPageDidRotate" object:v8];
    [v39 addObserver:v13 selector:sel__didRotatePageNotification_ name:@"PDFPageDidChangeBounds" object:v8];
    v40 = [v8 document];
    [v39 addObserver:v13 selector:sel__formChanged_ name:@"PDFFormDidChangeValue" object:v40];
  }

  return v13;
}

- (void)dealloc
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  v5 = [(PDFPageLayerEffect *)self->_private->searchLayer UUID];
  [WeakRetained removePageLayerEffectForID:v5];

  v6 = self->_private;
  searchLayer = v6->searchLayer;
  v6->searchLayer = 0;

  [(CALayer *)self->_private->backgroundLayer removeFromSuperlayer];
  v8 = self->_private;
  backgroundLayer = v8->backgroundLayer;
  v8->backgroundLayer = 0;

  [WeakRetained removeFromSuperlayer];
  objc_storeWeak(&self->_private->pageLayer, 0);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_private->pageSignatures;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(*(&v31 + 1) + 8 * v14++) + 16) removeFromSuperlayer];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_private->pageSignatures removeAllObjects];
  v15 = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (v15)
  {
    [(PDFPageView *)self removeControlForAnnotation:v15];
    v16 = objc_loadWeakRetained(&self->_private->page);
    v17 = [v16 view];
    [v17 setActiveAnnotation:0];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_private->pageAnnotationEffects;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(PDFPageView *)self removePageLayerEffectForID:*(*(&v27 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  [(NSMutableArray *)self->_private->pageAnnotationEffects removeAllObjects];
  bookmarkLayer = self->_private->bookmarkLayer;
  if (bookmarkLayer)
  {
    [(CALayer *)bookmarkLayer removeFromSuperlayer];
    v24 = self->_private;
    v25 = v24->bookmarkLayer;
    v24->bookmarkLayer = 0;
  }

  [MEMORY[0x1E6979518] commit];

  v26.receiver = self;
  v26.super_class = PDFPageView;
  [(PDFPageView *)&v26 dealloc];
}

- (void)willMoveToSuperview:(id)a3
{
  if (!a3)
  {
    v5 = [(PDFPageView *)self undoManager];
    [v5 removeAllActionsWithTarget:self];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self->_private->scrollViewObservation];
  }
}

- (id)renderingProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_private->renderingProperties);

  return WeakRetained;
}

- (void)setNeedsTilesUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setNeedsTilesUpdate];

  [(PDFPageView *)self _updateBackgroundColor];
}

- (int64_t)displayBox
{
  WeakRetained = objc_loadWeakRetained(&self->_private->renderingProperties);
  v3 = [WeakRetained displayBox];

  return v3;
}

- (BOOL)isVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  v3 = [WeakRetained isVisible];

  return v3;
}

- (void)addPageLayerEffect:(id)a3
{
  v3 = self->_private;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  [WeakRetained addPageLayerEffect:v4];
}

- (void)removePageLayerEffectForID:(id)a3
{
  v3 = self->_private;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  [WeakRetained removePageLayerEffectForID:v4];
}

- (id)pageLayerEffectForID:(id)a3
{
  v3 = self->_private;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  v6 = [WeakRetained pageLayerEffectForID:v4];

  return v6;
}

- (void)updatePageLayerEffectForID:(id)a3
{
  v3 = self->_private;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  [WeakRetained updatePageLayerEffectForID:v4];
}

- (void)updatePageLayerEffects
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained updatePageLayerEffects];
}

- (CGAffineTransform)layerEffectTransform
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained layerEffectTransform];
    WeakRetained = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)scalePageLayerEffects:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained scalePageLayerEffects:a3];
}

- (void)setEnableTileUpdates:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setEnableTileUpdates:v3];
}

- (BOOL)enablesTileUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  v3 = [WeakRetained enablesTileUpdates];

  return v3;
}

- (void)forceTileUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained forceTileUpdate];
}

- (void)clearTiles
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained clearTiles];
}

- (void)saveOriginalTileLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained saveOriginalTileLayout];
}

- (void)restoreOriginalTileLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained restoreOriginalTileLayout];
}

- (void)applyTileLayoutScale:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained applyTileLayoutScale:a3];
}

- (void)setVisibilityDelegateIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setVisibilityDelegateIndex:a3];
}

- (unint64_t)visibilityDelegateIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  v3 = [WeakRetained visibilityDelegateIndex];

  return v3;
}

- (void)_updateBackgroundColor
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v3 = objc_loadWeakRetained(&self->_private->renderingProperties);
  if (([v3 isDarkMode] & 1) != 0 || !objc_msgSend(WeakRetained, "pageBackgroundColorHint"))
  {
    backgroundLayer = self->_private->backgroundLayer;
    v5 = [v3 pageBackgroundColor];
    -[CALayer setBackgroundColor:](backgroundLayer, "setBackgroundColor:", [v5 CGColor]);
  }

  else
  {
    -[CALayer setBackgroundColor:](self->_private->backgroundLayer, "setBackgroundColor:", [WeakRetained pageBackgroundColorHint]);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)_viewDidMoveToSuperviewCommon
{
  v3 = [(UIView *)self PDFKitEnclosingScrollView];
  v7 = v3;
  if (v3)
  {
    [v3 magnification];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  [(PDFPageView *)self _initPageCornerRadiusForMagnification:v5];
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained initPageCornerRadiusForMagnification:v5];

  [(PDFPageView *)self _beginObservingScrollViewMagnification];
}

- (void)_initPageCornerRadiusForMagnification:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->renderingProperties);
  [(PDFPageView *)self bounds];
  [WeakRetained adjustedPageCornerRadiusForPageSize:v6 magnification:{v7, a3}];
  v9 = v8;

  v10 = *MEMORY[0x1E69796E8];
  v11 = objc_loadWeakRetained(&self->_private->pageLayer);
  [v11 setCornerCurve:v10];

  v12 = objc_loadWeakRetained(&self->_private->pageLayer);
  [v12 setCornerRadius:v9];

  [(CALayer *)self->_private->backgroundLayer setCornerRadius:v9];
  backgroundLayer = self->_private->backgroundLayer;

  [(CALayer *)backgroundLayer setCornerCurve:v10];
}

- (void)_beginObservingScrollViewMagnification
{
  v3 = [(UIView *)self PDFKitEnclosingScrollView];
  if (v3)
  {
    objc_copyWeak(&to, &self->_private->pageLayer);
    objc_copyWeak(&from, &self->_private->renderingProperties);
    objc_initWeak(&location, self->_private->backgroundLayer);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PDFPageView__beginObservingScrollViewMagnification__block_invoke;
    v8[3] = &unk_1E8151598;
    objc_copyWeak(&v9, &from);
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    objc_copyWeak(&v11, &to);
    v5 = [v4 addObserverForName:@"PDFScrollViewDidChangeZoomFactor" object:v3 queue:0 usingBlock:v8];
    v6 = self->_private;
    scrollViewObservation = v6->scrollViewObservation;
    v6->scrollViewObservation = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    objc_destroyWeak(&from);
    objc_destroyWeak(&to);
  }
}

void __53__PDFPageView__beginObservingScrollViewMagnification__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 object];
  objc_copyWeak(&to, a1 + 5);
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [v4 magnification];
  v7 = v6;
  v8 = objc_loadWeakRetained(&to);
  [a1[4] bounds];
  [v8 adjustedPageCornerRadiusForPageSize:v9 magnification:{v10, v7}];
  v12 = v11;

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  objc_copyWeak(&v14, a1 + 7);
  v13 = objc_loadWeakRetained(&v14);
  [v13 setCornerRadius:v12];

  [WeakRetained setCornerRadius:v12];
  [MEMORY[0x1E6979518] commit];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&to);
}

- (id)page
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);

  return WeakRetained;
}

- (id)geometryInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_private->geometryInterface);

  return WeakRetained;
}

- (id)pageLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);

  return WeakRetained;
}

- (void)setBackgroundImage:(id)a3 atBackgroundQuality:(int)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_private->backgroundImageLock);
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v7 = self->_private;
  backgroundLayer = v7->backgroundLayer;
  WeakRetained = objc_loadWeakRetained(&v7->page);
  v10 = PDFDegToRad([WeakRetained rotation]);
  CGAffineTransformMakeRotation(&v17, v10);
  [(CALayer *)backgroundLayer setAffineTransform:&v17];

  v11 = self->_private->backgroundLayer;
  [(PDFPageView *)self frame];
  v13 = v12;
  [(PDFPageView *)self frame];
  [(CALayer *)v11 setFrame:0.0, 0.0, v13];
  [(CALayer *)self->_private->backgroundLayer setContents:[(UIImage *)v6 CGImage]];
  v14 = self->_private;
  backgroundImage = v14->backgroundImage;
  v14->backgroundImage = v6;
  v16 = v6;

  self->_private->backgroundQuality = a4;
  [MEMORY[0x1E6979518] commit];
  os_unfair_lock_unlock(&self->_private->backgroundImageLock);
}

- (void)_releaseBackgroundImage
{
  v3 = self->_private;
  backgroundImage = v3->backgroundImage;
  v3->backgroundImage = 0;

  backgroundLayer = self->_private->backgroundLayer;

  [(CALayer *)backgroundLayer setContents:0];
}

- (BOOL)hasBackgroundImage
{
  v2 = self;
  os_unfair_lock_lock(&self->_private->backgroundImageLock);
  v3 = v2->_private;
  LOBYTE(v2) = v3->backgroundImage != 0;
  os_unfair_lock_unlock(&v3->backgroundImageLock);
  return v2;
}

- (id)backgroundImage
{
  os_unfair_lock_lock(&self->_private->backgroundImageLock);
  v3 = self->_private->backgroundImage;
  os_unfair_lock_unlock(&self->_private->backgroundImageLock);

  return v3;
}

- (int)backgroundImageQuality
{
  v2 = self;
  os_unfair_lock_lock(&self->_private->backgroundImageLock);
  v3 = v2->_private;
  LODWORD(v2) = v3[30];
  os_unfair_lock_unlock(v3 + 31);
  return v2;
}

- (void)addSearchSelection:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
    [v4 setIsTextSelection];
    [(PDFPageLayerEffect *)self->_private->searchLayer addSelection:v4];
  }
}

- (void)previewRotatePage:(double)a3
{
  v4 = PDFDegToRad(a3);
  [(PDFPageView *)self frame];
  v6 = v5;
  v8 = v7;
  v9 = v7 * 0.5;
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v14.a = *MEMORY[0x1E695EFD0];
  *&v14.c = v10;
  *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v13.a = *&v14.a;
  *&v13.c = v10;
  *&v13.tx = *&v14.tx;
  CGAffineTransformTranslate(&v14, &v13, v5 * 0.5, v9);
  v12 = v14;
  CGAffineTransformRotate(&v13, &v12, v4);
  v14 = v13;
  v12 = v13;
  CGAffineTransformTranslate(&v13, &v12, -(v6 * 0.5), -(v8 * 0.5));
  v14 = v13;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  v13 = v14;
  [WeakRetained setAffineTransform:&v13];

  [MEMORY[0x1E6979518] commit];
}

- (void)colorWidgetBackgrounds:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained annotations];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v11 valueForAnnotationKey:@"/Subtype"];
          if ([v12 isEqualToString:@"/Widget"])
          {
            [(PDFPageView *)self updateAnnotation:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)enableHighlightDetectedFormFields:(BOOL)a3
{
  detectedFormFieldBoundingBoxesLayer = self->_private->detectedFormFieldBoundingBoxesLayer;
  if (a3)
  {
    if (!detectedFormFieldBoundingBoxesLayer)
    {
      v5 = [PDFHighlightDetectedFormFieldsEffectLayer alloc];
      WeakRetained = objc_loadWeakRetained(&self->_private->page);
      v7 = [(PDFHighlightDetectedFormFieldsEffectLayer *)v5 initWithPage:WeakRetained];
      v8 = self->_private;
      v9 = v8->detectedFormFieldBoundingBoxesLayer;
      v8->detectedFormFieldBoundingBoxesLayer = v7;

      [(PDFHighlightDetectedFormFieldsEffectLayer *)self->_private->detectedFormFieldBoundingBoxesLayer setDisplayBox:1];
      v10 = [(PDFPageView *)self layer];
      [v10 addSublayer:self->_private->detectedFormFieldBoundingBoxesLayer];

      [(PDFHighlightDetectedFormFieldsEffectLayer *)self->_private->detectedFormFieldBoundingBoxesLayer setFrame:PDFRectToCGRect([(PDFPageView *)self bounds])];
      [(PDFHighlightDetectedFormFieldsEffectLayer *)self->_private->detectedFormFieldBoundingBoxesLayer setZPosition:0.0];
      detectedFormFieldBoundingBoxesLayer = self->_private->detectedFormFieldBoundingBoxesLayer;
    }

    [(PDFHighlightDetectedFormFieldsEffectLayer *)detectedFormFieldBoundingBoxesLayer updateVisibleLayers];
  }

  else if (detectedFormFieldBoundingBoxesLayer)
  {
    [(PDFHighlightDetectedFormFieldsEffectLayer *)detectedFormFieldBoundingBoxesLayer removeFromSuperlayer];
    v11 = self->_private;
    v12 = v11->detectedFormFieldBoundingBoxesLayer;
    v11->detectedFormFieldBoundingBoxesLayer = 0;
  }
}

- (void)_renderingPropertyUpdate:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 objectForKey:@"PDFRenderingPropertyKey"];
  v5 = [v4 integerValue];

  if (v5 == 7)
  {
    [(PDFPageView *)self _releaseBackgroundImage];
    [(PDFPageView *)self _updateBackgroundColor];
  }
}

- (void)updateAnnotation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v6 = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (WeakRetained)
  {
    v7 = [v4 valueForAnnotationKey:@"/Subtype"];
    if ([v7 isEqualToString:@"/Popup"] && ShouldRenderAnnotationsInPDFKit())
    {
      [WeakRetained annotations];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v18 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
LABEL_6:
        v12 = 0;
        while (1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * v12) popup];

          if (v13 == v4)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      [(PDFPageView *)self _updateAnnotationVisibility:v4];
      v14 = [v4 pdfAnnotationUUID];
      [(PDFPageView *)self updatePageLayerEffectForID:v14];
    }

    else
    {
      if (![v4 handledByPDFKit])
      {
LABEL_16:

        goto LABEL_17;
      }

      [(PDFPageView *)self _updateAnnotationVisibility:v4];
      v8 = [v4 pdfAnnotationUUID];
      [(PDFPageView *)self updatePageLayerEffectForID:v8];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_updateAnnotationVisibility:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  if (WeakRetained)
  {
    v5 = [v12 pdfAnnotationUUID];
    v6 = [(PDFPageView *)self pageLayerEffectForID:v5];
    if (!v6)
    {
LABEL_15:

      goto LABEL_16;
    }

    v7 = [v12 valueForAnnotationKey:@"/Subtype"];
    v8 = [v7 isEqualToString:@"/Widget"];

    if (v8 && ([v12 isTextWidget] & 1) == 0)
    {
      v10 = [v12 control];
      v9 = v10 != 0;
    }

    else
    {
      v9 = 0;
    }

    if ([v12 shouldDisplay])
    {
      v11 = [WeakRetained displaysAnnotations] ^ 1 | v9;
      if ([v6 isHidden] != (v11 & 1))
      {
        goto LABEL_14;
      }
    }

    else if (([v6 isHidden] & 1) == 0)
    {
      v11 = 1;
LABEL_14:
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v6 setHidden:v11 & 1];
      [MEMORY[0x1E6979518] commit];
      goto LABEL_15;
    }

    if (!v9)
    {
      [v6 setNeedsDisplay];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)removeAnnotation:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 valueForAnnotationKey:@"/Subtype"];
  if ([v5 isEqualToString:@"/Stamp"])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_private->pageSignatures;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (v11[1] == v4)
          {
            v13 = v11;

            [(objc_class *)v13[2].super.super.isa removeFromSuperlayer];
            [(NSMutableArray *)self->_private->pageSignatures removeObject:v13];
            v6 = v13;
            goto LABEL_13;
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v12 = [v4 pdfAnnotationUUID];
    [(PDFPageView *)self removePageLayerEffectForID:v12];

    [MEMORY[0x1E6979518] commit];
  }
}

- (id)activeAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (!WeakRetained)
  {
    WeakRetained = [(PDFPageViewAnnotationController *)self->_private->annotationController activeAnnotation];
  }

  return WeakRetained;
}

- (void)addControlForAnnotation:(id)a3
{
  v4 = a3;
  activeControls = self->_private->activeControls;
  v15 = v4;
  v6 = [v4 pdfAnnotationUUID];
  v7 = [(NSMutableDictionary *)activeControls objectForKey:v6];

  if (!v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->page);
    v9 = [WeakRetained view];

    v10 = [v15 akAnnotation];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_private->page);
      v12 = [v11 view];
      v13 = [v12 controller];

      [v13 activateAnnotation:v15];
    }

    else
    {
      v11 = [v9 activeAnnotation];
      [(PDFPageViewAnnotationController *)self->_private->annotationController addControlForAnnotation:v15];
      if (v11)
      {
        v14 = v11 == v15;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        [v9 removeControlForAnnotation:v11];
      }
    }
  }
}

- (void)_rotateActiveAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained pdfAnnotationUUID];
    if (v4)
    {
      v5 = [(NSMutableDictionary *)self->_private->activeControls objectForKey:v4];
      if (v5)
      {
        [v6 bounds];
        [(PDFPageView *)self _updateWidgetControl:v5 forBounds:?];
      }
    }

    WeakRetained = v6;
  }
}

- (void)removeControlForAnnotation:(id)a3
{
  v8 = a3;
  [(PDFPageViewAnnotationController *)self->_private->annotationController removeControlForAnnotation:v8];
  v4 = v8;
  if (v8)
  {
    v5 = [v8 pdfAnnotationUUID];
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_private->activeControls objectForKey:v5];
      if (v6)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [v8 setControl:0];
        [v6 removeFromSuperview];
        [MEMORY[0x1E6979518] commit];
        WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);

        if (WeakRetained == v8)
        {
          objc_storeWeak(&self->_private->activeAnnotation, 0);
        }

        [(NSMutableDictionary *)self->_private->activeControls removeObjectForKey:v5];
      }
    }

    v4 = v8;
  }
}

- (void)populateFormFieldsWithAutoFillSuggestion:(id)a3 completionHandler:(id)a4
{
  v98 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v49 = a4;
  v61 = [v48 contents];
  v5 = MEMORY[0x1E695DFA8];
  v6 = [v61 allKeys];
  v51 = [v5 setWithArray:v6];

  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v8 = v7;
  if (v7 && [v7 isTextWidget])
  {
    v9 = v8;
    v10 = [v8 control];
    v59 = [v10 textView];
  }

  else
  {
    v11 = v8;
    v12 = [WeakRetained view];
    v10 = [v12 controller];

    v9 = [v10 activeAnnotation];

    if ([v9 isSynthesizedFormField])
    {
      v59 = 0;
    }

    else
    {

      v59 = 0;
      v9 = 0;
    }
  }

  v91 = 0;
  v92 = &v91;
  v93 = 0x2050000000;
  v13 = getAFInsertionManagerClass_softClass;
  v94 = getAFInsertionManagerClass_softClass;
  if (!getAFInsertionManagerClass_softClass)
  {
    v86 = MEMORY[0x1E69E9820];
    v87 = 3221225472;
    v88 = __getAFInsertionManagerClass_block_invoke;
    v89 = &unk_1E8150C78;
    v90 = &v91;
    __getAFInsertionManagerClass_block_invoke(&v86);
    v13 = v92[3];
  }

  v62 = v9;
  v14 = v13;
  _Block_object_dispose(&v91, 8);
  v15 = [v13 preferredInsertionOrder];
  v16 = [WeakRetained annotations];
  v17 = v16;
  if (v9 && (v18 = [v16 indexOfObjectIdenticalTo:?]) != 0)
  {
    v19 = [v17 subarrayWithRange:{v18, objc_msgSend(v17, "count") - v18}];

    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v55 = v20;
  if ([v20 count] >= 2)
  {
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0x7FFFFFFFFFFFFFFFLL;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __74__PDFPageView_populateFormFieldsWithAutoFillSuggestion_completionHandler___block_invoke;
    v85[3] = &unk_1E81515C0;
    v85[4] = &v86;
    [v55 enumerateObjectsUsingBlock:v85];
    if (*(v87 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [v55 subarrayWithRange:0];

      v55 = v21;
    }

    _Block_object_dispose(&v86, 8);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v15;
  v56 = [obj countByEnumeratingWithState:&v81 objects:v97 count:16];
  if (v56)
  {
    v54 = *v82;
    v50 = *MEMORY[0x1E69DE480];
    do
    {
      v22 = 0;
      do
      {
        if (*v82 != v54)
        {
          v23 = v22;
          objc_enumerationMutation(obj);
          v22 = v23;
        }

        v57 = v22;
        v24 = *(*(&v81 + 1) + 8 * v22);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v64 = v55;
        v25 = [v64 countByEnumeratingWithState:&v77 objects:v96 count:16];
        if (v25)
        {
          v26 = *v78;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v78 != v26)
              {
                objc_enumerationMutation(v64);
              }

              v28 = *(*(&v77 + 1) + 8 * i);
              if ([v28 isActivatableTextField])
              {
                v29 = [v28 autoFillTextContentType];
                v68 = v29;
                v30 = v29;
                if (v29)
                {
                  v31 = [v29 isEqualToString:v24];
                  v30 = v68;
                  if (v31)
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __74__PDFPageView_populateFormFieldsWithAutoFillSuggestion_completionHandler___block_invoke_2;
                    aBlock[3] = &unk_1E81515E8;
                    v74 = v62;
                    v75 = self;
                    v76 = v59;
                    v66 = _Block_copy(aBlock);
                    v63 = [v28 autoFillTextContentType];
                    v67 = [v61 objectForKeyedSubscript:v63];
                    if ([v67 length])
                    {
                      v58 = [WeakRetained formFieldGroupForAnnotation:v28];
                      v32 = [v63 isEqualToString:v50];
                      if (v58)
                      {
                        v33 = v32;
                      }

                      else
                      {
                        v33 = 0;
                      }

                      if (v33 == 1)
                      {
                        v34 = [v67 length];
                        v35 = [v58 count];
                        v36 = [v58 count];
                        v37 = [v67 length];
                        v71 = 0u;
                        v72 = 0u;
                        v69 = 0u;
                        v70 = 0u;
                        v65 = v58;
                        v38 = [v65 countByEnumeratingWithState:&v69 objects:v95 count:16];
                        if (v38)
                        {
                          v39 = 0;
                          v40 = v34 + v35 - 1;
                          v41 = *v70;
                          v42 = v40 / v36;
                          do
                          {
                            for (j = 0; j != v38; ++j)
                            {
                              if (*v70 != v41)
                              {
                                objc_enumerationMutation(v65);
                              }

                              v44 = *(*(&v69 + 1) + 8 * j);
                              v99.location = v39;
                              v99.length = v42;
                              v100.location = 0;
                              v100.length = v37;
                              v45 = NSIntersectionRange(v99, v100);
                              if (v45.length)
                              {
                                v46 = [v67 substringWithRange:{v45.location, v45.length}];
                                v66[2](v66, v46, v44);
                              }

                              v39 += v42;
                            }

                            v38 = [v65 countByEnumeratingWithState:&v69 objects:v95 count:16];
                          }

                          while (v38);
                        }
                      }

                      else
                      {
                        (v66)[2](v66, v67, v28);
                      }

                      v47 = [v28 autoFillTextContentType];
                      [v51 removeObject:v47];

                      goto LABEL_52;
                    }

                    v30 = v68;
                  }
                }
              }
            }

            v25 = [v64 countByEnumeratingWithState:&v77 objects:v96 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

LABEL_52:

        v22 = v57 + 1;
      }

      while (v57 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v81 objects:v97 count:16];
    }

    while (v56);
  }

  if (v49)
  {
    v49[2](v49, v51);
  }
}

uint64_t __74__PDFPageView_populateFormFieldsWithAutoFillSuggestion_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    v10 = v7;
    v7 = [v7 isAutofillNewContextStart];
    v8 = v10;
    if (v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

void __74__PDFPageView_populateFormFieldsWithAutoFillSuggestion_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 isTextWidget] && *(a1 + 32) == v5)
  {
    [*(a1 + 40) setStringValue:v6 onTextWidgetAnnotation:v5 withTextView:*(a1 + 48)];
  }

  else if ([v5 isTextWidget])
  {
    [*(a1 + 40) setStringValue:v6 onTextWidgetAnnotation:v5];
  }

  else if ([v5 isSynthesizedFormField])
  {
    [*(a1 + 40) setStringValue:v6 onTextAnnotation:v5];
  }

  [v5 setAutofillEntryType:3];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v10.receiver = self;
  v10.super_class = PDFPageView;
  [(PDFPageView *)&v10 setFrame:a3.origin.x, a3.origin.y];
  if (self->_private)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6 = PDFPointMake(0.0, 0.0);
    v8 = v7;
    WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
    [WeakRetained setFrame:{v6, v8, width, height}];

    [(CALayer *)self->_private->backgroundLayer setFrame:v6, v8, width, height];
    [MEMORY[0x1E6979518] commit];
    [(PDFPageView *)self setNeedsTilesUpdate];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PDFPageView;
  [(PDFPageView *)&v6 setHidden:?];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setHidden:v3];

  [MEMORY[0x1E6979518] commit];
}

- (void)_setupBookmarkLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v3 = [WeakRetained view];
  if ([v3 displaysBookmarksForPages] && objc_msgSend(WeakRetained, "isBookmarked"))
  {
    [(PDFPageView *)self addBookmark];
  }
}

- (void)addBookmark
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v17 = [WeakRetained document];

  if (v17 && ([v17 allowsDocumentAssembly] & 1) == 0)
  {
    v5 = [v17 permissionsStatus];
    v6 = @"user";
    if (v5 == 2)
    {
      v6 = @"owner";
    }

    NSLog(&cfstr_CannotAddBookm.isa, v6);
  }

  else
  {
    bookmarkLayer = self->_private->bookmarkLayer;
    if (bookmarkLayer)
    {
      [(CALayer *)bookmarkLayer setHidden:0];
      [(PDFPageView *)self updateBookmark];
    }

    else
    {
      v7 = MEMORY[0x1E69DCAB8];
      v8 = PDFKitBundle();
      v9 = [v7 imageNamed:@"ib_bookmark_on_page" inBundle:v8 compatibleWithTraitCollection:0];

      v10 = objc_alloc_init(MEMORY[0x1E6979398]);
      v11 = self->_private;
      v12 = v11->bookmarkLayer;
      v11->bookmarkLayer = v10;

      v13 = self->_private;
      v13->bookmarkSize.width = PDFSizeMake(v14, 34.0, 44.0);
      v13->bookmarkSize.height = v15;
      -[CALayer setContents:](self->_private->bookmarkLayer, "setContents:", [v9 CGImage]);
      [(CALayer *)self->_private->bookmarkLayer setZPosition:-700.0];
      v16 = [(PDFPageView *)self layer];
      [v16 addSublayer:self->_private->bookmarkLayer];

      [(PDFPageView *)self updateBookmark];
    }
  }
}

- (void)removeBookmark
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v11 = [WeakRetained document];

  v4 = v11;
  if (v11 && (v5 = [v11 allowsDocumentAssembly], v4 = v11, (v5 & 1) == 0))
  {
    v9 = [v11 permissionsStatus];
    v10 = @"user";
    if (v9 == 2)
    {
      v10 = @"owner";
    }

    NSLog(&cfstr_CannotRemoveBo.isa, v10);
  }

  else
  {
    bookmarkLayer = self->_private->bookmarkLayer;
    if (!bookmarkLayer)
    {
      goto LABEL_9;
    }

    [(CALayer *)bookmarkLayer removeFromSuperlayer];
    v7 = self->_private;
    v8 = v7->bookmarkLayer;
    v7->bookmarkLayer = 0;
  }

  v4 = v11;
LABEL_9:

  MEMORY[0x1EEE66BB8](bookmarkLayer, v4);
}

- (void)updateBookmark
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v3 = objc_loadWeakRetained(&self->_private->pageLayer);
  v4 = v3;
  if (self->_private->bookmarkLayer)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [WeakRetained boundsForBox:1];
    v7 = v6;
    v8 = [WeakRetained view];
    [v8 frame];
    v10 = v7 / v9;
    v11 = (COERCE__INT64(fabs(v7 / v9)) - 0x10000000000000) >> 53;
    if ((COERCE__INT64(v7 / v9) <= -1 || v11 >= 0x3FF) && (COERCE__INT64(v7 / v9) - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      [v8 frame];
      v23 = PDFRectToString(v19, v20, v21, v22);
      NSLog(&cfstr_BookmarkBeingS.isa, v23);
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [(CALayer *)self->_private->bookmarkLayer setFrame:v7 - v10 * self->_private->bookmarkSize.width + v10 * -8.0, 0.0, v10 * self->_private->bookmarkSize.width, v10 * self->_private->bookmarkSize.height];
      v14 = objc_loadWeakRetained(&self->_private->geometryInterface);
      v15.n128_u64[0] = 0;
      v16.n128_u64[0] = 0;
      [v14 convertRectToRootView:v4 fromPageLayer:{PDFRectMake(v15, v16, self->_private->bookmarkSize.width, self->_private->bookmarkSize.height)}];
      v18 = v17;

      [(CALayer *)self->_private->bookmarkLayer setContentsScale:fmin(v18 / self->_private->bookmarkSize.width, 4.0)];
      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (void)_setuppageAnnotationEffects
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_private->pageSignatures;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(*(&v20 + 1) + 8 * v7++) + 16) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_private->pageSignatures removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  [(PDFPageView *)self removeControlForAnnotation:WeakRetained];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_private->pageAnnotationEffects;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(PDFPageView *)self removePageLayerEffectForID:*(*(&v16 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_private->pageAnnotationEffects removeAllObjects];
  v14 = objc_loadWeakRetained(&self->_private->page);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__PDFPageView__setuppageAnnotationEffects__block_invoke;
  v15[3] = &unk_1E8151610;
  v15[4] = self;
  [v14 fetchAnnotationsWithCompletion:v15 deliveredOnQueue:MEMORY[0x1E69E96A0]];
  if (GetDefaultsWriteColorWidgetBackgrounds())
  {
    [(PDFPageView *)self colorWidgetBackgrounds:1];
  }
}

void __42__PDFPageView__setuppageAnnotationEffects__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 page];

        if (v9)
        {
          v10 = [v8 valueForAnnotationKey:@"/Subtype"];
          [*(a1 + 32) _addPDFAnnotation:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_updateWidgetControl:(id)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [(PDFPageView *)self convertRectToPageView:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  [(PDFPageView *)self _rotationTransformForPageView];
  v18 = [v9 layer];
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  v21 = *MEMORY[0x1E695EFD0];
  v22 = v19;
  v23 = *(MEMORY[0x1E695EFD0] + 32);
  [v18 setAffineTransform:&v21];

  [v9 setFrame:{v11, v13, v15, v17}];
  v20 = [v9 layer];

  v21 = v24;
  v22 = v25;
  v23 = v26;
  [v20 setAffineTransform:&v21];
}

- (CGRect)convertRectToPageView:(CGRect)a3
{
  width = a3.size.width;
  CenterPoint = PDFRectGetCenterPoint(a3.origin.x, a3.origin.y, a3.size.width);
  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained layerEffectTransform];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
  }

  v10 = PDFPointToCGPoint(CenterPoint, v7);
  v12 = vaddq_f64(v34, vmlaq_n_f64(vmulq_n_f64(v33, v11), v32, v10));
  v13 = PDFPointFromCGPoint(v12.f64[0], v12.f64[1]);
  v15 = PDFRectMakeFromCenter(v13, v14, width);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = objc_loadWeakRetained(&self->_private->renderingProperties);
  v23 = [(PDFPageView *)self page];
  [v23 boundsForBox:{objc_msgSend(v22, "displayBox")}];
  PDFRectRotate([v23 rotation], v24, v25);
  v27 = v26 - v21 - v17;

  v28 = v15;
  v29 = v27;
  v30 = v19;
  v31 = v21;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGAffineTransform)_rotationTransformForPageView
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v4 = [WeakRetained rotation];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v5 = PDFDegToRad(v4);
  CGAffineTransformMakeRotation(retstr, v5);

  return result;
}

- (CGPoint)convertPointToPageView:(CGPoint)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v5 = PDFRectToCGRect([WeakRetained boundsForBox:0]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_loadWeakRetained(&self->_private->renderingProperties);
  v13 = PDFRectToCGRect([WeakRetained boundsForBox:{objc_msgSend(v12, "displayBox")}]);
  v15 = v14;
  v17 = v16;
  rect = v16;
  v19 = v18;

  v33.origin.x = v13;
  v33.origin.y = v15;
  v33.size.width = v17;
  v33.size.height = v19;
  MinX = CGRectGetMinX(v33);
  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  v21 = MinX - CGRectGetMinX(v34);
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v22 = v21 + CGRectGetMinX(v35);
  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = rect;
  v36.size.height = v19;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  v24 = MinY - CGRectGetMinY(v37);
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  v25 = v24 + CGRectGetMinY(v38);
  [(PDFPageView *)self frame];
  v27 = v25 + v26 - a3.y;

  v28 = a3.x - v22;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (void)_addPDFAnnotationTextWidget:(id)a3
{
  v4 = a3;
  v5 = [PDFKitTextView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = [WeakRetained view];
  v10 = [(PDFKitTextView *)v5 initWithAnnotation:v4 pdfPageView:self pdfView:v7];

  [v4 bounds];
  [(PDFPageView *)self _updateWidgetControl:v10 forBounds:?];
  objc_storeWeak(&self->_private->activeAnnotation, v4);
  activeControls = self->_private->activeControls;
  v9 = [v4 pdfAnnotationUUID];

  [(NSMutableDictionary *)activeControls setObject:v10 forKey:v9];
}

- (void)_addPDFAnnotationSignatureWidget:(id)a3
{
  v4 = a3;
  v5 = [PDFKitSignatureView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = [WeakRetained view];
  v10 = [(PDFKitSignatureView *)v5 initWithAnnotation:v4 pdfPageView:self pdfView:v7];

  [v4 bounds];
  [(PDFPageView *)self _updateWidgetControl:v10 forBounds:?];
  objc_storeWeak(&self->_private->activeAnnotation, v4);
  activeControls = self->_private->activeControls;
  v9 = [v4 pdfAnnotationUUID];

  [(NSMutableDictionary *)activeControls setObject:v10 forKey:v9];
}

- (void)_addPDFAnnotationChoiceWidget:(id)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 choices];
  v14 = [v4 widgetStringValue];
  v15 = [v4 isListChoice];
  v16 = [v4 font];
  [v16 pointSize];
  v18 = v17;
  v19 = [(PDFPageView *)self _allowsFormFieldEntry];
  v20 = [v4 pdfAnnotationUUID];
  if (v13 | v14)
  {
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v14, 0}];
    }

    v43 = v20;
    v44 = v16;
    if (v15)
    {
      v21 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:{v6, v8, v10, v12}];
      [(PDFPageView *)self _updateWidgetControl:v21 forBounds:v6, v8, v10, v12];
      [v21 setDataSource:self];
      [v21 setDelegate:self];
      [v21 setScrollEnabled:1];
      [v21 setUserInteractionEnabled:v19];
      [v21 setRowHeight:v18 + 2.0];
      [v21 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      v22 = [v21 layer];
      [v22 setBorderWidth:1.0];

      WeakRetained = objc_loadWeakRetained(&self->_private->page);
      v24 = [WeakRetained view];
      v25 = [v24 isUsingPageViewController];

      if ((v25 & 1) == 0)
      {
        v26 = [v21 panGestureRecognizer];
        v42 = WeakRetained;
        v27 = [WeakRetained view];
        v28 = [v27 documentScrollView];
        v29 = [v28 panGestureRecognizer];

        if (v26 && v29)
        {
          [v29 requireGestureRecognizerToFail:v26];
        }

        WeakRetained = v42;
      }

      [(PDFPageView *)self addSubview:v21];
      v30 = [v21 layer];
      [v30 setZPosition:-200.0];

      objc_storeWeak(&self->_private->activeAnnotation, v4);
      v20 = v43;
      [(NSMutableDictionary *)self->_private->activeControls setObject:v21 forKey:v43];
      [v21 reloadData];
      v31 = [v13 indexOfObject:v14];
      v32 = [MEMORY[0x1E696AC88] indexPathForRow:v31 inSection:0];
      [v21 selectRowAtIndexPath:v32 animated:0 scrollPosition:0];
    }

    else
    {
      v33 = v8 + -2.0;
      WeakRetained = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v6, v33, v10, v12}];
      [(PDFPageView *)self _updateWidgetControl:WeakRetained forBounds:v6, v33, v10, v12];
      [WeakRetained setFont:v16];
      v34 = [MEMORY[0x1E69DC888] clearColor];
      [WeakRetained setTintColor:v34];

      [WeakRetained setText:v14];
      [WeakRetained setUserInteractionEnabled:v19];
      v21 = objc_alloc_init(MEMORY[0x1E69DCD78]);
      [WeakRetained setInputView:v21];
      objc_storeWeak(&self->_private->activeAnnotation, v4);
      [(NSMutableDictionary *)self->_private->activeControls setObject:WeakRetained forKey:v20];
      [v21 setDelegate:self];
      [v21 setDataSource:self];
      [(PDFPageView *)self addSubview:WeakRetained];
      v35 = [WeakRetained layer];
      [v35 setZPosition:-200.0];

      v36 = objc_alloc_init(MEMORY[0x1E69DD180]);
      [v36 sizeToFit];
      v37 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      v38 = objc_alloc(MEMORY[0x1E69DC708]);
      v39 = PDFKitLocalizedString(@"Done");
      v40 = [v38 initWithTitle:v39 style:2 target:self action:sel__choiceWidgetDone];

      v45[0] = v37;
      v45[1] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      [v36 setItems:v41];

      [WeakRetained setInputAccessoryView:v36];
      [WeakRetained becomeFirstResponder];

      v20 = v43;
    }

    [v4 setControl:v21];
    v16 = v44;
  }
}

- (void)_choiceWidgetDone
{
  [(PDFPageView *)self endEditing:1];
  v5 = [(PDFPageView *)self page];
  v3 = [v5 view];
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  [v3 removeControlForAnnotation:WeakRetained];
}

- (void)_addPDFAnnotation:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  if (WeakRetained)
  {
    v5 = [v10 akAnnotationAdaptor];
    v6 = [v5 akAnnotation];

    if (!v6)
    {
      if ([v10 isMarkupAnnotationSubtype] && (objc_msgSend(v10, "isRedaction") & 1) == 0)
      {
        v9 = [PDFPageLayerEffect createPDFMarkupLayerEffectsForAnnotation:v10 withLayer:WeakRetained];
      }

      else
      {
        v7 = [v10 valueForAnnotationKey:@"/Subtype"];
        v8 = [v7 isEqualToString:@"/Popup"];

        if (v8)
        {
          goto LABEL_9;
        }

        v9 = [PDFPageLayerEffect createPDFAnnotationLayerEffectForAnnotation:v10 withLayer:WeakRetained];
      }
    }
  }

LABEL_9:
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v5 = [WeakRetained valueForAnnotationKey:@"/FT"];
  v6 = v5;
  if (WeakRetained && [v5 isEqualToString:@"/Ch"])
  {
    v7 = [WeakRetained choices];
    v8 = [v7 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"MyCell"];
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"MyCell"];
  }

  if (WeakRetained)
  {
    v9 = [WeakRetained choices];
    v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

    v11 = [WeakRetained font];
    v12 = [v7 textLabel];
    [v12 setText:v10];

    if (v11)
    {
      v13 = [v7 textLabel];
      [v13 setFont:v11];
    }
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self->_private;
  if (!v7->isPerformingUndo)
  {
    WeakRetained = objc_loadWeakRetained(&v7->activeAnnotation);
    v9 = [WeakRetained valueForAnnotationKey:@"/FT"];
    v10 = v9;
    if (WeakRetained && [v9 isEqualToString:@"/Ch"])
    {
      v11 = [WeakRetained choices];
      v12 = [v11 objectAtIndex:{objc_msgSend(v6, "row")}];
      [(PDFPageView *)self setStringValue:v12 onChoiceWidgetAnnotation:WeakRetained withTableView:v13];
    }
  }
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  activeControls = self->_private->activeControls;
  v8 = [WeakRetained pdfAnnotationUUID];
  v9 = [(NSMutableDictionary *)activeControls objectForKey:v8];

  if (WeakRetained)
  {
    v10 = [WeakRetained choices];
    v11 = [v10 objectAtIndex:a4];

    [WeakRetained setWidgetStringValue:v11];
    if (v9)
    {
      [(PDFPageView *)self setStringValue:v11 onChoiceWidgetAnnotation:WeakRetained withTextField:v9];
    }
  }
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setTextAlignment:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained choices];
    v15 = [v14 objectAtIndex:a4];
  }

  else
  {
    v15 = &stru_1F416DF70;
  }

  [v11 setText:v15];

  return v11;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained choices];
    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_formChanged:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"PDFFormFieldName"];

  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = [WeakRetained document];
  v17 = v5;
  v8 = [v7 annotationsForFieldName:v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 valueForAnnotationKey:@"/FT"];
        if ([v15 isEqualToString:@"/Ch"])
        {
          [v14 removeValueForAnnotationKey:@"/AP"];
        }

        v16 = [v14 pdfAnnotationUUID];
        [(PDFPageView *)self updatePageLayerEffectForID:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (BOOL)_allowsFormFieldEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v3 = [WeakRetained document];

  if (v3)
  {
    v4 = [v3 allowsFormFieldEntry];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)shouldRegisterUndo
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v3 = [WeakRetained view];
  v4 = [v3 allowsUndo];

  return v4;
}

- (void)setStringValue:(id)a3 onTextWidgetAnnotation:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (v19)
  {
    v7 = [v6 valueForAnnotationKey:@"/FT"];
    v8 = v7;
    if (v6 && [v7 isEqualToString:@"/Tx"])
    {
      v9 = [v6 widgetStringValue];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = &stru_1F416DF70;
      }

      [v6 setWidgetStringValue:v19];
      if ([(PDFPageView *)self shouldRegisterUndo])
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = PDFKitLocalizedString(@"Change of %@");
        v13 = [v6 displayName];
        v14 = [v11 stringWithFormat:v12, v13];

        v15 = [(PDFPageView *)self undoManager];
        v16 = [v15 prepareWithInvocationTarget:self];
        [v16 setStringValue:v10 onTextWidgetAnnotation:v6];

        v17 = [(PDFPageView *)self undoManager];
        v18 = PDFKitLocalizedString(v14);
        [v17 setActionName:v18];
      }
    }
  }
}

- (void)setStringValue:(id)a3 onTextAnnotation:(id)a4
{
  v27 = a3;
  v6 = a4;
  if (v27)
  {
    if (v6)
    {
      v7 = [v6 valueForAnnotationKey:@"/Subtype"];
      v8 = [v7 isEqualToString:@"/FreeText"];

      if (v8)
      {
        v9 = [v6 widgetStringValue];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &stru_1F416DF70;
        }

        [v6 setValue:v27 forAnnotationKey:@"/Contents"];
        v11 = [v6 akAnnotation];

        if (v11)
        {
          WeakRetained = objc_loadWeakRetained(&self->_private->page);
          v13 = [WeakRetained document];

          v14 = [v13 akController];
          if (objc_opt_respondsToSelector())
          {
            v15 = [v14 textEditorController];
            v16 = [v15 annotation];
            v17 = [v6 akAnnotation];

            if (v16 == v17)
            {
              v18 = [v15 textView];
              [v18 setText:v27];

              [v15 updateForTextAttributeChange];
            }
          }
        }

        if ([(PDFPageView *)self shouldRegisterUndo])
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = PDFKitLocalizedString(@"Change of %@");
          v21 = [v6 displayName];
          v22 = [v19 stringWithFormat:v20, v21];

          v23 = [(PDFPageView *)self undoManager];
          v24 = [v23 prepareWithInvocationTarget:self];
          [v24 setStringValue:v10 onTextAnnotation:v6];

          v25 = [(PDFPageView *)self undoManager];
          v26 = PDFKitLocalizedString(v22);
          [v25 setActionName:v26];
        }
      }
    }
  }
}

- (void)_setAttributedStringForAnnotation:(id)a3 stringValue:(id)a4 textView:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 font];
  v11 = [v9 valueForAnnotationKey:@"/MaxLen"];

  v12 = [v11 integerValue];
  if (!v10)
  {
    v13 = MEMORY[0x1E69DB878];
    [v7 frame];
    v10 = [v13 systemFontOfSize:v14 + -2.0];
  }

  v15 = v12;
  v29 = *MEMORY[0x1E69DB648];
  v16 = v29;
  v30[0] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v8 sizeWithAttributes:v17];
  v19 = v18;

  v20 = [v8 length];
  [v7 frame];
  v22 = (v21 + -v19 / v20 * v15) / v15;
  v23 = [v8 length];
  v24 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];

  v25 = *MEMORY[0x1E69DB660];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  [v24 addAttribute:v25 value:v26 range:{0, v23}];

  [v24 addAttribute:v16 value:v10 range:{0, v23}];
  v27 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v28 = [v27 mutableCopy];

  [v28 setLineBreakMode:2];
  [v24 addAttribute:*MEMORY[0x1E69DB688] value:v28 range:{0, v23}];
  [v7 setAttributedText:v24];
}

- (BOOL)_shouldReplaceStringOnAnnotation:(id)a3 withTextView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 text];
  v9 = [v6 replaceTextWidgetWithString:v8];
  v10 = [v8 isEqualToString:v9];
  if ((v10 & 1) == 0)
  {
    [(PDFPageView *)self _setAttributedStringForAnnotation:v6 stringValue:v9 textView:v7];
  }

  return v10;
}

- (void)setStringValue:(id)a3 onTextWidgetAnnotation:(id)a4 withTextView:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  if (v21)
  {
    if (v8)
    {
      v10 = [v8 valueForAnnotationKey:@"/FT"];
      v11 = [v10 isEqualToString:@"/Tx"];

      if (v11)
      {
        if ([(PDFPageView *)self _shouldReplaceStringOnAnnotation:v8 withTextView:v9])
        {
          v12 = [v8 widgetStringValue];
          [v8 setWidgetStringValue:v21];
          if ([v8 shouldComb])
          {
            [(PDFPageView *)self _setAttributedStringForAnnotation:v8 stringValue:v21 textView:v9];
          }

          else
          {
            [v9 setText:v21];
          }

          [v9 setNeedsDisplay];
          if (!v12)
          {
            v12 = &stru_1F416DF70;
          }

          if ([(PDFPageView *)self shouldRegisterUndo])
          {
            v13 = MEMORY[0x1E696AEC0];
            v14 = PDFKitLocalizedString(@"Change of %@");
            v15 = [v8 displayName];
            v16 = [v13 stringWithFormat:v14, v15];

            v17 = [(PDFPageView *)self undoManager];
            v18 = [v17 prepareWithInvocationTarget:self];
            [v18 setStringValue:v12 onTextWidgetAnnotation:v8 withTextView:v9];

            v19 = [(PDFPageView *)self undoManager];
            v20 = PDFKitLocalizedString(v16);
            [v19 setActionName:v20];
          }
        }
      }
    }
  }
}

- (void)setStringValue:(id)a3 onChoiceWidgetAnnotation:(id)a4 withTextField:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 valueForAnnotationKey:@"/FT"];
  if (v20 && v8 && [v10 isEqualToString:@"/Ch"])
  {
    v11 = [v8 widgetStringValue];
    [v8 setWidgetStringValue:v20];
    [v9 setText:v20];
    [v9 setNeedsDisplay];
    if (!v11)
    {
      v11 = &stru_1F416DF70;
    }

    if ([(PDFPageView *)self shouldRegisterUndo])
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = PDFKitLocalizedString(@"Change of %@");
      v14 = [v8 displayName];
      v15 = [v12 stringWithFormat:v13, v14];

      v16 = [(PDFPageView *)self undoManager];
      v17 = [v16 prepareWithInvocationTarget:self];
      [v17 setStringValue:v11 onChoiceWidgetAnnotation:v8 withTextField:v9];

      v18 = [(PDFPageView *)self undoManager];
      v19 = PDFKitLocalizedString(v15);
      [v18 setActionName:v19];
    }
  }
}

- (void)setStringValue:(id)a3 onChoiceWidgetAnnotation:(id)a4 withTableView:(id)a5
{
  v24 = a3;
  v8 = a4;
  v9 = a5;
  self->_private->isPerformingUndo = 1;
  v10 = [v8 valueForAnnotationKey:@"/FT"];
  if (v24)
  {
    if (v8 && [v10 isEqualToString:@"/Ch"])
    {
      v11 = [v8 widgetStringValue];
      [v8 setWidgetStringValue:v24];
      v12 = [v8 choices];
      v13 = [v12 indexOfObject:v24];
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:0];
      [v9 selectRowAtIndexPath:v14 animated:1 scrollPosition:0];
      [(PDFPageView *)self tableView:v9 didSelectRowAtIndexPath:v14];
      if (!v11)
      {
        v11 = &stru_1F416DF70;
      }

      if ([(PDFPageView *)self shouldRegisterUndo])
      {
        v23 = v12;
        v15 = MEMORY[0x1E696AEC0];
        v16 = PDFKitLocalizedString(@"Change of %@");
        v17 = [v8 displayName];
        v18 = [v15 stringWithFormat:v16, v17];

        v19 = [(PDFPageView *)self undoManager];
        v20 = [v19 prepareWithInvocationTarget:self];
        [v20 setStringValue:v11 onChoiceWidgetAnnotation:v8 withTableView:v9];

        v21 = [(PDFPageView *)self undoManager];
        v22 = PDFKitLocalizedString(v18);
        [v21 setActionName:v22];

        v12 = v23;
      }
    }

    self->_private->isPerformingUndo = 0;
  }
}

- (void)setState:(int64_t)a3 onButtonWidgetAnnotation:(id)a4
{
  v16 = a4;
  v6 = [v16 valueForAnnotationKey:@"/FT"];
  if (v16)
  {
    if ([v6 isEqualToString:@"/Btn"])
    {
      v7 = [v16 buttonWidgetState];
      [v16 setButtonWidgetState:a3];
      if ([(PDFPageView *)self shouldRegisterUndo])
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = PDFKitLocalizedString(@"Change of %@");
        v10 = [v16 displayName];
        v11 = [v8 stringWithFormat:v9, v10];

        v12 = [(PDFPageView *)self undoManager];
        v13 = [v12 prepareWithInvocationTarget:self];
        [v13 setState:v7 onButtonWidgetAnnotation:v16];

        v14 = [(PDFPageView *)self undoManager];
        v15 = PDFKitLocalizedString(v11);
        [v14 setActionName:v15];
      }
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PDFPageView;
  v8 = [(PDFPageView *)&v16 hitTest:v7 withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v10 = [WeakRetained view];

  if ([v10 isInMarkupMode] & 1) != 0 || (objc_msgSend(v10, "isFormDetectionEnabled"))
  {
    v11 = [v10 hitTestForSubviewsOfView:self atLocation:v7 withEvent:{x, y}];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  return v14;
}

@end