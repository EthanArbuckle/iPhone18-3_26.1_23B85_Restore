void sub_199B8A5F0()
{
  if (MEMORY[0x1E6982A30])
  {
    v1 = MEMORY[0x1E6982A20] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1 && MEMORY[0x1E6982A28] != 0 && MEMORY[0x1E6982A38] != 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
    MEMORY[0x1EEE9AC00](v4 - 8, v5);
    v7 = &v18[-v6 - 8];
    v8 = sub_199DFA1BC();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    v11 = sub_199AE5E60(0, 0, v7, &unk_199E43690, v10);
    v19 = &type metadata for SiriTip;
    v12 = sub_199B8A904();
    v18[0] = 2;
    v20 = v12;
    v21 = v11;
    v13 = *(v0 + OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_lock);
    MEMORY[0x1EEE9AC00](v12, v14);
    MEMORY[0x1EEE9AC00](v15, v16);
    os_unfair_lock_lock(v13 + 4);
    sub_199B8AEC0();
    os_unfair_lock_unlock(v13 + 4);
    sub_199B89D38(v18);
  }
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_199B8A83C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_199AA7314;

  return sub_199B89884(a1, v4, v5, sub_199B89884, v6);
}

unint64_t sub_199B8A904()
{
  result = qword_1EAF71590;
  if (!qword_1EAF71590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71590);
  }

  return result;
}

uint64_t sub_199B8A974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF763C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_199B8A9FC()
{
  result = qword_1EAF71BA8;
  if (!qword_1EAF71BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71BA8);
  }

  return result;
}

uint64_t sub_199B8AA50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_199DF81DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B8AA94()
{
  result = qword_1EAF71588;
  if (!qword_1EAF71588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76408);
    sub_199B8AB34();
    sub_199AA0B90(&qword_1EAF71568, &qword_1EAF763E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71588);
  }

  return result;
}

unint64_t sub_199B8AB34()
{
  result = qword_1EAF71538;
  if (!qword_1EAF71538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF763F0);
    sub_199B8ABAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71538);
  }

  return result;
}

unint64_t sub_199B8ABAC()
{
  result = qword_1EAF71548;
  if (!qword_1EAF71548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF763F8);
    sub_199AA0B90(&qword_1EAF71520, &qword_1EAF76400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71548);
  }

  return result;
}

unint64_t sub_199B8AC44()
{
  result = qword_1EAF71580;
  if (!qword_1EAF71580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76418);
    sub_199AA0B90(&qword_1EAF714F8, &qword_1EAF76410);
    sub_199B8ACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71580);
  }

  return result;
}

unint64_t sub_199B8ACFC()
{
  result = qword_1EAF71560;
  if (!qword_1EAF71560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF763E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71560);
  }

  return result;
}

unint64_t sub_199B8AD80()
{
  result = qword_1EAF71530;
  if (!qword_1EAF71530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76430);
    sub_199AA0B90(&qword_1EAF71518, &qword_1EAF76428);
    sub_199B8AE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71530);
  }

  return result;
}

unint64_t sub_199B8AE38()
{
  result = qword_1EAF71578;
  if (!qword_1EAF71578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF76420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71578);
  }

  return result;
}

Class __getTUCallCapabilitiesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E1658;
    v8 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUITelephonyUtilities.h" lineNumber:12 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TUCallCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUCallCapabilitiesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUITelephonyUtilities.h" lineNumber:14 description:{@"Unable to find class %s", "TUCallCapabilities"}];

LABEL_10:
    __break(1u);
  }

  getTUCallCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199B8B7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSLComposeViewControllerClass_block_invoke(uint64_t a1)
{
  SocialLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SLComposeViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSLComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNSocial.h" lineNumber:12 description:{@"Unable to find class %s", "SLComposeViewController"}];

    __break(1u);
  }
}

void *__getSLServiceTypeSinaWeiboSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SocialLibrary();
  result = dlsym(v2, "SLServiceTypeSinaWeibo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSLServiceTypeSinaWeiboSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SocialLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SocialLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E1670;
    v6 = 0;
    SocialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SocialLibraryCore_frameworkLibrary;
  if (!SocialLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNSocial.h" lineNumber:11 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SocialLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIDSServiceNameFaceTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceNameFaceTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameFaceTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IDSLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IDSLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E1640;
    v6 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IDSLibraryCore_frameworkLibrary;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IDSLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  return result;
}

id getIDSIDQueryControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIDSIDQueryControllerClass_softClass;
  v7 = getIDSIDQueryControllerClass_softClass;
  if (!getIDSIDQueryControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIDSIDQueryControllerClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getIDSIDQueryControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199B8BF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIDSIDQueryControllerClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IDSIDQueryController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIDSIDQueryControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIDSIDQueryControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIIDS_SoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "IDSIDQueryController"}];

    __break(1u);
  }
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getIDSServiceAvailabilityControllerClass_block_invoke(uint64_t a1)
{
  IDSLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IDSServiceAvailabilityController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIDSServiceAvailabilityControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIDSServiceAvailabilityControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIIDS_SoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "IDSServiceAvailabilityController"}];

    __break(1u);
  }
}

void getIDSServiceAvailabilityDidChangeNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIDSServiceAvailabilityDidChangeNotificationSymbolLoc_ptr;
  v9 = getIDSServiceAvailabilityDidChangeNotificationSymbolLoc_ptr;
  if (!getIDSServiceAvailabilityDidChangeNotificationSymbolLoc_ptr)
  {
    v1 = IDSLibrary();
    v7[3] = dlsym(v1, "IDSServiceAvailabilityDidChangeNotification");
    getIDSServiceAvailabilityDidChangeNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceAvailabilityDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"CNUIIDS_SoftLink.h" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199B8C3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceAvailabilityDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary();
  result = dlsym(v2, "IDSServiceAvailabilityDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceAvailabilityDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_199B8C794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199B95D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_199B9607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199B9669C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGKFriendRequestFacilitatorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GameCenterUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GameCenterUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E1960;
    v8 = 0;
    GameCenterUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GameCenterUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNGameCenterSoftLink.h" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GKFriendRequestFacilitator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGKFriendRequestFacilitatorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNGameCenterSoftLink.h" lineNumber:44 description:{@"Unable to find class %s", "GKFriendRequestFacilitator"}];

LABEL_10:
    __break(1u);
  }

  getGKFriendRequestFacilitatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GameCenterUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GameCenterUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199B97238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getGKDaemonProxyClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GameCenterFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E1930;
    v8 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNGameCenterSoftLink.h" lineNumber:59 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGKDaemonProxyClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNGameCenterSoftLink.h" lineNumber:61 description:{@"Unable to find class %s", "GKDaemonProxy"}];

LABEL_10:
    __break(1u);
  }

  getGKDaemonProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getGKLocalPlayerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GameCenterUICoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GameCenterUICoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E1948;
    v8 = 0;
    GameCenterUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GameCenterUICoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterUICoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNGameCenterSoftLink.h" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GKLocalPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGKLocalPlayerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNGameCenterSoftLink.h" lineNumber:28 description:{@"Unable to find class %s", "GKLocalPlayer"}];

LABEL_10:
    __break(1u);
  }

  getGKLocalPlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GameCenterUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GameCenterUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199BA10A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void getIDSServiceNameiMessage_1863()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getIDSServiceNameiMessageSymbolLoc_ptr_1877;
  v9 = getIDSServiceNameiMessageSymbolLoc_ptr_1877;
  if (!getIDSServiceNameiMessageSymbolLoc_ptr_1877)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getIDSServiceNameiMessageSymbolLoc_block_invoke_1878;
    v5[3] = &unk_1E74E7518;
    v5[4] = &v6;
    __getIDSServiceNameiMessageSymbolLoc_block_invoke_1878(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = *v0;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIDSServiceNameiMessage(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIIDS_SoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199BA11F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke_1878(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_1880)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IDSLibraryCore_block_invoke_1881;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E1B40;
    v7 = 0;
    IDSLibraryCore_frameworkLibrary_1880 = _sl_dlopen();
  }

  v2 = IDSLibraryCore_frameworkLibrary_1880;
  if (!IDSLibraryCore_frameworkLibrary_1880)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(a1[4] + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr_1877 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke_1881()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_1880 = result;
  return result;
}

void sub_199BA1B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BA35C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIPPronounPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IntlPreferencesUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IntlPreferencesUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E1B58;
    v8 = 0;
    IntlPreferencesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntlPreferencesUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntlPreferencesUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNIntlPreferencesUISoftlink.h" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IPPronounPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIPPronounPickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNIntlPreferencesUISoftlink.h" lineNumber:15 description:{@"Unable to find class %s", "IPPronounPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getIPPronounPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntlPreferencesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntlPreferencesUILibraryCore_frameworkLibrary = result;
  return result;
}

CNUICoreApplicationAuthorizationItem *sRecordToItem_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CNUICoreApplicationAuthorizationItem alloc];
  v4 = [MEMORY[0x1E695DEF0] data];
  v5 = [v2 localizedName];
  v6 = [v2 bundleIdentifier];
  v7 = [v2 recordType] != 0;
  v8 = [v2 authorizationStatus];

  v9 = [(CNUICoreApplicationAuthorizationItem *)v3 initWithIcon:v4 name:v5 bundleIdentifier:v6 deviceType:v7 authorization:v8];

  return v9;
}

void sub_199BA4708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BA4B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BA6C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2409(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199BA82D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_199BA91F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BAF6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initMKMapSnapshotter()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate, &__block_literal_global_77);
  }

  result = objc_getClass("MKMapSnapshotter");
  classMKMapSnapshotter = result;
  getMKMapSnapshotterClass = MKMapSnapshotterFunction;
  return result;
}

void __LoadMapKit_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadMapKit_frameworkLibrary = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 1);
  if (!LoadMapKit_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/MapKit.framework/MapKit (%d)", v1, 8u);
  }
}

Class initCLGeocoder()
{
  if (LoadCoreLocation_loadPredicate != -1)
  {
    dispatch_once(&LoadCoreLocation_loadPredicate, &__block_literal_global_73);
  }

  result = objc_getClass("CLGeocoder");
  classCLGeocoder = result;
  getCLGeocoderClass = CLGeocoderFunction;
  return result;
}

void __LoadCoreLocation_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCoreLocation_frameworkLibrary = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 1);
  if (!LoadCoreLocation_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/CoreLocation.framework/CoreLocation (%d)", v1, 8u);
  }
}

Class initMKMapSnapshotFeatureAnnotation()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate, &__block_literal_global_77);
  }

  result = objc_getClass("MKMapSnapshotFeatureAnnotation");
  classMKMapSnapshotFeatureAnnotation = result;
  getMKMapSnapshotFeatureAnnotationClass = MKMapSnapshotFeatureAnnotationFunction;
  return result;
}

Class initMKMapSnapshotOptions()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate, &__block_literal_global_77);
  }

  result = objc_getClass("MKMapSnapshotOptions");
  classMKMapSnapshotOptions = result;
  getMKMapSnapshotOptionsClass = MKMapSnapshotOptionsFunction;
  return result;
}

Class initMKPlacemark()
{
  if (LoadMapKit_loadPredicate != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate, &__block_literal_global_77);
  }

  result = objc_getClass("MKPlacemark");
  classMKPlacemark = result;
  getMKPlacemarkClass = MKPlacemarkFunction;
  return result;
}

id nameForSanitizedClass(void *a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([a1 isSubclassOfClass:{v7, v10}])
        {
          a1 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = NSStringFromClass(a1);

  return v8;
}

void sub_199BB8784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_199BBAAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4197(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199BBAEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_199BC0D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_199BC2E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E20A8;
    v8 = 0;
    AvatarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AvatarKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:46 description:{@"Unable to find class %s", "AVTView"}];

LABEL_10:
    __break(1u);
  }

  getAVTViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVTAvatarRecordRenderingClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E20C0;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTAvatarRecordRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordRenderingClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:24 description:{@"Unable to find class %s", "AVTAvatarRecordRendering"}];

LABEL_10:
    __break(1u);
  }

  getAVTAvatarRecordRenderingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199BCAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTPoseSelectionViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_6087)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_6088;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E21B0;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_6087 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_6087)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTPoseSelectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTPoseSelectionViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:26 description:{@"Unable to find class %s", "AVTPoseSelectionViewController"}];

LABEL_10:
    __break(1u);
  }

  getAVTPoseSelectionViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_6088()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_6087 = result;
  return result;
}

void sub_199BCC130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IMCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E2268;
    v8 = 0;
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIIMCoreSoftLink.h" lineNumber:12 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMNicknameController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIMNicknameControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIIMCoreSoftLink.h" lineNumber:13 description:{@"Unable to find class %s", "IMNicknameController"}];

LABEL_10:
    __break(1u);
  }

  getIMNicknameControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199BE54E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BE801C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199BE9EE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199BEBD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameControllerClass_block_invoke_10752(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary_10753)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IMCoreLibraryCore_block_invoke_10754;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E2500;
    v8 = 0;
    IMCoreLibraryCore_frameworkLibrary_10753 = _sl_dlopen();
  }

  if (!IMCoreLibraryCore_frameworkLibrary_10753)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIIMCoreSoftLink.h" lineNumber:12 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMNicknameController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIMNicknameControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIIMCoreSoftLink.h" lineNumber:13 description:{@"Unable to find class %s", "IMNicknameController"}];

LABEL_10:
    __break(1u);
  }

  getIMNicknameControllerClass_softClass_10751 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke_10754()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_10753 = result;
  return result;
}

void sub_199BF2C60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

Class initMIUIMedicalIDViewController()
{
  if (LoadMedicalIDUI_loadPredicate != -1)
  {
    dispatch_once(&LoadMedicalIDUI_loadPredicate, &__block_literal_global_10915);
  }

  result = objc_getClass("MIUIMedicalIDViewController");
  classMIUIMedicalIDViewController = result;
  getMIUIMedicalIDViewControllerClass = MIUIMedicalIDViewControllerFunction;
  return result;
}

void __LoadMedicalIDUI_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadMedicalIDUI_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MedicalIDUI.framework/MedicalIDUI", 1);
  if (!LoadMedicalIDUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/MedicalIDUI.framework/MedicalIDUI (%d)", v1, 8u);
  }
}

Class initMIUIDisplayConfiguration()
{
  if (LoadMedicalIDUI_loadPredicate != -1)
  {
    dispatch_once(&LoadMedicalIDUI_loadPredicate, &__block_literal_global_10915);
  }

  result = objc_getClass("MIUIDisplayConfiguration");
  classMIUIDisplayConfiguration = result;
  getMIUIDisplayConfigurationClass = MIUIDisplayConfigurationFunction;
  return result;
}

void sub_199BF63E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BF67C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BFBC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199BFC01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C02BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C07848(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void *__getkUTTypeJPEGSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileCoreServicesLibrary();
  result = dlsym(v2, "kUTTypeJPEG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypeJPEGSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MobileCoreServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E2768;
    v6 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileCoreServicesLibraryCore_frameworkLibrary;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileCoreServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUTTypes.h" lineNumber:9 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkUTTypePNGSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileCoreServicesLibrary();
  result = dlsym(v2, "kUTTypePNG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypePNGSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initQLPreviewController()
{
  if (LoadQuickLook_loadPredicate != -1)
  {
    dispatch_once(&LoadQuickLook_loadPredicate, &__block_literal_global_466);
  }

  result = objc_getClass("QLPreviewController");
  classQLPreviewController = result;
  getQLPreviewControllerClass = QLPreviewControllerFunction;
  return result;
}

void __LoadQuickLook_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadQuickLook_frameworkLibrary = dlopen("/System/Library/Frameworks/QuickLook.framework/QuickLook", 1);
  if (!LoadQuickLook_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/QuickLook.framework/QuickLook (%d)", v1, 8u);
  }
}

void sub_199C142F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_199C15420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_199C16858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarStoreClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_13192)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_13193;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E2910;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_13192 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_13192)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTAvatarStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarStoreClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "AVTAvatarStore"}];

LABEL_10:
    __break(1u);
  }

  getAVTAvatarStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_13193()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_13192 = result;
  return result;
}

void sub_199C1A2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13606(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getIPPronounPickerViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIPPronounPickerViewControllerClass_softClass_13934;
  v7 = getIPPronounPickerViewControllerClass_softClass_13934;
  if (!getIPPronounPickerViewControllerClass_softClass_13934)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIPPronounPickerViewControllerClass_block_invoke_13935;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getIPPronounPickerViewControllerClass_block_invoke_13935(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199C1E794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIPPronounPickerViewControllerClass_block_invoke_13935(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IntlPreferencesUILibraryCore_frameworkLibrary_13936)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IntlPreferencesUILibraryCore_block_invoke_13937;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E2A18;
    v8 = 0;
    IntlPreferencesUILibraryCore_frameworkLibrary_13936 = _sl_dlopen();
  }

  if (!IntlPreferencesUILibraryCore_frameworkLibrary_13936)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntlPreferencesUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNIntlPreferencesUISoftlink.h" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IPPronounPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIPPronounPickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNIntlPreferencesUISoftlink.h" lineNumber:15 description:{@"Unable to find class %s", "IPPronounPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getIPPronounPickerViewControllerClass_softClass_13934 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntlPreferencesUILibraryCore_block_invoke_13937()
{
  result = _sl_dlopen();
  IntlPreferencesUILibraryCore_frameworkLibrary_13936 = result;
  return result;
}

void sub_199C23474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C24984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPISegmentationClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISegmentation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISegmentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPISegmentationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPhotosSoftLink.h" lineNumber:50 description:{@"Unable to find class %s", "PISegmentation"}];

    __break(1u);
  }
}

void PhotoImagingLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoImagingLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E2A30;
    v5 = 0;
    PhotoImagingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNPhotosSoftLink.h" lineNumber:49 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PhotoImagingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199C253E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPISegmentationLoaderClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISegmentationLoader");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISegmentationLoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPISegmentationLoaderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPhotosSoftLink.h" lineNumber:51 description:{@"Unable to find class %s", "PISegmentationLoader"}];

    __break(1u);
  }
}

void sub_199C2D504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getAVTAvatarRecordImageProviderClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarRecordImageProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordImageProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordImageProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:23 description:{@"Unable to find class %s", "AVTAvatarRecordImageProvider"}];

    __break(1u);
  }
}

void AvatarUILibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_16203)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarUILibraryCore_block_invoke_16204;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E2BC8;
    v5 = 0;
    AvatarUILibraryCore_frameworkLibrary_16203 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_16203)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_16204()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_16203 = result;
  return result;
}

void __getAVTAvatarFetchRequestClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarFetchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarFetchRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarFetchRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:19 description:{@"Unable to find class %s", "AVTAvatarFetchRequest"}];

    __break(1u);
  }
}

void sub_199C305EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarStoreClass_block_invoke_16217(uint64_t a1)
{
  AvatarUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarStoreClass_softClass_16216 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "AVTAvatarStore"}];

    __break(1u);
  }
}

void sub_199C3081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTRenderingScopeClass_block_invoke(uint64_t a1)
{
  AvatarUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTRenderingScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTRenderingScopeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "AVTRenderingScope"}];

    __break(1u);
  }
}

void sub_199C317C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak((v25 + 40));
  _Unwind_Resume(a1);
}

void sub_199C3328C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199C374E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C3C5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C4587C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19313(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199C46588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C49B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_199C4A284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C4A748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarRecordImageProviderClass_block_invoke_19907(uint64_t a1)
{
  AvatarUILibrary_19910();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarRecordImageProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordImageProviderClass_softClass_19906 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordImageProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:23 description:{@"Unable to find class %s", "AVTAvatarRecordImageProvider"}];

    __break(1u);
  }
}

void __getAVTRenderingScopeClass_block_invoke_19909(uint64_t a1)
{
  AvatarUILibrary_19910();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTRenderingScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTRenderingScopeClass_softClass_19908 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTRenderingScopeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "AVTRenderingScope"}];

    __break(1u);
  }
}

void AvatarUILibrary_19910()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_19921)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarUILibraryCore_block_invoke_19922;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E2F70;
    v5 = 0;
    AvatarUILibraryCore_frameworkLibrary_19921 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_19921)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_19922()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_19921 = result;
  return result;
}

void sub_199C52804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkAssistantDirectActionEventKeySymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E3108;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNSiriSoftLink.h" lineNumber:9 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kAssistantDirectActionEventKey");
  *(*(a1[4] + 8) + 24) = result;
  getkAssistantDirectActionEventKeySymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

void __getSiriDirectActionContextClass_block_invoke(uint64_t a1)
{
  SiriActivationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriDirectActionContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriDirectActionContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSiriDirectActionContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNSiriSoftLink.h" lineNumber:22 description:{@"Unable to find class %s", "SiriDirectActionContext"}];

    __break(1u);
  }
}

void __getSiriDirectActionSourceClass_block_invoke(uint64_t a1)
{
  SiriActivationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriDirectActionSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriDirectActionSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSiriDirectActionSourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNSiriSoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "SiriDirectActionSource"}];

    __break(1u);
  }
}

void SiriActivationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SiriActivationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E3120;
    v5 = 0;
    SiriActivationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SiriActivationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNSiriSoftLink.h" lineNumber:20 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SiriActivationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class initGEOCountryConfiguration()
{
  if (LoadGeoServices_loadPredicate != -1)
  {
    dispatch_once(&LoadGeoServices_loadPredicate, &__block_literal_global_273);
  }

  result = objc_getClass("GEOCountryConfiguration");
  classGEOCountryConfiguration = result;
  getGEOCountryConfigurationClass = GEOCountryConfigurationFunction;
  return result;
}

void __LoadGeoServices_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadGeoServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/GeoServices.framework/GeoServices", 1);
  if (!LoadGeoServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/GeoServices.framework/GeoServices (%d)", v1, 8u);
  }
}

void sub_199C58330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21846(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initMKMapItem()
{
  if (LoadMapKit_loadPredicate_22238 != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate_22238, &__block_literal_global_22239);
  }

  result = objc_getClass("MKMapItem");
  classMKMapItem = result;
  getMKMapItemClass = MKMapItemFunction;
  return result;
}

void __LoadMapKit_block_invoke_22243()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadMapKit_frameworkLibrary_22245 = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 1);
  if (!LoadMapKit_frameworkLibrary_22245 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/MapKit.framework/MapKit (%d)", v1, 8u);
  }
}

Class init_MKURLHandler()
{
  if (LoadMapKit_loadPredicate_22238 != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate_22238, &__block_literal_global_22239);
  }

  result = objc_getClass("_MKURLHandler");
  class_MKURLHandler = result;
  get_MKURLHandlerClass = _MKURLHandlerFunction;
  return result;
}

Class init_MKURLBuilder()
{
  if (LoadMapKit_loadPredicate_22238 != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate_22238, &__block_literal_global_22239);
  }

  result = objc_getClass("_MKURLBuilder");
  class_MKURLBuilder = result;
  get_MKURLBuilderClass = _MKURLBuilderFunction;
  return result;
}

void sub_199C5FEEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_199C62684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22616(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199C6703C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLComposeViewControllerClass_block_invoke_22633(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary_22634)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SocialLibraryCore_block_invoke_22635;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E3270;
    v8 = 0;
    SocialLibraryCore_frameworkLibrary_22634 = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary_22634)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNSocial.h" lineNumber:11 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNSocial.h" lineNumber:12 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass_22632 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLibraryCore_block_invoke_22635()
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary_22634 = result;
  return result;
}

void sub_199C7060C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary_23061();
  result = dlsym(v2, "IDSCopyIDForPhoneNumberWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IDSLibrary_23061()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_23104)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IDSLibraryCore_block_invoke_23105;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E32D8;
    v6 = 0;
    IDSLibraryCore_frameworkLibrary_23104 = _sl_dlopen();
  }

  v0 = IDSLibraryCore_frameworkLibrary_23104;
  if (!IDSLibraryCore_frameworkLibrary_23104)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getIDSCopyIDForEmailAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IDSLibrary_23061();
  result = dlsym(v2, "IDSCopyIDForEmailAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSCopyIDForEmailAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getIDSIDQueryControllerClass_23071()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIDSIDQueryControllerClass_softClass_23075;
  v7 = getIDSIDQueryControllerClass_softClass_23075;
  if (!getIDSIDQueryControllerClass_softClass_23075)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIDSIDQueryControllerClass_block_invoke_23076;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getIDSIDQueryControllerClass_block_invoke_23076(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199C70CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIDSIDQueryControllerClass_block_invoke_23076(uint64_t a1)
{
  IDSLibrary_23061();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IDSIDQueryController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIDSIDQueryControllerClass_softClass_23075 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIDSIDQueryControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIIDS_SoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "IDSIDQueryController"}];

    __break(1u);
  }
}

uint64_t __IDSLibraryCore_block_invoke_23105()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_23104 = result;
  return result;
}

void sub_199C7482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23656(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CNUILocalizedStringForPropertyWithFormatKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v3, v4];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:v5 value:&stru_1F0CE7398 table:@"Localized"];

  if (![v7 length] || objc_msgSend(v7, "isEqualToString:", v5))
  {
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];

    v10 = [MEMORY[0x1E695CD58] localizedStringForKey:v4];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v10];

    v7 = v11;
  }

  return v7;
}

void sub_199C778FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24107(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199C7BDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initMKLocalSearch()
{
  if (LoadMapKit_loadPredicate_24528 != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate_24528, &__block_literal_global_748);
  }

  result = objc_getClass("MKLocalSearch");
  classMKLocalSearch = result;
  getMKLocalSearchClass = MKLocalSearchFunction;
  return result;
}

void __LoadMapKit_block_invoke_24530()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadMapKit_frameworkLibrary_24531 = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 1);
  if (!LoadMapKit_frameworkLibrary_24531 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/MapKit.framework/MapKit (%d)", v1, 8u);
  }
}

Class initMKLocalSearchRequest()
{
  if (LoadMapKit_loadPredicate_24528 != -1)
  {
    dispatch_once(&LoadMapKit_loadPredicate_24528, &__block_literal_global_748);
  }

  result = objc_getClass("MKLocalSearchRequest");
  classMKLocalSearchRequest = result;
  getMKLocalSearchRequestClass = MKLocalSearchRequestFunction;
  return result;
}

Class initMUPlaceViewController()
{
  if (LoadMapsUI_loadPredicate != -1)
  {
    dispatch_once(&LoadMapsUI_loadPredicate, &__block_literal_global_743);
  }

  result = objc_getClass("MUPlaceViewController");
  classMUPlaceViewController = result;
  getMUPlaceViewControllerClass = MUPlaceViewControllerFunction;
  return result;
}

void __LoadMapsUI_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadMapsUI_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MapsUI.framework/MapsUI", 1);
  if (!LoadMapsUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/MapsUI.framework/MapsUI (%d)", v1, 8u);
  }
}

Class initMUPlaceViewControllerConfiguration()
{
  if (LoadMapsUI_loadPredicate != -1)
  {
    dispatch_once(&LoadMapsUI_loadPredicate, &__block_literal_global_743);
  }

  result = objc_getClass("MUPlaceViewControllerConfiguration");
  classMUPlaceViewControllerConfiguration = result;
  getMUPlaceViewControllerConfigurationClass = MUPlaceViewControllerConfigurationFunction;
  return result;
}

void sub_199C8805C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199C92584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199C94638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_199C997A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSGSuggestedActionMetrics()
{
  if (LoadCoreSuggestions_loadPredicate != -1)
  {
    dispatch_once(&LoadCoreSuggestions_loadPredicate, &__block_literal_global_28357);
  }

  result = objc_getClass("SGSuggestedActionMetrics");
  classSGSuggestedActionMetrics = result;
  getSGSuggestedActionMetricsClass = SGSuggestedActionMetricsFunction;
  return result;
}

void __LoadCoreSuggestions_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCoreSuggestions_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions", 1);
  if (!LoadCoreSuggestions_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions (%d)", v1, 8u);
  }
}

id _LargeDatabasesLowSeveritySignpostLogHandle()
{
  if (_LargeDatabasesLowSeveritySignpostLogHandle_cn_once_token_1 != -1)
  {
    dispatch_once(&_LargeDatabasesLowSeveritySignpostLogHandle_cn_once_token_1, &__block_literal_global_3_28439);
  }

  v1 = _LargeDatabasesLowSeveritySignpostLogHandle_cn_once_object_1;

  return v1;
}

void sub_199CA759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSPosterConfigurationAttributesClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSPosterConfigurationAttributes");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterConfigurationAttributesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSPosterConfigurationAttributesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:119 description:{@"Unable to find class %s", "PRSPosterConfigurationAttributes"}];

    __break(1u);
  }
}

Class __getPRPosterConfiguredPropertiesClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PosterKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E3C20;
    v8 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNPostersSoftLink.h" lineNumber:42 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PRPosterConfiguredProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRPosterConfiguredPropertiesClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNPostersSoftLink.h" lineNumber:121 description:{@"Unable to find class %s", "PRPosterConfiguredProperties"}];

LABEL_10:
    __break(1u);
  }

  getPRPosterConfiguredPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPRSPosterRoleIncomingCallSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardServicesLibrary();
  result = dlsym(v2, "PRSPosterRoleIncomingCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRSPosterRoleIncomingCallSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PosterBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E3C08;
    v6 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PosterBoardServicesLibraryCore_frameworkLibrary;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:22 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

Class __getPRUISPosterConfigurationFinalizerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PosterBoardUIServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E3C38;
    v8 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardUIServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNPostersSoftLink.h" lineNumber:61 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PRUISPosterConfigurationFinalizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterConfigurationFinalizerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNPostersSoftLink.h" lineNumber:120 description:{@"Unable to find class %s", "PRUISPosterConfigurationFinalizer"}];

LABEL_10:
    __break(1u);
  }

  getPRUISPosterConfigurationFinalizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199CA904C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199CAB270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29366(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199CAB750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class init_PSContactSuggester()
{
  if (LoadPeopleSuggester_loadPredicate != -1)
  {
    dispatch_once(&LoadPeopleSuggester_loadPredicate, &__block_literal_global_324);
  }

  result = objc_getClass("_PSContactSuggester");
  class_PSContactSuggester = result;
  get_PSContactSuggesterClass[0] = _PSContactSuggesterFunction;
  return result;
}

void __LoadPeopleSuggester_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPeopleSuggester_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester", 1);
  if (!LoadPeopleSuggester_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/PeopleSuggester.framework/PeopleSuggester (%d)", v1, 8u);
  }
}

void sub_199CB15C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarRecordRenderingClass_block_invoke_30502(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_30519)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_30520;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E3E90;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_30519 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_30519)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTAvatarRecordRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordRenderingClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:24 description:{@"Unable to find class %s", "AVTAvatarRecordRendering"}];

LABEL_10:
    __break(1u);
  }

  getAVTAvatarRecordRenderingClass_softClass_30501 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAVTStickerGeneratorClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_30503)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarKitLibraryCore_block_invoke_30504;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E3EA8;
    v8 = 0;
    AvatarKitLibraryCore_frameworkLibrary_30503 = _sl_dlopen();
  }

  if (!AvatarKitLibraryCore_frameworkLibrary_30503)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTStickerGenerator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTStickerGeneratorClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:48 description:{@"Unable to find class %s", "AVTStickerGenerator"}];

LABEL_10:
    __break(1u);
  }

  getAVTStickerGeneratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke_30504()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_30503 = result;
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_30520()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_30519 = result;
  return result;
}

void sub_199CB3888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30769(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199CB5C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceNameFaceTimeSymbolLoc_block_invoke_31037(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_31047)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IDSLibraryCore_block_invoke_31048;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E3F58;
    v7 = 0;
    IDSLibraryCore_frameworkLibrary_31047 = _sl_dlopen();
  }

  v2 = IDSLibraryCore_frameworkLibrary_31047;
  if (!IDSLibraryCore_frameworkLibrary_31047)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IDSServiceNameFaceTime");
  *(*(a1[4] + 8) + 24) = result;
  getIDSServiceNameFaceTimeSymbolLoc_ptr_31036 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke_31048()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_31047 = result;
  return result;
}

void sub_199CBA6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTLVibrationManagerClass_block_invoke(uint64_t a1)
{
  ToneLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TLVibrationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTLVibrationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTLVibrationManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNToneLibrary.h" lineNumber:18 description:{@"Unable to find class %s", "TLVibrationManager"}];

    __break(1u);
  }
}

void ToneLibraryLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ToneLibraryLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E4000;
    v5 = 0;
    ToneLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ToneLibraryLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ToneLibraryLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNToneLibrary.h" lineNumber:14 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ToneLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ToneLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199CBAA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getTLToneManagerClass_block_invoke(uint64_t a1)
{
  ToneLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TLToneManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTLToneManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTLToneManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNToneLibrary.h" lineNumber:16 description:{@"Unable to find class %s", "TLToneManager"}];

    __break(1u);
  }
}

void *__getkHKMedicalIDDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "kHKMedicalIDDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHKMedicalIDDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *HealthKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E40F8;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ABHealthKit.h" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199CBEBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32016(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199CBEFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getHKMedicalIDStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKMedicalIDStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKMedicalIDStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKMedicalIDStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ABHealthKit.h" lineNumber:21 description:{@"Unable to find class %s", "HKMedicalIDStore"}];

    __break(1u);
  }
}

void __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKHealthStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ABHealthKit.h" lineNumber:19 description:{@"Unable to find class %s", "HKHealthStore"}];

    __break(1u);
  }
}

void __getHKHealthChecklistUtilitiesClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthChecklistUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthChecklistUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKHealthChecklistUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ABHealthKit.h" lineNumber:23 description:{@"Unable to find class %s", "HKHealthChecklistUtilities"}];

    __break(1u);
  }
}

void sub_199CBFABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HealthUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199CC0094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199CC0AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_199CC10D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v26 - 128), 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_199CC182C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_199CC1DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, uint64_t a26, char a27)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_199CC8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarRecordImageProviderClass_block_invoke_32928(uint64_t a1)
{
  AvatarUILibrary_32931();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarRecordImageProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordImageProviderClass_softClass_32927 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordImageProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:23 description:{@"Unable to find class %s", "AVTAvatarRecordImageProvider"}];

    __break(1u);
  }
}

void __getAVTRenderingScopeClass_block_invoke_32930(uint64_t a1)
{
  AvatarUILibrary_32931();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTRenderingScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTRenderingScopeClass_softClass_32929 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTRenderingScopeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "AVTRenderingScope"}];

    __break(1u);
  }
}

void AvatarUILibrary_32931()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_32938)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarUILibraryCore_block_invoke_32939;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E43E8;
    v5 = 0;
    AvatarUILibraryCore_frameworkLibrary_32938 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_32938)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_32939()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_32938 = result;
  return result;
}

void sub_199CC92EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTStickerGeneratorOptionsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_32950)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarKitLibraryCore_block_invoke_32951;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E43D0;
    v8 = 0;
    AvatarKitLibraryCore_frameworkLibrary_32950 = _sl_dlopen();
  }

  if (!AvatarKitLibraryCore_frameworkLibrary_32950)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTStickerGeneratorOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTStickerGeneratorOptionsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:49 description:{@"Unable to find class %s", "AVTStickerGeneratorOptions"}];

LABEL_10:
    __break(1u);
  }

  getAVTStickerGeneratorOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__32946(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke_32951()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_32950 = result;
  return result;
}

Class initCUShutterButton()
{
  if (LoadCameraUI_loadPredicate != -1)
  {
    dispatch_once(&LoadCameraUI_loadPredicate, &__block_literal_global_32989);
  }

  result = objc_getClass("CUShutterButton");
  classCUShutterButton = result;
  getCUShutterButtonClass = CUShutterButtonFunction;
  return result;
}

void __LoadCameraUI_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCameraUI_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CameraUI.framework/CameraUI", 1);
  if (!LoadCameraUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CameraUI.framework/CameraUI (%d)", v1, 8u);
  }
}

Class initFBSOpenApplicationService()
{
  if (LoadCarPlayServices_loadPredicate != -1)
  {
    dispatch_once(&LoadCarPlayServices_loadPredicate, &__block_literal_global_257);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService = result;
  getFBSOpenApplicationServiceClass = FBSOpenApplicationServiceFunction;
  return result;
}

void __LoadCarPlayServices_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCarPlayServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CarPlayServices.framework/CarPlayServices", 1);
  if (!LoadCarPlayServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CarPlayServices.framework/CarPlayServices (%d)", v1, 8u);
  }
}

id sActionTypeValueToEmptyModel_block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v2 = MEMORY[0x1E6996BF0];
  v3 = a2;
  v4 = [v2 emptyModel];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

void sub_199CCD3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initPHPickerViewController()
{
  if (LoadPhotosUI_loadPredicate != -1)
  {
    dispatch_once(&LoadPhotosUI_loadPredicate, &__block_literal_global_785);
  }

  result = objc_getClass("PHPickerViewController");
  classPHPickerViewController = result;
  getPHPickerViewControllerClass = PHPickerViewControllerFunction;
  return result;
}

void __LoadPhotosUI_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPhotosUI_frameworkLibrary = dlopen("/System/Library/Frameworks/PhotosUI.framework/PhotosUI", 1);
  if (!LoadPhotosUI_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/PhotosUI.framework/PhotosUI (%d)", v1, 8u);
  }
}

void sub_199CCF6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarEditorViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_33745)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_33746;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E44E8;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_33745 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_33745)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTAvatarEditorViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarEditorViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:25 description:{@"Unable to find class %s", "AVTAvatarEditorViewController"}];

LABEL_10:
    __break(1u);
  }

  getAVTAvatarEditorViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_33746()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_33745 = result;
  return result;
}

void sub_199CD0400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199CD0B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199CD70EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34421(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199CD73B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTCombinedPickerViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_34426)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_34427;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E4520;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_34426 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_34426)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTCombinedPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTCombinedPickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:28 description:{@"Unable to find class %s", "AVTCombinedPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getAVTCombinedPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_34427()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_34426 = result;
  return result;
}

void sub_199CDD3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CNSetLabelNeedsHuggingContent(void *a1, int a2)
{
  v4 = a1;
  [v4 _setUseShortcutIntrinsicContentSize:a2 ^ 1u];
  LODWORD(v3) = 1132068864;
  if (a2)
  {
    *&v3 = 1000.0;
  }

  [v4 setContentHuggingPriority:0 forAxis:v3];
}

void sub_199CE41A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36592(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199CE5250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarRecordSerializerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_36617)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_36618;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E4700;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_36617 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_36617)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTAvatarRecordSerializer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordSerializerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:27 description:{@"Unable to find class %s", "AVTAvatarRecordSerializer"}];

LABEL_10:
    __break(1u);
  }

  getAVTAvatarRecordSerializerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_36618()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_36617 = result;
  return result;
}

Class initPHPhotoLibrary()
{
  if (LoadPhotos_loadPredicate != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate, &__block_literal_global_37097);
  }

  result = objc_getClass("PHPhotoLibrary");
  classPHPhotoLibrary = result;
  getPHPhotoLibraryClass = PHPhotoLibraryFunction;
  return result;
}

void __LoadPhotos_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPhotos_frameworkLibrary = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 1);
  if (!LoadPhotos_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/Photos.framework/Photos (%d)", v1, 8u);
  }
}

uint64_t _isRomanName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 cnui_containsNonLatinCharacters])
    {
      v3 = 0;
    }

    else
    {
      v3 = [v2 cnui_containsEmojiCharacters] ^ 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_199CEF830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarStoreClass_block_invoke_37872(uint64_t a1)
{
  AvatarUILibrary_37880();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarStoreClass_softClass_37871 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "AVTAvatarStore"}];

    __break(1u);
  }
}

id getAVTAvatarFetchRequestClass_37873()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVTAvatarFetchRequestClass_softClass_37878;
  v7 = getAVTAvatarFetchRequestClass_softClass_37878;
  if (!getAVTAvatarFetchRequestClass_softClass_37878)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAVTAvatarFetchRequestClass_block_invoke_37879;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getAVTAvatarFetchRequestClass_block_invoke_37879(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199CEF9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarFetchRequestClass_block_invoke_37879(uint64_t a1)
{
  AvatarUILibrary_37880();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarFetchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarFetchRequestClass_softClass_37878 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarFetchRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:19 description:{@"Unable to find class %s", "AVTAvatarFetchRequest"}];

    __break(1u);
  }
}

void AvatarUILibrary_37880()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_37889)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarUILibraryCore_block_invoke_37890;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E47D0;
    v5 = 0;
    AvatarUILibraryCore_frameworkLibrary_37889 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_37889)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_37890()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_37889 = result;
  return result;
}

void sub_199CF27BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38375(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initPHAssetChangeRequest()
{
  if (LoadPhotos_loadPredicate_38380 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_38380, &__block_literal_global_199);
  }

  result = objc_getClass("PHAssetChangeRequest");
  classPHAssetChangeRequest = result;
  getPHAssetChangeRequestClass = PHAssetChangeRequestFunction;
  return result;
}

void __LoadPhotos_block_invoke_38383()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPhotos_frameworkLibrary_38385 = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 1);
  if (!LoadPhotos_frameworkLibrary_38385 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/Photos.framework/Photos (%d)", v1, 8u);
  }
}

Class initCRRecentContactsLibrary()
{
  if (LoadCoreRecents_loadPredicate != -1)
  {
    dispatch_once(&LoadCoreRecents_loadPredicate, &__block_literal_global_89);
  }

  result = objc_getClass("CRRecentContactsLibrary");
  classCRRecentContactsLibrary = result;
  getCRRecentContactsLibraryClass = CRRecentContactsLibraryFunction;
  return result;
}

void __LoadCoreRecents_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCoreRecents_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents", 1);
  if (!LoadCoreRecents_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents (%d)", v1, 8u);
  }
}

void sub_199CF9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199CFA448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_199CFBFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTNotificationKeyPINSuccessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ScreenTimeUILibrary();
  result = dlsym(v2, "STNotificationKeyPINSuccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTNotificationKeyPINSuccessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ScreenTimeUILibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ScreenTimeUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ScreenTimeUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E4918;
    v6 = 0;
    ScreenTimeUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ScreenTimeUILibraryCore_frameworkLibrary;
  if (!ScreenTimeUILibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenTimeUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUIEditAuthorizationController.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ScreenTimeUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ScreenTimeUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199CFC414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSTRemotePasscodeControllerClass_block_invoke(uint64_t a1)
{
  ScreenTimeUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STRemotePasscodeController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSTRemotePasscodeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTRemotePasscodeControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIEditAuthorizationController.m" lineNumber:21 description:{@"Unable to find class %s", "STRemotePasscodeController"}];

    __break(1u);
  }
}

void *__getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ScreenTimeUILibrary();
  result = dlsym(v2, "STRestrictionsPINControllerDidFinishNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CNUISetLoggingBlock(const void *a1)
{
  v1 = _Block_copy(a1);
  v2 = _loggingBlock;
  _loggingBlock = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void _CNUILog(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a4;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = @"[CNUI]";
  if (a3 == 4)
  {
    v13 = @"[CNUI WARN]";
  }

  if (a3 == 3)
  {
    v14 = @"[CNUI ERROR]";
  }

  else
  {
    v14 = v13;
  }

  if (_loggingBlock)
  {
    (*(_loggingBlock + 16))();
  }

  else
  {
    if (_CNUILog_onceToken[0] != -1)
    {
      dispatch_once(_CNUILog_onceToken, &__block_literal_global_40309);
    }

    if (a3 < 5 || _CNUILog_logsEnabled && _CNUILog_logsEnabled >= a3)
    {
      NSLog(&stru_1F0CEC358.isa, v14, v12);
    }
  }
}

id CNUILogAccountsAndGroupsList()
{
  if (CNUILogAccountsAndGroupsList_cn_once_token_1 != -1)
  {
    dispatch_once(&CNUILogAccountsAndGroupsList_cn_once_token_1, &__block_literal_global_15);
  }

  v1 = CNUILogAccountsAndGroupsList_cn_once_object_1;

  return v1;
}

uint64_t __CNUILogAccountsAndGroupsList_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "AccountsAndGroupsList");
  v1 = CNUILogAccountsAndGroupsList_cn_once_object_1;
  CNUILogAccountsAndGroupsList_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogContactCard()
{
  if (CNUILogContactCard_cn_once_token_2 != -1)
  {
    dispatch_once(&CNUILogContactCard_cn_once_token_2, &__block_literal_global_19_40329);
  }

  v1 = CNUILogContactCard_cn_once_object_2;

  return v1;
}

uint64_t __CNUILogContactCard_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "ContactCard");
  v1 = CNUILogContactCard_cn_once_object_2;
  CNUILogContactCard_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogContactList()
{
  if (CNUILogContactList_cn_once_token_3 != -1)
  {
    dispatch_once(&CNUILogContactList_cn_once_token_3, &__block_literal_global_22);
  }

  v1 = CNUILogContactList_cn_once_object_3;

  return v1;
}

uint64_t __CNUILogContactList_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "ContactList");
  v1 = CNUILogContactList_cn_once_object_3;
  CNUILogContactList_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __CNUILogAvatarView_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "AvatarView");
  v1 = CNUILogAvatarView_cn_once_object_4;
  CNUILogAvatarView_cn_once_object_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogContactPhotoPicker()
{
  if (CNUILogContactPhotoPicker_cn_once_token_5 != -1)
  {
    dispatch_once(&CNUILogContactPhotoPicker_cn_once_token_5, &__block_literal_global_28_40340);
  }

  v1 = CNUILogContactPhotoPicker_cn_once_object_5;

  return v1;
}

uint64_t __CNUILogContactPhotoPicker_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "ContactPhotoPicker");
  v1 = CNUILogContactPhotoPicker_cn_once_object_5;
  CNUILogContactPhotoPicker_cn_once_object_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogViewService()
{
  if (CNUILogViewService_cn_once_token_7 != -1)
  {
    dispatch_once(&CNUILogViewService_cn_once_token_7, &__block_literal_global_34_40348);
  }

  v1 = CNUILogViewService_cn_once_object_7;

  return v1;
}

uint64_t __CNUILogViewService_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "ContactViewService");
  v1 = CNUILogViewService_cn_once_object_7;
  CNUILogViewService_cn_once_object_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogTesting()
{
  if (CNUILogTesting_cn_once_token_8 != -1)
  {
    dispatch_once(&CNUILogTesting_cn_once_token_8, &__block_literal_global_37_40351);
  }

  v1 = CNUILogTesting_cn_once_object_8;

  return v1;
}

uint64_t __CNUILogTesting_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "Testing");
  v1 = CNUILogTesting_cn_once_object_8;
  CNUILogTesting_cn_once_object_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogPosters()
{
  if (CNUILogPosters_cn_once_token_9 != -1)
  {
    dispatch_once(&CNUILogPosters_cn_once_token_9, &__block_literal_global_40_40356);
  }

  v1 = CNUILogPosters_cn_once_object_9;

  return v1;
}

uint64_t __CNUILogPosters_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "Posters");
  v1 = CNUILogPosters_cn_once_object_9;
  CNUILogPosters_cn_once_object_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogRemoteAlert()
{
  if (CNUILogRemoteAlert_cn_once_token_10 != -1)
  {
    dispatch_once(&CNUILogRemoteAlert_cn_once_token_10, &__block_literal_global_43_40361);
  }

  v1 = CNUILogRemoteAlert_cn_once_object_10;

  return v1;
}

uint64_t __CNUILogRemoteAlert_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "RemoteAlert");
  v1 = CNUILogRemoteAlert_cn_once_object_10;
  CNUILogRemoteAlert_cn_once_object_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogStarkSiriExperiment()
{
  if (CNUILogStarkSiriExperiment_cn_once_token_11 != -1)
  {
    dispatch_once(&CNUILogStarkSiriExperiment_cn_once_token_11, &__block_literal_global_46_40366);
  }

  v1 = CNUILogStarkSiriExperiment_cn_once_object_11;

  return v1;
}

uint64_t __CNUILogStarkSiriExperiment_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "SiriABExperiment");
  v1 = CNUILogStarkSiriExperiment_cn_once_object_11;
  CNUILogStarkSiriExperiment_cn_once_object_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id CNUILogStarkUtilities()
{
  if (CNUILogStarkUtilities_cn_once_token_12 != -1)
  {
    dispatch_once(&CNUILogStarkUtilities_cn_once_token_12, &__block_literal_global_49);
  }

  v1 = CNUILogStarkUtilities_cn_once_object_12;

  return v1;
}

uint64_t __CNUILogStarkUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "SiriStarkUtilities");
  v1 = CNUILogStarkUtilities_cn_once_object_12;
  CNUILogStarkUtilities_cn_once_object_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initAFPreferences()
{
  if (LoadAssistantServices_loadPredicate != -1)
  {
    dispatch_once(&LoadAssistantServices_loadPredicate, &__block_literal_global_40381);
  }

  result = objc_getClass("AFPreferences");
  classAFPreferences = result;
  getAFPreferencesClass = AFPreferencesFunction;
  return result;
}

void __LoadAssistantServices_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadAssistantServices_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 1);
  if (!LoadAssistantServices_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices (%d)", v1, 8u);
  }
}

id _suggestedContact(void *a1)
{
  v1 = a1;
  if ([v1 isSuggested])
  {
    v2 = v1;
  }

  else if ([v1 isUnified])
  {
    v3 = [v1 linkedContacts];
    v2 = [v3 _cn_firstObjectPassingTest:&__block_literal_global_76];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_199D0191C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199D074D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199D07F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initMIUIMedicalIDViewController_41776()
{
  if (LoadMedicalIDUI_loadPredicate_41777 != -1)
  {
    dispatch_once(&LoadMedicalIDUI_loadPredicate_41777, &__block_literal_global_498);
  }

  result = objc_getClass("MIUIMedicalIDViewController");
  classMIUIMedicalIDViewController_41778 = result;
  getMIUIMedicalIDViewControllerClass_41772 = MIUIMedicalIDViewControllerFunction_41780;
  return result;
}

void __LoadMedicalIDUI_block_invoke_41782()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadMedicalIDUI_frameworkLibrary_41784 = dlopen("/System/Library/PrivateFrameworks/MedicalIDUI.framework/MedicalIDUI", 1);
  if (!LoadMedicalIDUI_frameworkLibrary_41784 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/MedicalIDUI.framework/MedicalIDUI (%d)", v1, 8u);
  }
}

Class initMIUIDisplayConfiguration_41787()
{
  if (LoadMedicalIDUI_loadPredicate_41777 != -1)
  {
    dispatch_once(&LoadMedicalIDUI_loadPredicate_41777, &__block_literal_global_498);
  }

  result = objc_getClass("MIUIDisplayConfiguration");
  classMIUIDisplayConfiguration_41789 = result;
  getMIUIDisplayConfigurationClass_41771 = MIUIDisplayConfigurationFunction_41791;
  return result;
}

void sub_199D08A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199D08C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __HealthKitLibraryCore_block_invoke_41802()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_41801 = result;
  return result;
}

void sub_199D09550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199D09B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199D0A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVTUIIsFacetrackingSupportedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AvatarUILibrary_41984();
  result = dlsym(v2, "AVTUIIsFacetrackingSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVTUIIsFacetrackingSupportedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AvatarUILibrary_41984()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_41994)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AvatarUILibraryCore_block_invoke_41995;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E4BF0;
    v6 = 0;
    AvatarUILibraryCore_frameworkLibrary_41994 = _sl_dlopen();
  }

  v0 = AvatarUILibraryCore_frameworkLibrary_41994;
  if (!AvatarUILibraryCore_frameworkLibrary_41994)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AvatarUILibraryCore_block_invoke_41995()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_41994 = result;
  return result;
}

void sub_199D0AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarStoreClass_block_invoke_42005(uint64_t a1)
{
  AvatarUILibrary_41984();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarStoreClass_softClass_42004 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "AVTAvatarStore"}];

    __break(1u);
  }
}

void *__getAVTUIAreAvatarsSupportedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AvatarUILibrary_41984();
  result = dlsym(v2, "AVTUIAreAvatarsSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVTUIAreAvatarsSupportedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_199D0C9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGKDaemonProxyClass_block_invoke_42262(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary_42282)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GameCenterFoundationLibraryCore_block_invoke_42283;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E4D38;
    v8 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary_42282 = _sl_dlopen();
  }

  if (!GameCenterFoundationLibraryCore_frameworkLibrary_42282)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNGameCenterSoftLink.h" lineNumber:59 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGKDaemonProxyClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNGameCenterSoftLink.h" lineNumber:61 description:{@"Unable to find class %s", "GKDaemonProxy"}];

LABEL_10:
    __break(1u);
  }

  getGKDaemonProxyClass_softClass_42261 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getGKLocalPlayerClass_block_invoke_42264(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GameCenterUICoreLibraryCore_frameworkLibrary_42265)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GameCenterUICoreLibraryCore_block_invoke_42266;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E4D50;
    v8 = 0;
    GameCenterUICoreLibraryCore_frameworkLibrary_42265 = _sl_dlopen();
  }

  if (!GameCenterUICoreLibraryCore_frameworkLibrary_42265)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterUICoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNGameCenterSoftLink.h" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GKLocalPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGKLocalPlayerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNGameCenterSoftLink.h" lineNumber:28 description:{@"Unable to find class %s", "GKLocalPlayer"}];

LABEL_10:
    __break(1u);
  }

  getGKLocalPlayerClass_softClass_42263 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GameCenterUICoreLibraryCore_block_invoke_42266()
{
  result = _sl_dlopen();
  GameCenterUICoreLibraryCore_frameworkLibrary_42265 = result;
  return result;
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke_42283()
{
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary_42282 = result;
  return result;
}

void sub_199D10678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke_42787(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_42797)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IDSLibraryCore_block_invoke_42798;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E4D70;
    v7 = 0;
    IDSLibraryCore_frameworkLibrary_42797 = _sl_dlopen();
  }

  v2 = IDSLibraryCore_frameworkLibrary_42797;
  if (!IDSLibraryCore_frameworkLibrary_42797)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(a1[4] + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr_42786 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke_42798()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_42797 = result;
  return result;
}

void sub_199D12914(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199D13ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199D168E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199D18D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199D1B724(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_199D1C0F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_199D1C304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__44525(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __LoadAppleAccount_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadAppleAccount_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 1);
  if (!LoadAppleAccount_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount (%d)", v1, 8u);
  }
}

Class initPHObject()
{
  if (LoadPhotos_loadPredicate_44811 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_44811, &__block_literal_global_350);
  }

  result = objc_getClass("PHObject");
  classPHObject = result;
  getPHObjectClass = PHObjectFunction;
  return result;
}

void __LoadPhotos_block_invoke_44813()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPhotos_frameworkLibrary_44814 = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 1);
  if (!LoadPhotos_frameworkLibrary_44814 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/Photos.framework/Photos (%d)", v1, 8u);
  }
}

Class initPHPickerViewController_44845()
{
  if (LoadPhotosUI_loadPredicate_44846 != -1)
  {
    dispatch_once(&LoadPhotosUI_loadPredicate_44846, &__block_literal_global_343);
  }

  result = objc_getClass("PHPickerViewController");
  classPHPickerViewController_44848 = result;
  getPHPickerViewControllerClass_44843 = PHPickerViewControllerFunction_44850;
  return result;
}

void __LoadPhotosUI_block_invoke_44852()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPhotosUI_frameworkLibrary_44854 = dlopen("/System/Library/Frameworks/PhotosUI.framework/PhotosUI", 1);
  if (!LoadPhotosUI_frameworkLibrary_44854 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/PhotosUI.framework/PhotosUI (%d)", v1, 8u);
  }
}

Class init_PHPickerSuggestionGroup()
{
  if (LoadPhotosUI_loadPredicate_44846 != -1)
  {
    dispatch_once(&LoadPhotosUI_loadPredicate_44846, &__block_literal_global_343);
  }

  result = objc_getClass("_PHPickerSuggestionGroup");
  class_PHPickerSuggestionGroup = result;
  get_PHPickerSuggestionGroupClass = _PHPickerSuggestionGroupFunction;
  return result;
}

Class initPHPickerFilter()
{
  if (LoadPhotosUI_loadPredicate_44846 != -1)
  {
    dispatch_once(&LoadPhotosUI_loadPredicate_44846, &__block_literal_global_343);
  }

  result = objc_getClass("PHPickerFilter");
  classPHPickerFilter = result;
  getPHPickerFilterClass = PHPickerFilterFunction;
  return result;
}

Class initPHPickerConfiguration()
{
  if (LoadPhotosUI_loadPredicate_44846 != -1)
  {
    dispatch_once(&LoadPhotosUI_loadPredicate_44846, &__block_literal_global_343);
  }

  result = objc_getClass("PHPickerConfiguration");
  classPHPickerConfiguration = result;
  getPHPickerConfigurationClass = PHPickerConfigurationFunction;
  return result;
}

void __getCHContactProviderClass_block_invoke(uint64_t a1)
{
  CallHistoryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHContactProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHContactProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHContactProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNCallHistory.h" lineNumber:14 description:{@"Unable to find class %s", "CHContactProvider"}];

    __break(1u);
  }
}

void *CallHistoryLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CallHistoryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CallHistoryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E5248;
    v6 = 0;
    CallHistoryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CallHistoryLibraryCore_frameworkLibrary;
  if (!CallHistoryLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CallHistoryLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNCallHistory.h" lineNumber:12 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CallHistoryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CallHistoryLibraryCore_frameworkLibrary = result;
  return result;
}

Class initAFPreferences_46302()
{
  if (LoadAssistantServices_loadPredicate_46303 != -1)
  {
    dispatch_once(&LoadAssistantServices_loadPredicate_46303, &__block_literal_global_63_46304);
  }

  result = objc_getClass("AFPreferences");
  classAFPreferences_46306 = result;
  getAFPreferencesClass_46300 = AFPreferencesFunction_46308;
  return result;
}

void __LoadAssistantServices_block_invoke_46311()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadAssistantServices_frameworkLibrary_46313 = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 1);
  if (!LoadAssistantServices_frameworkLibrary_46313 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices (%d)", v1, 8u);
  }
}

uint64_t initAFAssistantRestricted()
{
  if (LoadAssistantServices_loadPredicate_46303 != -1)
  {
    dispatch_once(&LoadAssistantServices_loadPredicate_46303, &__block_literal_global_63_46304);
  }

  v0 = dlsym(LoadAssistantServices_frameworkLibrary_46313, "AFAssistantRestricted");
  softLinkAFAssistantRestricted[0] = v0;

  return v0();
}

Class init_EARUserProfileBuilder()
{
  if (LoadEmbeddedAcousticRecognition_loadPredicate != -1)
  {
    dispatch_once(&LoadEmbeddedAcousticRecognition_loadPredicate, &__block_literal_global_46317);
  }

  result = objc_getClass("_EARUserProfileBuilder");
  class_EARUserProfileBuilder = result;
  get_EARUserProfileBuilderClass = _EARUserProfileBuilderFunction;
  return result;
}

void __LoadEmbeddedAcousticRecognition_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadEmbeddedAcousticRecognition_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/EmbeddedAcousticRecognition.framework/EmbeddedAcousticRecognition", 1);
  if (!LoadEmbeddedAcousticRecognition_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/EmbeddedAcousticRecognition.framework/EmbeddedAcousticRecognition (%d)", v1, 8u);
  }
}

void sub_199D2B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCHManagerClass_block_invoke(uint64_t a1)
{
  CallHistoryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CHManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCHManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCHManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNCallHistory.h" lineNumber:13 description:{@"Unable to find class %s", "CHManager"}];

    __break(1u);
  }
}

void *__getkCHCallTypeNormalSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CallHistoryLibrary();
  result = dlsym(v2, "kCHCallTypeNormal");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCHCallTypeNormalSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCHCallStatusCancelledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CallHistoryLibrary();
  result = dlsym(v2, "kCHCallStatusCancelled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCHCallStatusCancelledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCHCallStatusConnectedOutgoingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CallHistoryLibrary();
  result = dlsym(v2, "kCHCallStatusConnectedOutgoing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCHCallStatusConnectedOutgoingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_199D2C1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceNameFaceTimeSymbolLoc_block_invoke_46387(uint64_t a1)
{
  v2 = IDSLibrary_46388();
  result = dlsym(v2, "IDSServiceNameFaceTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameFaceTimeSymbolLoc_ptr_46386 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IDSLibrary_46388()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_46404)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IDSLibraryCore_block_invoke_46405;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E5260;
    v6 = 0;
    IDSLibraryCore_frameworkLibrary_46404 = _sl_dlopen();
  }

  v0 = IDSLibraryCore_frameworkLibrary_46404;
  if (!IDSLibraryCore_frameworkLibrary_46404)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke_46397(uint64_t a1)
{
  v2 = IDSLibrary_46388();
  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr_46396 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke_46405()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_46404 = result;
  return result;
}

void getkUTTypeVCard()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkUTTypeVCardSymbolLoc_ptr;
  v9 = getkUTTypeVCardSymbolLoc_ptr;
  if (!getkUTTypeVCardSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getkUTTypeVCardSymbolLoc_block_invoke;
    v5[3] = &unk_1E74E7518;
    v5[4] = &v6;
    __getkUTTypeVCardSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v1 = *v0;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id getkUTTypeVCard(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUTTypes.h" lineNumber:13 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_199D304A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkUTTypeVCardSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary_47325)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileCoreServicesLibraryCore_block_invoke_47326;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E52B8;
    v7 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary_47325 = _sl_dlopen();
  }

  v2 = MobileCoreServicesLibraryCore_frameworkLibrary_47325;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary_47325)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileCoreServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNUTTypes.h" lineNumber:9 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kUTTypeVCard");
  *(*(a1[4] + 8) + 24) = result;
  getkUTTypeVCardSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke_47326()
{
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary_47325 = result;
  return result;
}

Class initLPImage()
{
  if (LoadLinkPresentation_loadPredicate != -1)
  {
    dispatch_once(&LoadLinkPresentation_loadPredicate, &__block_literal_global_47342);
  }

  result = objc_getClass("LPImage");
  classLPImage = result;
  getLPImageClass = LPImageFunction;
  return result;
}

void __LoadLinkPresentation_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadLinkPresentation_frameworkLibrary = dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 1);
  if (!LoadLinkPresentation_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/LinkPresentation.framework/LinkPresentation (%d)", v1, 8u);
  }
}

Class initLPFileMetadata()
{
  if (LoadLinkPresentation_loadPredicate != -1)
  {
    dispatch_once(&LoadLinkPresentation_loadPredicate, &__block_literal_global_47342);
  }

  result = objc_getClass("LPFileMetadata");
  classLPFileMetadata = result;
  getLPFileMetadataClass = LPFileMetadataFunction;
  return result;
}

Class initLPLinkMetadata()
{
  if (LoadLinkPresentation_loadPredicate != -1)
  {
    dispatch_once(&LoadLinkPresentation_loadPredicate, &__block_literal_global_47342);
  }

  result = objc_getClass("LPLinkMetadata");
  classLPLinkMetadata = result;
  getLPLinkMetadataClass = LPLinkMetadataFunction;
  return result;
}

id getIMNicknameControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIMNicknameControllerClass_softClass_47481;
  v7 = getIMNicknameControllerClass_softClass_47481;
  if (!getIMNicknameControllerClass_softClass_47481)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getIMNicknameControllerClass_block_invoke_47482;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getIMNicknameControllerClass_block_invoke_47482(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199D31968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameControllerClass_block_invoke_47482(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary_47483)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IMCoreLibraryCore_block_invoke_47484;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E52D0;
    v8 = 0;
    IMCoreLibraryCore_frameworkLibrary_47483 = _sl_dlopen();
  }

  if (!IMCoreLibraryCore_frameworkLibrary_47483)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIIMCoreSoftLink.h" lineNumber:12 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMNicknameController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIMNicknameControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIIMCoreSoftLink.h" lineNumber:13 description:{@"Unable to find class %s", "IMNicknameController"}];

LABEL_10:
    __break(1u);
  }

  getIMNicknameControllerClass_softClass_47481 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke_47484()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_47483 = result;
  return result;
}

Class initPHImageManager()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHImageManager");
  classPHImageManager = result;
  getPHImageManagerClass = PHImageManagerFunction;
  return result;
}

void __LoadPhotos_block_invoke_47924()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadPhotos_frameworkLibrary_47926 = dlopen("/System/Library/Frameworks/Photos.framework/Photos", 1);
  if (!LoadPhotos_frameworkLibrary_47926 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/Frameworks/Photos.framework/Photos (%d)", v1, 8u);
  }
}

Class initPHImageRequestOptions()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHImageRequestOptions");
  classPHImageRequestOptions = result;
  getPHImageRequestOptionsClass = PHImageRequestOptionsFunction;
  return result;
}

Class initPHAsset()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHAsset");
  classPHAsset = result;
  getPHAssetClass = PHAssetFunction;
  return result;
}

Class initPHFace()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHFace");
  classPHFace = result;
  getPHFaceClass = PHFaceFunction;
  return result;
}

Class initPHPerson()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHPerson");
  classPHPerson = result;
  getPHPersonClass = PHPersonFunction;
  return result;
}

Class initPHFetchOptions()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHFetchOptions");
  classPHFetchOptions = result;
  getPHFetchOptionsClass = PHFetchOptionsFunction;
  return result;
}

void sub_199D34B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47935(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initPHPhotoLibrary_47939()
{
  if (LoadPhotos_loadPredicate_47921 != -1)
  {
    dispatch_once(&LoadPhotos_loadPredicate_47921, &__block_literal_global_277);
  }

  result = objc_getClass("PHPhotoLibrary");
  classPHPhotoLibrary_47940 = result;
  getPHPhotoLibraryClass_47934 = PHPhotoLibraryFunction_47942;
  return result;
}

void sub_199D3A288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak((v19 + 40));
  _Unwind_Resume(a1);
}

void sub_199D3BE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAFContextManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_49066)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AssistantServicesLibraryCore_block_invoke_49067;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E54D8;
    v8 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_49066 = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary_49066)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNSiriSoftLink.h" lineNumber:9 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AFContextManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFContextManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNSiriSoftLink.h" lineNumber:10 description:{@"Unable to find class %s", "AFContextManager"}];

LABEL_10:
    __break(1u);
  }

  getAFContextManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_49067()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_49066 = result;
  return result;
}

Class __getCNAssistantConversionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ContactsAssistantServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ContactsAssistantServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E54C0;
    v8 = 0;
    ContactsAssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsAssistantServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsAssistantServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNSiriSoftLink.h" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNAssistantConversion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAssistantConversionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNSiriSoftLink.h" lineNumber:15 description:{@"Unable to find class %s", "CNAssistantConversion"}];

LABEL_10:
    __break(1u);
  }

  getCNAssistantConversionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsAssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsAssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199D3E430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199D3E590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_199D3EA64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getGKGameCenterFriendPlayerViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!GameCenterUILibraryCore_frameworkLibrary_49615)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __GameCenterUILibraryCore_block_invoke_49616;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E56B8;
    v8 = 0;
    GameCenterUILibraryCore_frameworkLibrary_49615 = _sl_dlopen();
  }

  if (!GameCenterUILibraryCore_frameworkLibrary_49615)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNGameCenterSoftLink.h" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("GKGameCenterFriendPlayerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGKGameCenterFriendPlayerViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNGameCenterSoftLink.h" lineNumber:37 description:{@"Unable to find class %s", "GKGameCenterFriendPlayerView"}];

LABEL_10:
    __break(1u);
  }

  getGKGameCenterFriendPlayerViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GameCenterUILibraryCore_block_invoke_49616()
{
  result = _sl_dlopen();
  GameCenterUILibraryCore_frameworkLibrary_49615 = result;
  return result;
}

void sub_199D42C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getGKGamesAppIdentifierSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary_49646)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __GameCenterFoundationLibraryCore_block_invoke_49647;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E56D0;
    v7 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary_49646 = _sl_dlopen();
  }

  v2 = GameCenterFoundationLibraryCore_frameworkLibrary_49646;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary_49646)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNGameCenterSoftLink.h" lineNumber:59 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "GKGamesAppIdentifier");
  *(*(a1[4] + 8) + 24) = result;
  getGKGamesAppIdentifierSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke_49647()
{
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary_49646 = result;
  return result;
}

Class initFBSOpenApplicationService_50260()
{
  if (LoadCarPlayServices_loadPredicate_50261 != -1)
  {
    dispatch_once(&LoadCarPlayServices_loadPredicate_50261, &__block_literal_global_50262);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService_50264 = result;
  getFBSOpenApplicationServiceClass_50258 = FBSOpenApplicationServiceFunction_50266;
  return result;
}

void __LoadCarPlayServices_block_invoke_50269()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCarPlayServices_frameworkLibrary_50271 = dlopen("/System/Library/PrivateFrameworks/CarPlayServices.framework/CarPlayServices", 1);
  if (!LoadCarPlayServices_frameworkLibrary_50271 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CarPlayServices.framework/CarPlayServices (%d)", v1, 8u);
  }
}

void sub_199D47114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSGSuggestionsService()
{
  if (LoadCoreSuggestions_loadPredicate_50622 != -1)
  {
    dispatch_once(&LoadCoreSuggestions_loadPredicate_50622, &__block_literal_global_568);
  }

  result = objc_getClass("SGSuggestionsService");
  classSGSuggestionsService = result;
  getSGSuggestionsServiceClass = SGSuggestionsServiceFunction;
  return result;
}

void __LoadCoreSuggestions_block_invoke_50624()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCoreSuggestions_frameworkLibrary_50625 = dlopen("/System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions", 1);
  if (!LoadCoreSuggestions_frameworkLibrary_50625 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions (%d)", v1, 8u);
  }
}

void sub_199D47608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIDSIDQueryControllerClass_block_invoke_50628(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_50629)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IDSLibraryCore_block_invoke_50630;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E5710;
    v8 = 0;
    IDSLibraryCore_frameworkLibrary_50629 = _sl_dlopen();
  }

  if (!IDSLibraryCore_frameworkLibrary_50629)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IDSIDQueryController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIDSIDQueryControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIIDS_SoftLink.h" lineNumber:20 description:{@"Unable to find class %s", "IDSIDQueryController"}];

LABEL_10:
    __break(1u);
  }

  getIDSIDQueryControllerClass_softClass_50627 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke_50630()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_50629 = result;
  return result;
}

Class initCRRecentContactsLibrary_50638()
{
  if (LoadCoreRecents_loadPredicate_50639 != -1)
  {
    dispatch_once(&LoadCoreRecents_loadPredicate_50639, &__block_literal_global_50640);
  }

  result = objc_getClass("CRRecentContactsLibrary");
  classCRRecentContactsLibrary_50641 = result;
  getCRRecentContactsLibraryClass_50636 = CRRecentContactsLibraryFunction_50643;
  return result;
}

void __LoadCoreRecents_block_invoke_50646()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCoreRecents_frameworkLibrary_50647 = dlopen("/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents", 1);
  if (!LoadCoreRecents_frameworkLibrary_50647 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents (%d)", v1, 8u);
  }
}

void sub_199D4A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51025(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getAVTStickerGeneratorOptionsClass_block_invoke_51028(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_51031)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarKitLibraryCore_block_invoke_51032;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E57C8;
    v8 = 0;
    AvatarKitLibraryCore_frameworkLibrary_51031 = _sl_dlopen();
  }

  if (!AvatarKitLibraryCore_frameworkLibrary_51031)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTStickerGeneratorOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTStickerGeneratorOptionsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:49 description:{@"Unable to find class %s", "AVTStickerGeneratorOptions"}];

LABEL_10:
    __break(1u);
  }

  getAVTStickerGeneratorOptionsClass_softClass_51027 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke_51032()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_51031 = result;
  return result;
}

void sub_199D4BA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initAAFamilyDetailsRequest()
{
  if (LoadAppleAccount_loadPredicate_51397 != -1)
  {
    dispatch_once(&LoadAppleAccount_loadPredicate_51397, &__block_literal_global_57_51398);
  }

  result = objc_getClass("AAFamilyDetailsRequest");
  classAAFamilyDetailsRequest = result;
  getAAFamilyDetailsRequestClass = AAFamilyDetailsRequestFunction;
  return result;
}

void __LoadAppleAccount_block_invoke_51402()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadAppleAccount_frameworkLibrary_51404 = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 1);
  if (!LoadAppleAccount_frameworkLibrary_51404 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount (%d)", v1, 8u);
  }
}

Class initFBSOpenApplicationService_51642()
{
  if (LoadCarPlayServices_loadPredicate_51643 != -1)
  {
    dispatch_once(&LoadCarPlayServices_loadPredicate_51643, &__block_literal_global_51644);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService_51646 = result;
  getFBSOpenApplicationServiceClass_51640 = FBSOpenApplicationServiceFunction_51648;
  return result;
}

void __LoadCarPlayServices_block_invoke_51651()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCarPlayServices_frameworkLibrary_51653 = dlopen("/System/Library/PrivateFrameworks/CarPlayServices.framework/CarPlayServices", 1);
  if (!LoadCarPlayServices_frameworkLibrary_51653 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v0 = *__error();
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_error_impl(&dword_199A75000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to Soft Link: /System/Library/PrivateFrameworks/CarPlayServices.framework/CarPlayServices (%d)", v1, 8u);
  }
}

void sub_199D4FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52033(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getTPInComingCallUISnapshotViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTPInComingCallUISnapshotViewControllerClass_softClass;
  v7 = getTPInComingCallUISnapshotViewControllerClass_softClass;
  if (!getTPInComingCallUISnapshotViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTPInComingCallUISnapshotViewControllerClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getTPInComingCallUISnapshotViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199D53328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTPInComingCallUISnapshotViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!TelephonyUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TelephonyUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E5940;
    v8 = 0;
    TelephonyUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNTelephonyUISoftLink.h" lineNumber:13 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TPInComingCallUISnapshotViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTPInComingCallUISnapshotViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNTelephonyUISoftLink.h" lineNumber:14 description:{@"Unable to find class %s", "TPInComingCallUISnapshotViewController"}];

LABEL_10:
    __break(1u);
  }

  getTPInComingCallUISnapshotViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199D546FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIDSServiceNameiMessageSymbolLoc_block_invoke_52238(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary_52246)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IDSLibraryCore_block_invoke_52247;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E5960;
    v7 = 0;
    IDSLibraryCore_frameworkLibrary_52246 = _sl_dlopen();
  }

  v2 = IDSLibraryCore_frameworkLibrary_52246;
  if (!IDSLibraryCore_frameworkLibrary_52246)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNUIIDS_SoftLink.h" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "IDSServiceNameiMessage");
  *(*(a1[4] + 8) + 24) = result;
  getIDSServiceNameiMessageSymbolLoc_ptr_52237 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke_52247()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary_52246 = result;
  return result;
}

void sub_199D5B734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v67 - 176), 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53056(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199D5C4C8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  objc_destroyWeak(&STACK[0x308]);
  _Block_object_dispose(&STACK[0x310], 8);
  _Unwind_Resume(a1);
}

void AddAtSortedIndex_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 insertObject:v4 atIndex:{objc_msgSend(v5, "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, objc_msgSend(v5, "count"), 1024, &__block_literal_global_102)}];
}

void sub_199D602B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAVTAvatarRecordImageProviderClass_block_invoke_53426(uint64_t a1)
{
  AvatarUILibrary_53430();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTAvatarRecordImageProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTAvatarRecordImageProviderClass_softClass_53425 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordImageProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:23 description:{@"Unable to find class %s", "AVTAvatarRecordImageProvider"}];

    __break(1u);
  }
}

void __getAVTRenderingScopeClass_block_invoke_53428(uint64_t a1)
{
  AvatarUILibrary_53430();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTRenderingScope");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVTRenderingScopeClass_softClass_53427 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTRenderingScopeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNUIAvatarSoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "AVTRenderingScope"}];

    __break(1u);
  }
}

void AvatarUILibrary_53430()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_53435)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AvatarUILibraryCore_block_invoke_53436;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E5CB8;
    v5 = 0;
    AvatarUILibraryCore_frameworkLibrary_53435 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_53435)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AvatarUILibraryCore_block_invoke_53436()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_53435 = result;
  return result;
}

void sub_199D65904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_199D69280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkAssistantDirectActionEventKeySymbolLoc_block_invoke_54889(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_54918)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke_54919;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E5D40;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_54918 = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary_54918;
  if (!AssistantServicesLibraryCore_frameworkLibrary_54918)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNSiriSoftLink.h" lineNumber:9 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "kAssistantDirectActionEventKey");
  *(*(a1[4] + 8) + 24) = result;
  getkAssistantDirectActionEventKeySymbolLoc_ptr_54888 = *(*(a1[4] + 8) + 24);
  return result;
}

void __getSiriDirectActionContextClass_block_invoke_54897(uint64_t a1)
{
  SiriActivationLibrary_54900();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriDirectActionContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriDirectActionContextClass_softClass_54896 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSiriDirectActionContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNSiriSoftLink.h" lineNumber:22 description:{@"Unable to find class %s", "SiriDirectActionContext"}];

    __break(1u);
  }
}

void __getSiriDirectActionSourceClass_block_invoke_54899(uint64_t a1)
{
  SiriActivationLibrary_54900();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SiriDirectActionSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSiriDirectActionSourceClass_softClass_54898 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSiriDirectActionSourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNSiriSoftLink.h" lineNumber:21 description:{@"Unable to find class %s", "SiriDirectActionSource"}];

    __break(1u);
  }
}

void SiriActivationLibrary_54900()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary_54906)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SiriActivationLibraryCore_block_invoke_54907;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E5D58;
    v5 = 0;
    SiriActivationLibraryCore_frameworkLibrary_54906 = _sl_dlopen();
  }

  if (!SiriActivationLibraryCore_frameworkLibrary_54906)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SiriActivationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNSiriSoftLink.h" lineNumber:20 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SiriActivationLibraryCore_block_invoke_54907()
{
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary_54906 = result;
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_54919()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_54918 = result;
  return result;
}

void sub_199D6C930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTAvatarRecordRenderingClass_block_invoke_55456(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarUILibraryCore_frameworkLibrary_55457)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarUILibraryCore_block_invoke_55458;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E5DE8;
    v8 = 0;
    AvatarUILibraryCore_frameworkLibrary_55457 = _sl_dlopen();
  }

  if (!AvatarUILibraryCore_frameworkLibrary_55457)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTAvatarRecordRendering");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTAvatarRecordRenderingClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:24 description:{@"Unable to find class %s", "AVTAvatarRecordRendering"}];

LABEL_10:
    __break(1u);
  }

  getAVTAvatarRecordRenderingClass_softClass_55455 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarUILibraryCore_block_invoke_55458()
{
  result = _sl_dlopen();
  AvatarUILibraryCore_frameworkLibrary_55457 = result;
  return result;
}

void sub_199D6CDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVTViewClass_block_invoke_55478(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AvatarKitLibraryCore_frameworkLibrary_55481)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AvatarKitLibraryCore_block_invoke_55482;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E5DD0;
    v8 = 0;
    AvatarKitLibraryCore_frameworkLibrary_55481 = _sl_dlopen();
  }

  if (!AvatarKitLibraryCore_frameworkLibrary_55481)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AvatarKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIAvatarSoftLink.h" lineNumber:45 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("AVTView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVTViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIAvatarSoftLink.h" lineNumber:46 description:{@"Unable to find class %s", "AVTView"}];

LABEL_10:
    __break(1u);
  }

  getAVTViewClass_softClass_55477 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AvatarKitLibraryCore_block_invoke_55482()
{
  result = _sl_dlopen();
  AvatarKitLibraryCore_frameworkLibrary_55481 = result;
  return result;
}

void sub_199D6FDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose((v69 - 256), 8);
  _Block_object_dispose((v69 - 224), 8);
  _Block_object_dispose((v69 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55801(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199D728E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_199D72DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56837(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199D7B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ToneKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ToneKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74E6168;
    v7 = 0;
    ToneKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = ToneKitLibraryCore_frameworkLibrary;
  if (!ToneKitLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ToneKitLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"CNToneLibrary.h" lineNumber:15 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "TKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendMode");
  *(*(a1[4] + 8) + 24) = result;
  getTKBackdropViewOverlayBlendModeFromUIBackdropViewOverlayBlendModeSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __ToneKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ToneKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199D7C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CoreDuetLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreDuetLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E74E61A0;
    v5 = 0;
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreDuetLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"CNCoreDuet.h" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreDuetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_199D7C8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199D7D534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTKTonePickerViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ToneKitLibraryCore_frameworkLibrary_57687)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ToneKitLibraryCore_block_invoke_57688;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E61B8;
    v8 = 0;
    ToneKitLibraryCore_frameworkLibrary_57687 = _sl_dlopen();
  }

  if (!ToneKitLibraryCore_frameworkLibrary_57687)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ToneKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNToneLibrary.h" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("TKTonePickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTKTonePickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNToneLibrary.h" lineNumber:17 description:{@"Unable to find class %s", "TKTonePickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getTKTonePickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ToneKitLibraryCore_block_invoke_57688()
{
  result = _sl_dlopen();
  ToneKitLibraryCore_frameworkLibrary_57687 = result;
  return result;
}

void sub_199D7E8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkUTTypePNGSymbolLoc_block_invoke_57914(uint64_t a1)
{
  v2 = MobileCoreServicesLibrary_57915();
  result = dlsym(v2, "kUTTypePNG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypePNGSymbolLoc_ptr_57913 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MobileCoreServicesLibrary_57915()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary_57925)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileCoreServicesLibraryCore_block_invoke_57926;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E61F8;
    v6 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary_57925 = _sl_dlopen();
  }

  v0 = MobileCoreServicesLibraryCore_frameworkLibrary_57925;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary_57925)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileCoreServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNUTTypes.h" lineNumber:9 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getkUTTypeJPEGSymbolLoc_block_invoke_57921(uint64_t a1)
{
  v2 = MobileCoreServicesLibrary_57915();
  result = dlsym(v2, "kUTTypeJPEG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkUTTypeJPEGSymbolLoc_ptr_57920 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke_57926()
{
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary_57925 = result;
  return result;
}

Class __getIPPronounPickerViewControllerClass_block_invoke_58460(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IntlPreferencesUILibraryCore_frameworkLibrary_58461)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IntlPreferencesUILibraryCore_block_invoke_58462;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E6280;
    v8 = 0;
    IntlPreferencesUILibraryCore_frameworkLibrary_58461 = _sl_dlopen();
  }

  if (!IntlPreferencesUILibraryCore_frameworkLibrary_58461)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntlPreferencesUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNIntlPreferencesUISoftlink.h" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IPPronounPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIPPronounPickerViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNIntlPreferencesUISoftlink.h" lineNumber:15 description:{@"Unable to find class %s", "IPPronounPickerViewController"}];

LABEL_10:
    __break(1u);
  }

  getIPPronounPickerViewControllerClass_softClass_58459 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntlPreferencesUILibraryCore_block_invoke_58462()
{
  result = _sl_dlopen();
  IntlPreferencesUILibraryCore_frameworkLibrary_58461 = result;
  return result;
}

id ABAddressBookBundle()
{
  if (ABAddressBookBundle_onceToken != -1)
  {
    dispatch_once(&ABAddressBookBundle_onceToken, &__block_literal_global_3_58643);
  }

  v1 = ABAddressBookBundle___bundle;

  return v1;
}

void __ABAddressBookBundle_block_invoke()
{
  v2 = ABAddressBookCopyBundleURL();
  v0 = [MEMORY[0x1E696AAE8] bundleWithURL:v2];
  v1 = ABAddressBookBundle___bundle;
  ABAddressBookBundle___bundle = v0;
}

uint64_t ABAddressBookGetDefaultRotationContentSettings(uint64_t result)
{
  *result = 257;
  *(result + 2) = 1;
  *(result + 8) = 0x4038000000000000;
  return result;
}

void CNUIRoundToScale(double a1, double a2)
{
  if (a2 == 0.0 && RoundToScale_onceToken != -1)
  {
    dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
  }
}

void __RoundToScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  RoundToScale___s = v0;
}

double CNUIRoundToViewScale(void *a1, double a2)
{
  v3 = [a1 _screen];
  [v3 scale];
  if (v4 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v4 = *&RoundToScale___s;
  }

  v5 = v4 == 1.0;
  v6 = round(v4 * a2) / v4;
  v7 = round(a2);
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

double CNUIPixelAlignedPoint(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 _screen];
  [v4 scale];
  if (v5 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v5 = *&RoundToScale___s;
  }

  v6 = v5 == 1.0;
  v7 = round(a2 * v5) / v5;
  v8 = round(a2);
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v3 _screen];

  [v10 scale];
  if (v11 == 0.0 && RoundToScale_onceToken != -1)
  {
    dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
  }

  return v9;
}

double CNUIPixelAlignedSize(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 _screen];
  [v4 scale];
  if (v5 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v5 = *&RoundToScale___s;
  }

  v6 = v5 == 1.0;
  v7 = round(a2 * v5) / v5;
  v8 = round(a2);
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v3 _screen];

  [v10 scale];
  if (v11 == 0.0 && RoundToScale_onceToken != -1)
  {
    dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
  }

  return v9;
}

double CNUIPixelAlignedRect(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 _screen];
  [v4 scale];
  if (v5 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
    }

    v5 = *&RoundToScale___s;
  }

  if (v5 == 1.0)
  {
    v6 = round(a2);
  }

  else
  {
    v6 = round(a2 * v5) / v5;
  }

  v7 = [v3 _screen];
  [v7 scale];
  if (v8 == 0.0 && RoundToScale_onceToken != -1)
  {
    dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
  }

  v9 = [v3 _screen];
  [v9 scale];
  if (v10 == 0.0 && RoundToScale_onceToken != -1)
  {
    dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
  }

  v11 = [v3 _screen];
  [v11 scale];
  if (v12 == 0.0 && RoundToScale_onceToken != -1)
  {
    dispatch_once(&RoundToScale_onceToken, &__block_literal_global_33);
  }

  return v6;
}

uint64_t CNUIShouldUseSiriLocalization()
{
  if (_useSiriLocalization != 1)
  {
    goto LABEL_5;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = objc_opt_respondsToSelector();

  if ((v1 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/OldFramework/Sources/ContactsUI_Internal.m", 126, 4, @"You tried to use Siri localization but SiriUI is not loaded.", v2, v3, v4, v5, v8);
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v6 = _useSiriLocalization;
  return v6 & 1;
}

BOOL CNUIIsMessages()
{
  v0 = CNUIIsMessages_isMessages;
  if (CNUIIsMessages_isMessages == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsMessages_isMessages = [v2 isEqualToString:@"com.apple.MobileSMS"];

    v0 = CNUIIsMessages_isMessages;
  }

  return v0 != 0;
}

BOOL CNUIIsActivity()
{
  v0 = CNUIIsActivity_isActivity;
  if (CNUIIsActivity_isActivity == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsActivity_isActivity = [v2 isEqualToString:@"com.apple.Fitness"];

    v0 = CNUIIsActivity_isActivity;
  }

  return v0 != 0;
}

BOOL CNUIIsFirstParty()
{
  v0 = CNUIIsFirstParty_isFirstParty;
  if (CNUIIsFirstParty_isFirstParty == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsFirstParty_isFirstParty = [v2 hasPrefix:@"com.apple."];

    v0 = CNUIIsFirstParty_isFirstParty;
  }

  return v0 != 0;
}

BOOL CNUIIsDDActionsService()
{
  v0 = CNUIIsDDActionsService_isDDActionsService;
  if (CNUIIsDDActionsService_isDDActionsService == -1)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];
    CNUIIsDDActionsService_isDDActionsService = [v2 isEqualToString:@"com.apple.datadetectors.DDActionsService"];

    v0 = CNUIIsDDActionsService_isDDActionsService;
  }

  return v0 != 0;
}

uint64_t CNUIPropertyGroupItemIDSHandleSupported_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([CNUIPropertyGroupItemIDSHandle supportsPropertyGroupItem:v2])
  {
    v3 = [v2 isSuggested] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

CNUIPropertyGroupItemIDSHandle *CNUIPropertyGroupItemIDSHandleTransform_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPropertyGroupItemIDSHandle alloc] initWithPropertyGroupItem:v2];

  return v3;
}

void sub_199D8BBE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_199D8D224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199D8E564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59503(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199D8F880(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199D8F9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199D902A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199D91354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199D96094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLComposeViewControllerClass_block_invoke_59567(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary_59571)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SocialLibraryCore_block_invoke_59572;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E6378;
    v8 = 0;
    SocialLibraryCore_frameworkLibrary_59571 = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary_59571)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNSocial.h" lineNumber:11 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNSocial.h" lineNumber:12 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass_59566 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLibraryCore_block_invoke_59572()
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary_59571 = result;
  return result;
}

void sub_199DA4960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v17 = objc_begin_catch(exception_object);
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v16 predicateForSelectionOfContact];
        LODWORD(a9) = 138412802;
        *(&a9 + 4) = v19;
        WORD6(a9) = 2112;
        a13 = 2112;
        a14 = v17;
        _os_log_error_impl(&dword_199A75000, v18, OS_LOG_TYPE_ERROR, "Exception raised during validation of predicate %@ on %@: %@", &a9, 0x20u);
      }

      objc_end_catch();
      JUMPOUT(0x199DA48A4);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_199DA9370(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v2 - 136), 8);
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_199DAA928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199DAC244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getDSSafetyCheckWhenBlockingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDSSafetyCheckWhenBlockingClass_softClass;
  v7 = getDSSafetyCheckWhenBlockingClass_softClass;
  if (!getDSSafetyCheckWhenBlockingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDSSafetyCheckWhenBlockingClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getDSSafetyCheckWhenBlockingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199DAEA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDSSafetyCheckWhenBlockingClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!DigitalSeparationUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DigitalSeparationUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E6670;
    v8 = 0;
    DigitalSeparationUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DigitalSeparationUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DigitalSeparationUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNSafetyCheckHelper.m" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DSSafetyCheckWhenBlocking");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDSSafetyCheckWhenBlockingClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNSafetyCheckHelper.m" lineNumber:15 description:{@"Unable to find class %s", "DSSafetyCheckWhenBlocking"}];

LABEL_10:
    __break(1u);
  }

  getDSSafetyCheckWhenBlockingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DigitalSeparationUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DigitalSeparationUILibraryCore_frameworkLibrary = result;
  return result;
}

void sUpdateActionViewWithItem_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = a2;
  LODWORD(a2) = [v9 isHidden];
  [v9 setHidden:0];
  v5 = [v4 image];
  [v9 setImage:v5];

  v6 = [v4 title];
  [v9 setTitle:v6];

  v7 = [v4 type];
  [v9 setType:v7];

  v8 = [v4 disabled];
  [v9 setDisabled:v8 animated:a2 ^ 1];
}

void sub_199DB5CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199DBBBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIMNicknameControllerClass_block_invoke_64537(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary_64538)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __IMCoreLibraryCore_block_invoke_64539;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E7420;
    v8 = 0;
    IMCoreLibraryCore_frameworkLibrary_64538 = _sl_dlopen();
  }

  if (!IMCoreLibraryCore_frameworkLibrary_64538)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNUIIMCoreSoftLink.h" lineNumber:12 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMNicknameController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIMNicknameControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNUIIMCoreSoftLink.h" lineNumber:13 description:{@"Unable to find class %s", "IMNicknameController"}];

LABEL_10:
    __break(1u);
  }

  getIMNicknameControllerClass_softClass_64536 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke_64539()
{
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_64538 = result;
  return result;
}

void sub_199DBCE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199DC1FB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_199DC2D5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_199DC5CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199DC74E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64581(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_199DC9D00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199DC9F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_199DCAC40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199DCC354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_199DD50F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLComposeViewControllerClass_block_invoke_64673(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary_64679)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SocialLibraryCore_block_invoke_64680;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E7408;
    v8 = 0;
    SocialLibraryCore_frameworkLibrary_64679 = _sl_dlopen();
  }

  if (!SocialLibraryCore_frameworkLibrary_64679)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SocialLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNSocial.h" lineNumber:11 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSLComposeViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNSocial.h" lineNumber:12 description:{@"Unable to find class %s", "SLComposeViewController"}];

LABEL_10:
    __break(1u);
  }

  getSLComposeViewControllerClass_softClass_64672 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLibraryCore_block_invoke_64680()
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary_64679 = result;
  return result;
}

void sub_199DD59AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_199DD6A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199DD6D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199DD7074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_199DD7308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_199DDB68C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_199DEB004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPRSPosterRoleIncomingCallSymbolLoc_block_invoke_65465(uint64_t a1)
{
  v2 = PosterBoardServicesLibrary_65466();
  result = dlsym(v2, "PRSPosterRoleIncomingCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRSPosterRoleIncomingCallSymbolLoc_ptr_65464 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PosterBoardServicesLibrary_65466()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary_65473)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardServicesLibraryCore_block_invoke_65474;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E7538;
    v6 = 0;
    PosterBoardServicesLibraryCore_frameworkLibrary_65473 = _sl_dlopen();
  }

  v0 = PosterBoardServicesLibraryCore_frameworkLibrary_65473;
  if (!PosterBoardServicesLibraryCore_frameworkLibrary_65473)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:22 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PosterBoardServicesLibraryCore_block_invoke_65474()
{
  result = _sl_dlopen();
  PosterBoardServicesLibraryCore_frameworkLibrary_65473 = result;
  return result;
}

void __getPRSMutablePosterConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary_65466();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSMutablePosterConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSMutablePosterConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSMutablePosterConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:26 description:{@"Unable to find class %s", "PRSMutablePosterConfiguration"}];

    __break(1u);
  }
}

void sub_199DEB43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSPosterConfigurationAttributesClass_block_invoke_65494(uint64_t a1)
{
  PosterBoardServicesLibrary_65466();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSPosterConfigurationAttributes");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterConfigurationAttributesClass_softClass_65493 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSPosterConfigurationAttributesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:119 description:{@"Unable to find class %s", "PRSPosterConfigurationAttributes"}];

    __break(1u);
  }
}

id getPRSPosterArchiverClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRSPosterArchiverClass_softClass;
  v7 = getPRSPosterArchiverClass_softClass;
  if (!getPRSPosterArchiverClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRSPosterArchiverClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getPRSPosterArchiverClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199DEB7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRSPosterArchiverClass_block_invoke(uint64_t a1)
{
  PosterBoardServicesLibrary_65466();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRSPosterArchiver");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRSPosterArchiverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRSPosterArchiverClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:24 description:{@"Unable to find class %s", "PRSPosterArchiver"}];

    __break(1u);
  }
}

void sub_199DEBAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISIncomingCallPosterContextNameVariationsClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISIncomingCallPosterContextNameVariations");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISIncomingCallPosterContextNameVariationsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISIncomingCallPosterContextNameVariationsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:64 description:{@"Unable to find class %s", "PRUISIncomingCallPosterContextNameVariations"}];

    __break(1u);
  }
}

void *PosterBoardUIServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary_65522)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PosterBoardUIServicesLibraryCore_block_invoke_65523;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E74E7570;
    v6 = 0;
    PosterBoardUIServicesLibraryCore_frameworkLibrary_65522 = _sl_dlopen();
  }

  v0 = PosterBoardUIServicesLibraryCore_frameworkLibrary_65522;
  if (!PosterBoardUIServicesLibraryCore_frameworkLibrary_65522)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardUIServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:61 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PosterBoardUIServicesLibraryCore_block_invoke_65523()
{
  result = _sl_dlopen();
  PosterBoardUIServicesLibraryCore_frameworkLibrary_65522 = result;
  return result;
}

void sub_199DEC12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISIncomingCallPosterContextClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISIncomingCallPosterContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISIncomingCallPosterContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISIncomingCallPosterContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:63 description:{@"Unable to find class %s", "PRUISIncomingCallPosterContext"}];

    __break(1u);
  }
}

void sub_199DEC39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISPosterConfigurationUtilitiesClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterConfigurationUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterConfigurationUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterConfigurationUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:67 description:{@"Unable to find class %s", "PRUISPosterConfigurationUtilities"}];

    __break(1u);
  }
}

void __getPRUISPosterEditingViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterEditingViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterEditingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterEditingViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:65 description:{@"Unable to find class %s", "PRUISPosterEditingViewController"}];

    __break(1u);
  }
}

id getPRUISPosterRenderingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRUISPosterRenderingViewControllerClass_softClass;
  v7 = getPRUISPosterRenderingViewControllerClass_softClass;
  if (!getPRUISPosterRenderingViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRUISPosterRenderingViewControllerClass_block_invoke;
    v3[3] = &unk_1E74E7518;
    v3[4] = &v4;
    __getPRUISPosterRenderingViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_199DED394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISPosterRenderingViewControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterRenderingViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterRenderingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterRenderingViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:66 description:{@"Unable to find class %s", "PRUISPosterRenderingViewController"}];

    __break(1u);
  }
}

void sub_199DEDD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPREditorColorPaletteClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary_65660)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PosterKitLibraryCore_block_invoke_65661;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74E7588;
    v8 = 0;
    PosterKitLibraryCore_frameworkLibrary_65660 = _sl_dlopen();
  }

  if (!PosterKitLibraryCore_frameworkLibrary_65660)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CNPostersSoftLink.h" lineNumber:42 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PREditorColorPalette");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPREditorColorPaletteClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CNPostersSoftLink.h" lineNumber:45 description:{@"Unable to find class %s", "PREditorColorPalette"}];

LABEL_10:
    __break(1u);
  }

  getPREditorColorPaletteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PosterKitLibraryCore_block_invoke_65661()
{
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary_65660 = result;
  return result;
}

void sub_199DEE468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISPosterAttachmentConfigurationClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterAttachmentConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterAttachmentConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterAttachmentConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:73 description:{@"Unable to find class %s", "PRUISPosterAttachmentConfiguration"}];

    __break(1u);
  }
}

void __getPRUISPosterSnapshotRequestClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterSnapshotRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterSnapshotRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterSnapshotRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:71 description:{@"Unable to find class %s", "PRUISPosterSnapshotRequest"}];

    __break(1u);
  }
}

void sub_199DEED60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISPosterSnapshotControllerClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterSnapshotController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterSnapshotControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterSnapshotControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:69 description:{@"Unable to find class %s", "PRUISPosterSnapshotController"}];

    __break(1u);
  }
}

void sub_199DEF154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISIncomingCallSnapshotDefinition");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISIncomingCallSnapshotDefinitionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISIncomingCallSnapshotDefinitionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:70 description:{@"Unable to find class %s", "PRUISIncomingCallSnapshotDefinition"}];

    __break(1u);
  }
}

void sub_199DEF460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithOverlaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_199DEF6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsWithObscurableContentViewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_199DEF8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterBoardUIServicesLibrary();
  result = dlsym(v2, "PRPosterSnapshotDefinitionIdentifierIncomingCallComposite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPRPosterSnapshotDefinitionIdentifierIncomingCallCompositeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_199DEFC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke(uint64_t a1)
{
  PosterBoardUIServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PRUISPosterAppearanceObservingAttachmentProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPRUISPosterAppearanceObservingAttachmentProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterAppearanceObservingAttachmentProviderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"CNPostersSoftLink.h" lineNumber:72 description:{@"Unable to find class %s", "PRUISPosterAppearanceObservingAttachmentProvider"}];

    __break(1u);
  }
}

void sub_199DF4260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

UIEdgeInsets UIEdgeInsetsFromString(NSString *string)
{
  MEMORY[0x1EEE4DCB0](string);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}