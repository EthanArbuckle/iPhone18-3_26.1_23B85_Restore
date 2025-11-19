@interface CRLInteractiveCanvasControllerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)crlaxFocusElementFromSearchReference:(id)a3;
- (id)crlaxFocusTextRangeFromSearchReference:(id)a3;
- (id)crlaxSearchReferenceForSelectionPath:(id)a3;
- (void)crlaxAnnounceSearchReference:(id)a3 forRotor:(id)a4;
- (void)crlaxGoToFormatInspector;
@end

@implementation CRLInteractiveCanvasControllerAccessibility

- (id)crlaxSearchReferenceForSelectionPath:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasControllerAccessibility;
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)&v5 crlaxSearchReferenceForSelectionPath:a3];

  return v3;
}

- (id)crlaxFocusElementFromSearchReference:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasControllerAccessibility;
  v3 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v5 crlaxFocusElementFromSearchReference:a3];

  return v3;
}

- (id)crlaxFocusTextRangeFromSearchReference:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLInteractiveCanvasControllerAccessibility;
  v3 = [(CRLTextInteractiveCanvasControllerAccessibility *)&v5 crlaxFocusTextRangeFromSearchReference:a3];

  return v3;
}

- (void)crlaxAnnounceSearchReference:(id)a3 forRotor:(id)a4
{
  v4.receiver = self;
  v4.super_class = CRLInteractiveCanvasControllerAccessibility;
  [(CRLTextInteractiveCanvasControllerAccessibility *)&v4 crlaxAnnounceSearchReference:a3 forRotor:a4];
}

- (void)crlaxGoToFormatInspector
{
  v2 = [(CRLInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v3 = [v2 canvasView];

  v10 = 0;
  v4 = [v3 nextResponder];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v7 = v6;

  v8 = [v7 miniFormatterPresenter];
  v9 = [v8 isPresentingMiniFormatter];

  if ((v9 & 1) == 0)
  {
    [v7 showDefaultEditUIForCurrentSelection];
  }
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

@end