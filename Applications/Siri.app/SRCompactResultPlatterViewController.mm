@interface SRCompactResultPlatterViewController
- (id)_createReusableViewWithClass:(Class)class snippetViewController:(id)controller;
- (void)setSiriContentViewControllers:(id)controllers;
@end

@implementation SRCompactResultPlatterViewController

- (void)setSiriContentViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (self->_siriContentViewControllers != controllersCopy)
  {
    v17 = controllersCopy;
    objc_storeStrong(&self->_siriContentViewControllers, controllers);
    v6 = objc_opt_new();
    if ([(NSArray *)self->_siriContentViewControllers count])
    {
      v7 = 0;
      v19 = v6;
      do
      {
        v8 = [(NSArray *)self->_siriContentViewControllers objectAtIndex:v7, v17];
        lastObject = [(NSArray *)self->_siriContentViewControllers lastObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v8;
          [v6 addObject:v10];
          v11 = -[SRCompactResultPlatterViewController _createReusableViewWithClass:snippetViewController:](self, "_createReusableViewWithClass:snippetViewController:", [v10 footerViewClass], v10);
          [v10 configureReusableFooterView:v11];
          v12 = objc_alloc_init(SiriUIFooterViewController);
          [v12 setView:v11];
          if (v11)
          {
            [objc_opt_class() defaultHeight];
            if (v13 > 0.0)
            {
              v14 = objc_alloc_init(UIViewController);
              v15 = objc_alloc_init(SiriSharedUIContentPlatterSeparatorView);
              [v15 setSeparatorType:1];
              [v14 setView:v15];
              [v19 addObject:v14];

              v6 = v19;
            }
          }

          [v6 addObject:v12];
        }

        ++v7;
        if (v8 != lastObject)
        {
          v16 = [(NSArray *)self->_siriContentViewControllers objectAtIndex:v7];
          [(SRCompactResultPlatterViewController *)self appendSeparatorToViewControllers:v6 forNextViewController:v16];
        }
      }

      while ([(NSArray *)self->_siriContentViewControllers count]> v7);
    }

    [(SRCompactResultPlatterViewController *)self setContentViewControllers:v6, v17];

    controllersCopy = v18;
  }
}

- (id)_createReusableViewWithClass:(Class)class snippetViewController:(id)controller
{
  controllerCopy = controller;
  if (class)
  {
    class = [[class alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    if (objc_opt_respondsToSelector())
    {
      [(objc_class *)class setSnippetViewController:controllerCopy];
    }
  }

  return class;
}

@end