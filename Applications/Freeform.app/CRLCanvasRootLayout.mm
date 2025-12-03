@interface CRLCanvasRootLayout
- (CRLCanvasLayoutController)layoutController;
- (CRLCanvasRootLayout)initWithLayoutController:(id)controller;
- (id)childLayoutsInRect:(CGRect)rect deep:(BOOL)deep;
@end

@implementation CRLCanvasRootLayout

- (CRLCanvasRootLayout)initWithLayoutController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLCanvasRootLayout;
  v5 = [(CRLCanvasAbstractLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak((v5 + 74), controllerCopy);
  }

  return v6;
}

- (id)childLayoutsInRect:(CGRect)rect deep:(BOOL)deep
{
  deepCopy = deep;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  children = [(CRLCanvasAbstractLayout *)self children];
  v12 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v17 + 1) + 8 * i) addLayoutsInRect:v10 toArray:deepCopy deep:{x, y, width, height}];
      }

      v13 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  return v10;
}

- (CRLCanvasLayoutController)layoutController
{
  WeakRetained = objc_loadWeakRetained((&self->super._lastInterimPositionYSet + 1));

  return WeakRetained;
}

@end