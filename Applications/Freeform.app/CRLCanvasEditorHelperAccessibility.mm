@interface CRLCanvasEditorHelperAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLSubselectionAccessibility)crlaxCanvasSelection;
- (id)_crlaxDescriptionOfInfos:(id)infos;
- (id)_crlaxInteractiveCanvasController;
- (void)delete:(id)delete;
- (void)enterQuickSelectMode:(id)mode;
- (void)p_setLockStatusOfSelectedDrawables:(BOOL)drawables;
@end

@implementation CRLCanvasEditorHelperAccessibility

- (void)enterQuickSelectMode:(id)mode
{
  v7.receiver = self;
  v7.super_class = CRLCanvasEditorHelperAccessibility;
  [(CRLCanvasEditorHelperAccessibility *)&v7 enterQuickSelectMode:mode];
  crlaxTarget = [(CRLCanvasEditorHelperAccessibility *)self crlaxTarget];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Entered Quick Select mode. Double tap an object to add to selection." value:0 table:0];
  CRLAccessibilityPostAnnouncementNotification(crlaxTarget, v6);
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLSubselectionAccessibility)crlaxCanvasSelection
{
  crlaxCanvasEditor = [(CRLCanvasEditorHelperAccessibility *)self crlaxCanvasEditor];
  v3 = NSProtocolFromString(@"CRLCanvasEditor");
  v4 = [crlaxCanvasEditor conformsToProtocol:v3];

  if (v4)
  {
    v5 = [crlaxCanvasEditor crlaxValueForKey:@"canvasSelection"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  crlaxCanvasSelection = [(CRLCanvasEditorHelperAccessibility *)self crlaxCanvasSelection];
  crlaxUnlockedInfos = [crlaxCanvasSelection crlaxUnlockedInfos];
  v7 = [(CRLCanvasEditorHelperAccessibility *)self _crlaxDescriptionOfInfos:crlaxUnlockedInfos];

  v11.receiver = self;
  v11.super_class = CRLCanvasEditorHelperAccessibility;
  [(CRLCanvasEditorHelperAccessibility *)&v11 delete:deleteCopy];

  if ([(CRLCanvasEditorHelperAccessibility *)self crlaxRespondsToSelector:"crlaxSpeakEditOperationCompletedAnnouncement:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasEditorHelperAccessibilityExtras])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Deleted %1$@" value:0 table:0];
    v10 = [NSString stringWithFormat:v9, v7];

    [(CRLCanvasEditorHelperAccessibility *)self crlaxSpeakEditOperationCompletedAnnouncement:v10];
  }
}

- (void)p_setLockStatusOfSelectedDrawables:(BOOL)drawables
{
  v15.receiver = self;
  v15.super_class = CRLCanvasEditorHelperAccessibility;
  [(CRLCanvasEditorHelperAccessibility *)&v15 p_setLockStatusOfSelectedDrawables:drawables];
  _crlaxInteractiveCanvasController = [(CRLCanvasEditorHelperAccessibility *)self _crlaxInteractiveCanvasController];
  crlaxSelectedReps = [_crlaxInteractiveCanvasController crlaxSelectedReps];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = crlaxSelectedReps;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) crlaxClearKnobAccessibilityElementCache];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)_crlaxInteractiveCanvasController
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasEditorHelperAccessibility *)self crlaxTarget];
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

- (id)_crlaxDescriptionOfInfos:(id)infos
{
  infosCopy = infos;
  v4 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = infosCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v25 = 0;
        v11 = v10;
        v12 = objc_opt_class();
        v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 1, &v25);
        if (v25 == 1)
        {
          abort();
        }

        v14 = v13;

        crlaxTypeDescription = [v14 crlaxTypeDescription];
        [v4 crlaxAddObjectIfNotNil:crlaxTypeDescription];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = __CRLAccessibilityStringForArraysAndVariables(v4, v16, v17, v18, v19, v20, v21, v22, @"__CRLAccessibilityStringForArraysAndVariablesSentinel");

  return v23;
}

@end