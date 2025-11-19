@interface CRLUndoManagerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (void)crlaxDidRedo;
- (void)crlaxDidUndo;
- (void)redo;
- (void)undo;
@end

@implementation CRLUndoManagerAccessibility

- (void)crlaxDidUndo
{
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = CRLAccessibilityGetUIKitLocalizedString(@"AXTextOperationActionUndo");
  UIAccessibilityPostNotification(v2, v3);
}

- (void)crlaxDidRedo
{
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = CRLAccessibilityGetUIKitLocalizedString(@"AXTextOperationActionRedo");
  UIAccessibilityPostNotification(v2, v3);
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)undo
{
  v3 = [(CRLUndoManagerAccessibility *)self crlaxIsPerformingUndoOrRedo];
  [(CRLUndoManagerAccessibility *)self _crlaxSetPerformingUndoOrRedo:1];
  v4.receiver = self;
  v4.super_class = CRLUndoManagerAccessibility;
  [(CRLUndoManagerAccessibility *)&v4 undo];
  [(CRLUndoManagerAccessibility *)self _crlaxSetPerformingUndoOrRedo:v3];
  if ([(CRLUndoManagerAccessibility *)self crlaxRespondsToSelector:"crlaxDidUndo" fromExtrasProtocol:&OBJC_PROTOCOL___CRLUndoManagerAccessibilityExtras])
  {
    [(CRLUndoManagerAccessibility *)self crlaxDidUndo];
  }
}

- (void)redo
{
  v3 = [(CRLUndoManagerAccessibility *)self crlaxIsPerformingUndoOrRedo];
  [(CRLUndoManagerAccessibility *)self _crlaxSetPerformingUndoOrRedo:1];
  v4.receiver = self;
  v4.super_class = CRLUndoManagerAccessibility;
  [(CRLUndoManagerAccessibility *)&v4 redo];
  [(CRLUndoManagerAccessibility *)self _crlaxSetPerformingUndoOrRedo:v3];
  if ([(CRLUndoManagerAccessibility *)self crlaxRespondsToSelector:"crlaxDidRedo" fromExtrasProtocol:&OBJC_PROTOCOL___CRLUndoManagerAccessibilityExtras])
  {
    [(CRLUndoManagerAccessibility *)self crlaxDidRedo];
  }
}

@end