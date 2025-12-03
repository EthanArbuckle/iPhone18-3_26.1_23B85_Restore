@interface PKPaletteTapToRadarAppExtensionExecution
- (void)_dismiss;
- (void)_updateUI;
- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds;
- (void)run;
@end

@implementation PKPaletteTapToRadarAppExtensionExecution

- (void)run
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PKPaletteTapToRadarAppExtensionExecution;
  [(PKPaletteTapToRadarCommandExecution *)&v39 run];
  configuration = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  debugSharpenerLog = [configuration debugSharpenerLog];

  v37 = [[PKTextInputDebugRadarViewController alloc] initWithSharpenerLog:debugSharpenerLog];
  [(PKTextInputDebugRadarViewController *)v37 setDelegate:self];
  configuration2 = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  presentationViewController = [configuration2 presentationViewController];

  view = [presentationViewController view];
  window = [view window];

  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v37];
  contentViewController = self->_contentViewController;
  self->_contentViewController = v8;

  [presentationViewController addChildViewController:self->_contentViewController];
  view2 = [presentationViewController view];
  view3 = [(UIViewController *)self->_contentViewController view];
  [view2 addSubview:view3];

  view4 = [(UIViewController *)self->_contentViewController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(UIViewController *)self->_contentViewController view];
  widthAnchor = [view5 widthAnchor];
  v36 = window;
  [window hostedViewSize];
  v15 = [widthAnchor constraintEqualToConstant:?];
  contentViewWidthConstraint = self->_contentViewWidthConstraint;
  self->_contentViewWidthConstraint = v15;

  view6 = [(UIViewController *)self->_contentViewController view];
  heightAnchor = [view6 heightAnchor];
  [window hostedViewSize];
  v20 = [heightAnchor constraintEqualToConstant:v19];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v20;

  v30 = MEMORY[0x1E696ACD8];
  view7 = [(UIViewController *)self->_contentViewController view];
  topAnchor = [view7 topAnchor];
  v31 = presentationViewController;
  view8 = [presentationViewController view];
  topAnchor2 = [view8 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[0] = v22;
  view9 = [(UIViewController *)self->_contentViewController view];
  leftAnchor = [view9 leftAnchor];
  view10 = [presentationViewController view];
  leftAnchor2 = [view10 leftAnchor];
  v27 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v28 = self->_contentViewWidthConstraint;
  v40[1] = v27;
  v40[2] = v28;
  v40[3] = self->_contentViewHeightConstraint;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v30 activateConstraints:v29];

  [(UIViewController *)self->_contentViewController didMoveToParentViewController:v31];
}

- (void)_dismiss
{
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  view = [(UIViewController *)self->_contentViewController view];
  [view removeFromSuperview];

  contentViewController = self->_contentViewController;

  [(UIViewController *)contentViewController removeFromParentViewController];
}

- (void)editingOverlayContainerDidChangeToSceneBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = PKPaletteTapToRadarAppExtensionExecution;
  [(PKPaletteTapToRadarCommandExecution *)&v4 editingOverlayContainerDidChangeToSceneBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(PKPaletteTapToRadarAppExtensionExecution *)self _updateUI];
}

- (void)_updateUI
{
  configuration = [(PKPaletteTapToRadarCommandExecution *)self configuration];
  presentationViewController = [configuration presentationViewController];
  view = [presentationViewController view];
  window = [view window];

  [window hostedViewSize];
  [(NSLayoutConstraint *)self->_contentViewWidthConstraint setConstant:?];
  [window hostedViewSize];
  [(NSLayoutConstraint *)self->_contentViewHeightConstraint setConstant:v6];
}

@end