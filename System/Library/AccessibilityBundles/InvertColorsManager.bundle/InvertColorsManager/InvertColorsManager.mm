void sub_3E54(id a1)
{
  qword_834E0 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

BOOL sub_4298(id a1, CAFilter *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = [(CAFilter *)v5 name];
  if ([v6 isEqualToString:@"UIInvertColorsDoubleInvertPrivateKey"])
  {
  }

  else
  {
    v7 = [(CAFilter *)v5 name];
    v8 = [v7 isEqualToString:@"InvertColorsDoubleInvert"];

    if (!v8)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
  *a4 = 1;
LABEL_6:

  return v9;
}

BOOL sub_4588(id a1, CAFilter *a2)
{
  v2 = [(CAFilter *)a2 name];
  v3 = [v2 isEqualToString:@"InvertColorsDarkModeWindowFilter"];

  return v3;
}

BOOL sub_45CC(id a1, CAFilter *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(CAFilter *)a2 name:a3];
  v5 = [v4 isEqualToString:@"InvertColorsDarkModeWindowFilter"];

  return v5;
}

uint64_t sub_4EEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() description];
  [v4 setValidationTargetName:v5];

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() description];
  [v4 setOverrideProcessName:v7];

  [v4 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

id sub_5248(uint64_t a1)
{
  v2 = +[AXSubsystemInvertColors sharedInstance];
  v3 = [v2 ignoreLogging];

  if ((v3 & 1) == 0)
  {
    v4 = +[AXSubsystemInvertColors identifier];
    v5 = AXLoggerForFacility();

    v6 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = AXColorizeFormatLog();
      v10 = *(a1 + 32);
      v8 = _AXStringForArgs();
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 138543362;
        v12 = v8;
        _os_log_impl(&dword_0, v5, v6, "%{public}@", buf, 0xCu);
      }
    }
  }

  return [*(a1 + 32) _initializeOverrides];
}

id sub_5390()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_834F8;
  v7 = qword_834F8;
  if (!qword_834F8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5FE4;
    v3[3] = &unk_446E8;
    v3[4] = &v4;
    sub_5FE4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_5458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_5FE4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_83500)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_6128;
    v4[4] = &unk_446C0;
    v4[5] = v4;
    v5 = off_44708;
    v6 = 0;
    qword_83500 = _sl_dlopen();
    v2 = v4[0];
    if (qword_83500)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXBinaryMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_206A8();
  }

  qword_834F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6128(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_83500 = result;
  return result;
}

void sub_619C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_75BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_75D4(uint64_t a1)
{
  [AXSafeClassFromString() _cartographicConfigurationForMapConfiguration:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  result = v6;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  return result;
}

id sub_A348(uint64_t a1)
{
  [*(a1 + 32) installSafeCategory:@"CALayerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UISwitchInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UISliderInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIKeyboardEmojiCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIKBKeyViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIInputSetHostViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIStatusBarItemViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIActivityGroupActivityCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UITextViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIStatusBar_ModernInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIStatusBarBatteryItemViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIBatteryViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIInteractiveHighlightEnvironmentInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UITableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UITableViewCellLayoutManagerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIStatusBarQuietModeItemViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UITabBarControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIListContentImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIRemoteKeyboardWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIActivityContentViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIPortalViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIStatusBarWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UISwipeActionStandardButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIHostedWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UITextEffectsWindowHostedInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"UIRemoteKeyboardWindowHostedInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIPointerContentEffectInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIContextMenuUIControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [*(a1 + 32) installSafeCategory:@"_UIContextMenuContainerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  v2 = *(a1 + 32);

  return [v2 installSafeCategory:@"UIVisualEffectViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

void sub_B0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B0C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_B0D8(uint64_t a1)
{
  v2 = [*(a1 + 32) layerForRenderFlags:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_C230(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 _accessibilityBoolValueForKey:@"InvertState"];
    if (v4 != UIAccessibilityIsInvertColorsEnabled())
    {
      v5 = +[AXSubsystemInvertColors sharedInstance];
      v6 = [v5 ignoreLogging];

      if ((v6 & 1) == 0)
      {
        v7 = +[AXSubsystemInvertColors identifier];
        v8 = AXLoggerForFacility();

        v9 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = AXColorizeFormatLog();
          v23 = [*(a1 + 32) _accessibilityBoolValueForKey:@"InvertState"];
          IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
          v22 = v3;
          v11 = _AXStringForArgs();
          if (os_log_type_enabled(v8, v9))
          {
            *buf = 138543362;
            v26 = v11;
            _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [v3 image];
      if (v12)
      {
        v13 = v12;
        v14 = [AXInvertColorsAppHelper invertImage:v12];

        if (v14)
        {
          [v3 _accessibilitySetBoolValue:UIAccessibilityIsInvertColorsEnabled() forKey:@"InvertState"];
          [v3 _accessibilitySetBoolValue:1 forKey:@"IsInvertingImage"];
          [v3 setImage:v14];
          [v3 _accessibilitySetBoolValue:0 forKey:@"IsInvertingImage"];
          v15 = +[AXSubsystemInvertColors sharedInstance];
          v16 = [v15 ignoreLogging];

          if ((v16 & 1) == 0)
          {
            v17 = +[AXSubsystemInvertColors identifier];
            v18 = AXLoggerForFacility();

            v19 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v18, v19))
            {
              v20 = AXColorizeFormatLog();
              v21 = _AXStringForArgs();
              if (os_log_type_enabled(v18, v19))
              {
                *buf = 138543362;
                v26 = v21;
                _os_log_impl(&dword_0, v18, v19, "%{public}@", buf, 0xCu);
              }
            }
          }

          *(*(*(a1 + 40) + 8) + 24) = 1;
        }
      }
    }
  }
}

id sub_C544(uint64_t a1)
{
  [*(a1 + 32) _axSetIgnoreNextAttributedText:1];
  [*(a1 + 32) setAttributedText:0];
  [*(a1 + 32) setAttributedText:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _axSetIgnoreNextAttributedText:0];
}

void sub_CD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_CD5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageView:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1152C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AXPerformSafeBlock();
}

id sub_115A4(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_materialLayer"];
  [v2 setReduceTransparencyEnabled:*(a1 + 40)];

  v3 = *(a1 + 32);
  if (*(a1 + 41) == 1)
  {

    return [v3 _invalidateAlphaTransformer];
  }

  else
  {

    return [v3 _setupAlphaTransformer];
  }
}

void sub_13CB0(uint64_t a1)
{
  v2 = +[UIColor whiteColor];
  objc_opt_class();
  v3 = *(a1 + 32);
  v4 = __UIAccessibilityCastAsClass();
  [v4 setTextColor:v2];
}

void sub_14D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_14DA0(uint64_t a1)
{
  result = [*(a1 + 32) isItemAtIndexPathAddItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_155D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 40));
  objc_destroyWeak((v12 - 72));
  _Unwind_Resume(a1);
}

id sub_1560C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained layer];
  [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v3];

  v4 = *(a1 + 32);

  return [v4 evaluateJavaScript:@"function removeFilter() { Array.prototype.forEach.call(document.querySelectorAll('img completionHandler:{picture, video'), function (img) { if (img.style.filter == 'invert(100%)') {img.style.filter = 'invert(0%)';} }) }removeFilter();", &stru_44868}];
}

void sub_1568C(id a1, id a2, NSError *a3)
{
  v3 = a3;
  v4 = AXLogInvertColors();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2075C(v3, v4);
  }
}

void sub_156E0(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *(*(*(a1 + 48) + 8) + 24) >= 0.25)
  {
    v3 = *(a1 + 32);
    v4 = AXInvertColorsDarkModeDetectionJavascript();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1580C;
    v8[3] = &unk_448D8;
    objc_copyWeak(&v11, (a1 + 56));
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 48);
    v9 = v6;
    v10 = v7;
    [v3 evaluateJavaScript:v4 completionHandler:v8];

    objc_destroyWeak(&v11);
  }

  else
  {
    v2 = AXLogInvertColors();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_207D4(a1);
    }
  }
}

void sub_1580C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained traitCollection];
  [v8 userInterfaceStyle];
  v9 = AXInvertColorsUserInterfaceStyleDescription();

  v10 = objc_loadWeakRetained((a1 + 56));
  [v10 overrideUserInterfaceStyle];
  v11 = AXInvertColorsUserInterfaceStyleDescription();

  v12 = AXLogInvertColors();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_loadWeakRetained((a1 + 56));
    v18 = [v17 URL];
    *v20 = 138413826;
    *&v20[4] = v17;
    *&v20[12] = 2112;
    *&v20[14] = v18;
    *&v20[22] = 2112;
    v21 = v9;
    *v22 = 2112;
    *&v22[2] = v11;
    *&v22[10] = 2112;
    *&v22[12] = v5;
    *&v22[20] = 2112;
    *&v22[22] = objc_opt_class();
    *&v22[30] = 2112;
    v23 = v6;
    v19 = *&v22[22];
    _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Pre-js: WKWebView %@ (%@) S %@, OS %@, supports dark: %@[%@] -> %@", v20, 0x48u);
  }

  if (!v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v5 BOOLValue] & 1) != 0 || objc_msgSend(*(a1 + 32), "_accessibilitySubclassSupportsDarkMode", *v20, *&v20[16], v21, *v22, *&v22[16], v23))
  {
    v13 = AXLogInvertColors();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_20908((a1 + 56));
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = objc_loadWeakRetained((a1 + 56));
    v15 = [v14 layer];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:v15];

    v16 = AXLogInvertColors();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_20868((a1 + 56));
    }

    [*(a1 + 32) evaluateJavaScript:@"function addFilter() { Array.prototype.forEach.call(document.querySelectorAll('img completionHandler:{picture, video'), function (img) { img.style.filter = 'invert(100%)';}) }addFilter();", &stru_448B0}];
  }

  *(*(*(a1 + 48) + 8) + 24) = CFAbsoluteTimeGetCurrent();
}

void sub_15AB0(id a1, id a2, NSError *a3)
{
  v3 = a3;
  v4 = AXLogInvertColors();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_209A8(v3, v4);
  }
}

BOOL sub_16098(id a1, UIView *a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_166A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_166D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityBoolValueForKey:@"galleryVisible"];

  return v2 ^ 1;
}

uint64_t sub_16718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityBoolValueForKey:@"galleryVisible"];

  return v2 ^ 1;
}

BOOL sub_16C54(id a1, UIView *a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIView *)v3 isHidden])
  {
    [(UIView *)v3 alpha];
    v4 = v5 > 0.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_16CC0(id a1, UIView *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  NSClassFromString(@"MPVideoView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_19494(id a1)
{
  v1 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  [v1 invalidateSnapshotsForLocations:3];
}

void sub_1B568(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  byte_83550 = [v2 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"];

  v4 = +[NSBundle mainBundle];
  v3 = [v4 bundleIdentifier];
  byte_83551 = [v3 isEqualToString:@"com.apple.ambient.AmbientUI.InfographPoster"];
}

BOOL sub_1B974(id a1, UIView *a2)
{
  v2 = a2;
  AXSafeClassFromString();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1BA14(id a1)
{
  v2 = +[NSBundle mainBundle];
  v1 = [v2 bundleIdentifier];
  byte_83560 = [v1 isEqualToString:@"com.apple.mobileslideshow.photospicker"];
}

void sub_1C6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1C6DC(uint64_t a1)
{
  result = [*(a1 + 32) color];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1CA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1CA54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1CA6C(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1CABC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1D138(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) safeUIViewForKey:{@"collectionView", 0}];
  v3 = [v2 safeArrayForKey:@"visibleCells"];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _axRefreshInvertColorsForCell:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1DA6C(id a1, UIView *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  [(UIView *)v4 setAccessibilityIgnoresInvertColors:_AXSInvertColorsEnabledGlobalCached() != 0];
}

void sub_1E2B0(uint64_t a1)
{
  v2 = objc_alloc_init(AXInvertColorsManager);
  v3 = qword_83578;
  qword_83578 = v2;

  v4 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_20BAC(a1);
  }
}

void sub_1E4DC(id a1)
{
  v1 = AXLogInvertColors();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_20C38();
  }

  +[AXInvertColorsManager toggleFirstLayerWindowsInvert];
  +[AXInvertColorsManager _traverseAppForInvertColors];
}

void sub_1E534(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_1E6E8, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, *(a1 + 32), sub_1E6E8, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v4, *(a1 + 32), sub_1E6E8, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0);
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = _UIWindowDidAttachContextNotification;
  v7 = +[NSOperationQueue mainQueue];
  v8 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:&stru_44B70];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = AXUIServerModifiedWindowInterfaceStyle;
  v11 = +[NSOperationQueue mainQueue];
  v12 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:&stru_44B90];

  v13 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v13, *(a1 + 32), sub_1E6E8, UIKeyboardWillShowNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v14 = CFNotificationCenterGetLocalCenter();
  v15 = *(a1 + 32);
  v16 = _UIScreenUserInterfaceStyleDidChangeForSmartInvertNotification;

  CFNotificationCenterAddObserver(v14, v15, sub_1E6E8, v16, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_1E6E8()
{
  if (CFAbsoluteTimeGetCurrent() - *&qword_83588 < 0.3)
  {
    v0 = AXLogInvertColors();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      sub_20C78();
    }
  }

  qword_83588 = CFAbsoluteTimeGetCurrent();
  return AXPerformBlockAsynchronouslyOnMainThread();
}

void sub_1E760(id a1, NSNotification *a2)
{
  v2 = AXLogInvertColors();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "New window appeared, applying IC status update", v3, 2u);
  }

  sub_1E6E8();
}

void sub_1E7CC(id a1, NSNotification *a2)
{
  v2 = AXLogInvertColors();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "AXUIServer modified an interface style, applying IC status update", v3, 2u);
  }

  sub_1E6E8();
}

int64_t sub_1E96C(id a1, Class a2, Class a3)
{
  v4 = [NSNumber numberWithInteger:[(objc_class *)a3 loadPriority]];
  v5 = [NSNumber numberWithInteger:[(objc_class *)a2 loadPriority]];
  v6 = [v4 compare:v5];

  return v6;
}

BOOL sub_1EDE4(id a1, CAFilter *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = [(CAFilter *)v5 name];
  if ([v6 isEqualToString:@"InvertColorsDoubleInvert"])
  {
  }

  else
  {
    v7 = [(CAFilter *)v5 name];
    v8 = [v7 isEqualToString:@"UIInvertColorsDoubleInvertPrivateKey"];

    if (!v8)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  v9 = 1;
  *a4 = 1;
LABEL_6:

  return v9;
}

void sub_1EFDC(id a1, id a2)
{
  v2 = a2;
  if (![AXInvertColorsManager objectIsOnCarScreen:?])
  {
    [v2 _accessibilityLoadInvertColors];
    [AXInvertColorsAppHelper toggleInvertColors:v2];
  }
}

void sub_1F414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1F43C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 screen];
  if ([v6 _isCarScreen])
  {
  }

  else
  {
    v7 = [v5 screen];
    v8 = [v7 _isCarInstrumentsScreen];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 traitCollection];
      [v9 userInterfaceStyle];
      v10 = AXInvertColorsUserInterfaceStyleDescription();

      [v5 overrideUserInterfaceStyle];
      v11 = AXInvertColorsUserInterfaceStyleDescription();
      v12 = AXLogInvertColorsTraversal();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v5 description];
        v18 = [v17 substringToIndex:70];
        v23 = 134219266;
        v24 = a3;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v11;
        v31 = 1024;
        v32 = [AXInvertColorsAppHelper hasInvertFilter:v5];
        v33 = 1024;
        v34 = [v5 accessibilityIgnoresInvertColors];
        _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "\tBEFORE <- (%lu) window: %@, S: %@, OS: %@, IF: %d, IC: %d", &v23, 0x36u);
      }

      *(*(*(a1 + 32) + 8) + 24) = [AXInvertColorsManager toggleDarkModeWindowInvert:v5];
      v13 = [v5 traitCollection];
      [v13 userInterfaceStyle];
      v14 = AXInvertColorsUserInterfaceStyleDescription();

      [v5 overrideUserInterfaceStyle];
      v15 = AXInvertColorsUserInterfaceStyleDescription();

      v16 = AXLogInvertColorsTraversal();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v5 description];
        v20 = [v19 substringToIndex:70];
        v21 = [AXInvertColorsAppHelper hasInvertFilter:v5];
        v22 = [v5 accessibilityIgnoresInvertColors];
        v23 = 134219266;
        v24 = a3;
        v25 = 2112;
        v26 = v20;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        v31 = 1024;
        v32 = v21;
        v33 = 1024;
        v34 = v22;
        _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "\tAFTER  -> (%lu) window: %@, S: %@, OS: %@, IF: %d, IC: %d", &v23, 0x36u);
      }
    }
  }
}

void sub_1F860(id a1, UIWindow *a2, unint64_t a3, BOOL *a4)
{
  v7 = a2;
  v4 = [(UIWindow *)v7 screen];
  if ([v4 _isCarScreen])
  {
  }

  else
  {
    v5 = [(UIWindow *)v7 screen];
    v6 = [v5 _isCarInstrumentsScreen];

    if ((v6 & 1) == 0)
    {
      NSClassFromString(@"_UIHostedWindow");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [AXInvertColorsManager toggleFirstLayerWindowInvert:v7];
      }
    }
  }
}

void sub_1FEF0(id a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 0, 1u);
}

void sub_1FF30(id a1)
{
  v1 = AXLogInvertColors();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_20E14();
  }

  v2 = [UIApp _accessibilityValueForKey:@"AXInvertColorsTraversalTimer"];
  [v2 doubleValue];
  v4 = v3;

  v5 = [UIApp _accessibilityValueForKey:@"AXInvertColorsDarkModePref"];
  v6 = [v5 BOOLValue];

  v7 = [UIApp _accessibilityValueForKey:@"AXInvertColorsPref"];
  v8 = [v7 BOOLValue];

  if (CFAbsoluteTimeGetCurrent() - v4 <= 0.5 && v6 == AXInvertColorsIsSystemWideDarkModeEnabled() && _AXSInvertColorsEnabled() == v8)
  {
    v9 = AXLogInvertColors();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_20E9C();
    }
  }

  else
  {
    +[AXInvertColorsManager _traverseAppForInvertColors];
    v10 = UIApp;
    v11 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v10 _accessibilitySetRetainedValue:v11 forKey:@"AXInvertColorsTraversalTimer"];

    v12 = UIApp;
    v9 = [NSNumber numberWithBool:AXInvertColorsIsSystemWideDarkModeEnabled()];
    [v12 _accessibilitySetRetainedValue:v9 forKey:@"AXInvertColorsDarkModePref"];
  }

  v13 = AXLogInvertColors();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_20F24();
  }

  +[AXInvertColorsManager toggleDarkModeWindowsInvert];
  +[AXInvertColorsManager toggleFirstLayerWindowsInvert];
}

void sub_206D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Notifying invert colors after switching tabs on %@", &v2, 0xCu);
}

void sub_2075C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Applied dark mode image reverse filter: %@", &v2, 0xCu);
}

void sub_207D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  sub_15C58();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_20868(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = [WeakRetained URL];
  sub_15C40();
  sub_15C58();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_20908(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v2 = [WeakRetained URL];
  sub_15C40();
  sub_15C58();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_209A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Applied dark mode image reinstate filter: %@", &v2, 0xCu);
}

void sub_20A20(void *a1)
{
  v1 = [a1 URL];
  v2 = [v1 absoluteString];
  sub_15C40();
  sub_15C58();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_20AC8(void *a1)
{
  v1 = [a1 URL];
  v2 = [v1 absoluteString];
  sub_15C40();
  sub_15C58();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_20BAC(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_20104();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_20E14()
{
  AXInvertColorsIsSystemWideDarkModeEnabled();
  _AXSInvertColorsEnabled();
  sub_20110();
  sub_15C58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_20E9C()
{
  AXInvertColorsIsSystemWideDarkModeEnabled();
  _AXSInvertColorsEnabled();
  sub_20110();
  sub_15C58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_20F24()
{
  v0 = +[NSBundle mainBundle];
  v6 = [v0 bundleIdentifier];
  AXInvertColorsIsSystemWideDarkModeEnabled();
  sub_15C58();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}