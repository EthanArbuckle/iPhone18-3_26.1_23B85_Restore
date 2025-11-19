@interface CRLCanvasRootLayout
- (CRLCanvasLayoutController)layoutController;
- (CRLCanvasRootLayout)initWithLayoutController:(id)a3;
- (id)childLayoutsInRect:(CGRect)a3 deep:(BOOL)a4;
@end

@implementation CRLCanvasRootLayout

- (CRLCanvasRootLayout)initWithLayoutController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLCanvasRootLayout;
  v5 = [(CRLCanvasAbstractLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak((v5 + 74), v4);
  }

  return v6;
}

- (id)childLayoutsInRect:(CGRect)a3 deep:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(CRLCanvasAbstractLayout *)self children];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * i) addLayoutsInRect:v10 toArray:v4 deep:{x, y, width, height}];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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