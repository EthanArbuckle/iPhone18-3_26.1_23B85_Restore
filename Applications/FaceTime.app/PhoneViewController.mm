@interface PhoneViewController
- ($1FF454C5B48E436092D281DABF654916)badge;
- (PhoneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_loadOffsetDefaultForKey:(id)key withScrollView:(id)view;
- (void)_saveOffsetDefaultForKey:(id)key withScrollView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PhoneViewController

- (PhoneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PhoneViewController;
  v4 = [(PhoneViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    InitializeIconAndTitle();
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"savePreferences" name:@"PhoneApplicationDeactivatedNotification" object:0];
    if ([UIApp userInterfaceStyle] == 1)
    {
      [(PhoneViewController *)v4 setEdgesForExtendedLayout:0];
    }
  }

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([UIApp contentViewCanRotate])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PhoneViewController;
  [(PhoneViewController *)&v3 viewDidAppear:appear];
}

- ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = PhoneBadgeKnownZero[0];
  v3 = PhoneBadgeKnownZero[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)_saveOffsetDefaultForKey:(id)key withScrollView:(id)view
{
  viewCopy = view;
  keyCopy = key;
  if (([(PhoneViewController *)self isViewLoaded]& 1) != 0 || ([NSString stringWithFormat:@"View must be loaded before you call _saveOffsetDefaultForKey:withScrollView:"], v9 = objc_claimAutoreleasedReturnValue(), NSLog(@"** TUAssertion failure: %@", v9), v9, !_TUAssertShouldCrashApplication()) || ([(PhoneViewController *)self isViewLoaded]& 1) != 0)
  {
    if (keyCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1000C3FFC(a2, self);
    if (keyCopy)
    {
      goto LABEL_7;
    }
  }

  v10 = [NSString stringWithFormat:@"Passed nil key to _saveOffsetDefaultForKey:withScrollView:"];
  NSLog(@"** TUAssertion failure: %@", v10);

  if (_TUAssertShouldCrashApplication())
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PhoneViewController.m" lineNumber:108 description:@"Passed nil key to _saveOffsetDefaultForKey:withScrollView:"];
  }

LABEL_7:
  if (!viewCopy)
  {
    v12 = [NSString stringWithFormat:@"Passed nil scrollView to _saveOffsetDefaultForKey:withScrollView:"];
    NSLog(@"** TUAssertion failure: %@", v12);

    if (_TUAssertShouldCrashApplication())
    {
      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PhoneViewController.m" lineNumber:109 description:@"Passed nil scrollView to _saveOffsetDefaultForKey:withScrollView:"];
    }
  }

  [viewCopy contentOffset];
  v15 = v14;
  [viewCopy contentInset];
  v17 = v16;

  v18 = v15 + v17;
  *&v18 = v15 + v17;
  v19 = [NSNumber numberWithFloat:v18];
  PHPreferencesSetValueInDomain();
}

- (void)_loadOffsetDefaultForKey:(id)key withScrollView:(id)view
{
  keyCopy = key;
  viewCopy = view;
  if (([(PhoneViewController *)self isViewLoaded]& 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"View must be loaded before you call _loadOffsetDefaultForKey:withScrollView:"];
    NSLog(@"** TUAssertion failure: %@", v8);

    if (_TUAssertShouldCrashApplication())
    {
      if (([(PhoneViewController *)self isViewLoaded]& 1) == 0)
      {
        sub_1000C4070(a2, self);
      }
    }
  }

  if (!keyCopy)
  {
    v9 = [NSString stringWithFormat:@"Passed nil key to _saveOffsetDefaultForKey:withScrollView:"];
    NSLog(@"** TUAssertion failure: %@", v9);

    if (_TUAssertShouldCrashApplication())
    {
      v10 = +[NSAssertionHandler currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PhoneViewController.m" lineNumber:115 description:@"Passed nil key to _saveOffsetDefaultForKey:withScrollView:"];
    }
  }

  if (!viewCopy)
  {
    v11 = [NSString stringWithFormat:@"Passed nil scrollView to _loadOffsetDefaultForKey:withScrollView:"];
    NSLog(@"** TUAssertion failure: %@", v11);

    if (_TUAssertShouldCrashApplication())
    {
      v12 = +[NSAssertionHandler currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PhoneViewController.m" lineNumber:116 description:@"Passed nil scrollView to _loadOffsetDefaultForKey:withScrollView:"];
    }
  }

  v13 = PHPreferencesGetValue();
  v14 = v13;
  if (v13)
  {
    [v13 floatValue];
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    [viewCopy setContentOffset:{0.0, v15}];
  }
}

@end