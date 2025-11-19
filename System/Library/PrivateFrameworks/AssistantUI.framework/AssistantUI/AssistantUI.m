uint64_t sub_2414361B8()
{
  v0 = sub_24148CA84();
  v38 = *(v0 - 8);
  v39 = v0;
  (MEMORY[0x28223BE20])();
  v2 = (&v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_24148CB34();
  v3 = *(v36 - 8);
  (MEMORY[0x28223BE20])();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24148CB14();
  v6 = *(v33 - 8);
  (MEMORY[0x28223BE20])();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24148CB54();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_24148CB24();
  v15 = objc_opt_self();
  v16 = [v15 whiteColor];
  sub_24148CAD4();
  sub_24148CAF4();
  v17 = [v15 whiteColor];
  sub_24148CAA4();
  sub_24148CAC4();
  sub_24148CAE4();
  sub_24148CB04();
  (*(v6 + 104))(v8, *MEMORY[0x277D74C58], v33);
  sub_24148CAB4();
  (*(v3 + 104))(v5, *MEMORY[0x277D74C60], v36);
  sub_24148CB44();
  v18 = v37;
  [v37 bounds];
  v19 = v34;
  v20 = v35;
  (*(v34 + 16))(v12, v14, v35);
  *v2 = 0x400C000000000000;
  (*(v38 + 104))(v2, *MEMORY[0x277D74B70], v39);
  v21 = objc_allocWithZone(sub_24148CA94());
  v22 = sub_24148CA74();
  v23 = *&v18[OBJC_IVAR____TtC11AssistantUI26AFUISiriCarPlayLatencyView_latencyLightView];
  *&v18[OBJC_IVAR____TtC11AssistantUI26AFUISiriCarPlayLatencyView_latencyLightView] = v22;
  v24 = v18;
  v25 = v22;

  v26 = v25;
  v27 = [v26 layer];
  [v27 setCornerCurve_];

  v28 = [v26 layer];
  v41 = &type metadata for SiriUIFeaturesFlags;
  v42 = sub_2414367FC();
  v40[0] = 0;
  LOBYTE(v23) = sub_24148CA14();
  __swift_destroy_boxed_opaque_existential_1(v40);
  v29 = 13.0;
  if (v23)
  {
    v29 = 22.0;
  }

  [v28 setCornerRadius_];

  sub_24148CA44();
  sub_24148CA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545500);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_241494B20;
  sub_241436930();
  *(v30 + 32) = sub_24148CB74();
  *(v30 + 40) = sub_24148CB74();
  *(v30 + 48) = sub_24148CB74();
  *(v30 + 56) = sub_24148CB74();
  *(v30 + 64) = sub_24148CB74();
  *(v30 + 72) = sub_24148CB74();
  *(v30 + 80) = sub_24148CB74();
  sub_24148CA54();

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_241494B30;
  *(v31 + 32) = sub_24148CB74();
  *(v31 + 40) = sub_24148CB74();
  *(v31 + 48) = sub_24148CB74();
  *(v31 + 56) = sub_24148CB74();
  *(v31 + 64) = sub_24148CB74();
  sub_24148CA64();

  sub_24148CA24();
  [v24 bounds];
  [v26 setFrame_];
  [v26 setAutoresizingMask_];

  [v24 addSubview_];
  return (*(v19 + 8))(v14, v20);
}

unint64_t sub_2414367FC()
{
  result = qword_27E5454F8;
  if (!qword_27E5454F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5454F8);
  }

  return result;
}

const char *sub_241436850()
{
  v1 = "SMART";
  if (*v0 != 1)
  {
    v1 = "visual_intelligence_direct_routing";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "CarPlayUIRefresh";
  }
}

const char *sub_241436898()
{
  v1 = "ResponseFramework";
  if (*v0 != 1)
  {
    v1 = "SiriUI";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "CarPlay";
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

unint64_t sub_241436930()
{
  result = qword_27E545508;
  if (!qword_27E545508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E545508);
  }

  return result;
}

void sub_241436FF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

char *AFUISiriCarPlayShockwaveViewController.init(safeAreaInsets:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_shockwaveViewController] = 0;
  v4[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isDirectActionActivation] = 0;
  v4[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isVoiceActivation] = 0;
  v4[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isSteeringWheelActivation] = 0;
  v4[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isRightHandDrive] = 0;
  v9 = &v4[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_safeAreaInsets];
  v10 = *(MEMORY[0x277D768C8] + 16);
  *v9 = *MEMORY[0x277D768C8];
  v9[1] = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AFUISiriCarPlayShockwaveViewController();
  result = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v12 = &result[OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_safeAreaInsets];
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  return result;
}

void sub_241437360()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AFUISiriCarPlayShockwaveViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setUserInteractionEnabled_];

    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 layer];

      [v5 setAllowsHitTesting_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2414376CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void ___updateContextSiriActiveStatus_block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v1 = [MEMORY[0x277CFE318] userContext];
  v2 = [MEMORY[0x277CFE338] keyPathForSiriActiveStatus];
  [v1 setObject:v3 forKeyedSubscript:v2];
}

void sub_241438484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_2414384B8(void *a1)
{
  v3 = [a1 isRightHandDrive];
  *(v1 + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isRightHandDrive) = v3;
  v4 = [a1 requestSource] == 8 || objc_msgSend(a1, sel_requestSource) == 12;
  *(v1 + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isVoiceActivation) = v4;
  v5 = [a1 requestSource] == 44;
  *(v1 + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isSteeringWheelActivation) = v5;
  result = [a1 requestSource];
  if (result == 14 || (result = [a1 requestSource], result == 13))
  {
    v7 = 1;
  }

  else
  {
    result = [a1 requestSource];
    v7 = result == 38;
  }

  *(v1 + OBJC_IVAR____TtC11AssistantUI38AFUISiriCarPlayShockwaveViewController_isDirectActionActivation) = v7;
  return result;
}

void _AFUIRecordSiriBeginEndCoreDuetEvent(NSObject *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___AFUIRecordSiriBeginEndCoreDuetEvent_block_invoke;
  v9[3] = &unk_278CD6418;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(a1, v9);
}

void _AFUIRecordSiriBeginEndBiomeEvent(NSObject *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___AFUIRecordSiriBeginEndBiomeEvent_block_invoke;
  v9[3] = &unk_278CD6418;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(a1, v9);
}

void sub_241438C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241438FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_241439520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2414397A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_2414399F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24143A67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24143AAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL AFUIIsDeviceLiveActivitiesSupported()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  if ([v0 userInterfaceIdiom])
  {
    v1 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v1 userInterfaceIdiom] == 1;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_24143ACF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id getOptionalPKDarwinNotificationEventInAppPresented()
{
  v0 = PassKitCoreLibraryCore();
  if (v0)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v1 = getPKDarwinNotificationEventInAppPresentedSymbolLoc_ptr;
    v7 = getPKDarwinNotificationEventInAppPresentedSymbolLoc_ptr;
    if (!getPKDarwinNotificationEventInAppPresentedSymbolLoc_ptr)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __getPKDarwinNotificationEventInAppPresentedSymbolLoc_block_invoke;
      v3[3] = &unk_278CD54F0;
      v3[4] = &v4;
      __getPKDarwinNotificationEventInAppPresentedSymbolLoc_block_invoke(v3);
      v1 = v5[3];
    }

    _Block_object_dispose(&v4, 8);
    if (!v1)
    {
      getOptionalPKDarwinNotificationEventInAppPresented_cold_1();
    }

    v0 = *v1;
  }

  return v0;
}

void sub_24143B438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PassKitCoreLibraryCore()
{
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PassKitCoreLibraryCore_frameworkLibrary;
}

void sub_24143B8D4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_24143BA9C()
{
  MEMORY[0x245CE7AB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24143BAD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24143C204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AFUICreateDebugController()
{
  if (AFIsInternalInstall())
  {
    v0 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
    [v0 load];

    v1 = objc_alloc_init(NSClassFromString(&cfstr_Afuidebugcontr.isa));
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id AFUICreateBugReportPresentingWithDelegate(void *a1)
{
  v1 = a1;
  if (AFIsInternalInstall())
  {
    v2 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
    [v2 load];

    v3 = [objc_alloc(NSClassFromString(&cfstr_Afuibugreportp.isa)) initWithDelegate:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id AFUICreateInternalDebugController()
{
  if (AFIsInternalInstall())
  {
    v0 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
    [v0 load];

    v1 = objc_alloc_init(NSClassFromString(&cfstr_Afuiinternalde.isa));
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_24143E36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVMVoicemailManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VisualVoicemailLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VisualVoicemailLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD5510;
    v5 = 0;
    VisualVoicemailLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VisualVoicemailLibraryCore_frameworkLibrary)
  {
    __getVMVoicemailManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VMVoicemailManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVMVoicemailManagerClass_block_invoke_cold_1();
  }

  getVMVoicemailManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisualVoicemailLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisualVoicemailLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *AFUIBulletinReadoutResultGetName(unint64_t a1)
{
  if (a1 < 5)
  {
    return off_278CD5548[a1];
  }

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    AFUIBulletinReadoutResultGetName_cold_1(a1, v3);
  }

  return 0;
}

void sub_241440524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241440E80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241442794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241442DE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_241442F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2414430B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24144354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _LocStr(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:0 table:@"Disable"];

  return v4;
}

void sub_2414436A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getSTStorageAppHeaderCellClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!StorageSettingsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __StorageSettingsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD5748;
    v5 = 0;
    StorageSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!StorageSettingsLibraryCore_frameworkLibrary)
  {
    __getSTStorageAppHeaderCellClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("STStorageAppHeaderCell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTStorageAppHeaderCellClass_block_invoke_cold_1();
  }

  getSTStorageAppHeaderCellClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StorageSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StorageSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_241444740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241444A78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241444D24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241444E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2414477B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_24144B6C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_24144CFB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24144DC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _authenticationUIPresentedCallBack(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 isEqualToString:@"com.apple.LocalAuthentication.ui.presented"])
    {

      [a2 _localAuthenticationUIPresented];
    }

    else
    {
      v5 = getOptionalPKDarwinNotificationEventInAppPresented();
      v6 = [a3 isEqualToString:v5];

      if (v6)
      {

        [a2 _applePaySheetPresented];
      }
    }
  }
}

void sub_241451A60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241452B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241452D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241452FA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2414531EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2414546A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241454B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_241454E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241455CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241456214(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __PassKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPKDarwinNotificationEventInAppPresentedSymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = PassKitCoreLibraryCore();
  if (!v2)
  {
    __getPKDarwinNotificationEventInAppPresentedSymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "PKDarwinNotificationEventInAppPresented");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKDarwinNotificationEventInAppPresentedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINStartCallIntentClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IntentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD60D0;
    v5 = 0;
    IntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary)
  {
    __getINStartCallIntentClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("INStartCallIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINStartCallIntentClass_block_invoke_cold_1();
  }

  getINStartCallIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t CoreDuetLibraryCore()
{
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CoreDuetLibraryCore_frameworkLibrary;
}

uint64_t __CoreDuetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t SetupAssistantLibraryCore()
{
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SetupAssistantLibraryCore_frameworkLibrary;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = SetupAssistantLibraryCore();
  if (!v2)
  {
    __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *AFUISiriSessionEventGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"AFUISiriSessionEventDirectRequestBegan";
  }

  else
  {
    return off_278CD6148[a1 - 1];
  }
}

void sub_241459B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AssistantUIBundle()
{
  if (AssistantUIBundle_pred != -1)
  {
    AssistantUIBundle_cold_1();
  }

  v1 = AssistantUIBundle___AssistantUIBundle;

  return v1;
}

uint64_t __AssistantUIBundle_block_invoke()
{
  AssistantUIBundle___AssistantUIBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

__CFString *NSStringFromAFUISiriSAEEffectsViewControllerState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @".Dismissed";
  }

  else
  {
    return off_278CD6310[a1 - 1];
  }
}

__CFString *NSStringFromAFUISiriSAEEffectsViewControllerInvocationType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @".Unspecified";
  }

  else
  {
    return off_278CD6338[a1 - 1];
  }
}

void sub_24145B9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24145BD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24145CD7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24145CF7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void _handleKeyboardPreferencesChanged(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___handleKeyboardPreferencesChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_24145E8C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_24145EE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___handleKeyboardPreferencesChanged_block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearCachedGuide];
  v2 = *(a1 + 32);

  return [v2 checkGuideUpdate];
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

double AFUIShouldUseBackgroundBlurVisualIntelligenceLaunchAnimation()
{
  if (AFUIShouldUseBackgroundBlurVisualIntelligenceLaunchAnimation_onceToken != -1)
  {
    AFUIShouldUseBackgroundBlurVisualIntelligenceLaunchAnimation_cold_1();
  }

  return *&AFUIShouldUseBackgroundBlurVisualIntelligenceLaunchAnimation_value;
}

double valueForPreferenceKey(void *a1, double a2)
{
  v3 = MEMORY[0x277D61AF0];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277D61B48]];
  [v6 doubleForKey:v4];
  v8 = v7;

  if (v8 > 0.0)
  {
    a2 = v8;
  }

  return a2;
}

double AFUIShouldUseBackgroundDimVisualIntelligenceLaunchAnimation()
{
  if (AFUIShouldUseBackgroundDimVisualIntelligenceLaunchAnimation_onceToken != -1)
  {
    AFUIShouldUseBackgroundDimVisualIntelligenceLaunchAnimation_cold_1();
  }

  return *&AFUIShouldUseBackgroundDimVisualIntelligenceLaunchAnimation_value;
}

double AFUIAnimatingViewScaleInitialValue()
{
  if (AFUIAnimatingViewScaleInitialValue_onceToken != -1)
  {
    AFUIAnimatingViewScaleInitialValue_cold_1();
  }

  return *&AFUIAnimatingViewScaleInitialValue_value;
}

double AFUIAnimatingViewScaleFinalValue()
{
  if (AFUIAnimatingViewScaleFinalValue_onceToken != -1)
  {
    AFUIAnimatingViewScaleFinalValue_cold_1();
  }

  return *&AFUIAnimatingViewScaleFinalValue_value;
}

double AFUIAnimatingViewOpacityInitialValue()
{
  if (AFUIAnimatingViewOpacityInitialValue_onceToken != -1)
  {
    AFUIAnimatingViewOpacityInitialValue_cold_1();
  }

  return *&AFUIAnimatingViewOpacityInitialValue_value;
}

double AFUIAnimatingViewOpacityFinalValue()
{
  if (AFUIAnimatingViewOpacityFinalValue_onceToken != -1)
  {
    AFUIAnimatingViewOpacityFinalValue_cold_1();
  }

  return *&AFUIAnimatingViewOpacityFinalValue_value;
}

double AFUIAnimatingViewGaussianBlurInitialValue()
{
  if (AFUIAnimatingViewGaussianBlurInitialValue_onceToken != -1)
  {
    AFUIAnimatingViewGaussianBlurInitialValue_cold_1();
  }

  return *&AFUIAnimatingViewGaussianBlurInitialValue_value;
}

double AFUIAnimatingViewSpringStiffness()
{
  if (AFUIAnimatingViewSpringStiffness_onceToken != -1)
  {
    AFUIAnimatingViewSpringStiffness_cold_1();
  }

  return *&AFUIAnimatingViewSpringStiffness_value;
}

double AFUIAnimatingViewSpringDamping()
{
  if (AFUIAnimatingViewSpringDamping_onceToken != -1)
  {
    AFUIAnimatingViewSpringDamping_cold_1();
  }

  return *&AFUIAnimatingViewSpringDamping_value;
}

double AFUIAFUIAnimatingViewSpringInitialVelocity()
{
  if (AFUIAFUIAnimatingViewSpringInitialVelocity_onceToken != -1)
  {
    AFUIAFUIAnimatingViewSpringInitialVelocity_cold_1();
  }

  return *&AFUIAFUIAnimatingViewSpringInitialVelocity_value;
}

double AFUIAnimatingViewGaussianBlurFinalValue()
{
  if (AFUIAnimatingViewGaussianBlurFinalValue_onceToken != -1)
  {
    AFUIAnimatingViewGaussianBlurFinalValue_cold_1();
  }

  return *&AFUIAnimatingViewGaussianBlurFinalValue_value;
}

double AFUIBackgroundDimOpacityInitialValue()
{
  if (AFUIBackgroundDimOpacityInitialValue_onceToken != -1)
  {
    AFUIBackgroundDimOpacityInitialValue_cold_1();
  }

  return *&AFUIBackgroundDimOpacityInitialValue_value;
}

double AFUIBackgroundDimOpacityFinalValue()
{
  if (AFUIBackgroundDimOpacityFinalValue_onceToken != -1)
  {
    AFUIBackgroundDimOpacityFinalValue_cold_1();
  }

  return *&AFUIBackgroundDimOpacityFinalValue_value;
}

double AFUIBackgroundDimSpringStiffness()
{
  if (AFUIBackgroundDimSpringStiffness_onceToken != -1)
  {
    AFUIBackgroundDimSpringStiffness_cold_1();
  }

  return *&AFUIBackgroundDimSpringStiffness_value;
}

double AFUIBackgroundDimSpringDamping()
{
  if (AFUIBackgroundDimSpringDamping_onceToken != -1)
  {
    AFUIBackgroundDimSpringDamping_cold_1();
  }

  return *&AFUIBackgroundDimSpringDamping_value;
}

double AFUIBackgroundDimSpringInitialVelocity()
{
  if (AFUIBackgroundDimSpringInitialVelocity_onceToken != -1)
  {
    AFUIBackgroundDimSpringInitialVelocity_cold_1();
  }

  return *&AFUIBackgroundDimSpringInitialVelocity_value;
}

double AFUIBackgroundBlurRadiusInitialValue()
{
  if (AFUIBackgroundBlurRadiusInitialValue_onceToken != -1)
  {
    AFUIBackgroundBlurRadiusInitialValue_cold_1();
  }

  return *&AFUIBackgroundBlurRadiusInitialValue_value;
}

double AFUIBackgroundBlurRadiusFinalValue()
{
  if (AFUIBackgroundBlurRadiusFinalValue_onceToken != -1)
  {
    AFUIBackgroundBlurRadiusFinalValue_cold_1();
  }

  return *&AFUIBackgroundBlurRadiusFinalValue_value;
}

double AFUIBackgroundBlurSpringStiffness()
{
  if (AFUIBackgroundBlurSpringStiffness_onceToken != -1)
  {
    AFUIBackgroundBlurSpringStiffness_cold_1();
  }

  return *&AFUIBackgroundBlurSpringStiffness_value;
}

double AFUIBackgroundBlurSpringDamping()
{
  if (AFUIBackgroundBlurSpringDamping_onceToken != -1)
  {
    AFUIBackgroundBlurSpringDamping_cold_1();
  }

  return *&AFUIBackgroundBlurSpringDamping_value;
}

double AFUIBackgroundBlurSpringInitialVelocity()
{
  if (AFUIBackgroundBlurSpringInitialVelocity_onceToken != -1)
  {
    AFUIBackgroundBlurSpringInitialVelocity_cold_1();
  }

  return *&AFUIBackgroundBlurSpringInitialVelocity_value;
}

id AFUIVisualIntelligenceSpringAnimation(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = [MEMORY[0x277CD9FA0] animationWithKeyPath:a1];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  [v11 setFromValue:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v11 setToValue:v13];

  [v11 setStiffness:a4];
  [v11 setDamping:a5];
  [v11 setInitialVelocity:a6];
  [v11 setFillMode:*MEMORY[0x277CDA238]];
  [v11 setRemovedOnCompletion:0];

  return v11;
}

id AFUISiriRequestHandlingStatusColor(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = [MEMORY[0x277D75348] redColor];
      }
    }

    else
    {
      v2 = [MEMORY[0x277D75348] grayColor];
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v2 = [MEMORY[0x277D75348] yellowColor];
        break;
      case 3:
        v2 = [MEMORY[0x277D75348] greenColor];
        break;
      case 4:
        v2 = [MEMORY[0x277D75348] cyanColor];
        break;
    }
  }

  return v2;
}

double DurationForMassStiffnessDamping(double a1, double a2, double a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v6 setMass:a1];
  [v6 setStiffness:a2];
  [v6 setDamping:a3];
  [v6 settlingDuration];
  v8 = v7;

  return v8;
}

id AFUIDisplayStringForVersionAndAccount(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 substringToIndex:{objc_msgSend(v4, "rangeOfString:", @"?"}];

  v6 = [v3 label];
  if (![v6 length])
  {
    v7 = [v3 hostname];

    v8 = [v7 rangeOfString:@"https://"];
    v10 = v9;
    v11 = [v7 rangeOfString:@".siri.apple.com"];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v7;
    }

    else
    {
      v12 = [v7 substringToIndex:v11];

      v6 = [v12 substringFromIndex:v10];
    }
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v5, v6];
    v13 = LABEL_11:;
LABEL_12:
    v14 = v13;
    goto LABEL_13;
  }

  if ([v6 length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v6, v16];
    goto LABEL_11;
  }

  if ([v5 length])
  {
    v13 = v6;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

id AFUICreateAssistantResourcesDirectoryURL()
{
  v0 = CPSharedResourcesDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library"];
  v2 = [v1 stringByAppendingPathComponent:@"Assistant"];

  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];

  return v3;
}

id AFUIFileURLForConversationWithIdentifier(void *a1)
{
  v1 = a1;
  v2 = AFUICreateAssistantResourcesDirectoryURL();
  v3 = [v2 URLByAppendingPathComponent:v1 isDirectory:0];

  return v3;
}

BOOL AFUIHasUnlockedSinceBoot()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v6 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v2[3] = &unk_278CD54F0;
    v2[4] = &v3;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    AFUIHasUnlockedSinceBoot_cold_1();
  }

  return v0() == 1;
}

void sub_2414617FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AFUIShowServerVersionOnUI()
{
  v0 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v0 showServerOnUI])
  {
    v1 = [MEMORY[0x277D75128] sharedApplication];
    v2 = [v1 isPPTAvailable] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AFUIGraphicalFloatsEqualForScale(float64x2_t a1, float64_t a2, double a3)
{
  if (a3 <= 0.0)
  {
    v8 = a3;
    v6 = a2;
    v7 = *&a1.f64[0];
    AFUIGraphicalFloatsEqualForScale_cold_1();
    a2 = v6;
    *&a1.f64[0] = v7;
    a3 = v8;
  }

  a1.f64[1] = a2;
  v3 = vcvtq_f64_s64(vcvtq_s64_f64(a1));
  v4 = vaddq_f64(vdivq_f64(vrndaq_f64(vmulq_n_f64(vsubq_f64(a1, v3), a3)), vdupq_lane_s64(*&a3, 0)), v3);
  return *&vmovn_s64(vceqq_f64(v4, vdupq_laneq_s64(v4, 1))) & 1;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CD64C0;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2414641E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AFUIPathForDebugOverridePlist()
{
  v0 = MEMORY[0x245CE7350]();
  v1 = [v0 stringByAppendingPathComponent:@"/System/Library/Assistant/DebugOverrides.plist"];

  return v1;
}

id AFUIDebugOverrideDictionary()
{
  v0 = MEMORY[0x277CBEAC0];
  v1 = AFUIPathForDebugOverridePlist();
  v2 = [v0 dictionaryWithContentsOfFile:v1];

  return v2;
}

void sub_241467860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241468280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_241468500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_241468838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_241468C90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24146935C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2414699B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241469CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241469F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146A0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146A1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146A80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24146BA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146BE44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24146BF60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24146C118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146C260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24146C4D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24146C614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146C870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24146F290(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24146FA7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24146FC64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24146FE24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241470178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_241470B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241470D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241470FA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2414715C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2414716DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241472168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241472534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24147270C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_241472928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241472A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241473FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241474158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24147426C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241474380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_241476034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2414763F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241476AFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241476D20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241476E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24147711C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24147728C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241477410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241477594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_24147788C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2414785C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_241478888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ScreenshotServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ScreenshotServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278CD69C8;
    v6 = 0;
    ScreenshotServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = ScreenshotServicesLibraryCore_frameworkLibrary;
  if (!ScreenshotServicesLibraryCore_frameworkLibrary)
  {
    __getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SSScreenshotsDisplayModeWillChangeToFullscreenNotificationName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSScreenshotsDisplayModeWillChangeToFullscreenNotificationNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ScreenshotServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenshotServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __PeopleSuggesterLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PeopleSuggesterLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVTStateManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD6A18;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTStateManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTStateManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTStateManagerClass_block_invoke_cold_1();
  }

  getVTStateManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_241479980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_24147A7E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24147AAF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24147C654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24147E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24147F208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241480334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24148049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241481014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVTUITurnOnSiriViewClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUITurnOnSiriView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUITurnOnSiriViewClass_block_invoke_cold_1();
  }

  getVTUITurnOnSiriViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void VoiceTriggerUILibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __VoiceTriggerUILibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278CD6C18;
    v2 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    VoiceTriggerUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVTUISiriDataSharingOptInPresenterClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUISiriDataSharingOptInPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUISiriDataSharingOptInPresenterClass_block_invoke_cold_1();
  }

  getVTUISiriDataSharingOptInPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getVTUIVoiceSelectionViewControllerClass_block_invoke(uint64_t a1)
{
  VoiceTriggerUILibrary();
  result = objc_getClass("VTUIVoiceSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIVoiceSelectionViewControllerClass_block_invoke_cold_1();
  }

  getVTUIVoiceSelectionViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBYFlowSkipControllerClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYFlowSkipControllerClass_block_invoke_cold_1();
  }

  getBYFlowSkipControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SetupAssistantLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278CD6C30;
    v4 = 0;
    SetupAssistantLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SetupAssistantLibraryCore_frameworkLibrary_0;
  if (!SetupAssistantLibraryCore_frameworkLibrary_0)
  {
    SetupAssistantLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SetupAssistantLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getBYFlowSkipIdentifierSiriSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYFlowSkipIdentifierSiri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYFlowSkipIdentifierSiriSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getOBPrivacyPresenterClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __OnBoardingKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278CD6C48;
    v5 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    __getOBPrivacyPresenterClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyPresenterClass_block_invoke_cold_1();
  }

  getOBPrivacyPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}