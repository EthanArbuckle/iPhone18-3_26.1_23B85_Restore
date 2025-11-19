@interface CRLWPAttachmentAccessibility
+ (id)crlaxAttachmentElementForAttachment:(id)a3 inTextRep:(id)a4;
+ (id)crlaxCastFrom:(id)a3;
- (void)crlaxSetParentInteractiveCanvasController:(id)a3;
- (void)dealloc;
- (void)setParentStorage:(id)a3;
@end

@implementation CRLWPAttachmentAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)dealloc
{
  [(CRLWPAttachmentAccessibility *)self crlaxSetParentInteractiveCanvasController:0];
  v3.receiver = self;
  v3.super_class = CRLWPAttachmentAccessibility;
  [(CRLWPAttachmentAccessibility *)&v3 dealloc];
}

- (void)setParentStorage:(id)a3
{
  v4 = a3;
  [(CRLWPAttachmentAccessibility *)self crlaxParentStorageWasUpdated];
  v5.receiver = self;
  v5.super_class = CRLWPAttachmentAccessibility;
  [(CRLWPAttachmentAccessibility *)&v5 setParentStorage:v4];
}

- (void)crlaxSetParentInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPAttachmentAccessibility *)self _crlaxParentInteractiveCanvasController];
  v10 = 0;
  v6 = v4;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v9 = v8;

  if (v5 != v9)
  {
    [v5 crlaxUnregisterLinkedTextElement:self];
    [(CRLWPAttachmentAccessibility *)self _crlaxSetParentInteractiveCanvasController:v9];
    [v9 crlaxRegisterLinkedTextElement:self];
  }
}

+ (id)crlaxAttachmentElementForAttachment:(id)a3 inTextRep:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 crlaxAssociatedAXElement];
  if (!v7)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"unhandled attachment type", v9, v10, v11, v12, v13, v15))
      {
        abort();
      }
    }

    [v5 crlaxSetAssociatedAXElement:0];
  }

  return v7;
}

@end