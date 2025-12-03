@interface GAX_UINavigationInteractiveTransitionOverride
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
@end

@implementation GAX_UINavigationInteractiveTransitionOverride

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v17.receiver = self;
  v17.super_class = GAX_UINavigationInteractiveTransitionOverride;
  if ([(GAX_UINavigationInteractiveTransitionOverride *)&v17 gestureRecognizerShouldBegin:beginCopy])
  {
    v5 = +[GAXClient sharedInstance];
    isActive = [v5 isActive];

    if (isActive)
    {
      objc_opt_class();
      v7 = [(GAX_UINavigationInteractiveTransitionOverride *)self safeValueForKey:@"_parent"];
      v8 = __UIAccessibilityCastAsClass();

      view = [beginCopy view];
      view2 = [v8 view];

      if (view == view2)
      {
        navigationBar = [v8 navigationBar];
        objc_opt_class();
        v13 = [navigationBar safeValueForKey:@"currentBackButton"];
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