void *__getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AXWatchRemoteScreenServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278BE1420;
    v8 = 0;
    AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary;
    if (AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXWatchRemoteScreenIsPairedGizmoHasStingSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXWatchRemoteScreenIsPairedGizmoHasStingSupportSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AXWatchRemoteScreenServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void AXWatchRemoteScreenBannerView(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  NSClassFromString(&cfstr_Uiview.isa);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v10 = getAXUIBannerPresenterClass_softClass;
    v19 = getAXUIBannerPresenterClass_softClass;
    if (!getAXUIBannerPresenterClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getAXUIBannerPresenterClass_block_invoke;
      v15[3] = &unk_278BE1400;
      v15[4] = &v16;
      __getAXUIBannerPresenterClass_block_invoke(v15);
      v10 = v17[3];
    }

    v11 = v10;
    _Block_object_dispose(&v16, 8);
    v12 = [[v10 alloc] initWithContainingView:v7];
    v13 = [v12 containingView];
    v14 = [v13 layer];
    AXWatchRemoteScreenRemoveLayerFromAirplay(v14);

    [v12 presentBannerViewWithText:v8 secondaryText:v9 duration:0 fromUserAction:a4];
  }
}

void sub_23D6CD258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void AXWatchRemoteScreenRemoveLayerFromAirplay(void *a1)
{
  v1 = a1;
  [v1 setDisableUpdateMask:{objc_msgSend(v1, "disableUpdateMask") | 0x10}];
}

Class __getAXUIBannerPresenterClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BE1458;
    v7 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("AXUIBannerPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIBannerPresenterClass_block_invoke_cold_1();
  }

  getAXUIBannerPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getAPRKStreamRenderingManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAPRKStreamRenderingManagerClass_softClass;
  v7 = getAPRKStreamRenderingManagerClass_softClass;
  if (!getAPRKStreamRenderingManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAPRKStreamRenderingManagerClass_block_invoke;
    v3[3] = &unk_278BE1400;
    v3[4] = &v4;
    __getAPRKStreamRenderingManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23D6CD6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPRKStreamRenderingManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AirPlayReceiverKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AirPlayReceiverKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BE1490;
    v7 = 0;
    AirPlayReceiverKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AirPlayReceiverKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("APRKStreamRenderingManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPRKStreamRenderingManagerClass_block_invoke_cold_1();
  }

  getAPRKStreamRenderingManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AirPlayReceiverKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AirPlayReceiverKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_23D6CE188()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  if (v1)
  {

    v2 = objc_allocWithZone(MEMORY[0x277D756B8]);
    v3 = v1;
    v4 = [v2 init];
    sub_23D6EE5E0();
    v5 = sub_23D6EE560();
    MEMORY[0x23EEE8CB0]();
    v7 = v6;

    if (v7)
    {
      v8 = sub_23D6EE730();
    }

    else
    {
      v8 = 0;
    }

    [v4 setText_];

    [v4 setTextAlignment_];
    [v3 pointSize];
    v10 = [objc_opt_self() fontWithDescriptor:v3 size:v9];

    [v4 setFont_];
    [v4 setNumberOfLines_];
    [v4 setAccessibilityTraits_];
    v11 = v4;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_23D6CE384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_23D6CE3F8()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6CE44C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6CE508()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:5 weight:3 scale:20.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23D6EFC00;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 systemGrayColor];
  *(v2 + 40) = [v3 systemGray5Color];
  sub_23D6D1D74(0, &qword_27E2E2750, 0x277D75348);
  v4 = sub_23D6EE7A0();

  v5 = [v0 configurationWithPaletteColors_];

  v6 = v1;
  v7 = sub_23D6EE730();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  v9 = [v8 imageByApplyingSymbolConfiguration_];
  v10 = [objc_opt_self() buttonWithType_];
  [v10 setBackgroundImage:v9 forState:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_23D6EE5E0();
  v11 = v10;
  v12 = sub_23D6EE560();
  sub_23D6EE570();

  v13 = sub_23D6EE730();

  [v11 setAccessibilityLabel_];

  return v11;
}

id sub_23D6CE79C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_23D6CE810()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6CE864(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6CE91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D6CE998();
  *a2 = result;
  return result;
}

void sub_23D6CE948(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView) = *a1;
  v3 = v2;
}

id sub_23D6CE998()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  }

  else
  {
    type metadata accessor for AXTwiceCompanionWatchView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_23D6CEA10(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_23D6CEA24(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23D6CE998();
  return sub_23D6CEA6C;
}

void sub_23D6CEA6C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView) = v2;
}

id sub_23D6CEA84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D6CEB04();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_23D6CEAB0(__int128 *a1, void *a2)
{
  v4 = *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  v2 = *a1;
  *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView) = *a1;
  v3 = v2;
}

id sub_23D6CEB04()
{
  v1 = v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  }

  else
  {
    _AXSTwiceRemoteScreenPlatform();
    v5 = sub_23D6CE998();
    v6 = *v1;
    *v1 = v5;
    *(v1 + 8) = &protocol witness table for AXTwiceCompanionWatchView;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

uint64_t sub_23D6CEB7C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  v4 = *(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  *v3 = a1;
  v3[1] = a2;
  return MEMORY[0x2821F9730]();
}

uint64_t (*sub_23D6CEB94(id *a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = sub_23D6CEB04();
  a1[1] = v3;
  return sub_23D6CEBDC;
}

uint64_t sub_23D6CEBDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView) = *a1;
  return MEMORY[0x2821F96F8]();
}

id sub_23D6CEBF8()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v2 = v0;
  v3 = [v1 init];
  v4 = sub_23D6EE730();
  [v3 setText_];

  [v3 setTextAlignment_];
  [v2 pointSize];
  v6 = [objc_opt_self() fontWithDescriptor:v2 size:v5];

  [v3 setFont_];
  [v3 setNumberOfLines_];
  [v3 setAdjustsFontSizeToFitWidth_];
  [v3 setMinimumScaleFactor_];
  [v3 setAccessibilityTraits_];
  v7 = v3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setHidden_];

  return v7;
}

id sub_23D6CEDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_23D6CEE1C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_23D6CEE78()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6CEECC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6CEF84()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor_];

  v2 = [v0 layer];
  AXDisplayCornerRadiusWithMargin();
  [v2 setCornerRadius_];

  v3 = [v0 layer];
  [v3 setCornerCurve_];

  [v0 setClipsToBounds_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

void sub_23D6CF160()
{
  v1 = v0;
  v138.receiver = v0;
  v138.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  objc_msgSendSuper2(&v138, sel_viewDidLoad);
  [v0 setModalPresentationStyle_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  [v1 setTransitioningDelegate_];
  v5 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v1 action:sel_cardSwipeDownWithGesture_];
  v6 = sub_23D6CE998();
  v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = v8;

  if (v8)
  {
    [v5 requireGestureRecognizerToFail_];
  }

  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView;
  v11 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView];
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    [v5 requireGestureRecognizerToFail_];
  }

  v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  [*&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView] addGestureRecognizer_];
  v14 = [v1 view];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v136 = v10;
  [v14 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23D6EFC10;
  v17 = [*&v1[v13] centerXAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v18 centerXAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v21;
  v22 = [*&v1[v13] leadingAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor:v25 constant:6.0];
  *(v16 + 40) = v26;
  v27 = [*&v1[v13] trailingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:-6.0];
  *(v16 + 48) = v31;
  v32 = [*&v1[v13] heightAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = v33;
  v135 = v5;
  v35 = [v33 heightAnchor];

  v36 = [v32 constraintLessThanOrEqualToAnchor:v35 multiplier:0.9];
  *(v16 + 56) = v36;
  v37 = [*&v1[v13] bottomAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v39 = v38;
  v40 = objc_opt_self();
  v41 = [v39 bottomAnchor];

  v42 = [v37 constraintEqualToAnchor:v41 constant:-6.0];
  *(v16 + 64) = v42;
  sub_23D6D1D74(0, &qword_27E2E2738, 0x277CCAAD0);
  v43 = sub_23D6EE7A0();

  [v40 activateConstraints_];

  v44 = *&v1[v13];
  v45 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  swift_beginAccess();
  [v44 addSubview_];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23D6EFC00;
  v47 = [*&v1[v45] centerYAnchor];
  v48 = [*&v1[v13] topAnchor];
  v49 = [v47 &selRef:v48 digitalCrownDirectTouch:32.0 + 6];

  *(v46 + 32) = v49;
  v50 = [*&v1[v45] centerXAnchor];
  v51 = [*&v1[v13] trailingAnchor];
  v52 = [v50 &selRef:v51 digitalCrownDirectTouch:-32.0 + 6];

  *(v46 + 40) = v52;
  v53 = sub_23D6EE7A0();

  v137 = v40;
  [v40 activateConstraints_];

  v54 = *&v1[v13];
  v55 = sub_23D6CEB04();
  [v54 addSubview_];

  v56 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  v57 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  v58 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView + 8];
  ObjectType = swift_getObjectType();
  v60 = *(v58 + 16);
  v61 = v57;
  v60(ObjectType, v58, 30.0);

  v62 = *v56;
  v63 = *(v56 + 1);
  v64 = swift_getObjectType();
  v65 = v62;
  v66 = [v65 leftAnchor];
  v67 = v13;
  v68 = [*&v1[v13] leftAnchor];
  v69 = [v66 constraintEqualToAnchor_];

  (*(v63 + 40))(v69, v64, v63);
  v70 = *v56;
  v71 = *(v56 + 1);
  v72 = swift_getObjectType();
  v73 = *(v71 + 64);
  v74 = v70;
  v73(v72, v71, 15.0);

  v75 = *v56;
  v76 = *(v56 + 1);
  v77 = swift_getObjectType();
  v78 = v75;
  v79 = [v78 rightAnchor];
  v134 = v67;
  v80 = [*&v1[v67] rightAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  (*(v76 + 88))(v81, v77, v76);
  v82 = *v56;
  v83 = *(v56 + 1);
  v84 = swift_getObjectType();
  v85 = *(v83 + 32);
  v86 = v82;
  v87 = v85(v84, v83);

  if (v87)
  {
    v88 = *v56;
    v89 = *(v56 + 1);
    v90 = swift_getObjectType();
    v91 = *(v89 + 80);
    v92 = v88;
    v93 = v91(v90, v89);

    if (v93)
    {
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_23D6EFC20;
      *(v94 + 32) = v87;
      *(v94 + 40) = v93;
      v95 = *v56;
      v96 = v87;
      v97 = v93;
      v98 = [v95 heightAnchor];
      v99 = [*v56 widthAnchor];
      v100 = [v98 constraintEqualToAnchor:v99 multiplier:1.12];

      *(v94 + 48) = v100;
      v87 = sub_23D6EE7A0();

      [v137 activateConstraints_];
    }
  }

  v101 = *&v1[v136];
  sub_23D6D9C68();

  v102 = *&v1[v67];
  v103 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  swift_beginAccess();
  [v102 addSubview_];
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_23D6EFC30;
  v105 = [*&v1[v103] leadingAnchor];
  v106 = [*&v1[v67] byte_278BE1529];
  v107 = [v105 constraintEqualToAnchor:v106 constant:40.0];

  *(v104 + 32) = v107;
  v108 = [*&v1[v103] trailingAnchor];
  v109 = [*&v1[v67] &selRef_containerView + 4];
  v110 = [v108 constraintEqualToAnchor:v109 constant:-45.0];

  *(v104 + 40) = v110;
  v111 = [*&v1[v103] topAnchor];
  v112 = [*&v1[v67] topAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:32.0];

  *(v104 + 48) = v113;
  v114 = [*&v1[v103] bottomAnchor];
  v115 = [*v56 topAnchor];
  v116 = [v114 constraintEqualToAnchor:v115 constant:-20.0];

  *(v104 + 56) = v116;
  v117 = sub_23D6EE7A0();

  [v137 activateConstraints_];

  v118 = *&v1[v67];
  v119 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  [v118 addSubview_];
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_23D6EFC30;
  v121 = [*&v1[v119] leadingAnchor];
  v122 = [*&v1[v67] leadingAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:40.0];

  *(v120 + 32) = v123;
  v124 = [*&v1[v119] trailingAnchor];
  v125 = [*&v1[v134] trailingAnchor];
  v126 = [v124 constraintEqualToAnchor:v125 constant:-45.0];

  *(v120 + 40) = v126;
  v127 = [*&v1[v119] topAnchor];
  v128 = [*v56 bottomAnchor];
  v129 = [v127 constraintEqualToAnchor:v128 constant:20.0];

  *(v120 + 48) = v129;
  v130 = [*&v1[v119] bottomAnchor];
  v131 = [*&v1[v134] bottomAnchor];
  v132 = [v130 constraintEqualToAnchor:v131 constant:-32.0];

  *(v120 + 56) = v132;
  v133 = sub_23D6EE7A0();

  [v137 activateConstraints_];
}

uint64_t sub_23D6CFFFC(uint64_t a1)
{
  v2 = sub_23D6EE640();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE7088] || v7 == *MEMORY[0x277CE7070] || v7 == *MEMORY[0x277CE7078] || v7 == *MEMORY[0x277CE7080])
  {
    sub_23D6EE5E0();
    v11 = sub_23D6EE560();
    v12 = sub_23D6EE570();
    v14 = v13;

    v15 = 0;
    v16 = 0;
  }

  else if (v7 == *MEMORY[0x277CE70A0])
  {
    sub_23D6EE5E0();
    v17 = sub_23D6EE560();
    v12 = sub_23D6EE570();
    v14 = v18;

    v16 = 0xEC0000006F656469;
    v15 = 0x7679616C70726961;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v12 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0xE000000000000000;
  }

  sub_23D6D05FC(v12, v14, v15, v16);
}

void sub_23D6D0258()
{
  v0 = sub_23D6EE640();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *MEMORY[0x277CE7070];
  v21 = v1[13];
  v21(&v19 - v8, v10, v0);
  sub_23D6D164C(&qword_27E2E2740, MEMORY[0x277CE70A8]);
  sub_23D6EE780();
  sub_23D6EE780();
  if (v24 == v22 && v25 == v23)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D6EEA00();
  }

  v20 = v1[1];
  v20(v9, v0);

  if (v11)
  {
    goto LABEL_10;
  }

  v21(v7, *MEMORY[0x277CE7078], v0);
  sub_23D6EE780();
  sub_23D6EE780();
  if (v24 == v22 && v25 == v23)
  {
    v20(v7, v0);

LABEL_10:
    v13 = 1;
    goto LABEL_11;
  }

  v12 = sub_23D6EEA00();
  v20(v7, v0);

  if (v12)
  {
    goto LABEL_10;
  }

  v18 = v19;
  v21(v19, *MEMORY[0x277CE7080], v0);
  sub_23D6EE780();
  sub_23D6EE780();
  if (v24 == v22 && v25 == v23)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23D6EEA00();
  }

  v20(v18, v0);

LABEL_11:
  v14 = sub_23D6CEB04();
  v16 = v15;
  ObjectType = swift_getObjectType();
  sub_23D6D44DC(v13 & 1, ObjectType, v16);
}

uint64_t sub_23D6D05FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v8 = sub_23D6EE690();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23D6EE6C0();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v16 = sub_23D6EE850();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v18 = v23;
  v17[4] = a2;
  v17[5] = v18;
  v17[6] = a4;
  aBlock[4] = sub_23D6D1624;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  v20 = v4;

  sub_23D6EE6A0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D6D164C(&qword_27E2E2C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6D1694();
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F80](0, v15, v11, v19);
  _Block_release(v19);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

void sub_23D6D08F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  swift_beginAccess();
  [*(a1 + v10) setHidden_];
  v11 = *(a1 + v10);
  v12 = sub_23D6D1BBC(a2, a3, a4, a5);
  [v11 setAttributedText_];

  v13 = *(a1 + v10);
  v14 = sub_23D6EE730();
  [v13 setAccessibilityLabel_];
}

uint64_t sub_23D6D09E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_23D6D0A2C(void *a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  [a1 translationInView_];
  v11 = v10;
  [*&v2[v9] bounds];
  v12 = v11 / CGRectGetHeight(v26);
  sub_23D6EE330();
  v13 = sub_23D6EE660();
  v14 = sub_23D6EE7F0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000017, 0x800000023D6F0670, &v25);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] %s - %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_pullToDismissManager];
  v18 = [a1 state];
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 0;
      v19 = *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
      if (v12 > 0.3)
      {
        [v19 finishInteractiveTransition];
        return;
      }
    }

    else
    {
      if (v18 != 4)
      {
        return;
      }

      *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 0;
      v19 = *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
    }

    [v19 cancelInteractiveTransition];
  }

  else if (v18 == 1)
  {
    *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 1;
    v20 = objc_allocWithZone(MEMORY[0x277D75828]);
    v21 = v2;
    v22 = [v20 init];
    v23 = *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
    *(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive) = v22;

    sub_23D6D0DC4();
  }

  else if (v18 == 2)
  {
    [*(v17 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive) updateInteractiveTransition_];
  }
}

id sub_23D6D0DC4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE7F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F0650, &v13);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_23D6D0F78()
{
  v0 = sub_23D6EE670();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v5 = sub_23D6EE660();
  v6 = sub_23D6EE810();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F0620, &v16);
    _os_log_impl(&dword_23D6CB000, v5, v6, "[TWICE] %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEE9940](v8, -1, -1);
    MEMORY[0x23EEE9940](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_23D6CEB04();
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 152))(ObjectType, v11);

  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong pullToDismissViewController];
      swift_unknownObjectRelease();
    }
  }
}

id AXTwiceCompanionMainViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23D6EE730();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AXTwiceCompanionMainViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  sub_23D6CE188();
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  *&v3[v8] = sub_23D6CE508();
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView] = 0;
  v9 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  *&v3[v10] = sub_23D6CEBF8();
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_pullToDismissManager;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for AXTwiceCompanionPullToDismissManager()) init];
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  *&v3[v12] = sub_23D6CEF84();
  if (a2)
  {
    v13 = sub_23D6EE730();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id AXTwiceCompanionMainViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceCompanionMainViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_titleLabel;
  sub_23D6CE188();
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
  *&v1[v5] = sub_23D6CE508();
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___watchDeviceView] = 0;
  v6 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController____lazy_storage___deviceView];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_statusLabel;
  *&v1[v7] = sub_23D6CEBF8();
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_pullToDismissManager;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AXTwiceCompanionPullToDismissManager()) init];
  v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_cardBackgroundView;
  *&v1[v9] = sub_23D6CEF84();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id AXTwiceCompanionMainViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTwiceCompanionMainViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D6D15DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6D164C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D6D1694()
{
  result = qword_27E2E2C60;
  if (!qword_27E2E2C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E2748, &qword_23D6EFEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E2C60);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_DWORD *sub_23D6D1B60@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_23D6D1BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && (v4 = sub_23D6EE730(), v5 = [objc_opt_self() systemImageNamed_], v4, v5))
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v7 = sub_23D6EE730();
    v8 = [v6 initWithString_];

    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_23D6EE730();
    v11 = [v9 initWithString_];

    v12 = [objc_opt_self() textAttachmentWithImage_];
    sub_23D6D1D74(0, &qword_27E2E2758, 0x277CCAB48);
    v13 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v13 appendAttributedString_];
    [v13 appendAttributedString_];
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v5 = sub_23D6EE730();
    v13 = [v14 initWithString_];
  }

  return v13;
}

uint64_t sub_23D6D1D74(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D6D1DCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D6D1DEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D6D1E60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D6D1E80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_23D6D1EBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_23D6D1F28(void *a1)
{
  v3 = [a1 viewControllerForKey_];
  if (v3)
  {
    v25 = v3;
    v4 = [a1 viewControllerForKey_];
    if (v4)
    {
      v5 = v4;
      v6 = [a1 containerView];
      v7 = [v5 view];
      if (v7)
      {
        v8 = v7;
        v9 = [v25 view];
        if (v9)
        {
          v10 = v9;
          [v6 insertSubview:v8 belowSubview:v9];

          [v6 bounds];
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
          v15 = CGRectGetHeight(v33);
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v16 = CGRectGetWidth(v34);
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v17 = CGRectGetHeight(v35);
          v18 = objc_opt_self();
          v19 = swift_allocObject();
          *(v19 + 2) = v5;
          v19[3] = 0.0;
          v19[4] = v15;
          v19[5] = v16;
          v19[6] = v17;
          v30 = sub_23D6D2A68;
          v31 = v19;
          aBlock = MEMORY[0x277D85DD0];
          v27 = 1107296256;
          v28 = sub_23D6D09E8;
          v29 = &block_descriptor_0;
          v20 = _Block_copy(&aBlock);
          v21 = v5;

          v22 = swift_allocObject();
          *(v22 + 16) = a1;
          *(v22 + 24) = v1;
          v30 = sub_23D6D2AD0;
          v31 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v27 = 1107296256;
          v28 = sub_23D6D2398;
          v29 = &block_descriptor_26;
          v23 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v24 = v1;

          [v18 animateWithDuration:v20 animations:v23 completion:0.3];
          _Block_release(v23);
          _Block_release(v20);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_23D6D2260(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_23D6D22EC(int a1, id a2, uint64_t a3)
{
  v5 = [a2 transitionWasCancelled];
  if ((v5 & 1) == 0)
  {
    v6 = *(a3 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC);
    if (v6)
    {
      type metadata accessor for AXTwiceCompanionMainViewController();
      if (swift_dynamicCastClass())
      {
        v7 = v6;
        sub_23D6D0F78();
      }
    }
  }

  return [a2 completeTransition_];
}

uint64_t sub_23D6D2398(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_23D6D2604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_23D6D2670(void *a1)
{
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000022, 0x800000023D6F08C0, &v19);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = type metadata accessor for AXTwiceCompanionPullToDismissAnimatedController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC] = 0;
  v20.receiver = v12;
  v20.super_class = v11;
  v13 = objc_msgSendSuper2(&v20, sel_init);
  v14 = *&v13[OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC];
  *&v13[OBJC_IVAR____TtC21AXWatchRemoteScreenUI47AXTwiceCompanionPullToDismissAnimatedController_dismissedVC] = a1;
  v15 = v13;

  v16 = a1;
  return v15;
}

uint64_t sub_23D6D285C()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F0890, &v16);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (*(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) != 1)
  {
    return 0;
  }

  v11 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive);
  v13 = v11;
  return v12;
}

uint64_t sub_23D6D2A30()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6D2A90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_23D6D2AE0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  return [v1 commit];
}

void sub_23D6D2C0C(void *a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer;
  [*&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer] removeFromSuperlayer];
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 bounds];
  [v5 setFrame_];
  v6 = *&v1[v3];
  if (v6)
  {
    [v6 setContentsGravity_];
    v7 = *&v1[v3];
    if (v7)
    {
      [v7 setNeedsDisplayOnBoundsChange_];
      v8 = *&v1[v3];
      if (v8)
      {
        v9 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio];
        v10 = v8;
        [v1 frame];
        [v10 setCornerRadius_];

        v11 = *&v1[v3];
        if (v11)
        {
          [v11 setCornerCurve_];
          v12 = *&v1[v3];
          if (v12)
          {
            [v12 setMasksToBounds_];
            v13 = *&v1[v3];
            if (v13)
            {
              v15 = v13;
              v14 = [v1 layer];
              [v14 insertSublayer:v15 atIndex:0];

              [v1 layoutSubviews];
            }
          }
        }
      }
    }
  }
}

void sub_23D6D2DC8(unint64_t a1, char a2, double a3, double a4)
{
  [v4 bounds];
  v9 = v8;
  [v4 bounds];
  [v4 convertPoint:0 toView:v9];
  v11 = v10;
  v13 = v12;
  [v4 frame];
  v15 = v14 / a3;
  [v4 frame];
  v17 = v16 / a4;
  CGAffineTransformMakeTranslation(&v64, v11, v13);
  v60 = *&v64.a;
  v61 = *&v64.c;
  ty = v64.ty;
  tx = v64.tx;
  CGAffineTransformMakeScale(&v64, v15, v17);
  v56 = *&v64.a;
  v57 = *&v64.c;
  v18 = v64.ty;
  v55 = v64.tx;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23D6EE9A0())
  {
    v20 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    v49 = *(MEMORY[0x277CBF2C0] + 16);
    v50 = *MEMORY[0x277CBF2C0];
    v48 = *(MEMORY[0x277CBF2C0] + 32);
    while (1)
    {
      if (v54)
      {
        v21 = MEMORY[0x23EEE9030](v20, a1);
      }

      else
      {
        if (v20 >= *(v53 + 16))
        {
          goto LABEL_21;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 accessibilityFrame];
      v27 = v26;
      v29 = v28;
      v30 = a3 - v24 - v26;
      v31 = a4 - v25 - v28;
      if (a2)
      {
        v32 = v25;
      }

      else
      {
        v32 = v31;
      }

      if (a2)
      {
        v33 = v24;
      }

      else
      {
        v33 = v30;
      }

      [v4 frame];
      v35 = v34 / a3;
      [v4 frame];
      [v22 setAccessibilityFrameInContainerSpace_];
      if ((a2 & 1) == 0)
      {
        *&v64.a = v50;
        *&v64.c = v49;
        *&v64.tx = v48;
        CGAffineTransformTranslate(&v63, &v64, a3 * 0.5, a4 * 0.5);
        v64 = v63;
        CGAffineTransformRotate(&v63, &v64, 3.14159265);
        v64 = v63;
        CGAffineTransformTranslate(&v63, &v64, -(a3 * 0.5), -(a4 * 0.5));
        v37 = v63.tx;
        v38 = v63.ty;
        v51 = *&v63.c;
        v52 = *&v63.a;
        v39 = [v22 accessibilityPath];
        *&v64.a = v52;
        *&v64.c = v51;
        v64.tx = v37;
        v64.ty = v38;
        [v39 applyTransform_];
      }

      v40 = [v22 accessibilityPath];
      *&v64.a = v56;
      *&v64.c = v57;
      v64.tx = v55;
      v64.ty = v18;
      [v40 applyTransform_];

      v41 = [v22 accessibilityPath];
      *&v64.a = v60;
      *&v64.c = v61;
      v64.tx = tx;
      v64.ty = ty;
      [v41 applyTransform_];

      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        v44 = a1;
        v45 = v22;
        [v43 setAxActionHandler_];
        [v43 overrideAccessibilityMethodsForRemoteDevice];

        a1 = v44;
      }

      ++v20;
      if (v23 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  sub_23D6D3238(a1);
  v46 = sub_23D6EE7A0();

  [v4 setAccessibilityElements_];

  if (_AXSCommandAndControlEnabled())
  {
    v47 = *MEMORY[0x277CE6D40];
    if (*MEMORY[0x277CE6D40])
    {
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], *MEMORY[0x277CE6D40]);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], v4);
  }
}

char *sub_23D6D3238(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23D6EE9A0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_23D6D4350(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23EEE9030](i, a1);
        sub_23D6D4370();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_23D6D4350((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_23D6D43BC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_23D6D4370();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23D6D4350((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_23D6D43BC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id AXTwiceCompanionRendererView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AXTwiceCompanionRendererView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer] = 0;
  swift_unknownObjectWeakInit();
  sub_23D6EE5E0();
  v10 = sub_23D6EE560();
  v11 = MEMORY[0x23EEE8CF0]();

  v12 = 0.23;
  if (v11)
  {
    v12 = 0.29;
  }

  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio] = v12;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id AXTwiceCompanionRendererView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceCompanionRendererView.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer] = 0;
  swift_unknownObjectWeakInit();
  sub_23D6EE5E0();
  v4 = sub_23D6EE560();
  v5 = MEMORY[0x23EEE8CF0]();

  v6 = 0.23;
  if (v5)
  {
    v6 = 0.29;
  }

  *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio] = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id AXTwiceCompanionRendererView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL AXTwiceCompanionRendererView.perform(_:withValue:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D6EE670();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v13 = sub_23D6EE660();
  v14 = sub_23D6EE810();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30[1] = v4;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F0950, v31);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a1;
    _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] %s %u", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23EEE9940](v19, -1, -1);
    v20 = v18;
    a3 = v17;
    a2 = v16;
    MEMORY[0x23EEE9940](v20, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_23D6D3AE8(a2, v31);
    v22 = v32;
    if (v32)
    {
      v23 = __swift_project_boxed_opaque_existential_0(v31, v32);
      v24 = *(v22 - 8);
      v25 = *(v24 + 64);
      MEMORY[0x28223BE20](v23);
      v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27);
      v28 = sub_23D6EE9F0();
      (*(v24 + 8))(v27, v22);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      v28 = 0;
    }

    [Strong axActionPerformWithAction:a1 value:v28 bridgeElement:a3];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_23D6D3AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2B60, qword_23D6EFE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23D6D3C38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D6D3D04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23D6D42F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D6D3D04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D6D3E10(a5, a6);
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
    result = sub_23D6EE920();
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

uint64_t sub_23D6D3E10(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D6D3E5C(a1, a2);
  sub_23D6D3F8C(&unk_284FB7580);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D6D3E5C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D6D4078(v5, 0);
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

  result = sub_23D6EE920();
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
        v10 = sub_23D6EE770();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D6D4078(v10, 0);
        result = sub_23D6EE8F0();
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

uint64_t sub_23D6D3F8C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23D6D40EC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23D6D4078(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E29A8, &qword_23D6EFE68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D6D40EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E29A8, &qword_23D6EFE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23D6D4260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2B60, qword_23D6EFE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D6D42F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_23D6D4350(char *a1, int64_t a2, char a3)
{
  result = sub_23D6D43CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23D6D4370()
{
  result = qword_27E2E29B0;
  if (!qword_27E2E29B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E29B0);
  }

  return result;
}

_OWORD *sub_23D6D43BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_23D6D43CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E29B8, &unk_23D6EFE70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23D6D44DC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D6EE690();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23D6EE6C0();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(a3 + 128))(a2, a3);
  v17 = [v16 isHidden];

  if (((v17 ^ a1) & 1) == 0)
  {
    sub_23D6D4B84();
    v18 = sub_23D6EE850();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    *(v19 + 32) = v4;
    *(v19 + 40) = a1 & 1;
    aBlock[4] = sub_23D6D4C08;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D6D09E8;
    aBlock[3] = &block_descriptor_1;
    v20 = _Block_copy(aBlock);
    v21 = v4;

    sub_23D6EE6A0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D6D4C30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
    sub_23D6D1694();
    sub_23D6EE8B0();
    MEMORY[0x23EEE8F80](0, v15, v11, v20);
    _Block_release(v20);

    (*(v23 + 8))(v11, v8);
    (*(v12 + 8))(v15, v22);
  }
}

void sub_23D6D47B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 128);
  v8 = v7(a3, a4);
  [v8 setHidden_];

  v9 = v7(a3, a4);
  v11 = v9;
  v10 = &selRef_startAnimating;
  if ((a2 & 1) == 0)
  {
    v10 = &selRef_stopAnimating;
  }

  [v9 *v10];
}

Swift::Void __swiftcall AXTwiceCompanionDeviceView.addScreenSubLayer(layer:)(CALayer layer)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v2 + 184);
  v7 = layer.super.isa;
  v6(layer.super.isa, v4, v3);
  v8 = (*(v3 + 152))(v4, v3);
  if (v8)
  {
    v9 = v8;
    sub_23D6D2C0C(v7);
  }
}

unint64_t sub_23D6D4B84()
{
  result = qword_27E2E2AE0;
  if (!qword_27E2E2AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E2AE0);
  }

  return result;
}

uint64_t sub_23D6D4BD0()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D6D4C30()
{
  result = qword_27E2E2C50;
  if (!qword_27E2E2C50)
  {
    sub_23D6EE690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E2C50);
  }

  return result;
}

void sub_23D6D4CA0()
{
  v1 = [v0 accessibilityTraits];
  if ((*MEMORY[0x277D76540] & ~v1) == 0)
  {
    v2 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer;
    if (!*&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer])
    {
      v3 = objc_opt_self();
      v4 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval];
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9[4] = sub_23D6DA024;
      v9[5] = v5;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_23D6D4ED0;
      v9[3] = &block_descriptor_2;
      v6 = _Block_copy(v9);

      v7 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:v4];
      _Block_release(v6);
      v8 = *&v0[v2];
      *&v0[v2] = v7;
    }
  }
}

void sub_23D6D4DF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer);

    [v2 invalidate];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer];
    *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_23D6D4F80();
  }
}

void sub_23D6D4ED0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_23D6D4F80()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F13D0, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  [v1 setAccessibilityTraits_];
  v11 = *MEMORY[0x277D76438];
  v12 = sub_23D6EE730();
  UIAccessibilityPostNotification(v11, v12);
}

id AXTwiceWatchCrownButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AXTwiceWatchCrownButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer] = 0;
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval] = 0x3FF0000000000000;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AXTwiceWatchCrownButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceWatchCrownButton.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchTimer] = 0;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI23AXTwiceWatchCrownButton_watchCrownDirectTouchInterval] = 0x3FF0000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AXTwiceWatchCrownButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXTwiceWatchCrownButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D6D5490()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D6D54D4(char a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_23D6D5584()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D6D55C8(double a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_23D6D5678()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D56C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_23D6D577C()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D6D57C0(double a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_23D6D5870()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D58BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D5974()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D59C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6D5A78()
{
  type metadata accessor for AXTwiceWatchCrownButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  v4 = v2;
  [v4 setIsAccessibilityElement_];
  sub_23D6EE5E0();
  v5 = sub_23D6EE560();
  sub_23D6EE570();

  v6 = sub_23D6EE730();

  [v4 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2A98, &qword_23D6EFF60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23D6EFEB0;
  v8 = sub_23D6EE560();
  v9 = sub_23D6EE570();
  v11 = v10;

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = sub_23D6EE7A0();

  [v4 setAccessibilityUserInputLabels_];

  [v4 setAccessibilityTraits_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  return v4;
}

id sub_23D6D5C70()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6D5CC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D5D7C()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D5DC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D5E80()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D5ECC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6D5F84()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = v0;
  [v2 setIsAccessibilityElement_];
  sub_23D6EE5E0();
  v3 = sub_23D6EE560();
  sub_23D6EE570();

  v4 = sub_23D6EE730();

  [v2 setAccessibilityLabel_];

  [v2 setAccessibilityTraits_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_23D6D60BC()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6D6110(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D61C8()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D6214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_23D6D62CC()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23D6D6318(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23D6D63D0()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() whiteColor];
    [v4 setColor_];

    v6 = v4;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 stopAnimating];
    [v6 setHidden_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_23D6D64C8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_23D6D64DC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23D6D63D0();
  return sub_23D6D6524;
}

void sub_23D6D6524(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = v2;
}

id sub_23D6D653C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = v0;
  [v2 setIsAccessibilityElement_];
  sub_23D6EE5E0();
  v3 = sub_23D6EE560();
  MEMORY[0x23EEE8CE0](0xD00000000000001BLL, 0x800000023D6F1260);

  v4 = sub_23D6EE730();

  [v2 setAccessibilityLabel_];

  [v2 setAccessibilityTraits_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

id sub_23D6D6674()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D6D66C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_23D6D6780(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  v5[v10] = AXIsCrownOrientationOnRightSide();
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint] = 0;
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  *&v5[v11] = sub_23D6D5A78();
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint] = 0;
  v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  *&v5[v12] = sub_23D6D5F84();
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner] = 0;
  v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport;
  sub_23D6EE5E0();
  v14 = sub_23D6EE560();
  v15 = MEMORY[0x23EEE8CF0]();

  v5[v13] = v15 & 1;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint] = 0;
  v16 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  *&v5[v16] = sub_23D6D653C();
  v17 = type metadata accessor for AXTwiceCompanionWatchView();
  v181.receiver = v5;
  v181.super_class = v17;
  v18 = objc_msgSendSuper2(&v181, sel_initWithFrame_, a1, a2, a3, a4);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [objc_opt_self() watchView];
  v20 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v21 = *&v18[v20];
  *&v18[v20] = v19;

  v169 = v20;
  v22 = *&v18[v20];
  if (v22)
  {
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v176 = v17;
  type metadata accessor for AXTwiceCompanionRendererView();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v25 = *&v18[v24];
  *&v18[v24] = v23;

  v26 = *&v18[v24];
  if (v26)
  {
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = *&v18[v24];
    if (v27)
    {
      [v27 setContentMode_];
    }
  }

  v167 = v24;
  v28 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_digitalCrownButtonTappedWithSender_];
  [v28 setNumberOfTapsRequired_];
  [v28 setNumberOfTouchesRequired_];
  v29 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  [*&v18[v29] addGestureRecognizer_];
  sub_23D6D9088();
  v30 = [objc_allocWithZone(MEMORY[0x277D75B80]) &off_278BE12F8];
  [v30 setNumberOfTapsRequired_];
  [v30 setNumberOfTouchesRequired_];
  [v28 requireGestureRecognizerToFail_];
  [*&v18[v29] addGestureRecognizer_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_tripleCrownButtonTappedWithSender_];
  [v31 setNumberOfTapsRequired_];
  [v31 setNumberOfTouchesRequired_];
  v174 = v30;
  [v30 requireGestureRecognizerToFail_];
  v175 = v28;
  [v28 requireGestureRecognizerToFail_];
  v173 = v31;
  [*&v18[v29] addGestureRecognizer_];
  v32 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_digitalCrownSwipeUpWithGesture_];
  v33 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture;
  swift_beginAccess();
  v34 = *&v18[v33];
  *&v18[v33] = v32;

  v35 = *&v18[v33];
  if (v35)
  {
    [v35 setDirection_];
    if (*&v18[v33])
    {
      [*&v18[v29] addGestureRecognizer_];
    }
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_digitalCrownSwipeDownWithGesture_];
  v37 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture;
  swift_beginAccess();
  v38 = *&v18[v37];
  *&v18[v37] = v36;

  v39 = *&v18[v37];
  if (v39)
  {
    [v39 setDirection_];
    if (*&v18[v37])
    {
      [*&v18[v29] addGestureRecognizer_];
    }
  }

  v164 = v29;
  v172 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v18 action:sel_digitalCrownLongPressedWithGesture_];
  [*&v18[v29] addGestureRecognizer_];
  v40 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_sideButtonTappedWithSender_];
  [v40 setNumberOfTapsRequired_];
  [v40 byte_278BE1578];
  v41 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  v171 = v40;
  [*&v18[v41] addGestureRecognizer_];
  v170 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v18 action:sel_sideButtonLongPressedWithGesture_];
  [*&v18[v41] addGestureRecognizer_];
  v166 = v41;
  v42 = *&v18[v41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23D6EFEC0;
  sub_23D6D1D74(0, &qword_27E2E2A50, 0x277D75088);
  v44 = v42;
  v45 = sub_23D6EE560();
  v46 = sub_23D6EE570();
  v48 = v47;

  v180 = v176;
  v179[0] = v18;
  *(v43 + 32) = sub_23D6D7C58(v46, v48, v179, sel_sideButtonAXLongPressed_);
  v49 = sub_23D6EE7A0();

  [v44 setAccessibilityCustomActions_];

  v163 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport;
  if (v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport] == 1)
  {
    v50 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v51 = v18;
    v52 = [v50 initWithTarget:v51 action:sel_stingButtonTappedWithSender_];
    [v52 setNumberOfTapsRequired_];
    [v52 setNumberOfTouchesRequired_];
    v53 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
    swift_beginAccess();
    v162 = v52;
    [*&v51[v53] addGestureRecognizer_];
    v161 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v51 action:sel_stingButtonLongPressedWithGesture_];
    [*&v51[v53] addGestureRecognizer_];
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_23D6EFEC0;
    v55 = sub_23D6EE560();
    v56 = MEMORY[0x23EEE8CE0](0xD00000000000001CLL, 0x800000023D6F1320);
    v58 = v57;

    v180 = v176;
    v179[0] = v51;
    *(v54 + 32) = sub_23D6D7C58(v56, v58, v179, sel_stingButtonAXKeycord_);
    v178 = v54;
    v59 = sub_23D6EE560();
    v60 = MEMORY[0x23EEE8CE0](0xD00000000000002ALL, 0x800000023D6F1340);
    v62 = v61;

    v180 = v176;
    v179[0] = v51;
    sub_23D6D7C58(v60, v62, v179, sel_stingButtonAXLongPressed_);
    MEMORY[0x23EEE8EB0]();
    if (*((v178 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23D6EE7D0();
    }

    sub_23D6EE7E0();
    v63 = *&v51[v53];
    v64 = sub_23D6EE7A0();

    [v63 setAccessibilityCustomActions_];
  }

  v65 = *&v18[v169];
  if (v65)
  {
    v66 = *&v167[v18];
    if (v66)
    {
      v67 = v66;
      v68 = v65;
      [v18 addSubview_];
      v69 = objc_opt_self();
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_23D6EFED0;
      v71 = [v68 topAnchor];
      v72 = [v18 topAnchor];
      v73 = [v71 constraintEqualToAnchor_];

      *(v70 + 32) = v73;
      v74 = [v68 leadingAnchor];
      v75 = [v18 leadingAnchor];
      v76 = [v74 constraintEqualToAnchor_];

      *(v70 + 40) = v76;
      v77 = [v68 trailingAnchor];
      v78 = [v18 trailingAnchor];
      v79 = [v77 constraintEqualToAnchor_];

      *(v70 + 48) = v79;
      v80 = [v68 bottomAnchor];
      v81 = [v18 bottomAnchor];
      v82 = [v80 constraintEqualToAnchor_];

      *(v70 + 56) = v82;
      v83 = [v68 centerXAnchor];
      v84 = [v18 centerXAnchor];
      v85 = [v83 constraintEqualToAnchor_];

      *(v70 + 64) = v85;
      v86 = [v68 centerYAnchor];
      v87 = [v18 centerYAnchor];
      v88 = [v86 constraintEqualToAnchor_];

      *(v70 + 72) = v88;
      sub_23D6D1D74(0, &qword_27E2E2738, 0x277CCAAD0);
      v89 = sub_23D6EE7A0();

      v177 = v69;
      [v69 activateConstraints_];

      v90 = v67;
      v91 = [v90 leftAnchor];
      v92 = [v68 leftAnchor];
      v93 = [v91 constraintEqualToAnchor_];

      v94 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint;
      v95 = *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint];
      *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint] = v93;

      v96 = [v90 rightAnchor];
      v97 = [v68 rightAnchor];
      v98 = [v96 constraintEqualToAnchor_];

      v99 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint;
      v100 = *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint];
      *&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint] = v98;

      sub_23D6D7DD0();
      v101 = *&v18[v94];
      if (v101)
      {
        v102 = *&v18[v99];
        if (v102)
        {
          v103 = v101;
          v104 = v102;
          [v18 addSubview_];
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_23D6EFC30;
          *(v105 + 32) = v103;
          *(v105 + 40) = v104;
          v168 = v103;
          v165 = v104;
          v106 = [v90 topAnchor];
          v107 = [v68 topAnchor];
          v108 = sub_23D6EE560();
          v109 = MEMORY[0x23EEE8CF0]();

          v110 = 24.0;
          if (v109)
          {
            v110 = 25.0;
          }

          v111 = [v106 constraintEqualToAnchor:v107 constant:v110];

          *(v105 + 48) = v111;
          v112 = [v90 bottomAnchor];
          v113 = [v68 bottomAnchor];
          v114 = sub_23D6EE560();
          v115 = MEMORY[0x23EEE8CF0]();

          v116 = -24.0;
          if (v115)
          {
            v116 = -25.0;
          }

          v117 = [v112 constraintEqualToAnchor:v113 constant:v116];

          *(v105 + 56) = v117;
          v118 = sub_23D6EE7A0();

          [v69 activateConstraints_];
        }
      }

      [v18 addSubview_];
      [v18 addSubview_];
      sub_23D6D7F40();
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_23D6EFC30;
      v120 = [*&v18[v164] widthAnchor];
      v121 = [v120 constraintEqualToConstant_];

      *(v119 + 32) = v121;
      v122 = [*&v18[v164] heightAnchor];
      v123 = [v90 heightAnchor];
      v124 = [v122 constraintEqualToAnchor:v123 multiplier:0.5];

      *(v119 + 40) = v124;
      v125 = [*&v18[v166] widthAnchor];
      v126 = [*&v18[v164] widthAnchor];
      v127 = [v125 constraintEqualToAnchor_];

      *(v119 + 48) = v127;
      v128 = [*&v18[v166] heightAnchor];
      v129 = [*&v18[v164] heightAnchor];
      v130 = [v128 constraintEqualToAnchor_];

      *(v119 + 56) = v130;
      v131 = sub_23D6EE7A0();

      [v69 activateConstraints_];

      if (v18[v163] == 1)
      {
        v132 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
        swift_beginAccess();
        [v18 addSubview_];
        sub_23D6D8448();
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_23D6EFC00;
        v134 = [*&v18[v132] byte_278BE1576];
        v135 = [*&v18[v166] byte_278BE1576];
        v136 = [v134 &selRef:v135 interactionControllerForDismissal:? + 5];

        *(v133 + 32) = v136;
        v137 = [*&v18[v132] heightAnchor];
        v138 = [*&v18[v166] heightAnchor];
        v139 = [v137 &selRef:v138 interactionControllerForDismissal:? + 5];

        *(v133 + 40) = v139;
        v140 = sub_23D6EE7A0();

        [v177 activateConstraints_];
      }

      v141 = sub_23D6D63D0();
      [v18 addSubview_];

      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_23D6EFC30;
      v143 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner;
      v144 = [*&v18[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner] centerXAnchor];
      v145 = [v90 centerXAnchor];
      v146 = [v144 &selRef:v145 interactionControllerForDismissal:? + 5];

      *(v142 + 32) = v146;
      v147 = [*&v18[v143] centerYAnchor];
      v148 = [v90 centerYAnchor];
      v149 = [v147 &selRef:v148 interactionControllerForDismissal:? + 5];

      *(v142 + 40) = v149;
      v150 = [*&v18[v143] byte_278BE1576];
      v151 = [v90 byte_278BE1576];

      v152 = [v150 constraintEqualToAnchor:v151 multiplier:0.5];
      *(v142 + 48) = v152;
      v153 = [*&v18[v143] heightAnchor];
      v154 = [*&v18[v143] heightAnchor];
      v155 = [v153 &selRef:v154 interactionControllerForDismissal:? + 5];

      *(v142 + 56) = v155;
      v156 = sub_23D6EE7A0();

      [v177 activateConstraints_];
    }
  }

  v157 = AXkNanoOrientationStatusNotificationID();
  if (v157)
  {
    v158 = v157;
    v159 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v159, v18, sub_23D6D9C60, v158, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v18;
}

id sub_23D6D7C58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_23D6EE730();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_23D6EE9F0();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v13 selector:a4];

  swift_unknownObjectRelease();
  return v14;
}

void sub_23D6D7DD0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    v4 = *(v1 + v3);
    sub_23D6EE5E0();
    v5 = v2;
    v6 = sub_23D6EE560();
    v7 = MEMORY[0x23EEE8CF0]();

    v8 = 41.0;
    if (v7)
    {
      v8 = 44.0;
    }

    v9 = 24.0;
    if (v7)
    {
      v9 = 25.0;
    }

    if (v4)
    {
      v8 = v9;
    }

    [v5 setConstant_];
  }

  v10 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    v12 = *(v1 + v11);
    sub_23D6EE5E0();
    v13 = v10;
    v14 = sub_23D6EE560();
    v15 = MEMORY[0x23EEE8CF0]();

    v16 = -41.0;
    if (v15)
    {
      v16 = -44.0;
    }

    v17 = -24.0;
    if (v15)
    {
      v17 = -25.0;
    }

    if (!v12)
    {
      v16 = v17;
    }

    [v13 setConstant_];
  }
}

void sub_23D6D7F40()
{
  v1 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint);
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint);
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint);
  v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint);
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint);
  v6 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint);
  if (v6)
  {
    [v6 setActive_];
  }

  v7 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint);
  v8 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint);
  if (v8)
  {
    [v8 setActive_];
  }

  v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
    swift_beginAccess();
    v12 = *(v0 + v11);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
      swift_beginAccess();
      v54 = v10;
      v56 = v3;
      v52 = v12;
      if (*(v0 + v13) == 1)
      {
        v14 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton);
        swift_beginAccess();
        v15 = *v14;
        v16 = v10;
        v17 = v12;
        v18 = [v15 topAnchor];
        v19 = [v17 topAnchor];
        v20 = [v18 constraintEqualToAnchor_];

        v21 = *v1;
        *v1 = v20;

        v22 = [*v14 rightAnchor];
        v23 = [v16 rightAnchor];
        [v16 layoutMargins];
        v25 = [v22 constraintEqualToAnchor:v23 constant:v24];

        v26 = *v3;
        *v3 = v25;

        v27 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton);
        swift_beginAccess();
        v28 = v1;
        v1 = v5;
        v29 = v7;
      }

      else
      {
        v14 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton);
        swift_beginAccess();
        v30 = *v14;
        v31 = v10;
        v32 = v12;
        v33 = [v30 topAnchor];
        v34 = [v32 topAnchor];
        v35 = [v33 constraintEqualToAnchor_];

        v36 = *v5;
        *v5 = v35;

        v37 = [*v14 leftAnchor];
        v38 = [v31 leftAnchor];
        [v31 layoutMargins];
        v40 = [v37 constraintEqualToAnchor:v38 constant:-v39];

        v41 = *v7;
        *v7 = v40;

        v27 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton);
        swift_beginAccess();
        v29 = v3;
        v28 = v1;
      }

      v42 = [*v27 topAnchor];
      v43 = [*v14 bottomAnchor];
      v44 = [v42 constraintEqualToAnchor_];

      v45 = *v1;
      *v1 = v44;

      v46 = [*v27 rightAnchor];
      v47 = [*v14 rightAnchor];
      v48 = [v46 constraintEqualToAnchor_];

      v49 = *v29;
      *v29 = v48;

      if (*v28)
      {
        [*v28 setActive_];
      }

      if (*v57)
      {
        [*v57 setActive_];
      }

      if (*v51)
      {
        [*v51 setActive_];
      }

      if (*v7)
      {
        v50 = *v7;
        [v50 setActive_];
      }
    }
  }
}

void sub_23D6D8448()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint);
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint;
  v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint);
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
    if (*(v0 + v7) == 1)
    {
      swift_beginAccess();
      v9 = *(v0 + v8);
      v10 = v6;
      v11 = [v9 topAnchor];
      v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
      swift_beginAccess();
      v13 = [*(v0 + v12) topAnchor];
      v14 = [v11 constraintEqualToAnchor_];

      v15 = *(v0 + v1);
      *(v0 + v1) = v14;

      v16 = [*(v0 + v8) leftAnchor];
      v17 = [v10 leftAnchor];
      [v10 layoutMargins];
      v19 = -v18;
    }

    else
    {
      swift_beginAccess();
      v20 = *(v0 + v8);
      v21 = v6;
      v22 = [v20 topAnchor];
      v23 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
      swift_beginAccess();
      v24 = [*(v0 + v23) topAnchor];
      v25 = [v22 constraintEqualToAnchor_];

      v26 = *(v0 + v1);
      *(v0 + v1) = v25;

      v16 = [*(v0 + v8) rightAnchor];
      v17 = [v21 rightAnchor];
      [v21 layoutMargins];
      v19 = v27;
    }

    v28 = [v16 constraintEqualToAnchor:v17 constant:v19];

    v29 = *(v0 + v3);
    *(v0 + v3) = v28;

    v30 = *(v0 + v1);
    if (v30)
    {
      [v30 setActive_];
    }

    v31 = *(v0 + v3);
    if (v31)
    {
      v32 = v31;
      [v32 setActive_];
    }
  }
}

id AXTwiceCompanionWatchView.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXTwiceCompanionWatchView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23D6D89B8(char a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v9 = sub_23D6EE660();
  v10 = sub_23D6EE810();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_23D6D3C38(0xD000000000000016, 0x800000023D6F0A50, &v18);
    _os_log_impl(&dword_23D6CB000, v9, v10, "[TWICE] %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EEE9940](v12, -1, -1);
    MEMORY[0x23EEE9940](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  [*(v2 + v13) setIsAccessibilityElement_];
  v14 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  swift_beginAccess();
  result = [*(v2 + v14) setIsAccessibilityElement_];
  if (*(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport) == 1)
  {
    v16 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
    swift_beginAccess();
    return [*(v2 + v16) setIsAccessibilityElement_];
  }

  return result;
}

uint64_t sub_23D6D8BFC(void *a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D6EE330();
  v9 = a1;
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F0A70, &v24);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s %@", v12, 0x16u);
    sub_23D6DA2EC(v13);
    MEMORY[0x23EEE9940](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v16 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer;
  swift_beginAccess();
  v17 = *(v2 + v16);
  *(v2 + v16) = v9;
  v18 = v9;

  v19 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (v20)
  {
    v21 = v20;
    sub_23D6D2C0C(v18);
  }

  return sub_23D6D9C68();
}

uint64_t sub_23D6D8E64(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer);
  if (!v7)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v39.origin.x = v12;
  v39.origin.y = v14;
  v39.size.width = v16;
  v39.size.height = v18;
  v19 = CGRectGetWidth(v39) * a1;
  v20 = [v8 mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v40.origin.x = v22;
  v40.origin.y = v24;
  v40.size.width = v26;
  v40.size.height = v28;
  v29 = CGRectGetHeight(v40) * a2;
  [v9 bounds];
  [v9 convertRect:0 toLayer:?];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v38.x = v19;
  v38.y = v29;
  if (!CGRectContainsPoint(v41, v38))
  {

    return 0;
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v34 = (v19 - x) / CGRectGetWidth(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  CGRectGetHeight(v43);

  v35 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  swift_beginAccess();
  v36 = 1.0 - v34;
  *(v2 + v35);
  if (*(v2 + v35))
  {
    v36 = v34;
  }

  return *&v36;
}

void sub_23D6D9088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2730, &unk_23D6EFC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23D6EFC30;
  sub_23D6D1D74(0, &qword_27E2E2A50, 0x277D75088);
  sub_23D6EE5E0();
  v3 = sub_23D6EE560();
  v4 = sub_23D6EE570();
  v6 = v5;

  v7 = type metadata accessor for AXTwiceCompanionWatchView();
  v34 = v7;
  v33[0] = v1;
  v8 = v1;
  *(v2 + 32) = sub_23D6D7C58(v4, v6, v33, sel_digitalCrownButtonScrollUp_);
  v9 = sub_23D6EE560();
  v10 = sub_23D6EE570();
  v12 = v11;

  v34 = v7;
  v33[0] = v8;
  v13 = v8;
  *(v2 + 40) = sub_23D6D7C58(v10, v12, v33, sel_digitalCrownButtonScrollDown_);
  v14 = sub_23D6EE560();
  v15 = sub_23D6EE570();
  v17 = v16;

  v34 = v7;
  v33[0] = v13;
  v18 = v13;
  *(v2 + 48) = sub_23D6D7C58(v15, v17, v33, sel_doubleDigitalCrownButtonTapped_);
  v19 = sub_23D6EE560();
  v20 = sub_23D6EE570();
  v22 = v21;

  v34 = v7;
  v33[0] = v18;
  v23 = v18;
  *(v2 + 56) = sub_23D6D7C58(v20, v22, v33, sel_tripleDigitalCrownButtonTapped_);
  v35 = v2;
  v24 = sub_23D6EE560();
  v25 = sub_23D6EE570();
  v27 = v26;

  v34 = v7;
  v33[0] = v23;
  v28 = v23;
  sub_23D6D7C58(v25, v27, v33, sel_digitalCrownAXLongPressed_);
  MEMORY[0x23EEE8EB0]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v32 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23D6EE7D0();
  }

  sub_23D6EE7E0();
  v29 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  v30 = *&v23[v29];
  v31 = sub_23D6EE7A0();

  [v30 setAccessibilityCustomActions_];
}

void sub_23D6D9740(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
    v5 = Strong;
    swift_beginAccess();
    v6 = *&v5[v4];
    v7 = v6;

    if (v6)
    {
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        [v8 *a2];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_23D6D9804(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  swift_unknownObjectWeakInit();
  v7 = a3;
  v8 = a1;
  sub_23D6DBFD4(v7, v10, a4);

  return MEMORY[0x23EEE9980](v10);
}

void (*sub_23D6D9B88(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23D6D64DC(v2);
  return sub_23D6D9BF8;
}

void sub_23D6D9BF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_23D6D9C68()
{
  v1 = sub_23D6EE690();
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  (MEMORY[0x28223BE20])();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D6EE6C0();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6EE6E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v17 = sub_23D6EE850();
  sub_23D6EE6D0();
  sub_23D6EE700();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_23D6DDD38;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_95;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  sub_23D6EE6A0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D6D4C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6D1694();
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F50](v16, v8, v4, v19);
  _Block_release(v19);

  (*(v25 + 8))(v4, v1);
  (*(v23 + 8))(v8, v24);
  return (v22)(v16, v9);
}

uint64_t sub_23D6D9FEC()
{
  MEMORY[0x23EEE9980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23D6DA08C(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  swift_beginAccess();
  v3 = a1[v2];
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView;
  swift_beginAccess();
  v5 = *&a1[v4];
  if (v5)
  {
    if (v3)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = v5;
    v8 = [v7 layer];
    CATransform3DMakeRotation(&v10, 3.14159265, 0.0, 0.0, v6);
    [v8 setTransform_];
  }

  sub_23D6DA1A4();
  sub_23D6D7DD0();
  sub_23D6D7F40();
  if (a1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport] == 1)
  {
    sub_23D6D8448();
  }

  return [a1 setNeedsUpdateConstraints];
}

id sub_23D6DA1A4()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    if (*(v0 + v3) == 1)
    {
      v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
    }

    else
    {
      v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
    }

    v5 = (v0 + v4);
    swift_beginAccess();
    [v2 setConstant_];
  }

  v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint;
  result = swift_beginAccess();
  v8 = *(v0 + v6);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    if (*(v0 + v9) == 1)
    {
      v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding;
    }

    else
    {
      v10 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding;
    }

    v11 = (v0 + v10);
    swift_beginAccess();
    return [v8 setConstant_];
  }

  return result;
}

uint64_t sub_23D6DA2EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2A48, &unk_23D6EFEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D6DA354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23D6DA3AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double keypath_get_5Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_6Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

id keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

id sub_23D6DA6C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_23D6D63D0();
  *a2 = result;
  return result;
}

void sub_23D6DA6F0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner);
  *(*a2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = *a1;
  v3 = v2;
}

void sub_23D6DB284()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
  *(v1 + v2) = AXIsCrownOrientationOnRightSide();
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftPadding) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_leftConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightPadding) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rightContraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_deviceChromeView) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButtonHorizontalConstraint) = 0;
  v3 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  *(v1 + v3) = sub_23D6D5A78();
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeUpCrownGesture) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_swipeDownCrownGesture) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButtonHorizontalConstraint) = 0;
  v4 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchSideButton;
  *(v1 + v4) = sub_23D6D5F84();
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewLeftConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchRendererViewRightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_mirroringLayer) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView____lazy_storage___deviceSpinner) = 0;
  v5 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_hasStingSupport;
  sub_23D6EE5E0();
  v6 = sub_23D6EE560();
  v7 = MEMORY[0x23EEE8CF0]();

  *(v1 + v5) = v7 & 1;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButtonHorizontalConstraint) = 0;
  v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchStingButton;
  *(v1 + v8) = sub_23D6D653C();
  sub_23D6EE990();
  __break(1u);
}

void *sub_23D6DB434()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000021, 0x800000023D6F11B0, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result crownButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DB624()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F1180, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result doubleCrownButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DB814()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F1150, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result tripleCrownButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DBA04()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F1130, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result crownButtonScrollUp];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DBBF4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001FLL, 0x800000023D6F1110, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result crownButtonScrollDown];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_23D6DBDE4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F10F0, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result sideButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23D6DBFD4(void *a1, uint64_t a2, SEL *a3)
{
  v39 = a3;
  v5 = sub_23D6EE670();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if ([a1 state] == 2)
  {
    v13 = [a1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [a1 locationInView_];
      v41.x = v23;
      v41.y = v24;
      v42.origin.x = v16;
      v42.origin.y = v18;
      v42.size.width = v20;
      v42.size.height = v22;
      if (!CGRectContainsPoint(v42, v41))
      {
        sub_23D6EE330();
        v25 = sub_23D6EE660();
        v26 = sub_23D6EE810();
        v38 = v25;
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v37 = a2;
          v28 = v27;
          v29 = swift_slowAlloc();
          v40 = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v40);
          v30 = v26;
          v31 = v38;
          _os_log_impl(&dword_23D6CB000, v38, v30, "[TWICE] %s. Gesture is out of its bounds. Cancel the gesture!", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x23EEE9940](v29, -1, -1);
          v32 = v28;
          a2 = v37;
          MEMORY[0x23EEE9940](v32, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v12, v5);
        [a1 setState_];
      }
    }
  }

  if ([a1 state] == 3)
  {
    sub_23D6EE330();
    v33 = sub_23D6EE660();
    v34 = sub_23D6EE810();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v40);
      _os_log_impl(&dword_23D6CB000, v33, v34, "[TWICE] %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23EEE9940](v36, -1, -1);
      MEMORY[0x23EEE9940](v35, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    sub_23D6D9740(a2, v39);
  }
}

id sub_23D6DC378(void *a1, uint64_t a2)
{
  v4 = sub_23D6EE670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  if ([a1 state] == 2)
  {
    v12 = [a1 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [a1 locationInView_];
      v38.x = v22;
      v38.y = v23;
      v39.origin.x = v15;
      v39.origin.y = v17;
      v39.size.width = v19;
      v39.size.height = v21;
      if (!CGRectContainsPoint(v39, v38))
      {
        sub_23D6EE330();
        v24 = sub_23D6EE660();
        v25 = sub_23D6EE810();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v36 = v24;
          v27 = v26;
          v35 = swift_slowAlloc();
          v37 = v35;
          *v27 = 136315138;
          *(v27 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v37);
          _os_log_impl(&dword_23D6CB000, v36, v25, "[TWICE] %s. Gesture is out of its bounds. Cancel the gesture!", v27, 0xCu);
          v28 = v35;
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x23EEE9940](v28, -1, -1);
          MEMORY[0x23EEE9940](v27, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v11, v4);
        [a1 setState_];
      }
    }
  }

  result = [a1 state];
  if (result == 3)
  {
    sub_23D6EE330();
    v30 = sub_23D6EE660();
    v31 = sub_23D6EE810();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_23D6D3C38(0xD000000000000029, 0x800000023D6F10A0, &v37);
      _os_log_impl(&dword_23D6CB000, v30, v31, "[TWICE] %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23EEE9940](v33, -1, -1);
      MEMORY[0x23EEE9940](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return (*(a2 + 16))(a2);
  }

  return result;
}

void *sub_23D6DC714()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001ALL, 0x800000023D6F10D0, &v14);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  result = swift_beginAccess();
  if (*(v1 + v11))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result stingButtonPressed];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23D6DC904()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000022, 0x800000023D6F1070, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong doubleCrownButtonPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DCAF8()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000022, 0x800000023D6F1040, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong tripleCrownButtonPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DCCEC()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001ELL, 0x800000023D6F1020, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong crownButtonScrollUp];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DCEE0()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000020, 0x800000023D6F0FF0, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong crownButtonScrollDown];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD0D4()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F0FD0, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong crownButtonLongPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD2C8()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001BLL, 0x800000023D6F0FB0, &v16);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_watchCrownButton;
  swift_beginAccess();
  [*(v1 + v11) setAccessibilityTraits_];
  v12 = *MEMORY[0x277D76438];
  v13 = sub_23D6EE730();
  UIAccessibilityPostNotification(v12, v13);

  return 1;
}

uint64_t sub_23D6DD4E8()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001BLL, 0x800000023D6F0F60, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong sideButtonLongPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD6DC()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD00000000000001CLL, 0x800000023D6F0F40, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stingButtonLongPressed];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_23D6DD8D0()
{
  v1 = v0;
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v7 = sub_23D6EE660();
  v8 = sub_23D6EE810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F0F20, &v15);
    _os_log_impl(&dword_23D6CB000, v7, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE9940](v10, -1, -1);
    MEMORY[0x23EEE9940](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stingButtonKeycord];
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

void sub_23D6DDAC4(void *a1)
{
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    v8 = AXIsCrownOrientationOnRightSide();
    v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
    swift_beginAccess();
    if (v8 != v7[v9])
    {
      sub_23D6EE330();
      v10 = v7;
      v11 = sub_23D6EE660();
      v12 = sub_23D6EE810();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v17 = v10;
        v14 = v13;
        v15 = swift_slowAlloc();
        v18 = v15;
        *v14 = 136315650;
        *(v14 + 4) = sub_23D6D3C38(0xD000000000000026, 0x800000023D6F1370, &v18);
        *(v14 + 12) = 1024;
        *(v14 + 14) = v7[v9];

        *(v14 + 18) = 1024;
        *(v14 + 20) = v8;
        _os_log_impl(&dword_23D6CB000, v11, v12, "[TWICE] %s %{BOOL}d %{BOOL}d", v14, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x23EEE9940](v15, -1, -1);
        MEMORY[0x23EEE9940](v14, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
      v7[v9] = v8;
      sub_23D6D9C68();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D6DDD00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23D6DDD48()
{
  if (*MEMORY[0x277D81C38])
  {
    qword_27E2E2DA0 = *MEMORY[0x277D81C38];
  }

  else
  {
    __break(1u);
  }
}

id sub_23D6DDD68()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() sharedInstance];
    [v3 setDelegate_];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_23D6EDC38(v4);
  }

  sub_23D6EDC48(v2);
  return v3;
}

double sub_23D6DDE00()
{
  v1 = (v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold);
  if ((*(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_23D6ECDA8();
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_23D6DDE44()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor;
  v2 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CE7D68]);
    v5 = sub_23D6EE730();
    v3 = [v4 initWithHIDTapIdentifier:v5 HIDEventTapPriority:70 systemEventTapIdentifier:0 systemEventTapPriority:30];

    if (v3)
    {
      [v3 setHIDEventFilterMask_];
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      v13[4] = sub_23D6EDC58;
      v13[5] = v6;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_23D6DED38;
      v13[3] = &block_descriptor_51;
      v7 = _Block_copy(v13);
      v8 = v3;
      v9 = v0;

      [v8 setHIDEventHandler_];
      _Block_release(v7);
    }

    v10 = *&v0[v1];
    *&v0[v1] = v3;
    v11 = v3;
    sub_23D6EDC38(v10);
  }

  sub_23D6EDC48(v2);
  return v3;
}

void AXTwiceCompanionRootViewController.handleHIDEvent(_:)(uint64_t a1)
{
  v159 = a1;
  v1 = sub_23D6EE620();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  v161 = v6;
  v162 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v154 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v154 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v154 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v154 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v154 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v154 - v27;
  if (_AXSVoiceOverTouchEnabled())
  {
    sub_23D6EE330();
    v29 = sub_23D6EE660();
    v30 = sub_23D6EE7F0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23D6CB000, v29, v30, "[TWICE] VoiceOver is on. Not going to process the hid event.", v31, 2u);
      MEMORY[0x23EEE9940](v31, -1, -1);
    }

    (*(v162 + 8))(v11, v161);
    return;
  }

  v32 = v159;
  v155 = v23;
  v33 = v160;
  v156 = v5;
  v157 = v1;
  v158 = v2;
  if (_AXSAssistiveTouchScannerEnabled())
  {
    sub_23D6EE330();
    v34 = sub_23D6EE660();
    v35 = sub_23D6EE7F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_23D6CB000, v34, v35, "[TWICE] Switch Control is on. Not going to process the hid event.", v36, 2u);
      MEMORY[0x23EEE9940](v36, -1, -1);
    }

    (*(v162 + 8))(v14, v161);
    return;
  }

  if (v32)
  {
    v37 = v32;
    [v37 type];
    if (AXEventTypeIsHomeButtonPress())
    {
      sub_23D6EE330();
      v38 = sub_23D6EE660();
      v39 = sub_23D6EE810();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v156;
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_23D6CB000, v38, v39, "[TWICE] Home Button Pressed. Dismiss this view.", v42, 2u);
        MEMORY[0x23EEE9940](v42, -1, -1);
      }

      (*(v162 + 8))(v20, v161);
      v43 = v157;
      v44 = v158;
      (*(v158 + 104))(v41, *MEMORY[0x277CE7058], v157);
      sub_23D6DF5FC(v41);

      (*(v44 + 8))(v41, v43);
      return;
    }

    v159 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
    v48 = *(v33 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    v49 = sub_23D6CEB04();
    v51 = v50;

    ObjectType = swift_getObjectType();
    [v37 location];
    *&v53 = COERCE_DOUBLE((*(v51 + 208))(ObjectType, v51));
    v55 = v54;
    LOBYTE(v48) = v56;

    if (v48)
    {
      v57 = v155;
      sub_23D6EE330();
      v58 = sub_23D6EE660();
      v59 = sub_23D6EE7F0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_23D6CB000, v58, v59, "[TWICE] hid location is not inside device screen", v60, 2u);
        MEMORY[0x23EEE9940](v60, -1, -1);
      }

      else
      {
      }

      (*(v162 + 8))(v57, v161);
      return;
    }

    if ([v37 type]!= 3001)
    {

      return;
    }

    v61 = (v160 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent);
    v62 = 0x278BE1000uLL;
    v63 = v26;
    if ((*(v160 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent + 28) & 1) == 0)
    {
      v155 = *v61;
      v64 = *(v61 + 6);
      v66 = *(v61 + 1);
      v65 = *(v61 + 2);
      v67 = [v37 handInfo];
      if (!v67)
      {
LABEL_61:
        __break(1u);
        return;
      }

      v68 = v67;
      v69 = [v67 eventType];

      v70 = v64 == v69;
      v62 = 0x278BE1000;
      if (v70)
      {
        v71 = [v37 HIDTime];
        sub_23D6ECEE0(v155, v71);
        v73 = v72;
        [v37 location];
        if (v73 != -1.0 && v73 < 60.0)
        {
          v76 = sqrt((v66 - v74) * (v66 - v74) + (v65 - v75) * (v65 - v75));
          if (v76 < sub_23D6DDE00())
          {
            sub_23D6EE330();
            v77 = sub_23D6EE660();
            v78 = sub_23D6EE7F0();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 134218240;
              *(v79 + 4) = v73;
              *(v79 + 12) = 2048;
              *(v79 + 14) = v76;
              _os_log_impl(&dword_23D6CB000, v77, v78, "[TWICE] Skip event interval:%f distance:%f", v79, 0x16u);
              MEMORY[0x23EEE9940](v79, -1, -1);
              v80 = v37;
            }

            else
            {
              v80 = v77;
              v77 = v37;
            }

            (*(v162 + 8))(v28, v161);
            return;
          }
        }
      }
    }

    v81 = [v37 HIDTime];
    [v37 location];
    v83 = v82;
    v85 = v84;
    v86 = [v37 *(v62 + 3192)];
    if (!v86)
    {
      goto LABEL_58;
    }

    v87 = v86;
    v88 = *&v53;
    v89 = v55;
    v90 = [v86 eventType];

    *v61 = v81;
    v61[1] = v83;
    v61[2] = v85;
    *(v61 + 6) = v90;
    *(v61 + 28) = 0;
    sub_23D6EE330();
    v91 = v37;
    v92 = sub_23D6EE660();
    v93 = sub_23D6EE7F0();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v163 = v95;
      *v94 = 136315138;
      v96 = [v91 description];
      v97 = sub_23D6EE740();
      v99 = v98;

      v100 = sub_23D6D3C38(v97, v99, &v163);

      *(v94 + 4) = v100;
      _os_log_impl(&dword_23D6CB000, v92, v93, "[TWICE] handleHIDEvent %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x23EEE9940](v95, -1, -1);
      MEMORY[0x23EEE9940](v94, -1, -1);
    }

    (*(v162 + 8))(v63, v161);
    v101 = v157;
    v102 = v158;
    [v91 setLocation:v88, v89];
    v103 = [v91 handInfo];
    [v103 setHandPosition_];

    v104 = [v91 handInfo];
    v105 = v160;
    if (!v104)
    {
      goto LABEL_59;
    }

    v106 = v104;
    v107 = [v104 paths];

    if (!v107)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v161 = v91;
    sub_23D6D1D74(0, &qword_27E2E2AB0, 0x277CE7D60);
    v108 = sub_23D6EE7B0();

    if (v108 >> 62)
    {
      v109 = sub_23D6EE9A0();
      if (v109)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v109)
      {
LABEL_40:
        if (v109 >= 1)
        {
          v110 = 0;
          v111 = v108 & 0xC000000000000001;
          v162 = v108;
          while (1)
          {
            if (v111)
            {
              v113 = MEMORY[0x23EEE9030](v110, v108);
            }

            else
            {
              v113 = *(v108 + 8 * v110 + 32);
            }

            v114 = v113;
            v115 = *(v105 + v159);
            v116 = sub_23D6CE998();

            [v114 pathLocation];
            v118 = v117;
            v120 = v119;
            v121 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_rendererView;
            swift_beginAccess();
            v122 = *&v116[v121];
            if (v122 && (v123 = *(v122 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer)) != 0)
            {
              v124 = objc_opt_self();
              v112 = v123;
              v125 = [v124 mainScreen];
              [v125 bounds];
              v127 = v126;
              v129 = v128;
              v131 = v130;
              v133 = v132;

              v165.origin.x = v127;
              v165.origin.y = v129;
              v165.size.width = v131;
              v165.size.height = v133;
              v134 = v118 * CGRectGetWidth(v165);
              v135 = [v124 mainScreen];
              [v135 bounds];
              v137 = v136;
              v139 = v138;
              v141 = v140;
              v143 = v142;

              v166.origin.x = v137;
              v166.origin.y = v139;
              v166.size.width = v141;
              v166.size.height = v143;
              v144 = v120 * CGRectGetHeight(v166);
              [v112 bounds];
              [v112 convertRect:0 toLayer:?];
              x = v167.origin.x;
              y = v167.origin.y;
              width = v167.size.width;
              height = v167.size.height;
              v164.x = v134;
              v164.y = v144;
              v149 = CGRectContainsPoint(v167, v164);
              v105 = v160;
              if (v149)
              {
                v168.origin.x = x;
                v168.origin.y = y;
                v168.size.width = width;
                v168.size.height = height;
                CGRectGetWidth(v168);
                v169.origin.x = x;
                v169.origin.y = y;
                v169.size.width = width;
                v169.size.height = height;
                CGRectGetHeight(v169);

                v150 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
                swift_beginAccess();
                LODWORD(v150) = v116[v150];

                v102 = v158;
                v108 = v162;
                goto LABEL_44;
              }

              v108 = v162;
            }

            else
            {
              v112 = v116;
              v105 = v160;
            }

            [v114 pathLocation];
            v102 = v158;
LABEL_44:
            ++v110;
            [v114 setPathLocation_];

            v101 = v157;
            if (v109 == v110)
            {
              goto LABEL_56;
            }
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

LABEL_56:

    v151 = v156;
    v152 = v161;
    *v156 = v161;
    (*(v102 + 104))(v151, *MEMORY[0x277CE7008], v101);
    v153 = v152;
    sub_23D6DF5FC(v151);

    (*(v102 + 8))(v151, v101);
    return;
  }

  sub_23D6EE330();
  v45 = sub_23D6EE660();
  v46 = sub_23D6EE800();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_23D6CB000, v45, v46, "[TWICE] invalid HID event", v47, 2u);
    MEMORY[0x23EEE9940](v47, -1, -1);
  }

  (*(v162 + 8))(v17, v161);
}

uint64_t sub_23D6DED38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t sub_23D6DED94()
{
  v1 = sub_23D6EE640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v11 = v0;
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v7;
    v15 = v14;
    v34 = swift_slowAlloc();
    v36 = v34;
    *v15 = 136315138;
    v16 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v11[v16], v1);
    sub_23D6EDFC8(&qword_27E2E2C80, MEMORY[0x277CE70A8]);
    v17 = sub_23D6EE9E0();
    v33 = v6;
    v19 = v18;
    (*(v2 + 8))(v5, v1);
    v20 = sub_23D6D3C38(v17, v19, &v36);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] AXTwiceCompanionRootViewController State is %s", v15, 0xCu);
    v21 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23EEE9940](v21, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);

    (*(v35 + 8))(v10, v33);
    v22 = 0x27E2E2000;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    v22 = 0x27E2E2000uLL;
  }

  v23 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  v24 = *&v11[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
  v25 = *(v22 + 2864);
  swift_beginAccess();
  v26 = *(v2 + 16);
  v26(v5, &v11[v25], v1);
  v27 = v24;
  sub_23D6CFFFC(v5);

  v28 = *(v2 + 8);
  v28(v5, v1);
  v29 = *&v11[v23];
  v26(v5, &v11[v25], v1);
  v30 = v29;
  sub_23D6D0258();

  return (v28)(v5, v1);
}

void sub_23D6DF148()
{
  v1 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer;
  v2 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer);
LABEL_5:
    v8 = v2;
    return;
  }

  v4 = v0;
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v5 = sub_23D6EE850();
  v6 = [objc_allocWithZone(MEMORY[0x277CE6950]) initWithTargetSerialQueue_];

  if (v6)
  {
    [v6 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_23D6DF20C()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AXTwiceCompanionRootViewController();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.6];
    [v2 setBackgroundColor_];

    v4 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
    v5 = v0;
    sub_23D6EE530();

    v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
    [*&v5[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC] setModalPresentationStyle_];
    v7 = *&v5[v6];
    v8 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionMainViewController_dismissButton;
    swift_beginAccess();
    [*(v7 + v8) addTarget:v5 action:sel_dismissButtonTappedWithSender_ forControlEvents:64];
    v9 = *&v5[v6];
    v10 = sub_23D6CEB04();
    v12 = v11;

    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 152))(ObjectType, v12);

    if (v14)
    {
      swift_unknownObjectWeakAssign();
    }

    AXDeviceRemoteScreenIsBluetoothOn();
    v15 = [objc_opt_self() defaultCenter];
    if (qword_27E2E26F0 != -1)
    {
      swift_once();
    }

    v16 = qword_27E2E2DA0;
    v17 = [objc_opt_self() mainQueue];
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    aBlock[4] = sub_23D6ED020;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D6DF9B8;
    aBlock[3] = &block_descriptor_3;
    v19 = _Block_copy(aBlock);
    v20 = v5;

    v21 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D6DF510()
{
  v0 = sub_23D6EE620();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CE7030], v0);
  sub_23D6DF5FC(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_23D6DF5FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23D6EE690();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6EE6C0();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D6EE620();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v20[1] = *(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_23D6EDE3C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_72;
  v18 = _Block_copy(aBlock);

  sub_23D6EE6A0();
  v24 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F80](0, v11, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v4);
  (*(v21 + 8))(v11, v22);
}

uint64_t sub_23D6DF9B8(uint64_t a1)
{
  v2 = sub_23D6EE2C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23D6EE2B0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_23D6DFAF4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for AXTwiceCompanionRootViewController();
  v17.receiver = v1;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, sel_viewDidAppear_, a1 & 1);
  sub_23D6EE310();
  v8 = sub_23D6EE320();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate;
  swift_beginAccess();
  sub_23D6ED040(v6, &v1[v9]);
  swift_endAccess();
  v10 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  *(v10 + 6) = 0;
  v10[28] = 1;
  v11 = *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_23D6ED0B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;

  [v15 presentViewController:v14 animated:1 completion:v13];
  _Block_release(v13);

  sub_23D6DFDEC();
}

uint64_t sub_23D6DFD00()
{
  v0 = sub_23D6EE620();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CE7050], v0);
  sub_23D6DF5FC(v4);
  return (*(v1 + 8))(v4, v0);
}

void sub_23D6DFDEC()
{
  v1 = AXkMobileKeyBagLockStatusNotificationID();
  if (v1)
  {
    v2 = v1;
    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v3, v0, sub_23D6E105C, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v4 = [objc_opt_self() server];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      v9[4] = sub_23D6EDD38;
      v9[5] = v6;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_23D6E12C8;
      v9[3] = &block_descriptor_63;
      v7 = _Block_copy(v9);
      v8 = v0;

      [v5 screenLockStatus:v7 passcodeStatusRequired:1];
      _Block_release(v7);
    }
  }
}

uint64_t sub_23D6DFF8C(char a1)
{
  v2 = v1;
  v4 = sub_23D6EE320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = sub_23D6EE670();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AXTwiceCompanionRootViewController();
  v47.receiver = v2;
  v47.super_class = v22;
  objc_msgSendSuper2(&v47, sel_viewDidDisappear_, a1 & 1);
  sub_23D6EE330();
  v23 = sub_23D6EE660();
  v24 = sub_23D6EE810();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = v4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v42 = v5;
    v28 = v27;
    v46[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F1420, v46);
    _os_log_impl(&dword_23D6CB000, v23, v24, "[TWICE] %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    v5 = v42;
    MEMORY[0x23EEE9940](v29, -1, -1);
    v30 = v26;
    v4 = v43;
    MEMORY[0x23EEE9940](v30, -1, -1);
  }

  (*(v18 + 8))(v21, v17);
  v31 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v31, v2);

  sub_23D6DF148();
  v33 = v32;
  [v32 cancel];

  (*(v5 + 56))(v16, 1, 1, v4);
  v34 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  swift_beginAccess();
  sub_23D6ED040(v16, v2 + v34);
  swift_endAccess();
  v35 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate;
  swift_beginAccess();
  sub_23D6EDF00(v2 + v35, v14, &qword_27E2E2AC0, &qword_23D6EFF90);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    return sub_23D6EDEA0(v14, &qword_27E2E2AC0, &qword_23D6EFF90);
  }

  v37 = v44;
  (*(v5 + 32))(v44, v14, v4);
  v38 = v45;
  sub_23D6EE310();
  sub_23D6EE5E0();
  v39 = sub_23D6EE560();
  sub_23D6EE5B0();

  v40 = *(v5 + 8);
  v40(v38, v4);
  return (v40)(v37, v4);
}

id AXTwiceCompanionRootViewController.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
  sub_23D6EE520();

  v3 = sub_23D6DDD68();
  [v3 cleanup];

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXTwiceCompanionRootViewController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id AXTwiceCompanionRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23D6EE730();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AXTwiceCompanionRootViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v31[0] = a1;
  v33 = sub_23D6EE840();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6EE820();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_23D6EE6C0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v32 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue;
  v13 = sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v31[1] = "viewWillDisappear(_:)";
  v31[2] = v13;
  sub_23D6EE6B0();
  v37 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2AE8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EDC88(&qword_27E2E2AF8, &qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EE8B0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v33);
  *&v3[v32] = sub_23D6EE870();
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver] = 1;
  v14 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent];
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 0;
  *(v14 + 6) = 0;
  v14[28] = 1;
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_intervalHIDThreshold] = 0x404E000000000000;
  v15 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason];
  *v16 = 0xD000000000000022;
  *(v16 + 1) = 0x800000023D6EFF80;
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor] = 1;
  *&v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit] = 3;
  v17 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger;
  sub_23D6EE550();
  *&v3[v17] = sub_23D6EE500();
  sub_23D6EE600();
  v18 = &v3[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  v20 = sub_23D6EE320();
  v21 = *(*(v20 - 8) + 56);
  v21(&v4[v19], 1, 1, v20);
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveTimeInterval] = 0x4072C00000000000;
  *&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer] = 0;
  v22 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  type metadata accessor for AXTwiceCompanionMainViewController();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v4[v22] = [v23 init];
  v24 = v20;
  v25 = v34;
  v21(&v4[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate], 1, 1, v24);
  if (v25)
  {
    v26 = sub_23D6EE730();
  }

  else
  {
    v26 = 0;
  }

  v27 = type metadata accessor for AXTwiceCompanionRootViewController();
  v36.receiver = v4;
  v36.super_class = v27;
  v28 = v35;
  v29 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, v26, v35);

  return v29;
}

id AXTwiceCompanionRootViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AXTwiceCompanionRootViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v28 = a1;
  v27 = sub_23D6EE840();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE820();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_23D6EE6C0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v26 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue;
  v11 = sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v25[0] = "viewWillDisappear(_:)";
  v25[1] = v11;
  sub_23D6EE6B0();
  v30 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2AE8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EDC88(&qword_27E2E2AF8, &qword_27E2E2AF0, &qword_23D6EFF98);
  sub_23D6EE8B0();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v27);
  *&v1[v26] = sub_23D6EE870();
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___airplayReceiver] = 1;
  v12 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_lastHIDEvent];
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  *(v12 + 6) = 0;
  v12[28] = 1;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_intervalHIDThreshold] = 0x404E000000000000;
  v13 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___distanceHIDThreshold];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason];
  *v14 = 0xD000000000000022;
  *(v14 + 1) = 0x800000023D6EFF80;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___eventProcessor] = 1;
  *&v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit] = 3;
  v15 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger;
  sub_23D6EE550();
  *&v1[v15] = sub_23D6EE500();
  sub_23D6EE600();
  v16 = &v1[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  v18 = sub_23D6EE320();
  v19 = *(*(v18 - 8) + 56);
  v19(&v2[v17], 1, 1, v18);
  *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveTimeInterval] = 0x4072C00000000000;
  *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer] = 0;
  v20 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  type metadata accessor for AXTwiceCompanionMainViewController();
  *&v2[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19(&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_viewDidAppearDate], 1, 1, v18);
  v21 = type metadata accessor for AXTwiceCompanionRootViewController();
  v29.receiver = v2;
  v29.super_class = v21;
  v22 = v28;
  v23 = objc_msgSendSuper2(&v29, sel_initWithCoder_, v28);

  if (v23)
  {
  }

  return v23;
}

uint64_t sub_23D6E1064(char a1, char a2)
{
  v4 = sub_23D6EE620();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6EE670();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 1) != 0 && (a2)
  {
    sub_23D6EE330();
    v15 = sub_23D6EE660();
    v16 = sub_23D6EE810();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23D6CB000, v15, v16, "[TWICE] Device is locked, showing error", v17, 2u);
      MEMORY[0x23EEE9940](v17, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    v18 = *MEMORY[0x277CE6FD0];
    v19 = sub_23D6EE5F0();
    (*(*(v19 - 8) + 104))(v8, v18, v19);
    (*(v5 + 104))(v8, *MEMORY[0x277CE7020], v4);
    sub_23D6DF5FC(v8);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_23D6E12C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_23D6E1328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = aBlock - v3;
  sub_23D6EE310();
  v5 = sub_23D6EE320();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  swift_beginAccess();
  sub_23D6ED040(v4, v0 + v6);
  swift_endAccess();
  sub_23D6DF148();
  v8 = v7;
  [v7 cancel];

  v9 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController____lazy_storage___inactiveTimer);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23D6EE018;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_86;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  [v12 afterDelay:v11 processBlock:300.0];
  _Block_release(v11);
}

void sub_23D6E1504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23D6E1558();
  }
}

uint64_t sub_23D6E1558()
{
  v1 = v0;
  v59 = sub_23D6EE620();
  v62 = *(v59 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_23D6EE320();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - v13;
  v15 = sub_23D6EE670();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v58 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  sub_23D6EE330();
  v24 = sub_23D6EE660();
  v25 = sub_23D6EE810();
  v26 = os_log_type_enabled(v24, v25);
  v65 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v57 = v1;
    v28 = v16;
    v29 = v27;
    v30 = swift_slowAlloc();
    v60 = v15;
    v31 = v9;
    v32 = v8;
    v33 = v14;
    v34 = v30;
    v66[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_23D6D3C38(0xD000000000000021, 0x800000023D6F1CB0, v66);
    _os_log_impl(&dword_23D6CB000, v24, v25, "[TWICE] %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v35 = v34;
    v14 = v33;
    v8 = v32;
    v9 = v31;
    v15 = v60;
    MEMORY[0x23EEE9940](v35, -1, -1);
    MEMORY[0x23EEE9940](v29, -1, -1);

    v36 = v28;
    v1 = v57;
  }

  else
  {

    v36 = v16;
  }

  v37 = *(v36 + 8);
  v37(v23, v15);
  v38 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
  swift_beginAccess();
  sub_23D6EDF00(v1 + v38, v7, &qword_27E2E2AC0, &qword_23D6EFF90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23D6EDEA0(v7, &qword_27E2E2AC0, &qword_23D6EFF90);
  }

  (*(v9 + 32))(v14, v7, v8);
  v40 = v63;
  sub_23D6EE310();
  sub_23D6EE300();
  v42 = v41;
  v43 = *(v9 + 8);
  v43(v40, v8);
  if (round(v42) >= 300.0)
  {
    sub_23D6EE330();
    v48 = v1;
    v49 = sub_23D6EE660();
    v50 = sub_23D6EE810();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v60 = v15;
      v52 = v51;
      *v51 = 134217984;
      *(v51 + 4) = 0x4072C00000000000;
      _os_log_impl(&dword_23D6CB000, v49, v50, "[TWICE] Inactive for more than %fs. Dismiss the card.", v51, 0xCu);
      v15 = v60;
      MEMORY[0x23EEE9940](v52, -1, -1);
    }

    v37(v64, v15);
    sub_23D6EE5E0();
    v53 = sub_23D6EE560();
    sub_23D6EE5A0();

    v55 = v61;
    v54 = v62;
    v56 = v59;
    (*(v62 + 104))(v61, *MEMORY[0x277CE7058], v59);
    sub_23D6DF5FC(v55);
    (*(v54 + 8))(v55, v56);
  }

  else
  {
    v44 = v58;
    sub_23D6EE330();
    v45 = sub_23D6EE660();
    v46 = sub_23D6EE810();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v42;
      MEMORY[0x23EEE9940](v47, -1, -1);
    }

    v37(v44, v15);
  }

  return (v43)(v14, v8);
}

uint64_t sub_23D6E1BB8(uint64_t a1, uint64_t a2)
{
  v212 = a2;
  v2 = sub_23D6EE5F0();
  v192 = *(v2 - 8);
  v193 = v2;
  v3 = *(v192 + 64);
  MEMORY[0x28223BE20](v2);
  v191 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v189 = &v185 - v7;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C88, &qword_23D6F00E0);
  v8 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v211 = &v185 - v9;
  v10 = sub_23D6EE620();
  v11 = *(v10 - 8);
  v213 = v10;
  v214 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v187 = &v185 - v17;
  MEMORY[0x28223BE20](v16);
  v210 = &v185 - v18;
  v19 = sub_23D6EE640();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v186 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v185 - v24;
  v26 = sub_23D6EE670();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v185 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v188 = &v185 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v190 = &v185 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v209 = &v185 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v185 - v38;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v194 = v15;
    v198 = v31;
    v204 = v27;
    v208 = v26;
    sub_23D6E1328();
    v42 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v43 = v20[2];
    v203 = v41;
    v200 = v42;
    v205 = v43;
    v206 = v20 + 2;
    v44 = (v43)(v25, v41 + v42, v19);
    v45 = MEMORY[0x23EEE8D50](v44);
    v47 = v46;
    v48 = v20[1];
    v207 = v19;
    v195 = v48;
    v48(v25, v19);
    sub_23D6EE330();
    v49 = v212;
    v201 = *(v214 + 16);
    v202 = v214 + 16;
    v201(v210, v212, v213);

    v50 = sub_23D6EE660();
    v51 = sub_23D6EE810();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v49;
    v196 = v20 + 1;
    v197 = v25;
    v54 = v20;
    if (v52)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v218[0] = v56;
      *v55 = 136315394;
      v57 = sub_23D6D3C38(v45, v47, v218);

      *(v55 + 4) = v57;
      *(v55 + 12) = 2080;
      v58 = v210;
      v59 = sub_23D6EE610();
      v61 = v60;
      v62 = v213;
      v210 = *(v214 + 8);
      (v210)(v58, v213);
      v63 = sub_23D6D3C38(v59, v61, v218);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_23D6CB000, v50, v51, "[TWICE] HANDLE_EVENT - from: %s, event: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE9940](v56, -1, -1);
      v64 = v55;
      v54 = v20;
      v65 = v212;
      MEMORY[0x23EEE9940](v64, -1, -1);

      v66 = *(v204 + 8);
      v66(v209, v208);
      v67 = v62;
      v68 = v214;
    }

    else
    {

      v67 = v213;
      v68 = v214;
      v73 = v210;
      v210 = *(v214 + 8);
      (v210)(v73, v213);
      v66 = *(v204 + 8);
      v66(v209, v208);
      v65 = v53;
    }

    v74 = v211;
    v75 = (v211 + *(v199 + 48));
    v76 = v207;
    v205(v211, &v203[v200], v207);
    v201(v75, v65, v67);
    v77 = (v54[11])(v74, v76);
    v78 = *MEMORY[0x277CE7088];
    v209 = v66;
    if (v77 == v78)
    {
      v79 = *(v68 + 88);
      if (v79(v75, v67) == *MEMORY[0x277CE7050])
      {
        v80 = v203;
        sub_23D6E33BC();
        v81 = MEMORY[0x277CE7070];
LABEL_11:
        v82 = v197;
        v76 = v207;
        (v54[13])(v197, *v81, v207);
        v83 = v54;
LABEL_24:
        v100 = v200;
        swift_beginAccess();
        (*(v83 + 24))(&v80[v100], v82, v76);
        swift_endAccess();
        sub_23D6DED94();
        v101 = v195;
        v195(v82, v76);
        v102 = v198;
        v103 = v212;
        v101(v211, v76);
LABEL_53:
        v130 = (v205)(v82, &v80[v100], v76);
        v211 = MEMORY[0x23EEE8D50](v130);
        v131 = v82;
        v133 = v132;
        v101(v131, v76);
        sub_23D6EE330();
        v134 = v80;
        v135 = v194;
        v136 = v213;
        v201(v194, v103, v213);

        v137 = sub_23D6EE660();
        v138 = sub_23D6EE810();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = v136;
          v141 = v134;
          v142 = swift_slowAlloc();
          *&v218[0] = v142;
          *v139 = 136315394;
          v143 = sub_23D6D3C38(v211, v133, v218);

          *(v139 + 4) = v143;
          *(v139 + 12) = 2080;
          v144 = sub_23D6EE610();
          v146 = v145;
          (v210)(v135, v140);
          v147 = sub_23D6D3C38(v144, v146, v218);

          *(v139 + 14) = v147;
          _os_log_impl(&dword_23D6CB000, v137, v138, "[TWICE] HANDLE_EVENT - to: %s, event: %s", v139, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEE9940](v142, -1, -1);
          MEMORY[0x23EEE9940](v139, -1, -1);

          v148 = v198;
        }

        else
        {

          (v210)(v135, v136);
          v148 = v102;
        }

        return (v209)(v148, v208);
      }

      v80 = v203;
      goto LABEL_38;
    }

    if (v77 == *MEMORY[0x277CE7070])
    {
      v84 = v66;
      v199 = v54;
      v85 = v77;
      v79 = *(v68 + 88);
      v86 = v79(v75, v67);
      if (v86 == *MEMORY[0x277CE7038])
      {
        v87 = v190;
        sub_23D6EE330();
        v88 = sub_23D6EE660();
        v89 = sub_23D6EE810();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_23D6CB000, v88, v89, "[TWICE] Device jumpstart", v90, 2u);
          MEMORY[0x23EEE9940](v90, -1, -1);
        }

        v84(v87, v208);
        v80 = v203;
        sub_23D6E33BC();
        v83 = v199;
        v91 = *(v199 + 104);
        v82 = v197;
        v92 = v197;
        v93 = v85;
      }

      else
      {
        if (v86 != *MEMORY[0x277CE7040])
        {
          v80 = v203;
          v54 = v199;
          goto LABEL_38;
        }

        v80 = v203;
        v94 = *&v203[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23D6EFEB0;
        v96 = v94;
        *&v218[0] = sub_23D6EE410();
        *(&v218[0] + 1) = v97;
        sub_23D6EE8E0();
        v98 = _AXSApplicationAccessibilityEnabled() != 0;
        *(inited + 96) = MEMORY[0x277D839B0];
        *(inited + 72) = v98;
        v99 = sub_23D6ED644(inited);
        swift_setDeallocating();
        sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
        MEMORY[0x23EEE8C10](v99);

        sub_23D6E38F8();
        v93 = *MEMORY[0x277CE7078];
        v83 = v199;
        v91 = *(v199 + 104);
        v82 = v197;
        v92 = v197;
      }

      v76 = v207;
      v91(v92, v93, v207);
      goto LABEL_24;
    }

    v80 = v203;
    if (v77 == *MEMORY[0x277CE7078])
    {
      v79 = *(v68 + 88);
      if (v79(v75, v67) == *MEMORY[0x277CE7048])
      {
        v81 = MEMORY[0x277CE7080];
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (v77 == *MEMORY[0x277CE7080])
    {
      v79 = *(v68 + 88);
      if (v79(v75, v67) == *MEMORY[0x277CE7068])
      {
        sub_23D6E3D54();
        v81 = MEMORY[0x277CE70A0];
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (v77 == *MEMORY[0x277CE70A0])
    {
      v79 = *(v68 + 88);
      v104 = v79(v75, v67);
      if (v104 == *MEMORY[0x277CE7008])
      {
        (*(v68 + 96))(v75, v67);
        v105 = *v75;
        sub_23D6E3E80(*v75);
LABEL_36:

        v103 = v212;
LABEL_43:
        v102 = v198;
LABEL_44:
        v76 = v207;
LABEL_45:
        v82 = v197;
LABEL_46:
        v100 = v200;
        v101 = v195;
        v195(v211, v76);
        goto LABEL_53;
      }

      if (v104 == *MEMORY[0x277CE7010])
      {
        (*(v68 + 96))(v75, v67);
        v105 = *v75;
        sub_23D6E43B0(*v75);
        goto LABEL_36;
      }

      if (v104 == *MEMORY[0x277CE7018])
      {
        (*(v68 + 96))(v75, v67);
        v178 = *v75;
        v179 = *(v75 + 6);
        v218[0] = *(v75 + 2);
        v218[1] = v179;
        v180 = *(v75 + 14);
        v217[0] = *(v75 + 10);
        v217[1] = v180;
        sub_23D6EDF00(v217, v216, &qword_27E2E2B60, qword_23D6EFE00);
        v102 = v198;
        if (v216[3])
        {
          v103 = v212;
          sub_23D6D1D74(0, &unk_27E2E2B68, 0x277D73FF0);
          v181 = swift_dynamicCast();
          v82 = v197;
          if (v181)
          {
            v182 = v215;
            sub_23D6E44B4(v178, v218, v215);
          }

          sub_23D6EDEA0(v217, &qword_27E2E2B60, qword_23D6EFE00);
          sub_23D6EDEA0(v218, &qword_27E2E2B60, qword_23D6EFE00);
          v76 = v207;
          goto LABEL_46;
        }

        sub_23D6EDEA0(v217, &qword_27E2E2B60, qword_23D6EFE00);
        sub_23D6EDEA0(v218, &qword_27E2E2B60, qword_23D6EFE00);
        v103 = v212;
        sub_23D6EDEA0(v216, &qword_27E2E2B60, qword_23D6EFE00);
        goto LABEL_44;
      }

      if (v104 == *MEMORY[0x277CE7028])
      {
        (*(v68 + 96))(v75, v67);
        v183 = *v75;
        v184 = *(v75 + 1);
        sub_23D6E468C(*v75, v184);
        v103 = v212;
        sub_23D6ED160(v183, v184);
        goto LABEL_43;
      }
    }

    else
    {
      if (v77 == *MEMORY[0x277CE7098])
      {
        (v210)(v75, v67);
        v102 = v198;
LABEL_40:
        v82 = v197;
        v100 = v200;
        v101 = v195;
        v103 = v212;
        v195(v211, v76);
        goto LABEL_53;
      }

      v79 = *(v68 + 88);
    }

LABEL_38:
    v106 = v79(v75, v67);
    if (v106 == *MEMORY[0x277CE7020])
    {
      (*(v68 + 96))(v75, v67);
      v108 = v191;
      v107 = v192;
      v109 = v193;
      (*(v192 + 32))(v191, v75, v193);
      sub_23D6E4984(v108);
      (*(v107 + 8))(v108, v109);
      v102 = v198;
      v76 = v207;
      goto LABEL_40;
    }

    if (v106 == *MEMORY[0x277CE7000])
    {
      (*(v68 + 96))(v75, v67);
      v110 = *v75;
      v111 = *&v80[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
      v112 = sub_23D6CE998();

      v103 = v212;
      sub_23D6D9088();

      goto LABEL_43;
    }

    v102 = v198;
    v76 = v207;
    if (v106 == *MEMORY[0x277CE7058])
    {
      v82 = v197;
      (v54[13])(v197, v78, v207);
      v113 = v54;
      v100 = v200;
      swift_beginAccess();
      (v113[3])(&v80[v100], v82, v76);
      swift_endAccess();
      sub_23D6DED94();
      v101 = v195;
      v195(v82, v76);
      _AXSTwiceRemoteScreenSetEnabled();
      sub_23D6DF148();
      v115 = v114;
      [v114 cancel];

      v116 = sub_23D6EE320();
      v117 = v189;
      (*(*(v116 - 8) + 56))(v189, 1, 1, v116);
      v118 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_inactiveDate;
      swift_beginAccess();
      sub_23D6ED040(v117, &v80[v118]);
      swift_endAccess();
      v119 = &v80[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier];
      v120 = *&v80[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier + 8];
      *v119 = 0;
      *(v119 + 1) = 0;

      v103 = v212;
      v101(v211, v76);
      goto LABEL_53;
    }

    if (v106 == *MEMORY[0x277CE7060])
    {
      v121 = v197;
      (v54[13])(v197, v78, v207);
      v122 = v54;
      v100 = v200;
      swift_beginAccess();
      (v122[3])(&v80[v100], v121, v76);
      swift_endAccess();
      sub_23D6DED94();
      v101 = v195;
      v195(v121, v76);
      sub_23D6E69E0();
      v123 = *&v80[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC];
      sub_23D6EE5E0();
      v124 = v123;
      v125 = sub_23D6EE560();
      v126 = sub_23D6EE570();
      v128 = v127;

      v129 = v126;
      v102 = v198;
      sub_23D6D05FC(v129, v128, 0xD000000000000016, 0x800000023D6F0460);

      v103 = v212;
      v82 = v197;
    }

    else
    {
      if (v106 != *MEMORY[0x277CE7030])
      {
        sub_23D6EE330();
        v159 = v187;
        v201(v187, v212, v67);
        v160 = v80;
        v161 = sub_23D6EE660();
        v162 = sub_23D6EE800();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = v159;
          v164 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          *&v218[0] = v199;
          *v164 = 136315394;
          v165 = &v80[v200];
          v166 = v197;
          v205(v197, v165, v207);
          sub_23D6EDFC8(&qword_27E2E2C80, MEMORY[0x277CE70A8]);
          v167 = v162;
          v168 = sub_23D6EE9E0();
          v170 = v169;
          v195(v166, v207);
          v171 = sub_23D6D3C38(v168, v170, v218);

          *(v164 + 4) = v171;
          *(v164 + 12) = 2080;
          v172 = sub_23D6EE610();
          v174 = v173;
          v175 = v210;
          (v210)(v163, v213);
          v176 = sub_23D6D3C38(v172, v174, v218);

          *(v164 + 14) = v176;
          _os_log_impl(&dword_23D6CB000, v161, v167, "[TWICE] unhandled event %s %s", v164, 0x16u);
          v177 = v199;
          swift_arrayDestroy();
          v67 = v213;
          MEMORY[0x23EEE9940](v177, -1, -1);
          v76 = v207;
          MEMORY[0x23EEE9940](v164, -1, -1);
        }

        else
        {

          v175 = v210;
          (v210)(v159, v67);
        }

        (v209)(v188, v208);
        v175(v75, v67);
        v102 = v198;
        v103 = v212;
        v80 = v203;
        goto LABEL_45;
      }

      v149 = v54;
      v100 = v200;
      v82 = v197;
      v205(v197, &v80[v200], v207);
      v150 = v186;
      (v149[13])(v186, v78, v76);
      sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
      v151 = sub_23D6EE720();
      v152 = v150;
      v101 = v195;
      v195(v152, v76);
      v101(v82, v76);
      v103 = v212;
      if (v151)
      {
LABEL_52:
        v101(v211, v76);
        goto LABEL_53;
      }

      v153 = *&v80[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
      v154 = swift_initStackObject();
      *(v154 + 16) = xmmword_23D6EFEB0;
      v155 = v153;
      *&v218[0] = sub_23D6EE410();
      *(&v218[0] + 1) = v156;
      sub_23D6EE8E0();
      v157 = _AXSApplicationAccessibilityEnabled() != 0;
      *(v154 + 96) = MEMORY[0x277D839B0];
      *(v154 + 72) = v157;
      v158 = sub_23D6ED644(v154);
      swift_setDeallocating();
      sub_23D6EDEA0(v154 + 32, &qword_27E2E2C70, &qword_23D6F00D0);
      MEMORY[0x23EEE8C10](v158);

      v102 = v198;

      v103 = v212;
    }

    v76 = v207;

    goto LABEL_52;
  }

  sub_23D6EE330();
  v69 = sub_23D6EE660();
  v70 = sub_23D6EE800();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_23D6CB000, v69, v70, "[TWICE] self is nil", v71, 2u);
    MEMORY[0x23EEE9940](v71, -1, -1);
  }

  return (*(v27 + 8))(v39, v26);
}

uint64_t sub_23D6E33BC()
{
  v1 = v0;
  v54 = sub_23D6EE620();
  v2 = *(v54 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v54);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_23D6EE670();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsBluetoothOn = AXDeviceRemoteScreenIsBluetoothOn();
  IsWifiOn = AXDeviceRemoteScreenIsWifiOn();
  v51 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger;
  v12 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  v13 = sub_23D6EE510();

  sub_23D6EE330();
  v14 = sub_23D6EE660();
  v15 = sub_23D6EE810();
  v16 = os_log_type_enabled(v14, v15);
  v52 = IsBluetoothOn;
  v53 = IsWifiOn;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v50 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v5;
    v48 = v2;
    v20 = v19;
    v56[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F1A40, v56);
    *(v18 + 12) = 1024;
    *(v18 + 14) = IsBluetoothOn;
    *(v18 + 18) = 1024;
    *(v18 + 20) = IsWifiOn;
    *(v18 + 24) = 1024;
    *(v18 + 26) = v13 & 1;
    _os_log_impl(&dword_23D6CB000, v14, v15, "[TWICE] %s BT:%{BOOL}d, WF:%{BOOL}d, isConnected: %{BOOL}d", v18, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v21 = v20;
    v2 = v48;
    v5 = v49;
    MEMORY[0x23EEE9940](v21, -1, -1);
    v22 = v18;
    v1 = v50;
    MEMORY[0x23EEE9940](v22, -1, -1);
  }

  (*(v6 + 8))(v9, v55);
  if (v13)
  {
    if (!v52)
    {
      v41 = sub_23D6EE650();
      if (v53)
      {
        v42 = MEMORY[0x277CE70D0];
      }

      else
      {
        v42 = MEMORY[0x277CE70D8];
      }

      (*(*(v41 - 8) + 104))(v5, *v42, v41);
      v45 = *MEMORY[0x277CE6FC0];
      v46 = sub_23D6EE5F0();
      (*(*(v46 - 8) + 104))(v5, v45, v46);
      v40 = v54;
      (*(v2 + 104))(v5, *MEMORY[0x277CE7020], v54);
      goto LABEL_14;
    }

    if (v53)
    {
      v23 = *(v1 + v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23D6EFEB0;
      v25 = v23;
      v56[0] = sub_23D6EE3A0();
      v56[1] = v26;
      v27 = MEMORY[0x277D837D0];
      sub_23D6EE8E0();
      v28 = sub_23D6EE400();
      *(inited + 96) = v27;
      *(inited + 72) = v28;
      *(inited + 80) = v29;
      v30 = sub_23D6ED644(inited);
      swift_setDeallocating();
      sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
      v31 = MEMORY[0x23EEE8C10](v30);
      v33 = v32;

      v34 = (v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier);
      v35 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier + 8);
      *v34 = v31;
      v34[1] = v33;
    }

    v43 = *MEMORY[0x277CE70C8];
    v44 = sub_23D6EE650();
    (*(*(v44 - 8) + 104))(v5, v43, v44);
    v37 = MEMORY[0x277CE6FC0];
  }

  else
  {
    v37 = MEMORY[0x277CE6FE8];
  }

  v38 = *v37;
  v39 = sub_23D6EE5F0();
  (*(*(v39 - 8) + 104))(v5, v38, v39);
  v40 = v54;
  (*(v2 + 104))(v5, *MEMORY[0x277CE7020], v54);
LABEL_14:
  sub_23D6DF5FC(v5);
  return (*(v2 + 8))(v5, v40);
}

uint64_t sub_23D6E38F8()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D6DDD68();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 start];

    v15 = sub_23D6EE2F0();
    v17 = v16;

    sub_23D6EE330();
    v18 = sub_23D6EE660();
    v19 = sub_23D6EE810();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F1A60, v34);
      _os_log_impl(&dword_23D6CB000, v18, v19, "[TWICE] %s Received airplay data blob", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23EEE9940](v21, -1, -1);
      MEMORY[0x23EEE9940](v20, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C98, &qword_23D6F00E8);
    inited = swift_initStackObject();
    v33 = xmmword_23D6EFEB0;
    *(inited + 16) = xmmword_23D6EFEB0;
    *(inited + 32) = sub_23D6EE400();
    *(inited + 40) = v23;
    *(inited + 48) = v15;
    *(inited + 56) = v17;
    sub_23D6ED10C(v15, v17);
    v24 = sub_23D6ED780(inited);
    swift_setDeallocating();
    sub_23D6EDEA0(inited + 32, &qword_27E2E2CA0, &qword_23D6F00F0);
    v25 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
    v26 = swift_initStackObject();
    *(v26 + 16) = v33;
    v27 = v25;
    v34[0] = sub_23D6EE3D0();
    v34[1] = v28;
    sub_23D6EE8E0();
    *(v26 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CA8, &qword_23D6F00F8);
    *(v26 + 72) = v24;
    v29 = sub_23D6ED644(v26);
    swift_setDeallocating();
    sub_23D6EDEA0(v26 + 32, &qword_27E2E2C70, &qword_23D6F00D0);
    MEMORY[0x23EEE8C10](v29);

    return sub_23D6ED160(v15, v17);
  }

  else
  {
    v31 = *MEMORY[0x277CE6FC8];
    v32 = sub_23D6EE5F0();
    (*(*(v32 - 8) + 104))(v6, v31, v32);
    (*(v3 + 104))(v6, *MEMORY[0x277CE7020], v2);
    sub_23D6DF5FC(v6);
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_23D6E3D54()
{
  v1 = sub_23D6DDE44();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason);
    v4 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason + 8);
    v5 = sub_23D6EE730();
    [v2 beginHandlingHIDEventsForReason_];
  }

  v6 = *(v0 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6EFEB0;
  v8 = v6;
  sub_23D6EE430();
  v9 = MEMORY[0x277D837D0];
  sub_23D6EE8E0();
  v10 = sub_23D6EE400();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = sub_23D6ED644(inited);
  swift_setDeallocating();
  sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
  MEMORY[0x23EEE8C10](v12);
}

void sub_23D6E3E80(void *a1)
{
  v63 = *MEMORY[0x277D85DE8];
  if ([a1 type] != 3001)
  {
    *&v61 = 0;
    v48 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v61];
    v49 = v61;
    if (v48)
    {
      v50 = sub_23D6EE2F0();
      v52 = v51;

      v53 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
      sub_23D6EE540();

      sub_23D6ED160(v50, v52);
      goto LABEL_12;
    }

    v54 = v49;
    v55 = sub_23D6EE2D0();

    swift_willThrow();
    v56 = v55;
LABEL_11:

    goto LABEL_12;
  }

  v3 = [a1 handInfo];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  [v3 setEncodePathsForCompatibility_];
  *&v61 = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v61];
  v6 = v61;
  if (!v5)
  {
    v57 = v6;
    v58 = sub_23D6EE2D0();

    swift_willThrow();
    v56 = v58;
    goto LABEL_11;
  }

  v7 = sub_23D6EE2F0();
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CB8, &qword_23D6F0108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6EFF80;
  *(inited + 32) = sub_23D6EE4C0();
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = v11;
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_23D6ED10C(v7, v9);
  *(inited + 80) = sub_23D6EE440();
  *(inited + 88) = v12;
  v13 = [a1 isGeneratedEvent];
  v14 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v13;
  *(inited + 128) = sub_23D6EE470();
  *(inited + 136) = v15;
  v16 = [a1 generationCount];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v16;
  *(inited + 176) = sub_23D6EE460();
  *(inited + 184) = v17;
  v18 = [a1 willUpdateMask];
  v19 = MEMORY[0x277D84CC0];
  *(inited + 216) = MEMORY[0x277D84CC0];
  *(inited + 192) = v18;
  *(inited + 224) = sub_23D6EE450();
  *(inited + 232) = v20;
  v21 = [a1 didUpdateMask];
  *(inited + 264) = v19;
  *(inited + 240) = v21;
  *(inited + 272) = sub_23D6EE490();
  *(inited + 280) = v22;
  v23 = [a1 useOriginalHIDTime];
  *(inited + 312) = v14;
  *(inited + 288) = v23;
  *(inited + 320) = sub_23D6EE4B0();
  *(inited + 328) = v24;
  v25 = [a1 HIDTime];
  v26 = MEMORY[0x277D84D38];
  *(inited + 360) = MEMORY[0x277D84D38];
  *(inited + 336) = v25;
  *(inited + 368) = sub_23D6EE4A0();
  *(inited + 376) = v27;
  v28 = [a1 isDisplayIntegrated];
  *(inited + 408) = v14;
  *(inited + 384) = v28;
  *(inited + 416) = sub_23D6EE4D0();
  *(inited + 424) = v29;
  v30 = [a1 senderID];
  *(inited + 456) = v26;
  *(inited + 432) = v30;
  *(inited + 464) = sub_23D6EE4E0();
  *(inited + 472) = v31;
  v32 = [a1 contextId];
  *(inited + 504) = v19;
  *(inited + 480) = v32;
  v33 = sub_23D6ED898(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CC0, &qword_23D6F0110);
  swift_arrayDestroy();
  v34 = [a1 HIDAttributeData];
  if (v34)
  {
    v35 = v34;
    v36 = sub_23D6EE2F0();
    v38 = v37;

    v39 = sub_23D6EE480();
    v41 = v40;
    v62 = MEMORY[0x277CC9318];
    *&v61 = v36;
    *(&v61 + 1) = v38;
    sub_23D6D43BC(&v61, v60);
    sub_23D6ED10C(v36, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23D6ECA48(v60, v39, v41, isUniquelyReferenced_nonNull_native);
    sub_23D6ED160(v36, v38);
  }

  v43 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_23D6EFEB0;
  v45 = v43;
  *&v61 = sub_23D6EE370();
  *(&v61 + 1) = v46;
  sub_23D6EE8E0();
  *(v44 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CC8, &qword_23D6F0118);
  *(v44 + 72) = v33;
  v47 = sub_23D6ED644(v44);
  swift_setDeallocating();
  sub_23D6EDEA0(v44 + 32, &qword_27E2E2C70, &qword_23D6F00D0);
  MEMORY[0x23EEE8C10](v47);

  sub_23D6ED160(v7, v9);

LABEL_12:
  v59 = *MEMORY[0x277D85DE8];
}

void sub_23D6E43B0(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v2 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v11];
  v3 = v11[0];
  if (v2)
  {
    v4 = sub_23D6EE2F0();
    v6 = v5;

    v7 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
    sub_23D6EE540();

    sub_23D6ED160(v4, v6);
  }

  else
  {
    v8 = v3;
    v9 = sub_23D6EE2D0();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23D6E44B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v25[4] = *MEMORY[0x277D85DE8];
  sub_23D6EDF00(a2, v25, &qword_27E2E2B60, qword_23D6EFE00);
  v7 = [a3 elementRefData];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23D6EE2F0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D73FE8]);
  v13 = sub_23D6EC3C4(a1, v25, v9, v11);
  v14 = objc_opt_self();
  v25[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD8, &qword_23D6F0128);
  v15 = sub_23D6EE880();
  v25[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v25];
  swift_unknownObjectRelease();
  v17 = v25[0];
  if (v16)
  {
    v18 = sub_23D6EE2F0();
    v20 = v19;

    v21 = *(v4 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger);
    sub_23D6EE540();

    sub_23D6ED160(v18, v20);
  }

  else
  {
    v22 = v17;
    v23 = sub_23D6EE2D0();

    swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23D6E468C(uint64_t a1, unint64_t a2)
{
  v5 = sub_23D6EE690();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23D6EE6C0();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v13 = sub_23D6EE850();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_23D6EDFBC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_78;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_23D6ED10C(a1, a2);

  sub_23D6EE6A0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F80](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v18);
}

void sub_23D6E4984(uint64_t a1)
{
  v2 = sub_23D6EE670();
  v132 = *(v2 - 8);
  v133 = v2;
  v3 = *(v132 + 8);
  v4 = MEMORY[0x28223BE20](v2);
  v127 = (v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v130 = v123 - v6;
  v7 = sub_23D6EE650();
  v138 = *(v7 - 8);
  v8 = *(v138 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v135 = v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v136 = v123 - v11;
  v12 = sub_23D6EE640();
  v140 = *(v12 - 8);
  v13 = *(v140 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v128 = v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v129 = v123 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v123 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v123 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v123 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v123 - v27;
  v29 = sub_23D6EE5F0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v30 + 16);
  v137 = a1;
  v34(v33, a1, v29);
  v35 = (*(v30 + 88))(v33, v29);
  if (v35 == *MEMORY[0x277CE6FF0])
  {
    (*(v30 + 96))(v33, v29);
    v138 = *v33;
    v36 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    v37 = v139;
    swift_beginAccess();
    v38 = v140;
    (*(v140 + 16))(v28, v37 + v36, v12);
    v39 = *MEMORY[0x277CE7088];
    v136 = *(v38 + 104);
    (v136)(v26, v39, v12);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
    LOBYTE(v37) = sub_23D6EE720();
    v40 = *(v38 + 8);
    v40(v26, v12);
    v40(v28, v12);
    if (v37)
    {
      return;
    }

    (v136)(v28, v39, v12);
    v41 = v139;
    swift_beginAccess();
    (*(v140 + 24))(v41 + v36, v28, v12);
    swift_endAccess();
    sub_23D6DED94();
    v40(v28, v12);
    v42 = v138;
    goto LABEL_4;
  }

  v131 = v28;
  v43 = v139;
  v134 = v29;
  if (v35 == *MEMORY[0x277CE6FB8])
  {
    (*(v30 + 96))(v33, v134);
    v44 = *(v138 + 32);
    v133 = v7;
    v44(v136, v33, v7);
    v45 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v46 = v140;
    v47 = v131;
    (*(v140 + 16))(v131, v43 + v45, v12);
    v48 = *(v46 + 104);
    LODWORD(v135) = *MEMORY[0x277CE7088];
    v132 = v48;
    v48(v26);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
    v49 = sub_23D6EE720();
    v50 = *(v46 + 8);
    v50(v26, v12);
    v50(v47, v12);
    if (v49)
    {
      (*(v138 + 8))(v136, v133);
      return;
    }

    (v132)(v47, v135, v12);
    swift_beginAccess();
    (*(v46 + 24))(v43 + v45, v47, v12);
    swift_endAccess();
    sub_23D6DED94();
    v50(v47, v12);
    v58 = 0;
    v59 = v136;
LABEL_19:
    sub_23D6E6508(v58, v59);
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_23D6EE980();
    MEMORY[0x23EEE8E80](44, 0xE100000000000000);
    v67 = v133;
    sub_23D6EE980();
    (*(v138 + 8))(v59, v67);
    goto LABEL_26;
  }

  v51 = v26;
  if (v35 == *MEMORY[0x277CE6FC0])
  {
    (*(v30 + 96))(v33, v134);
    (*(v138 + 32))(v135, v33, v7);
    v52 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v133 = v7;
    v53 = v140;
    v54 = v131;
    (*(v140 + 16))(v131, v43 + v52, v12);
    v55 = *(v53 + 104);
    LODWORD(v136) = *MEMORY[0x277CE7088];
    v132 = v55;
    v55(v26);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
    v56 = sub_23D6EE720();
    v57 = *(v53 + 8);
    v57(v26, v12);
    v57(v54, v12);
    if (v56)
    {
      (*(v138 + 8))(v135, v133);
      return;
    }

    (v132)(v54, v136, v12);
    swift_beginAccess();
    (*(v53 + 24))(v43 + v52, v54, v12);
    swift_endAccess();
    sub_23D6DED94();
    v57(v54, v12);
    v58 = 1;
    v59 = v135;
    goto LABEL_19;
  }

  v60 = v131;
  if (v35 == *MEMORY[0x277CE6FF8])
  {
    v61 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v62 = v140;
    (*(v140 + 16))(v60, v43 + v61, v12);
    v63 = *(v62 + 104);
    LODWORD(v138) = *MEMORY[0x277CE7088];
    v136 = v63;
    (v63)(v51);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
    v64 = v51;
    v65 = sub_23D6EE720();
    v66 = *(v62 + 8);
    v66(v64, v12);
    v66(v60, v12);
    if (v65)
    {
      return;
    }

    (v136)(v60, v138, v12);
    swift_beginAccess();
    (*(v62 + 24))(v43 + v61, v60, v12);
    swift_endAccess();
    sub_23D6DED94();
    v66(v60, v12);
    sub_23D6E69E0();
    goto LABEL_5;
  }

  if (v35 == *MEMORY[0x277CE6FD0])
  {
    v68 = v140;
    (*(v140 + 104))(v131, *MEMORY[0x277CE7090], v12);
    v69 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v68 + 24))(v43 + v69, v60, v12);
    swift_endAccess();
    sub_23D6DED94();
    (*(v68 + 8))(v60, v12);
LABEL_22:
    sub_23D6E69E0();
    v70 = *(v43 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    sub_23D6EE5E0();
    v71 = v70;
    v72 = sub_23D6EE560();
    v73 = sub_23D6EE570();
    v75 = v74;

    sub_23D6D05FC(v73, v75, 0xD000000000000016, 0x800000023D6F0460);

LABEL_25:
    v145[0] = 0;
    v145[1] = 0xE000000000000000;
    sub_23D6EE980();
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x277CE6FC8])
  {
    v76 = v140;
    (*(v140 + 104))(v131, *MEMORY[0x277CE7078], v12);
    v77 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v76 + 24))(v43 + v77, v60, v12);
    swift_endAccess();
    sub_23D6DED94();
    (*(v76 + 8))(v60, v12);
    sub_23D6E38F8();
    goto LABEL_25;
  }

  if (v35 == *MEMORY[0x277CE6FE0])
  {
    v79 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v80 = v140;
    v81 = *(v140 + 16);
    v126 = v79;
    v125 = v140 + 16;
    v124 = v81;
    v81(v23, v43 + v79, v12);
    v82 = *MEMORY[0x277CE7080];
    v83 = *(v80 + 104);
    v138 = v80 + 104;
    v136 = v83;
    (v83)(v20, v82, v12);
    v84 = sub_23D6EDFC8(&qword_27E2E2740, MEMORY[0x277CE70A8]);
    sub_23D6EE780();
    v123[1] = v84;
    sub_23D6EE780();
    if (v143 == v141 && v144 == v142)
    {
      v85 = 1;
    }

    else
    {
      v85 = sub_23D6EEA00();
    }

    v93 = (v140 + 8);
    v92 = *(v140 + 8);
    v92(v20, v12);
    v135 = v93;
    v127 = v92;
    v92(v23, v12);

    v94 = v126;
    if (v85)
    {
      goto LABEL_44;
    }

    v95 = v129;
    v124(v129, v43 + v126, v12);
    v96 = v128;
    (v136)(v128, *MEMORY[0x277CE70A0], v12);
    sub_23D6EE780();
    sub_23D6EE780();
    if (v143 == v141 && v144 == v142)
    {
      v97 = v127;
      v127(v96, v12);
      v97(v95, v12);

LABEL_44:
      v112 = v130;
      sub_23D6EE330();
      v113 = sub_23D6EE660();
      v114 = sub_23D6EE800();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_23D6CB000, v113, v114, "[TWICE] airplayDidStopStreamingError:", v115, 2u);
        MEMORY[0x23EEE9940](v115, -1, -1);
      }

      (*(v132 + 1))(v112, v133);
      v116 = v131;
      (v136)(v131, *MEMORY[0x277CE7088], v12);
      swift_beginAccess();
      (*(v140 + 24))(v43 + v94, v116, v12);
      swift_endAccess();
      sub_23D6DED94();
      v127(v116, v12);
      sub_23D6E6078(1);
      goto LABEL_47;
    }

    v110 = sub_23D6EEA00();
    v111 = v127;
    v127(v96, v12);
    v111(v95, v12);

    if (v110)
    {
      goto LABEL_44;
    }
  }

  else if (v35 == *MEMORY[0x277CE6FB0])
  {
    v86 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    v87 = v140;
    (*(v140 + 16))(v60, v43 + v86, v12);
    v88 = *(v87 + 104);
    LODWORD(v138) = *MEMORY[0x277CE7088];
    v136 = v88;
    (v88)(v51);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
    v89 = v51;
    v90 = sub_23D6EE720();
    v91 = *(v87 + 8);
    v91(v89, v12);
    v91(v60, v12);
    if ((v90 & 1) == 0)
    {
      (v136)(v60, v138, v12);
      swift_beginAccess();
      (*(v87 + 24))(v43 + v86, v60, v12);
      swift_endAccess();
      sub_23D6DED94();
      v91(v60, v12);
      v42 = 2;
LABEL_4:
      sub_23D6E6078(v42);
LABEL_5:
      v143 = 0;
      v144 = 0xE000000000000000;
LABEL_6:
      sub_23D6EE980();
LABEL_26:
      sub_23D6EE5E0();
      v78 = sub_23D6EE560();
      sub_23D6EE580();
    }
  }

  else
  {
    v98 = v140;
    if (v35 != *MEMORY[0x277CE6FE8])
    {
      if (v35 != *MEMORY[0x277CE6FD8])
      {
        v118 = v127;
        sub_23D6EE330();
        v119 = sub_23D6EE660();
        v120 = sub_23D6EE800();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v145[0] = v122;
          *v121 = 136315138;
          *(v121 + 4) = sub_23D6D3C38(0xD000000000000013, 0x800000023D6F1A80, v145);
          _os_log_impl(&dword_23D6CB000, v119, v120, "[TWICE] %s @unknown default", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v122);
          MEMORY[0x23EEE9940](v122, -1, -1);
          MEMORY[0x23EEE9940](v121, -1, -1);
        }

        (*(v132 + 1))(v118, v133);
        (*(v30 + 8))(v33, v134);
        goto LABEL_26;
      }

      (*(v140 + 104))(v131, *MEMORY[0x277CE7088], v12);
      v117 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
      swift_beginAccess();
      (*(v98 + 24))(v43 + v117, v60, v12);
      swift_endAccess();
      sub_23D6DED94();
      (*(v98 + 8))(v60, v12);
      goto LABEL_22;
    }

    v99 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v98 + 16))(v60, v43 + v99, v12);
    v100 = *(v98 + 104);
    LODWORD(v138) = *MEMORY[0x277CE7088];
    v136 = v100;
    (v100)(v51);
    sub_23D6EDFC8(&qword_27E2E2C90, MEMORY[0x277CE70A8]);
    v101 = v51;
    v102 = sub_23D6EE720();
    v103 = *(v98 + 8);
    v103(v101, v12);
    v103(v60, v12);
    if ((v102 & 1) == 0)
    {
      (v136)(v60, v138, v12);
      swift_beginAccess();
      (*(v98 + 24))(v43 + v99, v60, v12);
      swift_endAccess();
      sub_23D6DED94();
      v103(v60, v12);
      sub_23D6E69E0();
      v104 = *(v43 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
      sub_23D6EE5E0();
      v105 = v104;
      v106 = sub_23D6EE560();
      v107 = sub_23D6EE570();
      v109 = v108;

      sub_23D6D05FC(v107, v109, 0xD000000000000016, 0x800000023D6F0460);

LABEL_47:
      v143 = 0;
      v144 = 0xE000000000000000;
      goto LABEL_6;
    }
  }
}

uint64_t sub_23D6E6078(void (*a1)(char *, uint64_t))
{
  v25 = a1;
  v29 = sub_23D6EE690();
  v31 = *(v29 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23D6EE6C0();
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6EE680();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_23D6EE6E0();
  v26 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  sub_23D6E69E0();
  v27 = *(v1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_eventSerialQueue);
  sub_23D6EE6D0();
  *v12 = v25;
  (*(v9 + 104))(v12, *MEMORY[0x277D85188], v8);
  MEMORY[0x23EEE8E10](v18, v12);
  (*(v9 + 8))(v12, v8);
  v25 = *(v14 + 8);
  v25(v18, v13);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23D6EE010;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6D09E8;
  aBlock[3] = &block_descriptor_82;
  v22 = _Block_copy(aBlock);

  sub_23D6EE6A0();
  v32 = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  v23 = v29;
  sub_23D6EE8B0();
  MEMORY[0x23EEE8F50](v20, v7, v4, v22);
  _Block_release(v22);
  (*(v31 + 8))(v4, v23);
  (*(v28 + 8))(v7, v30);
  v25(v20, v26);
}

uint64_t sub_23D6E6508(char a1, uint64_t a2)
{
  v4 = sub_23D6EE670();
  v32[0] = *(v4 - 8);
  v5 = *(v32[0] + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6EE650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23D6EE730();
  v14 = MGGetBoolAnswer();

  if (v14)
  {
    v15 = 1312902231;
  }

  else
  {
    v15 = 1229343063;
  }

  (*(v9 + 16))(v12, a2, v8);
  v16 = (*(v9 + 88))(v12, v8);
  if (v16 == *MEMORY[0x277CE70D0])
  {
    goto LABEL_19;
  }

  if (v16 == *MEMORY[0x277CE70C8])
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_23D6EE900();

    if (a1)
    {
      v17 = 0x800000023D6F1C00;
      v18 = 0xD000000000000024;
    }

    else
    {
      v17 = 0x800000023D6F1BD0;
      v18 = 0xD000000000000023;
    }

    v33 = v18;
    v34 = v17;
LABEL_18:
    MEMORY[0x23EEE8E80](v15, 0xE400000000000000);
    MEMORY[0x23EEE8E80](0x524F5252455FLL, 0xE600000000000000);
LABEL_19:
    v26 = *(v32[1] + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
    sub_23D6EE5E0();
    v27 = v26;
    v28 = sub_23D6EE560();
    v29 = sub_23D6EE570();
    v31 = v30;

    sub_23D6D05FC(v29, v31, 0xD000000000000016, 0x800000023D6F0460);
  }

  if (v16 == *MEMORY[0x277CE70D8])
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_23D6EE900();
    if (a1)
    {
      v19 = "EMOTE_SCREEN_GIZMO_BLUETOOTH";
      v20 = 0xD00000000000002DLL;
    }

    else
    {
      v19 = "anion:statusError:)";
      v20 = 0xD00000000000002CLL;
    }

    MEMORY[0x23EEE8E80](v20, v19 | 0x8000000000000000);
    goto LABEL_18;
  }

  sub_23D6EE330();
  v21 = sub_23D6EE660();
  v22 = sub_23D6EE800();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_23D6D3C38(0xD000000000000033, 0x800000023D6F1B30, &v33);
    _os_log_impl(&dword_23D6CB000, v21, v22, "[TWICE] %s unknown status error", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23EEE9940](v24, -1, -1);
    MEMORY[0x23EEE9940](v23, -1, -1);
  }

  (*(v32[0] + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

void sub_23D6E69E0()
{
  v1 = sub_23D6EE690();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23D6EE6C0();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6D1D74(0, &qword_27E2E2AE0, 0x277D85C78);
  v28 = sub_23D6EE850();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v35 = sub_23D6EDC80;
  v36 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_23D6D09E8;
  v34 = &block_descriptor_57;
  v10 = _Block_copy(&aBlock);
  v11 = v0;

  sub_23D6EE6A0();
  aBlock = MEMORY[0x277D84F90];
  sub_23D6EDFC8(&qword_27E2E2C50, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EDC88(&qword_27E2E2C60, &qword_27E2E2748, &qword_23D6EFEA0);
  sub_23D6EE8B0();
  v12 = v28;
  MEMORY[0x23EEE8F80](0, v8, v4, v10);
  _Block_release(v10);

  (*(v30 + 8))(v4, v1);
  (*(v5 + 8))(v8, v29);
  v13 = *&v11[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_remoteMessenger];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C68, &qword_23D6F00C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6EFEB0;
  v15 = v13;
  aBlock = sub_23D6EE3E0();
  v32 = v16;
  v17 = MEMORY[0x277D837D0];
  sub_23D6EE8E0();
  v18 = sub_23D6EE400();
  *(inited + 96) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = sub_23D6ED644(inited);
  swift_setDeallocating();
  sub_23D6EDEA0(inited + 32, &qword_27E2E2C70, &qword_23D6F00D0);
  MEMORY[0x23EEE8C10](v20);

  v21 = sub_23D6DDE44();
  if (v21)
  {
    v22 = v21;
    v23 = *&v11[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason];
    v24 = *&v11[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_hidEventReason + 8];
    v25 = sub_23D6EE730();
    [v22 endHandlingHIDEventsForReason_];
  }

  v26 = sub_23D6DDD68();
  [v26 cleanup];
}

void sub_23D6E6DF0(uint64_t a1)
{
  v65[3] = *MEMORY[0x277D85DE8];
  v2 = sub_23D6EE670();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC;
  v8 = *(a1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
  v9 = sub_23D6CEB04();
  v11 = v10;

  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 152))(ObjectType, v11);

  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x277D74000]);
    v15 = sub_23D6EE2E0();
    v16 = [v14 initWithHierarchyData_];

    v65[0] = 0;
    v17 = [v16 decodeHierarchyWithContainer:v13 error:v65];
    if (v17)
    {
      v18 = v17;
      v19 = v65[0];
      v20 = [v18 accessibilityElements];
      if (v20 && (v64 = v3, v21 = v20, v22 = sub_23D6EE7B0(), v21, v23 = sub_23D6E72B4(v22), , v23))
      {
        sub_23D6EE330();

        v24 = sub_23D6EE660();
        v25 = sub_23D6EE810();

        v26 = os_log_type_enabled(v24, v25);
        v63 = v23;
        if (v26)
        {
          v27 = swift_slowAlloc();
          v61 = v16;
          v28 = v27;
          v62 = swift_slowAlloc();
          v65[0] = v62;
          *v28 = 136315138;
          v29 = sub_23D6D1D74(0, &qword_27E2E29B0, 0x277D750A0);
          v30 = MEMORY[0x23EEE8EE0](v23, v29);
          v32 = sub_23D6D3C38(v30, v31, v65);
          HIDWORD(v60) = v25;
          v33 = v32;

          v34 = v28;
          v16 = v61;
          *(v34 + 1) = v33;
          v35 = v24;
          v36 = v24;
          v37 = v34;
          _os_log_impl(&dword_23D6CB000, v35, BYTE4(v60), "[TWICE] adding %s", v34, 0xCu);
          v38 = v62;
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x23EEE9940](v38, -1, -1);
          MEMORY[0x23EEE9940](v37, -1, -1);
        }

        else
        {
        }

        (*(v64 + 8))(v6, v2);
        v41 = *(a1 + v7);
        v42 = sub_23D6CEB04();
        v44 = v43;

        v45 = swift_getObjectType();
        (*(v44 + 200))(1, v45, v44);

        v46 = *(a1 + v7);
        v47 = sub_23D6CEB04();
        v49 = v48;

        v50 = swift_getObjectType();
        v51 = (*(v49 + 152))(v50, v49);

        if (v51)
        {
          [v18 accessibilityFrame];
          v53 = v52;
          v55 = v54;
          v56 = *(a1 + v7);
          v57 = sub_23D6CE998();

          v58 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI25AXTwiceCompanionWatchView_isCrownOrientationOnRightSide;
          swift_beginAccess();
          LOBYTE(v58) = v57[v58];

          sub_23D6D2DC8(v63, v58, v53, v55);
        }
      }

      else
      {
      }
    }

    else
    {
      v39 = v65[0];
      v40 = sub_23D6EE2D0();

      swift_willThrow();
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23D6E72B4(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23D6EE950();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23D6D42F0(i, v6);
    sub_23D6D1D74(0, &qword_27E2E29B0, 0x277D750A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23D6EE930();
    v4 = *(v7 + 16);
    sub_23D6EE960();
    sub_23D6EE970();
    sub_23D6EE940();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_23D6E73C0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
  v5 = sub_23D6CEB04();
  v3 = v2;

  ObjectType = swift_getObjectType();
  (*(v3 + 200))(0, ObjectType, v3);
}

uint64_t sub_23D6E7448()
{
  v0 = sub_23D6EE620();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23D6EE640();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v6 + 104))(v9, *MEMORY[0x277CE7088], v5);
    v12 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
    swift_beginAccess();
    (*(v6 + 24))(&v11[v12], v9, v5);
    swift_endAccess();
    sub_23D6DED94();

    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v1 + 104))(v4, *MEMORY[0x277CE7050], v0);
    sub_23D6DF5FC(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.twiceRemoteScreenReceiveMessage(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_23D6EE670();
  v130 = *(v4 - 8);
  v131 = v4;
  v5 = *(v130 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v124 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v124 - v12;
  v14 = sub_23D6EE620();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_23D6EE420();
  v133 = v19;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v20 = sub_23D6EC554(v134), (v21 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v20, v135);
    sub_23D6ED0B8(v134);
    if ((swift_dynamicCast() & 1) != 0 && v132 == 1)
    {
      (*(v15 + 104))(v18, *MEMORY[0x277CE7038], v14);
      sub_23D6DF5FC(v18);
      (*(v15 + 8))(v18, v14);
    }
  }

  else
  {
    sub_23D6ED0B8(v134);
  }

  v132 = sub_23D6EE3A0();
  v133 = v22;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v23 = sub_23D6EC554(v134), (v24 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v23, v135);
    sub_23D6ED0B8(v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E2B50, "J(");
    if (swift_dynamicCast())
    {
      v124 = v1;
      v125 = v8;
      v128 = v13;
      v129 = v15;
      v25 = v132;
      v26 = *(v132 + 16);
      v127 = v11;
      if (!v26)
      {
        goto LABEL_91;
      }

      v27 = sub_23D6EC598(21570, 0xE200000000000000);
      if (v28)
      {
        v29 = *(*(v25 + 56) + 8 * v27) == 1;
        if (!*(v25 + 16))
        {
          goto LABEL_82;
        }
      }

      else
      {
        v29 = 0;
        if (!*(v25 + 16))
        {
          goto LABEL_82;
        }
      }

      v93 = sub_23D6EC598(18007, 0xE200000000000000);
      if (v94)
      {
        v95 = *(*(v25 + 56) + 8 * v93);
        if (v29)
        {
          if (v95 == 1)
          {
            v96 = MEMORY[0x277CE7040];
            goto LABEL_93;
          }

          goto LABEL_83;
        }

        if (v95 == 1)
        {
          v97 = MEMORY[0x277CE70D0];
          goto LABEL_92;
        }

LABEL_91:
        v97 = MEMORY[0x277CE70D8];
        goto LABEL_92;
      }

LABEL_82:
      if (v29)
      {
LABEL_83:
        v97 = MEMORY[0x277CE70C8];
LABEL_92:
        v106 = *v97;
        v107 = sub_23D6EE650();
        (*(*(v107 - 8) + 104))(v18, v106, v107);
        v108 = *MEMORY[0x277CE6FB8];
        v109 = sub_23D6EE5F0();
        (*(*(v109 - 8) + 104))(v18, v108, v109);
        v96 = MEMORY[0x277CE7020];
LABEL_93:
        v110 = v129;
        v111 = *(v129 + 104);
        v111(v18, *v96, v14);
        sub_23D6DF5FC(v18);
        v112 = *(v110 + 8);
        v126 = v14;
        v112(v18);
        v113 = sub_23D6EE360();
        if (*(v25 + 16))
        {
          v115 = sub_23D6EC598(v113, v114);
          v117 = v116;

          if (v117)
          {
            v118 = *(*(v25 + 56) + 8 * v115);

            v119 = v118 == 1;
LABEL_98:
            *v18 = v119;
            v120 = v126;
            v111(v18, *MEMORY[0x277CE7000], v126);
            v2 = v124;
            sub_23D6DF5FC(v18);
            (v112)(v18, v120);
            v14 = v120;
            v13 = v128;
            v15 = v129;
            v8 = v125;
            v11 = v127;
            goto LABEL_15;
          }
        }

        else
        {
        }

        v119 = 0;
        goto LABEL_98;
      }

      goto LABEL_91;
    }
  }

  else
  {
    sub_23D6ED0B8(v134);
  }

LABEL_15:
  v132 = sub_23D6EE3D0();
  v133 = v30;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v31 = sub_23D6EC554(v134), (v32 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v31, v135);
    sub_23D6ED0B8(v134);
    if (swift_dynamicCast())
    {
      v127 = v11;
      v128 = v13;
      v34 = v132;
      v33 = v133;
      if (v34 == sub_23D6EE3C0() && v33 == v35)
      {
      }

      else
      {
        v81 = sub_23D6EEA00();

        if ((v81 & 1) == 0)
        {
          v104 = *MEMORY[0x277CE6FC8];
          v105 = sub_23D6EE5F0();
          (*(*(v105 - 8) + 104))(v18, v104, v105);
          v82 = MEMORY[0x277CE7020];
          goto LABEL_88;
        }
      }

      v82 = MEMORY[0x277CE7048];
LABEL_88:
      (*(v15 + 104))(v18, *v82, v14);
      sub_23D6DF5FC(v18);
      (*(v15 + 8))(v18, v14);
      v11 = v127;
      v13 = v128;
    }
  }

  else
  {
    sub_23D6ED0B8(v134);
  }

  v132 = sub_23D6EE390();
  v133 = v36;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v37 = sub_23D6EC554(v134), (v38 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v37, v135);
    sub_23D6ED0B8(v134);
    if (swift_dynamicCast())
    {
      v39 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit;
      if (*&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_gizmoErrorRetryLimit] < 1)
      {
        sub_23D6EE330();
        v87 = v11;
        v88 = sub_23D6EE660();
        v89 = sub_23D6EE800();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_23D6CB000, v88, v89, "[TWICE] Gizmo retry limit. Disconnect!", v90, 2u);
          MEMORY[0x23EEE9940](v90, -1, -1);
        }

        (*(v130 + 8))(v87, v131);
        v91 = *MEMORY[0x277CE6FE8];
        v92 = sub_23D6EE5F0();
        (*(*(v92 - 8) + 104))(v18, v91, v92);
        (*(v15 + 104))(v18, *MEMORY[0x277CE7020], v14);
        sub_23D6DF5FC(v18);
        (*(v15 + 8))(v18, v14);
      }

      else
      {
        v125 = v8;
        v126 = v14;
        v129 = v15;
        v40 = v132;
        sub_23D6EE330();
        v41 = v2;
        v42 = sub_23D6EE660();
        v43 = sub_23D6EE810();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v13;
          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = *&v2[v39];

          _os_log_impl(&dword_23D6CB000, v42, v43, "[TWICE] Gizmo retry limit. Retry#%ld", v45, 0xCu);
          v46 = v45;
          v13 = v44;
          MEMORY[0x23EEE9940](v46, -1, -1);
        }

        else
        {

          v42 = v41;
        }

        (*(v130 + 8))(v13, v131);
        *v18 = v40;
        v98 = *MEMORY[0x277CE6FF0];
        v99 = sub_23D6EE5F0();
        (*(*(v99 - 8) + 104))(v18, v98, v99);
        v15 = v129;
        v100 = v126;
        (*(v129 + 104))(v18, *MEMORY[0x277CE7020], v126);
        v14 = v100;
        sub_23D6DF5FC(v18);
        (*(v15 + 8))(v18, v100);
        v101 = *&v2[v39];
        v102 = __OFSUB__(v101, 1);
        v103 = v101 - 1;
        if (v102)
        {
          __break(1u);
          return;
        }

        *&v2[v39] = v103;
        v8 = v125;
      }
    }
  }

  else
  {
    sub_23D6ED0B8(v134);
  }

  if (_AXSApplicationAccessibilityEnabled())
  {
    v132 = sub_23D6EE3B0();
    v133 = v47;
    sub_23D6EE8E0();
    if (*(a1._rawValue + 2) && (v48 = sub_23D6EC554(v134), (v49 & 1) != 0))
    {
      sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v48, v135);
      sub_23D6ED0B8(v134);
      if (swift_dynamicCast())
      {
        v50 = v132;
        v51 = v133;
        *v18 = v132;
        *(v18 + 1) = v51;
        (*(v15 + 104))(v18, *MEMORY[0x277CE7028], v14);
        sub_23D6ED10C(v50, v51);
        sub_23D6DF5FC(v18);
        sub_23D6ED160(v50, v51);
        (*(v15 + 8))(v18, v14);
      }
    }

    else
    {
      sub_23D6ED0B8(v134);
    }
  }

  v132 = sub_23D6EE3E0();
  v133 = v52;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v53 = sub_23D6EC554(v134), (v54 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v53, v135);
    sub_23D6ED0B8(v134);
    if (swift_dynamicCast())
    {
      v56 = v132;
      v55 = v133;
      if (v56 == sub_23D6EE400() && v55 == v57)
      {

LABEL_71:
        (*(v15 + 104))(v18, *MEMORY[0x277CE7060], v14);
        sub_23D6DF5FC(v18);
        (*(v15 + 8))(v18, v14);
        goto LABEL_42;
      }

      v83 = sub_23D6EEA00();

      if (v83)
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    sub_23D6ED0B8(v134);
  }

LABEL_42:
  v132 = sub_23D6EE380();
  v133 = v58;
  sub_23D6EE8E0();
  if (!*(a1._rawValue + 2) || (v59 = sub_23D6EC554(v134), (v60 & 1) == 0))
  {
    sub_23D6ED0B8(v134);
    goto LABEL_49;
  }

  sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v59, v135);
  sub_23D6ED0B8(v134);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_49;
  }

  v62 = v132;
  v61 = v133;
  if (v62 == sub_23D6EE3F0() && v61 == v63)
  {
  }

  else
  {
    v84 = sub_23D6EEA00();

    if ((v84 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v85 = *MEMORY[0x277CE6FE8];
  v86 = sub_23D6EE5F0();
  (*(*(v86 - 8) + 104))(v18, v85, v86);
  (*(v15 + 104))(v18, *MEMORY[0x277CE7020], v14);
  sub_23D6DF5FC(v18);
  (*(v15 + 8))(v18, v14);
LABEL_49:
  v132 = sub_23D6EE360();
  v133 = v64;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v65 = sub_23D6EC554(v134), (v66 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v65, v135);
    sub_23D6ED0B8(v134);
    if (swift_dynamicCast())
    {
      *v18 = v132 == 1;
      (*(v15 + 104))(v18, *MEMORY[0x277CE7000], v14);
      sub_23D6DF5FC(v18);
      (*(v15 + 8))(v18, v14);
    }
  }

  else
  {
    sub_23D6ED0B8(v134);
  }

  v132 = sub_23D6EE350();
  v133 = v67;
  sub_23D6EE8E0();
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_66;
  }

  v68 = sub_23D6EC554(v134);
  if ((v69 & 1) == 0)
  {
    goto LABEL_66;
  }

  sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v68, v135);
  sub_23D6ED0B8(v134);
  if (!swift_dynamicCast())
  {
    return;
  }

  v132 = sub_23D6EE340();
  v133 = v70;
  sub_23D6EE8E0();
  if (*(a1._rawValue + 2) && (v71 = sub_23D6EC554(v134), (v72 & 1) != 0))
  {
    sub_23D6D42F0(*(a1._rawValue + 7) + 32 * v71, v135);
    sub_23D6ED0B8(v134);
    if (swift_dynamicCast())
    {
      v73 = v133;
      v74 = *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier + 8];
      if (v74 && ((v75 = v132, v132 == *&v2[OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_initialPingMessageIdentifier]) && v74 == v133 || (sub_23D6EEA00() & 1) != 0))
      {
        v126 = v14;
        sub_23D6EE330();

        v76 = sub_23D6EE660();
        v77 = sub_23D6EE7F0();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v134[0] = v79;
          *v78 = 136315138;
          v80 = sub_23D6D3C38(v75, v73, v134);

          *(v78 + 4) = v80;
          _os_log_impl(&dword_23D6CB000, v76, v77, "[TWICE] Got timeout for message identifier matching initial ping (%s). Showing first unlock error.", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x23EEE9940](v79, -1, -1);
          MEMORY[0x23EEE9940](v78, -1, -1);
        }

        else
        {
        }

        (*(v130 + 8))(v8, v131);
        v121 = *MEMORY[0x277CE6FD8];
        v122 = sub_23D6EE5F0();
        (*(*(v122 - 8) + 104))(v18, v121, v122);
        v123 = v126;
        (*(v15 + 104))(v18, *MEMORY[0x277CE7020], v126);
        sub_23D6DF5FC(v18);
        (*(v15 + 8))(v18, v123);
      }

      else
      {
      }
    }
  }

  else
  {
LABEL_66:
    sub_23D6ED0B8(v134);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.airplayDidStartStreaming(withMirroringLayer:)(CALayer withMirroringLayer)
{
  v2 = v1;
  v4 = sub_23D6EE620();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6EE670();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v14 = withMirroringLayer.super.isa;
  v15 = sub_23D6EE660();
  v16 = sub_23D6EE810();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = v2;
    v22 = v21;
    v31 = v21;
    *v18 = 136315394;
    *(v18 + 4) = sub_23D6D3C38(0xD00000000000002DLL, 0x800000023D6F1490, &v31);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v20 = v14;
    v23 = v14;
    _os_log_impl(&dword_23D6CB000, v15, v16, "[TWICE] %s %@", v18, 0x16u);
    sub_23D6EDEA0(v20, &qword_27E2E2A48, &unk_23D6EFEE0);
    MEMORY[0x23EEE9940](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v24 = v22;
    v2 = v29;
    MEMORY[0x23EEE9940](v24, -1, -1);
    v25 = v18;
    v4 = v30;
    MEMORY[0x23EEE9940](v25, -1, -1);

    (*(v10 + 8))(v13, v28);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v26 = *(v2 + OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_mainVC);
  v27 = sub_23D6CEB04();

  swift_getObjectType();
  AXTwiceCompanionDeviceView.addScreenSubLayer(layer:)(v14);

  (*(v5 + 104))(v8, *MEMORY[0x277CE7068], v4);
  sub_23D6DF5FC(v8);
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.airplayDidStopStreaming()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000019, 0x800000023D6F14C0, &v20);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = *MEMORY[0x277CE6FE0];
  v18 = sub_23D6EE5F0();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  (*(v3 + 104))(v6, *MEMORY[0x277CE7020], v2);
  sub_23D6DF5FC(v6);
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.connectionWithClientServiceWasInterrupted()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD00000000000002BLL, 0x800000023D6F14E0, &v20);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] backbaordd crashed %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = *MEMORY[0x277CE6FF8];
  v18 = sub_23D6EE5F0();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  (*(v3 + 104))(v6, *MEMORY[0x277CE7020], v2);
  sub_23D6DF5FC(v6);
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.axuiserverWasRestarted()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F1510, &v20);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] axuiserver crashed %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = *MEMORY[0x277CE6FB0];
  v18 = sub_23D6EE5F0();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  (*(v3 + 104))(v6, *MEMORY[0x277CE7020], v2);
  sub_23D6DF5FC(v6);
  (*(v3 + 8))(v6, v2);
}

void AXTwiceCompanionRootViewController.prepareToDisappear(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v5 = sub_23D6EE640();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D6EE670();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v15 = sub_23D6EE660();
  v16 = sub_23D6EE810();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v10;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_23D6D3C38(0xD00000000000001FLL, 0x800000023D6F1530, aBlock);
    _os_log_impl(&dword_23D6CB000, v15, v16, "[TWICE] %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23EEE9940](v20, -1, -1);
    v21 = v18;
    a2 = v29;
    MEMORY[0x23EEE9940](v21, -1, -1);

    (*(v11 + 8))(v14, v28);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  (*(v6 + 104))(v9, *MEMORY[0x277CE7088], v5);
  v22 = OBJC_IVAR____TtC21AXWatchRemoteScreenUI34AXTwiceCompanionRootViewController_currentState;
  swift_beginAccess();
  (*(v6 + 24))(&v3[v22], v9, v5);
  swift_endAccess();
  sub_23D6DED94();
  (*(v6 + 8))(v9, v5);
  sub_23D6E69E0();
  v23 = [v3 view];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() clearColor];
    [v24 setBackgroundColor_];

    if (v30)
    {
      aBlock[4] = v30;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23D6D09E8;
      aBlock[3] = &block_descriptor_9;
      v26 = _Block_copy(aBlock);
    }

    else
    {
      v26 = 0;
    }

    [v3 dismissViewControllerAnimated:1 completion:v26];
    _Block_release(v26);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.axElementActivate(_:)(CGPoint a1)
{
  v2 = v1;
  y = a1.y;
  x = a1.x;
  v5 = sub_23D6EE620();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_23D6EE670();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v15 = sub_23D6EE660();
  v16 = sub_23D6EE810();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v22 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_23D6D3C38(0xD000000000000015, 0x800000023D6F1550, &v23);
    _os_log_impl(&dword_23D6CB000, v15, v16, "[TWICE] %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23EEE9940](v19, -1, -1);
    MEMORY[0x23EEE9940](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v20 = [objc_opt_self() tapGestureForInterfaceOrientedPoint_];
  *v9 = v20;
  (*(v6 + 104))(v9, *MEMORY[0x277CE7010], v5);
  v21 = v20;
  sub_23D6DF5FC(v9);

  (*(v6 + 8))(v9, v5);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_23D6EE670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v12 = sub_23D6EE660();
  v13 = sub_23D6EE810();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_23D6D3C38(0xD000000000000014, 0x800000023D6F1570, &v21);
    _os_log_impl(&dword_23D6CB000, v12, v13, "[TWICE] %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEE9940](v16, -1, -1);
    MEMORY[0x23EEE9940](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = [objc_opt_self() buttonRepresentationWithType_];
  if (v17)
  {
    *v6 = v17;
    v18 = v17;
    (*(v3 + 104))(v6, *MEMORY[0x277CE7008], v2);
    v19 = v18;
    sub_23D6DF5FC(v6);

    (*(v3 + 8))(v6, v2);
  }
}