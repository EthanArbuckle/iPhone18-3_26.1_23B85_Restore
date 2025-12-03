@interface CRLiOSBoardViewControllerAccessibility
- (CRLInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (void)crlaxLoadAccessibilityInformation;
- (void)documentOpenAnimationDidEnd;
- (void)loadApplicationToolbar;
- (void)updateToolbarButtons;
@end

@implementation CRLiOSBoardViewControllerAccessibility

- (CRLInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  crlaxTarget = [(CRLiOSBoardViewControllerAccessibility *)self crlaxTarget];
  interactiveCanvasController = [crlaxTarget interactiveCanvasController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, interactiveCanvasController, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (void)loadApplicationToolbar
{
  v2.receiver = self;
  v2.super_class = CRLiOSBoardViewControllerAccessibility;
  [(CRLiOSBoardViewControllerAccessibility *)&v2 loadApplicationToolbar];
}

- (void)updateToolbarButtons
{
  v2.receiver = self;
  v2.super_class = CRLiOSBoardViewControllerAccessibility;
  [(CRLiOSBoardViewControllerAccessibility *)&v2 updateToolbarButtons];
}

- (void)documentOpenAnimationDidEnd
{
  v2.receiver = self;
  v2.super_class = CRLiOSBoardViewControllerAccessibility;
  [(CRLiOSBoardViewControllerAccessibility *)&v2 documentOpenAnimationDidEnd];
}

- (void)crlaxLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CRLiOSBoardViewControllerAccessibility;
  [(CRLiOSBoardViewControllerAccessibility *)&v4 crlaxLoadAccessibilityInformation];
  crlaxInteractiveCanvasController = [(CRLiOSBoardViewControllerAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxLoadAccessibilityInformation];
}

@end