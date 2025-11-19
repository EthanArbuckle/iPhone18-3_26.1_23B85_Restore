@interface GAX_UINavigationInteractiveTransitionOverride
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
@end

@implementation GAX_UINavigationInteractiveTransitionOverride

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GAX_UINavigationInteractiveTransitionOverride;
  if ([(GAX_UINavigationInteractiveTransitionOverride *)&v17 gestureRecognizerShouldBegin:v4])
  {
    v5 = +[GAXClient sharedInstance];
    v6 = [v5 isActive];

    if (v6)
    {
      objc_opt_class();
      v7 = [(GAX_UINavigationInteractiveTransitionOverride *)self safeValueForKey:@"_parent"];
      v8 = __UIAccessibilityCastAsClass();

      v9 = [v4 view];
      v10 = [v8 view];

      if (v9 == v10)
      {
        v12 = [v8 navigationBar];
        objc_opt_class();
        v13 = [v12 safeValueForKey:@"currentBackButton"];
        v14 = __UIAccessibilityCastAsClass();

        if (v14)
        {
          v15 = +[GAXClient sharedInstance];
          v11 = [v15 isViewInIgnoredTouchRegion:v14] ^ 1;
        }

        else
        {
          LOBYTE(v11) = 1;
        }
      }

      else
      {
        LOBYTE(v11) = 1;
      }
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

@end