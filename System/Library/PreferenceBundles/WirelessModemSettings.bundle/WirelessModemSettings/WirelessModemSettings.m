uint64_t sub_23C160F60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C160F98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F08A8);
  sub_23C16E95C();
  return swift_getOpaqueTypeConformance2();
}

id WMSLogComponent()
{
  if (WMSLogComponent_onceToken != -1)
  {
    WMSLogComponent_cold_1();
  }

  v1 = WMSLogComponent_component;

  return v1;
}

uint64_t __WMSLogComponent_block_invoke()
{
  WMSLogComponent_component = os_log_create("WirelessModemSettings", "Settings");

  return MEMORY[0x2821F96F8]();
}

id WMSGetCurrentDeviceName()
{
  v0 = MGGetStringAnswer();
  if (!v0)
  {
    v1 = [MEMORY[0x277D75418] currentDevice];
    v0 = [v1 model];
  }

  return v0;
}

id WMSUIEventDictionary(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v8 = @"type";
    v9[0] = a1;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a1;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

    a1 = [v6 mutableCopy];
    if (v3)
    {
      [a1 setObject:v3 forKeyedSubscript:@"value"];
    }
  }

  return a1;
}

void WMSubmitUIEventMetric(void *a1)
{
  if (a1)
  {
    v1 = [a1 mutableCopy];
    [v1 setObject:@"phsettings" forKeyedSubscript:@"process"];
    v2 = WMSLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      WMSubmitUIEventMetric_cold_1(v1, v2);
    }

    v4 = v1;
    v3 = v1;
    AnalyticsSendEventLazy();
  }

  else
  {
    v3 = WMSLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      WMSubmitUIEventMetric_cold_2(v3);
    }
  }
}

uint64_t _CompareUsages(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 propertyForKey:@"ClientUsageBytes"];
  v5 = [v3 propertyForKey:@"ClientUsageBytes"];

  v6 = [v4 compare:v5];
  return v6;
}

void sub_23C163A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23C164664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23C168844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void __SCDynamicStoreCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  [a3 sendStateUpdate];

  objc_autoreleasePoolPop(v4);
}

uint64_t cellDataChangedNotification(uint64_t a1, void *a2)
{
  v3 = WMSLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    cellDataChangedNotification_cold_1();
  }

  return [a2 authenticate];
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_23C16D468()
{
  v0 = sub_23C170A9C();
  __swift_allocate_value_buffer(v0, qword_27E1F0A30);
  __swift_project_value_buffer(v0, qword_27E1F0A30);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_23C170B7C();
  }

  return sub_23C170A8C();
}

uint64_t sub_23C16D560()
{
  if (qword_27E1F0910 != -1)
  {
    swift_once();
  }

  v0 = sub_23C170A9C();

  return __swift_project_value_buffer(v0, qword_27E1F0A30);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23C16D5FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1F0910 != -1)
  {
    swift_once();
  }

  v2 = sub_23C170A9C();
  v3 = __swift_project_value_buffer(v2, qword_27E1F0A30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall UIViewController.wms_popViewController(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v23 = animated;
  v3 = sub_23C170B0C();
  v4 = *(v3 - 8);
  (MEMORY[0x28223BE20])();
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23C170A6C();
  v8 = *(v7 - 8);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  v14 = [v1 traitCollection];
  sub_23C170BFC();

  v25 = v2;
  v15 = [v2 traitCollection];
  sub_23C170C0C();

  v16 = sub_23C170AEC();
  v17 = *(v4 + 8);
  v24 = v3;
  v17(v6, v3);
  (*(v8 + 104))(v11, *MEMORY[0x277D40278], v7);
  sub_23C16D99C();
  sub_23C170B9C();
  sub_23C170B9C();
  v18 = *(v8 + 8);
  v18(v11, v7);
  if (v27 == v26 && (v16 & 1) != 0)
  {
    v19 = [v25 traitCollection];
    sub_23C170C0C();

    sub_23C170AFC();
    v17(v6, v24);
  }

  else
  {
    v20 = [v25 navigationController];
    if (v20)
    {
      v21 = v20;
    }
  }

  v18(v13, v7);
}

unint64_t sub_23C16D99C()
{
  result = qword_27E1F08A0;
  if (!qword_27E1F08A0)
  {
    sub_23C170A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F08A0);
  }

  return result;
}

void sub_23C16D9F4(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIViewController.wms_popViewController(animated:)(a3);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_23C16DAD4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_23C170B6C();
  v2 = [v0 initWithPath_];

  qword_27E1F0A48 = v2;
}

uint64_t *sub_23C16DB44()
{
  if (qword_27E1F0920 != -1)
  {
    swift_once();
  }

  return &qword_27E1F0A48;
}

uint64_t sub_23C16DB94()
{
  if (qword_27E1F0920 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1F0A48;
  v1 = qword_27E1F0A48;
  return v0;
}

uint64_t sub_23C16DC28()
{
  v0 = sub_23C170A9C();
  __swift_allocate_value_buffer(v0, qword_27E1F0A50);
  __swift_project_value_buffer(v0, qword_27E1F0A50);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_23C170B7C();
  }

  return sub_23C170A8C();
}

uint64_t sub_23C16DD20()
{
  if (qword_27E1F0928 != -1)
  {
    swift_once();
  }

  v0 = sub_23C170A9C();

  return __swift_project_value_buffer(v0, qword_27E1F0A50);
}

uint64_t sub_23C16DD84@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1F0928 != -1)
  {
    swift_once();
  }

  v2 = sub_23C170A9C();
  v3 = __swift_project_value_buffer(v2, qword_27E1F0A50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23C16DE2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08B0);
  v9 = sub_23C170A3C();
  v10 = sub_23C16F608(&qword_27E1F08B8, MEMORY[0x277D40248]);
  v12[0] = v9;
  v12[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_23C170B5C();
  sub_23C16E95C();
  sub_23C170B1C();
  return (*(v5 + 8))(v7, v4);
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

uint64_t sub_23C16E04C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C170A5C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23C170A3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C16F6FC(0, &unk_27E1F0900);
  sub_23C170A4C();
  sub_23C170A2C();
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  if (a2)
  {
    v10 = a2;
  }

  v17[2] = v9;
  v17[3] = v10;
  sub_23C16F5B4();

  v11 = sub_23C170ACC();
  v13 = v12;
  v15 = v14;
  sub_23C16F608(&qword_27E1F08B8, MEMORY[0x277D40248]);
  sub_23C170ADC();
  sub_23C16F744(v11, v13, v15 & 1);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23C16E250(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_23C170A5C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08D0);
  v2[11] = swift_task_alloc();
  v4 = sub_23C170A0C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_23C170ABC();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = sub_23C170A1C();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  sub_23C170BDC();
  v2[21] = sub_23C170BCC();
  v8 = sub_23C170BBC();

  return MEMORY[0x2822009F8](sub_23C16E490, v8, v7);
}

uint64_t sub_23C16E490()
{
  v46 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  sub_23C170B3C();
  sub_23C170B2C();
  sub_23C1709EC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[19];
    v4 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[15];
    v9 = v0[16];
    sub_23C16F54C(v0[11]);
    sub_23C170B4C();
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v0[2] = sub_23C1709FC();
    v0[3] = v10;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_23C16F5B4();
    v11 = sub_23C170C1C();

    v12 = 0;
    v13 = *(v11 + 16);
    v14 = MEMORY[0x277D84F90];
LABEL_4:
    v15 = (v11 + 40 + 16 * v12);
    while (v13 != v12)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v17 = *(v15 - 1);
      v16 = *v15;
      v15 += 2;
      ++v12;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        v45 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23C16F1C4(0, *(v14 + 16) + 1, 1);
          v14 = v45;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23C16F1C4((v19 > 1), v20 + 1, 1);
          v14 = v45;
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;
        goto LABEL_4;
      }
    }

    if (qword_27E1F0928 == -1)
    {
      goto LABEL_16;
    }

LABEL_25:
    swift_once();
LABEL_16:
    v22 = sub_23C170A9C();
    __swift_project_value_buffer(v22, qword_27E1F0A50);

    v23 = sub_23C170A7C();
    v24 = sub_23C170BEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = 136315138;
      v27 = MEMORY[0x23EEC9BC0](v14, MEMORY[0x277D837D0]);
      v29 = sub_23C16EC1C(v27, v28, &v45);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_23C15F000, v23, v24, "SettingsExperience path components %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EECA500](v26, -1, -1);
      MEMORY[0x23EECA500](v25, -1, -1);
    }

    v30 = *(v14 + 16);

    if (v30)
    {
      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[8];
      sub_23C16F6FC(0, &qword_27E1F08E0);
      sub_23C170A4C();
      sub_23C16F608(&qword_27E1F08E8, MEMORY[0x277D40250]);
      sub_23C170AAC();
      (*(v32 + 8))(v31, v33);
    }

    v35 = v0[19];
    v34 = v0[20];
    v37 = v0[17];
    v36 = v0[18];
    v38 = v0[15];
    v39 = v0[16];
    v41 = v0[13];
    v40 = v0[14];
    v42 = v0[12];
    sub_23C170B4C();
    (*(v41 + 8))(v40, v42);
    (*(v39 + 8))(v37, v38);
    (*(v35 + 8))(v34, v36);
  }

  v43 = v0[1];

  return v43();
}

unint64_t sub_23C16E95C()
{
  result = qword_27E1F08C0;
  if (!qword_27E1F08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F08A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F08C0);
  }

  return result;
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

uint64_t sub_23C16EA20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08A8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08B0);
  v8 = sub_23C170A3C();
  v9 = sub_23C16F608(&qword_27E1F08B8, MEMORY[0x277D40248]);
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  sub_23C170B5C();
  sub_23C16E95C();
  sub_23C170B1C();
  return (*(v2 + 8))(v4, v1);
}

void *sub_23C16EBF4@<X0>(void *a1@<X8>)
{
  result = sub_23C16F2F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23C16EC1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C16ECE8(v11, 0, 0, 1, a1, a2);
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
    sub_23C16F69C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C16ECE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C16EDF4(a5, a6);
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
    result = sub_23C170C3C();
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

uint64_t sub_23C16EDF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C16EE40(a1, a2);
  sub_23C16EF70(&unk_284EED308);
  return v3;
}

uint64_t sub_23C16EE40(uint64_t a1, unint64_t a2)
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

  v6 = sub_23C16F05C(v5, 0);
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

  result = sub_23C170C3C();
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
        v10 = sub_23C170B8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C16F05C(v10, 0);
        result = sub_23C170C2C();
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

uint64_t sub_23C16EF70(uint64_t result)
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

  result = sub_23C16F0D0(result, v11, 1, v3);
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

void *sub_23C16F05C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C16F0D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08F0);
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

char *sub_23C16F1C4(char *a1, int64_t a2, char a3)
{
  result = sub_23C16F1E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C16F1E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08F8);
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

void *sub_23C16F2F0()
{
  if (qword_27E1F0920 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1F0A48;
  if (qword_27E1F0A48)
  {
    v1 = sub_23C170B6C();
    v2 = sub_23C170B6C();
    v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

    v0 = sub_23C170B7C();
  }

  return v0;
}

unint64_t sub_23C16F3F0()
{
  result = qword_27E1F08C8;
  if (!qword_27E1F08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F08C8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C16F490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23C16F4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_23C16F54C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F08D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23C16F5B4()
{
  result = qword_27E1F08D8;
  if (!qword_27E1F08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F08D8);
  }

  return result;
}

uint64_t sub_23C16F608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C16F69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C16F6FC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23C16F744(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void WMSubmitUIEventMetric_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "WMSubmitUIEventMetric";
  v4 = 2112;
  v5 = @"com.apple.wifi.ui.event";
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_23C15F000, a2, OS_LOG_TYPE_ERROR, "%s: submitting %@ with dictionary %@", &v2, 0x20u);
}

void WMSubmitUIEventMetric_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "WMSubmitUIEventMetric";
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "%s: event is nil for event", &v1, 0xCu);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}