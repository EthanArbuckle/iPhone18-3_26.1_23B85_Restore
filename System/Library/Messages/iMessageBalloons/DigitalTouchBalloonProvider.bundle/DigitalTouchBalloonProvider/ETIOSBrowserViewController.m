@interface ETIOSBrowserViewController
- (BOOL)shouldAutorotate;
- (CGRect)horizontalSwipeExclusionRect;
- (double)canvasViewControllerPercentExpanded:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateBottomMargin;
- (void)beginSuppressingAppearanceMethods;
- (void)canvasViewController:(id)a3 requestsPresentationStyleExpanded:(BOOL)a4;
- (void)canvasViewControllerHideEntryView:(id)a3;
- (void)canvasViewControllerShowEntryView:(id)a3;
- (void)dismissCanvasViewController:(id)a3;
- (void)endSuppressingAppearanceMethods;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidTransitionToCompactPresentation;
- (void)viewDidTransitionToExpandedPresentation;
@end

@implementation ETIOSBrowserViewController

- (BOOL)shouldAutorotate
{
  v2 = [(ETBrowserViewController *)self canvasViewController];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(ETBrowserViewController *)self canvasViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ETIOSBrowserViewController;
  [(ETBrowserViewController *)&v6 viewDidLoad];
  v3 = [(ETIOSBrowserViewController *)self view];
  v4 = [UIColor colorWithWhite:0.1 alpha:1.0];
  [v3 setBackgroundColor:v4];

  v5 = [(ETBrowserViewController *)self canvasViewController];
  [v5 setPresentationDelegate:self];
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
  v3 = [(ETBrowserViewController *)self canvasViewController];
  v4 = [v3 canvasView];

  v5 = [(ETIOSBrowserViewController *)self view];
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 superview];
  [v5 convertRect:v14 fromView:{v7, v9, v11, v13}];
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
  v2 = [(ETBrowserViewController *)self canvasViewController];
  [v2 viewDidTransitionToExpandedPresentation];
}

- (void)viewDidTransitionToCompactPresentation
{
  v2 = [(ETBrowserViewController *)self canvasViewController];
  [v2 viewDidTransitionToCompactPresentation];
}

- (void)beginSuppressingAppearanceMethods
{
  v2 = [(ETBrowserViewController *)self canvasViewController];
  [v2 setIgnoreAppearanceCallbacks:1];
}

- (void)endSuppressingAppearanceMethods
{
  v2 = [(ETBrowserViewController *)self canvasViewController];
  [v2 setIgnoreAppearanceCallbacks:0];
}

- (void)_updateBottomMargin
{
  v11 = [(ETBrowserViewController *)self canvasViewController];
  v3 = [(ETIOSBrowserViewController *)self view];
  [v3 safeAreaInsets];

  v4 = [(ETIOSBrowserViewController *)self sheetPresentationController];
  [v4 _grabberTopSpacing];
  v6 = v5 + v5;

  v7 = [v11 view];
  v8 = [(ETIOSBrowserViewController *)self view];
  [v8 bounds];
  [v7 setFrame:{v9 + 0.0, v6 + v10}];
}

- (void)canvasViewController:(id)a3 requestsPresentationStyleExpanded:(BOOL)a4
{
  v4 = a4;
  v5 = [(ETIOSBrowserViewController *)self sendDelegate];
  [v5 requestPresentationStyleExpanded:v4];
}

- (void)dismissCanvasViewController:(id)a3
{
  v3 = [(ETIOSBrowserViewController *)self sendDelegate];
  [v3 dismiss];
}

- (void)canvasViewControllerHideEntryView:(id)a3
{
  v3 = [(ETIOSBrowserViewController *)self sendDelegate];
  [v3 setEntryViewHidden:1];
}

- (void)canvasViewControllerShowEntryView:(id)a3
{
  v3 = [(ETIOSBrowserViewController *)self sendDelegate];
  [v3 setEntryViewHidden:0];
}

- (double)canvasViewControllerPercentExpanded:(id)a3
{
  v4 = [(ETIOSBrowserViewController *)self sheetPresentationController];
  v5 = [v4 _detentValues];
  v6 = 0.0;
  if ([v5 count] >= 2)
  {
    v7 = [(ETIOSBrowserViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v10 = [(ETIOSBrowserViewController *)self view];
    [v10 safeAreaInsets];
    v12 = v9 - v11;
    v13 = [v5 objectAtIndexedSubscript:1];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v5 objectAtIndexedSubscript:0];
    [v16 doubleValue];
    v6 = (v12 - v15) / (v17 - v15);
  }

  return v6;
}

@end