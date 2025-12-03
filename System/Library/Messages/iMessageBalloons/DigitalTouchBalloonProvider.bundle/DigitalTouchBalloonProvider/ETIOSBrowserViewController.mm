@interface ETIOSBrowserViewController
- (BOOL)shouldAutorotate;
- (CGRect)horizontalSwipeExclusionRect;
- (double)canvasViewControllerPercentExpanded:(id)expanded;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateBottomMargin;
- (void)beginSuppressingAppearanceMethods;
- (void)canvasViewController:(id)controller requestsPresentationStyleExpanded:(BOOL)expanded;
- (void)canvasViewControllerHideEntryView:(id)view;
- (void)canvasViewControllerShowEntryView:(id)view;
- (void)dismissCanvasViewController:(id)controller;
- (void)endSuppressingAppearanceMethods;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidTransitionToCompactPresentation;
- (void)viewDidTransitionToExpandedPresentation;
@end

@implementation ETIOSBrowserViewController

- (BOOL)shouldAutorotate
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  shouldAutorotate = [canvasViewController shouldAutorotate];

  return shouldAutorotate;
}

- (unint64_t)supportedInterfaceOrientations
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  supportedInterfaceOrientations = [canvasViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ETIOSBrowserViewController;
  [(ETBrowserViewController *)&v6 viewDidLoad];
  view = [(ETIOSBrowserViewController *)self view];
  v4 = [UIColor colorWithWhite:0.1 alpha:1.0];
  [view setBackgroundColor:v4];

  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController setPresentationDelegate:self];
  [(ETIOSBrowserViewController *)self _updateBottomMargin];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ETIOSBrowserViewController;
  [(ETIOSBrowserViewController *)&v3 viewDidLayoutSubviews];
  [(ETIOSBrowserViewController *)self _updateBottomMargin];
}

- (CGRect)horizontalSwipeExclusionRect
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  canvasView = [canvasViewController canvasView];

  view = [(ETIOSBrowserViewController *)self view];
  [canvasView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  superview = [canvasView superview];
  [view convertRect:superview fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)viewDidTransitionToExpandedPresentation
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController viewDidTransitionToExpandedPresentation];
}

- (void)viewDidTransitionToCompactPresentation
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController viewDidTransitionToCompactPresentation];
}

- (void)beginSuppressingAppearanceMethods
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController setIgnoreAppearanceCallbacks:1];
}

- (void)endSuppressingAppearanceMethods
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  [canvasViewController setIgnoreAppearanceCallbacks:0];
}

- (void)_updateBottomMargin
{
  canvasViewController = [(ETBrowserViewController *)self canvasViewController];
  view = [(ETIOSBrowserViewController *)self view];
  [view safeAreaInsets];

  sheetPresentationController = [(ETIOSBrowserViewController *)self sheetPresentationController];
  [sheetPresentationController _grabberTopSpacing];
  v6 = v5 + v5;

  view2 = [canvasViewController view];
  view3 = [(ETIOSBrowserViewController *)self view];
  [view3 bounds];
  [view2 setFrame:{v9 + 0.0, v6 + v10}];
}

- (void)canvasViewController:(id)controller requestsPresentationStyleExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  sendDelegate = [(ETIOSBrowserViewController *)self sendDelegate];
  [sendDelegate requestPresentationStyleExpanded:expandedCopy];
}

- (void)dismissCanvasViewController:(id)controller
{
  sendDelegate = [(ETIOSBrowserViewController *)self sendDelegate];
  [sendDelegate dismiss];
}

- (void)canvasViewControllerHideEntryView:(id)view
{
  sendDelegate = [(ETIOSBrowserViewController *)self sendDelegate];
  [sendDelegate setEntryViewHidden:1];
}

- (void)canvasViewControllerShowEntryView:(id)view
{
  sendDelegate = [(ETIOSBrowserViewController *)self sendDelegate];
  [sendDelegate setEntryViewHidden:0];
}

- (double)canvasViewControllerPercentExpanded:(id)expanded
{
  sheetPresentationController = [(ETIOSBrowserViewController *)self sheetPresentationController];
  _detentValues = [sheetPresentationController _detentValues];
  v6 = 0.0;
  if ([_detentValues count] >= 2)
  {
    view = [(ETIOSBrowserViewController *)self view];
    [view bounds];
    v9 = v8;
    view2 = [(ETIOSBrowserViewController *)self view];
    [view2 safeAreaInsets];
    v12 = v9 - v11;
    v13 = [_detentValues objectAtIndexedSubscript:1];
    [v13 doubleValue];
    v15 = v14;
    v16 = [_detentValues objectAtIndexedSubscript:0];
    [v16 doubleValue];
    v6 = (v12 - v15) / (v17 - v15);
  }

  return v6;
}

@end