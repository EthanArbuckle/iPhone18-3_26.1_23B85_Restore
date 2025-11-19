@interface SCATGestureDrawingElementManager
- (BOOL)allowsDwellSelection;
- (SCATGestureDrawingElementManager)initWithStartingFingerPositions:(id)a3 menu:(id)a4;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)driver:(id)a3 willUnfocusFromContext:(id)a4;
- (void)scannerWillMakeManagerActive:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
@end

@implementation SCATGestureDrawingElementManager

- (SCATGestureDrawingElementManager)initWithStartingFingerPositions:(id)a3 menu:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SCATGestureDrawingElementManager;
  v8 = [(SCATGestureDrawingElementManager *)&v11 init];
  if (v8)
  {
    v9 = [[SCATGestureDrawingViewController alloc] initWithElementManager:v8 startingFingerPositions:v6 menu:v7];
    [(SCATElementManager *)v8 setVisualProvider:v9];
  }

  return v8;
}

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v5 = [v4 firstElementWithOptions:a3];

  return v5;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v5 = [v4 lastElementWithOptions:a3];

  return v5;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v10 = [v9 elementAfter:v8 didWrap:a4 options:a5];

  return v10;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v10 = [v9 elementBefore:v8 didWrap:a4 options:a5];

  return v10;
}

- (void)scannerWillMakeManagerActive:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCATGestureDrawingElementManager;
  v4 = a3;
  [(SCATElementManager *)&v6 scannerWillMakeManagerActive:v4];
  v5 = [(SCATGestureDrawingElementManager *)self drawingViewController:v6.receiver];
  [v5 scannerWillMakeManagerActive:v4];
}

- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4
{
  v4 = *&a4;
  v8.receiver = self;
  v8.super_class = SCATGestureDrawingElementManager;
  v6 = a3;
  [(SCATElementManager *)&v8 scannerWillMakeManagerActive:v6 forDisplayID:v4];
  v7 = [(SCATGestureDrawingElementManager *)self drawingViewController:v8.receiver];
  [v7 scannerWillMakeManagerActive:v6 forDisplayID:v4];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCATGestureDrawingElementManager;
  v6 = a4;
  v7 = a3;
  [(SCATElementManager *)&v9 scannerWillMakeManagerInactive:v7 activeElementManager:v6];
  v8 = [(SCATGestureDrawingElementManager *)self drawingViewController:v9.receiver];
  [v8 scannerWillMakeManagerInactive:v7 activeElementManager:v6];
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v11.receiver = self;
  v11.super_class = SCATGestureDrawingElementManager;
  v7 = a4;
  [(SCATElementManager *)&v11 driver:a3 didFocusOnContext:v7 oldContext:a5];
  v8 = [v7 element];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 menuItem];
    [v9 setStyle:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if ([v10 isDisabled])
      {
        [v10 setStyle:1];
      }

      [v10 setFocused:1];
    }
  }
}

- (void)driver:(id)a3 willUnfocusFromContext:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SCATGestureDrawingElementManager;
  [(SCATElementManager *)&v11 driver:a3 willUnfocusFromContext:v6];
  v7 = [v6 element];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    v8 = [v6 element];
    v9 = [v8 menuItem];

    [v9 setStyle:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if ([v10 isDisabled])
      {
        [v10 setStyle:1];
      }

      [v10 setFocused:0];
    }
  }
}

- (BOOL)allowsDwellSelection
{
  v2 = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v3 = [v2 allowsDwellSelection];

  return v3;
}

@end