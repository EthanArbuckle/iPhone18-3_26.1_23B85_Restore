@interface WKWebViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_didFinishNavigation:(void *)a3;
- (void)_didStartProvisionalLoadForMainFrame;
- (void)layoutSubviews;
@end

@implementation WKWebViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1560C;
  v14[3] = &unk_44890;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  v3 = objc_retainBlock(v14);
  if (_AXSInvertColorsEnabled())
  {
    v4 = self;
    v5 = [(WKWebViewInvertColorsAccessibility *)v4 window];
    v6 = [v5 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v7 == &dword_0 + 2)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v13[3] = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_156E0;
      v9[3] = &unk_44900;
      v11 = v13;
      objc_copyWeak(&v12, &location);
      v9[4] = v4;
      v10 = v3;
      v8 = objc_retainBlock(v9);
      (v8[2])();
      AXPerformBlockOnMainThreadAfterDelay();

      objc_destroyWeak(&v12);
      _Block_object_dispose(v13, 8);
    }

    else
    {
      (v3[2])(v3);
    }
  }

  else
  {
    (v3[2])(v3);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WKWebViewInvertColorsAccessibility;
  [(WKWebViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(WKWebViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_didStartProvisionalLoadForMainFrame
{
  v4.receiver = self;
  v4.super_class = WKWebViewInvertColorsAccessibility;
  [(WKWebViewInvertColorsAccessibility *)&v4 _didStartProvisionalLoadForMainFrame];
  v3 = AXLogInvertColors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_20A20(self);
  }

  [(WKWebViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_didFinishNavigation:(void *)a3
{
  v5.receiver = self;
  v5.super_class = WKWebViewInvertColorsAccessibility;
  [(WKWebViewInvertColorsAccessibility *)&v5 _didFinishNavigation:a3];
  v4 = AXLogInvertColors();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_20AC8(self);
  }

  [(WKWebViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end