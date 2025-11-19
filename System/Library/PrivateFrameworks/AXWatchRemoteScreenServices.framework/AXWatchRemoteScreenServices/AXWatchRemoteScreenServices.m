uint64_t sub_23D6BAC48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D6BACBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_23D6BAD18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_23D6BAD7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D6BADB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t AXWatchRemoteScreenIsPairedGizmoSupported()
{
  v0 = +[AXDeviceRemoteScreenUtil sharedInstance];
  v1 = [v0 isPairedGizmoSupported];

  return v1;
}

id AX_NRDEVICECAPABILITY_MULTIBAND_WIFI()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"776630FC-BE65-4716-B3B0-E36BA8679ECE"];

  return v0;
}

uint64_t AXWatchRemoteScreenIsPairedGizmoHasStingSupport()
{
  v0 = +[AXDeviceRemoteScreenUtil sharedInstance];
  v1 = [v0 isPairedGizmoHasStingSupport];

  return v1;
}

id AX_NRDEVICECAPABILITY_STING()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"15BF559D-D50B-44FE-AC84-DFBA323EC985"];

  return v0;
}

uint64_t AXDeviceRemoteScreenIsBluetoothOn()
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v0 = [getBluetoothManagerClass() sharedInstance];
    v1 = [v0 powered];

    return v1;
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __AXDeviceRemoteScreenIsBluetoothOn_block_invoke;
    block[3] = &unk_278BE0AE8;
    block[4] = &v5;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v3 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
    return v3;
  }
}

id getBluetoothManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBluetoothManagerClass_softClass;
  v7 = getBluetoothManagerClass_softClass;
  if (!getBluetoothManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBluetoothManagerClass_block_invoke;
    v3[3] = &unk_278BE0AE8;
    v3[4] = &v4;
    __getBluetoothManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23D6BB0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AXDeviceRemoteScreenIsBluetoothOn_block_invoke(uint64_t a1)
{
  v2 = [getBluetoothManagerClass() sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v2 powered];
}

uint64_t AXDeviceRemoteScreenIsWifiOn()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getWFClientClass_softClass;
  v9 = getWFClientClass_softClass;
  if (!getWFClientClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getWFClientClass_block_invoke;
    v5[3] = &unk_278BE0AE8;
    v5[4] = &v6;
    __getWFClientClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = objc_alloc_init(v0);
  v3 = [v2 powered];

  return v3;
}

void sub_23D6BB210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double AXDisplayCornerRadiusWithMargin(double a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getMGGetFloat32AnswerSymbolLoc_ptr;
  v8 = getMGGetFloat32AnswerSymbolLoc_ptr;
  if (!getMGGetFloat32AnswerSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getMGGetFloat32AnswerSymbolLoc_block_invoke;
    v4[3] = &unk_278BE0AE8;
    v4[4] = &v5;
    __getMGGetFloat32AnswerSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    AXDisplayCornerRadiusWithMargin_cold_1();
  }

  return fmax(v2(@"DeviceCornerRadius", 0.0) - a1, 13.0);
}

void sub_23D6BB308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _AXCurrentPairedGizmo()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [v0 getActivePairedDevice];

  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = [v1 valueForProperty:*MEMORY[0x277D2BB28]];
  if ([v2 BOOLValue])
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v3 = [v1 valueForProperty:*MEMORY[0x277D2BB30]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    goto LABEL_5;
  }

  v5 = v1;
LABEL_6:

  return v5;
}

void AXNPSSetWatchRemoteScreenEnabled(uint64_t a1)
{
  v2 = _AXCurrentPairedGizmo();
  if (v2)
  {
    v3 = MEMORY[0x277D2BA58];
    v11 = v2;
    v4 = *MEMORY[0x277D81E68];
    v5 = [v3 alloc];
    v6 = [v5 initWithDomain:*MEMORY[0x277D81C18] pairedDevice:v11];
    [v6 setBool:a1 forKey:v4];
    v7 = [v6 synchronize];
    v8 = objc_opt_new();
    v9 = [v6 domain];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v4];

    [v8 synchronizeNanoDomain:v9 keys:v10];
    v2 = v11;
  }
}

uint64_t AXIsCrownOrientationOnRightSide()
{
  v0 = _AXCurrentPairedGizmo();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 valueForProperty:*MEMORY[0x277D2BBB8]];
    v3 = [v1 valueForProperty:*MEMORY[0x277D2BB60]];
    v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano" pairingID:v2 pairingDataStore:v3];
    v5 = [v4 BOOLForKey:@"invertUI"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

Class __getBluetoothManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!BluetoothManagerLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __BluetoothManagerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BE0B08;
    v7 = 0;
    BluetoothManagerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (BluetoothManagerLibraryCore_frameworkLibrary)
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
  result = objc_getClass("BluetoothManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBluetoothManagerClass_block_invoke_cold_1();
  }

  getBluetoothManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BluetoothManagerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BluetoothManagerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getWFClientClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!WiFiKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __WiFiKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278BE0B40;
    v7 = 0;
    WiFiKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (WiFiKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("WFClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFClientClass_block_invoke_cold_1();
  }

  getWFClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WiFiKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WiFiKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getMGGetFloat32AnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v12 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __libMobileGestaltLibraryCore_block_invoke;
    v6[4] = &unk_278BE0B78;
    v7 = &v9;
    v8 = v6;
    v13 = xmmword_278BE0B58;
    v14 = 0;
    v10[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v7[1] + 24);
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  v3 = v6[0];
  if (!v2)
  {
    v3 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MGGetFloat32Answer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetFloat32AnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23D6BBAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23D6BBB94()
{
  v0 = sub_23D6C6018();
  __swift_allocate_value_buffer(v0, qword_2814FB9F8);
  __swift_project_value_buffer(v0, qword_2814FB9F8);
  return sub_23D6C6008();
}

uint64_t AXLogTwiceRemoteScreen.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D6C6018();
  v3 = __swift_project_value_buffer(v2, qword_2814FB9F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void type metadata accessor for AXAction()
{
  if (!qword_27E2E1918)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E2E1918);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id AXTwiceRemoteScreenService.getter()
{
  if (qword_27E2E1900 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2E1980;

  return v1;
}

id sub_23D6BBE04()
{
  result = [objc_allocWithZone(type metadata accessor for AXDeviceRemoteScreenService()) init];
  qword_27E2E1980 = result;
  return result;
}

id AXDeviceRemoteScreenService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXDeviceRemoteScreenService.sharedInstance.getter()
{
  if (qword_27E2E1900 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2E1980;

  return v1;
}

id AXDeviceRemoteScreenService.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_serviceImpl];
  v3 = type metadata accessor for AXWatchRemoteScreenServiceAXUIService();
  v4 = [objc_allocWithZone(v3) init];
  *(v2 + 3) = v3;
  *(v2 + 4) = &off_284FB5DF8;
  *v2 = v4;
  v5 = &v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledEvent];
  *v5 = 0xD000000000000036;
  *(v5 + 1) = 0x800000023D6C7990;
  v6 = &v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledKey];
  *v6 = 0x64656C62616E65;
  *(v6 + 1) = 0xE700000000000000;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXDeviceRemoteScreenService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D6BC208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

Swift::Bool __swiftcall AXDeviceRemoteScreenService.startTwiceRemoteScreen()()
{
  v1 = *&v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledEvent];
  v2 = *&v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledEvent + 8];
  v3 = sub_23D6C6058();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v12 = sub_23D6BC510;
  v13 = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6BC530;
  v11 = &block_descriptor;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  AnalyticsSendEventLazy();
  _Block_release(v5);

  sub_23D6BC208(&v6[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_serviceImpl], aBlock);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(aBlock, v11);
  (*(v8 + 1))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  return 1;
}

id sub_23D6BC530(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_23D6BC9E4(0, &unk_2814FB9C0, 0x277D82BB8);
    v5 = sub_23D6C6028();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Bool __swiftcall AXDeviceRemoteScreenService.stopTwiceRemoteScreen()()
{
  v1 = *&v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledEvent];
  v2 = *&v0[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledEvent + 8];
  v3 = sub_23D6C6058();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v12 = sub_23D6BC844;
  v13 = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D6BC530;
  v11 = &block_descriptor_6;
  v5 = _Block_copy(aBlock);
  v6 = v0;

  AnalyticsSendEventLazy();
  _Block_release(v5);

  sub_23D6BC208(&v6[OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_serviceImpl], aBlock);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(aBlock, v11);
  (*(v8 + 2))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  return 1;
}

unint64_t sub_23D6BC76C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1A68, &unk_23D6C6E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6C6D70;
  v3 = *(a1 + OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledKey);
  v4 = *(a1 + OBJC_IVAR____TtC27AXWatchRemoteScreenServices27AXDeviceRemoteScreenService_twiceEnabledKey + 8);
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  sub_23D6BC9E4(0, &qword_27E2E1A70, 0x277CCABB0);

  *(inited + 48) = sub_23D6C6178();
  v5 = sub_23D6C1F98(inited);
  swift_setDeallocating();
  sub_23D6BC97C(inited + 32);
  return v5;
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

uint64_t sub_23D6BC97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1A78, &qword_23D6C7710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D6BC9E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

AXWatchRemoteScreenServices::AXWatchRemoteScreenAXUIServiceMessageID_optional __swiftcall AXWatchRemoteScreenAXUIServiceMessageID.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23D6BCA80()
{
  result = qword_27E2E1A80;
  if (!qword_27E2E1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1A80);
  }

  return result;
}

uint64_t sub_23D6BCAD4()
{
  v1 = *v0;
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](v1 + 1);
  return sub_23D6C62D8();
}

uint64_t sub_23D6BCB4C()
{
  v1 = *v0;
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](v1 + 1);
  return sub_23D6C62D8();
}

unint64_t sub_23D6BCBA8(uint64_t a1)
{
  result = sub_23D6BCBD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23D6BCBD0()
{
  result = qword_27E2E1A88;
  if (!qword_27E2E1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXWatchRemoteScreenAXUIServiceMessageID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXWatchRemoteScreenAXUIServiceMessageID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23D6BCD88()
{
  sub_23D6C6208();
  MEMORY[0x23EEE8200](0xD000000000000013, 0x800000023D6C7BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B18, &qword_23D6C70B8);
  sub_23D6C6228();
  return 0;
}

uint64_t sub_23D6BCE28()
{
  v1 = *v0;
  sub_23D6C6208();
  MEMORY[0x23EEE8200](0xD000000000000013, 0x800000023D6C7BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B18, &qword_23D6C70B8);
  sub_23D6C6228();
  return 0;
}

uint64_t sub_23D6BCEEC(uint64_t result, void *a2, void (*a3)(void *, uint64_t))
{
  if (a3)
  {
    if (a2)
    {
      sub_23D6BE194(a3);
      v5 = a2;
      a3(a2, 1);

      return sub_23D6BE1A4(a3);
    }

    else
    {
      v6 = result;
      if (result)
      {

        v7 = v6;
      }

      else
      {
        sub_23D6BE194(a3);
        v7 = sub_23D6C209C(MEMORY[0x277D84F90]);
      }

      a3(v7, 0);
      sub_23D6BE1A4(a3);
    }
  }

  return result;
}

uint64_t sub_23D6BCFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23D6C6038();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_23D6BD0A4()
{
  v1 = OBJC_IVAR____TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService__client;
  v2 = *(v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService__client);
LABEL_7:
    v14 = v2;
    return;
  }

  v4 = v0;
  v5 = [objc_opt_self() processInfo];
  [v5 processIdentifier];

  v6 = sub_23D6C6258();
  MEMORY[0x23EEE8200](v6);

  v7 = objc_allocWithZone(MEMORY[0x277CE7748]);
  v8 = sub_23D6C6058();

  v9 = sub_23D6C6058();
  v10 = [v7 initWithIdentifier:v8 serviceBundleName:v9];

  v11 = *(v4 + v1);
  *(v4 + v1) = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setDelegate_];
  }

  v13 = *(v4 + v1);
  if (v13)
  {
    v13;
    v2 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23D6BD23C(char a1)
{
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D6C6018();
  __swift_project_value_buffer(v2, qword_2814FB9F8);
  v3 = sub_23D6C5FF8();
  v4 = sub_23D6C6158();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_23D6B9000, v3, v4, "[TWICE] Client requesting TWICE npsSetTwiceEnabledXPCRequest %{BOOL}d", v5, 8u);
    MEMORY[0x23EEE8960](v5, -1, -1);
  }

  sub_23D6BD0A4();
  v7 = v6;
  if (a1)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_23D6BE31C;
  *(v9 + 24) = 0;
  v11[4] = sub_23D6BE30C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23D6BCFF8;
  v11[3] = &block_descriptor_29;
  v10 = _Block_copy(v11);

  [v7 sendAsynchronousMessage:0 withIdentifier:v8 targetAccessQueue:0 completion:v10];
  _Block_release(v10);
}

void sub_23D6BD41C()
{
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_23D6C6018();
  __swift_project_value_buffer(v0, qword_2814FB9F8);
  v1 = sub_23D6C5FF8();
  v2 = sub_23D6C6158();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23D6B9000, v1, v2, "[TWICE] Client requesting TWICE start", v3, 2u);
    MEMORY[0x23EEE8960](v3, -1, -1);
  }

  sub_23D6BD0A4();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23D6BE31C;
  *(v6 + 24) = 0;
  v8[4] = sub_23D6BE30C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23D6BCFF8;
  v8[3] = &block_descriptor_22;
  v7 = _Block_copy(v8);

  [v5 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:v7];
  _Block_release(v7);
}

void sub_23D6BD5DC()
{
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_23D6C6018();
  __swift_project_value_buffer(v0, qword_2814FB9F8);
  v1 = sub_23D6C5FF8();
  v2 = sub_23D6C6158();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23D6B9000, v1, v2, "[TWICE] Client requesting TWICE stop", v3, 2u);
    MEMORY[0x23EEE8960](v3, -1, -1);
  }

  sub_23D6BD0A4();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23D6BD79C;
  *(v6 + 24) = 0;
  v8[4] = sub_23D6BE30C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23D6BCFF8;
  v8[3] = &block_descriptor_15;
  v7 = _Block_copy(v8);

  [v5 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:v7];
  _Block_release(v7);
}

void sub_23D6BD7C4()
{
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_23D6C6018();
  __swift_project_value_buffer(v0, qword_2814FB9F8);
  v1 = sub_23D6C5FF8();
  v2 = sub_23D6C6158();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23D6B9000, v1, v2, "[TWICE] Client requesting TWICE restart", v3, 2u);
    MEMORY[0x23EEE8960](v3, -1, -1);
  }

  sub_23D6BD0A4();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_23D6BD984;
  *(v6 + 24) = 0;
  v8[4] = sub_23D6BE174;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23D6BCFF8;
  v8[3] = &block_descriptor_0;
  v7 = _Block_copy(v8);

  [v5 sendAsynchronousMessage:0 withIdentifier:3 targetAccessQueue:0 completion:v7];
  _Block_release(v7);
}

void sub_23D6BD9AC(id a1, char a2, const char *a3, uint64_t (*a4)(void), const char *a5)
{
  if ((a2 & 1) == 0)
  {
    if (qword_2814FB9F0 != -1)
    {
      swift_once();
    }

    v18 = sub_23D6C6018();
    __swift_project_value_buffer(v18, qword_2814FB9F8);

    oslog = sub_23D6C5FF8();
    v19 = a4();
    sub_23D6BE1B4(a1, 0);
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = sub_23D6C6048();
      v24 = sub_23D6C16D4(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23D6B9000, oslog, v19, a5, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x23EEE8960](v21, -1, -1);
      MEMORY[0x23EEE8960](v20, -1, -1);
    }

    goto LABEL_10;
  }

  v7 = a1;
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v8 = sub_23D6C6018();
  __swift_project_value_buffer(v8, qword_2814FB9F8);
  v9 = a1;
  oslog = sub_23D6C5FF8();
  v10 = sub_23D6C6148();
  sub_23D6BE1B4(a1, 1);
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_23D6BE1C0();
    swift_allocError();
    *v13 = a1;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v15;
    *v12 = v15;
    _os_log_impl(&dword_23D6B9000, oslog, v10, a3, v11, 0xCu);
    sub_23D6BE10C(v12);
    MEMORY[0x23EEE8960](v12, -1, -1);
    MEMORY[0x23EEE8960](v11, -1, -1);
    sub_23D6BE1B4(a1, 1);
LABEL_10:

    return;
  }

  sub_23D6BE1B4(a1, 1);
}

id sub_23D6BDD08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXWatchRemoteScreenServiceAXUIService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23D6BDDDC(void *a1)
{
  v2 = v1;
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v4 = sub_23D6C6018();
  __swift_project_value_buffer(v4, qword_2814FB9F8);
  v5 = a1;
  v6 = sub_23D6C5FF8();
  v7 = sub_23D6C6148();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_23D6C16D4(0xD00000000000003CLL, 0x800000023D6C7B20, &v19);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    v11 = v5;
    _os_log_impl(&dword_23D6B9000, v6, v7, "[TWICE]: %s %@", v8, 0x16u);
    sub_23D6BE10C(v9);
    MEMORY[0x23EEE8960](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EEE8960](v10, -1, -1);
    MEMORY[0x23EEE8960](v8, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC27AXWatchRemoteScreenServices37AXWatchRemoteScreenServiceAXUIService__client);
  if (a1)
  {
    if (!v12)
    {
      return;
    }

    sub_23D6BE0C0();
    v13 = v5;
    v14 = v12;
    v15 = sub_23D6C6188();

    if ((v15 & 1) == 0)
    {
      return;
    }
  }

  else if (v12)
  {
    return;
  }

  if (_AXSTwiceRemoteScreenEnabled())
  {
    v16 = sub_23D6C5FF8();
    v17 = sub_23D6C6158();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23D6B9000, v16, v17, "[TWICE]: start Twice again after axuiserver disconnected", v18, 2u);
      MEMORY[0x23EEE8960](v18, -1, -1);
    }

    sub_23D6BD7C4();
  }
}

unint64_t sub_23D6BE0C0()
{
  result = qword_2814FB9D0;
  if (!qword_2814FB9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FB9D0);
  }

  return result;
}

uint64_t sub_23D6BE10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B08, &qword_23D6C6FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6BE194(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D6BE1A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_23D6BE1B4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_23D6BE1C0()
{
  result = qword_27E2E1B10;
  if (!qword_27E2E1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1B10);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D6BE260(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D6BE2A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D6BE320(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (a1 == 5)
  {
    v5 = 0x657373696D736964;
    v4 = 0xE900000000000064;
  }

  v6 = 0xD000000000000010;
  v7 = 0xE900000000000067;
  if (a1 == 3)
  {
    v7 = 0x800000023D6C7900;
  }

  else
  {
    v6 = 0x6E696D6165727473;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6F43656369766564;
  v9 = 0xEF64657463656E6ELL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v9 = 0x800000023D6C78E0;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701602409;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEF64657463656E6ELL;
        if (v10 != 0x6F43656369766564)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x800000023D6C78E0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701602409)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x657373696D736964)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x726F727265)
      {
LABEL_40:
        v13 = sub_23D6C6268();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000023D6C7900;
    if (v10 != 0xD000000000000010)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE900000000000067;
    if (v10 != 0x6E696D6165727473)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_23D6BE560()
{
  sub_23D6C62B8();
  sub_23D6C6088();

  return sub_23D6C62D8();
}

uint64_t AXTwiceBluetoothWifiError.hashValue.getter()
{
  v1 = *v0;
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](v1);
  return sub_23D6C62D8();
}

uint64_t sub_23D6BE718()
{
  v1 = *v0;
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](v1);
  return sub_23D6C62D8();
}

uint64_t sub_23D6BE78C()
{
  v1 = *v0;
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](v1);
  return sub_23D6C62D8();
}

uint64_t AXTwiceCompanionState.AXTwiceCompanionEvent.stringDescription.getter()
{
  sub_23D6BEB50(v0, &v8);
  if (v17 <= 2u)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        sub_23D6BEB88(&v8);
        return 0x4565727574736567;
      }

      else
      {
        sub_23D6BEBB8(&v13);
        sub_23D6BEBB8(&v9);
        return 0x6E6F697463417861;
      }
    }

    else
    {
      sub_23D6BEB88(&v8);
      return 0x6576456863756F74;
    }
  }

  else
  {
    v1 = v8;
    if (v17 <= 4u)
    {
      if (v17 == 3)
      {
        sub_23D6BEB88(&v8);
        return 0x6465766965636572;
      }

      v7 = 0;
      sub_23D6C6208();
      MEMORY[0x23EEE8200](0xD000000000000010, 0x800000023D6C7BF0);
      sub_23D6C6228();
      return v7;
    }

    if (v17 == 5)
    {
      sub_23D6C6208();

      v7 = 0xD00000000000001BLL;
      if (v1)
      {
        v3 = 0x64656B636F6CLL;
      }

      else
      {
        v3 = 0x64656B636F6C6E75;
      }

      if (v1)
      {
        v4 = 0xE600000000000000;
      }

      else
      {
        v4 = 0xE800000000000000;
      }

      MEMORY[0x23EEE8200](v3, v4);

      return v7;
    }

    v5 = v13 | v12 | v11;
    if (v15 | v16 | v8 | v14 | v5 | v10 | v9)
    {
      v6 = v15 | v16 | v14 | v5 | v10 | v9;
      if (v8 != 1 || v6)
      {
        if (v8 != 2 || v6)
        {
          if (v8 != 3 || v6)
          {
            if (v8 != 4 || v6)
            {
              if (v8 == 5 && !v6)
              {
                return 0xD000000000000017;
              }

              result = 0x5841657461647075;
              if (v8 == 6 && !v6)
              {
                return 0xD000000000000017;
              }
            }

            else
            {
              return 0xD00000000000001DLL;
            }
          }

          else
          {
            return 0xD000000000000014;
          }
        }

        else
        {
          return 0xD000000000000012;
        }
      }

      else
      {
        return 0x754A656369766564;
      }
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  return result;
}

uint64_t sub_23D6BEBB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B20, &qword_23D6C70C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AXWatchRemoteScreenServices::AXTwiceCompanionState_optional __swiftcall AXTwiceCompanionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D6C6248();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D6BEC9C()
{
  *v0;
  *v0;
  *v0;
  sub_23D6C6088();
}

void sub_23D6BEDCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0x657373696D736964;
  v6 = 0xE500000000000000;
  if (v2 == 5)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v5 = 0x726F727265;
  }

  v7 = 0xD000000000000010;
  v8 = 0xE900000000000067;
  if (v2 == 3)
  {
    v8 = 0x800000023D6C7900;
  }

  else
  {
    v7 = 0x6E696D6165727473;
  }

  if (*v1 > 4u)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  v9 = 0xEF64657463656E6ELL;
  v10 = 0x6F43656369766564;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x800000023D6C78E0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v8;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23D6BEEC4()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x657373696D736964;
  if (v1 != 5)
  {
    v3 = 0x726F727265;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E696D6165727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F43656369766564;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23D6BEFB0()
{
  result = qword_27E2E1B28;
  if (!qword_27E2E1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1B28);
  }

  return result;
}

unint64_t sub_23D6BF008()
{
  result = qword_27E2E1B30;
  if (!qword_27E2E1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1B30);
  }

  return result;
}

unint64_t sub_23D6BF05C(uint64_t a1)
{
  result = sub_23D6BF084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23D6BF084()
{
  result = qword_27E2E1B38;
  if (!qword_27E2E1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXTwiceBluetoothWifiError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXTwiceBluetoothWifiError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AXTwiceInternalError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AXTwiceInternalError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23D6BF2DC(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_23D6BF2F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AXTwiceCompanionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXTwiceCompanionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_27AXWatchRemoteScreenServices21AXTwiceCompanionStateO0eF5EventO(uint64_t a1)
{
  if ((*(a1 + 72) & 7u) <= 5)
  {
    return *(a1 + 72) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23D6BF4E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 73))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 72);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D6BF51C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_23D6BF56C(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 72) = a2;
  return result;
}

id sub_23D6BF8C0()
{
  result = [objc_allocWithZone(type metadata accessor for AXTwiceRemoteScreenMessenger()) init];
  qword_27E2E1B40 = result;
  return result;
}

id static AXTwiceRemoteScreenMessenger.sharedInstance.getter()
{
  if (qword_27E2E1908 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2E1B40;

  return v1;
}

uint64_t AXTwiceRemoteScreenMessenger.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AXTwiceRemoteScreenMessenger.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC27AXWatchRemoteScreenServices28AXTwiceRemoteScreenMessenger_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_23D6BFBA0;
}

void sub_23D6BFBA0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id AXTwiceRemoteScreenMessenger.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    [result deregisterForIncomingData_];

    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AXTwiceRemoteScreenMessenger.cleanup()()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    [v1 deregisterForIncomingData_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXTwiceRemoteScreenMessenger.reconnectToAXUIServerIfNeeded()()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 containsClient_];

  if (v4)
  {
    return;
  }

  v5 = [v1 sharedInstance];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 registerForIncomingData_];

  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v7 = sub_23D6C6018();
  __swift_project_value_buffer(v7, qword_2814FB9F8);
  oslog = sub_23D6C5FF8();
  v8 = sub_23D6C6158();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D6C16D4(0xD00000000000001FLL, 0x800000023D6C7F10, &v12);
    _os_log_impl(&dword_23D6B9000, oslog, v8, "[TWICE] %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EEE8960](v10, -1, -1);
    MEMORY[0x23EEE8960](v9, -1, -1);
  }

  else
  {
  }
}

Swift::Bool __swiftcall AXTwiceRemoteScreenMessenger.isDeviceConnected()()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    goto LABEL_22;
  }

  v1 = v0;
  v2 = [v0 connectedDevices];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B50, &qword_23D6C74B0);
    v3 = sub_23D6C6118();

    v4 = sub_23D6C029C(v3);

    if (v4)
    {
      v5 = *(v4 + 16);
      if (!v5 || (v0 = _AXSTwiceRemoteScreenPlatform()) != 0)
      {
LABEL_6:
        v6 = 0;
LABEL_7:

        goto LABEL_9;
      }

      v7 = 0;
      v8 = *MEMORY[0x277CE6A60];
      while (v7 < *(v4 + 16))
      {
        v9 = *(v4 + 32 + 8 * v7);
        v10 = sub_23D6C6068();
        v12 = v11;
        if (*(v9 + 16) && (v13 = v10, , v14 = sub_23D6C1C08(v13, v12), v16 = v15, , (v16 & 1) != 0))
        {
          v17 = (*(v9 + 56) + 16 * v14);
          v19 = *v17;
          v18 = v17[1];

          if (qword_2814FB9E0 != -1)
          {
            swift_once();
          }

          v20 = _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC22isPairedGizmoSupported8deviceIDSbSS_tF_0();

          if (v20)
          {
            v6 = 1;
            goto LABEL_7;
          }
        }

        else
        {
        }

        if (v5 == ++v7)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return v0;
    }
  }

  v6 = 0;
LABEL_9:
  LOBYTE(v0) = v6;
  return v0;
}

uint64_t sub_23D6C029C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_23D6C1E44(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v9 = *i;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B50, &qword_23D6C74B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1D00, &qword_23D6C75E8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23D6C1E44((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void AXTwiceRemoteScreenMessenger.sendData(_:)()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_23D6C5F68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D6C0488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CB8, &qword_23D6C75A0);
    v2 = sub_23D6C6238();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B50, &qword_23D6C74B0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_23D6C2ACC(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_23D6C2ACC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_23D6C61C8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_23D6C2ACC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_23D6C0754(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CE8, &qword_23D6C75D0);
    v2 = sub_23D6C6238();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_23D6C2ADC(*(a1 + 48) + 40 * v15, v27);
        sub_23D6C2870(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_23D6C2ADC(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_23D6C2B38(v24, &qword_27E2E1CF0, &qword_23D6C75D8);

          goto LABEL_23;
        }

        sub_23D6C2870(v25 + 8, v23);
        sub_23D6C2B38(v24, &qword_27E2E1CF0, &qword_23D6C75D8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_23D6C1C08(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Void __swiftcall AXTwiceRemoteScreenMessenger.receiveMessage(_:)(Swift::OpaquePointer a1)
{
  v2 = *MEMORY[0x277CE6A70];
  v26 = sub_23D6C6068();
  sub_23D6C61E8();
  if (!*(a1._rawValue + 2))
  {
    goto LABEL_14;
  }

  v3 = sub_23D6C1C80(v29);
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_23D6C2870(*(a1._rawValue + 7) + 32 * v3, v30);
  sub_23D6C281C(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B50, &qword_23D6C74B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_23D6C61E8();
  if (!*(v26 + 16) || (v5 = sub_23D6C1C80(v29), (v6 & 1) == 0))
  {

LABEL_14:
    sub_23D6C281C(v29);
    goto LABEL_15;
  }

  sub_23D6C2870(*(v26 + 56) + 32 * v5, v30);
  sub_23D6C281C(v29);

  if (swift_dynamicCast())
  {
    if (qword_2814FB9F0 != -1)
    {
      swift_once();
    }

    v7 = sub_23D6C6018();
    __swift_project_value_buffer(v7, qword_2814FB9F8);

    v8 = sub_23D6C5FF8();
    v9 = sub_23D6C6158();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29[0] = v11;
      *v10 = 136315138;
      v12 = sub_23D6C6048();
      v14 = sub_23D6C16D4(v12, v13, v29);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23D6B9000, v8, v9, "[TWICE] Receive message: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x23EEE8960](v11, -1, -1);
      MEMORY[0x23EEE8960](v10, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = sub_23D6C6028();

LABEL_25:
      [v16 twiceRemoteScreenReceiveMessage_];

      swift_unknownObjectRelease();
      return;
    }

    return;
  }

LABEL_15:
  v18 = *MEMORY[0x277CE6A50];
  v27 = sub_23D6C6068();
  v28 = v19;
  sub_23D6C61E8();
  if (!*(a1._rawValue + 2) || (v20 = sub_23D6C1C80(v29), (v21 & 1) == 0))
  {
    sub_23D6C281C(v29);
LABEL_20:
    v22 = *MEMORY[0x277CE6A68];
    sub_23D6C6068();
    sub_23D6C61E8();
    if (!*(a1._rawValue + 2) || (v23 = sub_23D6C1C80(v29), (v24 & 1) == 0))
    {
      sub_23D6C281C(v29);
      return;
    }

    sub_23D6C2870(*(a1._rawValue + 7) + 32 * v23, v30);
    sub_23D6C281C(v29);
    if (!swift_dynamicCast())
    {
      return;
    }

    goto LABEL_23;
  }

  sub_23D6C2870(*(a1._rawValue + 7) + 32 * v20, v30);
  sub_23D6C281C(v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_23D6C28CC(v27, v28);
LABEL_23:
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v16 = v25;
    v17 = sub_23D6C6028();
    goto LABEL_25;
  }
}

Swift::Void __swiftcall AXTwiceRemoteScreenMessenger.didReceiveIncomingData(_:)(Swift::OpaquePointer_optional a1)
{
  if (a1.value._rawValue)
  {
    AXTwiceRemoteScreenMessenger.receiveMessage(_:)(a1.value);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXTwiceRemoteScreenMessenger.connectedDevicesDidChange(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D6C6018();
  __swift_project_value_buffer(v2, qword_2814FB9F8);

  v3 = sub_23D6C5FF8();
  v4 = sub_23D6C6148();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_23D6C16D4(0xD00000000000001DLL, 0x800000023D6C7F50, v18);
    *(v5 + 12) = 2080;
    if (rawValue)
    {

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B50, &qword_23D6C74B0);
      v8 = MEMORY[0x23EEE8290](rawValue, v7);
      v10 = sub_23D6C16D4(v8, v9, v18);

      *(v5 + 14) = v10;
      _os_log_impl(&dword_23D6B9000, v3, v4, "[TWICE] %s %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE8960](v6, -1, -1);
      MEMORY[0x23EEE8960](v5, -1, -1);

      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (!rawValue)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!rawValue[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B58, &qword_23D6C74B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23D6C6D70;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x800000023D6C7F30;
    v12 = sub_23D6C21B8(&unk_284FB5C50);
    sub_23D6C2B38(&unk_284FB5C70, &qword_27E2E1B60, &qword_23D6C74C0);
    *(inited + 48) = v12;
    v13 = sub_23D6C22CC(inited, &qword_27E2E1CC0, &qword_23D6C75A8);
    swift_setDeallocating();
    sub_23D6C2B38(inited + 32, &qword_27E2E1B68, &qword_23D6C74C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B70, &qword_23D6C74D0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_23D6C6D70;
    v15 = *MEMORY[0x277CE6A70];
    v18[0] = sub_23D6C6068();
    v18[1] = v16;
    sub_23D6C61E8();
    *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B78, &qword_23D6C74D8);
    *(v14 + 72) = v13;
    v17 = sub_23D6C209C(v14);
    swift_setDeallocating();
    sub_23D6C2B38(v14 + 32, &unk_27E2E1B80, &qword_23D6C74E0);
    AXTwiceRemoteScreenMessenger.receiveMessage(_:)(v17);
  }
}

Swift::Void __swiftcall AXTwiceRemoteScreenMessenger.serverConnectionWasInterrupted()()
{
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_23D6C6018();
  __swift_project_value_buffer(v0, qword_2814FB9F8);
  v1 = sub_23D6C5FF8();
  v2 = sub_23D6C6148();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_23D6C16D4(0xD000000000000020, 0x800000023D6C7F70, &v5);
    _os_log_impl(&dword_23D6B9000, v1, v2, "[TWICE] %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x23EEE8960](v4, -1, -1);
    MEMORY[0x23EEE8960](v3, -1, -1);
  }

  if (_AXSTwiceRemoteScreenEnabled())
  {

    AXTwiceRemoteScreenMessenger.reconnectToAXUIServerIfNeeded()();
  }
}

uint64_t sub_23D6C16D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D6C17A0(v11, 0, 0, 1, a1, a2);
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
    sub_23D6C2870(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23D6C17A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D6C18AC(a5, a6);
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
    result = sub_23D6C6218();
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

uint64_t sub_23D6C18AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D6C18F8(a1, a2);
  sub_23D6C1A28(&unk_284FB5B60);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D6C18F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_23D6C408C(v5, 0);
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

  result = sub_23D6C6218();
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
        v10 = sub_23D6C60A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D6C408C(v10, 0);
        result = sub_23D6C61F8();
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

uint64_t sub_23D6C1A28(uint64_t result)
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

  result = sub_23D6C1B14(result, v12, 1, v3);
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

char *sub_23D6C1B14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E1D10, &unk_23D6C7700);
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

unint64_t sub_23D6C1C08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D6C62B8();
  sub_23D6C6088();
  v6 = sub_23D6C62D8();

  return sub_23D6C1CC4(a1, a2, v6);
}

unint64_t sub_23D6C1C80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D6C61C8();

  return sub_23D6C1D7C(a1, v5);
}

unint64_t sub_23D6C1CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23D6C6268())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23D6C1D7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D6C2ADC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEE8340](v9, a1);
      sub_23D6C281C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_23D6C1E44(void *a1, int64_t a2, char a3)
{
  result = sub_23D6C1E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23D6C1E64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1D08, &unk_23D6C75F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1D00, &qword_23D6C75E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23D6C1F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CB0, &qword_23D6C7598);
    v3 = sub_23D6C6238();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23D6C1C08(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D6C209C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CB8, &qword_23D6C75A0);
    v3 = sub_23D6C6238();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D6C2A5C(v4, v13);
      result = sub_23D6C1C80(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23D6C2ACC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D6C21B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CC8, &qword_23D6C75B0);
    v3 = sub_23D6C6238();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23D6C1C08(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D6C22CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23D6C6238();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_23D6C1C08(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id _s27AXWatchRemoteScreenServices07AXTwicebC9MessengerC11sendMessageySSSgSDys11AnyHashableVypGF_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CD0, &qword_23D6C75B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6C6D70;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x800000023D6C7F30;
  *(inited + 48) = a1;

  v3 = sub_23D6C22CC(inited, &qword_27E2E1CF8, &qword_23D6C75E0);
  swift_setDeallocating();
  sub_23D6C2B38(inited + 32, &qword_27E2E1CD8, &qword_23D6C75C0);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  sub_23D6C0488(v3);

  v6 = sub_23D6C6028();

  v7 = [v5 publishDirectIDSMessage_];

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = sub_23D6C6038();

  v9 = sub_23D6C0754(v8);

  if (v9)
  {
    if (!*(v9 + 16) || (v10 = sub_23D6C1C08(0x6567617373656DLL, 0xE700000000000000), (v11 & 1) == 0))
    {
LABEL_15:

      goto LABEL_16;
    }

    v12 = *(*(v9 + 56) + 8 * v10);
    swift_unknownObjectRetain();

    v29[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1CE0, &qword_23D6C75C8);
    if (swift_dynamicCast())
    {
      if (*(v30 + 16))
      {
        v13 = sub_23D6C1C08(0x696669746E656469, 0xEA00000000007265);
        if (v14)
        {
          v15 = *(*(v30 + 56) + 8 * v13);
          swift_unknownObjectRetain();

          v30 = v15;
          v16 = swift_dynamicCast();
          if (v16)
          {
            v7 = v29[0];
          }

          else
          {
            v7 = 0;
          }

          if (v16)
          {
            v17 = v29[1];
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_18;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = 0;
LABEL_17:
  v17 = 0;
LABEL_18:
  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v18 = sub_23D6C6018();
  __swift_project_value_buffer(v18, qword_2814FB9F8);

  v19 = sub_23D6C5FF8();
  v20 = sub_23D6C6158();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[0] = v22;
    *v21 = 136315394;
    v23 = sub_23D6C6048();
    v25 = sub_23D6C16D4(v23, v24, v29);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    if (v17)
    {
      v26 = v7;
    }

    else
    {
      v26 = 0x6E776F6E6B6E75;
    }

    if (v17)
    {
      v27 = v17;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v28 = sub_23D6C16D4(v26, v27, v29);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_23D6B9000, v19, v20, "[TWICE] Publish message: %s, with identifier %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE8960](v22, -1, -1);
    MEMORY[0x23EEE8960](v21, -1, -1);
  }

  return v7;
}

uint64_t sub_23D6C2870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D6C28CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for AXDeviceRemoteScreenUtil.AXWatchRemoteScreenFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AXDeviceRemoteScreenUtil.AXWatchRemoteScreenFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23D6C2A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E1B80, &qword_23D6C74E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23D6C2ACC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23D6C2B38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_23D6C2BA8()
{
  result = [objc_allocWithZone(type metadata accessor for AXDeviceRemoteScreenUtil()) init];
  qword_2814FB9E8 = result;
  return result;
}

id AXDeviceRemoteScreenUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXDeviceRemoteScreenUtil.sharedInstance.getter()
{
  if (qword_2814FB9E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2814FB9E8;

  return v1;
}

uint64_t AXDeviceRemoteScreenUtil.caSessionIntervalEvent.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent);
  v2 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent + 8);

  return v1;
}

uint64_t AXDeviceRemoteScreenUtil.caSessionIntervalKey.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalKey);
  v2 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalKey + 8);

  return v1;
}

uint64_t AXDeviceRemoteScreenUtil.caErrorEvent.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent);
  v2 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent + 8);

  return v1;
}

uint64_t AXDeviceRemoteScreenUtil.caErrorKey.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorKey);
  v2 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorKey + 8);

  return v1;
}

uint64_t AXDeviceRemoteScreenUtil.caInactiveEvent.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent);
  v2 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent + 8);

  return v1;
}

id sub_23D6C2F00(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_23D6C6058();

  return v6;
}

uint64_t AXDeviceRemoteScreenUtil.caInactiveKey.getter()
{
  v1 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveKey);
  v2 = *(v0 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveKey + 8);

  return v1;
}

uint64_t sub_23D6C2FA0()
{
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](0);
  return sub_23D6C62D8();
}

uint64_t sub_23D6C300C()
{
  sub_23D6C62B8();
  MEMORY[0x23EEE8430](0);
  return sub_23D6C62D8();
}

Swift::Bool __swiftcall AXDeviceRemoteScreenUtil.isTwiceFeatureOn()()
{
  v2[3] = &type metadata for AXDeviceRemoteScreenUtil.AXWatchRemoteScreenFeatureFlags;
  v2[4] = sub_23D6C4E9C();
  v0 = sub_23D6C5FE8();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

Swift::String __swiftcall AXDeviceRemoteScreenUtil.localizedString(key:)(Swift::String key)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_23D6C6058();
  v4 = sub_23D6C6058();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_23D6C6068();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void AXDeviceRemoteScreenUtil.logSessionInterval(beforeDate:afterDate:)()
{
  v1 = v0;
  sub_23D6C5F78();
  v3 = v2;
  sub_23D6C5F78();
  v5 = v3 - v4;
  v6 = *&v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent];
  v7 = *&v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent + 8];
  v8 = sub_23D6C6058();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v5;
  v12[4] = sub_23D6C5CEC;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23D6BC530;
  v12[3] = &block_descriptor_1;
  v10 = _Block_copy(v12);
  v11 = v1;

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

unint64_t sub_23D6C360C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1A68, &unk_23D6C6E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6C6D70;
  v3 = *(a1 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalKey + 8);
  *(inited + 32) = *(a1 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalKey);
  *(inited + 40) = v3;

  *(inited + 48) = sub_23D6C6138();
  v4 = sub_23D6C1F98(inited);
  swift_setDeallocating();
  sub_23D6C2B38(inited + 32, &qword_27E2E1A78, &qword_23D6C7710);
  return v4;
}

Swift::Void __swiftcall AXDeviceRemoteScreenUtil.logSessionError(errorName:)(Swift::String errorName)
{
  object = errorName._object;
  countAndFlagsBits = errorName._countAndFlagsBits;
  v4 = *&v1[OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent];
  v5 = *&v1[OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent + 8];
  v6 = sub_23D6C6058();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = countAndFlagsBits;
  v7[4] = object;
  v10[4] = sub_23D6C5D10;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23D6BC530;
  v10[3] = &block_descriptor_6_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  AnalyticsSendEventLazy();
  _Block_release(v8);
}

unint64_t sub_23D6C39E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1A68, &unk_23D6C6E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6C6D70;
  v3 = *(a1 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorKey + 8);
  *(inited + 32) = *(a1 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorKey);
  *(inited + 40) = v3;

  *(inited + 48) = sub_23D6C6058();
  v4 = sub_23D6C1F98(inited);
  swift_setDeallocating();
  sub_23D6C2B38(inited + 32, &qword_27E2E1A78, &qword_23D6C7710);
  return v4;
}

Swift::Void __swiftcall AXDeviceRemoteScreenUtil.logInactiveSession()()
{
  v1 = *&v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent];
  v2 = *&v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent + 8];
  v3 = sub_23D6C6058();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_23D6C5D1C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23D6BC530;
  v7[3] = &block_descriptor_12;
  v5 = _Block_copy(v7);
  v6 = v0;

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

unint64_t sub_23D6C3CB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1A68, &unk_23D6C6E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D6C6D70;
  v3 = *(a1 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveKey);
  v4 = *(a1 + OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveKey + 8);
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  sub_23D6C5E44();

  *(inited + 48) = sub_23D6C6168();
  v5 = sub_23D6C1F98(inited);
  swift_setDeallocating();
  sub_23D6C2B38(inited + 32, &qword_27E2E1A78, &qword_23D6C7710);
  return v5;
}

id AXDeviceRemoteScreenUtil.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalEvent];
  *v2 = 0xD00000000000003FLL;
  *(v2 + 1) = 0x800000023D6C80F0;
  v3 = &v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caSessionIntervalKey];
  *v3 = 0x6C61767265746E69;
  *(v3 + 1) = 0xE800000000000000;
  v4 = &v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorEvent];
  *v4 = 0xD000000000000034;
  *(v4 + 1) = 0x800000023D6C8130;
  v5 = &v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caErrorKey];
  *v5 = 0x726F727265;
  *(v5 + 1) = 0xE500000000000000;
  v6 = &v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveEvent];
  *v6 = 0xD000000000000037;
  *(v6 + 1) = 0x800000023D6C8170;
  v7 = &v0[OBJC_IVAR___AXDeviceRemoteScreenUtil_caInactiveKey];
  *v7 = 0x6576697463616E69;
  *(v7 + 1) = 0xE800000000000000;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AXDeviceRemoteScreenUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_23D6C408C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E1D10, &unk_23D6C7700);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_23D6C4100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23D6C60F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_23D6C468C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23D6C6218();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_23D6C468C()
{
  v0 = sub_23D6C6108();
  v4 = sub_23D6C470C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_23D6C470C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_23D6C6078();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_23D6C6198();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_23D6C408C(v9, 0);
  v12 = sub_23D6C4864(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_23D6C6078();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_23D6C6218();
LABEL_4:

  return sub_23D6C6078();
}

unint64_t sub_23D6C4864(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_23D6C4A84(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23D6C60D8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_23D6C6218();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_23D6C4A84(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_23D6C60B8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_23D6C4A84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23D6C60E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EEE8230](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC22isPairedGizmoSupported8deviceIDSbSS_tF_0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1D68, &qword_23D6C7718) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v2 = &v21 - v1;
  v3 = sub_23D6C5FD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_23D6C5FA8();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_23D6C2B38(v2, &qword_27E2E1D68, &qword_23D6C7718);
  }

  else
  {
    (*(v4 + 32))(v10, v2, v3);
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = sub_23D6C5FB8();
    v14 = [v12 deviceForBluetoothID_];

    if (v14)
    {
      v15 = AX_NRDEVICECAPABILITY_MULTIBAND_WIFI();
      sub_23D6C5FC8();

      v16 = sub_23D6C5FB8();
      v17 = *(v4 + 8);
      v17(v8, v3);
      v18 = [v14 supportsCapability_];

      if (v18)
      {
        if ([v14 valueForProperty_])
        {
          sub_23D6C61B8();
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        v25[0] = v23;
        v25[1] = v24;
        if (*(&v24 + 1))
        {
          sub_23D6C5E44();
          if (swift_dynamicCast())
          {
            v19 = v22;
            v20 = [v22 BOOLValue];

            v17(v10, v3);
            return (v20 & 1) == 0;
          }
        }

        else
        {

          sub_23D6C2B38(v25, &qword_27E2E1B20, &qword_23D6C70C0);
        }

        v17(v10, v3);
        return 1;
      }

      v17(v10, v3);
    }

    else
    {
      (*(v4 + 8))(v10, v3);
    }
  }

  return 0;
}

unint64_t sub_23D6C4E9C()
{
  result = qword_27E2E1D50;
  if (!qword_27E2E1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1D50);
  }

  return result;
}

uint64_t _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC20localizedStingString3keyS2S_tF_0()
{
  type metadata accessor for AXDeviceRemoteScreenUtil();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23D6C6058();
  v3 = sub_23D6C6058();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_23D6C6068();
  return v5;
}

unsigned __int8 *sub_23D6C4FD0()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    goto LABEL_100;
  }

  v1 = result;
  v2 = [result getActivePairedDevice];

  if (!v2)
  {
    return v2;
  }

  if ([v2 valueForProperty_])
  {
    sub_23D6C61B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    sub_23D6C5E44();
    if (swift_dynamicCast())
    {
      v3 = [v32 BOOLValue];

      if (v3)
      {
        goto LABEL_91;
      }
    }
  }

  else
  {
    sub_23D6C2B38(&v35, &qword_27E2E1B20, &qword_23D6C70C0);
  }

  if ([v2 valueForProperty_])
  {
    sub_23D6C61B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    sub_23D6C5E44();
    if (swift_dynamicCast())
    {
      v4 = [v32 BOOLValue];

      if (v4)
      {
LABEL_91:

        return 0;
      }
    }
  }

  else
  {
    sub_23D6C2B38(&v35, &qword_27E2E1B20, &qword_23D6C70C0);
  }

  if ([v2 valueForProperty_])
  {
    sub_23D6C61B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    sub_23D6C2B38(&v35, &qword_27E2E1B20, &qword_23D6C70C0);
    return v2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return v2;
  }

  v35 = v32;
  sub_23D6C5DF0();
  v5 = sub_23D6C61A8();

  if (!v5[2] || ((v7 = v5[4], v6 = v5[5], , result = , v8 = HIBYTE(v6) & 0xF, v9 = v7 & 0xFFFFFFFFFFFFLL, (v6 & 0x2000000000000000) != 0) ? (v10 = HIBYTE(v6) & 0xF) : (v10 = v7 & 0xFFFFFFFFFFFFLL), !v10))
  {

    return v2;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v12 = sub_23D6C4100(v7, v6, 10);
    v30 = v31;
    goto LABEL_89;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    *&v35 = v7;
    *(&v35 + 1) = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v12 = 0;
          v22 = &v35 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v8)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

      goto LABEL_99;
    }

    if (v7 != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = &v35;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = &v35 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }
  }

  else
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_23D6C6218();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v12 = 0;
          if (result)
          {
            v19 = result + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_87;
              }

              v21 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_87;
              }

              v12 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_87;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_79;
        }

        goto LABEL_87;
      }

      goto LABEL_98;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v12 = 0;
        if (result)
        {
          while (1)
          {
            v25 = *result - 48;
            if (v25 > 9)
            {
              goto LABEL_87;
            }

            v26 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_87;
            }

            v12 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              goto LABEL_87;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_79;
      }

LABEL_87:
      v12 = 0;
      LOBYTE(v8) = 1;
      goto LABEL_88;
    }

    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v13 = result + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_87;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_87;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_87;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_79:
        LOBYTE(v8) = 0;
LABEL_88:
        v30 = v8;
LABEL_89:

        if ((v30 & 1) != 0 || v12 > 8)
        {
          return v2;
        }

        goto LABEL_91;
      }

      goto LABEL_87;
    }

    __break(1u);
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC28isPairedGizmoHasStingSupportSbyF_0()
{
  v0 = sub_23D6C5FD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D6C4FD0();
  if (!v5)
  {
    if (qword_2814FB9F0 != -1)
    {
      swift_once();
    }

    v15 = sub_23D6C6018();
    __swift_project_value_buffer(v15, qword_2814FB9F8);
    v6 = sub_23D6C5FF8();
    v16 = sub_23D6C6158();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23D6B9000, v6, v16, "[TWICE] currentPairedGizmo is nil", v17, 2u);
      MEMORY[0x23EEE8960](v17, -1, -1);
    }

    goto LABEL_12;
  }

  v6 = v5;
  v7 = AX_NRDEVICECAPABILITY_STING();
  sub_23D6C5FC8();

  v8 = sub_23D6C5FB8();
  (*(v1 + 8))(v4, v0);
  v9 = [v6 supportsCapability:v8];

  if (!v9)
  {
LABEL_12:

    return 0;
  }

  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v10 = sub_23D6C6018();
  __swift_project_value_buffer(v10, qword_2814FB9F8);
  v11 = sub_23D6C5FF8();
  v12 = sub_23D6C6158();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23D6B9000, v11, v12, "[TWICE] currentPairedGizmo is sting supported", v13, 2u);
    MEMORY[0x23EEE8960](v13, -1, -1);
  }

  return 1;
}

uint64_t _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC22isPairedGizmoSupportedSbyF_0()
{
  v0 = sub_23D6C5FD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D6C4FD0();
  if (!v5)
  {
    if (qword_2814FB9F0 != -1)
    {
      swift_once();
    }

    v15 = sub_23D6C6018();
    __swift_project_value_buffer(v15, qword_2814FB9F8);
    v6 = sub_23D6C5FF8();
    v16 = sub_23D6C6158();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23D6B9000, v6, v16, "[TWICE] currentPairedGizmo is nil", v17, 2u);
      MEMORY[0x23EEE8960](v17, -1, -1);
    }

    goto LABEL_17;
  }

  v6 = v5;
  v7 = AX_NRDEVICECAPABILITY_MULTIBAND_WIFI();
  sub_23D6C5FC8();

  v8 = sub_23D6C5FB8();
  (*(v1 + 8))(v4, v0);
  v9 = [v6 supportsCapability:v8];

  if (!v9)
  {
    if (qword_2814FB9F0 != -1)
    {
      swift_once();
    }

    v18 = sub_23D6C6018();
    __swift_project_value_buffer(v18, qword_2814FB9F8);
    v19 = sub_23D6C5FF8();
    v20 = sub_23D6C6158();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23D6B9000, v19, v20, "[TWICE] currentPairedGizmo is NOT multiband wifi", v21, 2u);
      MEMORY[0x23EEE8960](v21, -1, -1);
    }

LABEL_17:
    return 0;
  }

  if (qword_2814FB9F0 != -1)
  {
    swift_once();
  }

  v10 = sub_23D6C6018();
  __swift_project_value_buffer(v10, qword_2814FB9F8);
  v11 = sub_23D6C5FF8();
  v12 = sub_23D6C6158();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23D6B9000, v11, v12, "[TWICE] currentPairedGizmo is TWICE supported", v13, 2u);
    MEMORY[0x23EEE8960](v13, -1, -1);
  }

  return 1;
}

uint64_t _s27AXWatchRemoteScreenServices08AXDevicebC4UtilC15pairedGizmoNameSSSgyF_0()
{
  v0 = sub_23D6C4FD0();
  if (v0)
  {
    v1 = v0;
    if ([v0 valueForProperty_])
    {
      sub_23D6C61B8();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_23D6C2B38(v10, &qword_27E2E1B20, &qword_23D6C70C0);
    }
  }

  else
  {
    if (qword_2814FB9F0 != -1)
    {
      swift_once();
    }

    v2 = sub_23D6C6018();
    __swift_project_value_buffer(v2, qword_2814FB9F8);
    v3 = sub_23D6C5FF8();
    v4 = sub_23D6C6158();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23D6B9000, v3, v4, "[TWICE] currentPairedGizmo is nil", v5, 2u);
      MEMORY[0x23EEE8960](v5, -1, -1);
    }
  }

  return 0;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D6C5D10()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_23D6C39E8(v0[2]);
}

unint64_t sub_23D6C5D5C()
{
  result = qword_27E2E1D58;
  if (!qword_27E2E1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1D58);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23D6C5DF0()
{
  result = qword_27E2E1D60;
  if (!qword_27E2E1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E1D60);
  }

  return result;
}

unint64_t sub_23D6C5E44()
{
  result = qword_27E2E1A70;
  if (!qword_27E2E1A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E1A70);
  }

  return result;
}

void AXDisplayCornerRadiusWithMargin_cold_1()
{
  dlerror();
  abort_report_np();
  __getBluetoothManagerClass_block_invoke_cold_1();
}