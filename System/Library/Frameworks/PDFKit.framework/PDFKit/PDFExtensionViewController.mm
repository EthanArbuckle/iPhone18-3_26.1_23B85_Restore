@interface PDFExtensionViewController
- (PDFExtensionViewController)init;
- (uint64_t)updatePDFViewLayout:(double)layout scrollViewFrame:(double)frame safeAreaInsets:(double)insets zoomScale:(double)scale;
- (void)_annotationHitNotification:(id)notification;
- (void)_annotationLongPressNotification:(id)notification;
- (void)_goToDestination:(id)destination;
- (void)_goToPage:(id)page;
- (void)_pageChangedNotification:(id)notification;
- (void)_pdfViewZoomToRect:(id)rect;
- (void)_selectionChangedNotification:(id)notification;
- (void)_selectionPointsChangedNotification:(id)notification;
- (void)_setupDocumentViewSize;
- (void)_textSelectionDidCopyNotification:(id)notification;
- (void)_textSelectionShowTextSelectionMenu:(id)menu;
- (void)_updateDocumentIsLocked;
- (void)_updatePageCount;
- (void)_updateTextSelectionPoints;
- (void)_zoomToRect:(CGRect)rect;
- (void)cancelFindString;
- (void)cancelFindStringWithHighlightsCleared:(BOOL)cleared;
- (void)clearSearchHighlights;
- (void)didMatchString:(id)string;
- (void)documentDidEndDocumentFind:(id)find;
- (void)findString:(id)string withOptions:(unint64_t)options;
- (void)focusOnSearchResultAtIndex:(unint64_t)index;
- (void)goToPageIndex:(int64_t)index;
- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch isIndirectTouch:(BOOL)indirectTouch;
- (void)pointerRegionForLocation:(CGPoint)location;
- (void)setDocumentData:(id)data;
- (void)setupPDFView;
- (void)snapshotViewRect:(CGRect)rect forWidth:(double)width afterScreenUpdates:(BOOL)updates;
- (void)unlockWithPassword:(id)password;
- (void)viewDidLoad;
@end

@implementation PDFExtensionViewController

- (PDFExtensionViewController)init
{
  v24.receiver = self;
  v24.super_class = PDFExtensionViewController;
  v2 = [(PDFExtensionViewController *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(PDFExtensionViewControllerPrivate);
    v4 = v2->_private;
    v2->_private = v3;

    v5 = v2->_private;
    searchString = v5->searchString;
    v5->searchString = 0;

    v7 = v2->_private;
    searchSelection = v7->searchSelection;
    v7->searchSelection = 0;

    array = [MEMORY[0x1E695DF70] array];
    v10 = v2->_private;
    searchResults = v10->searchResults;
    v10->searchResults = array;

    v2->_private->didCancelActiveSearch = 0;
    v2->_private->currentGestureState = 3;
    v2->_private->hasSelection = 0;
    v12 = *MEMORY[0x1E695EFF8];
    v2->_private->topLeftSelectionPoint = *MEMORY[0x1E695EFF8];
    v2->_private->bottomRightSelectionPoint = v12;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__pageChangedNotification_ name:@"PDFViewChangedPage" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__goToPage_ name:@"PDFExtensionViewGoToPage" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__goToDestination_ name:@"PDFExtensionViewGoToDestination" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__pdfViewZoomToRect_ name:@"PDFExtensionViewZoomToRect" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel__selectionChangedNotification_ name:@"PDFViewSelectionChanged" object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v2 selector:sel__selectionPointsChangedNotification_ name:@"PDFTextSelectionDidChangeTextSelectionPoints" object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v2 selector:sel__textSelectionShowTextSelectionMenu_ name:@"PDFTextSelectionShowTextSelectionMenu" object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v2 selector:sel__textSelectionDidCopyNotification_ name:@"PDFTextSelectionDidCopy" object:0];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v2 selector:sel__annotationHitNotification_ name:@"PDFViewAnnotationHit" object:0];

    defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter10 addObserver:v2 selector:sel__annotationLongPressNotification_ name:@"PDFExtensionViewAnnotationLongPress" object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PDFExtensionViewController;
  [(PDFExtensionViewController *)&v16 viewDidLoad];
  view = [(PDFExtensionViewController *)self view];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [view setBackgroundColor:secondarySystemBackgroundColor];

  extensionContext = [(PDFExtensionViewController *)self extensionContext];
  [extensionContext setExtensionViewController:self];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  v8 = self->_private;
  hostProxy = v8->hostProxy;
  v8->hostProxy = remoteObjectProxy;

  v10 = [PDFView alloc];
  view2 = [(PDFExtensionViewController *)self view];
  [view2 bounds];
  v12 = [(PDFView *)v10 initWithFrame:?];
  v13 = self->_private;
  pdfView = v13->pdfView;
  v13->pdfView = v12;

  view3 = [(PDFExtensionViewController *)self view];
  [view3 addSubview:self->_private->pdfView];

  [(PDFView *)self->_private->pdfView setDisplayMode:1];
  [(PDFView *)self->_private->pdfView setAutoScales:0];
  [(PDFView *)self->_private->pdfView setScrollViewScrollEnabled:0];
  [(PDFView *)self->_private->pdfView setPageBreakMargins:6.0, 4.0, 6.0, 4.0];
  [(PDFView *)self->_private->pdfView setDocumentMargins:6.0, 8.0, 6.0, 8.0];
  [(PDFView *)self->_private->pdfView setIsUsingPDFExtensionView:1];
}

- (void)setupPDFView
{
  v3 = self->_private;
  [(PDFView *)v3->pdfView pdfDocumentViewSize];
  v3->documentViewSize.width = v4;
  v3->documentViewSize.height = v5;
  v6.n128_u64[0] = 0;
  v7.n128_u64[0] = 0;
  v8 = PDFRectMake(v6, v7, self->_private->documentViewSize.width, self->_private->documentViewSize.height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view = [(PDFExtensionViewController *)self view];
  [view setFrame:{v8, v10, v12, v14}];

  [(PDFView *)self->_private->pdfView setFrame:v8, v10, v12, v14];
  [(PDFExtensionViewController *)self _setupDocumentViewSize];

  [(PDFExtensionViewController *)self _updatePageCount];
}

- (void)setDocumentData:(id)data
{
  v12[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[PDFDocument alloc] initWithData:dataCopy];

  if (v5)
  {
    [(PDFDocument *)v5 setDelegate:self];
    [(PDFView *)self->_private->pdfView setDocument:v5];
    [(PDFView *)self->_private->pdfView setMinScaleFactor:1.0];
    [(PDFView *)self->_private->pdfView setMaxScaleFactor:5.0];
    document = [(PDFView *)self->_private->pdfView document];
    isLocked = [document isLocked];

    if (isLocked)
    {
      hostProxy = self->_private->hostProxy;
      v11[0] = @"function";
      v11[1] = @"isLocked";
      v12[0] = @"documentIsLocked";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v12[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
      [(PDFHostProtocol *)hostProxy extensionToHost:v10];
    }

    else
    {
      [(PDFExtensionViewController *)self setupPDFView];
    }
  }

  else
  {
    [(PDFHostProtocol *)self->_private->hostProxy extensionToHost:&unk_1F41843E8];
  }
}

- (void)findString:(id)string withOptions:(unint64_t)options
{
  stringCopy = string;
  if (([stringCopy isEqualToString:self->_private->searchString] & 1) == 0)
  {
    v7 = self->_private;
    searchSelection = v7->searchSelection;
    v7->searchSelection = 0;

    objc_storeStrong(&self->_private->searchString, string);
    [(PDFExtensionViewController *)self clearSearchHighlights];
  }

  document = [(PDFView *)self->_private->pdfView document];
  [document beginFindString:self->_private->searchString withOptions:options];
}

- (void)cancelFindString
{
  self->_private->didCancelActiveSearch = 1;
  document = [(PDFView *)self->_private->pdfView document];
  [document cancelFindString];

  self->_private->didCancelActiveSearch = 0;

  [(PDFExtensionViewController *)self clearSearchHighlights];
}

- (void)cancelFindStringWithHighlightsCleared:(BOOL)cleared
{
  clearedCopy = cleared;
  self->_private->didCancelActiveSearch = 1;
  document = [(PDFView *)self->_private->pdfView document];
  [document cancelFindString];

  self->_private->didCancelActiveSearch = 0;
  if (clearedCopy)
  {

    [(PDFExtensionViewController *)self clearSearchHighlights];
  }
}

- (void)focusOnSearchResultAtIndex:(unint64_t)index
{
  v40[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_private->searchResults count]> index)
  {
    v5 = [(NSMutableArray *)self->_private->searchResults objectAtIndex:index];
    v6 = self->_private;
    searchSelection = v6->searchSelection;
    v6->searchSelection = v5;

    v8 = self->_private;
    pdfView = v8->pdfView;
    v40[0] = v8->searchSelection;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [(PDFView *)pdfView setHighlightedSelections:v10];

    pages = [(PDFSelection *)self->_private->searchSelection pages];
    firstObject = [pages firstObject];

    if (firstObject)
    {
      [(PDFSelection *)self->_private->searchSelection boundsForPage:firstObject];
      [(PDFView *)self->_private->pdfView convertRect:firstObject fromPage:?];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      view = [(PDFExtensionViewController *)self view];
      [view convertRect:self->_private->pdfView fromView:{v14, v16, v18, v20}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
      v39[0] = v30;
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      v39[1] = v31;
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
      v39[2] = v32;
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      v39[3] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];

      hostProxy = self->_private->hostProxy;
      v37[0] = @"function";
      v37[1] = @"selectionRect";
      v38[0] = @"showSelectionRect";
      v38[1] = v34;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      [(PDFHostProtocol *)hostProxy extensionToHost:v36];
    }
  }
}

- (void)clearSearchHighlights
{
  v3 = self->_private;
  searchSelection = v3->searchSelection;
  v3->searchSelection = 0;

  [(NSMutableArray *)self->_private->searchResults removeAllObjects];
  pdfView = self->_private->pdfView;

  [(PDFView *)pdfView setHighlightedSelections:0];
}

- (void)goToPageIndex:(int64_t)index
{
  document = [(PDFView *)self->_private->pdfView document];
  v7 = [document pageAtIndex:index];

  v6 = v7;
  if (v7)
  {
    [(PDFView *)self->_private->pdfView goToPage:v7];
    v6 = v7;
  }
}

- (uint64_t)updatePDFViewLayout:(double)layout scrollViewFrame:(double)frame safeAreaInsets:(double)insets zoomScale:(double)scale
{
  v23 = PDFRectScale(a10, a11, a12, a13, 1.0 / a14);
  v25 = v24;
  v26 = self[124];
  v28 = v27 + v24 + *(v26 + 24);
  v30.n128_u64[0] = 0;
  v31.n128_u64[0] = 0;
  v32 = PDFRectMake(v30, v31, v28, v29 + v23 + *(v26 + 32));
  v34 = v33;
  v36 = v35;
  v38 = v37;
  view = [self view];
  [view frame];
  v68.origin.x = v40;
  v68.origin.y = v41;
  v68.size.width = v42;
  v68.size.height = v43;
  v67.origin.x = v32;
  v67.origin.y = v34;
  v67.size.width = v36;
  v67.size.height = v38;
  v44 = PDFRectEqualToRect(v67, v68);

  if (!v44)
  {
    view2 = [self view];
    [view2 setFrame:{v32, v34, v36, v38}];

    [*(self[124] + 8) extensionToHost:&unk_1F4184410];
  }

  [*(self[124] + 16) frame];
  if (vabdd_f64(v25, v46.n128_f64[0]) > 0.00000011920929 || ([*(self[124] + 16) frame], vabdd_f64(v23, v47.n128_f64[0]) > 0.00000011920929))
  {
    v46.n128_f64[0] = v25;
    v47.n128_f64[0] = v23;
    [*(self[124] + 16) setFrame:{PDFRectMake(v46, v47, *(self[124] + 24), *(self[124] + 32))}];
  }

  view3 = [self view];
  [view3 convertRect:*(self[124] + 16) toView:{a2, layout, frame, insets}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = *(self[124] + 16);

  return [v57 updatePDFViewLayout:v50 scrollViewFrame:v52 zoomScale:{v54, v56, scale, a7, a8, a9}];
}

- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch isIndirectTouch:(BOOL)indirectTouch
{
  indirectTouchCopy = indirectTouch;
  y = touch.y;
  x = touch.x;
  v10 = location.y;
  v11 = location.x;
  self->_private->currentGestureState = state;
  view = [(PDFExtensionViewController *)self view];
  [view convertPoint:self->_private->pdfView toView:{v11, v10}];
  v17 = v16;
  v19 = v18;

  view2 = [(PDFExtensionViewController *)self view];
  [view2 convertPoint:self->_private->pdfView toView:{x, y}];
  v22 = v21;
  v24 = v23;

  pdfView = self->_private->pdfView;

  [(PDFView *)pdfView handleGesture:gesture state:state location:indirectTouchCopy locationOfFirstTouch:v17 isIndirectTouch:v19, v22, v24];
}

- (void)snapshotViewRect:(CGRect)rect forWidth:(double)width afterScreenUpdates:(BOOL)updates
{
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31[4] = *MEMORY[0x1E69E9840];
  v10 = rect.size.height / rect.size.width * width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  displayGamut = [traitCollection displayGamut];

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  traitCollection2 = [mainScreen2 traitCollection];
  [traitCollection2 displayScale];
  v17 = v16;

  if (v17 == 0.0)
  {
    v17 = 1.0;
  }

  v18 = vcvtpd_s64_f64(v10 * v17);
  v30[0] = *MEMORY[0x1E696CDE0];
  v19 = [MEMORY[0x1E696AD98] numberWithLong:vcvtpd_s64_f64(v17 * width)];
  v31[0] = v19;
  v30[1] = *MEMORY[0x1E696CD90];
  v20 = [MEMORY[0x1E696AD98] numberWithLong:v18];
  v31[1] = v20;
  v30[2] = *MEMORY[0x1E696CDA0];
  if (displayGamut == 1)
  {
    v21 = 1999843442;
  }

  else
  {
    v21 = 1111970369;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithInt:v21];
  v30[3] = *MEMORY[0x1E696CD78];
  v31[2] = v22;
  v31[3] = &unk_1F41842B8;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v24 = [objc_alloc(MEMORY[0x1E696CDE8]) initWithProperties:v23];
  v25 = v24;
  if (v24)
  {
    [v24 lockWithOptions:0 seed:0];
    if (displayGamut == 1)
    {
      v26 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    }

    else
    {
      v26 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    v27 = CGIOSurfaceContextCreate();
    CGColorSpaceRelease(v26);
    if (v27)
    {
      CGContextTranslateCTM(v27, 0.0, v18);
      CGContextScaleCTM(v27, v17, -v17);
      CGContextScaleCTM(v27, width / width, width / width);
      CGContextTranslateCTM(v27, -x, -y);
      view = [(PDFExtensionViewController *)self view];
      layer = [view layer];
      [layer renderInContext:v27];

      CGContextFlush(v27);
      [v25 unlockWithOptions:0 seed:0];
      [(PDFHostProtocol *)self->_private->hostProxy extensionSnapshotToHost:v25 scale:v17];
      CGContextRelease(v27);
    }
  }
}

- (void)unlockWithPassword:(id)password
{
  pdfView = self->_private->pdfView;
  passwordCopy = password;
  document = [(PDFView *)pdfView document];
  [document unlockWithPassword:passwordCopy];

  [(PDFExtensionViewController *)self _updateDocumentIsLocked];
}

- (void)pointerRegionForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v30[3] = *MEMORY[0x1E69E9840];
  view = [(PDFExtensionViewController *)self view];
  [view convertPoint:self->_private->pdfView toView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(PDFView *)self->_private->pdfView pointerRegionForLocation:v8, v10];
  view2 = [(PDFExtensionViewController *)self view];
  [v11 rect];
  [view2 convertRect:self->_private->pdfView fromView:?];
  [v11 setRect:?];

  hostProxy = self->_private->hostProxy;
  v30[0] = @"pointerRegionForLocation";
  v29[0] = @"function";
  v29[1] = @"regionRect";
  v14 = MEMORY[0x1E696AD98];
  [v11 rect];
  v15 = [v14 numberWithDouble:?];
  v28[0] = v15;
  v16 = MEMORY[0x1E696AD98];
  [v11 rect];
  v18 = [v16 numberWithDouble:v17];
  v28[1] = v18;
  v19 = MEMORY[0x1E696AD98];
  [v11 rect];
  v21 = [v19 numberWithDouble:v20];
  v28[2] = v21;
  v22 = MEMORY[0x1E696AD98];
  [v11 rect];
  v24 = [v22 numberWithDouble:v23];
  v28[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v30[1] = v25;
  v29[2] = @"regionIdentifier";
  identifier = [v11 identifier];
  v30[2] = identifier;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v27];
}

- (void)_setupDocumentViewSize
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->documentViewSize.width];
  v10[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_private->documentViewSize.height];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  if (v5)
  {
    hostProxy = self->_private->hostProxy;
    v8[0] = @"function";
    v8[1] = @"documentViewSize";
    v9[0] = @"setupDocumentViewSize";
    v9[1] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(PDFHostProtocol *)hostProxy extensionToHost:v7];
  }
}

- (void)_updateDocumentIsLocked
{
  v9[2] = *MEMORY[0x1E69E9840];
  document = [(PDFView *)self->_private->pdfView document];
  isLocked = [document isLocked];

  hostProxy = self->_private->hostProxy;
  v8[0] = @"function";
  v8[1] = @"isLocked";
  v9[0] = @"updateDocumentIsLocked";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:isLocked];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v7];

  if ((isLocked & 1) == 0)
  {
    [(PDFExtensionViewController *)self setupPDFView];
  }
}

- (void)_zoomToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26[4] = *MEMORY[0x1E69E9840];
  view = [(PDFExtensionViewController *)self view];
  [view convertRect:self->_private->pdfView fromView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v26[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v26[1] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v26[2] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  if (v21)
  {
    hostProxy = self->_private->hostProxy;
    v24[0] = @"function";
    v24[1] = @"visibleRect";
    v25[0] = @"zoomToRect";
    v25[1] = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [(PDFHostProtocol *)hostProxy extensionToHost:v23];
  }
}

- (void)_updatePageCount
{
  v9[2] = *MEMORY[0x1E69E9840];
  document = [(PDFView *)self->_private->pdfView document];
  pageCount = [document pageCount];

  hostProxy = self->_private->hostProxy;
  v8[0] = @"function";
  v8[1] = @"pageCount";
  v9[0] = @"updatePageCount";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:pageCount];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v7];
}

- (void)_updateTextSelectionPoints
{
  v24[2] = *MEMORY[0x1E69E9840];
  view = [(PDFExtensionViewController *)self view];
  [view convertPoint:self->_private->pdfView fromView:{self->_private->topLeftSelectionPoint.x, self->_private->topLeftSelectionPoint.y}];
  v5 = v4;
  v7 = v6;

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v24[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v24[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  view2 = [(PDFExtensionViewController *)self view];
  [view2 convertPoint:self->_private->pdfView fromView:{self->_private->bottomRightSelectionPoint.x, self->_private->bottomRightSelectionPoint.y}];
  v13 = v12;
  v15 = v14;

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v23[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v23[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  hostProxy = self->_private->hostProxy;
  v21[0] = @"function";
  v21[1] = @"topLeftSelectionPoint";
  v22[0] = @"setTextSelectionPoints";
  v22[1] = v10;
  v21[2] = @"bottomRightSelectionPoint";
  v22[2] = v18;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v20];
}

- (void)didMatchString:(id)string
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (string)
  {
    v4 = MEMORY[0x1E69DC888];
    stringCopy = string;
    v6 = [v4 colorWithRed:1.0 green:0.89 blue:0.22 alpha:1.0];
    [stringCopy setColor:v6];

    [(NSMutableArray *)self->_private->searchResults addObject:stringCopy];
  }

  v7 = self->_private;
  hostProxy = v7->hostProxy;
  v15[0] = @"findStringUpdate";
  v14[0] = @"function";
  v14[1] = @"numFound";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](v7->searchResults, "count")}];
  v15[1] = v9;
  v14[2] = @"done";
  v10 = MEMORY[0x1E696AD98];
  document = [(PDFView *)self->_private->pdfView document];
  v12 = [v10 numberWithInt:{objc_msgSend(document, "isFinding") ^ 1}];
  v15[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v13];
}

- (void)documentDidEndDocumentFind:(id)find
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  if (!v3->didCancelActiveSearch)
  {
    hostProxy = v3->hostProxy;
    v8[0] = @"findStringUpdate";
    v7[0] = @"function";
    v7[1] = @"numFound";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](v3->searchResults, "count", find)}];
    v7[2] = @"done";
    v8[1] = v5;
    v8[2] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
    [(PDFHostProtocol *)hostProxy extensionToHost:v6];
  }
}

- (void)_pageChangedNotification:(id)notification
{
  v11[2] = *MEMORY[0x1E69E9840];
  document = [(PDFView *)self->_private->pdfView document];
  currentPage = [(PDFView *)self->_private->pdfView currentPage];
  v6 = [document indexForPage:currentPage];

  hostProxy = self->_private->hostProxy;
  v10[0] = @"function";
  v10[1] = @"pageIndex";
  v11[0] = @"updateCurrentPageIndex";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v9];
}

- (void)_goToPage:(id)page
{
  v37[4] = *MEMORY[0x1E69E9840];
  pageCopy = page;
  userInfo = [pageCopy userInfo];
  v6 = [userInfo objectForKey:@"pageIndex"];
  integerValue = [v6 integerValue];

  userInfo2 = [pageCopy userInfo];

  v9 = [userInfo2 objectForKey:@"pageFrame"];
  [v9 PDFKitPDFRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  view = [(PDFExtensionViewController *)self view];
  [view convertRect:self->_private->pdfView fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v37[0] = v27;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v37[1] = v28;
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  v37[2] = v29;
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
  v37[3] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];

  hostProxy = self->_private->hostProxy;
  v36[0] = @"goToPage";
  v35[0] = @"function";
  v35[1] = @"pageIndex";
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  v35[2] = @"pageFrame";
  v36[1] = v33;
  v36[2] = v31;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v34];
}

- (void)_goToDestination:(id)destination
{
  v27[2] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  userInfo = [destinationCopy userInfo];
  v6 = [userInfo objectForKey:@"pageIndex"];
  integerValue = [v6 integerValue];

  userInfo2 = [destinationCopy userInfo];

  v9 = [userInfo2 objectForKey:@"point"];
  [v9 PDFKitPDFPointValue];
  v11 = v10;
  v13 = v12;

  view = [(PDFExtensionViewController *)self view];
  [view convertPoint:self->_private->pdfView fromView:{v11, v13}];
  v16 = v15;
  v18 = v17;

  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v27[0] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v27[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

  hostProxy = self->_private->hostProxy;
  v26[0] = @"goToDestination";
  v25[0] = @"function";
  v25[1] = @"pageIndex";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  v25[2] = @"point";
  v26[1] = v23;
  v26[2] = v21;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v24];
}

- (void)_pdfViewZoomToRect:(id)rect
{
  userInfo = [rect userInfo];
  v4 = [userInfo objectForKey:@"rect"];
  [v4 PDFKitPDFRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(PDFExtensionViewController *)self _zoomToRect:v6, v8, v10, v12];
}

- (void)_selectionChangedNotification:(id)notification
{
  v12[2] = *MEMORY[0x1E69E9840];
  currentSelection = [(PDFView *)self->_private->pdfView currentSelection];
  v5 = currentSelection;
  if (currentSelection)
  {
    v6 = [currentSelection isEmpty] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = self->_private;
  if (v7->hasSelection != v6)
  {
    v7->hasSelection = v6;
    hostProxy = self->_private->hostProxy;
    v11[0] = @"function";
    v11[1] = @"hasSelection";
    v12[0] = @"setHasSelection";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:?];
    v12[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(PDFHostProtocol *)hostProxy extensionToHost:v10];
  }
}

- (void)_selectionPointsChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v22 = [userInfo objectForKey:@"topLeftSelectionPoint"];

  v6 = self->_private;
  v7 = [v22 objectAtIndex:0];
  [v7 floatValue];
  v9 = v8;
  v10 = [v22 objectAtIndex:1];
  [v10 floatValue];
  v6->topLeftSelectionPoint.x = PDFPointMake(v9, v11);
  v6->topLeftSelectionPoint.y = v12;

  userInfo2 = [notificationCopy userInfo];

  v14 = [userInfo2 objectForKey:@"bottomRightSelectionPoint"];

  v15 = self->_private;
  v16 = [v14 objectAtIndex:0];
  [v16 floatValue];
  v18 = v17;
  v19 = [v14 objectAtIndex:1];
  [v19 floatValue];
  v15->bottomRightSelectionPoint.x = PDFPointMake(v18, v20);
  v15->bottomRightSelectionPoint.y = v21;

  [(PDFExtensionViewController *)self _updateTextSelectionPoints];
}

- (void)_textSelectionShowTextSelectionMenu:(id)menu
{
  v37[4] = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  userInfo = [menuCopy userInfo];
  v6 = [userInfo objectForKey:@"visible"];
  bOOLValue = [v6 BOOLValue];

  userInfo2 = [menuCopy userInfo];

  v9 = [userInfo2 objectForKey:@"selectionRect"];
  [v9 PDFKitPDFRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  view = [(PDFExtensionViewController *)self view];
  [view convertRect:self->_private->pdfView fromView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v37[0] = v27;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v37[1] = v28;
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  v37[2] = v29;
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
  v37[3] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];

  hostProxy = self->_private->hostProxy;
  v36[0] = @"showTextSelectionMenu";
  v35[0] = @"function";
  v35[1] = @"visible";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  v35[2] = @"selectionRect";
  v36[1] = v33;
  v36[2] = v31;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v34];
}

- (void)_textSelectionDidCopyNotification:(id)notification
{
  v9[2] = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:@"items"];

  hostProxy = self->_private->hostProxy;
  v8[0] = @"function";
  v8[1] = @"items";
  v9[0] = @"didCopy";
  v9[1] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v7];
}

- (void)_annotationHitNotification:(id)notification
{
  v29[3] = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo valueForKey:@"PDFAnnotationHit"];
  v6 = [userInfo valueForKey:@"location"];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 valueForAnnotationKey:@"/Subtype"];
      v9 = [v8 isEqualToString:@"/Link"];

      if (v9)
      {
        [v7 PDFKitPDFPointValue];
        v11 = v10;
        v13 = v12;
        view = [(PDFExtensionViewController *)self view];
        [view convertPoint:self->_private->pdfView fromView:{v11, v13}];
        v16 = v15;
        v18 = v17;

        action = [v5 action];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [action URL];
          absoluteString = [v20 absoluteString];

          if (absoluteString)
          {
            hostProxy = self->_private->hostProxy;
            v28[0] = @"function";
            v28[1] = @"urlString";
            v29[0] = @"goToURL";
            v29[1] = absoluteString;
            v28[2] = @"location";
            v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
            v27[0] = v23;
            v24 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
            v27[1] = v24;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
            v29[2] = v25;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
            [(PDFHostProtocol *)hostProxy extensionToHost:v26];
          }
        }
      }
    }
  }
}

- (void)_annotationLongPressNotification:(id)notification
{
  v73[4] = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo valueForKey:@"annotation"];
  v6 = [userInfo valueForKey:@"location"];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 valueForAnnotationKey:@"/Subtype"];
      v9 = [v8 isEqualToString:@"/Link"];

      if (v9)
      {
        [v7 PDFKitPDFPointValue];
        v11 = v10;
        v13 = v12;
        view = [(PDFExtensionViewController *)self view];
        [view convertPoint:self->_private->pdfView fromView:{v11, v13}];
        v16 = v15;
        v18 = v17;

        action = [v5 action];
        [v5 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        page = [v5 page];
        [(PDFView *)self->_private->pdfView convertRect:page fromPage:v21, v23, v25, v27];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        view2 = [(PDFExtensionViewController *)self view];
        [view2 convertRect:self->_private->pdfView fromView:{v30, v32, v34, v36}];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = [action URL];
          absoluteString = [v46 absoluteString];

          if (!absoluteString)
          {
LABEL_11:

            goto LABEL_12;
          }

          v64 = absoluteString;
          v65 = page;
          hostProxy = self->_private->hostProxy;
          v72[0] = @"function";
          v72[1] = @"urlString";
          v73[0] = @"didLongPressLink";
          v73[1] = absoluteString;
          v72[2] = @"location";
          v63 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
          v71[0] = v63;
          v62 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
          v71[1] = v62;
          v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
          v73[2] = v61;
          v72[3] = @"annotationRect";
          v60 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
          v70[0] = v60;
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
          v70[1] = v48;
          v49 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
          v70[2] = v49;
          v50 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
          v70[3] = v50;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:4];
          v73[3] = v51;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:4];
          [(PDFHostProtocol *)hostProxy extensionToHost:v52];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          destination = [action destination];
          page2 = [destination page];

          if (!page2)
          {
            goto LABEL_11;
          }

          v65 = page;
          document = [(PDFView *)self->_private->pdfView document];
          v64 = page2;
          v56 = [document indexForPage:page2];

          v59 = self->_private->hostProxy;
          v69[0] = @"didLongPressLink";
          v68[0] = @"function";
          v68[1] = @"pageIndex";
          v63 = [MEMORY[0x1E696AD98] numberWithInteger:v56];
          v69[1] = v63;
          v68[2] = @"location";
          v62 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
          v67[0] = v62;
          v61 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
          v67[1] = v61;
          v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
          v69[2] = v60;
          v68[3] = @"annotationRect";
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
          v66[0] = v48;
          v49 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
          v66[1] = v49;
          v50 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
          v66[2] = v50;
          v51 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
          v66[3] = v51;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
          v69[3] = v52;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:4];
          [(PDFHostProtocol *)v59 extensionToHost:v57];
        }

        page = v65;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
}

@end