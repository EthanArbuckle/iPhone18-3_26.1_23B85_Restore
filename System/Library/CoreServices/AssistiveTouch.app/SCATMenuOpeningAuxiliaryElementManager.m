@interface SCATMenuOpeningAuxiliaryElementManager
- (BOOL)containsElement:(id)a3;
- (BOOL)providesElements;
- (SCATMenuOpeningAuxiliaryElementManager)init;
- (UIControl)menuOpeningElement;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
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
    v4 = [v3 menuOpeningElement];
    [v4 setScatAuxiliaryElementManager:v2];

    [(SCATAuxiliaryElementManager *)v2 setViewController:v3];
    v5 = [SCATStaticElementProvider alloc];
    v6 = [v3 menuOpeningElement];
    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [(SCATStaticElementProvider *)v5 initWithElements:v7];

    [(SCATMenuOpeningAuxiliaryElementManager *)v2 setElementProvider:v8];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(SCATAuxiliaryElementManager *)self viewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SCATAuxiliaryElementManager *)self viewController];
    v6 = [v5 menuOpeningElement];
    [v6 setScatAuxiliaryElementManager:0];
  }

  v7.receiver = self;
  v7.super_class = SCATMenuOpeningAuxiliaryElementManager;
  [(SCATMenuOpeningAuxiliaryElementManager *)&v7 dealloc];
}

- (UIControl)menuOpeningElement
{
  v2 = [(SCATAuxiliaryElementManager *)self viewController];
  v3 = [v2 menuOpeningElement];

  return v3;
}

- (BOOL)providesElements
{
  v2 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v3 = [v2 providesElements];

  return v3;
}

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v5 = [v4 firstElementWithOptions:a3];

  return v5;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v5 = [v4 lastElementWithOptions:a3];

  return v5;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v10 = [v9 elementBefore:v8 didWrap:a4 options:a5];

  return v10;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v10 = [v9 elementAfter:v8 didWrap:a4 options:a5];

  return v10;
}

- (void)willBeginProvidingElements
{
  v2 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  [v2 willBeginProvidingElements];
}

- (void)didFinishProvidingElements
{
  v2 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  [v2 didFinishProvidingElements];
}

- (BOOL)containsElement:(id)a3
{
  v4 = a3;
  v5 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v6 = [v5 containsElement:v4];

  return v6;
}

- (int64_t)numberOfElements
{
  v2 = [(SCATMenuOpeningAuxiliaryElementManager *)self elementProvider];
  v3 = [v2 count];

  return v3;
}

@end