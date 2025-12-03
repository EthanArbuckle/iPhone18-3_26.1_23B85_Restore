@interface PDFPageView
- (BOOL)_allowsFormFieldEntry;
- (BOOL)_shouldReplaceStringOnAnnotation:(id)annotation withTextView:(id)view;
- (BOOL)enablesTileUpdates;
- (BOOL)hasBackgroundImage;
- (BOOL)isVisible;
- (BOOL)shouldRegisterUndo;
- (CGAffineTransform)_rotationTransformForPageView;
- (CGAffineTransform)layerEffectTransform;
- (CGPoint)convertPointToPageView:(CGPoint)view;
- (CGRect)convertRectToPageView:(CGRect)view;
- (PDFPageView)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties;
- (id)activeAnnotation;
- (id)backgroundImage;
- (id)geometryInterface;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)page;
- (id)pageLayer;
- (id)pageLayerEffectForID:(id)d;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (id)renderingProperties;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int)backgroundImageQuality;
- (int64_t)displayBox;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)visibilityDelegateIndex;
- (void)_addPDFAnnotation:(id)annotation;
- (void)_addPDFAnnotationChoiceWidget:(id)widget;
- (void)_addPDFAnnotationSignatureWidget:(id)widget;
- (void)_addPDFAnnotationTextWidget:(id)widget;
- (void)_beginObservingScrollViewMagnification;
- (void)_choiceWidgetDone;
- (void)_formChanged:(id)changed;
- (void)_initPageCornerRadiusForMagnification:(double)magnification;
- (void)_releaseBackgroundImage;
- (void)_renderingPropertyUpdate:(id)update;
- (void)_rotateActiveAnnotation;
- (void)_setAttributedStringForAnnotation:(id)annotation stringValue:(id)value textView:(id)view;
- (void)_setupBookmarkLayer;
- (void)_setuppageAnnotationEffects;
- (void)_updateAnnotationVisibility:(id)visibility;
- (void)_updateBackgroundColor;
- (void)_updateWidgetControl:(id)control forBounds:(CGRect)bounds;
- (void)_viewDidMoveToSuperviewCommon;
- (void)addBookmark;
- (void)addControlForAnnotation:(id)annotation;
- (void)addPageLayerEffect:(id)effect;
- (void)addSearchSelection:(id)selection;
- (void)applyTileLayoutScale:(double)scale;
- (void)clearTiles;
- (void)colorWidgetBackgrounds:(BOOL)backgrounds;
- (void)dealloc;
- (void)enableHighlightDetectedFormFields:(BOOL)fields;
- (void)forceTileUpdate;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)populateFormFieldsWithAutoFillSuggestion:(id)suggestion completionHandler:(id)handler;
- (void)previewRotatePage:(double)page;
- (void)removeAnnotation:(id)annotation;
- (void)removeBookmark;
- (void)removeControlForAnnotation:(id)annotation;
- (void)removePageLayerEffectForID:(id)d;
- (void)restoreOriginalTileLayout;
- (void)saveOriginalTileLayout;
- (void)scalePageLayerEffects:(double)effects;
- (void)setBackgroundImage:(id)image atBackgroundQuality:(int)quality;
- (void)setEnableTileUpdates:(BOOL)updates;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setNeedsTilesUpdate;
- (void)setState:(int64_t)state onButtonWidgetAnnotation:(id)annotation;
- (void)setStringValue:(id)value onChoiceWidgetAnnotation:(id)annotation withTableView:(id)view;
- (void)setStringValue:(id)value onChoiceWidgetAnnotation:(id)annotation withTextField:(id)field;
- (void)setStringValue:(id)value onTextAnnotation:(id)annotation;
- (void)setStringValue:(id)value onTextWidgetAnnotation:(id)annotation;
- (void)setStringValue:(id)value onTextWidgetAnnotation:(id)annotation withTextView:(id)view;
- (void)setVisibilityDelegateIndex:(unint64_t)index;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAnnotation:(id)annotation;
- (void)updateBookmark;
- (void)updatePageLayerEffectForID:(id)d;
- (void)updatePageLayerEffects;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PDFPageView

- (PDFPageView)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties
{
  pageCopy = page;
  interfaceCopy = interface;
  propertiesCopy = properties;
  [pageCopy boundsForBox:{objc_msgSend(propertiesCopy, "displayBox")}];
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

    objc_storeWeak(&v13->_private->page, pageCopy);
    objc_storeWeak(&v13->_private->geometryInterface, interfaceCopy);
    objc_storeWeak(&v13->_private->renderingProperties, propertiesCopy);
    v16 = [[PDFPageLayer alloc] initWithPage:pageCopy geometryInterface:interfaceCopy andRenderingProperties:propertiesCopy];
    objc_storeWeak(&v13->_private->pageLayer, v16);
    [(PDFPageLayer *)v16 setZPosition:-1100.0];
    layer = [(PDFPageView *)v13 layer];
    [layer addSublayer:v16];

    objc_storeWeak(&v13->_private->activeAnnotation, 0);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = v13->_private;
    activeControls = v19->activeControls;
    v19->activeControls = dictionary;

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__renderingPropertyUpdate_ name:@"PDFRenderingPropertiesChanged" object:propertiesCopy];

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

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__didRotatePageNotification_ name:@"PDFPageDidRotate" object:pageCopy];
    [defaultCenter2 addObserver:v13 selector:sel__didRotatePageNotification_ name:@"PDFPageDidChangeBounds" object:pageCopy];
    document = [pageCopy document];
    [defaultCenter2 addObserver:v13 selector:sel__formChanged_ name:@"PDFFormDidChangeValue" object:document];
  }

  return v13;
}

- (void)dealloc
{
  v37 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  uUID = [(PDFPageLayerEffect *)self->_private->searchLayer UUID];
  [WeakRetained removePageLayerEffectForID:uUID];

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
    view = [v16 view];
    [view setActiveAnnotation:0];
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

- (void)willMoveToSuperview:(id)superview
{
  if (!superview)
  {
    undoManager = [(PDFPageView *)self undoManager];
    [undoManager removeAllActionsWithTarget:self];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_private->scrollViewObservation];
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
  displayBox = [WeakRetained displayBox];

  return displayBox;
}

- (BOOL)isVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  isVisible = [WeakRetained isVisible];

  return isVisible;
}

- (void)addPageLayerEffect:(id)effect
{
  v3 = self->_private;
  effectCopy = effect;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  [WeakRetained addPageLayerEffect:effectCopy];
}

- (void)removePageLayerEffectForID:(id)d
{
  v3 = self->_private;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  [WeakRetained removePageLayerEffectForID:dCopy];
}

- (id)pageLayerEffectForID:(id)d
{
  v3 = self->_private;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  v6 = [WeakRetained pageLayerEffectForID:dCopy];

  return v6;
}

- (void)updatePageLayerEffectForID:(id)d
{
  v3 = self->_private;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&v3->pageLayer);
  [WeakRetained updatePageLayerEffectForID:dCopy];
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

- (void)scalePageLayerEffects:(double)effects
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained scalePageLayerEffects:effects];
}

- (void)setEnableTileUpdates:(BOOL)updates
{
  updatesCopy = updates;
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setEnableTileUpdates:updatesCopy];
}

- (BOOL)enablesTileUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  enablesTileUpdates = [WeakRetained enablesTileUpdates];

  return enablesTileUpdates;
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

- (void)applyTileLayoutScale:(double)scale
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained applyTileLayoutScale:scale];
}

- (void)setVisibilityDelegateIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setVisibilityDelegateIndex:index];
}

- (unint64_t)visibilityDelegateIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  visibilityDelegateIndex = [WeakRetained visibilityDelegateIndex];

  return visibilityDelegateIndex;
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
    pageBackgroundColor = [v3 pageBackgroundColor];
    -[CALayer setBackgroundColor:](backgroundLayer, "setBackgroundColor:", [pageBackgroundColor CGColor]);
  }

  else
  {
    -[CALayer setBackgroundColor:](self->_private->backgroundLayer, "setBackgroundColor:", [WeakRetained pageBackgroundColorHint]);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)_viewDidMoveToSuperviewCommon
{
  pDFKitEnclosingScrollView = [(UIView *)self PDFKitEnclosingScrollView];
  v7 = pDFKitEnclosingScrollView;
  if (pDFKitEnclosingScrollView)
  {
    [pDFKitEnclosingScrollView magnification];
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

- (void)_initPageCornerRadiusForMagnification:(double)magnification
{
  WeakRetained = objc_loadWeakRetained(&self->_private->renderingProperties);
  [(PDFPageView *)self bounds];
  [WeakRetained adjustedPageCornerRadiusForPageSize:v6 magnification:{v7, magnification}];
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
  pDFKitEnclosingScrollView = [(UIView *)self PDFKitEnclosingScrollView];
  if (pDFKitEnclosingScrollView)
  {
    objc_copyWeak(&to, &self->_private->pageLayer);
    objc_copyWeak(&from, &self->_private->renderingProperties);
    objc_initWeak(&location, self->_private->backgroundLayer);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PDFPageView__beginObservingScrollViewMagnification__block_invoke;
    v8[3] = &unk_1E8151598;
    objc_copyWeak(&v9, &from);
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    objc_copyWeak(&v11, &to);
    v5 = [defaultCenter addObserverForName:@"PDFScrollViewDidChangeZoomFactor" object:pDFKitEnclosingScrollView queue:0 usingBlock:v8];
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

- (void)setBackgroundImage:(id)image atBackgroundQuality:(int)quality
{
  imageCopy = image;
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
  [(CALayer *)self->_private->backgroundLayer setContents:[(UIImage *)imageCopy CGImage]];
  v14 = self->_private;
  backgroundImage = v14->backgroundImage;
  v14->backgroundImage = imageCopy;
  v16 = imageCopy;

  self->_private->backgroundQuality = quality;
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
  selfCopy = self;
  os_unfair_lock_lock(&self->_private->backgroundImageLock);
  v3 = selfCopy->_private;
  LOBYTE(selfCopy) = v3->backgroundImage != 0;
  os_unfair_lock_unlock(&v3->backgroundImageLock);
  return selfCopy;
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
  selfCopy = self;
  os_unfair_lock_lock(&self->_private->backgroundImageLock);
  v3 = selfCopy->_private;
  LODWORD(selfCopy) = v3[30];
  os_unfair_lock_unlock(v3 + 31);
  return selfCopy;
}

- (void)addSearchSelection:(id)selection
{
  if (selection)
  {
    v4 = [selection copy];
    [v4 setIsTextSelection];
    [(PDFPageLayerEffect *)self->_private->searchLayer addSelection:v4];
  }
}

- (void)previewRotatePage:(double)page
{
  v4 = PDFDegToRad(page);
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

- (void)colorWidgetBackgrounds:(BOOL)backgrounds
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    annotations = [WeakRetained annotations];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(annotations);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v11 valueForAnnotationKey:@"/Subtype"];
          if ([v12 isEqualToString:@"/Widget"])
          {
            [(PDFPageView *)self updateAnnotation:v11];
          }
        }

        v8 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)enableHighlightDetectedFormFields:(BOOL)fields
{
  detectedFormFieldBoundingBoxesLayer = self->_private->detectedFormFieldBoundingBoxesLayer;
  if (fields)
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
      layer = [(PDFPageView *)self layer];
      [layer addSublayer:self->_private->detectedFormFieldBoundingBoxesLayer];

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

- (void)_renderingPropertyUpdate:(id)update
{
  userInfo = [update userInfo];
  v4 = [userInfo objectForKey:@"PDFRenderingPropertyKey"];
  integerValue = [v4 integerValue];

  if (integerValue == 7)
  {
    [(PDFPageView *)self _releaseBackgroundImage];
    [(PDFPageView *)self _updateBackgroundColor];
  }
}

- (void)updateAnnotation:(id)annotation
{
  v20 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v6 = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (WeakRetained)
  {
    v7 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
    if ([v7 isEqualToString:@"/Popup"] && ShouldRenderAnnotationsInPDFKit())
    {
      [WeakRetained annotations];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      pdfAnnotationUUID2 = v18 = 0u;
      v9 = [pdfAnnotationUUID2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(pdfAnnotationUUID2);
          }

          popup = [*(*(&v15 + 1) + 8 * v12) popup];

          if (popup == annotationCopy)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [pdfAnnotationUUID2 countByEnumeratingWithState:&v15 objects:v19 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      [(PDFPageView *)self _updateAnnotationVisibility:annotationCopy];
      pdfAnnotationUUID = [annotationCopy pdfAnnotationUUID];
      [(PDFPageView *)self updatePageLayerEffectForID:pdfAnnotationUUID];
    }

    else
    {
      if (![annotationCopy handledByPDFKit])
      {
LABEL_16:

        goto LABEL_17;
      }

      [(PDFPageView *)self _updateAnnotationVisibility:annotationCopy];
      pdfAnnotationUUID2 = [annotationCopy pdfAnnotationUUID];
      [(PDFPageView *)self updatePageLayerEffectForID:pdfAnnotationUUID2];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_updateAnnotationVisibility:(id)visibility
{
  visibilityCopy = visibility;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  if (WeakRetained)
  {
    pdfAnnotationUUID = [visibilityCopy pdfAnnotationUUID];
    v6 = [(PDFPageView *)self pageLayerEffectForID:pdfAnnotationUUID];
    if (!v6)
    {
LABEL_15:

      goto LABEL_16;
    }

    v7 = [visibilityCopy valueForAnnotationKey:@"/Subtype"];
    v8 = [v7 isEqualToString:@"/Widget"];

    if (v8 && ([visibilityCopy isTextWidget] & 1) == 0)
    {
      control = [visibilityCopy control];
      v9 = control != 0;
    }

    else
    {
      v9 = 0;
    }

    if ([visibilityCopy shouldDisplay])
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

- (void)removeAnnotation:(id)annotation
{
  v19 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  v5 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
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
          if (v11[1] == annotationCopy)
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
    pdfAnnotationUUID = [annotationCopy pdfAnnotationUUID];
    [(PDFPageView *)self removePageLayerEffectForID:pdfAnnotationUUID];

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

- (void)addControlForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  activeControls = self->_private->activeControls;
  v15 = annotationCopy;
  pdfAnnotationUUID = [annotationCopy pdfAnnotationUUID];
  v7 = [(NSMutableDictionary *)activeControls objectForKey:pdfAnnotationUUID];

  if (!v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->page);
    view = [WeakRetained view];

    akAnnotation = [v15 akAnnotation];

    if (akAnnotation)
    {
      activeAnnotation = objc_loadWeakRetained(&self->_private->page);
      view2 = [activeAnnotation view];
      controller = [view2 controller];

      [controller activateAnnotation:v15];
    }

    else
    {
      activeAnnotation = [view activeAnnotation];
      [(PDFPageViewAnnotationController *)self->_private->annotationController addControlForAnnotation:v15];
      if (activeAnnotation)
      {
        v14 = activeAnnotation == v15;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        [view removeControlForAnnotation:activeAnnotation];
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
    pdfAnnotationUUID = [WeakRetained pdfAnnotationUUID];
    if (pdfAnnotationUUID)
    {
      v5 = [(NSMutableDictionary *)self->_private->activeControls objectForKey:pdfAnnotationUUID];
      if (v5)
      {
        [v6 bounds];
        [(PDFPageView *)self _updateWidgetControl:v5 forBounds:?];
      }
    }

    WeakRetained = v6;
  }
}

- (void)removeControlForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [(PDFPageViewAnnotationController *)self->_private->annotationController removeControlForAnnotation:annotationCopy];
  v4 = annotationCopy;
  if (annotationCopy)
  {
    pdfAnnotationUUID = [annotationCopy pdfAnnotationUUID];
    if (pdfAnnotationUUID)
    {
      v6 = [(NSMutableDictionary *)self->_private->activeControls objectForKey:pdfAnnotationUUID];
      if (v6)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        [annotationCopy setControl:0];
        [v6 removeFromSuperview];
        [MEMORY[0x1E6979518] commit];
        WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);

        if (WeakRetained == annotationCopy)
        {
          objc_storeWeak(&self->_private->activeAnnotation, 0);
        }

        [(NSMutableDictionary *)self->_private->activeControls removeObjectForKey:pdfAnnotationUUID];
      }
    }

    v4 = annotationCopy;
  }
}

- (void)populateFormFieldsWithAutoFillSuggestion:(id)suggestion completionHandler:(id)handler
{
  v98 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  handlerCopy = handler;
  contents = [suggestionCopy contents];
  v5 = MEMORY[0x1E695DFA8];
  allKeys = [contents allKeys];
  v51 = [v5 setWithArray:allKeys];

  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v7 = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v8 = v7;
  if (v7 && [v7 isTextWidget])
  {
    activeAnnotation = v8;
    control = [v8 control];
    textView = [control textView];
  }

  else
  {
    v11 = v8;
    view = [WeakRetained view];
    control = [view controller];

    activeAnnotation = [control activeAnnotation];

    if ([activeAnnotation isSynthesizedFormField])
    {
      textView = 0;
    }

    else
    {

      textView = 0;
      activeAnnotation = 0;
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

  v62 = activeAnnotation;
  v14 = v13;
  _Block_object_dispose(&v91, 8);
  preferredInsertionOrder = [v13 preferredInsertionOrder];
  annotations = [WeakRetained annotations];
  v17 = annotations;
  if (activeAnnotation && (v18 = [annotations indexOfObjectIdenticalTo:?]) != 0)
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
  obj = preferredInsertionOrder;
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
                autoFillTextContentType = [v28 autoFillTextContentType];
                v68 = autoFillTextContentType;
                v30 = autoFillTextContentType;
                if (autoFillTextContentType)
                {
                  v31 = [autoFillTextContentType isEqualToString:v24];
                  v30 = v68;
                  if (v31)
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __74__PDFPageView_populateFormFieldsWithAutoFillSuggestion_completionHandler___block_invoke_2;
                    aBlock[3] = &unk_1E81515E8;
                    v74 = v62;
                    selfCopy = self;
                    v76 = textView;
                    v66 = _Block_copy(aBlock);
                    autoFillTextContentType2 = [v28 autoFillTextContentType];
                    v67 = [contents objectForKeyedSubscript:autoFillTextContentType2];
                    if ([v67 length])
                    {
                      v58 = [WeakRetained formFieldGroupForAnnotation:v28];
                      v32 = [autoFillTextContentType2 isEqualToString:v50];
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

                      autoFillTextContentType3 = [v28 autoFillTextContentType];
                      [v51 removeObject:autoFillTextContentType3];

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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v51);
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v10.receiver = self;
  v10.super_class = PDFPageView;
  [(PDFPageView *)&v10 setFrame:frame.origin.x, frame.origin.y];
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

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = PDFPageView;
  [(PDFPageView *)&v6 setHidden:?];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  [WeakRetained setHidden:hiddenCopy];

  [MEMORY[0x1E6979518] commit];
}

- (void)_setupBookmarkLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  view = [WeakRetained view];
  if ([view displaysBookmarksForPages] && objc_msgSend(WeakRetained, "isBookmarked"))
  {
    [(PDFPageView *)self addBookmark];
  }
}

- (void)addBookmark
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  document = [WeakRetained document];

  if (document && ([document allowsDocumentAssembly] & 1) == 0)
  {
    permissionsStatus = [document permissionsStatus];
    v6 = @"user";
    if (permissionsStatus == 2)
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
      layer = [(PDFPageView *)self layer];
      [layer addSublayer:self->_private->bookmarkLayer];

      [(PDFPageView *)self updateBookmark];
    }
  }
}

- (void)removeBookmark
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  document = [WeakRetained document];

  v4 = document;
  if (document && (v5 = [document allowsDocumentAssembly], v4 = document, (v5 & 1) == 0))
  {
    permissionsStatus = [document permissionsStatus];
    v10 = @"user";
    if (permissionsStatus == 2)
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

  v4 = document;
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
    view = [WeakRetained view];
    [view frame];
    v10 = v7 / v9;
    v11 = (COERCE__INT64(fabs(v7 / v9)) - 0x10000000000000) >> 53;
    if ((COERCE__INT64(v7 / v9) <= -1 || v11 >= 0x3FF) && (COERCE__INT64(v7 / v9) - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      [view frame];
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

- (void)_updateWidgetControl:(id)control forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  controlCopy = control;
  [(PDFPageView *)self convertRectToPageView:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  [(PDFPageView *)self _rotationTransformForPageView];
  layer = [controlCopy layer];
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  v21 = *MEMORY[0x1E695EFD0];
  v22 = v19;
  v23 = *(MEMORY[0x1E695EFD0] + 32);
  [layer setAffineTransform:&v21];

  [controlCopy setFrame:{v11, v13, v15, v17}];
  layer2 = [controlCopy layer];

  v21 = v24;
  v22 = v25;
  v23 = v26;
  [layer2 setAffineTransform:&v21];
}

- (CGRect)convertRectToPageView:(CGRect)view
{
  width = view.size.width;
  CenterPoint = PDFRectGetCenterPoint(view.origin.x, view.origin.y, view.size.width);
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
  page = [(PDFPageView *)self page];
  [page boundsForBox:{objc_msgSend(v22, "displayBox")}];
  PDFRectRotate([page rotation], v24, v25);
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
  rotation = [WeakRetained rotation];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v5 = PDFDegToRad(rotation);
  CGAffineTransformMakeRotation(retstr, v5);

  return result;
}

- (CGPoint)convertPointToPageView:(CGPoint)view
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
  v27 = v25 + v26 - view.y;

  v28 = view.x - v22;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (void)_addPDFAnnotationTextWidget:(id)widget
{
  widgetCopy = widget;
  v5 = [PDFKitTextView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  view = [WeakRetained view];
  v10 = [(PDFKitTextView *)v5 initWithAnnotation:widgetCopy pdfPageView:self pdfView:view];

  [widgetCopy bounds];
  [(PDFPageView *)self _updateWidgetControl:v10 forBounds:?];
  objc_storeWeak(&self->_private->activeAnnotation, widgetCopy);
  activeControls = self->_private->activeControls;
  pdfAnnotationUUID = [widgetCopy pdfAnnotationUUID];

  [(NSMutableDictionary *)activeControls setObject:v10 forKey:pdfAnnotationUUID];
}

- (void)_addPDFAnnotationSignatureWidget:(id)widget
{
  widgetCopy = widget;
  v5 = [PDFKitSignatureView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  view = [WeakRetained view];
  v10 = [(PDFKitSignatureView *)v5 initWithAnnotation:widgetCopy pdfPageView:self pdfView:view];

  [widgetCopy bounds];
  [(PDFPageView *)self _updateWidgetControl:v10 forBounds:?];
  objc_storeWeak(&self->_private->activeAnnotation, widgetCopy);
  activeControls = self->_private->activeControls;
  pdfAnnotationUUID = [widgetCopy pdfAnnotationUUID];

  [(NSMutableDictionary *)activeControls setObject:v10 forKey:pdfAnnotationUUID];
}

- (void)_addPDFAnnotationChoiceWidget:(id)widget
{
  v45[2] = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  [widgetCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  choices = [widgetCopy choices];
  widgetStringValue = [widgetCopy widgetStringValue];
  isListChoice = [widgetCopy isListChoice];
  font = [widgetCopy font];
  [font pointSize];
  v18 = v17;
  _allowsFormFieldEntry = [(PDFPageView *)self _allowsFormFieldEntry];
  pdfAnnotationUUID = [widgetCopy pdfAnnotationUUID];
  if (choices | widgetStringValue)
  {
    if (!choices)
    {
      choices = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{widgetStringValue, 0}];
    }

    v43 = pdfAnnotationUUID;
    v44 = font;
    if (isListChoice)
    {
      v21 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:{v6, v8, v10, v12}];
      [(PDFPageView *)self _updateWidgetControl:v21 forBounds:v6, v8, v10, v12];
      [v21 setDataSource:self];
      [v21 setDelegate:self];
      [v21 setScrollEnabled:1];
      [v21 setUserInteractionEnabled:_allowsFormFieldEntry];
      [v21 setRowHeight:v18 + 2.0];
      [v21 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      layer = [v21 layer];
      [layer setBorderWidth:1.0];

      WeakRetained = objc_loadWeakRetained(&self->_private->page);
      view = [WeakRetained view];
      isUsingPageViewController = [view isUsingPageViewController];

      if ((isUsingPageViewController & 1) == 0)
      {
        panGestureRecognizer = [v21 panGestureRecognizer];
        v42 = WeakRetained;
        view2 = [WeakRetained view];
        documentScrollView = [view2 documentScrollView];
        panGestureRecognizer2 = [documentScrollView panGestureRecognizer];

        if (panGestureRecognizer && panGestureRecognizer2)
        {
          [panGestureRecognizer2 requireGestureRecognizerToFail:panGestureRecognizer];
        }

        WeakRetained = v42;
      }

      [(PDFPageView *)self addSubview:v21];
      layer2 = [v21 layer];
      [layer2 setZPosition:-200.0];

      objc_storeWeak(&self->_private->activeAnnotation, widgetCopy);
      pdfAnnotationUUID = v43;
      [(NSMutableDictionary *)self->_private->activeControls setObject:v21 forKey:v43];
      [v21 reloadData];
      v31 = [choices indexOfObject:widgetStringValue];
      v32 = [MEMORY[0x1E696AC88] indexPathForRow:v31 inSection:0];
      [v21 selectRowAtIndexPath:v32 animated:0 scrollPosition:0];
    }

    else
    {
      v33 = v8 + -2.0;
      WeakRetained = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v6, v33, v10, v12}];
      [(PDFPageView *)self _updateWidgetControl:WeakRetained forBounds:v6, v33, v10, v12];
      [WeakRetained setFont:font];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [WeakRetained setTintColor:clearColor];

      [WeakRetained setText:widgetStringValue];
      [WeakRetained setUserInteractionEnabled:_allowsFormFieldEntry];
      v21 = objc_alloc_init(MEMORY[0x1E69DCD78]);
      [WeakRetained setInputView:v21];
      objc_storeWeak(&self->_private->activeAnnotation, widgetCopy);
      [(NSMutableDictionary *)self->_private->activeControls setObject:WeakRetained forKey:pdfAnnotationUUID];
      [v21 setDelegate:self];
      [v21 setDataSource:self];
      [(PDFPageView *)self addSubview:WeakRetained];
      layer3 = [WeakRetained layer];
      [layer3 setZPosition:-200.0];

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

      pdfAnnotationUUID = v43;
    }

    [widgetCopy setControl:v21];
    font = v44;
  }
}

- (void)_choiceWidgetDone
{
  [(PDFPageView *)self endEditing:1];
  page = [(PDFPageView *)self page];
  view = [page view];
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  [view removeControlForAnnotation:WeakRetained];
}

- (void)_addPDFAnnotation:(id)annotation
{
  annotationCopy = annotation;
  WeakRetained = objc_loadWeakRetained(&self->_private->pageLayer);
  if (WeakRetained)
  {
    akAnnotationAdaptor = [annotationCopy akAnnotationAdaptor];
    akAnnotation = [akAnnotationAdaptor akAnnotation];

    if (!akAnnotation)
    {
      if ([annotationCopy isMarkupAnnotationSubtype] && (objc_msgSend(annotationCopy, "isRedaction") & 1) == 0)
      {
        v9 = [PDFPageLayerEffect createPDFMarkupLayerEffectsForAnnotation:annotationCopy withLayer:WeakRetained];
      }

      else
      {
        v7 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
        v8 = [v7 isEqualToString:@"/Popup"];

        if (v8)
        {
          goto LABEL_9;
        }

        v9 = [PDFPageLayerEffect createPDFAnnotationLayerEffectForAnnotation:annotationCopy withLayer:WeakRetained];
      }
    }
  }

LABEL_9:
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v5 = [WeakRetained valueForAnnotationKey:@"/FT"];
  v6 = v5;
  if (WeakRetained && [v5 isEqualToString:@"/Ch"])
  {
    choices = [WeakRetained choices];
    v8 = [choices count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"MyCell"];
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"MyCell"];
  }

  if (WeakRetained)
  {
    choices = [WeakRetained choices];
    v10 = [choices objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    font = [WeakRetained font];
    textLabel = [v7 textLabel];
    [textLabel setText:v10];

    if (font)
    {
      textLabel2 = [v7 textLabel];
      [textLabel2 setFont:font];
    }
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = self->_private;
  if (!v7->isPerformingUndo)
  {
    WeakRetained = objc_loadWeakRetained(&v7->activeAnnotation);
    v9 = [WeakRetained valueForAnnotationKey:@"/FT"];
    v10 = v9;
    if (WeakRetained && [v9 isEqualToString:@"/Ch"])
    {
      choices = [WeakRetained choices];
      v12 = [choices objectAtIndex:{objc_msgSend(pathCopy, "row")}];
      [(PDFPageView *)self setStringValue:v12 onChoiceWidgetAnnotation:WeakRetained withTableView:viewCopy];
    }
  }
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  activeControls = self->_private->activeControls;
  pdfAnnotationUUID = [WeakRetained pdfAnnotationUUID];
  v9 = [(NSMutableDictionary *)activeControls objectForKey:pdfAnnotationUUID];

  if (WeakRetained)
  {
    choices = [WeakRetained choices];
    v11 = [choices objectAtIndex:row];

    [WeakRetained setWidgetStringValue:v11];
    if (v9)
    {
      [(PDFPageView *)self setStringValue:v11 onChoiceWidgetAnnotation:WeakRetained withTextField:v9];
    }
  }
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  viewCopy = view;
  reusingViewCopy = reusingView;
  v11 = reusingViewCopy;
  if (!reusingViewCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setTextAlignment:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    choices = [WeakRetained choices];
    v15 = [choices objectAtIndex:row];
  }

  else
  {
    v15 = &stru_1F416DF70;
  }

  [v11 setText:v15];

  return v11;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  WeakRetained = objc_loadWeakRetained(&self->_private->activeAnnotation);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    choices = [WeakRetained choices];
    v7 = [choices count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_formChanged:(id)changed
{
  v23 = *MEMORY[0x1E69E9840];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"PDFFormFieldName"];

  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  document = [WeakRetained document];
  v17 = v5;
  v8 = [document annotationsForFieldName:v5];

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

        pdfAnnotationUUID = [v14 pdfAnnotationUUID];
        [(PDFPageView *)self updatePageLayerEffectForID:pdfAnnotationUUID];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (BOOL)_allowsFormFieldEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  document = [WeakRetained document];

  if (document)
  {
    allowsFormFieldEntry = [document allowsFormFieldEntry];
  }

  else
  {
    allowsFormFieldEntry = 1;
  }

  return allowsFormFieldEntry;
}

- (BOOL)shouldRegisterUndo
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  view = [WeakRetained view];
  allowsUndo = [view allowsUndo];

  return allowsUndo;
}

- (void)setStringValue:(id)value onTextWidgetAnnotation:(id)annotation
{
  valueCopy = value;
  annotationCopy = annotation;
  if (valueCopy)
  {
    v7 = [annotationCopy valueForAnnotationKey:@"/FT"];
    v8 = v7;
    if (annotationCopy && [v7 isEqualToString:@"/Tx"])
    {
      widgetStringValue = [annotationCopy widgetStringValue];
      if (widgetStringValue)
      {
        v10 = widgetStringValue;
      }

      else
      {
        v10 = &stru_1F416DF70;
      }

      [annotationCopy setWidgetStringValue:valueCopy];
      if ([(PDFPageView *)self shouldRegisterUndo])
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = PDFKitLocalizedString(@"Change of %@");
        displayName = [annotationCopy displayName];
        v14 = [v11 stringWithFormat:v12, displayName];

        undoManager = [(PDFPageView *)self undoManager];
        v16 = [undoManager prepareWithInvocationTarget:self];
        [v16 setStringValue:v10 onTextWidgetAnnotation:annotationCopy];

        undoManager2 = [(PDFPageView *)self undoManager];
        v18 = PDFKitLocalizedString(v14);
        [undoManager2 setActionName:v18];
      }
    }
  }
}

- (void)setStringValue:(id)value onTextAnnotation:(id)annotation
{
  valueCopy = value;
  annotationCopy = annotation;
  if (valueCopy)
  {
    if (annotationCopy)
    {
      v7 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
      v8 = [v7 isEqualToString:@"/FreeText"];

      if (v8)
      {
        widgetStringValue = [annotationCopy widgetStringValue];
        if (widgetStringValue)
        {
          v10 = widgetStringValue;
        }

        else
        {
          v10 = &stru_1F416DF70;
        }

        [annotationCopy setValue:valueCopy forAnnotationKey:@"/Contents"];
        akAnnotation = [annotationCopy akAnnotation];

        if (akAnnotation)
        {
          WeakRetained = objc_loadWeakRetained(&self->_private->page);
          document = [WeakRetained document];

          akController = [document akController];
          if (objc_opt_respondsToSelector())
          {
            textEditorController = [akController textEditorController];
            annotation = [textEditorController annotation];
            akAnnotation2 = [annotationCopy akAnnotation];

            if (annotation == akAnnotation2)
            {
              textView = [textEditorController textView];
              [textView setText:valueCopy];

              [textEditorController updateForTextAttributeChange];
            }
          }
        }

        if ([(PDFPageView *)self shouldRegisterUndo])
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = PDFKitLocalizedString(@"Change of %@");
          displayName = [annotationCopy displayName];
          v22 = [v19 stringWithFormat:v20, displayName];

          undoManager = [(PDFPageView *)self undoManager];
          v24 = [undoManager prepareWithInvocationTarget:self];
          [v24 setStringValue:v10 onTextAnnotation:annotationCopy];

          undoManager2 = [(PDFPageView *)self undoManager];
          v26 = PDFKitLocalizedString(v22);
          [undoManager2 setActionName:v26];
        }
      }
    }
  }
}

- (void)_setAttributedStringForAnnotation:(id)annotation stringValue:(id)value textView:(id)view
{
  v30[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  valueCopy = value;
  annotationCopy = annotation;
  font = [annotationCopy font];
  v11 = [annotationCopy valueForAnnotationKey:@"/MaxLen"];

  integerValue = [v11 integerValue];
  if (!font)
  {
    v13 = MEMORY[0x1E69DB878];
    [viewCopy frame];
    font = [v13 systemFontOfSize:v14 + -2.0];
  }

  v15 = integerValue;
  v29 = *MEMORY[0x1E69DB648];
  v16 = v29;
  v30[0] = font;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [valueCopy sizeWithAttributes:v17];
  v19 = v18;

  v20 = [valueCopy length];
  [viewCopy frame];
  v22 = (v21 + -v19 / v20 * v15) / v15;
  v23 = [valueCopy length];
  v24 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:valueCopy];

  v25 = *MEMORY[0x1E69DB660];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  [v24 addAttribute:v25 value:v26 range:{0, v23}];

  [v24 addAttribute:v16 value:font range:{0, v23}];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v28 = [defaultParagraphStyle mutableCopy];

  [v28 setLineBreakMode:2];
  [v24 addAttribute:*MEMORY[0x1E69DB688] value:v28 range:{0, v23}];
  [viewCopy setAttributedText:v24];
}

- (BOOL)_shouldReplaceStringOnAnnotation:(id)annotation withTextView:(id)view
{
  annotationCopy = annotation;
  viewCopy = view;
  text = [viewCopy text];
  v9 = [annotationCopy replaceTextWidgetWithString:text];
  v10 = [text isEqualToString:v9];
  if ((v10 & 1) == 0)
  {
    [(PDFPageView *)self _setAttributedStringForAnnotation:annotationCopy stringValue:v9 textView:viewCopy];
  }

  return v10;
}

- (void)setStringValue:(id)value onTextWidgetAnnotation:(id)annotation withTextView:(id)view
{
  valueCopy = value;
  annotationCopy = annotation;
  viewCopy = view;
  if (valueCopy)
  {
    if (annotationCopy)
    {
      v10 = [annotationCopy valueForAnnotationKey:@"/FT"];
      v11 = [v10 isEqualToString:@"/Tx"];

      if (v11)
      {
        if ([(PDFPageView *)self _shouldReplaceStringOnAnnotation:annotationCopy withTextView:viewCopy])
        {
          widgetStringValue = [annotationCopy widgetStringValue];
          [annotationCopy setWidgetStringValue:valueCopy];
          if ([annotationCopy shouldComb])
          {
            [(PDFPageView *)self _setAttributedStringForAnnotation:annotationCopy stringValue:valueCopy textView:viewCopy];
          }

          else
          {
            [viewCopy setText:valueCopy];
          }

          [viewCopy setNeedsDisplay];
          if (!widgetStringValue)
          {
            widgetStringValue = &stru_1F416DF70;
          }

          if ([(PDFPageView *)self shouldRegisterUndo])
          {
            v13 = MEMORY[0x1E696AEC0];
            v14 = PDFKitLocalizedString(@"Change of %@");
            displayName = [annotationCopy displayName];
            v16 = [v13 stringWithFormat:v14, displayName];

            undoManager = [(PDFPageView *)self undoManager];
            v18 = [undoManager prepareWithInvocationTarget:self];
            [v18 setStringValue:widgetStringValue onTextWidgetAnnotation:annotationCopy withTextView:viewCopy];

            undoManager2 = [(PDFPageView *)self undoManager];
            v20 = PDFKitLocalizedString(v16);
            [undoManager2 setActionName:v20];
          }
        }
      }
    }
  }
}

- (void)setStringValue:(id)value onChoiceWidgetAnnotation:(id)annotation withTextField:(id)field
{
  valueCopy = value;
  annotationCopy = annotation;
  fieldCopy = field;
  v10 = [annotationCopy valueForAnnotationKey:@"/FT"];
  if (valueCopy && annotationCopy && [v10 isEqualToString:@"/Ch"])
  {
    widgetStringValue = [annotationCopy widgetStringValue];
    [annotationCopy setWidgetStringValue:valueCopy];
    [fieldCopy setText:valueCopy];
    [fieldCopy setNeedsDisplay];
    if (!widgetStringValue)
    {
      widgetStringValue = &stru_1F416DF70;
    }

    if ([(PDFPageView *)self shouldRegisterUndo])
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = PDFKitLocalizedString(@"Change of %@");
      displayName = [annotationCopy displayName];
      v15 = [v12 stringWithFormat:v13, displayName];

      undoManager = [(PDFPageView *)self undoManager];
      v17 = [undoManager prepareWithInvocationTarget:self];
      [v17 setStringValue:widgetStringValue onChoiceWidgetAnnotation:annotationCopy withTextField:fieldCopy];

      undoManager2 = [(PDFPageView *)self undoManager];
      v19 = PDFKitLocalizedString(v15);
      [undoManager2 setActionName:v19];
    }
  }
}

- (void)setStringValue:(id)value onChoiceWidgetAnnotation:(id)annotation withTableView:(id)view
{
  valueCopy = value;
  annotationCopy = annotation;
  viewCopy = view;
  self->_private->isPerformingUndo = 1;
  v10 = [annotationCopy valueForAnnotationKey:@"/FT"];
  if (valueCopy)
  {
    if (annotationCopy && [v10 isEqualToString:@"/Ch"])
    {
      widgetStringValue = [annotationCopy widgetStringValue];
      [annotationCopy setWidgetStringValue:valueCopy];
      choices = [annotationCopy choices];
      v13 = [choices indexOfObject:valueCopy];
      v14 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:0];
      [viewCopy selectRowAtIndexPath:v14 animated:1 scrollPosition:0];
      [(PDFPageView *)self tableView:viewCopy didSelectRowAtIndexPath:v14];
      if (!widgetStringValue)
      {
        widgetStringValue = &stru_1F416DF70;
      }

      if ([(PDFPageView *)self shouldRegisterUndo])
      {
        v23 = choices;
        v15 = MEMORY[0x1E696AEC0];
        v16 = PDFKitLocalizedString(@"Change of %@");
        displayName = [annotationCopy displayName];
        v18 = [v15 stringWithFormat:v16, displayName];

        undoManager = [(PDFPageView *)self undoManager];
        v20 = [undoManager prepareWithInvocationTarget:self];
        [v20 setStringValue:widgetStringValue onChoiceWidgetAnnotation:annotationCopy withTableView:viewCopy];

        undoManager2 = [(PDFPageView *)self undoManager];
        v22 = PDFKitLocalizedString(v18);
        [undoManager2 setActionName:v22];

        choices = v23;
      }
    }

    self->_private->isPerformingUndo = 0;
  }
}

- (void)setState:(int64_t)state onButtonWidgetAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v6 = [annotationCopy valueForAnnotationKey:@"/FT"];
  if (annotationCopy)
  {
    if ([v6 isEqualToString:@"/Btn"])
    {
      buttonWidgetState = [annotationCopy buttonWidgetState];
      [annotationCopy setButtonWidgetState:state];
      if ([(PDFPageView *)self shouldRegisterUndo])
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = PDFKitLocalizedString(@"Change of %@");
        displayName = [annotationCopy displayName];
        v11 = [v8 stringWithFormat:v9, displayName];

        undoManager = [(PDFPageView *)self undoManager];
        v13 = [undoManager prepareWithInvocationTarget:self];
        [v13 setState:buttonWidgetState onButtonWidgetAnnotation:annotationCopy];

        undoManager2 = [(PDFPageView *)self undoManager];
        v15 = PDFKitLocalizedString(v11);
        [undoManager2 setActionName:v15];
      }
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = PDFPageView;
  v8 = [(PDFPageView *)&v16 hitTest:eventCopy withEvent:x, y];
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  view = [WeakRetained view];

  if ([view isInMarkupMode] & 1) != 0 || (objc_msgSend(view, "isFormDetectionEnabled"))
  {
    v11 = [view hitTestForSubviewsOfView:self atLocation:eventCopy withEvent:{x, y}];
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