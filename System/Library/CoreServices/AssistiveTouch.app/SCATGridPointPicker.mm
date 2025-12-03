@interface SCATGridPointPicker
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (id)_initWithMenu:(id)menu;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)scannerWillMakeManagerActive:(id)active;
- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
@end

@implementation SCATGridPointPicker

- (id)_initWithMenu:(id)menu
{
  menuCopy = menu;
  v8.receiver = self;
  v8.super_class = SCATGridPointPicker;
  v5 = [(SCATPointPicker *)&v8 _initWithMenu:menuCopy];
  if (v5)
  {
    v6 = [(SCATPointPickerViewController *)[SCATGridPointPickerViewController alloc] initWithElementManager:v5 menu:menuCopy];
    [v5 setVisualProvider:v6];
  }

  return v5;
}

- (id)firstElementWithOptions:(int *)options
{
  _gridViewController = [(SCATGridPointPicker *)self _gridViewController];
  v5 = [_gridViewController firstElementWithOptions:options];

  return v5;
}

- (id)lastElementWithOptions:(int *)options
{
  _gridViewController = [(SCATGridPointPicker *)self _gridViewController];
  v5 = [_gridViewController lastElementWithOptions:options];

  return v5;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  _gridViewController = [(SCATGridPointPicker *)self _gridViewController];
  v10 = [_gridViewController elementAfter:afterCopy didWrap:wrap options:options];

  return v10;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  _gridViewController = [(SCATGridPointPicker *)self _gridViewController];
  v10 = [_gridViewController elementBefore:beforeCopy didWrap:wrap options:options];

  return v10;
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  v12.receiver = self;
  v12.super_class = SCATGridPointPicker;
  oldContextCopy = oldContext;
  contextCopy = context;
  driverCopy = driver;
  [(SCATElementManager *)&v12 driver:driverCopy didFocusOnContext:contextCopy oldContext:oldContextCopy];
  v11 = [(SCATGridPointPicker *)self _gridViewController:v12.receiver];
  [v11 driver:driverCopy didFocusOnContext:contextCopy oldContext:oldContextCopy];
}

- (void)scannerWillMakeManagerActive:(id)active
{
  v6.receiver = self;
  v6.super_class = SCATGridPointPicker;
  activeCopy = active;
  [(SCATElementManager *)&v6 scannerWillMakeManagerActive:activeCopy];
  v5 = [(SCATGridPointPicker *)self _gridViewController:v6.receiver];
  [v5 scannerWillMakeManagerActive:activeCopy];
}

- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d
{
  v4 = *&d;
  v8.receiver = self;
  v8.super_class = SCATGridPointPicker;
  activeCopy = active;
  [(SCATElementManager *)&v8 scannerWillMakeManagerActive:activeCopy];
  v7 = [(SCATGridPointPicker *)self _gridViewController:v8.receiver];
  [v7 scannerWillMakeManagerActive:activeCopy forDisplayID:v4];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  v9.receiver = self;
  v9.super_class = SCATGridPointPicker;
  managerCopy = manager;
  inactiveCopy = inactive;
  [(SCATElementManager *)&v9 scannerWillMakeManagerInactive:inactiveCopy activeElementManager:managerCopy];
  v8 = [(SCATGridPointPicker *)self _gridViewController:v9.receiver];
  [v8 scannerWillMakeManagerInactive:inactiveCopy activeElementManager:managerCopy];
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  actionCopy = action;
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SCATGridPointPicker;
  if ([(SCATElementManager *)&v11 handleInputAction:actionCopy withElement:elementCopy])
  {
    v8 = 1;
  }

  else
  {
    _gridViewController = [(SCATGridPointPicker *)self _gridViewController];
    v8 = [_gridViewController handleInputAction:actionCopy withElement:elementCopy];
  }

  return v8;
}

@end