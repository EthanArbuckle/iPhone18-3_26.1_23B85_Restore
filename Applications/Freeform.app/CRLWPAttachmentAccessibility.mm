@interface CRLWPAttachmentAccessibility
+ (id)crlaxAttachmentElementForAttachment:(id)attachment inTextRep:(id)rep;
+ (id)crlaxCastFrom:(id)from;
- (void)crlaxSetParentInteractiveCanvasController:(id)controller;
- (void)dealloc;
- (void)setParentStorage:(id)storage;
@end

@implementation CRLWPAttachmentAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)dealloc
{
  [(CRLWPAttachmentAccessibility *)self crlaxSetParentInteractiveCanvasController:0];
  v3.receiver = self;
  v3.super_class = CRLWPAttachmentAccessibility;
  [(CRLWPAttachmentAccessibility *)&v3 dealloc];
}

- (void)setParentStorage:(id)storage
{
  storageCopy = storage;
  [(CRLWPAttachmentAccessibility *)self crlaxParentStorageWasUpdated];
  v5.receiver = self;
  v5.super_class = CRLWPAttachmentAccessibility;
  [(CRLWPAttachmentAccessibility *)&v5 setParentStorage:storageCopy];
}

- (void)crlaxSetParentInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  _crlaxParentInteractiveCanvasController = [(CRLWPAttachmentAccessibility *)self _crlaxParentInteractiveCanvasController];
  v10 = 0;
  v6 = controllerCopy;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v9 = v8;

  if (_crlaxParentInteractiveCanvasController != v9)
  {
    [_crlaxParentInteractiveCanvasController crlaxUnregisterLinkedTextElement:self];
    [(CRLWPAttachmentAccessibility *)self _crlaxSetParentInteractiveCanvasController:v9];
    [v9 crlaxRegisterLinkedTextElement:self];
  }
}

+ (id)crlaxAttachmentElementForAttachment:(id)attachment inTextRep:(id)rep
{
  attachmentCopy = attachment;
  repCopy = rep;
  crlaxAssociatedAXElement = [attachmentCopy crlaxAssociatedAXElement];
  if (!crlaxAssociatedAXElement)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"unhandled attachment type", v9, v10, v11, v12, v13, v15))
      {
        abort();
      }
    }

    [attachmentCopy crlaxSetAssociatedAXElement:0];
  }

  return crlaxAssociatedAXElement;
}

@end