@interface CRLWPSmartFieldAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CRLTextRepAccessibility)crlaxParentTextRep;
- (_NSRange)crlaxFieldRange;
- (void)crlaxSetParentInteractiveCanvasController:(id)a3;
- (void)dealloc;
@end

@implementation CRLWPSmartFieldAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)dealloc
{
  [(CRLWPSmartFieldAccessibility *)self crlaxSetParentInteractiveCanvasController:0];
  v3.receiver = self;
  v3.super_class = CRLWPSmartFieldAccessibility;
  [(CRLWPSmartFieldAccessibility *)&v3 dealloc];
}

- (_NSRange)crlaxFieldRange
{
  v2 = [(CRLWPSmartFieldAccessibility *)self crlaxTarget];
  v3 = [v2 range];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)crlaxSetParentInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPSmartFieldAccessibility *)self _crlaxParentInteractiveCanvasController];
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
    [(CRLWPSmartFieldAccessibility *)self _crlaxSetParentInteractiveCanvasController:v9];
    [v9 crlaxRegisterLinkedTextElement:self];
  }
}

- (CRLTextRepAccessibility)crlaxParentTextRep
{
  v3 = [(CRLWPSmartFieldAccessibility *)self crlaxParentInteractiveCanvasController];
  if (CRLAccessibilityShouldPerformValidationChecks() && !v3)
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Can't find interactive canvas controller even though we're asked for the parent text rep of an attachment.", v5, v6, v7, v8, v9, v32))
    {
LABEL_31:
      abort();
    }

    goto LABEL_24;
  }

  if (!v3)
  {
LABEL_24:
    v16 = 0;
    goto LABEL_28;
  }

  v38 = 0;
  v10 = [(CRLWPSmartFieldAccessibility *)self crlaxTarget];
  v11 = [v10 parentStorage];

  v12 = objc_opt_class();
  v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 1, &v38);
  if (v38 == 1)
  {
    goto LABEL_31;
  }

  v14 = v13;

  v15 = [(CRLWPSmartFieldAccessibility *)self crlaxFieldRange];
  v16 = 0;
  if (v14)
  {
    v17 = v15;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v14;
      [v3 crlaxTextRepsForStorage:v14];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v37 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v16 = 0;
        v21 = *v35;
        do
        {
          v22 = 0;
          v23 = v16;
          do
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v34 + 1) + 8 * v22);
            v38 = 0;
            v25 = v24;
            v26 = objc_opt_class();
            v27 = __CRLAccessibilityCastAsSafeCategory(v26, v25, 1, &v38);
            if (v38 == 1)
            {
              goto LABEL_31;
            }

            v16 = v27;

            if (v16)
            {
              v28 = [v16 crlaxStorageRangeOfRep];
              if (v17 >= v28 && v17 - v28 < v29)
              {
                goto LABEL_26;
              }
            }

            v22 = v22 + 1;
            v23 = v16;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v20);
      }

      else
      {
        v16 = 0;
      }

LABEL_26:

      v14 = v33;
    }
  }

LABEL_28:

  return v16;
}

@end