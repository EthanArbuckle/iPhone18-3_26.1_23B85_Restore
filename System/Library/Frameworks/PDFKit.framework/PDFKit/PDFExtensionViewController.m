@interface PDFExtensionViewController
- (PDFExtensionViewController)init;
- (uint64_t)updatePDFViewLayout:(double)a3 scrollViewFrame:(double)a4 safeAreaInsets:(double)a5 zoomScale:(double)a6;
- (void)_annotationHitNotification:(id)a3;
- (void)_annotationLongPressNotification:(id)a3;
- (void)_goToDestination:(id)a3;
- (void)_goToPage:(id)a3;
- (void)_pageChangedNotification:(id)a3;
- (void)_pdfViewZoomToRect:(id)a3;
- (void)_selectionChangedNotification:(id)a3;
- (void)_selectionPointsChangedNotification:(id)a3;
- (void)_setupDocumentViewSize;
- (void)_textSelectionDidCopyNotification:(id)a3;
- (void)_textSelectionShowTextSelectionMenu:(id)a3;
- (void)_updateDocumentIsLocked;
- (void)_updatePageCount;
- (void)_updateTextSelectionPoints;
- (void)_zoomToRect:(CGRect)a3;
- (void)cancelFindString;
- (void)cancelFindStringWithHighlightsCleared:(BOOL)a3;
- (void)clearSearchHighlights;
- (void)didMatchString:(id)a3;
- (void)documentDidEndDocumentFind:(id)a3;
- (void)findString:(id)a3 withOptions:(unint64_t)a4;
- (void)focusOnSearchResultAtIndex:(unint64_t)a3;
- (void)goToPageIndex:(int64_t)a3;
- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 isIndirectTouch:(BOOL)a7;
- (void)pointerRegionForLocation:(CGPoint)a3;
- (void)setDocumentData:(id)a3;
- (void)setupPDFView;
- (void)snapshotViewRect:(CGRect)a3 forWidth:(double)a4 afterScreenUpdates:(BOOL)a5;
- (void)unlockWithPassword:(id)a3;
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

    v9 = [MEMORY[0x1E695DF70] array];
    v10 = v2->_private;
    searchResults = v10->searchResults;
    v10->searchResults = v9;

    v2->_private->didCancelActiveSearch = 0;
    v2->_private->currentGestureState = 3;
    v2->_private->hasSelection = 0;
    v12 = *MEMORY[0x1E695EFF8];
    v2->_private->topLeftSelectionPoint = *MEMORY[0x1E695EFF8];
    v2->_private->bottomRightSelectionPoint = v12;
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v2 selector:sel__pageChangedNotification_ name:@"PDFViewChangedPage" object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v2 selector:sel__goToPage_ name:@"PDFExtensionViewGoToPage" object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v2 selector:sel__goToDestination_ name:@"PDFExtensionViewGoToDestination" object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v2 selector:sel__pdfViewZoomToRect_ name:@"PDFExtensionViewZoomToRect" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v2 selector:sel__selectionChangedNotification_ name:@"PDFViewSelectionChanged" object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v2 selector:sel__selectionPointsChangedNotification_ name:@"PDFTextSelectionDidChangeTextSelectionPoints" object:0];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v2 selector:sel__textSelectionShowTextSelectionMenu_ name:@"PDFTextSelectionShowTextSelectionMenu" object:0];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v2 selector:sel__textSelectionDidCopyNotification_ name:@"PDFTextSelectionDidCopy" object:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v2 selector:sel__annotationHitNotification_ name:@"PDFViewAnnotationHit" object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v2 selector:sel__annotationLongPressNotification_ name:@"PDFExtensionViewAnnotationLongPress" object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PDFExtensionViewController;
  [(PDFExtensionViewController *)&v16 viewDidLoad];
  v3 = [(PDFExtensionViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PDFExtensionViewController *)self extensionContext];
  [v5 setExtensionViewController:self];
  v6 = [v5 _auxiliaryConnection];
  v7 = [v6 remoteObjectProxy];
  v8 = self->_private;
  hostProxy = v8->hostProxy;
  v8->hostProxy = v7;

  v10 = [PDFView alloc];
  v11 = [(PDFExtensionViewController *)self view];
  [v11 bounds];
  v12 = [(PDFView *)v10 initWithFrame:?];
  v13 = self->_private;
  pdfView = v13->pdfView;
  v13->pdfView = v12;

  v15 = [(PDFExtensionViewController *)self view];
  [v15 addSubview:self->_private->pdfView];

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
  v15 = [(PDFExtensionViewController *)self view];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(PDFView *)self->_private->pdfView setFrame:v8, v10, v12, v14];
  [(PDFExtensionViewController *)self _setupDocumentViewSize];

  [(PDFExtensionViewController *)self _updatePageCount];
}

- (void)setDocumentData:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PDFDocument alloc] initWithData:v4];

  if (v5)
  {
    [(PDFDocument *)v5 setDelegate:self];
    [(PDFView *)self->_private->pdfView setDocument:v5];
    [(PDFView *)self->_private->pdfView setMinScaleFactor:1.0];
    [(PDFView *)self->_private->pdfView setMaxScaleFactor:5.0];
    v6 = [(PDFView *)self->_private->pdfView document];
    v7 = [v6 isLocked];

    if (v7)
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

- (void)findString:(id)a3 withOptions:(unint64_t)a4
{
  v10 = a3;
  if (([v10 isEqualToString:self->_private->searchString] & 1) == 0)
  {
    v7 = self->_private;
    searchSelection = v7->searchSelection;
    v7->searchSelection = 0;

    objc_storeStrong(&self->_private->searchString, a3);
    [(PDFExtensionViewController *)self clearSearchHighlights];
  }

  v9 = [(PDFView *)self->_private->pdfView document];
  [v9 beginFindString:self->_private->searchString withOptions:a4];
}

- (void)cancelFindString
{
  self->_private->didCancelActiveSearch = 1;
  v3 = [(PDFView *)self->_private->pdfView document];
  [v3 cancelFindString];

  self->_private->didCancelActiveSearch = 0;

  [(PDFExtensionViewController *)self clearSearchHighlights];
}

- (void)cancelFindStringWithHighlightsCleared:(BOOL)a3
{
  v3 = a3;
  self->_private->didCancelActiveSearch = 1;
  v5 = [(PDFView *)self->_private->pdfView document];
  [v5 cancelFindString];

  self->_private->didCancelActiveSearch = 0;
  if (v3)
  {

    [(PDFExtensionViewController *)self clearSearchHighlights];
  }
}

- (void)focusOnSearchResultAtIndex:(unint64_t)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_private->searchResults count]> a3)
  {
    v5 = [(NSMutableArray *)self->_private->searchResults objectAtIndex:a3];
    v6 = self->_private;
    searchSelection = v6->searchSelection;
    v6->searchSelection = v5;

    v8 = self->_private;
    pdfView = v8->pdfView;
    v40[0] = v8->searchSelection;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [(PDFView *)pdfView setHighlightedSelections:v10];

    v11 = [(PDFSelection *)self->_private->searchSelection pages];
    v12 = [v11 firstObject];

    if (v12)
    {
      [(PDFSelection *)self->_private->searchSelection boundsForPage:v12];
      [(PDFView *)self->_private->pdfView convertRect:v12 fromPage:?];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(PDFExtensionViewController *)self view];
      [v21 convertRect:self->_private->pdfView fromView:{v14, v16, v18, v20}];
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

- (void)goToPageIndex:(int64_t)a3
{
  v5 = [(PDFView *)self->_private->pdfView document];
  v7 = [v5 pageAtIndex:a3];

  v6 = v7;
  if (v7)
  {
    [(PDFView *)self->_private->pdfView goToPage:v7];
    v6 = v7;
  }
}

- (uint64_t)updatePDFViewLayout:(double)a3 scrollViewFrame:(double)a4 safeAreaInsets:(double)a5 zoomScale:(double)a6
{
  v23 = PDFRectScale(a10, a11, a12, a13, 1.0 / a14);
  v25 = v24;
  v26 = a1[124];
  v28 = v27 + v24 + *(v26 + 24);
  v30.n128_u64[0] = 0;
  v31.n128_u64[0] = 0;
  v32 = PDFRectMake(v30, v31, v28, v29 + v23 + *(v26 + 32));
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [a1 view];
  [v39 frame];
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
    v45 = [a1 view];
    [v45 setFrame:{v32, v34, v36, v38}];

    [*(a1[124] + 8) extensionToHost:&unk_1F4184410];
  }

  [*(a1[124] + 16) frame];
  if (vabdd_f64(v25, v46.n128_f64[0]) > 0.00000011920929 || ([*(a1[124] + 16) frame], vabdd_f64(v23, v47.n128_f64[0]) > 0.00000011920929))
  {
    v46.n128_f64[0] = v25;
    v47.n128_f64[0] = v23;
    [*(a1[124] + 16) setFrame:{PDFRectMake(v46, v47, *(a1[124] + 24), *(a1[124] + 32))}];
  }

  v48 = [a1 view];
  [v48 convertRect:*(a1[124] + 16) toView:{a2, a3, a4, a5}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = *(a1[124] + 16);

  return [v57 updatePDFViewLayout:v50 scrollViewFrame:v52 zoomScale:{v54, v56, a6, a7, a8, a9}];
}

- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 isIndirectTouch:(BOOL)a7
{
  v7 = a7;
  y = a6.y;
  x = a6.x;
  v10 = a5.y;
  v11 = a5.x;
  self->_private->currentGestureState = a4;
  v15 = [(PDFExtensionViewController *)self view];
  [v15 convertPoint:self->_private->pdfView toView:{v11, v10}];
  v17 = v16;
  v19 = v18;

  v20 = [(PDFExtensionViewController *)self view];
  [v20 convertPoint:self->_private->pdfView toView:{x, y}];
  v22 = v21;
  v24 = v23;

  pdfView = self->_private->pdfView;

  [(PDFView *)pdfView handleGesture:a3 state:a4 location:v7 locationOfFirstTouch:v17 isIndirectTouch:v19, v22, v24];
}

- (void)snapshotViewRect:(CGRect)a3 forWidth:(double)a4 afterScreenUpdates:(BOOL)a5
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31[4] = *MEMORY[0x1E69E9840];
  v10 = a3.size.height / a3.size.width * a4;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  v12 = [v11 traitCollection];
  v13 = [v12 displayGamut];

  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  v15 = [v14 traitCollection];
  [v15 displayScale];
  v17 = v16;

  if (v17 == 0.0)
  {
    v17 = 1.0;
  }

  v18 = vcvtpd_s64_f64(v10 * v17);
  v30[0] = *MEMORY[0x1E696CDE0];
  v19 = [MEMORY[0x1E696AD98] numberWithLong:vcvtpd_s64_f64(v17 * a4)];
  v31[0] = v19;
  v30[1] = *MEMORY[0x1E696CD90];
  v20 = [MEMORY[0x1E696AD98] numberWithLong:v18];
  v31[1] = v20;
  v30[2] = *MEMORY[0x1E696CDA0];
  if (v13 == 1)
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
    if (v13 == 1)
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
      CGContextScaleCTM(v27, a4 / width, a4 / width);
      CGContextTranslateCTM(v27, -x, -y);
      v28 = [(PDFExtensionViewController *)self view];
      v29 = [v28 layer];
      [v29 renderInContext:v27];

      CGContextFlush(v27);
      [v25 unlockWithOptions:0 seed:0];
      [(PDFHostProtocol *)self->_private->hostProxy extensionSnapshotToHost:v25 scale:v17];
      CGContextRelease(v27);
    }
  }
}

- (void)unlockWithPassword:(id)a3
{
  pdfView = self->_private->pdfView;
  v5 = a3;
  v6 = [(PDFView *)pdfView document];
  [v6 unlockWithPassword:v5];

  [(PDFExtensionViewController *)self _updateDocumentIsLocked];
}

- (void)pointerRegionForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v30[3] = *MEMORY[0x1E69E9840];
  v6 = [(PDFExtensionViewController *)self view];
  [v6 convertPoint:self->_private->pdfView toView:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(PDFView *)self->_private->pdfView pointerRegionForLocation:v8, v10];
  v12 = [(PDFExtensionViewController *)self view];
  [v11 rect];
  [v12 convertRect:self->_private->pdfView fromView:?];
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
  v26 = [v11 identifier];
  v30[2] = v26;
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
  v3 = [(PDFView *)self->_private->pdfView document];
  v4 = [v3 isLocked];

  hostProxy = self->_private->hostProxy;
  v8[0] = @"function";
  v8[1] = @"isLocked";
  v9[0] = @"updateDocumentIsLocked";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v7];

  if ((v4 & 1) == 0)
  {
    [(PDFExtensionViewController *)self setupPDFView];
  }
}

- (void)_zoomToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26[4] = *MEMORY[0x1E69E9840];
  v8 = [(PDFExtensionViewController *)self view];
  [v8 convertRect:self->_private->pdfView fromView:{x, y, width, height}];
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
  v3 = [(PDFView *)self->_private->pdfView document];
  v4 = [v3 pageCount];

  hostProxy = self->_private->hostProxy;
  v8[0] = @"function";
  v8[1] = @"pageCount";
  v9[0] = @"updatePageCount";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v7];
}

- (void)_updateTextSelectionPoints
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [(PDFExtensionViewController *)self view];
  [v3 convertPoint:self->_private->pdfView fromView:{self->_private->topLeftSelectionPoint.x, self->_private->topLeftSelectionPoint.y}];
  v5 = v4;
  v7 = v6;

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v24[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v24[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

  v11 = [(PDFExtensionViewController *)self view];
  [v11 convertPoint:self->_private->pdfView fromView:{self->_private->bottomRightSelectionPoint.x, self->_private->bottomRightSelectionPoint.y}];
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

- (void)didMatchString:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E69DC888];
    v5 = a3;
    v6 = [v4 colorWithRed:1.0 green:0.89 blue:0.22 alpha:1.0];
    [v5 setColor:v6];

    [(NSMutableArray *)self->_private->searchResults addObject:v5];
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
  v11 = [(PDFView *)self->_private->pdfView document];
  v12 = [v10 numberWithInt:{objc_msgSend(v11, "isFinding") ^ 1}];
  v15[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v13];
}

- (void)documentDidEndDocumentFind:(id)a3
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  if (!v3->didCancelActiveSearch)
  {
    hostProxy = v3->hostProxy;
    v8[0] = @"findStringUpdate";
    v7[0] = @"function";
    v7[1] = @"numFound";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](v3->searchResults, "count", a3)}];
    v7[2] = @"done";
    v8[1] = v5;
    v8[2] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
    [(PDFHostProtocol *)hostProxy extensionToHost:v6];
  }
}

- (void)_pageChangedNotification:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = [(PDFView *)self->_private->pdfView document];
  v5 = [(PDFView *)self->_private->pdfView currentPage];
  v6 = [v4 indexForPage:v5];

  hostProxy = self->_private->hostProxy;
  v10[0] = @"function";
  v10[1] = @"pageIndex";
  v11[0] = @"updateCurrentPageIndex";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v9];
}

- (void)_goToPage:(id)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"pageIndex"];
  v7 = [v6 integerValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:@"pageFrame"];
  [v9 PDFKitPDFRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(PDFExtensionViewController *)self view];
  [v18 convertRect:self->_private->pdfView fromView:{v11, v13, v15, v17}];
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
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v35[2] = @"pageFrame";
  v36[1] = v33;
  v36[2] = v31;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v34];
}

- (void)_goToDestination:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"pageIndex"];
  v7 = [v6 integerValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:@"point"];
  [v9 PDFKitPDFPointValue];
  v11 = v10;
  v13 = v12;

  v14 = [(PDFExtensionViewController *)self view];
  [v14 convertPoint:self->_private->pdfView fromView:{v11, v13}];
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
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v25[2] = @"point";
  v26[1] = v23;
  v26[2] = v21;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v24];
}

- (void)_pdfViewZoomToRect:(id)a3
{
  v13 = [a3 userInfo];
  v4 = [v13 objectForKey:@"rect"];
  [v4 PDFKitPDFRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(PDFExtensionViewController *)self _zoomToRect:v6, v8, v10, v12];
}

- (void)_selectionChangedNotification:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [(PDFView *)self->_private->pdfView currentSelection];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEmpty] ^ 1;
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

- (void)_selectionPointsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v22 = [v5 objectForKey:@"topLeftSelectionPoint"];

  v6 = self->_private;
  v7 = [v22 objectAtIndex:0];
  [v7 floatValue];
  v9 = v8;
  v10 = [v22 objectAtIndex:1];
  [v10 floatValue];
  v6->topLeftSelectionPoint.x = PDFPointMake(v9, v11);
  v6->topLeftSelectionPoint.y = v12;

  v13 = [v4 userInfo];

  v14 = [v13 objectForKey:@"bottomRightSelectionPoint"];

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

- (void)_textSelectionShowTextSelectionMenu:(id)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"visible"];
  v7 = [v6 BOOLValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:@"selectionRect"];
  [v9 PDFKitPDFRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(PDFExtensionViewController *)self view];
  [v18 convertRect:self->_private->pdfView fromView:{v11, v13, v15, v17}];
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
  v33 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v35[2] = @"selectionRect";
  v36[1] = v33;
  v36[2] = v31;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [(PDFHostProtocol *)hostProxy extensionToHost:v34];
}

- (void)_textSelectionDidCopyNotification:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"items"];

  hostProxy = self->_private->hostProxy;
  v8[0] = @"function";
  v8[1] = @"items";
  v9[0] = @"didCopy";
  v9[1] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PDFHostProtocol *)hostProxy extensionToHost:v7];
}

- (void)_annotationHitNotification:(id)a3
{
  v29[3] = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:@"PDFAnnotationHit"];
  v6 = [v4 valueForKey:@"location"];
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
        v14 = [(PDFExtensionViewController *)self view];
        [v14 convertPoint:self->_private->pdfView fromView:{v11, v13}];
        v16 = v15;
        v18 = v17;

        v19 = [v5 action];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 URL];
          v21 = [v20 absoluteString];

          if (v21)
          {
            hostProxy = self->_private->hostProxy;
            v28[0] = @"function";
            v28[1] = @"urlString";
            v29[0] = @"goToURL";
            v29[1] = v21;
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

- (void)_annotationLongPressNotification:(id)a3
{
  v73[4] = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:@"annotation"];
  v6 = [v4 valueForKey:@"location"];
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
        v14 = [(PDFExtensionViewController *)self view];
        [v14 convertPoint:self->_private->pdfView fromView:{v11, v13}];
        v16 = v15;
        v18 = v17;

        v19 = [v5 action];
        [v5 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = [v5 page];
        [(PDFView *)self->_private->pdfView convertRect:v28 fromPage:v21, v23, v25, v27];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = [(PDFExtensionViewController *)self view];
        [v37 convertRect:self->_private->pdfView fromView:{v30, v32, v34, v36}];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = [v19 URL];
          v47 = [v46 absoluteString];

          if (!v47)
          {
LABEL_11:

            goto LABEL_12;
          }

          v64 = v47;
          v65 = v28;
          hostProxy = self->_private->hostProxy;
          v72[0] = @"function";
          v72[1] = @"urlString";
          v73[0] = @"didLongPressLink";
          v73[1] = v47;
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

          v53 = [v19 destination];
          v54 = [v53 page];

          if (!v54)
          {
            goto LABEL_11;
          }

          v65 = v28;
          v55 = [(PDFView *)self->_private->pdfView document];
          v64 = v54;
          v56 = [v55 indexForPage:v54];

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

        v28 = v65;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
}

@end