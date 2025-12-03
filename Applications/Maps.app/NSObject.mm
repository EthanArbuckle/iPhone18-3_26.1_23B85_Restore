@interface NSObject
- (BOOL)_maps_needsUpdateWithSelector:(SEL)selector;
- (CarChromeViewController)carChromeViewController;
- (IOSBasedChromeViewController)iosBasedChromeViewController;
- (IOSChromeViewController)iosChromeViewController;
- (MacChromeViewController)macChromeViewController;
- (void)_maps_setNeedsUpdate:(BOOL)update withSelector:(SEL)selector;
@end

@implementation NSObject

- (IOSChromeViewController)iosChromeViewController
{
  if (objc_opt_respondsToSelector())
  {
    chromeViewController = [self chromeViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = chromeViewController;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IOSBasedChromeViewController)iosBasedChromeViewController
{
  if (objc_opt_respondsToSelector())
  {
    chromeViewController = [self chromeViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = chromeViewController;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CarChromeViewController)carChromeViewController
{
  if (objc_opt_respondsToSelector())
  {
    chromeViewController = [self chromeViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = chromeViewController;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_maps_needsUpdateWithSelector:(SEL)selector
{
  v4 = objc_getAssociatedObject(self, off_10192A2A8);
  v5 = NSStringFromSelector(selector);
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)_maps_setNeedsUpdate:(BOOL)update withSelector:(SEL)selector
{
  updateCopy = update;
  v7 = objc_getAssociatedObject(self, off_10192A2A8);
  v8 = v7;
  if (updateCopy)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(NSMutableSet);
      objc_setAssociatedObject(self, off_10192A2A8, v8, 1);
    }

    v9 = NSStringFromSelector(selector);
    [v8 addObject:v9];

    v10 = objc_getAssociatedObject(self, off_10192A2A0);

    if (!v10)
    {
      objc_setAssociatedObject(self, off_10192A2A0, &__kCFBooleanTrue, 3);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006F7408;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v11 = NSStringFromSelector(selector);
    [v8 removeObject:v11];
  }
}

- (MacChromeViewController)macChromeViewController
{
  if (objc_opt_respondsToSelector())
  {
    chromeViewController = [self chromeViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = chromeViewController;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end