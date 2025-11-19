void sub_23C0FCB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void NotificationCallback(uint64_t a1, uint64_t a2)
{
  v3 = _currentDevice;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 syncSettings];
    v6 = sharedBluetoothSettingsLogComponent();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2 == 1)
    {
      if (v7)
      {
        *v11 = 0;
        _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "User wants to disallow phonebook transfer", v11, 2u);
      }

      LOBYTE(v8) = 0;
    }

    else if (a2)
    {
      v8 = v5 >> 8;
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "User did not act on phonebook transfer privacy alert", v10, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "User wants to allow phonebook transfer", buf, 2u);
      }

      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_705);
      LOBYTE(v8) = 1;
    }

    [v4 setSyncSettings:v5 & 0xFFFF00FF | (v8 << 8) | 0x100000000];
    v9 = _currentDevice;
    _currentDevice = 0;
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NotificationCallback_cold_1();
    }
  }
}

void __NotificationCallback_block_invoke()
{
  [_currentControllerInstance forcePushDetailViewForDevice:_currentBTSDevice];
  v0 = _currentControllerInstance;
  _currentControllerInstance = 0;

  v1 = _currentBTSDevice;
  _currentBTSDevice = 0;
}

void sub_23C10E2B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_23C10E738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C10ED40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_23C111484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

id sharedBluetoothSettingsLogComponent()
{
  if (sharedBluetoothSettingsLogComponent_onceToken != -1)
  {
    sharedBluetoothSettingsLogComponent_cold_1();
  }

  v1 = sharedBluetoothSettingsLogComponent_sharedBTSLog;

  return v1;
}

uint64_t __sharedBluetoothSettingsLogComponent_block_invoke()
{
  sharedBluetoothSettingsLogComponent_sharedBTSLog = os_log_create("com.apple.bluetooth", "BluetoothSettings");

  return MEMORY[0x2821F96F8]();
}

uint64_t *OUTLINED_FUNCTION_1_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_23C115798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23C11B73C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23C1157C8()
{
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFA50, &qword_23C11F560);
  v1[4] = sub_23C115DA8();
  __swift_allocate_boxed_opaque_existential_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFA60, &qword_23C11F568);
  sub_23C115EB8();
  sub_23C11B76C();
  return MEMORY[0x23EEC7EB0](v1);
}

uint64_t sub_23C115870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_23C11B7AC();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20]();
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23C11B75C();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v43 = sub_23C11B60C();
  v45 = v13;

  v14 = [v11 bundleForClass_];
  v15 = sub_23C11B60C();
  v17 = v16;

  v49 = v15;
  v50 = v17;
  v40 = sub_23C11B84C();
  v19 = v18;
  v20 = [v11 bundleForClass_];
  v21 = sub_23C11B60C();
  v23 = v22;

  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  v26 = v25 == 0;
  if (v25)
  {
    v27 = 0xD000000000000021;
  }

  else
  {
    v27 = 0xD000000000000020;
  }

  if (v26)
  {
    v28 = "c-icon.bluetooth";
  }

  else
  {
    v28 = "GLOBAL_LINK_LEARNMORE";
  }

  v29 = a1 + OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported;
  v30 = *(a1 + OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported);
  if (*(v29 + 8) != 1)
  {
    swift_retain_n();
    sub_23C11B8AC();
    v35 = sub_23C11B77C();
    sub_23C11B6DC();

    sub_23C11B74C();
    swift_getAtKeyPath();
    sub_23C1166BC(v30, 0);
    (*(v41 + 8))(v9, v42);
    sub_23C1166BC(v30, 0);
    if (v49 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v49 = v40;
    v50 = v19;
    MEMORY[0x23EEC7E10](91, 0xE100000000000000);
    MEMORY[0x23EEC7E10](v21, v23);

    MEMORY[0x23EEC7E10](10333, 0xE200000000000000);
    MEMORY[0x23EEC7E10](v27, v28 | 0x8000000000000000);

    MEMORY[0x23EEC7E10](41, 0xE100000000000000);
    v36 = v44;
    sub_23C11B79C();
    v34 = v46;
    v32 = v48;
    v37 = v36;
    v33 = v47;
    (*(v46 + 32))(v48, v37, v47);
    v31 = 0;
    return (*(v34 + 56))(v32, v31, 1, v33);
  }

  if (v30)
  {
    goto LABEL_11;
  }

LABEL_9:

  v31 = 1;
  v33 = v47;
  v32 = v48;
  v34 = v46;
  return (*(v34 + 56))(v32, v31, 1, v33);
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

unint64_t sub_23C115DA8()
{
  result = qword_27E1EFA58;
  if (!qword_27E1EFA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EFA50, &qword_23C11F560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFA58);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_23C115EB8()
{
  result = qword_27E1EFA68;
  if (!qword_27E1EFA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EFA60, &qword_23C11F568);
    sub_23C115F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFA68);
  }

  return result;
}

unint64_t sub_23C115F3C()
{
  result = qword_27E1EFA70;
  if (!qword_27E1EFA70)
  {
    sub_23C11B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFA70);
  }

  return result;
}

uint64_t sub_23C115F94()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23C11B60C();

  return v2;
}

id sub_23C116108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = sub_23C11B7FC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(v5) initWithStyle:a1 reuseIdentifier:v8 specifier:a4];

  return v9;
}

id sub_23C116198(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = &v5[OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  if (a3)
  {
    v11 = sub_23C11B7FC();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_specifier_, a1, v11, a4);

  if (v12)
  {
  }

  return v12;
}

id sub_23C1162E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_23C11B7FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id sub_23C116364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  if (a3)
  {
    v8 = sub_23C11B7FC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v8);

  return v9;
}

id sub_23C1164FC(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_23C116540(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_23C11666C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C1166BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23C1166F0()
{
  v0 = sub_23C11B70C();
  __swift_allocate_value_buffer(v0, static Logger.btsDeeplink);
  __swift_project_value_buffer(v0, static Logger.btsDeeplink);
  return sub_23C11B6FC();
}

uint64_t Logger.btsDeeplink.unsafeMutableAddressor()
{
  if (qword_27E1EFC80 != -1)
  {
    swift_once();
  }

  v0 = sub_23C11B70C();

  return __swift_project_value_buffer(v0, static Logger.btsDeeplink);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.btsDeeplink.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1EFC80 != -1)
  {
    swift_once();
  }

  v2 = sub_23C11B70C();
  v3 = __swift_project_value_buffer(v2, static Logger.btsDeeplink);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_23C1168D4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D3FA50]);

  return [v0 init];
}

id sub_23C11690C()
{
  v0 = sub_23C11B7FC();
  v1 = NSClassFromString(v0);

  if (v1 && (swift_getObjCClassMetadata(), swift_dynamicCastTypeToObjCProtocolConditional()) && (sub_23C1169C8(), swift_dynamicCastMetatype()))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = MEMORY[0x277D3FA48];
  }

  return [objc_allocWithZone(ObjCClassFromMetadata) init];
}

unint64_t sub_23C1169C8()
{
  result = qword_27E1EFAE0;
  if (!qword_27E1EFAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EFAE0);
  }

  return result;
}

uint64_t sub_23C116A14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFAE8, &qword_23C11F5D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  *(swift_allocObject() + 16) = a1;
  sub_23C11B69C();
  sub_23C116CF4();
  v7 = a1;
  sub_23C11B7EC();
  sub_23C117994();
  sub_23C11B78C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23C116B78(uint64_t a1)
{
  v2 = *(*(sub_23C11B8EC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(*(sub_23C11B6CC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  [v4 setProperty:a1 forKey:*MEMORY[0x277D40038]];
  sub_23C11B8DC();
  sub_23C11B6BC();
  return sub_23C11B68C();
}

uint64_t sub_23C116CB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_23C116CF4()
{
  result = qword_27E1EFAF0;
  if (!qword_27E1EFAF0)
  {
    sub_23C11B69C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFAF0);
  }

  return result;
}

uint64_t sub_23C116D4C(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFB20, &qword_23C11F6D0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = sub_23C11B72C();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v6 = *(v5 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFB28, &qword_23C11F6D8) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = sub_23C11B5FC();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = sub_23C11B62C();
  v2[32] = v11;
  v12 = *(v11 - 8);
  v2[33] = v12;
  v13 = *(v12 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  sub_23C11B88C();
  v2[36] = sub_23C11B87C();
  v15 = sub_23C11B86C();
  v2[37] = v15;
  v2[38] = v14;

  return MEMORY[0x2822009F8](sub_23C116F80, v15, v14);
}

uint64_t sub_23C116F80()
{
  v83 = v0;
  v1 = v0[35];
  v2 = v0[22];
  sub_23C11B7CC();
  if (qword_27E1EFC80 != -1)
  {
    swift_once();
  }

  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = sub_23C11B70C();
  __swift_project_value_buffer(v7, static Logger.btsDeeplink);
  (*(v5 + 16))(v3, v4, v6);
  v8 = sub_23C11B6EC();
  v9 = sub_23C11B8BC();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[33];
  v12 = v0[34];
  v13 = v0[32];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = v78;
    *v14 = 136315138;
    v15 = sub_23C11B61C();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v12, v13);
    v19 = sub_23C117E8C(v15, v17, &v82);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_23C0F7000, v8, v9, "BluetoothSettings: Handle deepliink %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x23EEC8740](v78, -1, -1);
    MEMORY[0x23EEC8740](v14, -1, -1);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v12, v13);
  }

  v0[39] = v18;
  v20 = v0[35];
  v22 = v0[29];
  v21 = v0[30];
  v23 = v0[28];
  sub_23C11B5DC();
  if ((*(v21 + 48))(v23, 1, v22) == 1)
  {
    v79 = v18;
    v24 = v0[36];
    v25 = v0[28];

    sub_23C1186D8(v25, &qword_27E1EFB28, &qword_23C11F6D8);
    v26 = sub_23C11B6EC();
    v27 = sub_23C11B89C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23C0F7000, v26, v27, "Invalid URL early return", v28, 2u);
      MEMORY[0x23EEC8740](v28, -1, -1);
    }

    v29 = v0[35];
    v30 = v0[32];
    v31 = v0[33];
    v33 = v0[25];
    v32 = v0[26];
    v34 = v0[24];
    v36 = v0[21];
    v35 = v0[22];

    sub_23C11B7BC();
    sub_23C11B7DC();
    (*(v33 + 8))(v32, v34);
    v79(v29, v30);
LABEL_17:
    v71 = v0[34];
    v70 = v0[35];
    v72 = v0[31];
    v74 = v0[27];
    v73 = v0[28];
    v75 = v0[26];
    v76 = v0[23];

    v77 = v0[1];

    return v77();
  }

  v37 = v0[31];
  (*(v0[30] + 32))(v37, v0[28], v0[29]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFB30, &qword_23C11F6E0);
  inited = swift_initStackObject();
  v0[40] = inited;
  *(inited + 16) = xmmword_23C11F5B0;
  v39 = sub_23C118908();
  *(inited + 56) = &type metadata for HeadphoneSettingsDeeplinkHandler;
  *(inited + 64) = &off_284EE31D8;
  *(inited + 32) = v39;
  nullsub_1();
  *(inited + 96) = &type metadata for BluetoothSettingsDeeplinkHandler;
  *(inited + 104) = &off_284EE3178;
  *(swift_task_alloc() + 16) = v37;
  sub_23C1179F8(sub_23C118670, inited, (v0 + 16));

  v40 = v0[19];
  if (!v40)
  {
    v51 = v0[36];
    v52 = v0[24];
    v53 = v0[25];
    v54 = v0[23];

    sub_23C1186D8((v0 + 16), &qword_27E1EFB38, &qword_23C11F6E8);
    (*(v53 + 56))(v54, 1, 1, v52);
    v55 = v0[27];
    v56 = v0[24];
    v57 = v0[25];
    v58 = v0[22];
    v59 = v0[23];
    sub_23C11B7BC();
    if ((*(v57 + 48))(v59, 1, v56) != 1)
    {
      sub_23C1186D8(v0[23], &qword_27E1EFB20, &qword_23C11F6D0);
    }

    v60 = v0[39];
    v61 = v0[35];
    v62 = v0[32];
    v63 = v0[33];
    v64 = v0[30];
    v81 = v0[31];
    v65 = v0[29];
    v66 = v0[27];
    v68 = v0[24];
    v67 = v0[25];
    v69 = v0[21];
    sub_23C11B7DC();
    (*(v67 + 8))(v66, v68);
    v60(v61, v62);
    (*(v64 + 8))(v81, v65);
    goto LABEL_17;
  }

  v41 = v0[26];
  v42 = v0[22];
  v43 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_23C11B7BC();
  v44 = *(v43 + 16);
  v80 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  v0[41] = v46;
  *v46 = v0;
  v46[1] = sub_23C117608;
  v47 = v0[31];
  v48 = v0[26];
  v49 = v0[23];

  return v80(v49, v47, v48, v40, v43);
}

uint64_t sub_23C117608()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 192);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 304);
  v7 = *(v1 + 296);

  return MEMORY[0x2822009F8](sub_23C11778C, v7, v6);
}

uint64_t sub_23C11778C()
{
  v1 = v0[36];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];

  (*(v3 + 56))(v4, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  if (v5 == 1)
  {
    v9 = v0[22];
    v10 = v0[27];
    sub_23C11B7BC();
    if ((*(v7 + 48))(v8, 1, v6) != 1)
    {
      sub_23C1186D8(v0[23], &qword_27E1EFB20, &qword_23C11F6D0);
    }
  }

  else
  {
    (*(v7 + 32))(v0[27], v0[23], v0[24]);
  }

  v11 = v0[39];
  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[33];
  v15 = v0[30];
  v30 = v0[31];
  v16 = v0[29];
  v17 = v0[27];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[21];
  sub_23C11B7DC();
  (*(v18 + 8))(v17, v19);
  v11(v12, v13);
  (*(v15 + 8))(v30, v16);
  v22 = v0[34];
  v21 = v0[35];
  v23 = v0[31];
  v25 = v0[27];
  v24 = v0[28];
  v26 = v0[26];
  v27 = v0[23];

  v28 = v0[1];

  return v28();
}

unint64_t sub_23C117994()
{
  result = qword_27E1EFAF8;
  if (!qword_27E1EFAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EFAE8, &qword_23C11F5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFAF8);
  }

  return result;
}

uint64_t sub_23C1179F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_23C118824(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(v9);
      }

      if (v8)
      {
        return sub_23C118888(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23C117AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFAE8, &qword_23C11F5D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v9 - v4;
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_23C11B69C();
  sub_23C116CF4();
  v7 = v6;
  sub_23C11B7EC();
  sub_23C117994();
  sub_23C11B78C();
  return (*(v2 + 8))(v5, v1);
}

id sub_23C117C14@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D3FA50]) init];
  *a1 = result;
  return result;
}

uint64_t sub_23C117C80()
{
  sub_23C11B5EC();
  sub_23C117E38();
  v0 = sub_23C11B8FC();

  v2 = 0;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v0 + 40 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= *(v0 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v7 = *(v5 - 1);
    v6 = *v5;
    v5 += 2;
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C118434(0, v4[2] + 1, 1);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_23C118434((v9 > 1), v10 + 1, 1);
      }

      v4[2] = v10 + 1;
      v11 = &v4[2 * v10];
      v11[4] = v7;
      v11[5] = v6;
      goto LABEL_2;
    }
  }

  v12 = v4[2];
  if (v12 <= 1)
  {
    if (v12)
    {
      v13 = v4[4];
      v14 = v4[5];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0x4468746150627553;
  }

  return v13;
}

unint64_t sub_23C117E38()
{
  result = qword_27E1EFB00;
  if (!qword_27E1EFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFB00);
  }

  return result;
}

uint64_t sub_23C117E8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C117F58(v11, 0, 0, 1, a1, a2);
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
    sub_23C1187C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23C117F58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C118064(a5, a6);
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
    result = sub_23C11B93C();
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

uint64_t sub_23C118064(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C1180B0(a1, a2);
  sub_23C1181E0(&unk_284EE30D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23C1180B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_23C1182CC(v5, 0);
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

  result = sub_23C11B93C();
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
        v10 = sub_23C11B83C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C1182CC(v10, 0);
        result = sub_23C11B91C();
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

uint64_t sub_23C1181E0(uint64_t result)
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

  result = sub_23C118340(result, v12, 1, v3);
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

void *sub_23C1182CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1EFB40, &qword_23C11F6F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C118340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1EFB40, &qword_23C11F6F0);
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

char *sub_23C118434(char *a1, int64_t a2, char a3)
{
  result = sub_23C118560(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23C118458()
{
  result = qword_27E1EFB08;
  if (!qword_27E1EFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFB08);
  }

  return result;
}

uint64_t sub_23C1184FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EFAE8, &qword_23C11F5D0);
  sub_23C117994();
  return swift_getOpaqueTypeConformance2();
}

char *sub_23C118560(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFB18, &qword_23C11F6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23C118670(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 8))(v2, v3, v4) & 1;
}

uint64_t sub_23C1186D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23C1187C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C118824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C118888(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_23C118910()
{
  if (sub_23C117C80() == 0xD000000000000017 && 0x800000023C11F310 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_23C11B95C();
  }

  return v1 & 1;
}

uint64_t sub_23C118988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_23C11B70C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_23C11B88C();
  v3[8] = sub_23C11B87C();
  v8 = sub_23C11B86C();

  return MEMORY[0x2822009F8](sub_23C118A80, v8, v7);
}

uint64_t sub_23C118A80()
{
  v1 = v0[8];
  v2 = v0[3];

  if (sub_23C117C80() == 0xD000000000000017 && 0x800000023C11F310 == v3)
  {
  }

  else
  {
    v5 = sub_23C11B95C();

    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = sub_23C118908();
  v7 = sub_23C11690C();

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    [v8 reloadSpecifiers];

    goto LABEL_14;
  }

LABEL_11:
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = Logger.btsDeeplink.unsafeMutableAddressor();
  (*(v10 + 16))(v9, v12, v11);
  v13 = sub_23C11B6EC();
  v14 = sub_23C11B89C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23C0F7000, v13, v14, "Invalid URL early return", v15, 2u);
    MEMORY[0x23EEC8740](v15, -1, -1);
  }

  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];

  (*(v17 + 8))(v16, v18);
LABEL_14:
  v19 = v0[7];
  v20 = v0[4];
  v21 = v0[2];
  v22 = sub_23C11B72C();
  (*(*(v22 - 8) + 16))(v21, v20, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_23C118C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C118D48;

  return sub_23C118988(a1, a2, a3);
}

uint64_t sub_23C118D48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23C118E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_23C11B6CC();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = sub_23C11B5BC();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = sub_23C11B5FC();
  v4[29] = v11;
  v12 = *(v11 - 8);
  v4[30] = v12;
  v13 = *(v12 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v14 = sub_23C11B70C();
  v4[33] = v14;
  v15 = *(v14 - 8);
  v4[34] = v15;
  v16 = *(v15 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v17 = sub_23C11B72C();
  v4[37] = v17;
  v18 = *(v17 - 8);
  v4[38] = v18;
  v19 = *(v18 + 64) + 15;
  v4[39] = swift_task_alloc();
  sub_23C11B88C();
  v4[40] = sub_23C11B87C();
  v21 = sub_23C11B86C();
  v4[41] = v21;
  v4[42] = v20;

  return MEMORY[0x2822009F8](sub_23C1190E0, v21, v20);
}

uint64_t sub_23C1190E0()
{
  v118 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[19];
  v11 = v0[20];
  v13 = *(v2 + 16);
  v0[43] = v13;
  v0[44] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v113 = v13;
  v13(v1, v11, v3);
  v112 = sub_23C117C80();
  v15 = v14;
  v111 = Logger.btsDeeplink.unsafeMutableAddressor();
  v110 = *(v6 + 16);
  v110(v4);
  v16 = *(v9 + 16);
  v16(v7, v12, v10);
  v16(v8, v12, v10);

  v17 = sub_23C11B6EC();
  v18 = sub_23C11B8BC();

  v114 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[32];
    v20 = v0[30];
    v105 = v0[29];
    v107 = v0[31];
    v21 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v117 = v115;
    *v21 = 136315906;
    *(v21 + 4) = sub_23C117E8C(0xD000000000000014, 0x800000023C11F330, &v117);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_23C117E8C(v112, v15, &v117);
    *(v21 + 22) = 2080;
    v22 = sub_23C11B5EC();
    v24 = v23;
    v25 = *(v20 + 8);
    v25(v19, v105);
    v26 = sub_23C117E8C(v22, v24, &v117);

    *(v21 + 24) = v26;
    *(v21 + 32) = 2080;
    if (sub_23C11B5CC())
    {
      v27 = v0[25];
      v28 = MEMORY[0x23EEC7E40]();
      v30 = v29;
    }

    else
    {
      v30 = 0xE800000000000000;
      v28 = 0x7972657571206F6ELL;
    }

    v40 = v0[33];
    v41 = v0[34];
    v106 = v40;
    v108 = v0[36];
    v25(v0[31], v0[29]);
    v42 = sub_23C117E8C(v28, v30, &v117);

    *(v21 + 34) = v42;
    _os_log_impl(&dword_23C0F7000, v17, v18, "%s deeplinking with pathKey: %s %s %s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEC8740](v115, -1, -1);
    MEMORY[0x23EEC8740](v21, -1, -1);

    v39 = *(v41 + 8);
    v39(v108, v106);
  }

  else
  {
    v31 = v0[36];
    v32 = v0[33];
    v33 = v0[34];
    v35 = v0[31];
    v34 = v0[32];
    v36 = v0[29];
    v37 = v0[30];

    v38 = *(v37 + 8);
    v38(v35, v36);
    v38(v34, v36);
    v39 = *(v33 + 8);
    v39(v31, v32);
  }

  v43 = v0[19];
  v44 = sub_23C11B5CC();
  if (v44)
  {
    v45 = v44;
    v109 = v39;
    v46 = *(v44 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = v0[26];
      v116 = (v48 + 8);
      while (1)
      {
        if (v47 >= *(v45 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        (*(v48 + 16))(v0[27], v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v0[25]);
        if (sub_23C11B59C() == 0x696669746E656469 && v49 == 0xEA00000000007265)
        {
          break;
        }

        v51 = sub_23C11B95C();

        if (v51)
        {
          goto LABEL_20;
        }

        ++v47;
        (*v116)(v0[27], v0[25]);
        if (v46 == v47)
        {
          goto LABEL_17;
        }
      }

LABEL_20:
      v54 = v0[27];
      v55 = v0[28];
      v56 = v0[25];
      v57 = v0[26];

      (*(v57 + 32))(v55, v54, v56);
      v58 = sub_23C11B5AC();
      if (!v59)
      {
        v80 = v0[40];
        (*v116)(v0[28], v0[25]);

        goto LABEL_31;
      }

      v60 = v58;
      v61 = v59;

      v0[12] = v60;
      v0[13] = v61;
      v0[14] = 45;
      v0[15] = 0xE100000000000000;
      v0[16] = 58;
      v0[17] = 0xE100000000000000;
      v104 = sub_23C117E38();
      v103 = MEMORY[0x277D837D0];
      sub_23C11B90C();
      sub_23C11B65C();
      v62 = sub_23C11B64C();
      v63 = sub_23C11B63C();
      v0[45] = v63;

      if (v63)
      {
        v64 = v0[21];
        v65 = [objc_opt_self() shared];
        v66 = [v65 specifierFor:v63 btsDevice:0];
        v0[46] = v66;

        [v66 setProperty:v64 forKey:*MEMORY[0x277D40038]];
        v67 = sub_23C11B66C();
        if (*(v67 + 16))
        {
          v68 = sub_23C119F4C(v112, v114);
          if (v69)
          {
            v70 = v68;

            sub_23C118824(*(v67 + 56) + 40 * v70, (v0 + 2));

            v71 = v0[5];
            v72 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v71);
            v73 = *(MEMORY[0x277D0FC30] + 4);
            v74 = swift_task_alloc();
            v0[47] = v74;
            *v74 = v0;
            v74[1] = sub_23C1199F4;
            v75 = v0[19];
            v76 = (v0 + 7);
            v77 = v66;
            v78 = v71;
            v79 = v72;

            return MEMORY[0x282168100](v76, v75, v77, v78, v79);
          }
        }

LABEL_35:

        __break(1u);
        return MEMORY[0x282168100](v76, v75, v77, v78, v79);
      }

      v81 = v0[40];
      v82 = v0[35];
      v83 = v0[33];

      (v110)(v82, v111, v83);
      v84 = sub_23C11B6EC();
      v85 = sub_23C11B89C();
      v86 = os_log_type_enabled(v84, v85);
      v87 = v0[34];
      v88 = v0[35];
      v89 = v0[33];
      v90 = v0[28];
      v91 = v0[25];
      if (v86)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v117 = v93;
        *v92 = 136315138;
        *(v92 + 4) = sub_23C117E8C(0xD000000000000014, 0x800000023C11F330, &v117);
        _os_log_impl(&dword_23C0F7000, v84, v85, "%s sync fetch headphnone device failed early exiting!", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x23EEC8740](v93, -1, -1);
        MEMORY[0x23EEC8740](v92, -1, -1);
      }

      v109(v88, v89);
      (*v116)(v90, v91);
    }

    else
    {
LABEL_17:
      v52 = v0[40];
    }
  }

  else
  {
    v53 = v0[40];
  }

LABEL_31:
  v113(v0[18], v0[39], v0[37]);
  v94 = v0[36];
  v95 = v0[35];
  v97 = v0[31];
  v96 = v0[32];
  v99 = v0[27];
  v98 = v0[28];
  v100 = v0[24];
  (*(v0[38] + 8))(v0[39], v0[37]);

  v101 = v0[1];

  return v101();
}

uint64_t sub_23C1199F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 376);
  v9 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 80);
  *(v2 + 392) = *(v2 + 64);
  *(v2 + 384) = v4;
  *(v2 + 408) = v5;

  v6 = *(v1 + 336);
  v7 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_23C119B3C, v7, v6);
}

uint64_t sub_23C119B3C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C11B94C())
  {
    v4 = *(v0 + 416);
    v5 = *(v0 + 400);
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    v8 = *(v0 + 168);

    v51 = v4;

    v9 = v7;
    v50 = v5;
    if (!i)
    {
      break;
    }

    v10 = 0;
    v46 = v1 & 0xFFFFFFFFFFFFFF8;
    v48 = v1 & 0xC000000000000001;
    v43 = v6 + 32;
    v44 = i;
    v1 = *(v0 + 184) + 8;
    while (1)
    {
      if (v48)
      {
        v18 = MEMORY[0x23EEC7F10](v10, *(v0 + 384));
      }

      else
      {
        if (v10 >= *(v46 + 16))
        {
          goto LABEL_23;
        }

        v18 = *(v43 + 8 * v10);
      }

      v19 = v18;
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v5)
      {
        v21 = *(v0 + 392);
        v22 = sub_23C11B7FC();
      }

      else
      {
        v22 = 0;
      }

      [*(v0 + 168) setSpecifierIdentifierToScrollAndHighlight_];

      if (v51)
      {
        v23 = *(v0 + 408);
        v11 = sub_23C11B7FC();
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v0 + 368);
      v13 = *(v0 + 312);
      v14 = *(v0 + 192);
      v15 = *(v0 + 176);
      [*(v0 + 168) setSpecifierIdentifierToScrollAndSelect_];

      [v19 setSpecifier_];
      v16 = v12;
      v17 = v19;
      sub_23C11B6AC();
      sub_23C11A308();
      sub_23C11B71C();
      (*v1)(v14, v15);

      ++v10;
      v5 = v50;
      if (v20 == v44)
      {
        v24 = *(v0 + 384);
        v25 = *(v0 + 368);
        v26 = *(v0 + 168);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    if (*(v0 + 384) < 0)
    {
      v42 = *(v0 + 384);
    }
  }

  v25 = v9;
  v26 = v8;
LABEL_19:
  v27 = *(v0 + 360);
  v47 = *(v0 + 344);
  v49 = *(v0 + 352);
  v45 = *(v0 + 312);
  v28 = *(v0 + 296);
  v29 = *(v0 + 224);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v32 = *(v0 + 144);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  (*(v30 + 8))(v29, v31);
  v47(v32, v45, v28);
  v33 = *(v0 + 288);
  v34 = *(v0 + 280);
  v36 = *(v0 + 248);
  v35 = *(v0 + 256);
  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v39 = *(v0 + 192);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_23C119E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23C118D48;

  return sub_23C118E54(a1, a2, a3, v8);
}

unint64_t sub_23C119F4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23C11B96C();
  sub_23C11B81C();
  v6 = sub_23C11B97C();

  return sub_23C119FC4(a1, a2, v6);
}

unint64_t sub_23C119FC4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23C11B95C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23C11A07C()
{
  v0 = sub_23C11B70C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23C117C80();
  v7 = v6;
  v8 = Logger.btsDeeplink.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v8, v0);

  v9 = sub_23C11B6EC();
  v10 = sub_23C11B89C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v19[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_23C117E8C(0xD000000000000010, 0x800000023C11F350, v19);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_23C117E8C(v5, v7, v19);
    _os_log_impl(&dword_23C0F7000, v9, v10, "%s should show %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC8740](v12, -1, -1);
    MEMORY[0x23EEC8740](v11, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v13 = sub_23C11B66C();
  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_23C119F4C(v5, v7);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:

    v17 = 0;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    goto LABEL_8;
  }

  sub_23C118824(*(v13 + 56) + 40 * v14, v19);

  v17 = 1;
LABEL_8:
  sub_23C11A370(v19);
  return v17;
}

unint64_t sub_23C11A308()
{
  result = qword_27E1EFC10;
  if (!qword_27E1EFC10)
  {
    sub_23C11B6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EFC10);
  }

  return result;
}

uint64_t sub_23C11A370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFC18, &qword_23C11F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NotificationCallback_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}