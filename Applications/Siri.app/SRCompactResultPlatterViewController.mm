@interface SRCompactResultPlatterViewController
- (id)_createReusableViewWithClass:(Class)a3 snippetViewController:(id)a4;
- (void)setSiriContentViewControllers:(id)a3;
@end

@implementation SRCompactResultPlatterViewController

- (void)setSiriContentViewControllers:(id)a3
{
  v5 = a3;
  if (self->_siriContentViewControllers != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_siriContentViewControllers, a3);
    v6 = objc_opt_new();
    if ([(NSArray *)self->_siriContentViewControllers count])
    {
      v7 = 0;
      v19 = v6;
      do
      {
        v8 = [(NSArray *)self->_siriContentViewControllers objectAtIndex:v7, v17];
        v9 = [(NSArray *)self->_siriContentViewControllers lastObject];

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
        if (v8 != v9)
        {
          v16 = [(NSArray *)self->_siriContentViewControllers objectAtIndex:v7];
          [(SRCompactResultPlatterViewController *)self appendSeparatorToViewControllers:v6 forNextViewController:v16];
        }
      }

      while ([(NSArray *)self->_siriContentViewControllers count]> v7);
    }

    [(SRCompactResultPlatterViewController *)self setContentViewControllers:v6, v17];

    v5 = v18;
  }
}

- (id)_createReusableViewWithClass:(Class)a3 snippetViewController:(id)a4
{
  v5 = a4;
  if (a3)
  {
    a3 = [[a3 alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    if (objc_opt_respondsToSelector())
    {
      [(objc_class *)a3 setSnippetViewController:v5];
    }
  }

  return a3;
}

@end