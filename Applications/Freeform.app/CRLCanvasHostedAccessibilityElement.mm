@interface CRLCanvasHostedAccessibilityElement
- (CGRect)frame;
- (CGRect)frameInUnscaledCanvas;
- (CRLCanvasAccessibility)parentCanvas;
@end

@implementation CRLCanvasHostedAccessibilityElement

- (CRLCanvasAccessibility)parentCanvas
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Abstract method", v3, v4, v5, v6, v7, vars0))
    {
      abort();
    }
  }

  return 0;
}

- (CGRect)frameInUnscaledCanvas
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Abstract method", v3, v4, v5, v6, v7, vars0))
    {
      abort();
    }
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frame
{
  parentCanvas = [(CRLCanvasHostedAccessibilityElement *)self parentCanvas];
  [(CRLCanvasHostedAccessibilityElement *)self frameInUnscaledCanvas];
  [parentCanvas crlaxScreenFrameFromUnscaledCanvas:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end