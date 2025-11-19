@interface AXStickyKeysViewController
- (AXStickyKeysViewController)init;
- (id)_stringForKeycode:(unsigned __int16)a3 usagePage:(unsigned int)a4;
- (void)_removeCapsLockIfNeeded;
- (void)dealloc;
- (void)loadView;
- (void)resetWithCompletion:(id)a3;
@end

@implementation AXStickyKeysViewController

- (AXStickyKeysViewController)init
{
  v9.receiver = self;
  v9.super_class = AXStickyKeysViewController;
  v2 = [(AXStickyKeysViewController *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_removeCapsLockIfNeeded" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    v4 = +[AXSettings sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_E94;
    v6[3] = &unk_81E0;
    objc_copyWeak(&v7, &location);
    [v4 registerUpdateBlock:v6 forRetrieveSelector:"voiceOverKeyboardModifierChoice" withListener:v2];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = AXStickyKeysViewController;
  [(AXStickyKeysViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(AXStickyKeysView);
  [(AXStickyKeysViewController *)self setView:v3];
}

- (void)resetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AXStickyKeysViewController *)self _stickyKeysView];
  [v5 removeAllStickyKeyStringsWithCompletion:v4];
}

- (void)_removeCapsLockIfNeeded
{
  if (!UIAccessibilityIsVoiceOverRunning() || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 voiceOverKeyboardModifierChoice], v3, (v4 & 2) == 0))
  {
    v5 = [(AXStickyKeysViewController *)self _stickyKeysView];
    [v5 removeStickyKeyString:@"⇪"];
  }
}

- (id)_stringForKeycode:(unsigned __int16)a3 usagePage:(unsigned int)a4
{
  if (a4 != 7)
  {
    v4 = 0;
    v6 = a4 == 255 || a4 == 65281;
    if (a3 != 3 || !v6)
    {
      goto LABEL_29;
    }

    v7 = AXStickyKeyViewFnString;
    goto LABEL_17;
  }

  v4 = 0;
  if (a3 > 226)
  {
    if (a3 > 228)
    {
      if (a3 != 229)
      {
        if (a3 != 230)
        {
          if (a3 != 231)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        goto LABEL_23;
      }

      goto LABEL_26;
    }

    if (a3 == 227)
    {
LABEL_27:
      v8 = "⌘";
      goto LABEL_28;
    }

LABEL_25:
    v8 = "⌃";
    goto LABEL_28;
  }

  if (a3 > 224)
  {
    if (a3 != 225)
    {
LABEL_23:
      v8 = "⌥";
LABEL_28:
      v4 = [NSString stringWithUTF8String:v8];
      goto LABEL_29;
    }

LABEL_26:
    v8 = "⇧";
    goto LABEL_28;
  }

  if (a3 == 57)
  {
    if (!UIAccessibilityIsVoiceOverRunning() || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 voiceOverKeyboardModifierChoice], v10, (v11 & 2) == 0))
    {
      v4 = 0;
      goto LABEL_29;
    }

    v7 = &AXStickyKeyViewCapsLockString;
LABEL_17:
    v4 = *v7;
    goto LABEL_29;
  }

  if (a3 == 224)
  {
    goto LABEL_25;
  }

LABEL_29:

  return v4;
}

@end