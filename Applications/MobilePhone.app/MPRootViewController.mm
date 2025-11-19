@interface MPRootViewController
- (id)baseViewController;
@end

@implementation MPRootViewController

- (id)baseViewController
{
  baseViewController = self->_baseViewController;
  if (!baseViewController)
  {
    v4 = objc_opt_new();
    if ([v4 phoneLargeFormatUIEnabled])
    {
      v5 = +[UIDevice currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v7 = objc_alloc_init(_TtC11MobilePhone26PhoneRecentsViewController);
        v8 = self->_baseViewController;
        self->_baseViewController = v7;
LABEL_7:

        [(MPRootViewController *)self addChildViewController:self->_baseViewController];
        baseViewController = self->_baseViewController;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v9 = [PhoneTabBarController alloc];
    v8 = [(MPRootViewController *)self phoneRecentsController];
    v10 = [(PhoneTabBarController *)v9 initWithRecentsController:v8];
    v11 = self->_baseViewController;
    self->_baseViewController = v10;

    goto LABEL_7;
  }

LABEL_8:

  return baseViewController;
}

@end