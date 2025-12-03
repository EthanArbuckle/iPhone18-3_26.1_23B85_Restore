@interface SCATMenuOpeningAuxiliaryElementManager
- (BOOL)containsElement:(id)element;
- (BOOL)providesElements;
- (SCATMenuOpeningAuxiliaryElementManager)init;
- (UIControl)menuOpeningElement;
- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options;
- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options;
- (id)firstElementWithOptions:(int *)options;
- (id)lastElementWithOptions:(int *)options;
- (int64_t)numberOfElements;
- (void)dealloc;
- (void)didFinishProvidingElements;
- (void)willBeginProvidingElements;
@end

@implementation SCATMenuOpeningAuxiliaryElementManager

- (SCATMenuOpeningAuxiliaryElementManager)init
{
  v10.receiver = self;
  v10.super_class = SCATMenuOpeningAuxiliaryElementManager;
  v2 = [(SCATMenuOpeningAuxiliaryElementManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    menuOpeningElement = [v3 menuOpeningElement];
    [menuOpeningElement setScatAuxiliaryElementManager:v2];

    [(SCATAuxiliaryElementManager *)v2 setViewController:v3];
    v5 = [SCATStaticElementProvider alloc];
    menuOpeningElement2 = [v3 menuOpeningElement];
    v11 = menuOpeningElement2;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [(SCATStaticElementProvider *)v5 initWithElements:v7];

    [(SCATMenuOpeningAuxiliaryElementManager *)v2 setElementProvider:v8];
  }

  return v2;
}

- (void)dealloc
{
  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    viewController2 = [(SCATAuxiliaryElementManager *)self viewController];
    menuOpeningElement = [viewController2 menuOpeningElement];
    [menuOpeningElement setScatAuxiliaryElementManager:0];
  }

  v7.receiver = self;
  v7.super_class = SCATMenuOpeningAuxiliaryElementManager;
  [(SCATMenuOpeningAuxiliaryElementManager *)&v7 dealloc];
}

- (UIControl)menuOpeningElement
{
  viewController = [(SCATAuxiliaryElementManager *)self viewController];
  menuOpeningElement = [viewController menuOpeningElement];

  return menuOpeningElement;
}

- (BOOL)providesElements
{
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  providesElements = [elementProvider providesElements];

  return providesElements;
}

- (id)firstElementWithOptions:(int *)options
{
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v5 = [elementProvider firstElementWithOptions:options];

  return v5;
}

- (id)lastElementWithOptions:(int *)options
{
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v5 = [elementProvider lastElementWithOptions:options];

  return v5;
}

- (id)elementBefore:(id)before didWrap:(BOOL *)wrap options:(int *)options
{
  beforeCopy = before;
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v10 = [elementProvider elementBefore:beforeCopy didWrap:wrap options:options];

  return v10;
}

- (id)elementAfter:(id)after didWrap:(BOOL *)wrap options:(int *)options
{
  afterCopy = after;
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v10 = [elementProvider elementAfter:afterCopy didWrap:wrap options:options];

  return v10;
}

- (void)willBeginProvidingElements
{
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  [elementProvider willBeginProvidingElements];
}

- (void)didFinishProvidingElements
{
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  [elementProvider didFinishProvidingElements];
}

- (BOOL)containsElement:(id)element
{
  elementCopy = element;
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v6 = [elementProvider containsElement:elementCopy];

  return v6;
}

- (int64_t)numberOfElements
{
  elementProvider = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v3 = [elementProvider count];

  return v3;
}

@end