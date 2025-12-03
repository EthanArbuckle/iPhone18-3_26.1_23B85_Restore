@interface CRLInteractiveCanvasControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)crlaxFocusElementFromSearchReference:(id)reference;
- (id)crlaxFocusTextRangeFromSearchReference:(id)reference;
- (id)crlaxSearchReferenceForSelectionPath:(id)path;
- (void)crlaxAnnounceSearchReference:(id)reference forRotor:(id)rotor;
- (void)crlaxGoToFormatInspector;
@end

@implementation CRLInteractiveCanvasControllerAccessibility

- (id)crlaxSearchReferenceForSelectionPath:(id)path
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasControllerAccessibility;
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)&v5 crlaxSearchReferenceForSelectionPath:path];

  return v3;
}

- (id)crlaxFocusElementFromSearchReference:(id)reference
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasControllerAccessibility;
  v3 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v5 crlaxFocusElementFromSearchReference:reference];

  return v3;
}

- (id)crlaxFocusTextRangeFromSearchReference:(id)reference
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasControllerAccessibility;
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)&v5 crlaxFocusTextRangeFromSearchReference:reference];

  return v3;
}

- (void)crlaxAnnounceSearchReference:(id)reference forRotor:(id)rotor
{
  v4.receiver = self;
  v4.super_class = CRLInteractiveCanvasControllerAccessibility;
  [(CRLTextInteractiveCanvasControllerAccessibility *)&v4 crlaxAnnounceSearchReference:reference forRotor:rotor];
}

- (void)crlaxGoToFormatInspector
{
  crlaxTarget = [(CRLInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  canvasView = [crlaxTarget canvasView];

  v10 = 0;
  nextResponder = [canvasView nextResponder];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, nextResponder, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  miniFormatterPresenter = [v7 miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if ((isPresentingMiniFormatter & 1) == 0)
  {
    [v7 showDefaultEditUIForCurrentSelection];
  }
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

@end