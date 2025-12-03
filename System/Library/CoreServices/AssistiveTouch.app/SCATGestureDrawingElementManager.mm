@interface SCATGestureDrawingElementManager
- (BOOL)allowsDwellSelection;
- (SCATGestureDrawingElementManager)initWithStartingFingerPositions:(id)positions menu:(id)menu;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)driver:(id)driver willUnfocusFromContext:(id)context;
- (void)scannerWillMakeManagerActive:(id)active;
- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
@end

@implementation SCATGestureDrawingElementManager

- (SCATGestureDrawingElementManager)initWithStartingFingerPositions:(id)positions menu:(id)menu
{
  positionsCopy = positions;
  menuCopy = menu;
  v11.receiver = self;
  v11.super_class = SCATGestureDrawingElementManager;
  v8 = [(SCATGestureDrawingElementManager *)&v11 init];
  if (v8)
  {
    v9 = [[SCATGestureDrawingViewController alloc] initWithElementManager:v8 startingFingerPositions:positionsCopy menu:menuCopy];
    [(SCATElementManager *)v8 setVisualProvider:v9];
  }

  return v8;
}

- (id)firstElementWithOptions:(int *)options
{
  drawingViewController = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v5 = [drawingViewController firstElementWithOptions:options];

  return v5;
}

- (id)lastElementWithOptions:(int *)options
{
  drawingViewController = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v5 = [drawingViewController lastElementWithOptions:options];

  return v5;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  drawingViewController = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v10 = [drawingViewController elementAfter:afterCopy didWrap:wrap options:options];

  return v10;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  drawingViewController = [(SCATGestureDrawingElementManager *)self drawingViewController];
  v10 = [drawingViewController elementBefore:beforeCopy didWrap:wrap options:options];

  return v10;
}

- (void)scannerWillMakeManagerActive:(id)active
{
  v6.receiver = self;
  v6.super_class = SCATGestureDrawingElementManager;
  activeCopy = active;
  [(SCATElementManager *)&v6 scannerWillMakeManagerActive:activeCopy];
  v5 = [(SCATGestureDrawingElementManager *)self drawingViewController:v6.receiver];
  [v5 scannerWillMakeManagerActive:activeCopy];
}

- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d
{
  v4 = *&d;
  v8.receiver = self;
  v8.super_class = SCATGestureDrawingElementManager;
  activeCopy = active;
  [(SCATElementManager *)&v8 scannerWillMakeManagerActive:activeCopy forDisplayID:v4];
  v7 = [(SCATGestureDrawingElementManager *)self drawingViewController:v8.receiver];
  [v7 scannerWillMakeManagerActive:activeCopy forDisplayID:v4];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = SCATGestureDrawingElementManager;
  managerCopy = manager;
  inactiveCopy = inactive;
  [(SCATElementManager *)&v9 scannerWillMakeManagerInactive:inactiveCopy activeElementManager:managerCopy];
  v8 = [(SCATGestureDrawingElementManager *)self drawingViewController:v9.receiver];
  [v8 scannerWillMakeManagerInactive:inactiveCopy activeElementManager:managerCopy];
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  v11.receiver = self;
  v11.super_class = SCATGestureDrawingElementManager;
  contextCopy = context;
  [(SCATElementManager *)&v11 driver:driver didFocusOnContext:contextCopy oldContext:oldContext];
  element = [contextCopy element];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    menuItem = [element menuItem];
    [menuItem setStyle:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = menuItem;
      if ([v10 isDisabled])
      {
        [v10 setStyle:1];
      }

      [v10 setFocused:1];
    }
  }
}

- (void)driver:(id)driver willUnfocusFromContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SCATGestureDrawingElementManager;
  [(SCATElementManager *)&v11 driver:driver willUnfocusFromContext:contextCopy];
  element = [contextCopy element];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();

  if (self)
  {
    element2 = [contextCopy element];
    menuItem = [element2 menuItem];

    [menuItem setStyle:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = menuItem;
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
  drawingViewController = [(SCATGestureDrawingElementManager *)self drawingViewController];
  allowsDwellSelection = [drawingViewController allowsDwellSelection];

  return allowsDwellSelection;
}

@end