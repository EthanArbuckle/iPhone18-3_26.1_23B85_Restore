void EKUILogInitIfNeeded()
{
  if (EKUILogInitIfNeeded_onceToken != -1)
  {
    EKUILogInitIfNeeded_cold_1();
  }
}

void __EKUILogInitIfNeeded_block_invoke()
{
  v0 = os_log_create(EKUILogSubsystem, "EventKitUI");
  v1 = kEKUILogHandle;
  kEKUILogHandle = v0;

  v2 = os_log_create(EKUILogSubsystem, "EventEditor");
  v3 = kEKUILogEventEditorHandle;
  kEKUILogEventEditorHandle = v2;

  v4 = os_log_create(EKUILogSubsystem, "LocationSearch");
  v5 = kEKUILogLocationSearchHandle;
  kEKUILogLocationSearchHandle = v4;

  v6 = os_log_create(EKUILogSubsystem, "Invitees");
  v7 = kEKUILogInviteesHandle;
  kEKUILogInviteesHandle = v6;
}

BOOL EKUIDeviceCanTransform()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom] == 1;

  return v2;
}

id CalendarAppTintColor()
{
  v0 = CalendarAppTintColor___AppTintColor;
  if (!CalendarAppTintColor___AppTintColor)
  {
    v1 = [MEMORY[0x1E69DC888] systemRedColor];
    v2 = CalendarAppTintColor___AppTintColor;
    CalendarAppTintColor___AppTintColor = v1;

    v0 = CalendarAppTintColor___AppTintColor;
  }

  return v0;
}

void EKUIPushFallbackSizingContextWithViewHierarchy(void *a1)
{
  v16 = a1;
  if (v16)
  {
    EKUIMultiwindowAssert(1, @"Attempt to push nil window as fallback sizing context", v1, v2, v3, v4, v5, v6, v15);
    v7 = +[SizeContext sharedInstance];
    [v7 pushContextWithViewHierarchy:v16];
  }

  else
  {
    v7 = +[SizeContext sharedInstance];
    v8 = [v7 hasViewHierarchyForCurrentContext];
    EKUIMultiwindowAssert(v8, @"Attempt to push nil window as fallback sizing context", v9, v10, v11, v12, v13, v14, v15);
  }
}

void EKUIMultiwindowAssert(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if (_shouldAssertOnUnknownWindow_onceToken != -1)
  {
    [SizeContext popContextFromViewHierarchy:];
  }

  if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
    if ((a1 & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"EKUIDeviceCapabilities assertion failed: %@", v11}];
    }
  }
}

void ___shouldAssertOnUnknownWindow_block_invoke()
{
  v0 = [MEMORY[0x1E6993470] sharedPreferences];
  _shouldAssertOnUnknownWindow_shouldAssert = [v0 enableMultiwindowAsserts];
}

id EKUIMainWindowForMultiwindowError()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  v1 = [v0 viewHierarchyOrOverride];

  return v1;
}

id _rootHierarchyForViewHierarchy(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = v1;
LABEL_4:
    v3 = v2;
    goto LABEL_5;
  }

  v7 = [v1 ekui_rootViewHierarchy];

  if (v7)
  {
    v2 = [v1 ekui_rootViewHierarchy];
    goto LABEL_4;
  }

  v8 = +[SizeContext sharedInstance];
  v3 = [v8 viewHierarchyForCurrentContext];

LABEL_5:
  if (_shouldAssertOnUnknownWindow_onceToken != -1)
  {
    [SizeContext popContextFromViewHierarchy:];
  }

  if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
  {
    if (!v3)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"EKUIDeviceCapabilities assertion failed: %@", @"_windowForView: Unable to find window: is the view not connected to a view hierarchy?"}];
    }

    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    v4 = v3;
    goto LABEL_12;
  }

  v4 = EKUIMainWindowForMultiwindowError();
LABEL_12:
  v5 = v4;

  return v5;
}

double EKUICurrentWindowHeightWithViewHierarchy(void *a1)
{
  v1 = _rootHierarchyForViewHierarchy(a1);
  [v1 ekui_height];
  v3 = v2;

  return v3;
}

uint64_t EKUICurrentWindowSizeParadigmForViewHierarchy(void *a1)
{
  v1 = a1;
  v2 = EKUICurrentWindowWidthWithViewHierarchy(v1);
  v3 = EKUICurrentWindowHeightWithViewHierarchy(v1);

  return EKUIWindowSizeParadigmForWindowSize(v2, v3);
}

double EKUICurrentWindowWidthWithViewHierarchy(void *a1)
{
  v1 = _rootHierarchyForViewHierarchy(a1);
  [v1 ekui_width];
  v3 = v2;

  return v3;
}

uint64_t EKUIWindowSizeParadigmForWindowSize(double a1, double a2)
{
  if (a1 + -1764.0 > -0.001)
  {
    return 0x40000000;
  }

  if (a1 + -1366.0 > -0.001)
  {
    return 0x4000;
  }

  if (a1 + -1194.0 > -0.001)
  {
    return 0x200000;
  }

  if (a1 + -1112.0 > -0.001)
  {
    return 0x10000;
  }

  if (a1 + -1024.0 > -0.001)
  {
    v3 = a2 + -1366.0 <= -0.001;
    v4 = 4096;
    v5 = 0x2000;
    goto LABEL_11;
  }

  if (a1 + -956.0 > -0.001 && 440.0 - a2 > -0.001 || a1 + -932.0 > -0.001 && 430.0 - a2 > -0.001)
  {
    return 0x20000000;
  }

  if (a1 + -926.0 > -0.001 && 428.0 - a2 > -0.001 || a1 + -912.0 > -0.001 && 420.0 - a2 > -0.001)
  {
    return 0x2000000;
  }

  v6 = 414.0 - a2;
  if (a1 + -896.0 > -0.001 && v6 > -0.001)
  {
    return 0x80000;
  }

  if (a1 + -874.0 > -0.001 && 402.0 - a2 > -0.001 || a1 + -852.0 > -0.001 && 393.0 - a2 > -0.001)
  {
    return 0x8000000;
  }

  if (a1 + -844.0 > -0.001 && 390.0 - a2 > -0.001)
  {
    return 0x800000;
  }

  if (a1 + -834.0 > -0.001)
  {
    v3 = a2 + -1194.0 <= -0.001;
    v4 = 0x8000;
    v5 = 0x100000;
    goto LABEL_11;
  }

  if (a1 + -768.0 > -0.001)
  {
    return 2048;
  }

  if (a1 + -736.0 > -0.001 && v6 > -0.001)
  {
    return 1024;
  }

  result = 512;
  if (a1 + -700.0 <= -0.001 && a1 + -678.0 <= -0.001)
  {
    result = 256;
    if (a1 + -667.0 <= -0.001 && a1 + -568.0 <= -0.001)
    {
      if (a1 + -512.0 > -0.001)
      {
        return 128;
      }

      if (a1 + -480.0 > -0.001)
      {
        return 64;
      }

      v7 = a1 + -440.0 > -0.001;
      if (956.0 - a2 <= -0.001)
      {
        v7 = 0;
      }

      result = 0x10000000;
      if (a1 + -430.0 <= -0.001 && !v7)
      {
        if (a1 + -428.0 > -0.001 || a1 + -420.0 > -0.001 && 912.0 - a2 > -0.001)
        {
          return 0x1000000;
        }

        if (a1 + -414.0 > -0.001)
        {
          v3 = a2 + -896.0 <= -0.001;
          v4 = 32;
          v5 = 0x40000;
LABEL_11:
          if (v3)
          {
            return v4;
          }

          else
          {
            return v5;
          }
        }

        v8 = a1 + -402.0 > -0.001;
        if (874.0 - a2 <= -0.001)
        {
          v8 = 0;
        }

        result = 0x4000000;
        if (a1 + -393.0 <= -0.001 && !v8)
        {
          if (a1 + -390.0 > -0.001)
          {
            return 0x400000;
          }

          if (a1 + -375.0 <= -0.001)
          {
            if (a1 + -320.0 <= -0.001)
            {
              return -1;
            }

            if (a2 + -768.0 > -0.001)
            {
              return 8;
            }

            v3 = a2 + -568.0 <= -0.001;
            v4 = 2;
            v5 = 4;
            goto LABEL_11;
          }

          if (vabdd_f64(812.0, a2) >= 2.22044605e-16)
          {
            return 16;
          }

          else
          {
            return 0x20000;
          }
        }
      }
    }
  }

  return result;
}

uint64_t EKUIWindowInterfaceParadigmForWindowSize(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = EKUIWindowSizeParadigmForWindowSize(a2, a3);
  if (!v5 && (v6 & 0x154400BE) != 0)
  {
    v7 = 2;
    goto LABEL_29;
  }

  if (!v5 && (v6 & 0x140) != 0)
  {
    v7 = 4;
    goto LABEL_29;
  }

  if (!v5 && (v6 & 0x22880400) != 0)
  {
    v7 = 8;
    goto LABEL_29;
  }

  if ((*&v6 & 0x31FA00) != 0 && v5 == 0)
  {
    v7 = 16;
  }

  else
  {
    v7 = -1;
  }

  if (v5)
  {
    v9 = _rootHierarchyForViewHierarchy(v5);
    if ([v9 ekui_horizontalSizeClass] == 1)
    {
      v7 = 4;
      v10 = 2;
    }

    else
    {
      if ([v9 ekui_horizontalSizeClass] != 2)
      {
        v7 = -1;
LABEL_28:

        goto LABEL_29;
      }

      v7 = 8;
      v10 = 16;
    }

    v11 = [v9 ekui_verticalSizeClass];
    if (v11 == 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = -1;
    }

    if (v11 != 1)
    {
      v7 = v12;
    }

    goto LABEL_28;
  }

LABEL_29:

  return v7;
}

uint64_t _EKUIActiveWidthSizeClass(void *a1)
{
  v1 = a1;
  v2 = EKUICurrentWindowInterfaceParadigm(v1);
  if (v2 == -1)
  {
    v4 = _rootHierarchyForViewHierarchy(v1);
    v3 = [v4 ekui_horizontalSizeClass];
  }

  else if (v2 == 16 || v2 == 8)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t EKUICurrentWindowInterfaceParadigm(void *a1)
{
  v1 = a1;
  v2 = EKUICurrentWindowSize(v1);
  v4 = EKUIWindowInterfaceParadigmForWindowSize(v1, v2, v3);

  return v4;
}

double EKUICurrentWindowSize(void *a1)
{
  v1 = _rootHierarchyForViewHierarchy(a1);
  [v1 ekui_size];
  v3 = v2;

  return v3;
}

id CalendarAppBarButtonItemTintColor()
{
  if (MEMORY[0x1D38B98D0]())
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    CalendarAppTintColor();
  }
  v0 = ;

  return v0;
}

uint64_t EKUIUseLargeFormatPhoneUI()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  v1 = [v0 viewHierarchyOrOverride];

  v2 = EKUICurrentWindowSizeParadigmForViewHierarchy(v1);
  result = 1;
  if (v2 > 0xFFFFFF)
  {
    if (v2 > 0x7FFFFFF)
    {
      v4 = v2 == 0x8000000 || v2 == 0x10000000;
      v5 = 0x20000000;
    }

    else
    {
      v4 = v2 == 0x1000000 || v2 == 0x2000000;
      v5 = 0x4000000;
    }

    if (!v4 && v2 != v5)
    {
      return 0;
    }
  }

  else if (v2 >= 0x80000)
  {
    if (v2 != 0x80000 && v2 != 0x400000 && v2 != 0x800000)
    {
      return 0;
    }
  }

  else if (v2 != 32 && v2 != 1024 && v2 != 0x40000)
  {
    return 0;
  }

  return result;
}

void EKUIPopFallbackSizingContextWithViewHierarchy(void *a1)
{
  v16 = a1;
  if (v16)
  {
    EKUIMultiwindowAssert(1, @"Attempt to pop nil window as fallback sizing context", v1, v2, v3, v4, v5, v6, v15);
    v7 = +[SizeContext sharedInstance];
    [v7 popContextFromViewHierarchy:v16];
  }

  else
  {
    v7 = +[SizeContext sharedInstance];
    v8 = [v7 hasViewHierarchyForCurrentContext];
    EKUIMultiwindowAssert(v8, @"Attempt to pop nil window as fallback sizing context", v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t CalRoundToScreenScale(double a1)
{
  if (a1 != a1)
  {
    return UIRoundToViewScale();
  }

  return result;
}

uint64_t CalTimeDirectionIsLeftToRight()
{
  if (CalTimeDirectionIsLeftToRight_onceToken != -1)
  {
    CalTimeDirectionIsLeftToRight_cold_1();
  }

  return __calendarDirectionLeftToRight;
}

void __CalTimeDirectionIsLeftToRight_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  __calendarDirectionLeftToRight = [v0 _calendarDirection] == 0;

  LocalCenter = CFNotificationCenterGetLocalCenter();
  v2 = *MEMORY[0x1E695E6E0];

  CFNotificationCenterAddObserver(LocalCenter, 0, _LocaleChanged, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

double _EKUIScaleFactor()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

double CalOnePixelInPoints()
{
  v0 = CalOnePixelInPoints___scale;
  if (*&CalOnePixelInPoints___scale == -1.0)
  {
    *&v0 = _EKUIScaleFactor();
    CalOnePixelInPoints___scale = v0;
  }

  return 1.0 / *&v0;
}

double CalRoundRectToScreenScale(double a1, double a2, double a3, double a4)
{
  v7 = a1;
  if (a1 != a1)
  {
    UIRoundToViewScale();
    v7 = v8;
  }

  if (a2 != a2)
  {
    UIRoundToViewScale();
  }

  if (a3 != a3)
  {
    UIRoundToViewScale();
  }

  if (a4 != a4)
  {
    UIRoundToViewScale();
  }

  return v7;
}

uint64_t EKUIHasFallbackSizingContext()
{
  v0 = +[SizeContext sharedInstance];
  v1 = [v0 hasViewHierarchyForCurrentContext];

  return v1;
}

NSBundle *EventKitUIBundle(void)
{
  if (EventKitUIBundle_onceToken != -1)
  {
    EventKitUIBundle_cold_1();
  }

  v1 = EventKitUIBundle_bundle;

  return v1;
}

double CalCeilToScreenScale(double a1)
{
  v2 = CalCeilToScreenScale___scale;
  if (*&CalCeilToScreenScale___scale == -1.0)
  {
    *&v2 = _EKUIScaleFactor();
    CalCeilToScreenScale___scale = v2;
  }

  if (a1 != 0.0)
  {
    return ceil(*&v2 * a1) / *&v2;
  }

  return a1;
}

void __EventKitUIBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.eventkitui"];
  v1 = EventKitUIBundle_bundle;
  EventKitUIBundle_bundle = v0;
}

double EKUIWidthForWindowSizeParadigm(uint64_t a1)
{
  result = 320.0;
  if (a1 >= 0x20000)
  {
    if (a1 > 0xFFFFFF)
    {
      if (a1 <= 0x7FFFFFF)
      {
        switch(a1)
        {
          case 0x1000000:
            return 428.0;
          case 0x2000000:
            return 926.0;
          case 0x4000000:
            return 393.0;
        }
      }

      else if (a1 > 0x1FFFFFFF)
      {
        if (a1 == 0x20000000)
        {
          return 932.0;
        }

        else if (a1 == 0x40000000)
        {
          return 1764.0;
        }
      }

      else if (a1 == 0x8000000)
      {
        return 852.0;
      }

      else if (a1 == 0x10000000)
      {
        return 430.0;
      }

      return result;
    }

    if (a1 < 0x100000)
    {
      if (a1 != 0x20000)
      {
        if (a1 != 0x40000)
        {
          v3 = a1 == 0x80000;
          v2 = 896.0;
LABEL_31:
          if (v3)
          {
            return v2;
          }

          return result;
        }

        return 414.0;
      }

      return 375.0;
    }

    if (a1 >= 0x400000)
    {
      if (a1 == 0x400000)
      {
        return 390.0;
      }

      if (a1 == 0x800000)
      {
        return 844.0;
      }

      return result;
    }

    if (a1 != 0x100000)
    {
      if (a1 == 0x200000)
      {
        return 1194.0;
      }

      return result;
    }

    return 834.0;
  }

  if (a1 > 1023)
  {
    if (a1 < 0x2000)
    {
      if (a1 == 1024)
      {
        return 736.0;
      }

      if (a1 == 2048)
      {
        return 768.0;
      }

      if (a1 != 4096)
      {
        return result;
      }

      return 1024.0;
    }

    if (a1 < 0x8000)
    {
      if (a1 != 0x2000)
      {
        if (a1 == 0x4000)
        {
          return 1366.0;
        }

        return result;
      }

      return 1024.0;
    }

    if (a1 != 0x8000)
    {
      if (a1 == 0x10000)
      {
        return 1112.0;
      }

      return result;
    }

    return 834.0;
  }

  if (a1 <= 63)
  {
    if (a1 != -1)
    {
      if (a1 != 16)
      {
        if (a1 != 32)
        {
          return result;
        }

        return 414.0;
      }

      return 375.0;
    }

    if (_shouldAssertOnUnknownWindow_onceToken != -1)
    {
      [SizeContext popContextFromViewHierarchy:];
    }

    if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"EKUIDeviceCapabilities assertion failed: %@", @"EKUIWidthForWindowSizeParadigm: Unable to find window width for paradigm"}];
    }

    return 1.84467441e19;
  }

  if (a1 <= 255)
  {
    v2 = 480.0;
    if (a1 == 128)
    {
      result = 512.0;
    }

    v3 = a1 == 64;
    goto LABEL_31;
  }

  if (a1 == 256)
  {
    return 568.0;
  }

  if (a1 == 512)
  {
    return 700.0;
  }

  return result;
}

uint64_t CalInterfaceIsLeftToRight()
{
  if (CalInterfaceIsLeftToRight_onceToken != -1)
  {
    CalInterfaceIsLeftToRight_cold_1();
  }

  return _leftToRight;
}

void __CalInterfaceIsLeftToRight_block_invoke()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  _leftToRight = [v0 layoutDirectionOrOverride] == 0;
}

void sub_1D3409AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

id CalendarAppCircleNonTodayBGColor()
{
  if (CalendarAppCircleNonTodayBGColor_onceToken != -1)
  {
    CalendarAppCircleNonTodayBGColor_cold_1();
  }

  v1 = CalendarAppCircleNonTodayBGColor__color;

  return v1;
}

void __CalendarAppCircleNonTodayBGColor_block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v3 = EventKitUIBundle();
  v1 = [v0 colorNamed:@"CalendarAppCircleNonTodayBGColor" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = CalendarAppCircleNonTodayBGColor__color;
  CalendarAppCircleNonTodayBGColor__color = v1;
}

void __CalendarAppCircleTextColor_block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v3 = EventKitUIBundle();
  v1 = [v0 colorNamed:@"CalendarAppCircleTextColor" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = CalendarAppCircleTextColor__color;
  CalendarAppCircleTextColor__color = v1;
}

id CalendarAppCircleTextColor()
{
  if (CalendarAppCircleTextColor_onceToken != -1)
  {
    CalendarAppCircleTextColor_cold_1();
  }

  v1 = CalendarAppCircleTextColor__color;

  return v1;
}

BOOL EKUIPrefersLargerTextThanDefault(void *a1)
{
  if (a1)
  {
    v1 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v2 = +[EKUIApplicationExtensionOverrides shared];
    v1 = [v2 preferredContentSizeCategoryOrOverride];
  }

  v3 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC70]) == NSOrderedDescending;

  return v3;
}

id WeekendTextColor()
{
  v0 = WeekendTextColor_sWeekendTextColor;
  if (!WeekendTextColor_sWeekendTextColor)
  {
    v1 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v2 = WeekendTextColor_sWeekendTextColor;
    WeekendTextColor_sWeekendTextColor = v1;

    v0 = WeekendTextColor_sWeekendTextColor;
  }

  return v0;
}

BOOL EKUIUsesLargeTextLayout(void *a1)
{
  if (a1)
  {
    v1 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v2 = +[EKUIApplicationExtensionOverrides shared];
    v1 = [v2 preferredContentSizeCategoryOrOverride];
  }

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v1);

  return IsAccessibilityCategory;
}

void sub_1D340C07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double EKUIScaleFactor()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

double CalOffsetToCenterNumberWithFont(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 pointSize];
  if (v5 < 18.0)
  {
    if (([v3 isEqualToString:@"1"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"2") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"4") & 1) == 0)
    {
      v6 = 0.0;
      if (![v3 isEqualToString:@"11"])
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v9 scale];
    v6 = -1.0 / v10;

    goto LABEL_13;
  }

  [v4 pointSize];
  v6 = 0.0;
  if (v7 >= 21.0)
  {
    goto LABEL_13;
  }

  if (([v3 isEqualToString:@"1"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"4"))
  {
    UIRoundToViewScale();
    v6 = v8;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"3"])
  {
    goto LABEL_12;
  }

  if (([v3 isEqualToString:@"6"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"11"))
  {
    v12 = CalFloorToScreenScale___scale;
    if (*&CalFloorToScreenScale___scale == -1.0)
    {
      *&v12 = _EKUIScaleFactor();
      CalFloorToScreenScale___scale = v12;
    }

    v6 = -floor(*&v12 * 0.4) / *&v12;
  }

LABEL_13:

  return v6;
}

uint64_t CalendarLinkLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = CalendarLinkLibraryCore_frameworkLibrary;
  v5 = CalendarLinkLibraryCore_frameworkLibrary;
  if (!CalendarLinkLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E843FD68;
    v7 = *off_1E843FD78;
    v8 = 0;
    v3[3] = _sl_dlopen();
    CalendarLinkLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1D340E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CalFloorToScreenScale(double a1)
{
  v2 = CalFloorToScreenScale___scale;
  if (*&CalFloorToScreenScale___scale == -1.0)
  {
    *&v2 = _EKUIScaleFactor();
    CalFloorToScreenScale___scale = v2;
  }

  if (a1 != 0.0)
  {
    return floor(*&v2 * a1) / *&v2;
  }

  return a1;
}

uint64_t sub_1D3410734(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D3410744(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D3410758()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410790()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D34107C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D3410810()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D3410850()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D3410898()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_SSSgSo29EKRemoteViewPresentationStyleVIeggy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D341090C()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410944()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410980()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410A10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410A48()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D3410AA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D3410AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3410B24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3410B6C()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410BA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D3410BE8()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410C20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3410C60()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410C98()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D3410CE0()
{

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_1D35C12C0(*(v0 + 80), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D3410D5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3410DB0()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410DEC()
{
  MEMORY[0x1D38BA530](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D3410E64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D3410E9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D3410EE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return NSRequestConcreteImplementation();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return objc_opt_class();
}

id _StringWithLineEndingsRemoved(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\n"];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

void sub_1D3414978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _StringValuePartsForDateComponents(void *a1, void *a2, void *a3, int a4, uint64_t a5, char a6, id *a7, id *a8)
{
  v29 = a1;
  v14 = a2;
  v15 = a3;
  v16 = _CalendarForFormattingStrings();
  v17 = [v16 dateFromComponents:v29];

  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Start time zone format" value:@"%@ %@" table:0];

  if (v15)
  {
    v20 = CUIKShortTZString();
    a6 = 1;
    if (a4)
    {
LABEL_3:
      if (!a7)
      {
        goto LABEL_17;
      }

      v21 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      goto LABEL_5;
    }
  }

  else
  {
    v20 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (v14)
  {
    v22 = [v14 year];
    if (v22 == [v29 year])
    {
      v23 = [v14 month];
      if (v23 == [v29 month])
      {
        v24 = [v14 day];
        v25 = [v29 day];
        if (a7)
        {
          if (v24 == v25)
          {
            v26 = CUIKStringForTime();
            *a7 = v26;
            if (v20)
            {
              v26 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v19, v26, v20];
              *a7 = v26;
            }

            goto LABEL_16;
          }
        }
      }
    }
  }

  if (a7)
  {
    v26 = *a7;
LABEL_16:
    if (v26)
    {
      goto LABEL_17;
    }

    if (a6)
    {
      CUIKShortStringForDay();
    }

    else
    {
      CUIKStringForDateWithCommaAndYear();
    }
    v27 = ;
    *a7 = v27;

    if (!a8)
    {
      goto LABEL_17;
    }

    v28 = CUIKStringForTime();
    *a8 = v28;
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v19, v28, v20];
    a7 = a8;
LABEL_5:
    *a7 = v21;
  }

LABEL_17:
}

id _CalendarForFormattingStrings()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = [v0 timeZone];
  v2 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v3 = [v1 isEqualToTimeZone:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DFE8] calendarTimeZone];
    [v0 setTimeZone:v4];
  }

  return v0;
}

void sub_1D341C948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3423E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CFMutableSetRef pointerEqualitySetWithObjects(void *a1)
{
  v1 = a1;
  v2 = *(MEMORY[0x1E695E9F8] + 16);
  *&v6.version = *MEMORY[0x1E695E9F8];
  *&v6.release = v2;
  v6.equal = equalCallbackForPointerEquality;
  v6.hash = hashCallbackForPointerHash;
  v3 = CFSetCreateMutable(0, 0, &v6);
  v4 = v3;
  if (v1)
  {
    [(__CFSet *)v3 addObjectsFromArray:v1];
  }

  return v4;
}

void sub_1D342A618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a35);
  _Unwind_Resume(a1);
}

void sub_1D342B6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_1D342D050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x288]);
  objc_destroyWeak(&STACK[0x2B0]);
  objc_destroyWeak(&STACK[0x2E0]);
  objc_destroyWeak(&STACK[0x308]);
  objc_destroyWeak(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void sub_1D342F440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void scaleViewToFrame(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1)
  {
    v9 = a1;
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    MidX = CGRectGetMidX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    MidY = CGRectGetMidY(v18);
    [v9 frame];
    v12 = a4 / CGRectGetWidth(v19);
    [v9 frame];
    memset(&v16, 0, sizeof(v16));
    v13 = a5 / CGRectGetHeight(v20);
    [v9 transform];
    v14 = v16;
    CGAffineTransformScale(&v15, &v14, v12, v13);
    v16 = v15;
    [v9 setTransform:&v15];
    [v9 setCenter:{MidX, MidY}];
  }
}

id createImageViewFromView(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = captureImageFromView(a1, a2);
  v11 = createImageViewFromImage(v10, a3, a4, a5, a6);

  return v11;
}

id captureImageFromView(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 isHidden];
  [v3 setHidden:0];
  v5 = objc_opt_new();
  [v5 setScale:EKUIScaleFactor()];
  [v5 setOpaque:a2];
  [v5 setPreferredRange:1];
  v6 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v3 bounds];
  v9 = [v6 initWithSize:v5 format:{v7, v8}];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __captureImageFromView_block_invoke;
  v16 = &unk_1E843F2F8;
  v18 = a2;
  v17 = v3;
  v10 = v3;
  v11 = [v9 imageWithActions:&v13];
  [v10 setHidden:{v4, v13, v14, v15, v16}];

  return v11;
}

id createImageViewFromImage(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  [v9 scale];
  v11 = a2 * v10;
  [v9 scale];
  v13 = a3 * v12;
  [v9 scale];
  v15 = a4 * v14;
  [v9 scale];
  v17 = a5 * v16;
  v18 = [v9 CGImage];

  v25.origin.x = v11;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  v19 = CGImageCreateWithImageInRect(v18, v25);
  v20 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19];
  v22 = [v20 initWithImage:v21];

  if (v19)
  {
    CGImageRelease(v19);
  }

  [v22 setFrame:{a2, a3, a4, a5}];

  return v22;
}

void __captureImageFromView_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  if (*(a1 + 40) == 1)
  {
    v4 = MEMORY[0x1E69DD1B8];
    v5 = [*(a1 + 32) traitCollection];
    [v4 setCurrentTraitCollection:v5];

    v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v6 set];

    [*(a1 + 32) bounds];
    CGContextFillRect(v3, v9);
  }

  v7 = [*(a1 + 32) layer];
  [v7 renderInContext:v3];
}

id createSnapshotFromView(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = [v11 isHidden];
  [v11 setHidden:0];
  [v11 setNeedsDisplay];
  v13 = objc_alloc(MEMORY[0x1E69DCF70]);
  [v11 bounds];
  v14 = [v13 initWithFrame:?];
  [v14 captureSnapshotRect:v11 fromView:a2 withSnapshotType:{a3, a4, a5, a6}];
  [v11 setHidden:v12];

  return v14;
}

uint64_t synchronizationOffsetForLabels(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v30 = [v3 objectAtIndex:0];
  v7 = [v30 text];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v36;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [*(*(&v35 + 1) + 8 * v13) text];
        v16 = [v7 isEqualToString:v15];

        if (v16)
        {
          v26 = v8;
          v17 = v7;
          goto LABEL_22;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v28 = [v8 objectAtIndex:0];
  v17 = [v28 text];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = v5;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v32;
    while (2)
    {
      v23 = 0;
      v14 = v21 - v20;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = [*(*(&v31 + 1) + 8 * v23) text];
        v25 = [v17 isEqualToString:v24];

        if (v25)
        {
          v14 = v21 - v23;
          goto LABEL_21;
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v21 = v14;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_21:

  v26 = v28;
  v5 = v29;
LABEL_22:

  return v14;
}

id createCrossFadeViewsFromViews(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = -a3 & (-a3 >> 63);
  v8 = [v5 count];
  v9 = [v6 count];
  if (v8 <= v9 - a3)
  {
    v10 = v9 - a3;
  }

  else
  {
    v10 = v8;
  }

  v11 = _estimatedSpacing(v5);
  v65 = v12;
  v66 = v11;
  v13 = _estimatedSpacing(v6);
  v63 = v14;
  v64 = v13;
  v15 = v6;
  v16 = [v5 objectAtIndex:-a3 & (a3 >> 63)];
  v17 = (-a3 & (a3 >> 63)) + a3;
  if (v17 < 0 || v17 >= [v15 count] || (objc_msgSend(v15, "objectAtIndex:", v17), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [v15 objectAtIndex:0];
  }

  [v18 bounds];
  Width = CGRectGetWidth(v68);
  [v16 bounds];
  v20 = CGRectGetWidth(v69);
  [v18 bounds];
  Height = CGRectGetHeight(v70);
  [v16 bounds];
  v22 = CGRectGetHeight(v71);

  v23 = [v5 firstObject];
  [v23 frame];
  v61 = v25;
  v62 = v24;

  v26 = [v15 firstObject];
  [v26 frame];
  v59 = v28;
  v60 = v27;

  v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10 - v7];
  if (v10 > v7)
  {
    v57 = Height / v22;
    v58 = Width / v20;
    v55 = 1.0 / (Height / v22);
    v56 = 1.0 / (Width / v20);
    do
    {
      if (v7 < 0 || v7 >= [v5 count])
      {
        v30 = 0;
      }

      else
      {
        v30 = [v5 objectAtIndex:v7];
      }

      v31 = a3 + v7;
      if (a3 + v7 < 0 || v31 >= [v15 count])
      {
        v32 = 0;
      }

      else
      {
        v32 = [v15 objectAtIndex:a3 + v7];
      }

      if (!(v30 | v32))
      {
        goto LABEL_25;
      }

      if (v30)
      {
        [v30 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        if (!v32)
        {
          goto LABEL_23;
        }
      }

      else
      {
        [v32 bounds];
        v34 = v62 + v7 * v66;
        v36 = v61 + v7 * v65;
        v38 = v56 * v49;
        v40 = v55 * v50;
        if (!v32)
        {
LABEL_23:
          [v30 bounds];
          v42 = v60 + v31 * v64;
          v44 = v59 + v31 * v63;
          v46 = v58 * v51;
          v48 = v57 * v52;
          goto LABEL_24;
        }
      }

      [v32 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
LABEL_24:
      v53 = [[CrossFadeView alloc] initWithStartView:v30 endView:v32 startFrame:v34 endFrame:v36, v38, v40, v42, v44, v46, v48];
      [v29 addObject:v53];

LABEL_25:
      ++v7;
    }

    while (v10 != v7);
  }

  return v29;
}

double _estimatedSpacing(void *a1)
{
  v1 = a1;
  if ([v1 count] > 1)
  {
    v3 = [v1 objectAtIndex:0];
    v4 = [v1 objectAtIndex:1];
    [v4 frame];
    v6 = v5;
    [v3 frame];
    v2 = v6 - v7;
    [v4 frame];
    [v3 frame];
  }

  else
  {
    v2 = *MEMORY[0x1E695EFF8];
  }

  return v2;
}

id springAnimateViewPosition(void *a1, unsigned int a2, void *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a3;
  if (v9)
  {
    v11 = _createSpringOfBasicAnimationDependingOnDebugState(@"position", a2);
    [v9 center];
    v12 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
    [v11 setFromValue:v12];

    [v9 frame];
    v14 = a4 + v13 * 0.5;
    [v9 frame];
    v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{v14, a5 + v15 * 0.5}];
    [v11 setToValue:v16];

    if (v10)
    {
      [v11 setDelegate:v10];
    }

    v17 = [v9 layer];
    [v17 addAnimation:v11 forKey:@"position"];

    [v9 frame];
    [v9 setFrame:{a4, a5}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id _createSpringOfBasicAnimationDependingOnDebugState(void *a1, unsigned int a2)
{
  v3 = a1;
  UIAnimationDragCoefficient();
  if (v4 <= 1.5)
  {
    v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:v3];
    [v5 setMass:2.0];
    [v5 setStiffness:300.0];
    [v5 setDamping:400.0];
    v10 = _createTimingFunction(a2, v6, v7, v8, v9);
    [v5 setTimingFunction:v10];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E6979318]);
    [v5 setKeyPath:v3];
  }

  UIAnimationDragCoefficient();
  [v5 setDuration:v11 * 0.91];

  return v5;
}

id springAnimateViewBounds(void *a1, unsigned int a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = a3;
  if (v13)
  {
    v15 = _createSpringOfBasicAnimationDependingOnDebugState(@"bounds", a2);
    [v13 bounds];
    v16 = [MEMORY[0x1E696B098] valueWithCGRect:?];
    [v15 setFromValue:v16];

    v17 = [MEMORY[0x1E696B098] valueWithCGRect:{a4, a5, a6, a7}];
    [v15 setToValue:v17];

    if (v14)
    {
      [v15 setDelegate:v14];
    }

    v18 = [v13 layer];
    [v18 addAnimation:v15 forKey:@"bounds"];

    [v13 setBounds:{a4, a5, a6, a7}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id springAnimateViewFrame(void *a1, unsigned int a2, void *a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v13 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
    v15 = a3;
    v16 = a1;
    v17 = springAnimateViewBounds(v16, a2, 0, v13, v14, a6, a7);
    v18 = springAnimateViewPosition(v16, a2, v15, a4, a5);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id springAnimateViewAlpha(void *a1, unsigned int a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    v9 = _createSpringOfBasicAnimationDependingOnDebugState(@"opacity", a2);
    v10 = MEMORY[0x1E696AD98];
    [v7 alpha];
    v11 = [v10 numberWithDouble:?];
    [v9 setFromValue:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v9 setToValue:v12];

    UIAnimationDragCoefficient();
    [v9 setDuration:v13 * 0.91];
    if (v8)
    {
      [v9 setDelegate:v8];
    }

    v14 = [v7 layer];
    [v14 addAnimation:v9 forKey:@"opacity"];

    [v7 setAlpha:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id _createTimingFunction(unsigned int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 4)
  {
    [MEMORY[0x1E69793D0] functionWithName:@"default"];
  }

  else
  {
    LODWORD(a2) = 1046804326;
    LODWORD(a3) = 990057071;
    LODWORD(a4) = 1057860511;
    LODWORD(a5) = 1064563009;
    [MEMORY[0x1E69793D0] functionWithControlPoints:a2 :a3 :a4 :a5];
  }
  v5 = ;

  return v5;
}

void recursiveAnimationRemoveWithExclusion(id a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = a1 == v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (a1 && (v6 & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [a1 sublayers];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          recursiveAnimationRemoveWithExclusion(v12, v4);
          [v12 removeAllAnimations];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

void animateNavigationPreferringFRR(void *a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2 = a1;
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v1 _modifyAnimationsWithPreferredFrameRateRange:1572874 updateReason:v2 animations:{*&v4.minimum, *&v4.maximum, *&v4.preferred}];
}

id navigationAnimationsPreferringFRR(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __navigationAnimationsPreferringFRR_block_invoke;
  aBlock[3] = &unk_1E843F340;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __navigationAnimationsPreferringFRR_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __navigationAnimationsPreferringFRR_block_invoke_2;
  v9[3] = &unk_1E843F340;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1572874 updateReason:v9 animations:{v6, v7, v8}];
}

id dayViewScrollAnimationsPreferringFRR(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __dayViewScrollAnimationsPreferringFRR_block_invoke;
  aBlock[3] = &unk_1E843F340;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

void __dayViewScrollAnimationsPreferringFRR_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __dayViewScrollAnimationsPreferringFRR_block_invoke_2;
  v9[3] = &unk_1E843F340;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1572884 updateReason:v9 animations:{v6, v7, v8}];
}

id DisplayAddressForIdentity(void *a1)
{
  v1 = a1;
  v2 = [v1 emailAddress];

  if (v2)
  {
    v3 = [v1 emailAddress];
    goto LABEL_9;
  }

  v4 = [v1 phoneNumber];

  if (v4)
  {
    v5 = [MEMORY[0x1E6993460] sharedGenerator];
    v6 = [v1 phoneNumber];
    v7 = [v5 formattedStringForPhoneNumber:v6];
  }

  else
  {
    v8 = [v1 URL];
    v9 = [v8 cal_hasSchemeTel];

    if (!v9)
    {
      v5 = [v1 URL];
      v3 = [v5 resourceSpecifier];
      goto LABEL_8;
    }

    v5 = [MEMORY[0x1E6993460] sharedGenerator];
    v6 = [v1 URL];
    v7 = [v5 formattedStringForTelURL:v6];
  }

  v3 = v7;

LABEL_8:
LABEL_9:

  return v3;
}

id IdentityNameFromRecipient(void *a1)
{
  v1 = a1;
  v2 = [v1 displayString];
  v3 = [v2 length];

  if (v3)
  {
    [v1 displayString];
  }

  else
  {
    [v1 compositeName];
  }
  v4 = ;

  if ([v4 cal_isPhoneNumber])
  {
    v5 = [MEMORY[0x1E6993460] sharedGenerator];
    v6 = [MEMORY[0x1E6993460] normalizedPhoneNumber:v4];
    v7 = [v5 formattedStringForPhoneNumber:v6];

    v4 = v7;
  }

  v8 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v9 = [v4 stringByRemovingCharactersInSet:v8];

  return v9;
}

BOOL EKUIAttendeeUtils_ShouldConsiderAttendeeForConflictChecking(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 participantType] != 2;
  }

  else
  {
    v4 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "EKUIAttendeeUtils_ShouldConsiderAttendeeForConflictChecking";
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "'nil' participant given to function: [%s].  Will not attempt to check whether this attendee should be considered for conflict checking.", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

BOOL EKUIAttendeeUtils_ShouldCountAttendeeAsConflicted(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = ([MEMORY[0x1E6966988] showTypeAsBusy:a2] & 1) != 0 || objc_msgSend(v3, "participantStatus") == 3;
  }

  else
  {
    v5 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "EKUIAttendeeUtils_ShouldCountAttendeeAsConflicted";
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_ERROR, "'nil' participant given to function: [%s].  Will not compute conflicted state.", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

void sub_1D3435B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _CachedSizeForButton(void *a1)
{
  v1 = a1;
  if (_CachedSizeForButton_onceToken != -1)
  {
    _CachedSizeForButton_cold_1();
  }

  v2 = [v1 titleForState:{objc_msgSend(v1, "state")}];
  v3 = [_CachedSizeForButton___sizes objectForKeyedSubscript:v2];
  if (!v3)
  {
    v3 = objc_opt_new();
    [_CachedSizeForButton___sizes setObject:v3 forKeyedSubscript:v2];
  }

  v4 = [v1 titleLabel];
  v5 = [v4 font];

  v6 = [v3 objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = MEMORY[0x1E696B098];
    [v1 intrinsicContentSize];
    v6 = [v7 valueWithSize:?];
    [v3 setObject:v6 forKeyedSubscript:v5];
  }

  [v6 sizeValue];
  v9 = v8;

  return v9;
}

void sub_1D3440A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D34413A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3441538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

Class __getREMObjectIDClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMObjectID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMObjectIDClass_block_invoke_cold_1();
  }

  getREMObjectIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ReminderKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E843F540;
    v2 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    ReminderKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getREMStoreClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStoreClass_block_invoke_cold_1();
  }

  getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getREMRecurrenceRuleFormatterClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMRecurrenceRuleFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceRuleFormatterClass_block_invoke_cold_1();
  }

  getREMRecurrenceRuleFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id defaultDarkLineColor()
{
  v0 = defaultDarkLineColor_sDarkLineColor;
  if (!defaultDarkLineColor_sDarkLineColor)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithWhite:0.76 alpha:1.0];
    v2 = defaultDarkLineColor_sDarkLineColor;
    defaultDarkLineColor_sDarkLineColor = v1;

    v0 = defaultDarkLineColor_sDarkLineColor;
  }

  return v0;
}

id defaultLineColorWithOpaque(int a1)
{
  if (a1)
  {
    v1 = defaultLineColorWithOpaque_sDefaultLineColorOpaque;
    if (defaultLineColorWithOpaque_sDefaultLineColorOpaque)
    {
      goto LABEL_7;
    }

    v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.84 alpha:1.0];
    v3 = &defaultLineColorWithOpaque_sDefaultLineColorOpaque;
  }

  else
  {
    v1 = defaultLineColorWithOpaque_sDefaultLineColor;
    if (defaultLineColorWithOpaque_sDefaultLineColor)
    {
      goto LABEL_7;
    }

    v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.24];
    v3 = &defaultLineColorWithOpaque_sDefaultLineColor;
  }

  v4 = *v3;
  *v3 = v2;

  v1 = *v3;
LABEL_7:

  return v1;
}

id CalendarInvitationTitleColorOpaque()
{
  v0 = CalendarInvitationTitleColorOpaque___InvitationTitleColorOpaque;
  if (!CalendarInvitationTitleColorOpaque___InvitationTitleColorOpaque)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v2 = CalendarInvitationTitleColorOpaque___InvitationTitleColorOpaque;
    CalendarInvitationTitleColorOpaque___InvitationTitleColorOpaque = v1;

    v0 = CalendarInvitationTitleColorOpaque___InvitationTitleColorOpaque;
  }

  return v0;
}

id CalendarForegroundColorForColor(void *a1)
{
  v1 = a1;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  [v1 getRed:&v65 green:&v64 blue:&v63 alpha:&v62];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "hash")}];
  v3 = CalendarForegroundColorForColor_sTextColors;
  if (!CalendarForegroundColorForColor_sTextColors)
  {
    v61 = v2;
    v4 = 7;
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:7];
    v6 = CalendarForegroundColorForColor_sTextColors;
    CalendarForegroundColorForColor_sTextColors = v5;

    v7 = &qword_1D36004A0;
    v8 = &qword_1D3600548;
    do
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v7 += 3;
      v12 = [MEMORY[0x1E69DC888] colorWithRed:v9 green:v10 blue:v11 alpha:1.0];
      v13 = *(v8 - 2);
      v14 = *(v8 - 1);
      v15 = *v8;
      v8 += 3;
      v16 = [MEMORY[0x1E69DC888] colorWithRed:v13 green:v14 blue:v15 alpha:1.0];
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "hash")}];
      [CalendarForegroundColorForColor_sTextColors setObject:v16 forKey:v17];

      --v4;
    }

    while (v4);
    v3 = CalendarForegroundColorForColor_sTextColors;
    v2 = v61;
  }

  v18 = [v3 objectForKey:v2];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    goto LABEL_19;
  }

  v21 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.55];
  v22 = CUIKBlendColorsSourceOver();

  v23 = [v22 isGreenOrYellow];
  if (v23)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.18 alpha:1.0];
  }
  v24 = ;
  v20 = [v22 overlayWithColor:v24];

  CUIKLuminance();
  v26 = v25;
  CUIKLuminance();
  v28 = v27;
  [v22 differenceFromColor:v20];
  if (v29 < 1.0)
  {
    v30 = MEMORY[0x1E69DC888];
    v31 = (1.0 - v29) / 3.0;
    [v20 redComponent];
    v33 = v32 - v31;
    [v20 greenComponent];
    v35 = v34 - v31;
    [v20 blueComponent];
    v37 = [v30 colorWithRed:v33 green:v35 blue:v36 - v31 alpha:1.0];

    v20 = v37;
  }

  v38 = v26 - v28;
  if (v23)
  {
    if (v38 < 0.75)
    {
      v39 = 0.75 - v38;
      v40 = MEMORY[0x1E69DC888];
      [v20 redComponent];
      v42 = v41;
      [v20 redComponent];
      v44 = v42 + (0.75 - v38) * v43 * -0.299;
      [v20 greenComponent];
      v46 = v45;
      [v20 greenComponent];
      v48 = v46 + (0.75 - v38) * v47 * -0.587;
      [v20 blueComponent];
      v50 = v49;
      [v20 blueComponent];
      v52 = [v40 colorWithRed:v44 green:v48 blue:v50 + v39 * v51 * -0.114 alpha:1.0];
LABEL_17:
      v59 = v52;

      v20 = v59;
    }
  }

  else if (v38 < 0.28)
  {
    v53 = MEMORY[0x1E69DC888];
    [v20 hueComponent];
    v55 = v54;
    [v20 saturationComponent];
    v57 = v56;
    [v20 brightnessComponent];
    v52 = [v53 colorWithHue:v55 saturation:v57 brightness:v58 - (0.28 - v38) alpha:1.0];
    goto LABEL_17;
  }

  [CalendarForegroundColorForColor_sTextColors setObject:v20 forKey:v2];

LABEL_19:

  return v20;
}

id __EKUISimulatedNavigationBarColor_block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.0705882353;
  }

  else
  {
    v2 = 0.968627451;
  }

  v3 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v2 blue:v2 alpha:1.0];

  return v3;
}

id ClearButtonImageColor()
{
  if (ClearButtonImageColor_onceToken != -1)
  {
    ClearButtonImageColor_cold_1();
  }

  v1 = ClearButtonImageColor__color;

  return v1;
}

void __ClearButtonImageColor_block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v3 = EventKitUIBundle();
  v1 = [v0 colorNamed:@"ClearButtonImageColor" inBundle:v3 compatibleWithTraitCollection:0];
  v2 = ClearButtonImageColor__color;
  ClearButtonImageColor__color = v1;
}

id __EKHalfSystemGroupedBackgroundColor_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v3 = a2;
  v4 = [v2 systemGroupedBackgroundColor];
  v5 = [v4 resolvedColorWithTraitCollection:v3];

  v6 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  v7 = [v6 resolvedColorWithTraitCollection:v3];

  v8 = [v5 colorWithAlphaComponent:0.5];
  v9 = [v7 cuik_blendWithColor:v8];

  return v9;
}

void sub_1D344A954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id EKUIIOSMacLogHandle()
{
  if (EKUIIOSMacLogHandle_onceToken != -1)
  {
    EKUIIOSMacLogHandle_cold_1();
  }

  v1 = EKUIIOSMacLogHandle_handle;

  return v1;
}

void __EKUIIOSMacLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.eventkit", "iOSMacUtils");
  v1 = EKUIIOSMacLogHandle_handle;
  EKUIIOSMacLogHandle_handle = v0;
}

void sub_1D344CF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *a15, id *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&a70);
  objc_destroyWeak(&STACK[0x218]);
  objc_destroyWeak(&STACK[0x248]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x300]);
  objc_destroyWeak(&STACK[0x328]);
  objc_destroyWeak(&STACK[0x590]);
  objc_destroyWeak(&STACK[0x5B8]);
  objc_destroyWeak(&STACK[0x5E0]);
  objc_destroyWeak(&STACK[0x608]);
  objc_destroyWeak(&STACK[0x630]);
  objc_destroyWeak(&STACK[0x658]);
  objc_destroyWeak(&STACK[0x680]);
  objc_destroyWeak(&STACK[0x688]);
  _Unwind_Resume(a1);
}

void sub_1D344D728(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 64));
  _Unwind_Resume(a1);
}

void sub_1D344F54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3454E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1D345D090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 144));
  _Unwind_Resume(a1);
}

void sub_1D345D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D345FE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CalendarLinkLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CalendarLinkLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D3460F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34651C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34653E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D346ADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v26 + 40));
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D346B0D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D346B394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak(va);
  objc_destroyWeak((v7 + 48));
  _Unwind_Resume(a1);
}

id EKUIUserFriendlyStringForCLLocation(void *a1)
{
  v1 = a1;
  [v1 coordinate];
  v4 = CreateCoordinateComponentString(1, v2, v3);
  [v1 coordinate];
  v6 = v5;
  v8 = v7;

  v9 = CreateCoordinateComponentString(0, v6, v8);
  v10 = MEMORY[0x1E696AEC0];
  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"%@ value:%@" table:{&stru_1F4EF6790, 0}];
  v13 = [v10 localizedStringWithFormat:v12, v4, v9];

  return v13;
}

id CreateCoordinateComponentString(int a1, double a2, double a3)
{
  if (!a1)
  {
    a2 = a3;
  }

  v3 = @"N";
  v4 = @"E";
  if ((a2 * 3600.0) < 0)
  {
    v3 = @"S";
    v4 = @"W";
  }

  v5 = a2;
  v6 = fabs((a2 - a2) * 60.0);
  v7 = v6;
  v8 = (v6 - v6) * 60.0;
  if (a1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = v8;
  if (v5 >= 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = -v5;
  }

  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:v9 value:&stru_1F4EF6790 table:0];

  v14 = v13;
  v15 = v13;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = EventKitUIBundle();
  v18 = [v17 localizedStringForKey:@"%ld°%ld'%.0f'' %@" value:&stru_1F4EF6790 table:0];
  v19 = [v16 initWithFormat:v18, v11, v7, *&v10, v15, 0];

  return v19;
}

void sub_1D346DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D346E318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D346E77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34704E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3473290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3473534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CalImageFromGlyph(void *a1)
{
  v1 = a1;
  [v1 size];
  UIGraphicsBeginImageContextWithOptions(v5, 0, 0.0);
  [v1 drawAtPoint:{0.0, 0.0}];

  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

void sub_1D347640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3478004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3478D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D347CF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D347D5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3480824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3481D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a59);
  objc_destroyWeak(&a64);
  objc_destroyWeak(&a69);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak((v69 - 200));
  objc_destroyWeak((v69 - 160));
  objc_destroyWeak((v69 - 120));
  objc_destroyWeak((v69 - 112));
  _Unwind_Resume(a1);
}

void sub_1D348517C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 152));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_1D3485F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3488A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3490490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3493114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

id getCNComposeRecipientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNComposeRecipientClass_softClass;
  v7 = getCNComposeRecipientClass_softClass;
  if (!getCNComposeRecipientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNComposeRecipientClass_block_invoke;
    v3[3] = &unk_1E843F520;
    v3[4] = &v4;
    __getCNComposeRecipientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D3498CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNComposeRecipientClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsAutocompleteUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8440A00;
    v5 = 0;
    ContactsAutocompleteUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary)
  {
    __getCNComposeRecipientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CNComposeRecipient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNComposeRecipientClass_block_invoke_cold_1();
  }

  getCNComposeRecipientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsAutocompleteUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsAutocompleteUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D349AE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

void sub_1D349F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D349FCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34A0AF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D34A1CD4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1D34A2A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_1D34A3934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v19 - 72));
  _Unwind_Resume(a1);
}

void sub_1D34A3DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D34A5090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34A649C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id logHandle()
{
  if (logHandle_onceToken != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle_handle;

  return v1;
}

void __logHandle_block_invoke()
{
  v0 = os_log_create(EKUILogSubsystem, "EKUIAppReview");
  v1 = logHandle_handle;
  logHandle_handle = v0;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1D34A8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMStreamsClass_block_invoke_cold_1();
  }

  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BiomeStreamsLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __BiomeStreamsLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E8441020;
    v2 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __BiomeStreamsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBMDiscoverabilitySignalEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMDiscoverabilitySignalEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1();
  }

  getBMDiscoverabilitySignalEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D34B3DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34BA83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id BirthdayImage()
{
  v0 = [MEMORY[0x1E6993478] sharedInstance];
  v1 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v2 = [v0 birthdayImageForFont:v1];

  return v2;
}

id ImageForAvailabilityType(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E6966988] showTypeAsBusy:a1];
    v2 = MEMORY[0x1E69DCAB8];
    if (v1)
    {
      v3 = @"xmark.circle";
    }

    else
    {
      v3 = @"checkmark.circle";
    }
  }

  else
  {
    v2 = MEMORY[0x1E69DCAB8];
    v3 = @"questionmark.circle";
  }

  v4 = [v2 systemImageNamed:v3];

  return v4;
}

id AccessibilityLabelForAvailabilityType(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E6966988] showTypeAsBusy:a1];
    v2 = EventKitUIBundle();
    v3 = v2;
    if (v1)
    {
      v4 = @"Busy - accessibility";
      v5 = @"Busy";
    }

    else
    {
      v4 = @"Free - accessibility";
      v5 = @"Free";
    }
  }

  else
  {
    v2 = EventKitUIBundle();
    v3 = v2;
    v4 = @"Pending - accessibility";
    v5 = @"Pending";
  }

  v6 = [v2 localizedStringForKey:v4 value:v5 table:0];

  return v6;
}

id TableViewCheckmarkImage(void *a1)
{
  v1 = MEMORY[0x1E69DB880];
  v2 = *MEMORY[0x1E69DDCF8];
  v3 = a1;
  v4 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  v7 = [EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:2 traitCollection:v3];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:v7];
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v8];

  return v9;
}

id TableViewDisclosureIndicatorImage(void *a1)
{
  v1 = MEMORY[0x1E69DB880];
  v2 = *MEMORY[0x1E69DDCF8];
  v3 = a1;
  v4 = [v1 defaultFontDescriptorWithTextStyle:v2];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  v7 = [EKUIConstrainedFontUtilities tableViewCellCappedSymbolImageScaleWithScale:1 traitCollection:v3];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:v7];
  v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v8];
  v11 = [v10 imageWithTintColor:v9 renderingMode:1];

  return v11;
}

id BadgeImageForHoliday(void *a1, uint64_t a2, void *a3, float64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (BadgeImageForHoliday_onceToken != -1)
  {
    BadgeImageForHoliday_cold_1();
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{_UniqueDotHashForColorAndRadiusAndInterfaceStyleAndLocale(v7, a2 == 1, v8, a4)}];
  v10 = [BadgeImageForHoliday___CachedHolidayBadgeImages objectForKey:v9];
  if (!v10)
  {
    v22.width = a4;
    v22.height = a4;
    UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v12 = CUIKTextColorForCalendarColorForStyle();
    CGContextBeginPath(CurrentContext);
    v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, a4, a4}];
    CGContextAddPath(CurrentContext, [v13 CGPath]);
    CGContextClip(CurrentContext);
    [v12 setFill];
    v14 = EventKitUIBundle();
    v15 = FailProofLocale(v8);
    v16 = [v14 localizedStringForKey:@"Holiday character glyph" value:@"H" table:0 localization:v15];

    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:ceil(a4 * 0.75)];
    [v16 _legacy_sizeWithFont:v17];
    CalRoundToScreenScale((a4 - v18) * 0.5);
    [v16 drawInRect:v17 withFont:2 lineBreakMode:1 alignment:0 lineSpacing:{0.0, v19, a4, a4}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [BadgeImageForHoliday___CachedHolidayBadgeImages setObject:v10 forKey:v9];
  }

  return v10;
}

void __BadgeImageForHoliday_block_invoke()
{
  v0 = objc_opt_new();
  v1 = BadgeImageForHoliday___CachedHolidayBadgeImages;
  BadgeImageForHoliday___CachedHolidayBadgeImages = v0;
}

unint64_t _UniqueDotHashForColorAndRadiusAndInterfaceStyleAndLocale(void *a1, int a2, void *a3, float64_t a4)
{
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v6 = a3;
  [a1 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];
  v7 = (v22 * 100.0);
  v8.f64[0] = v20;
  v8.f64[1] = v19;
  v16 = v8;
  v8.f64[0] = a4;
  v8.f64[1] = v21;
  v18 = v8;
  v9 = [v6 hash];

  v10 = vdupq_n_s64(0x4059000000000000uLL);
  v11 = vshlq_u64(vcvtq_u64_f64(vmulq_f64(v18, v10)), xmmword_1D36007F0);
  v12 = vshlq_u64(vcvtq_u64_f64(vmulq_f64(v16, v10)), xmmword_1D3600800);
  v13 = 0x800000000;
  if (!a2)
  {
    v13 = 0;
  }

  v14 = vorrq_s8(v11, v12);
  return (*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | v7 | v13) ^ v9;
}

id FailProofLocale(void *a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = EventKitUIBundle();
  v3 = [v2 localizations];

  v4 = EventKitUIBundle();
  v5 = [v4 preferredLocalizations];
  v6 = [v5 firstObject];

  if (v1)
  {
    v7 = MEMORY[0x1E696AAE8];
    v12[0] = v1;
    v12[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v7 preferredLocalizationsFromArray:v3 forPreferences:v8];

    v10 = [v9 firstObject];
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

id BadgeImageForAlternateWorkday(void *a1, uint64_t a2, void *a3, float64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (BadgeImageForAlternateWorkday_onceToken != -1)
  {
    BadgeImageForAlternateWorkday_cold_1();
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{_UniqueDotHashForColorAndRadiusAndInterfaceStyleAndLocale(v7, a2 == 1, v8, a4)}];
  v10 = [BadgeImageForAlternateWorkday___CachedAlternateWorkdayBadgeImages objectForKey:v9];
  if (!v10)
  {
    v23.width = a4;
    v23.height = a4;
    UIGraphicsBeginImageContextWithOptions(v23, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v12 = CUIKTextColorForCalendarColorForStyle();
    CGContextBeginPath(CurrentContext);
    v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, a4, a4}];
    CGContextAddPath(CurrentContext, [v13 CGPath]);
    CGContextClip(CurrentContext);
    if (a2 == 2)
    {
      CUIKColorDarkenedToPercentageWithFinalAlpha();
    }

    else
    {
      CUIKColorLightenedToPercentageWithFinalAlpha();
    }
    v14 = ;
    [v14 setFill];
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = a4;
    v24.size.height = a4;
    CGContextFillEllipseInRect(CurrentContext, v24);
    [v12 setFill];
    v15 = EventKitUIBundle();
    v16 = FailProofLocale(v8);
    v17 = [v15 localizedStringForKey:@"Alternate workday character glyph" value:@"W" table:0 localization:v16];

    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:ceil(a4 * 0.75)];
    [v17 _legacy_sizeWithFont:v18];
    CalRoundToScreenScale((a4 - v19) * 0.5);
    [v17 drawInRect:v18 withFont:2 lineBreakMode:1 alignment:0 lineSpacing:{0.0, v20, a4, a4}];
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [BadgeImageForAlternateWorkday___CachedAlternateWorkdayBadgeImages setObject:v10 forKey:v9];
  }

  return v10;
}

void __BadgeImageForAlternateWorkday_block_invoke()
{
  v0 = objc_opt_new();
  v1 = BadgeImageForAlternateWorkday___CachedAlternateWorkdayBadgeImages;
  BadgeImageForAlternateWorkday___CachedAlternateWorkdayBadgeImages = v0;
}

id ImageForAttributes(void *a1)
{
  v1 = MEMORY[0x1E696F220];
  v2 = a1;
  v3 = [v1 imageForStyle:v2 size:3 forScale:0 format:EKUIScaleFactor()];

  return v3;
}

id ImageForMapItem(void *a1)
{
  v1 = MEMORY[0x1E696F220];
  v2 = a1;
  v3 = [v1 imageForMapItem:v2 forScale:0 fallbackToBundleIcon:EKUIScaleFactor()];

  if (!v3)
  {
    v3 = MapPinImage();
  }

  return v3;
}

id MapPinImage()
{
  v0 = [MEMORY[0x1E69A1DB0] markerStyleAttributes];
  v1 = [MEMORY[0x1E696F220] imageForStyle:v0 size:4 forScale:0 format:EKUIScaleFactor()];

  return v1;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34BE8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34C4634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D34C7AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34C84A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

id getCNComposeRecipientClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNComposeRecipientClass_softClass_0;
  v7 = getCNComposeRecipientClass_softClass_0;
  if (!getCNComposeRecipientClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNComposeRecipientClass_block_invoke_0;
    v3[3] = &unk_1E843F520;
    v3[4] = &v4;
    __getCNComposeRecipientClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D34CC3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNComposeRecipientClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsAutocompleteUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8441480;
    v5 = 0;
    ContactsAutocompleteUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary_0)
  {
    __getCNComposeRecipientClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CNComposeRecipient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNComposeRecipientClass_block_invoke_cold_1_0();
  }

  getCNComposeRecipientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsAutocompleteUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ContactsAutocompleteUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1D34CE18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v26 - 144));
  _Unwind_Resume(a1);
}

void sub_1D34D05B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1D34D0BA0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1D34D1320(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1D34D1CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location)
{
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak(v14);
  objc_destroyWeak(location);
  objc_destroyWeak((v15 - 144));
  _Unwind_Resume(a1);
}

void sub_1D34D21F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34D88F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v36 + 56));
  objc_destroyWeak((v36 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a36);
  _Unwind_Resume(a1);
}

void sub_1D34DD2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak((v45 + 40));
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a45);
  _Unwind_Resume(a1);
}

void sub_1D34E2AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34E39C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D34E65F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34F3A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34F6688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v60 - 232), 8);
  _Block_object_dispose((v60 - 184), 8);
  _Block_object_dispose((v60 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34F6F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D34F889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34FF298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D34FF6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D3509A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CalDisplayedTitleForSourceAsCalendarTarget(void *a1)
{
  v1 = a1;
  if ([v1 sourceType] == 4)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    v3 = [v2 model];

    if ([v3 isEqualToString:@"iPhone"])
    {
      v4 = EventKitUIBundle();
      v5 = v4;
      v6 = @"On My iPhone";
    }

    else if ([v3 isEqualToString:@"iPad"])
    {
      v4 = EventKitUIBundle();
      v5 = v4;
      v6 = @"On My iPad";
    }

    else
    {
      v8 = [v3 isEqualToString:@"iPod touch"];
      v4 = EventKitUIBundle();
      v5 = v4;
      if (v8)
      {
        v6 = @"On My iPod touch";
      }

      else
      {
        v6 = @"On My Device";
      }
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v7 = CUIKDisplayedTitleForSource();
  }

  return v7;
}

BOOL _CalEventIsOnOneDay(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CUIKCalendar();
  v6 = [v5 components:28 fromDate:v4];

  v7 = [v5 components:28 fromDate:v3];

  v8 = [v6 day];
  if (v8 == [v7 day] && (v9 = objc_msgSend(v6, "month"), v9 == objc_msgSend(v7, "month")))
  {
    v10 = [v6 year];
    v11 = v10 == [v7 year];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void _CalDetailStringsForDate(void *a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, int a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v82 = a1;
  v21 = a2;
  v22 = a3;
  v80 = a4;
  v79 = [MEMORY[0x1E69DC888] labelColor];
  v81 = [MEMORY[0x1E69DC888] labelColor];
  v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v77 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v24 = _CalEventIsOnOneDay(v82, v21);
  v25 = v24;
  v78 = v23;
  if (a5)
  {
    if (v24)
    {
      if (a7)
      {
        v26 = EventKitUIBundle();
        v27 = [v26 localizedStringForKey:@"All-day" value:&stru_1F4EF6790 table:0];

        v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];

        v29 = 0;
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v31 = CUIKLongDayStringForDate();
        v62 = EventKitUIBundle();
        v27 = [v62 localizedStringForKey:@"All-day" value:&stru_1F4EF6790 table:0];

        v28 = [MEMORY[0x1E69DC888] secondaryLabelColor];

        v29 = 0;
        v30 = 0;
      }

      v81 = v28;
    }

    else
    {
      v33 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      v34 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      v35 = MEMORY[0x1E696AEC0];
      v36 = EventKitUIBundle();
      [v36 localizedStringForKey:@"All-day from %@" value:&stru_1F4EF6790 table:0];
      v38 = v37 = v22;
      v31 = [v35 localizedStringWithFormat:v38, v33];

      v22 = v37;
      v39 = MEMORY[0x1E696AEC0];
      v40 = EventKitUIBundle();
      v41 = [v40 localizedStringForKey:@"to %@" value:&stru_1F4EF6790 table:0];
      v27 = [v39 localizedStringWithFormat:v41, v34];

      v29 = 0;
      v30 = 0;
    }

    v44 = a15;
    v42 = v79;
    v45 = a14;
    v43 = a8;
  }

  else
  {
    v74 = v22;
    if (CUIKShouldShowTimezoneClarification())
    {
      v32 = 1;
    }

    else
    {
      v32 = CUIKShouldShowTimezoneClarification();
    }

    v42 = v79;
    v43 = a8;
    if (v25)
    {
      if (!a6)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"CUIKDetailStringsForDate: unspecified size class"];
      }

      v44 = a15;
      v45 = a14;
      if (a7)
      {
        v27 = CUIKDurationStringForDatesWithDash();
        if (v32)
        {
          v22 = v74;
          v30 = CUIKTimezoneClarificationStringForDates();
          v29 = 0;
          v31 = 0;
          goto LABEL_21;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v31 = CUIKLongDayStringForDate();
        v27 = CUIKDurationStringForDatesWithDash();
        if (v32)
        {
          v22 = v74;
          v30 = CUIKTimezoneClarificationStringForDates();
          v29 = 0;
          goto LABEL_21;
        }

        v29 = 0;
        v30 = 0;
      }

      v22 = v74;
    }

    else
    {
      v46 = CUIKStringForTimeWithTZIfDivergent();
      v47 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      v48 = CUIKStringForTimeWithTZIfDivergent();
      CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      v49 = v70 = v32;
      v50 = EventKitUIBundle();
      v51 = [v50 localizedStringForKey:@"from %@ %@" value:&stru_1F4EF6790 table:0];

      v52 = EventKitUIBundle();
      v53 = [v52 localizedStringForKey:@"to %@ %@" value:&stru_1F4EF6790 table:0];

      v72 = v47;
      v73 = v46;
      v76 = v51;
      v54 = v51;
      v55 = v53;
      v31 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v54, v46, v47];
      v71 = v49;
      v27 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v53, v48, v49];
      v29 = 0;
      v30 = 0;
      if (v70)
      {
        v56 = MEMORY[0x1E696AEC0];
        v57 = CUIKStringForTimeWithTZ();
        v58 = CUIKStringForDateAndDayOfWeekInTimezone();
        v30 = [v56 localizedStringWithFormat:v76, v57, v58];

        v59 = MEMORY[0x1E696AEC0];
        v60 = CUIKStringForTimeWithTZ();
        v61 = CUIKStringForDateAndDayOfWeekInTimezone();
        v29 = [v59 localizedStringWithFormat:v55, v60, v61];

        v42 = v79;
      }

      v22 = v74;
      v44 = a15;
      v45 = a14;
    }
  }

LABEL_21:
  if (v43)
  {
    v63 = v31;
    *v43 = v31;
  }

  if (a9)
  {
    v64 = v27;
    *a9 = v27;
  }

  if (a10)
  {
    v65 = v30;
    *a10 = v30;
  }

  if (a11)
  {
    v66 = v29;
    *a11 = v29;
  }

  if (a12)
  {
    v67 = v42;
    *a12 = v42;
  }

  if (a13)
  {
    *a13 = v81;
  }

  if (v45)
  {
    v68 = v78;
    *v45 = v78;
  }

  v69 = v77;
  if (v44)
  {
    v69 = v77;
    *v44 = v69;
  }
}

void _CalDetailStringsForCarPlayCalendarEvent(void *a1, void *a2, void *a3, void *a4, char a5, uint64_t a6, int a7, void *a8, void *a9, void *a10, void *a11)
{
  v142[1] = *MEMORY[0x1E69E9840];
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v134 = [MEMORY[0x1E69DC888] _carSystemPrimaryColor];
  v131 = [MEMORY[0x1E69DC888] _carSystemSecondaryColor];
  v21 = _CalEventIsOnOneDay(v17, v18);
  v132 = v19;
  v133 = v18;
  if (a5)
  {
    v129 = v20;
    v22 = CUIKLongDayStringForDate();
    v23 = objc_alloc(MEMORY[0x1E696AD40]);
    v24 = v23;
    if (v21)
    {
      if (a7)
      {
        v139 = *MEMORY[0x1E69DB650];
        v140 = v134;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
        v26 = [v24 initWithString:v22 attributes:v25];

        v27 = objc_alloc(MEMORY[0x1E696AAB0]);
        v28 = EventKitUIBundle();
        v29 = [v28 localizedStringForKey:@"All-day" value:&stru_1F4EF6790 table:0];
        v30 = [v27 initWithString:v29];
      }

      else
      {
        v26 = [v23 initWithString:v22];
        v109 = [v17 localizedYear];
        v110 = [v22 rangeOfString:v109];
        [v26 addAttribute:*MEMORY[0x1E69DB650] value:v134 range:{v110, v111}];
        v112 = objc_alloc(MEMORY[0x1E696AAB0]);
        v113 = EventKitUIBundle();
        v114 = [v113 localizedStringForKey:@"All-day" value:&stru_1F4EF6790 table:0];
        v30 = [v112 initWithString:v114];
      }

      v66 = 0;
      v67 = 0;
    }

    else
    {
      v137 = *MEMORY[0x1E69DB650];
      v80 = v137;
      v138 = v134;
      v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      v82 = [v24 initWithString:v22 attributes:v81];

      v26 = v82;
      v127 = CUIKLongDayStringForDate();
      v83 = objc_alloc(MEMORY[0x1E696AD40]);
      v84 = MEMORY[0x1E696AEC0];
      v85 = EventKitUIBundle();
      v86 = [v85 localizedStringForKey:@"to %@" value:&stru_1F4EF6790 table:0];
      v87 = [v84 localizedStringWithFormat:v86, v127];
      v135 = v80;
      v136 = v134;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v30 = [v83 initWithString:v87 attributes:v88];

      v89 = [v30 string];
      v90 = EventKitUIBundle();
      v91 = [v90 localizedStringForKey:@"to" value:&stru_1F4EF6790 table:0];
      v92 = [v89 rangeOfString:v91];
      v94 = v93;

      [v30 addAttribute:v80 value:v134 range:{v92, v94}];
      v95 = objc_alloc(MEMORY[0x1E696AAB0]);

      v96 = EventKitUIBundle();
      v97 = [v96 localizedStringForKey:@"All-day" value:&stru_1F4EF6790 table:0];
      v67 = [v95 initWithString:v97];

      v66 = 0;
    }

LABEL_18:
    v108 = v132;
    v20 = v129;
    v115 = a8;
    v116 = a9;
    goto LABEL_21;
  }

  if (CUIKShouldShowTimezoneClarification())
  {
    v128 = 1;
    if (!v21)
    {
LABEL_7:
      v129 = v20;
      v31 = CUIKStringForTimeWithTZIfDivergent();
      v32 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      v126 = CUIKStringForTimeWithTZIfDivergent();
      v125 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();
      v33 = EventKitUIBundle();
      v34 = [v33 localizedStringForKey:@"from %@ %@" value:&stru_1F4EF6790 table:0];

      v35 = EventKitUIBundle();
      v36 = [v35 localizedStringForKey:@"to %@ %@" value:&stru_1F4EF6790 table:0];

      v37 = objc_alloc(MEMORY[0x1E696AD40]);
      v121 = v32;
      v122 = v31;
      v124 = v34;
      v38 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v34, v31, v32];
      v39 = [v37 initWithString:v38];

      v40 = [v39 string];
      v41 = EventKitUIBundle();
      v42 = [v41 localizedStringForKey:@"from" value:&stru_1F4EF6790 table:0];
      v43 = v18;
      v44 = [v40 rangeOfString:v42];
      v46 = v45;

      v47 = [v39 string];
      v48 = [v17 localizedYear];
      v49 = [v47 rangeOfString:v48];
      v51 = v50;

      v52 = *MEMORY[0x1E69DB650];
      [v39 addAttribute:*MEMORY[0x1E69DB650] value:v134 range:{v44, v46}];
      [v39 addAttribute:v52 value:v134 range:{v49, v51}];
      v26 = v39;
      v53 = objc_alloc(MEMORY[0x1E696AD40]);
      v123 = v36;
      v54 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v36, v126, v125];
      v30 = [v53 initWithString:v54];

      v55 = [v30 string];
      v56 = EventKitUIBundle();
      v57 = [v56 localizedStringForKey:@"to" value:&stru_1F4EF6790 table:0];
      v58 = [v55 rangeOfString:v57];
      v60 = v59;

      v61 = [v30 string];
      v62 = [v43 localizedYear];
      v63 = [v61 rangeOfString:v62];
      v65 = v64;

      [v30 addAttribute:v52 value:v134 range:{v58, v60}];
      [v30 addAttribute:v52 value:v134 range:{v63, v65}];
      v66 = 0;
      v67 = 0;
      if (v128)
      {
        v68 = MEMORY[0x1E696AAB0];
        v69 = v30;
        v70 = [v68 alloc];
        v71 = MEMORY[0x1E696AEC0];
        v72 = CUIKStringForTimeWithTZ();
        v73 = CUIKStringForDateAndDayOfWeekInTimezone();
        v74 = [v71 localizedStringWithFormat:v124, v72, v73];
        v67 = [v70 initWithString:v74];

        v75 = objc_alloc(MEMORY[0x1E696AAB0]);
        v76 = MEMORY[0x1E696AEC0];
        v77 = CUIKStringForTimeWithTZ();
        v78 = CUIKStringForDateAndDayOfWeekInTimezone();
        v79 = [v76 localizedStringWithFormat:v123, v77, v78];

        v66 = [v75 initWithString:v79];
      }

      goto LABEL_18;
    }
  }

  else
  {
    v128 = CUIKShouldShowTimezoneClarification();
    if (!v21)
    {
      goto LABEL_7;
    }
  }

  if (!a6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"CUIKDetailStringsForDate: unspecified size class"];
  }

  v98 = CUIKLongDayStringForDate();
  v99 = objc_alloc(MEMORY[0x1E696AAB0]);
  v141 = *MEMORY[0x1E69DB650];
  v142[0] = v134;
  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:&v141 count:1];
  v101 = [v99 initWithString:v98 attributes:v100];

  v26 = v101;
  v102 = MEMORY[0x1E69934A0];
  v103 = [MEMORY[0x1E695DEE8] currentCalendar];
  v104 = MEMORY[0x1E69DB878];
  v105 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v106 = [v104 fontWithDescriptor:v105 size:0.0];
  [v102 timeIntervalAttributedAndSmallCappedDesignatorTextWithStartDate:v17 endDate:v18 calendar:v103 color:v134 font:v106];
  v30 = v107 = v18;

  if (v128)
  {
    v108 = v132;
    v67 = [MEMORY[0x1E69934A0] CUIKSmallCapAMPMTimezoneClarificationStringForStartDate:v17 endDate:v107 startTimeZone:v132 endTimeZone:v20 color:v131];
  }

  else
  {
    v67 = 0;
    v108 = v132;
  }

  v115 = a8;
  v116 = a9;

  v66 = 0;
LABEL_21:
  if (v115)
  {
    v117 = v26;
    *v115 = v26;
  }

  if (v116)
  {
    v118 = v30;
    *v116 = v30;
  }

  if (a10)
  {
    v119 = v67;
    *a10 = v67;
  }

  if (a11)
  {
    v120 = v66;
    *a11 = v66;
  }
}

void CalDetailStringsForReminderEvent(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v13 = a1;
  v22 = [v13 startDate];
  v14 = [v13 endDateUnadjustedForLegacyClients];
  v15 = [v13 endTimeZone];
  v16 = [v13 startTimeZone];
  v17 = [v13 isAllDay];

  _CalDetailStringsForDate(v22, v14, v16, v15, v17, a2, 0, a3, a4, a5, a6, a7, a8, a9, a10);
}

void CalDetailStringsForCalendarEvent(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, unsigned __int8 a12)
{
  v29 = a1;
  v15 = a11;
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    v18 = [v29 endDateUnadjustedForLegacyClients];
    v19 = [v29 startDate];
    [v18 timeIntervalSinceDate:v19];
    v21 = v20;

    v22 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v17 sinceDate:v21];
    [v29 startTimeZone];
  }

  else
  {
    v17 = [v29 startDate];
    v22 = [v29 endDateUnadjustedForLegacyClients];
    [v29 endTimeZone];
  }
  v23 = ;
  v24 = [v29 startTimeZone];
  _CalDetailStringsForDate(v17, v22, v24, v23, [v29 isAllDay], a2, a12, a3, a4, a5, a6, a7, a8, a9, a10);
}

void CalDetailStringsForCarPlayCalendarEvent(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  v25 = a1;
  v14 = a7;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    v17 = [v25 endDateUnadjustedForLegacyClients];
    v18 = [v25 startDate];
    [v17 timeIntervalSinceDate:v18];
    v20 = v19;

    v21 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v16 sinceDate:v20];
    [v25 startTimeZone];
  }

  else
  {
    v16 = [v25 startDate];
    v21 = [v25 endDateUnadjustedForLegacyClients];
    [v25 endTimeZone];
  }
  v22 = ;
  v23 = [v25 startTimeZone];
  _CalDetailStringsForCarPlayCalendarEvent(v16, v21, v23, v22, [v25 isAllDay], a2, a8, a3, a4, a5, a6);
}

void sub_1D3511674(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 256));
  _Unwind_Resume(a1);
}

void sub_1D35125F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id EKUIPreferredSizeCategory(void *a1)
{
  if (a1)
  {
    v1 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v2 = +[EKUIApplicationExtensionOverrides shared];
    v1 = [v2 preferredContentSizeCategoryOrOverride];
  }

  return v1;
}

BOOL EKUIUsesLargeTextYearView(void *a1)
{
  if (a1)
  {
    v1 = [a1 preferredContentSizeCategory];
  }

  else
  {
    v2 = +[EKUIApplicationExtensionOverrides shared];
    v1 = [v2 preferredContentSizeCategoryOrOverride];
  }

  v3 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC60]) == NSOrderedDescending;

  return v3;
}

void sub_1D3512F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3514864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D35167E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double EKRoundWithScale(double a1, double a2)
{
  v2 = a2;
  if (a2 == 0.0)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v2 = v5;
  }

  return round(v2 * a1) / v2;
}

void sub_1D3519228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D351A0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D351A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1D351C3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3520DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class __getREMObjectIDClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMObjectID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMObjectIDClass_block_invoke_cold_1_0();
  }

  getREMObjectIDClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary_0()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ReminderKitLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E8441FC8;
    v2 = 0;
    ReminderKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    ReminderKitLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ReminderKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getREMStoreClass_block_invoke_0(uint64_t a1)
{
  ReminderKitLibrary_0();
  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStoreClass_block_invoke_cold_1_0();
  }

  getREMStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D3527030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double CalRoundEdgeInsetsToScreenScale(double a1, double a2, double a3, double a4)
{
  if (a2 != a2)
  {
    UIRoundToViewScale();
  }

  if (a4 != a4)
  {
    UIRoundToViewScale();
  }

  if (a1 != a1)
  {
    UIRoundToViewScale();
    a1 = v7;
  }

  if (a3 != a3)
  {
    UIRoundToViewScale();
  }

  return a1;
}

double CalFloorRectToScreenScale(double a1)
{
  v2 = CalFloorToScreenScale___scale;
  if (*&CalFloorToScreenScale___scale == -1.0)
  {
    *&v2 = _EKUIScaleFactor();
    CalFloorToScreenScale___scale = v2;
  }

  if (a1 != 0.0)
  {
    a1 = floor(a1 * *&v2) / *&v2;
  }

  if (*&v2 == -1.0)
  {
    *&v2 = _EKUIScaleFactor();
    CalFloorToScreenScale___scale = v2;
  }

  if (*&v2 == -1.0)
  {
    *&v2 = _EKUIScaleFactor();
    CalFloorToScreenScale___scale = v2;
  }

  if (*&v2 == -1.0)
  {
    CalFloorToScreenScale___scale = _EKUIScaleFactor();
  }

  return a1;
}

BOOL CalIsRectEffectivelyEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1;
  v9 = a5;
  if (vabds_f32(v8, v9) >= 0.00000011921)
  {
    return 0;
  }

  v10 = a2;
  v11 = a6;
  if (vabds_f32(v10, v11) >= 0.00000011921)
  {
    return 0;
  }

  v12 = a3;
  v13 = a7;
  if (vabds_f32(v12, v13) >= 0.00000011921)
  {
    return 0;
  }

  v14 = a4;
  v15 = a8;
  return vabds_f32(v14, v15) < 0.00000011921;
}

double CalRoundPointToScreenScale(double a1, double a2)
{
  v3 = a1;
  if (a1 != a1)
  {
    UIRoundToViewScale();
    v3 = v4;
  }

  if (a2 != a2)
  {
    UIRoundToViewScale();
  }

  return v3;
}

double EKUIPixelSizeInPoints()
{
  if (EKUIPixelSizeInPoints_onceToken != -1)
  {
    EKUIPixelSizeInPoints_cold_1();
  }

  return *&EKUIPixelSizeInPoints_pixelSizeInPoints;
}

void __EKUIPixelSizeInPoints_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _EKUIScaleFactor();
  if (v0 == 0.0)
  {
    v1 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v8) = 0;
    v2 = "The main screen's scale is 0.0.  Will not calculate pixel size in points.";
    v3 = v1;
    v4 = OS_LOG_TYPE_ERROR;
    v5 = 2;
  }

  else
  {
    v6 = v0;
    *&EKUIPixelSizeInPoints_pixelSizeInPoints = 1.0 / v0;
    v7 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v8 = 134218240;
    v9 = v6;
    v10 = 2048;
    v11 = EKUIPixelSizeInPoints_pixelSizeInPoints;
    v2 = "The main screen's scale is [%f].  The pixel size in points is [%f]";
    v3 = v7;
    v4 = OS_LOG_TYPE_DEBUG;
    v5 = 22;
  }

  _os_log_impl(&dword_1D3400000, v3, v4, v2, &v8, v5);
}

double EKUISeparatorLineThickness()
{
  v0 = 1.0;
  if ((MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    v1 = CalOnePixelInPoints___scale;
    if (*&CalOnePixelInPoints___scale == -1.0)
    {
      *&v1 = _EKUIScaleFactor();
      CalOnePixelInPoints___scale = v1;
    }

    return 1.0 / *&v1;
  }

  return v0;
}

void CalUpdateUserInterfaceDirection()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  _leftToRight = [v0 layoutDirectionOrOverride] == 0;
}

void _LocaleChanged()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  __calendarDirectionLeftToRight = [v0 _calendarDirection] == 0;
}

void sub_1D35280D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D352A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D352DC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D352F124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D352FACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3530744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id DarkenWhiteIfNeeded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (CUIKColorIsWhite())
  {
    v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
  }

  return v2;
}

id CalendarTitleWithDotAttributedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = CUIKDisplayedTitleForCalendar();
  v6 = [v4 displayColor];

  v7 = CUIKAdjustedColorForBackgroundColor();

  v8 = [EKUICalendarMenu calendarCircleImageForColor:v7];
  v9 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v8];
  v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v9];
  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@"];
  v13 = [v11 initWithFormat:v12 options:0 locale:0, v10, v5];

  return v13;
}

id _calendarPreferencesTableAdditionsBoldFont()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0 options:1];
  v1 = [v0 fontDescriptorWithSymbolicTraits:{objc_msgSend(v0, "symbolicTraits") | 2}];
  v2 = [MEMORY[0x1E69DB878] fontWithDescriptor:v1 size:0.0];

  return v2;
}

void sub_1D353EF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D353F1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D35451CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3545314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D35454C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getQLPreviewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getQLPreviewControllerClass_softClass;
  v7 = getQLPreviewControllerClass_softClass;
  if (!getQLPreviewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getQLPreviewControllerClass_block_invoke;
    v3[3] = &unk_1E843F520;
    v3[4] = &v4;
    __getQLPreviewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D354764C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __QuickLookLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84424E0;
    v5 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    __getQLPreviewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getQLPreviewControllerClass_block_invoke_cold_1();
  }

  getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuickLookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D35485D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PresentValidationAlert(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v6 = EventKitUIBundle();
  v5 = [v6 localizedStringForKey:@"Cannot Save Event" value:&stru_1F4EF6790 table:0];
  PresentValidationAlertWithDefaultTitle(v4, v3, v5);
}

void PresentValidationAlertWithDefaultTitle(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = a1;
  v10 = [v7 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A588]];

  if (v11)
  {
    v12 = *MEMORY[0x1E6966910];
    goto LABEL_10;
  }

  v13 = [v7 domain];
  v12 = *MEMORY[0x1E6966910];
  v14 = [v13 isEqualToString:*MEMORY[0x1E6966910]];

  if (v14)
  {
    v15 = [v7 code];
    if (v15 == 7)
    {
      v16 = @"Cannot Repeat Event";
LABEL_8:
      v17 = EventKitUIBundle();
      v11 = [v17 localizedStringForKey:v16 value:&stru_1F4EF6790 table:0];

      if (v11)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v15 == 8)
    {
      v16 = @"Alert Time";
      goto LABEL_8;
    }
  }

LABEL_9:
  v11 = v8;
LABEL_10:

  v26 = v7;
  v18 = [v26 domain];
  v19 = [v18 isEqualToString:v12];

  if (v19)
  {
    v20 = [v26 localizedDescription];
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v20 preferredStyle:1];
  v22 = MEMORY[0x1E69DC648];
  v23 = EventKitUIBundle();
  v24 = [v23 localizedStringForKey:@"OK" value:&stru_1F4EF6790 table:0];
  v25 = [v22 actionWithTitle:v24 style:1 handler:0];
  [v21 addAction:v25];

  [v9 presentViewController:v21 animated:1 completion:0];
}

void PresentJunkAlertControllerWithHandler(void *a1, void *a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a4;
  v16 = a2;
  v17 = a1;
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"You can report this invitation as junk by sending it to Apple." value:&stru_1F4EF6790 table:0];

  v20 = EventKitUIBundle();
  v21 = [v20 localizedStringForKey:@"Delete and Report Junk" value:&stru_1F4EF6790 table:0];

  v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:0 preferredStyle:a3];
  v23 = MEMORY[0x1E69DC648];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __PresentJunkAlertControllerWithHandler_block_invoke;
  v32[3] = &unk_1E8442288;
  v33 = v15;
  v24 = v15;
  v25 = [v23 actionWithTitle:v21 style:2 handler:v32];
  [v22 addAction:v25];

  v26 = MEMORY[0x1E69DC648];
  v27 = EventKitUIBundle();
  v28 = [v27 localizedStringForKey:@"Cancel - report as spam" value:@"Cancel" table:0];
  v29 = [v26 actionWithTitle:v28 style:1 handler:0];
  [v22 addAction:v29];

  v30 = [v22 popoverPresentationController];
  [v30 setSourceView:v16];

  v31 = [v22 popoverPresentationController];
  [v31 setSourceRect:{a5, a6, a7, a8}];

  [v17 presentViewController:v22 animated:1 completion:0];
}

void PresentJunkAlertControllerForEvent(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __PresentJunkAlertControllerForEvent_block_invoke;
  v15[3] = &unk_1E843EC60;
  v16 = v13;
  v14 = v13;
  PresentJunkAlertControllerWithHandler(a3, a2, 0, v15, a4, a5, a6, a7);
}

void PresentJunkAlertDialogForEvent(void *a1, void *a2)
{
  v3 = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PresentJunkAlertDialogForEvent_block_invoke;
  v9[3] = &unk_1E843EC60;
  v10 = v3;
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = v3;
  PresentJunkAlertControllerWithHandler(a2, 0, 1, v9, v4, v5, v6, v7);
}

void PresentJunkAlertControllerForCalendar(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __PresentJunkAlertControllerForCalendar_block_invoke;
  v15[3] = &unk_1E843EC60;
  v16 = v13;
  v14 = v13;
  PresentJunkAlertControllerWithHandler(a3, a2, 0, v15, a4, a5, a6, a7);
}

void PresentJunkAlertDialogForCalendar(void *a1, void *a2)
{
  v3 = a1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PresentJunkAlertDialogForCalendar_block_invoke;
  v9[3] = &unk_1E843EC60;
  v10 = v3;
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = v3;
  PresentJunkAlertControllerWithHandler(a2, 0, 1, v9, v4, v5, v6, v7);
}

void sub_1D354A134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D354A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D354A8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getREMRecurrenceRuleFormatterClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ReminderKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8442520;
    v5 = 0;
    ReminderKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    __getREMRecurrenceRuleFormatterClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("REMRecurrenceRuleFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMRecurrenceRuleFormatterClass_block_invoke_cold_1_0();
  }

  getREMRecurrenceRuleFormatterClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __MessageUIClassFromString(void *a1)
{
  v1 = a1;
  if (__MessageUIHandle_MessageUIHandle)
  {
    goto LABEL_5;
  }

  v2 = MEMORY[0x1D38B9AC0]();
  v3 = [v2 stringByAppendingPathComponent:@"System/Library/Frameworks/MessageUI.framework/MessageUI"];

  __MessageUIHandle_MessageUIHandle = dlopen([v3 fileSystemRepresentation], 1);
  if (!__MessageUIHandle_MessageUIHandle)
  {
    v4 = dlerror();
    NSLog(&cfstr_CouldnTLoadMes.isa, v4);
  }

  if (__MessageUIHandle_MessageUIHandle)
  {
LABEL_5:
    v5 = NSClassFromString(v1);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void sub_1D354EEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D354F3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id EKUILogSignpostHandle()
{
  if (EKUILogSignpostHandle_onceToken != -1)
  {
    EKUILogSignpostHandle_cold_1();
  }

  v1 = EKUILogSignpostHandle_handle;

  return v1;
}

void __EKUILogSignpostHandle_block_invoke()
{
  v0 = os_log_create(EKUILogSubsystem, "signpost");
  v1 = EKUILogSignpostHandle_handle;
  EKUILogSignpostHandle_handle = v0;
}

void sub_1D3553110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62)
{
  objc_destroyWeak(&a62);
  objc_destroyWeak((v62 - 256));
  _Unwind_Resume(a1);
}

uint64_t _EKUIAssert(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"EKUIDeviceCapabilities assertion failed: %@", a2}];
  }

  return result;
}

BOOL EKUIUnscaledCatalyst()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 5;
}

double EKUITableRowHeightDefault()
{
  if (!MEMORY[0x1D38B98D0]())
  {
    return 44.0;
  }

  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  if (EKUIUnscaledCatalyst())
  {
    v1 = 34.0;
  }

  else
  {
    v1 = 52.0;
  }

  [v0 _scaledValueForValue:v1];
  CalRoundToScreenScale(v2);
  if (v3 >= v1)
  {
    v1 = v3;
  }

  return v1;
}

double EKUILayoutMarginsForFullscreenLayoutRectWithSize(void *a1, double a2)
{
  [a1 layoutMargins];
  v4 = v3;
  if (a2 <= 1024.0 && a2 <= 700.0 && a2 <= 678.0 && a2 <= 414.0 && a2 > 375.0)
  {
    CalRoundToScreenScale(22.3333333);
  }

  return v4;
}

uint64_t EKUIShouldUseUIKitLayoutMargins()
{
  v0 = EKUIMainWindowForMultiwindowError();
  [v0 ekui_size];
  v3 = 0;
  if (v0)
  {
    if (v1 > 1.0 && v2 > 1.0)
    {
      v5 = EKUIWindowSizeParadigmForWindowSize(v1, v2);
      v3 = 1;
      if (v5 <= 0x1FFFFFF)
      {
        if (v5 != 0x80000 && v5 != 0x800000)
        {
          goto LABEL_13;
        }
      }

      else if (v5 != 0x2000000 && v5 != 0x8000000 && v5 != 0x20000000)
      {
LABEL_13:
        v3 = 0;
      }
    }
  }

  return v3;
}

uint64_t EKUIIsCompactThickWidthRegularTallHeight()
{
  v0 = EKUIMainWindowForMultiwindowError();
  [v0 ekui_size];
  v3 = 0;
  if (v0)
  {
    if (v1 > 1.0 && v2 > 1.0)
    {
      v5 = EKUIWindowSizeParadigmForWindowSize(v1, v2);
      v3 = 1;
      if (v5 <= 0xFFFFFF)
      {
        if (v5 != 0x40000 && v5 != 0x400000)
        {
          goto LABEL_13;
        }
      }

      else if (v5 != 0x1000000 && v5 != 0x4000000 && v5 != 0x10000000)
      {
LABEL_13:
        v3 = 0;
      }
    }
  }

  return v3;
}

uint64_t EKUIIsExtended(void *a1)
{
  v1 = a1;
  v2 = EKUICurrentWindowSizeParadigmForViewHierarchy(v1);
  if (_EKUIActiveWidthSizeClass(v1) == 1)
  {
    if (v2 == 0x20000)
    {
      goto LABEL_6;
    }

    v3 = EKUICurrentWindowWidthWithViewHierarchy(v1);
    v4 = EKUICurrentWindowHeightWithViewHierarchy(v1);
    if (v3 >= v4)
    {
      v4 = v3;
    }

    if (fabs(v4 + -812.0) < 2.22044605e-16)
    {
LABEL_6:
      v5 = 1;
      goto LABEL_23;
    }
  }

  v5 = 1;
  if (v2 > 0x1FFFFFF)
  {
    if (v2 <= 0x7FFFFFF)
    {
      if (v2 == 0x2000000)
      {
        goto LABEL_23;
      }

      v6 = 0x4000000;
      goto LABEL_21;
    }

    if (v2 != 0x8000000 && v2 != 0x10000000)
    {
      v6 = 0x20000000;
LABEL_21:
      if (v2 == v6)
      {
        goto LABEL_23;
      }

LABEL_22:
      v5 = 0;
    }
  }

  else if (v2 < 0x400000)
  {
    if (v2 != 0x40000 && v2 != 0x80000)
    {
      goto LABEL_22;
    }
  }

  else if (v2 != 0x400000 && v2 != 0x800000)
  {
    v6 = 0x1000000;
    goto LABEL_21;
  }

LABEL_23:

  return v5;
}

uint64_t EKUIIsSizeExtended(double a1, double a2)
{
  v4 = EKUIWindowSizeParadigmForWindowSize(a1, a2);
  result = 1;
  if (v4 <= 0x1FFFFFF)
  {
    if (v4 == 0x80000 || v4 == 0x800000)
    {
      return result;
    }
  }

  else if (v4 == 0x2000000 || v4 == 0x8000000 || v4 == 0x20000000)
  {
    return result;
  }

  v6 = -(375.0 - a2);
  if (375.0 - a2 >= 0.0)
  {
    v6 = 375.0 - a2;
  }

  if (v6 >= 0.00001)
  {
    return 0;
  }

  v7 = 812.0 - a1;
  if (812.0 - a1 < 0.0)
  {
    v7 = -(812.0 - a1);
  }

  if (v7 >= 0.00001)
  {
    return 0;
  }

  return result;
}

double EKUIApplicationFrame(void *a1)
{
  v1 = a1;
  EKUICurrentWindowWidthWithViewHierarchy(v1);
  EKUICurrentWindowHeightWithViewHierarchy(v1);

  return 0.0;
}

double EKUIContainedControllerIdealWidth()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  v1 = [v0 viewHierarchyOrOverride];

  v2 = fmin(EKUICurrentWindowWidthWithViewHierarchy(v1), 375.0);
  return v2;
}

double EKUIContainedControllerIdealHeight()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  v1 = [v0 viewHierarchyOrOverride];

  v2 = fmin(EKUICurrentWindowHeightWithViewHierarchy(v1), 667.0);
  return v2;
}

double EKUIHeightForWindowSizeParadigm(uint64_t a1)
{
  result = 320.0;
  if (a1 < 0x10000)
  {
    if (a1 <= 511)
    {
      if (a1 <= 7)
      {
        switch(a1)
        {
          case -1:
            if (_shouldAssertOnUnknownWindow_onceToken != -1)
            {
              [SizeContext popContextFromViewHierarchy:];
            }

            if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
            {
              [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"EKUIDeviceCapabilities assertion failed: %@", @"EKUIHeightForWindowSizeParadigm: Unable to find window height for paradigm"}];
            }

            return 1.84467441e19;
          case 2:
            return 480.0;
          case 4:
            return 568.0;
          default:
            return result;
        }
      }

      if (a1 > 31)
      {
        if (a1 == 32)
        {
          return 736.0;
        }

        if (a1 != 128)
        {
          return result;
        }
      }

      else if (a1 != 8)
      {
        if (a1 == 16)
        {
          return 667.0;
        }

        return result;
      }

      return 768.0;
    }

    if (a1 <= 4095)
    {
      if (a1 == 512)
      {
        return 768.0;
      }

      if (a1 == 1024)
      {
        return 414.0;
      }

      if (a1 != 2048)
      {
        return result;
      }
    }

    else
    {
      if (a1 < 0x4000)
      {
        if (a1 != 4096)
        {
          if (a1 == 0x2000)
          {
            return 1366.0;
          }

          return result;
        }

        return 768.0;
      }

      if (a1 != 0x4000)
      {
        if (a1 == 0x8000)
        {
          return 1112.0;
        }

        return result;
      }
    }

    return 1024.0;
  }

  if (a1 >= 0x800000)
  {
    if (a1 > 0x7FFFFFF)
    {
      if (a1 > 0x1FFFFFFF)
      {
        if (a1 == 0x20000000)
        {
          return 430.0;
        }

        else if (a1 == 0x40000000)
        {
          return 728.0;
        }
      }

      else if (a1 == 0x8000000)
      {
        return 393.0;
      }

      else if (a1 == 0x10000000)
      {
        return 932.0;
      }
    }

    else if (a1 > 0x1FFFFFF)
    {
      if (a1 == 0x2000000)
      {
        return 428.0;
      }

      else if (a1 == 0x4000000)
      {
        return 852.0;
      }
    }

    else if (a1 == 0x800000)
    {
      return 390.0;
    }

    else if (a1 == 0x1000000)
    {
      return 926.0;
    }

    return result;
  }

  if (a1 >= 0x80000)
  {
    if (a1 < 0x200000)
    {
      if (a1 != 0x80000)
      {
        if (a1 == 0x100000)
        {
          return 1194.0;
        }

        return result;
      }

      return 414.0;
    }

    if (a1 != 0x200000)
    {
      if (a1 == 0x400000)
      {
        return 844.0;
      }

      return result;
    }

    return 834.0;
  }

  switch(a1)
  {
    case 0x10000:
      return 834.0;
    case 0x20000:
      return 812.0;
    case 0x40000:
      return 896.0;
  }

  return result;
}

uint64_t _EKUIActiveHeightSizeClass(void *a1)
{
  v1 = a1;
  v2 = EKUICurrentWindowInterfaceParadigm(v1);
  if (v2 == -1)
  {
    v4 = _rootHierarchyForViewHierarchy(v1);
    v3 = [v4 ekui_verticalSizeClass];
  }

  else if (v2 == 16 || v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t EKUIInterfaceOrientationForViewHierarchy(void *a1)
{
  v1 = _rootHierarchyForViewHierarchy(a1);
  v2 = [v1 ekui_interfaceOrientation];

  return v2;
}

uint64_t EKUIGoldenRatioColumnWidthMajor(double a1)
{
  CalRoundToScreenScale(a1 / 2.61803399);
  v2 = v1 * 1.61803399;

  return CalRoundToScreenScale(v2);
}

BOOL EKUICurrentWidthSizeClassIsRegular()
{
  v0 = +[EKUIApplicationExtensionOverrides shared];
  v1 = [v0 viewHierarchyOrOverride];

  v2 = _EKUIActiveWidthSizeClass(v1) == 2;
  return v2;
}

void sub_1D3554970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3555BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3557C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D355BB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3560430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3562CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3562EF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1D3565C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D356B4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCNComposeRecipientTextViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNComposeRecipientTextViewClass_softClass;
  v7 = getCNComposeRecipientTextViewClass_softClass;
  if (!getCNComposeRecipientTextViewClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNComposeRecipientTextViewClass_block_invoke;
    v3[3] = &unk_1E843F520;
    v3[4] = &v4;
    __getCNComposeRecipientTextViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D356B618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNComposeRecipientClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNComposeRecipientClass_softClass_1;
  v7 = getCNComposeRecipientClass_softClass_1;
  if (!getCNComposeRecipientClass_softClass_1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNComposeRecipientClass_block_invoke_1;
    v3[3] = &unk_1E843F520;
    v3[4] = &v4;
    __getCNComposeRecipientClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D356BCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D356C774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D356DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAutocompleteResultsTableViewControllerClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteUILibrary();
  result = objc_getClass("CNAutocompleteResultsTableViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteResultsTableViewControllerClass_block_invoke_cold_1();
  }

  getCNAutocompleteResultsTableViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ContactsAutocompleteUILibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary_1)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ContactsAutocompleteUILibraryCore_block_invoke_1;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E8442838;
    v2 = 0;
    ContactsAutocompleteUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!ContactsAutocompleteUILibraryCore_frameworkLibrary_1)
  {
    ContactsAutocompleteUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ContactsAutocompleteUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  ContactsAutocompleteUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getCNComposeRecipientTextViewClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteUILibrary();
  result = objc_getClass("CNComposeRecipientTextView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNComposeRecipientTextViewClass_block_invoke_cold_1();
  }

  getCNComposeRecipientTextViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNComposeRecipientClass_block_invoke_1(uint64_t a1)
{
  ContactsAutocompleteUILibrary();
  result = objc_getClass("CNComposeRecipient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNComposeRecipientClass_block_invoke_cold_1_1();
  }

  getCNComposeRecipientClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNComposeRecipientGroupClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteUILibrary();
  result = objc_getClass("CNComposeRecipientGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNComposeRecipientGroupClass_block_invoke_cold_1();
  }

  getCNComposeRecipientGroupClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNComposeRecipientOriginContextClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteUILibrary();
  result = objc_getClass("CNComposeRecipientOriginContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNComposeRecipientOriginContextClass_block_invoke_cold_1();
  }

  getCNComposeRecipientOriginContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNAutocompleteSearchManagerClass_block_invoke(uint64_t a1)
{
  ContactsAutocompleteUILibrary();
  result = objc_getClass("CNAutocompleteSearchManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAutocompleteSearchManagerClass_block_invoke_cold_1();
  }

  getCNAutocompleteSearchManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D3572BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D35761F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPKScribbleInteractionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKScribbleInteractionClass_softClass;
  v7 = getPKScribbleInteractionClass_softClass;
  if (!getPKScribbleInteractionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPKScribbleInteractionClass_block_invoke;
    v3[3] = &unk_1E843F520;
    v3[4] = &v4;
    __getPKScribbleInteractionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D35780BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKScribbleInteractionClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PencilKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PencilKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8442930;
    v5 = 0;
    PencilKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PencilKitLibraryCore_frameworkLibrary)
  {
    __getPKScribbleInteractionClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PKScribbleInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKScribbleInteractionClass_block_invoke_cold_1();
  }

  getPKScribbleInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PencilKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D357B67C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1D357BAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D357C850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D357D29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D357E994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3586E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3588CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D358C514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t DraggedEventShadowColor()
{
  v0 = [MEMORY[0x1E69DC888] blackColor];
  v1 = [v0 CGColor];

  return v1;
}

double pinchDistanceForGestureRecognizer(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 locationOfTouch:0 inView:v3];
  v6 = v5;
  [v4 locationOfTouch:1 inView:v3];
  v8 = v7;

  return vabdd_f64(v6, v8);
}

double CalSnapDateTo15MinuteOr5MinuteInterval(void *a1, int a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    if (!v5 || ([v5 isNew] & 1) != 0)
    {
      goto LABEL_8;
    }

    v7 = [v6 startDate];
    [v7 timeIntervalSinceReferenceDate];
    v9 = a3 - v8;

    v10 = -v9;
    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    if (v10 >= 149.0)
    {
LABEL_8:
      v14 = [MEMORY[0x1E695DEE8] currentCalendar];
      v15 = [v6 eventStore];
      v16 = [v15 timeZone];

      if (v16)
      {
        v17 = [v6 eventStore];
        v18 = [v17 timeZone];
        [v14 setTimeZone:v18];
      }

      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
      v20 = [v14 components:224 fromDate:v19];

      v21 = [v20 minute];
      v22 = [v20 second] + 60 * v21;
      if (a2 != 3 && (v22 - 151) <= 0x12A || a2 == 2 && (v22 - 1951) <= 0x12A || a2 == 3 && (v22 - 3151) <= 0x12A)
      {
        v13 = round(a3 / 300.0) * 300.0;
      }

      else
      {
        v13 = _CalSnapDateTo15MinuteIntervalWithMinimumMovementThreshold(v6, a3, 149.0);
      }
    }

    else
    {
      v11 = [v6 startDate];
      [v11 timeIntervalSinceReferenceDate];
      v13 = v12;
    }
  }

  else
  {
    v13 = _CalSnapDateTo15MinuteIntervalWithMinimumMovementThreshold(v5, a3, 900.0);
  }

  return v13;
}

void CalPopViewIn(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 setAlpha:0.0];
  CGAffineTransformMakeScale(&v14, 0.1, 0.1);
  v13 = v14;
  [v3 setTransform:&v13];
  v5 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CalPopViewIn_block_invoke;
  v11[3] = &unk_1E843EC60;
  v12 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CalPopViewIn_block_invoke_2;
  v8[3] = &unk_1E8442D88;
  v9 = v12;
  v10 = v4;
  v6 = v4;
  v7 = v12;
  [v5 animateWithDuration:0x20000 delay:v11 options:v8 animations:0.100000001 completion:0.0];
}

void CalScaleViewIn(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  [v11 frame];
  v14 = a5 < v13;
  if (a5 > v13)
  {
    v14 = 1;
  }

  v15 = dbl_1D3600EA0[v14];
  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOpacity"];
  [v16 setDuration:v15];
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v16 setFromValue:v17];

  v18 = MEMORY[0x1E696AD98];
  v19 = [v11 layer];
  [v19 shadowOpacity];
  v20 = [v18 numberWithFloat:?];
  [v16 setToValue:v20];

  v21 = [v11 layer];
  [v21 addAnimation:v16 forKey:@"animateOpacity"];

  v22 = MEMORY[0x1E69DD250];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __CalScaleViewIn_block_invoke;
  v28[3] = &unk_1E8441260;
  v29 = v11;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __CalScaleViewIn_block_invoke_2;
  v25[3] = &unk_1E8442D88;
  v26 = v29;
  v27 = v12;
  v23 = v12;
  v24 = v29;
  [v22 animateWithDuration:0x20000 delay:v28 options:v25 animations:v15 completion:0.0];
}

void CalSwitchViewToSuperview(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  v4 = [v14 superview];

  if (v4 != v3)
  {
    if (v3)
    {
      v5 = [v14 superview];
      [v14 frame];
      [v5 convertRect:v3 toView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v3 addSubview:v14];
      [v14 setFrame:{v7, v9, v11, v13}];
    }

    else
    {
      [v14 removeFromSuperview];
    }
  }
}

void sub_1D359A328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double _CalSnapDateTo15MinuteIntervalWithMinimumMovementThreshold(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5 || ([v5 isNew] & 1) != 0)
  {
    goto LABEL_7;
  }

  v7 = [v6 startDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = a2 - v8;

  v10 = -v9;
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  if (v10 >= a3)
  {
LABEL_7:
    v13 = round(a2 / 900.0) * 900.0;
  }

  else
  {
    v11 = [v6 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
  }

  return v13;
}

uint64_t __CalPopViewIn_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  CGAffineTransformMakeScale(&v5, 1.11, 1.11);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __CalPopViewIn_block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalPopViewIn_block_invoke_3;
  v6[3] = &unk_1E843EC60;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CalPopViewIn_block_invoke_4;
  v3[3] = &unk_1E8442D88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:0 delay:v6 options:v3 animations:0.100000001 completion:0.0];
}

uint64_t __CalPopViewIn_block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.95, 0.95);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __CalPopViewIn_block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalPopViewIn_block_invoke_5;
  v6[3] = &unk_1E843EC60;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CalPopViewIn_block_invoke_6;
  v3[3] = &unk_1E8442D88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:0 delay:v6 options:v3 animations:0.100000001 completion:0.0];
}

uint64_t __CalPopViewIn_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __CalPopViewIn_block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setNeedsDisplay];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __CalScaleViewIn_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

uint64_t __CalScaleViewIn_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsDisplay];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void CalScaleViewOut(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  [v11 frame];
  v14 = a5 < v13;
  if (a5 > v13)
  {
    v14 = 1;
  }

  v15 = dbl_1D3600EB0[v14];
  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOpacity"];
  [v16 setDuration:v15];
  v17 = MEMORY[0x1E696AD98];
  v18 = [v11 layer];
  [v18 shadowOpacity];
  v19 = [v17 numberWithFloat:?];
  [v16 setFromValue:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v16 setToValue:v20];

  v21 = [v11 layer];
  [v21 addAnimation:v16 forKey:@"animateOpacity"];

  v22 = MEMORY[0x1E69DD250];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __CalScaleViewOut_block_invoke;
  v28[3] = &unk_1E8441260;
  v29 = v11;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __CalScaleViewOut_block_invoke_2;
  v25[3] = &unk_1E8442D88;
  v26 = v29;
  v27 = v12;
  v23 = v12;
  v24 = v29;
  [v22 animateWithDuration:131076 delay:v28 options:v25 animations:v15 completion:0.0];
}

void __CalScaleViewOut_block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalScaleViewOut_block_invoke_3;
  v6[3] = &unk_1E843EC60;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CalScaleViewOut_block_invoke_4;
  v3[3] = &unk_1E8442D88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:v6 animations:v3 completion:0.05];
}

uint64_t __CalScaleViewOut_block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setNeedsDisplay];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void CalPlopViewWithScaleFactorAndCompletion(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__22;
  v16[4] = __Block_byref_object_dispose__22;
  v17 = [v6 copy];
  v7 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke;
  v13[3] = &unk_1E843F690;
  v14 = v5;
  v15 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_2;
  v9[3] = &unk_1E8442DD8;
  v8 = v14;
  v12 = a3;
  v10 = v8;
  v11 = v16;
  [v7 animateWithDuration:0x10000 delay:v13 options:v9 animations:0.100000001 completion:0.0];

  _Block_object_dispose(v16, 8);
}

void *__Block_byref_object_copy__22(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __CalPlopViewWithScaleFactorAndCompletion_block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40) * 1.11, *(a1 + 40) * 1.11);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __CalPlopViewWithScaleFactorAndCompletion_block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_3;
  v9[3] = &unk_1E843EC60;
  v10 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_4;
  v5[3] = &unk_1E8442DD8;
  v3 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 animateWithDuration:0 delay:v9 options:v5 animations:0.100000001 completion:0.0];
}

uint64_t __CalPlopViewWithScaleFactorAndCompletion_block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.95, 0.95);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __CalPlopViewWithScaleFactorAndCompletion_block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_5;
  v8[3] = &unk_1E843F690;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_6;
  v5[3] = &unk_1E8442DB0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 animateWithDuration:0 delay:v8 options:v5 animations:0.100000001 completion:0.0];
}

uint64_t __CalPlopViewWithScaleFactorAndCompletion_block_invoke_5(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40) * 1.05, *(a1 + 40) * 1.05);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __CalPlopViewWithScaleFactorAndCompletion_block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_7;
  v4[3] = &unk_1E843EC60;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CalPlopViewWithScaleFactorAndCompletion_block_invoke_8;
  v3[3] = &unk_1E8442128;
  v3[4] = *(a1 + 40);
  [v2 animateWithDuration:0x20000 delay:v4 options:v3 animations:0.100000001 completion:0.0];
}

uint64_t __CalPlopViewWithScaleFactorAndCompletion_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __CalPlopViewWithScaleFactorAndCompletion_block_invoke_8(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

double sub_1D359EB70@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EKEventGenericDetailOOPHostViewModel();
  sub_1D35A052C(&qword_1EC76A4F0, type metadata accessor for EKEventGenericDetailOOPHostViewModel);
  *a1 = sub_1D35DF0D4();
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1D359EC00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x80))();
  type metadata accessor for _AppExtensionEventGenericDetailHostView.Configuration(0);
  sub_1D35A052C(&qword_1EC76A4F8, type metadata accessor for _AppExtensionEventGenericDetailHostView.Configuration);
  v6 = sub_1D35DF0D4();
  v35 = v7;
  v36 = v6;
  v8 = swift_allocObject();
  v9 = *(v2 + 48);
  *(v8 + 48) = *(v2 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v2 + 64);
  *(v8 + 96) = *(v2 + 80);
  v10 = *(v2 + 16);
  *(v8 + 16) = *v2;
  *(v8 + 32) = v10;
  v34 = v8;
  v11 = swift_allocObject();
  v12 = *(v2 + 48);
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(v2 + 64);
  *(v11 + 96) = *(v2 + 80);
  v13 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v13;
  v14 = swift_allocObject();
  v15 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v2 + 64);
  *(v14 + 96) = *(v2 + 80);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = swift_allocObject();
  v18 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v2 + 64);
  *(v17 + 96) = *(v2 + 80);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  v20 = *((*v5 & *v4) + 0xB0);
  sub_1D35A0790(v2, v37);
  sub_1D35A0790(v2, v37);
  sub_1D35A0790(v2, v37);
  v21 = sub_1D35A0790(v2, v37);
  v33 = v20(v21);
  v32 = sub_1D35DF1B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D3600F10;
  LOBYTE(v5) = sub_1D35DF1D4();
  *(inited + 32) = v5;
  v23 = sub_1D35DF1E4();
  *(inited + 33) = v23;
  v24 = sub_1D35DF204();
  *(inited + 34) = v24;
  v25 = sub_1D35DF1F4();
  sub_1D35DF1F4();
  if (sub_1D35DF1F4() != v5)
  {
    v25 = sub_1D35DF1F4();
  }

  sub_1D35DF1F4();
  if (sub_1D35DF1F4() != v23)
  {
    v25 = sub_1D35DF1F4();
  }

  sub_1D35DF1F4();
  if (sub_1D35DF1F4() != v24)
  {
    v25 = sub_1D35DF1F4();
  }

  v26 = sub_1D35DF0E4();
  v27 = swift_allocObject();
  v28 = *(v2 + 48);
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(v2 + 64);
  *(v27 + 96) = *(v2 + 80);
  v29 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v29;
  v30 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A508) + 36));
  sub_1D35DF0C4();
  sub_1D35A0790(v2, v37);
  result = sub_1D35DF464();
  *v30 = &unk_1D3600F40;
  v30[1] = v27;
  *a1 = v36;
  *(a1 + 8) = v35;
  *(a1 + 16) = sub_1D35A0574;
  *(a1 + 24) = v34;
  *(a1 + 32) = sub_1D35A061C;
  *(a1 + 40) = v11;
  *(a1 + 48) = sub_1D35A06A8;
  *(a1 + 56) = v14;
  *(a1 + 64) = sub_1D35A0720;
  *(a1 + 72) = v17;
  *(a1 + 80) = v33;
  *(a1 + 88) = v32;
  *(a1 + 96) = v26;
  *(a1 + 104) = v25;
  return result;
}

uint64_t sub_1D359EFFC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1D35DEFA4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1D35DEFC4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_1D35DEFE4();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_1D35DF454();
  v1[15] = sub_1D35DF444();
  v6 = sub_1D35DF424();
  v1[16] = v6;
  v1[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D359F1AC, v6, v5);
}

uint64_t sub_1D359F1AC()
{
  sub_1D35DB638();

  sub_1D35DEF94();
  sub_1D35DEFD4();
  sub_1D35DEFB4();
  v0[18] = sub_1D35DF444();
  v1 = sub_1D35A052C(&unk_1EC76A720, MEMORY[0x1E6966C20]);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1D359F2E4;
  v3 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_1D359F2E4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D35DF424();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D359F754;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D35DF424();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D359F47C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1D359F47C()
{

  v0[21] = v0[2];
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_1D359F4E8, v1, v2);
}

uint64_t sub_1D359F4E8()
{
  if (v0[21])
  {

    return MEMORY[0x1EEE6DFA0](sub_1D359F614, 0, 0);
  }

  else
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[5];

    (*(v2 + 8))(v1, v3);
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D359F614()
{
  *(v0 + 176) = sub_1D35DF444();
  v2 = sub_1D35DF424();

  return MEMORY[0x1EEE6DFA0](sub_1D359F6A0, v2, v1);
}

void sub_1D359F6A0()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[4];

  sub_1D359FA90(v1, v3);
  if (v2)
  {
  }

  else
  {

    v4 = v0[16];
    v5 = v0[17];

    MEMORY[0x1EEE6DFA0](sub_1D359F9AC, v4, v5);
  }
}

uint64_t sub_1D359F754()
{
  v0[3] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76B230);
  swift_willThrowTypedImpl();

  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_1D359F7F0, v1, v2);
}

uint64_t sub_1D359F7F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v4 = sub_1D35DF4C4();
  v5 = *sub_1D35AF6CC();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[20];
  if (v6)
  {
    v8 = v5;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D3400000, v8, v4, "EKEventGenericDetailOOPHostView: Could not read extension query results. Error: %@", v9, 0xCu);
    sub_1D35A537C(v10, &qword_1EC76A530);
    MEMORY[0x1D38BA4C0](v10, -1, -1);
    MEMORY[0x1D38BA4C0](v9, -1, -1);
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D359F9AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

void sub_1D359FA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D35DF014();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  if (*(a1 + 16))
  {
    v14 = *(v5 + 16);
    v14(&v39 - v12, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    v15 = *(a2 + 8);
    (*((*MEMORY[0x1E69E7D40] & *v15) + 0x70))(1);
    v16 = sub_1D35DF4D4();
    v17 = *sub_1D35AF6CC();
    v14(v11, v13, v4);
    v14(v8, v13, v4);
    if (os_log_type_enabled(v17, v16))
    {
      v43 = v17;
      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v18 = 136315394;
      v19 = sub_1D35DEFF4();
      v21 = v20;
      v40 = *(v5 + 8);
      v41 = v16;
      v40(v11, v4);
      v22 = sub_1D35A3CF8(v19, v21, &v44);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_1D35DF004();
      v25 = v24;
      v26 = v40;
      v40(v8, v4);
      v27 = sub_1D35A3CF8(v23, v25, &v44);

      *(v18 + 14) = v27;
      v28 = v43;
      _os_log_impl(&dword_1D3400000, v43, v41, "EKEventGenericDetailOOPHostView AppExtensionQuery Found %s (%s) RemoteUI Extension", v18, 0x16u);
      v29 = v42;
      swift_arrayDestroy();
      MEMORY[0x1D38BA4C0](v29, -1, -1);
      v30 = v18;
      v31 = v26;
      MEMORY[0x1D38BA4C0](v30, -1, -1);
    }

    else
    {
      v31 = *(v5 + 8);
      v31(v8, v4);
      v32 = (v31)(v11, v4);
    }

    v34 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x80))(v32);
    v35 = sub_1D35DB66C();
    v36 = *v35;
    v37 = v35[1];
    v38 = *(*v34 + 360);

    v38(v13, v36, v37, v15);

    v31(v13, v4);
  }

  else
  {
    sub_1D35DF4C4();
    v43 = *sub_1D35AF6CC();
    sub_1D35DF024();
    v33 = v43;
  }
}

void sub_1D359FF08()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);
  if (v1)
  {
    v3 = v1;
    v8 = v2;
    v4 = sub_1D35DF274();
    (*((*MEMORY[0x1E69E7D40] & *v8) + 0xB8))(v4);
  }

  else
  {
    v5 = objc_opt_self();
    v8 = v2;
    v6 = [v5 whiteColor];
    v7 = sub_1D35DF274();
    (*((*MEMORY[0x1E69E7D40] & *v8) + 0xB8))(v7);
  }
}

void sub_1D35A0020(uint64_t a1)
{
  *(v1 + 80) = a1;

  sub_1D359FF08();
}

uint64_t sub_1D35A005C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D35DF4D4();
  v6 = *sub_1D35AF6CC();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1D35A3CF8(a1, a2, &v12);
    _os_log_impl(&dword_1D3400000, v7, v5, "EKEventOOPHostView: rightBarButtonTapped. buttonAction <%s>", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38BA4C0](v9, -1, -1);
    MEMORY[0x1D38BA4C0](v8, -1, -1);
  }

  v10 = *(*((*MEMORY[0x1E69E7D40] & **(v2 + 8)) + 0x80))();
  (*(v10 + 288))(a1, a2);
}

uint64_t sub_1D35A01EC(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D35DF4D4();
  v6 = *sub_1D35AF6CC();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1D35A3CF8(a1, a2, &v12);
    _os_log_impl(&dword_1D3400000, v7, v5, "EKEventOOPHostView: rightBarButtonTapped. buttonAction <%s>", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38BA4C0](v9, -1, -1);
    MEMORY[0x1D38BA4C0](v8, -1, -1);
  }

  v10 = *(*((*MEMORY[0x1E69E7D40] & **(v2 + 8)) + 0x80))();
  (*(v10 + 320))(a1, a2);
}

uint64_t sub_1D35A037C(uint64_t a1)
{
  v3 = sub_1D35DF4D4();
  v4 = *sub_1D35AF6CC();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1D3400000, v5, v3, "EKEventOOPHostView: bottomStatusButtonTapped. buttonAction <%ld>", v6, 0xCu);
    MEMORY[0x1D38BA4C0](v6, -1, -1);
  }

  v7 = *(*((*MEMORY[0x1E69E7D40] & **(v1 + 8)) + 0x80))();
  (*(v7 + 352))(a1);
}

uint64_t sub_1D35A052C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D35A0574(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);
  if (v6)
  {
    v11 = result;

    v6(v11, a2, a3, a4, a5);

    return sub_1D3410744(v6);
  }

  return result;
}

uint64_t sub_1D35A061C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (v4)
  {
    v7 = result;

    v4(v7, a2, a3);

    return sub_1D3410744(v4);
  }

  return result;
}

uint64_t sub_1D35A06A8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = result;

    v3(v5, a2);

    return sub_1D3410744(v3);
  }

  return result;
}

uint64_t sub_1D35A0720(uint64_t result)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_1D3410744(v2);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D35A0890()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D35A0924;

  return sub_1D359EFFC(v0 + 16);
}

uint64_t sub_1D35A0924()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D35A0A90()
{
  v1 = (v0 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_sceneID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D35A0AE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_sceneID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D35A0BA8()
{
  v1 = (v0 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_viewID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D35A0C00(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_viewID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D35A0CC0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D35A0D10(a1, a2);
  return v4;
}

uint64_t sub_1D35A0D10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  v9 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_identity;
  v10 = sub_1D35DF014();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_sceneID);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration__customViewConfigurationChangedPublisher;
  v18[15] = 0;
  sub_1D35DF044();
  (*(v6 + 32))(v2 + v12, v8, v5);
  v13 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_leftBarButtonTappedCallback);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_rightBarButtonTappedCallback);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_bottomStatusButtonTappedCallback);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_viewID);
  *v16 = a1;
  v16[1] = a2;
  return v2;
}

uint64_t sub_1D35A0EAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D35DF084();

  return v1;
}

uint64_t sub_1D35A0F20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D35A0FB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D35DF094();
}

void (*sub_1D35A1028(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D35DF074();
  return sub_1D35A10CC;
}

void sub_1D35A10CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D35A1134()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  sub_1D35DF054();
  return swift_endAccess();
}

uint64_t sub_1D35A11A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  sub_1D35DF064();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1D35A12E0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A520);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration__customViewConfigurationChangedPublisher;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  sub_1D35DF054();
  swift_endAccess();
  return sub_1D35A1450;
}

void sub_1D35A1450(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1D35DF064();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1D35DF064();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void (*sub_1D35A1658(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  result = (*(*v2 + 264))();
  if (result)
  {
    v6 = result;
    result(a1, a2);

    return sub_1D3410744(v6);
  }

  return result;
}

void (*sub_1D35A1794(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  result = (*(*v2 + 296))();
  if (result)
  {
    v6 = result;
    result(a1, a2);

    return sub_1D3410744(v6);
  }

  return result;
}

uint64_t sub_1D35A1850(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1D35A18D8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void (*sub_1D35A199C(uint64_t a1))(uint64_t)
{
  result = (*(*v1 + 328))();
  if (result)
  {
    v4 = result;
    result(a1);

    return sub_1D3410744(v4);
  }

  return result;
}

uint64_t sub_1D35A1A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A510);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-v8];
  v10 = sub_1D35DF014();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(*v3 + 144))(v9);
  v12 = *(*v3 + 168);

  v12(a2, a3);
  v13 = (*(*v3 + 232))(v16);
  *v14 = !*v14;
  return v13(v16, 0);
}

uint64_t sub_1D35A1BE8()
{
  sub_1D35A537C(v0 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_identity, &unk_1EC76A510);

  v1 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration__customViewConfigurationChangedPublisher;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D3410744(*(v0 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_leftBarButtonTappedCallback));
  sub_1D3410744(*(v0 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_rightBarButtonTappedCallback));
  sub_1D3410744(*(v0 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView13Configuration_bottomStatusButtonTappedCallback));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D35A1D14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _AppExtensionEventGenericDetailHostView.Configuration(0);
  result = sub_1D35DF034();
  *a1 = result;
  return result;
}

id sub_1D35A1D54(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_identity;
  v5 = sub_1D35DF014();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_conn] = 0;
  v6 = &v3[OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  *(v6 + 4) = a1[4];
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1D35A1E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1D35A4B5C(v2 + v4, a2, &unk_1EC76A510);
}

uint64_t sub_1D35A1E98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1D35A42EC(a1, v2 + v4);
  return swift_endAccess();
}

void *sub_1D35A1F54()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_conn;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D35A1FA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_conn;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D35A205C(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  aBlock = 0;
  v2 = [a1 makeXPCConnectionWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
    v5 = aBlock;
    v6 = v3;
    v4(v3);
    [v6 setExportedInterface_];
    [v6 setRemoteObjectInterface_];
    [v6 setExportedObject_];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = sub_1D35A5454;
    v44 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1D35A2720;
    v42 = &block_descriptor;
    v8 = _Block_copy(&aBlock);

    [v6 setInterruptionHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = sub_1D35A43CC;
    v44 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1D35A2720;
    v42 = &block_descriptor_23;
    v10 = _Block_copy(&aBlock);

    [v6 setInvalidationHandler_];
    _Block_release(v10);
    [v6 resume];
    v11 = sub_1D35DF4D4();
    v12 = sub_1D35AF6CC();
    v13 = *v12;
    if (os_log_type_enabled(*v12, v11))
    {
      v14 = v6;
      v15 = v13;
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      *(v16 + 4) = [v14 processIdentifier];
      *(v16 + 8) = 1024;
      *(v16 + 10) = [v14 effectiveUserIdentifier];

      _os_log_impl(&dword_1D3400000, v15, v11, "_AppExtensionEventGenericDetailOOPHostView: Setting up XPC connection. processIdentifier: %d. effectiveUserIdentifier: %u.", v16, 0xEu);
      MEMORY[0x1D38BA4C0](v16, -1, -1);
    }

    v17 = [v6 remoteObjectProxy];
    sub_1D35DF5A4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A598);
    if (swift_dynamicCast())
    {
      v18 = *(v1 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 8);
      v19 = *(*v18 + 184);

      v19(v20);
      v21 = sub_1D35DF354();

      [v38 setupGenericViewContextWithViewID_];

      v22 = swift_allocObject();
      *(v22 + 16) = v38;
      v23 = *(*v18 + 272);
      swift_unknownObjectRetain();
      v23(sub_1D35A4470, v22);
      v24 = swift_allocObject();
      *(v24 + 16) = v38;
      v25 = *(*v18 + 304);
      swift_unknownObjectRetain();
      v25(sub_1D35A447C, v24);
      v26 = swift_allocObject();
      *(v26 + 16) = v38;
      v27 = *(*v18 + 336);
      swift_unknownObjectRetain();
      v27(sub_1D35A44E0, v26);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D35DF4C4();
      v37 = *v12;
      sub_1D35DF024();
    }
  }

  else
  {
    v28 = aBlock;
    v29 = sub_1D35DEF04();

    swift_willThrow();
    v30 = sub_1D35DF4C4();
    v31 = *sub_1D35AF6CC();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = v31;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v29;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1D3400000, v32, v30, "Error: _AppExtensionEventGenericDetailOOPHostView Setup: Cannot make XPC Connection. %@", v33, 0xCu);
      sub_1D35A537C(v34, &qword_1EC76A530);
      MEMORY[0x1D38BA4C0](v34, -1, -1);
      MEMORY[0x1D38BA4C0](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D35A2720(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D35A27CC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  [v2 invalidate];

  v3 = *((*v1 & *v0) + 0x90);

  return v3(0);
}

uint64_t sub_1D35A294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v10 = sub_1D35DF294();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 16);
  if (v19)
  {
    v27 = v11;
    v28 = result;
    v20 = *(v5 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 24);
    v26 = v16;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v25 = sub_1D35DF4E4();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = a1;
    v21[5] = a2;
    v21[6] = a3;
    v21[7] = a4;
    v21[8] = v29;
    aBlock[4] = sub_1D35A44F4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_38;
    v22 = _Block_copy(aBlock);
    sub_1D3410734(v19);

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35A052C(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    sub_1D35DF5B4();
    v23 = v25;
    MEMORY[0x1D38B8940](0, v18, v13, v22);
    _Block_release(v22);

    sub_1D3410744(v19);
    (*(v27 + 8))(v13, v10);
    return (*(v26 + 8))(v18, v28);
  }

  return result;
}

uint64_t sub_1D35A2D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D35DF294();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 32);
  if (v16)
  {
    v23 = v8;
    v24 = result;
    v17 = *(v3 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 40);
    v22 = v13;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v21 = sub_1D35DF4E4();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = a3;
    aBlock[4] = sub_1D35A4574;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_44;
    v19 = _Block_copy(aBlock);
    sub_1D3410734(v16);

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35A052C(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    sub_1D35DF5B4();
    v20 = v21;
    MEMORY[0x1D38B8940](0, v15, v10, v19);
    _Block_release(v19);

    sub_1D3410744(v16);
    (*(v23 + 8))(v10, v7);
    return (*(v22 + 8))(v15, v24);
  }

  return result;
}

uint64_t sub_1D35A310C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D35DF294();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 48);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 56);
    v21 = v11;
    v22 = result;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v20 = sub_1D35DF4E4();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v19 = v15;
    v16[4] = a1;
    v16[5] = a2;
    aBlock[4] = sub_1D35A45A8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_50;
    v17 = _Block_copy(aBlock);
    sub_1D3410734(v14);

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35A052C(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    sub_1D35DF5B4();
    v18 = v20;
    MEMORY[0x1D38B8940](0, v13, v8, v17);
    _Block_release(v17);

    sub_1D3410744(v14);
    (*(v6 + 8))(v8, v5);
    return (*(v21 + 8))(v13, v22);
  }

  return result;
}

uint64_t sub_1D35A34E8(uint64_t a1)
{
  v3 = sub_1D35DF294();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 64);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent + 72);
    v19 = v9;
    v20 = result;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v18 = sub_1D35DF4E4();
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v13;
    v17 = v13;
    v14[4] = a1;
    aBlock[4] = sub_1D35A45D8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_56;
    v15 = _Block_copy(aBlock);
    sub_1D3410734(v12);

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35A052C(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    sub_1D35DF5B4();
    v16 = v18;
    MEMORY[0x1D38B8940](0, v11, v6, v15);
    _Block_release(v15);

    sub_1D3410744(v12);
    (*(v4 + 8))(v6, v3);
    return (*(v19 + 8))(v11, v20);
  }

  return result;
}

id sub_1D35A38D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _AppExtensionEventGenericDetailHostView.HostCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D35A39DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6966D50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5C0);
  sub_1D35DF1A4();
  [v0 setDelegate_];

  return v0;
}

id sub_1D35A3A6C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[9];
  v15 = v1[8];
  v16 = *v1;
  v17 = type metadata accessor for _AppExtensionEventGenericDetailHostView.HostCoordinator(0);
  v10 = objc_allocWithZone(v17);
  v11 = OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_identity;
  v12 = sub_1D35DF014();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_conn] = 0;
  v13 = &v10[OBJC_IVAR____TtCV10EventKitUI39_AppExtensionEventGenericDetailHostView15HostCoordinator_parent];
  *v13 = v16;
  *(v13 + 1) = v2;
  *(v13 + 2) = v4;
  *(v13 + 3) = v3;
  *(v13 + 4) = v5;
  *(v13 + 5) = v6;
  *(v13 + 6) = v7;
  *(v13 + 7) = v8;
  *(v13 + 8) = v15;
  *(v13 + 9) = v9;

  sub_1D3410734(v4);
  sub_1D3410734(v5);
  sub_1D3410734(v7);
  sub_1D3410734(v15);
  v19.receiver = v10;
  v19.super_class = v17;
  result = objc_msgSendSuper2(&v19, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1D35A3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D35A5328();

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1D35A3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D35A5328();

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1D35A3CD0()
{
  sub_1D35A5328();
  sub_1D35DF184();
  __break(1u);
}

unint64_t sub_1D35A3CF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D35A3E10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D35A53DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1D35A3E10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D35A3F1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D35DF704();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D35A3F1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D35A3F68(a1, a2);
  sub_1D35A4098(&unk_1F4EF5408);
  return v3;
}

uint64_t sub_1D35A3F68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D35A4184(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D35DF704();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D35DF3A4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D35A4184(v10, 0);
        result = sub_1D35DF6E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D35A4098(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D35A41F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D35A4184(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AC90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D35A41F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AC90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D35A42EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D35A437C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D35A43D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))();

    if (v2)
    {
      [v2 setExportedObject_];
    }
  }
}

void sub_1D35A4488(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + 16);
  v6 = sub_1D35DF354();
  [v5 *a3];
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1D35A4608(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D35DEF74();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A510);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_1D35DF014();
  v44 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A710);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v20 = a1;
    sub_1D35DF524();
    v21 = sub_1D35DF514();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) == 1)
    {
      v23 = sub_1D35A537C(v19, &unk_1EC76A710);
      (*(*a3 + 136))(v23);
      v24 = v44;
      if ((*(v44 + 48))(v9, 1, v10) == 1)
      {

        sub_1D35A537C(v9, &unk_1EC76A510);
      }

      else
      {
        v40 = v17;
        v25 = v43;
        v26 = (*(v24 + 32))(v43, v9, v10);
        v27 = (*(*a3 + 160))(v26);
        if (v28)
        {
          v29 = v28;
          v39 = v27;
          v30 = sub_1D35DF4D4();
          v31 = *sub_1D35AF6CC();
          if (os_log_type_enabled(v31, v30))
          {
            v32 = v31;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v45 = v34;
            *v33 = 136315138;
            *(v33 + 4) = sub_1D35A3CF8(v39, v29, &v45);
            _os_log_impl(&dword_1D3400000, v32, v30, "_AppExtensionEventGenericDetailOOPHostView: *** Setting up Remote UI Extension Configuration ***  sceneID: %s.", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x1D38BA4C0](v34, -1, -1);
            MEMORY[0x1D38BA4C0](v33, -1, -1);
          }

          v35 = v43;
          v36 = v44;
          (*(v44 + 16))(v41, v43, v10);
          sub_1D35DEF84();
          v37 = v40;
          sub_1D35DF504();
          (*(v22 + 56))(v37, 0, 1, v21);
          sub_1D35DF534();

          (*(v36 + 8))(v35, v10);
        }

        else
        {
          (*(v24 + 8))(v25, v10);
        }
      }
    }

    else
    {

      sub_1D35A537C(v19, &unk_1EC76A710);
    }
  }

  else
  {
    sub_1D35DF754();
    __break(1u);
  }
}

uint64_t sub_1D35A4B5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D35A4BF0()
{
  result = qword_1EC76A5D0;
  if (!qword_1EC76A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76A5D0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D35A4C74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D35A4CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D35A4D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D35A4D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D35A4DF0()
{
  sub_1D35A4EF4();
  if (v0 <= 0x3F)
  {
    sub_1D35A5290(319, &qword_1EC76B1F0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D35A4EF4()
{
  if (!qword_1EC76A5E0)
  {
    sub_1D35DF014();
    v0 = sub_1D35DF594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC76A5E0);
    }
  }
}

void sub_1D35A4F54()
{
  sub_1D35A4EF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D35A4FF8()
{
  result = qword_1EC76A6B0;
  if (!qword_1EC76A6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76A508);
    sub_1D35A50B4();
    sub_1D35A052C(&qword_1EC76AFD0, MEMORY[0x1E697C020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76A6B0);
  }

  return result;
}

unint64_t sub_1D35A50B4()
{
  result = qword_1EC76A6B8;
  if (!qword_1EC76A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76A6C0);
    sub_1D35A5140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76A6B8);
  }

  return result;
}

unint64_t sub_1D35A5140()
{
  result = qword_1EC76A6C8;
  if (!qword_1EC76A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76A6D0);
    sub_1D35A4BF0();
    sub_1D35A51F8(&qword_1EC76A6D8, &unk_1EC76A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76A6C8);
  }

  return result;
}

uint64_t sub_1D35A51F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D35A5290(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}