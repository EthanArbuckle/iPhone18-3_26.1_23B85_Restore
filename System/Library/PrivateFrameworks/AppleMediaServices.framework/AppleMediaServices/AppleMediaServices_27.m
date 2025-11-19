id SignInRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignInRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CF02EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15970);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_1EAE15980;
  }

  else
  {
    v1 = &unk_1EAE15978;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1);
}

unint64_t sub_192CF0358()
{
  result = qword_1EAE15960;
  if (!qword_1EAE15960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15960);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignInRequest.ServiceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CF0700()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CF075C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF085C()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  v4 = [v3 ams:v2 storefrontForMediaType:?];
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = sub_192F967CC();
    v8 = v7;

    OUTLINED_FUNCTION_5_43();

    return v9(v6, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_43();
    v12 = sub_192F9679C();
    OUTLINED_FUNCTION_16_26();
    AMSError(v13, v14, v15, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_192CF09C0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = OUTLINED_FUNCTION_8_43();
  v5 = sub_192F9679C();
  v6 = sub_192F958CC();
  OUTLINED_FUNCTION_16_26();
  AMSError(v7, v8, v9, v6);

  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_192CF0AB8()
{
  if (*(v0 + 208))
  {
    if (qword_1ED6DE288 != -1)
    {
      OUTLINED_FUNCTION_1_59();
      swift_once();
    }

    v1 = qword_1ED6DE310;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_192FBCD40;
    v3 = AMSSetLogKeyIfNeeded();
    v4 = sub_192F967CC();
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    OUTLINED_FUNCTION_28();
    v7 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_13_28(v7, xmmword_192FBCD50);
    v30 = v8;
    OUTLINED_FUNCTION_10_1();
    MEMORY[0x193B10CE0](v4, v6);

    MEMORY[0x193B10CE0](93, 0xE100000000000000);
    v9 = MEMORY[0x1E69E6158];
    *(v0 + 72) = MEMORY[0x1E69E6158];
    *(v0 + 48) = v29;
    *(v0 + 56) = v30;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_19286D180(v0 + 48, v7 + 32);
    *(v7 + 64) = 0;
    *(v2 + 32) = v7;
    v10._object = 0x8000000193024820;
    v10._countAndFlagsBits = 0xD000000000000042;
    LogInterpolation.init(stringLiteral:)(v10);
    v11 = sub_192F958CC();
    v12 = AMSLogableError(v11);

    v13 = sub_192F967CC();
    v15 = v14;

    *(v0 + 104) = v9;
    *(v0 + 80) = v13;
    *(v0 + 88) = v15;
    static LogInterpolation.safe(_:)(v0 + 80, (v2 + 48));
    sub_192907DE8(v0 + 80);
    v16 = sub_192F96E7C();
    if (os_log_type_enabled(v1, v16))
    {
      v17 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_1_3();
        swift_once();
      }

      v18 = *(v0 + 184);
      OUTLINED_FUNCTION_72();
      v19 = swift_allocObject();
      *(v19 + 16) = v13;
      *(v0 + 136) = v2;
      *(v0 + 144) = sub_192BB97CC;
      *(v0 + 152) = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      v20 = sub_192F9674C();
      v22 = v21;

      objc_autoreleasePoolPop(v17);
      v23 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      OUTLINED_FUNCTION_28();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_192FBCD50;
      *(v24 + 56) = v9;
      *(v24 + 64) = sub_1928FDB30();
      *(v24 + 32) = v20;
      *(v24 + 40) = v22;
      sub_192F9622C();

      objc_autoreleasePoolPop(v23);
    }

    else
    {
      v18 = *(v0 + 184);
    }

    swift_unknownObjectRelease();

    v27 = OUTLINED_FUNCTION_2_53();

    return v28(v27);
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_43();

    return v25();
  }
}

id StorefrontHeaderValueCreation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorefrontHeaderValueCreation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontHeaderValueCreation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StorefrontHeaderValueCreation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontHeaderValueCreation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static StorefrontSuffixAccessor.setStorefrontSuffix(_:clientInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_192F9607C();
  OUTLINED_FUNCTION_12_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClientInfo.init(processInfo:)(a3, v10);
  sub_192F9600C();
  return (*(v6 + 8))(v10, v3);
}

uint64_t static StorefrontSuffixAccessor.storefrontSuffix(withClientInfo:)(void *a1)
{
  sub_192F9607C();
  OUTLINED_FUNCTION_12_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClientInfo.init(processInfo:)(a1, v8);
  v9 = sub_192F95FDC();
  (*(v4 + 8))(v8, v1);
  return v9;
}

id StorefrontSuffixAccessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorefrontSuffixAccessor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StorefrontSuffixAccessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CF17A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_192CF1838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073;
  if (v4 || (sub_192F9775C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000193024A80 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_192F9775C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_192CF1910(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE159F8);
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1929244A8();
  OUTLINED_FUNCTION_21_0();
  v14 = a2;
  v13[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  sub_1929245BC(&qword_1EAE133F8);
  OUTLINED_FUNCTION_7_3();
  sub_192F976CC();
  if (!v2)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_7_3();
    sub_192F976AC();
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_192CF1AA4(double a1)
{
  sub_192C1E504();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x193B11CB0](*&v2);
}

uint64_t sub_192CF1AE8(double a1)
{
  sub_192F9789C();
  sub_192CF1AA4(a1);
  return sub_192F978DC();
}

uint64_t sub_192CF1B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192CF1838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192CF1B68(uint64_t a1)
{
  v2 = sub_1929244A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CF1BA4(uint64_t a1)
{
  v2 = sub_1929244A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CF1C18()
{
  v1 = *(v0 + 8);
  sub_192F9789C();
  sub_192CF1AA4(v1);
  return sub_192F978DC();
}

uint64_t sub_192CF1C88()
{
  v0 = sub_192F9750C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CF1CD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4;
    }
  }

  v4 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v4 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v4 = a2[48];
  if (a1[48])
  {
    if (!a2[48])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 5) != *(a2 + 5))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 7);
  v6 = *(a2 + 7);
  if (v5)
  {
    if (!v6 || (sub_192C1CC34(v5, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_192CF1DC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE159B8);
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19292320C();
  OUTLINED_FUNCTION_21_0();
  v18 = 0;
  OUTLINED_FUNCTION_7_3();
  sub_192F9765C();
  if (!v2)
  {
    v17 = 1;
    OUTLINED_FUNCTION_7_3();
    sub_192F9767C();
    v16 = 2;
    OUTLINED_FUNCTION_7_3();
    sub_192F9766C();
    v15 = 3;
    OUTLINED_FUNCTION_7_3();
    sub_192F9766C();
    v14 = *(v3 + 56);
    v13[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE159B0);
    sub_19292330C(&qword_1EAE159C0, sub_192CF2318);
    OUTLINED_FUNCTION_7_3();
    sub_192F9768C();
  }

  return (*(v7 + 8))(v11, v5);
}

void sub_192CF1FD0()
{
  if (*v0 != 2)
  {
    sub_192F978BC();
  }

  sub_192F978BC();
  if (*(v0 + 16) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v1 = *(v0 + 8);
    sub_192F978BC();
    MEMORY[0x193B11C90](v1);
  }

  if (*(v0 + 32) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v2 = *(v0 + 24);
    sub_192F978BC();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x193B11CB0](v3);
  }

  if (*(v0 + 48) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v4 = *(v0 + 40);
    sub_192F978BC();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x193B11CB0](v5);
  }

  if (*(v0 + 56))
  {
    sub_192F978BC();

    sub_192C1E958();
  }

  else
  {
    sub_192F978BC();
  }
}

uint64_t sub_192CF20EC()
{
  sub_192F9789C();
  sub_192CF1FD0();
  return sub_192F978DC();
}

uint64_t sub_192CF2150@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF1C88();
  *a1 = result;
  return result;
}

unint64_t sub_192CF2180@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192923268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CF21AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF1C88();
  *a1 = result;
  return result;
}

uint64_t sub_192CF21E8(uint64_t a1)
{
  v2 = sub_19292320C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CF2224(uint64_t a1)
{
  v2 = sub_19292320C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CF2280()
{
  sub_192F9789C();
  sub_192CF1FD0();
  return sub_192F978DC();
}

unint64_t sub_192CF22C4()
{
  result = qword_1EAE159A0;
  if (!qword_1EAE159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159A0);
  }

  return result;
}

unint64_t sub_192CF2318()
{
  result = qword_1EAE159C8;
  if (!qword_1EAE159C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159C8);
  }

  return result;
}

unint64_t sub_192CF2370()
{
  result = qword_1EAE159D0;
  if (!qword_1EAE159D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159D0);
  }

  return result;
}

unint64_t sub_192CF240C()
{
  result = qword_1EAE159E8;
  if (!qword_1EAE159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE159E8);
  }

  return result;
}

unint64_t sub_192CF2464()
{
  result = qword_1EAE15A00;
  if (!qword_1EAE15A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15A00);
  }

  return result;
}

uint64_t StoreReviewGatingController.didPrompt()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192CF25C0;

  return StoreReviewGatingController.isEnabled()();
}

uint64_t sub_192CF25C0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF26A8()
{
  if (*(v0 + 40) != 1)
  {
    return OUTLINED_FUNCTION_19_1();
  }

  v1 = *(*(v0 + 16) + OBJC_IVAR___AMSStoreReviewGatingController_ledger);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_0_3(sub_192CF26E0, v1);
}

uint64_t sub_192CF26E0()
{
  OUTLINED_FUNCTION_3();
  sub_192CF7400();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CF2758(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CF72DC;

  return StoreReviewGatingController.didPrompt()();
}

uint64_t sub_192CF2820(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CF72E0;

  return StoreReviewGatingController.isEnabled()();
}

uint64_t StoreReviewGatingController.canPrompt()()
{
  OUTLINED_FUNCTION_3();
  v1[48] = v0;
  v1[49] = swift_getObjectType();
  v2 = swift_task_alloc();
  v1[50] = v2;
  *v2 = v1;
  v2[1] = sub_192CF2960;

  return StoreReviewGatingController.isEnabled()();
}

uint64_t sub_192CF2960()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 449) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF2A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (*(v12 + 449) == 1)
  {
    swift_unknownObjectRetain();
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v12 + 408) = v13;
    *v13 = v14;
    v13[1] = sub_192CF2CB0;
    OUTLINED_FUNCTION_145();

    return sub_1928F6468(v15, v16);
  }

  else
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v19 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v19, xmmword_192FBCD50);
    OUTLINED_FUNCTION_2_31();
    v20._countAndFlagsBits = 0xD000000000000047;
    LogInterpolation.init(stringLiteral:)(v20);
    v21 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v21))
    {
      v22 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v23 = swift_allocObject();
      v24 = OUTLINED_FUNCTION_116(v23);
      *(v12 + 336) = v19;
      *(v12 + 344) = sub_192BB97CC;
      *(v12 + 352) = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v22);
      v25 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v26 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v26, v27, v28, v29, v30, v31, v32, v33, v34);
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v36);
      OUTLINED_FUNCTION_139();

      objc_autoreleasePoolPop(v25);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_145();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }
}

uint64_t sub_192CF2CB0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = v2[6];
  v2[9] = v2[5];
  v2[10] = v6;
  v7 = v2[8];
  v2[11] = v2[7];
  v2[12] = v7;
  v8 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CF2DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = *(v12 + 136);
  if (v13 == 1)
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v14 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v14, xmmword_192FBCD50);
    OUTLINED_FUNCTION_2_31();
    v15._countAndFlagsBits = 0xD000000000000041;
    LogInterpolation.init(stringLiteral:)(v15);
    v16 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v16))
    {
      v17 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v18 = swift_allocObject();
      v19 = OUTLINED_FUNCTION_116(v18);
      *(v12 + 360) = v14;
      *(v12 + 368) = sub_192BB97CC;
      *(v12 + 376) = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v17);
      v20 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v21 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v21, v22, v23, v24, v25, v26, v27, v28, v29);
      *(v30 + 56) = MEMORY[0x1E69E6158];
      v31 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v31);
      OUTLINED_FUNCTION_139();

      objc_autoreleasePoolPop(v20);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_145();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  else
  {
    v41 = *(v12 + 384);
    v42 = *(v12 + 96);
    *(v12 + 16) = *(v12 + 80);
    *(v12 + 32) = v42;
    *(v12 + 48) = *(v12 + 112);
    *(v12 + 64) = *(v12 + 128);
    *(v12 + 72) = v13;
    *(v12 + 416) = *(v41 + OBJC_IVAR___AMSStoreReviewGatingController_ledger);
    v43 = *(v12 + 160);
    *(v12 + 208) = *(v12 + 144);
    *(v12 + 224) = v43;
    v44 = *(v12 + 192);
    *(v12 + 240) = *(v12 + 176);
    *(v12 + 256) = v44;
    sub_192CF6B50(v12 + 208, v12 + 272);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v12 + 424) = v45;
    *v45 = v46;
    v45[1] = sub_192CF3034;
    OUTLINED_FUNCTION_145();

    return sub_19292479C(v47);
  }
}

uint64_t sub_192CF3034()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  sub_1928FC07C(v2 + 80, &unk_1EAE15A20);
  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CF312C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[52];
  v2 = v0[49];
  v3 = swift_task_alloc();
  v0[54] = v3;
  v3[2] = v0 + 2;
  v3[3] = v1;
  v3[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[55] = v4;
  *v4 = v5;
  v4[1] = sub_192CF3220;
  v6 = MEMORY[0x1E69E6370];
  v7 = MEMORY[0x1E69E6370];
  v8 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DBF8](v0 + 56, v6, v7, 0, 0, &unk_192FCE7E0, v3, v8);
}

uint64_t sub_192CF3220()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  sub_1928FC07C(v2 + 80, &unk_1EAE15A20);

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CF3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a4;
  v5[46] = a5;
  v5[43] = a2;
  v5[44] = a3;
  v5[42] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15A30);
  v5[47] = v6;
  v5[48] = *(v6 - 8);
  v5[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  v5[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CF3464, 0, 0);
}

uint64_t sub_192CF3464()
{
  OUTLINED_FUNCTION_178();
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[44];
  sub_192F96C6C();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_74_7();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_17_29(v4);
  sub_192CF6B50(v3, (v0 + 2));

  sub_192CF46E4(v1, &unk_192FCE880, v4);
  OUTLINED_FUNCTION_63_11();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_74_7();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_17_29(v5);
  sub_192CF6B50(v3, (v0 + 10));

  sub_192CF46E4(v1, &unk_192FCE890, v5);
  OUTLINED_FUNCTION_63_11();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_74_7();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_17_29(v6);
  sub_192CF6B50(v3, (v0 + 18));

  sub_192CF46E4(v1, &unk_192FCE8A0, v6);
  OUTLINED_FUNCTION_63_11();
  v0[51] = *v2;
  sub_192F96BDC();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[52] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_30_17(v7);

  return MEMORY[0x1EEE6D8A8](v0 + 241, 0, 0);
}

uint64_t sub_192CF3644()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CF3728()
{
  OUTLINED_FUNCTION_120();
  v37 = v0;
  v1 = v0[15].n128_u8[1];
  if (v1 != 2)
  {
    if (v1)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_42_0();
      v0[26].n128_u64[0] = v2;
      *v2 = v3;
      OUTLINED_FUNCTION_30_17();

      return MEMORY[0x1EEE6D8A8](v0[15].n128_u64 + 1, 0, 0);
    }

    sub_192F96BFC();
  }

  v4 = MEMORY[0x1E69E6370];
  v5 = v0 + 13;
  (*(v0[24].n128_u64[0] + 8))(v0[24].n128_u64[1], v0[23].n128_u64[1]);
  if (qword_1ED6DDB28 != -1)
  {
    OUTLINED_FUNCTION_1_61();
  }

  v6 = v1 == 2;
  v7 = qword_1ED6DDB30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v8 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_50(v8, xmmword_192FBCD50);
  sub_19287AEE0();
  v36 = v9;
  OUTLINED_FUNCTION_18_1();
  v10._countAndFlagsBits = 0xD00000000000002DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v0[17].n128_u64[0] = v4;
  v0[15].n128_u8[8] = v1 == 2;
  sub_1928F9518(&v0[15].n128_i64[1], &v0[17].n128_i64[1], &unk_1EAE131B0);
  *v5 = 0u;
  v0[14] = 0u;
  sub_19286D180(&v0[17].n128_i64[1], &v0[13]);
  v0[15].n128_u8[0] = 3;
  if ((OUTLINED_FUNCTION_48_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v1 = v33;
  }

  v11 = *(v1 + 16);
  if (v11 >= *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_66_10();
    v1 = v34;
  }

  *(v1 + 16) = v11 + 1;
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_5_12(v12, *v5, v0[14]);
  sub_1928FC07C(&v0[15].n128_i64[1], &unk_1EAE131B0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v8[2].n128_u64[0] = v36;
  v14 = sub_192F96E3C();
  if (os_log_type_enabled(v7, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v16 = swift_allocObject();
    *(v16 + 16) = &v36;
    v0[19].n128_u64[1] = v8;
    v0[20].n128_u64[0] = sub_192BB97CC;
    v0[20].n128_u64[1] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v17 = sub_192F9674C();
    v19 = v18;

    objc_autoreleasePoolPop(v15);
    v20 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v21 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v21[4].n128_u64[0] = sub_1928FDB30();
    v21[2].n128_u64[0] = v17;
    v21[2].n128_u64[1] = v19;
    OUTLINED_FUNCTION_60();
    sub_192F9622C();

    objc_autoreleasePoolPop(v20);
  }

  v31 = v0[21].n128_u64[0];

  *v31 = v6;

  OUTLINED_FUNCTION_43();

  return v32();
}

uint64_t sub_192CF3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_192CF3BA4;

  return sub_192CF3C8C(a4, a5);
}

uint64_t sub_192CF3BA4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF3C8C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  v2[47] = swift_task_alloc();
  v4 = sub_192F95CFC();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CF3D94, a2, 0);
}

uint64_t sub_192CF3D94()
{
  OUTLINED_FUNCTION_5();
  sub_192927884();
  sub_192CF7604();

  v0 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_192CF3E0C()
{
  OUTLINED_FUNCTION_120();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1928FC07C(v2, &qword_1EAE12E10);
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v3 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v3, xmmword_192FBCD50);
    OUTLINED_FUNCTION_39_17();
    v5._countAndFlagsBits = v4 + 27;
    v5._object = (v6 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v5);
    v7 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v7))
    {
      v8 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v9 = swift_allocObject();
      v10 = OUTLINED_FUNCTION_116(v9);
      *(v0 + 264) = v3;
      *(v0 + 272) = sub_192BB97CC;
      *(v0 + 280) = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v8);
      v11 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v12 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v12, v13, v14, v15, v16, v17, v18, v19, v20);
      *(v21 + 56) = MEMORY[0x1E69E6158];
      v22 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v22);
      OUTLINED_FUNCTION_139();

      objc_autoreleasePoolPop(v11);
    }

    goto LABEL_9;
  }

  (*(*(v0 + 392) + 32))(*(v0 + 408), v2, v1);
  *(v0 + 40) = &type metadata for FlagKeys;
  v24 = sub_1929247E4();
  *(v0 + 16) = 19;
  *(v0 + 48) = v24;
  v25 = sub_192F95E6C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  if ((v25 & 1) == 0)
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v35 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v35, xmmword_192FBCD50);
    OUTLINED_FUNCTION_39_17();
    v37._countAndFlagsBits = v36 + 53;
    v37._object = (v38 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v37);
    v39 = sub_192F96E3C();
    if (!OUTLINED_FUNCTION_14_18(v39))
    {
      goto LABEL_25;
    }

    v32 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_116(v40);
    *(v0 + 288) = v35;
    *(v0 + 296) = sub_192BB97CC;
    *(v0 + 304) = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    goto LABEL_24;
  }

  v26 = *(v0 + 360);
  if (*(v26 + 48))
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v27 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v27, xmmword_192FBCD50);
    OUTLINED_FUNCTION_39_17();
    v29._countAndFlagsBits = v28 + 59;
    v29._object = (v30 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v29);
    v31 = sub_192F96E3C();
    if (!OUTLINED_FUNCTION_14_18(v31))
    {
      goto LABEL_25;
    }

    v32 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_116(v33);
    *(v0 + 312) = v27;
    *(v0 + 320) = sub_192BB97CC;
    *(v0 + 328) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
LABEL_24:
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_30_0();

    objc_autoreleasePoolPop(v32);
    v42 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v43 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v43, v44, v45, v46, v47, v48, v49, v50, v51);
    *(v52 + 56) = MEMORY[0x1E69E6158];
    v53 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v53);
    OUTLINED_FUNCTION_139();

    objc_autoreleasePoolPop(v42);
LABEL_25:

    v54 = OUTLINED_FUNCTION_48();
    v55(v54);
    goto LABEL_26;
  }

  v58 = *(v26 + 40);
  sub_192F95CEC();
  sub_192F95CDC();
  if (v59 >= v58)
  {
    v93 = *(*(v0 + 392) + 8);
    (v93)(*(v0 + 400), *(v0 + 384));
    v94 = OUTLINED_FUNCTION_48();
    v93(v94);
LABEL_9:
    v23 = 1;
    goto LABEL_27;
  }

  if (qword_1ED6DDB28 != -1)
  {
    OUTLINED_FUNCTION_1_61();
  }

  v60 = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v61 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_50(v61, xmmword_192FBCD50);
  sub_19287AEE0();
  v96 = v62;
  OUTLINED_FUNCTION_45_12();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v63);
  *(v0 + 160) = v60;
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_54_0();
  v64();
  sub_1928F9518(v0 + 136, v0 + 168, &unk_1EAE131B0);
  OUTLINED_FUNCTION_56_4();
  sub_19286D180(v0 + 168, v0 + 56);
  *(v0 + 88) = 3;
  if ((OUTLINED_FUNCTION_103() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_24();
  if (v65)
  {
    OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_28(v66, *(v0 + 56), *(v0 + 72));
  OUTLINED_FUNCTION_54_0();
  sub_1928FC07C(v67, v68);
  OUTLINED_FUNCTION_45_12();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v69);
  *(v0 + 224) = MEMORY[0x1E69E63B0];
  *(v0 + 200) = v58;
  sub_1928F9518(v0 + 200, v0 + 232, &unk_1EAE131B0);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_19286D180(v0 + 232, v0 + 96);
  *(v0 + 128) = 3;
  if ((OUTLINED_FUNCTION_103() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v96 = v95;
  }

  OUTLINED_FUNCTION_24();
  if (v65)
  {
    OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_14_28(v70, *(v0 + 96), *(v0 + 112));
  sub_1928FC07C(v0 + 200, &unk_1EAE131B0);
  OUTLINED_FUNCTION_45_12();
  v71._countAndFlagsBits = 0xD000000000000010;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v71);
  v61[2].n128_u64[0] = v96;
  v72 = sub_192F96E3C();
  if (OUTLINED_FUNCTION_14_18(v72))
  {
    v73 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v74 = swift_allocObject();
    v75 = OUTLINED_FUNCTION_116(v74);
    *(v0 + 336) = v61;
    *(v0 + 344) = sub_192BB97CC;
    *(v0 + 352) = v75;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_30_0();

    objc_autoreleasePoolPop(v73);
    v76 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v77 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v77, v78, v79, v80, v81, v82, v83, v84, v85);
    *(v86 + 56) = MEMORY[0x1E69E6158];
    v87 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v87);
    OUTLINED_FUNCTION_139();

    objc_autoreleasePoolPop(v76);
  }

  v88 = *(v0 + 400);
  v89 = *(v0 + 408);
  v90 = *(v0 + 384);
  v91 = *(v0 + 392);

  v92 = *(v91 + 8);
  v92(v88, v90);
  v92(v89, v90);
LABEL_26:
  v23 = 0;
LABEL_27:

  OUTLINED_FUNCTION_40();

  return v56(v23);
}

uint64_t sub_192CF46E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v20 - v9;
  v11 = *v3;
  v12 = swift_taskGroup_addPending();
  if (v12)
  {
    sub_1928F9518(a1, v10, &unk_1EAE12DE0);
    v13 = sub_192F96C6C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
    {
      sub_1928FC07C(v10, &unk_1EAE12DE0);
    }

    else
    {
      sub_192F96C5C();
      (*(*(v13 - 8) + 8))(v10, v13);
    }

    if (*(a3 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_192F96B7C();
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v18 = (v16 | v14);
    if (v16 | v14)
    {
      v21[0] = 0;
      v21[1] = 0;
      v18 = v21;
      v21[2] = v14;
      v21[3] = v16;
    }

    v20[1] = 1;
    v20[2] = v18;
    v20[3] = v11;
    swift_task_create();
  }

  return v12 & 1;
}

uint64_t sub_192CF48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_192CF49A8;

  return sub_192CF4AA0(a4, a5);
}

uint64_t sub_192CF49A8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CF4AA0(uint64_t a1, uint64_t a2)
{
  v2[69] = a2;
  v2[68] = a1;
  v3 = sub_192F95CFC();
  v2[70] = v3;
  v2[71] = *(v3 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CF4BE4, 0, 0);
}

uint64_t sub_192CF4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = *(v12[68] + 56);
  v12[80] = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_145();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v18 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v18, xmmword_192FBCD50);
    OUTLINED_FUNCTION_2_31();
    v19._countAndFlagsBits = 0xD000000000000030;
    LogInterpolation.init(stringLiteral:)(v19);
    v20 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v20))
    {
      v21 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v22 = swift_allocObject();
      v23 = OUTLINED_FUNCTION_116(v22);
      v12[54] = v18;
      v12[55] = sub_192BB97CC;
      v12[56] = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v21);
      v24 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v25 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v25, v26, v27, v28, v29, v30, v31, v32, v33);
      *(v34 + 56) = MEMORY[0x1E69E6158];
      v35 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v35);
      OUTLINED_FUNCTION_139();

      objc_autoreleasePoolPop(v24);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_145();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }
}

uint64_t sub_192CF4E5C()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 648) = sub_192927884();
  *(v0 + 656) = v1;
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CF4EC0()
{
  v120 = v0;
  v2 = *(v0 + 640);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  if (!v3)
  {
LABEL_4:
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v12 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v12, xmmword_192FBCD50);
    sub_19287AEE0();
    v119 = v13;
    OUTLINED_FUNCTION_18_1();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    v15 = MEMORY[0x1E69E6158];
    *(v0 + 392) = MEMORY[0x1E69E6158];
    *(v0 + 368) = v11;
    *(v0 + 376) = v10;
    sub_1928F9518(v0 + 368, v0 + 400, &unk_1EAE131B0);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    sub_19286D180(v0 + 400, v0 + 136);
    *(v0 + 168) = 3;
    if ((OUTLINED_FUNCTION_48_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    OUTLINED_FUNCTION_24();
    if (v16)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_5_12(v17, *(v0 + 136), *(v0 + 152));
    sub_1928FC07C(v0 + 368, &unk_1EAE131B0);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v12[2].n128_u64[0] = v119;
    v19 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_14_18(v19))
    {
      v20 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v21 = swift_allocObject();
      v22 = OUTLINED_FUNCTION_116(v21);
      *(v0 + 504) = v12;
      *(v0 + 512) = sub_192BB97CC;
      *(v0 + 520) = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v20);
      v23 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v24 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v24, v25, v26, v27, v28, v29, v30, v31, v32);
      *(v33 + 56) = v15;
      v34 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v34);
      OUTLINED_FUNCTION_139();

      objc_autoreleasePoolPop(v23);
    }

    goto LABEL_49;
  }

  while (1)
  {
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v7 = *(v4 - 1);
    *(v0 + 664) = v7;
    *(v0 + 672) = *v4;
    *(v0 + 528) = v6;
    *(v0 + 536) = v5;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 528;

    v9 = sub_192924FF4(sub_1929250EC, v8, v7);

    if (v9)
    {
      break;
    }

    v4 += 2;
    if (!--v3)
    {
      goto LABEL_4;
    }
  }

  v35 = *(v0 + 560);

  v36 = OUTLINED_FUNCTION_75_8();
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  v38 = *(v7 + 16);
  *(v0 + 680) = v38;
  if (!v38)
  {
    OUTLINED_FUNCTION_81_10();
    v43 = OUTLINED_FUNCTION_48();
    sub_1928F9518(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_75_8();
    if (__swift_getEnumTagSinglePayload(v46, v47, v35) == 1)
    {
      v48 = *(v0 + 608);

      sub_1928FC07C(v48, &qword_1EAE12E10);
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      v49 = OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_50(v49, xmmword_192FBCD50);
      OUTLINED_FUNCTION_51_10("StoreReviewGatingController: no prompts from this group yet");
      v50 = sub_192F96E3C();
      if (OUTLINED_FUNCTION_14_18(v50))
      {
        v51 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v52 = swift_allocObject();
        v53 = OUTLINED_FUNCTION_116(v52);
        OUTLINED_FUNCTION_38_10(v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v51);
        v54 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v55 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78(v55, v56, v57, v58, v59, v60, v61, v62, v63);
        *(v64 + 56) = MEMORY[0x1E69E6158];
        v65 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v65);
        OUTLINED_FUNCTION_139();

        objc_autoreleasePoolPop(v54);
      }

      v66 = *(v0 + 632);

      goto LABEL_48;
    }

    v67 = OUTLINED_FUNCTION_44_10();
    v68(v67);
    sub_192F95CEC();
    sub_192F95CDC();
    if (v69 >= v1)
    {
      v66 = *(v0 + 632);
      v105 = *(v0 + 584);
      v106 = *(v0 + 576);
      v107 = *(v0 + 568);
      v108 = *(v0 + 560);

      v109 = *(v107 + 8);
      v109(v106, v108);
      v109(v105, v108);
LABEL_48:
      sub_1928FC07C(v66, &qword_1EAE12E10);
      goto LABEL_49;
    }

    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    v70 = qword_1ED6DDB30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v71 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v71, xmmword_192FBCD50);
    sub_19287AEE0();
    v119 = v72;
    OUTLINED_FUNCTION_18_1();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v73);
    *(v0 + 200) = MEMORY[0x1E69E6158];
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    sub_1928F9518(v0 + 176, v0 + 208, &unk_1EAE131B0);
    OUTLINED_FUNCTION_79_8();
    OUTLINED_FUNCTION_70_6();
    if ((OUTLINED_FUNCTION_48_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v7 = v112;
    }

    v74 = *(v7 + 16);
    if (v74 >= *(v7 + 24) >> 1)
    {
      OUTLINED_FUNCTION_142();
      v7 = v113;
    }

    v75 = *(v0 + 584);
    v76 = *(v0 + 568);
    v77 = *(v0 + 560);
    *(v7 + 16) = v74 + 1;
    OUTLINED_FUNCTION_69_10();
    OUTLINED_FUNCTION_5_12(v78, *(v0 + 16), *(v0 + 32));
    sub_1928FC07C(v0 + 176, &unk_1EAE131B0);
    v79 = &v119;
    v80._countAndFlagsBits = 544497952;
    v80._object = 0xE400000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
    *(v0 + 264) = v77;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    (*(v76 + 16))(boxed_opaque_existential_0, v75, v77);
    OUTLINED_FUNCTION_77_10();
    OUTLINED_FUNCTION_56_4();
    sub_19286D180(v0 + 272, v0 + 56);
    *(v0 + 88) = 3;
    if ((OUTLINED_FUNCTION_48_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v79 = v114;
    }

    OUTLINED_FUNCTION_24();
    if (v16)
    {
      OUTLINED_FUNCTION_142();
      v79 = v115;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_5_12(v82, *(v0 + 56), *(v0 + 72));
    v83 = &unk_192FBD860;
    OUTLINED_FUNCTION_54_0();
    sub_1928FC07C(v84, v85);
    OUTLINED_FUNCTION_18_1();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v86);
    OUTLINED_FUNCTION_59_7(MEMORY[0x1E69E63B0]);
    OUTLINED_FUNCTION_78_10();
    *(v0 + 128) = 3;
    if ((OUTLINED_FUNCTION_48_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v79 = v116;
      v119 = v116;
    }

    OUTLINED_FUNCTION_24();
    if (v16)
    {
      OUTLINED_FUNCTION_142();
      v79 = v117;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_5_12(v87, *(v0 + 96), *(v0 + 112));
    sub_1928FC07C(v0 + 304, &unk_1EAE131B0);
    OUTLINED_FUNCTION_18_1();
    v88._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v88);
    v71[2].n128_u64[0] = v119;
    sub_192F96E3C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v70, v89))
    {
      v90 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v91 = swift_allocObject();
      v92 = OUTLINED_FUNCTION_116(v91);
      OUTLINED_FUNCTION_37_15(v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v79 = OUTLINED_FUNCTION_106();

      objc_autoreleasePoolPop(v90);
      v83 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v93 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v93, v94, v95, v96, v97, v98, v99, v100, v101);
      *(v102 + 56) = MEMORY[0x1E69E6158];
      v103 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v103);
      OUTLINED_FUNCTION_60();
      sub_192F9622C();

      objc_autoreleasePoolPop(v83);
    }

    OUTLINED_FUNCTION_60_5();
    v104 = *(v77 + 8);
    v104(&unk_1EAE131B0, v83);
    v104(v70, v83);
    sub_1928FC07C(v79, &qword_1EAE12E10);
LABEL_49:
    OUTLINED_FUNCTION_61_12();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_46_12();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 704) = 0;
  *(v0 + 688) = 0u;
  OUTLINED_FUNCTION_34_17(*(v0 + 664));
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_46_12();

  return MEMORY[0x1EEE6DFA0](v39, v40, v41);
}

uint64_t sub_192CF58E8()
{
  OUTLINED_FUNCTION_3();
  sub_192CF7604();
  v0 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_192CF5950()
{
  v109 = v1;
  v3 = *(v1 + 624);
  v4 = *(v1 + 560);
  v5 = OUTLINED_FUNCTION_75_8();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {

    v7 = sub_1928FC07C(v3, &qword_1EAE12E10);
LABEL_3:
    v8 = *(v1 + 696);
    v9 = (v1 + 688);
    goto LABEL_9;
  }

  v10 = *(v1 + 632);
  v11 = *(v1 + 616);
  v12 = *(*(v1 + 568) + 32);
  v12(*(v1 + 600), v3, v4);
  sub_1928F9518(v10, v11, &qword_1EAE12E10);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    v107 = *(v1 + 720);
    v9 = (v1 + 712);
    v4 = *(v1 + 696);
    v13 = *(v1 + 632);
    v0 = *(v1 + 616);
    v14 = *(v1 + 600);
    v15 = *(v1 + 560);
    sub_1928FC07C(v13, &qword_1EAE12E10);

    sub_1928FC07C(v0, &qword_1EAE12E10);
    v12(v13, v14, v15);
    v16 = v13;
    v17 = v15;
    v8 = v107;
  }

  else
  {
    v18 = *(v1 + 592);
    v19 = *(v1 + 568);
    v0 = *(v1 + 560);
    v12(v18, *(v1 + 616), v0);
    OUTLINED_FUNCTION_48();
    v4 = sub_192F95C5C();
    v20 = *(v19 + 8);
    v20(v18, v0);
    v8 = *(v1 + 720);
    if ((v4 & 1) == 0)
    {
      v20(*(v1 + 600), *(v1 + 560));

      goto LABEL_3;
    }

    v9 = (v1 + 712);
    v4 = *(v1 + 696);
    v21 = *(v1 + 632);
    v0 = *(v1 + 600);
    v22 = *(v1 + 560);
    sub_1928FC07C(v21, &qword_1EAE12E10);

    v12(v21, v0, v22);
    v16 = v21;
    v17 = v22;
  }

  v7 = __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
LABEL_9:
  v23 = *v9;
  v24 = *(v1 + 704) + 1;
  if (v24 == *(v1 + 680))
  {
    OUTLINED_FUNCTION_81_10();
    v25 = OUTLINED_FUNCTION_48();
    sub_1928F9518(v25, v26, v27);
    v28 = OUTLINED_FUNCTION_75_8();
    if (__swift_getEnumTagSinglePayload(v28, v29, v0) == 1)
    {
      v30 = *(v1 + 608);

      sub_1928FC07C(v30, &qword_1EAE12E10);
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      v31 = OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_50(v31, xmmword_192FBCD50);
      OUTLINED_FUNCTION_51_10("StoreReviewGatingController: no prompts from this group yet");
      v32 = sub_192F96E3C();
      if (OUTLINED_FUNCTION_14_18(v32))
      {
        v33 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v34 = swift_allocObject();
        v35 = OUTLINED_FUNCTION_116(v34);
        OUTLINED_FUNCTION_38_10(v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_106();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v33);
        v36 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v37 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78(v37, v38, v39, v40, v41, v42, v43, v44, v45);
        *(v46 + 56) = MEMORY[0x1E69E6158];
        v47 = sub_1928FDB30();
        OUTLINED_FUNCTION_137(v47);
        OUTLINED_FUNCTION_139();

        objc_autoreleasePoolPop(v36);
      }

      v48 = *(v1 + 632);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_44_10();
      v54(v53);
      sub_192F95CEC();
      sub_192F95CDC();
      if (v55 >= v2)
      {
        v48 = *(v1 + 632);
        v93 = *(v1 + 584);
        v94 = *(v1 + 576);
        v95 = *(v1 + 568);
        v96 = *(v1 + 560);

        v97 = *(v95 + 8);
        v97(v94, v96);
        v97(v93, v96);
      }

      else
      {
        if (qword_1ED6DDB28 != -1)
        {
          OUTLINED_FUNCTION_1_61();
        }

        v56 = qword_1ED6DDB30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
        v57 = OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_50(v57, xmmword_192FBCD50);
        sub_19287AEE0();
        v108 = v58;
        OUTLINED_FUNCTION_45_12();
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v59);
        *(v1 + 200) = MEMORY[0x1E69E6158];
        if (v8)
        {
          v60 = v23;
        }

        else
        {
          v60 = 0;
        }

        v61 = 0xE000000000000000;
        if (v8)
        {
          v61 = v8;
        }

        *(v1 + 176) = v60;
        *(v1 + 184) = v61;
        sub_1928F9518(v1 + 176, v1 + 208, &unk_1EAE131B0);
        OUTLINED_FUNCTION_79_8();
        OUTLINED_FUNCTION_70_6();
        if ((OUTLINED_FUNCTION_103() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v4 = v100;
        }

        v62 = *(v4 + 16);
        if (v62 >= *(v4 + 24) >> 1)
        {
          OUTLINED_FUNCTION_142();
          v4 = v101;
        }

        v63 = *(v1 + 584);
        v64 = *(v1 + 568);
        v65 = *(v1 + 560);
        *(v4 + 16) = v62 + 1;
        OUTLINED_FUNCTION_69_10();
        OUTLINED_FUNCTION_14_28(v66, *(v1 + 16), *(v1 + 32));
        sub_1928FC07C(v1 + 176, &unk_1EAE131B0);
        v48 = &v108;
        v67._countAndFlagsBits = 544497952;
        v67._object = 0xE400000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v67);
        *(v1 + 264) = v65;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 240));
        (*(v64 + 16))(boxed_opaque_existential_0, v63, v65);
        OUTLINED_FUNCTION_77_10();
        OUTLINED_FUNCTION_56_4();
        sub_19286D180(v1 + 272, v1 + 56);
        *(v1 + 88) = 3;
        if ((OUTLINED_FUNCTION_103() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v48 = v102;
        }

        OUTLINED_FUNCTION_24();
        if (v69)
        {
          OUTLINED_FUNCTION_142();
          v48 = v103;
        }

        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_14_28(v70, *(v1 + 56), *(v1 + 72));
        v71 = &unk_192FBD860;
        OUTLINED_FUNCTION_54_0();
        sub_1928FC07C(v72, v73);
        OUTLINED_FUNCTION_45_12();
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
        OUTLINED_FUNCTION_59_7(MEMORY[0x1E69E63B0]);
        OUTLINED_FUNCTION_78_10();
        *(v1 + 128) = 3;
        if ((OUTLINED_FUNCTION_103() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v48 = v104;
          v108 = v104;
        }

        OUTLINED_FUNCTION_24();
        if (v69)
        {
          OUTLINED_FUNCTION_142();
          v48 = v105;
        }

        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_14_28(v75, *(v1 + 96), *(v1 + 112));
        sub_1928FC07C(v1 + 304, &unk_1EAE131B0);
        OUTLINED_FUNCTION_45_12();
        v76._countAndFlagsBits = 0xD000000000000010;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v76);
        v57[2].n128_u64[0] = v108;
        sub_192F96E3C();
        OUTLINED_FUNCTION_165();
        if (os_log_type_enabled(v56, v77))
        {
          v78 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_71();
          v79 = swift_allocObject();
          v80 = OUTLINED_FUNCTION_116(v79);
          OUTLINED_FUNCTION_37_15(v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
          sub_1928FD924();
          v48 = OUTLINED_FUNCTION_106();

          objc_autoreleasePoolPop(v78);
          v71 = objc_autoreleasePoolPush();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
          v81 = OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_78(v81, v82, v83, v84, v85, v86, v87, v88, v89);
          *(v90 + 56) = MEMORY[0x1E69E6158];
          v91 = sub_1928FDB30();
          OUTLINED_FUNCTION_137(v91);
          OUTLINED_FUNCTION_60();
          sub_192F9622C();

          objc_autoreleasePoolPop(v71);
        }

        OUTLINED_FUNCTION_60_5();
        v92 = *(v65 + 8);
        v92(&unk_1EAE131B0, v71);
        v92(v56, v71);
      }
    }

    sub_1928FC07C(v48, &qword_1EAE12E10);
    OUTLINED_FUNCTION_61_12();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_46_12();

    __asm { BRAA            X2, X16 }
  }

  *(v1 + 704) = v24;
  *(v1 + 696) = v8;
  *(v1 + 688) = v23;
  OUTLINED_FUNCTION_34_17(v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_46_12();

  return MEMORY[0x1EEE6DFA0](v49, v50, v51);
}

uint64_t sub_192CF6274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_192CF3BA4;

  return sub_192CF6320(a4, a5);
}

uint64_t sub_192CF6320(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x1EEE6DFA0](sub_192CF633C, a2, 0);
}

uint64_t sub_192CF633C()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 136) = sub_192CF7328();
  *(v0 + 49) = v1;
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_192CF63A0()
{
  OUTLINED_FUNCTION_120();
  if (v0[3].n128_u8[1])
  {
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    v1 = qword_1ED6DDB30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v2 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_50(v2, xmmword_192FBCD50);
    OUTLINED_FUNCTION_68_10();
    v4._countAndFlagsBits = v3 + 38;
    v4._object = (v5 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v4);
    sub_192F96E3C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v1, v6))
    {
      goto LABEL_23;
    }

    v7 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 == -1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = v0[7].n128_u64[1];
    if (*(v8 + 16))
    {
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61();
      }

      v9 = qword_1ED6DDB30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      v2 = OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_50(v2, xmmword_192FBCD50);
      OUTLINED_FUNCTION_68_10();
      v11._countAndFlagsBits = v10 + 46;
      v11._object = (v12 | 0x8000000000000000);
      LogInterpolation.init(stringLiteral:)(v11);
      sub_192F96E5C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v9, v13))
      {
        goto LABEL_23;
      }

      v7 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = v0[8].n128_i64[1];
      if (v14 >= *(v8 + 8))
      {
LABEL_24:
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_71_0();

        __asm { BRAA            X2, X16 }
      }

      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61();
        v14 = v0[8].n128_i64[1];
      }

      v15 = qword_1ED6DDB30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      v2 = OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_50(v2, xmmword_192FBCD50);
      sub_19287AEE0();
      v40 = v16;
      OUTLINED_FUNCTION_45_12();
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
      v0[5].n128_u64[0] = MEMORY[0x1E69E6530];
      v0[3].n128_u64[1] = v14;
      sub_1928F9518(&v0[3].n128_i64[1], &v0[5].n128_i64[1], &unk_1EAE131B0);
      v0[1] = 0u;
      v0[2] = 0u;
      sub_19286D180(&v0[5].n128_i64[1], &v0[1]);
      OUTLINED_FUNCTION_70_6();
      if ((OUTLINED_FUNCTION_103() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
      }

      OUTLINED_FUNCTION_24();
      if (v18)
      {
        OUTLINED_FUNCTION_142();
      }

      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_14_28(v19, v0[1], v0[2]);
      sub_1928FC07C(&v0[3].n128_i64[1], &unk_1EAE131B0);
      OUTLINED_FUNCTION_45_12();
      v20._countAndFlagsBits = 0xD000000000000016;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
      v2[2].n128_u64[0] = v40;
      sub_192F96E5C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v15, v21))
      {
LABEL_23:

        goto LABEL_24;
      }

      v7 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 == -1)
      {
LABEL_22:
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v22 = swift_allocObject();
        v23 = OUTLINED_FUNCTION_116(v22);
        v0[1].n128_u64[0] = v2;
        v0[1].n128_u64[1] = sub_192BB97CC;
        v0[2].n128_u64[0] = v23;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        v24 = OUTLINED_FUNCTION_106();
        v26 = v25;

        objc_autoreleasePoolPop(v7);
        v27 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v28 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_29_0(v28, v29, v30, v31, v32, v33, v34, v35, v36);
        *(v37 + 56) = MEMORY[0x1E69E6158];
        v28[4].n128_u64[0] = sub_1928FDB30();
        v28[2].n128_u64[0] = v24;
        v28[2].n128_u64[1] = v26;
        OUTLINED_FUNCTION_60();
        sub_192F9622C();

        objc_autoreleasePoolPop(v27);
        goto LABEL_23;
      }
    }
  }

  OUTLINED_FUNCTION_0_0();
  goto LABEL_22;
}

uint64_t sub_192CF687C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CF6924;

  return StoreReviewGatingController.canPrompt()();
}

uint64_t sub_192CF6924()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_43();

  return v8();
}

id StoreReviewGatingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoreReviewGatingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CF6BAC()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_9_0(v8);
  *v9 = v10;
  v9[1] = sub_192919C40;

  return sub_192CF3358(v4, v2, v5, v6, v7);
}

uint64_t sub_192CF6C90()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_39(v1);

  return v4(v3);
}

uint64_t sub_192CF6D20()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_39(v1);

  return v4(v3);
}

uint64_t sub_192CF6DB0()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_39(v1);

  return v4(v3);
}

uint64_t sub_192CF6E40()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_58_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_34(v1);

  return sub_192CF3AF8(v3, v4, v5, v6, v7);
}

uint64_t sub_192CF6ED4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_58_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_34(v1);

  return sub_192CF48FC(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_74_7();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_192CF6FAC()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_58_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_34(v1);

  return sub_192CF6274(v3, v4, v5, v6, v7);
}

uint64_t sub_192CF7040(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_192CF7134;

  return v5(v2 + 32);
}

uint64_t sub_192CF7134()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_192CF7230()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_0(v4);
  *v5 = v6;
  v5[1] = sub_192919C44;

  return sub_192CF7040(v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_10()
{

  return sub_1928F9518(v0 + 240, v0 + 272, v1);
}

uint64_t OUTLINED_FUNCTION_78_10()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  return sub_19286D180(v0 + 336, v0 + 96);
}

uint64_t sub_192CF7328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A50);
  OUTLINED_FUNCTION_142_0(v1);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_29_19();
  sub_192927884();
  sub_19292894C(v0);

  v4 = type metadata accessor for StoreReviewGatingLedger.StateData();
  OUTLINED_FUNCTION_14(v0);
  if (v5)
  {
    sub_1928FB988(v0, &qword_1EAE15A50);
    return 0;
  }

  else
  {
    v6 = *(v0 + *(v4 + 20));
    sub_19292146C(v0);
  }

  return v6;
}

uint64_t sub_192CF7400()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  OUTLINED_FUNCTION_142_0(v3);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_29_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A50);
  OUTLINED_FUNCTION_142_0(v6);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_30_18();
  v9 = type metadata accessor for StoreReviewGatingLedger.StateData();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  sub_192927884();
  sub_19292894C(v2);

  OUTLINED_FUNCTION_87(v2, 1, v9);
  if (v15)
  {
    v16 = sub_192F95CFC();
    OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = v14 + *(v9 + 20);
    *v20 = 0;
    *(v20 + 8) = 1;
    OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    OUTLINED_FUNCTION_87(v2, 1, v9);
    if (!v15)
    {
      sub_1928FB988(v2, &qword_1EAE15A50);
    }
  }

  else
  {
    sub_192929410(v2, v14);
  }

  sub_192F95CEC();
  sub_192F95CFC();
  OUTLINED_FUNCTION_34_18();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_1928FDBFC(v0, v14 + *(v9 + 24), &qword_1EAE12E10);
  v28 = *(v1 + 120);
  v29 = *(v1 + 128);

  sub_192CF7A00(v14, v28, v29);

  return sub_19292146C(v14);
}

void sub_192CF7604()
{
  OUTLINED_FUNCTION_168();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A50);
  OUTLINED_FUNCTION_142_0(v6);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38[-v9 - 16];
  v11 = type metadata accessor for StoreReviewGatingLedger.StateData();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_19292894C(v10);
  OUTLINED_FUNCTION_87(v10, 1, v11);
  if (v17)
  {
    sub_1928FB988(v10, &qword_1EAE15A50);
    if (qword_1ED6DDB28 != -1)
    {
      OUTLINED_FUNCTION_1_61();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v18 = OUTLINED_FUNCTION_47();
    v37 = xmmword_192FBCD50;
    *(v18 + 16) = xmmword_192FBCD50;
    sub_19287AEE0();
    v43 = v19;
    v20._countAndFlagsBits = 0xD000000000000025;
    v20._object = 0x80000001930250D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v21 = MEMORY[0x1E69E6158];
    v42[3] = MEMORY[0x1E69E6158];
    v42[0] = v3;
    v42[1] = v1;
    sub_1928F94C8(v42, v38, &unk_1EAE131B0);
    v39 = 0u;
    v40 = 0u;

    sub_1928FDBFC(v38, &v39, &unk_1EAE131B0);
    v41 = 3;
    v22 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v22 = v35;
      v43 = v35;
    }

    v23 = *(v22 + 16);
    if (v23 >= *(v22 + 24) >> 1)
    {
      OUTLINED_FUNCTION_142();
      v22 = v36;
    }

    *(v22 + 16) = v23 + 1;
    OUTLINED_FUNCTION_11_2((v22 + 40 * v23), v39, v40);
    v43 = v22;
    sub_1928FB988(v42, &unk_1EAE131B0);
    v24._object = 0x8000000193025100;
    v24._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    *(v18 + 32) = v43;
    v25 = sub_192F96E3C();
    if (OUTLINED_FUNCTION_26_22(v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v27 = swift_allocObject();
      *(v27 + 16) = &v43;
      v39.n128_u64[0] = v18;
      v39.n128_u64[1] = sub_192BB97CC;
      v40.n128_u64[0] = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v26);
      v28 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v29 = OUTLINED_FUNCTION_90();
      *(v29 + 16) = v37;
      *(v29 + 56) = v21;
      v30 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v30);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_37_16();

      objc_autoreleasePoolPop(v28);
    }

    sub_192F95CFC();
    OUTLINED_FUNCTION_17_1();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  }

  else
  {
    sub_192929410(v10, v16);
    sub_1928F94C8(v16 + *(v11 + 24), v5, &qword_1EAE12E10);
    sub_19292146C(v16);
  }

  OUTLINED_FUNCTION_166();
}

void sub_192CF7A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = *MEMORY[0x1E69E9840];
  sub_192F9549C();
  swift_allocObject();
  sub_192F9548C();
  type metadata accessor for StoreReviewGatingLedger.StateData();
  sub_19292902C(&qword_1ED6DDB50, type metadata accessor for StoreReviewGatingLedger.StateData);
  sub_192F9547C();

  v7 = objc_opt_self();
  OUTLINED_FUNCTION_40_13();
  v8 = sub_192F95B5C();
  v52.n128_u64[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v52];

  v10 = v52.n128_u64[0];
  if (v9)
  {
    sub_192F9715C();
    v11 = OUTLINED_FUNCTION_40_13();
    sub_19290CA6C(v11, v12);
    swift_unknownObjectRelease();
    sub_1928FA5CC(&v50);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
    if (swift_dynamicCast())
    {
      v14 = v49[0];
      OUTLINED_FUNCTION_62_0();
      v50.n128_u64[0] = 0xD00000000000001CLL;
      v50.n128_u64[1] = v15;
      MEMORY[0x193B10CE0](a2, a3);
      v16 = v50;
      if (qword_1ED6DDB28 != -1)
      {
        OUTLINED_FUNCTION_1_61();
      }

      oslog = qword_1ED6DDB30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      v17 = OUTLINED_FUNCTION_47();
      *(v17 + 16) = xmmword_192FBCD50;
      sub_19287AEE0();
      v48[0] = v18;
      v19._countAndFlagsBits = 0xD00000000000002CLL;
      v19._object = 0x80000001930250A0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
      v53 = MEMORY[0x1E69E6158];
      v52 = v16;
      v20 = &unk_1EAE131B0;
      sub_1928F94C8(&v52, v49, &unk_1EAE131B0);
      v50 = 0u;
      v51 = 0u;

      sub_1928FDBFC(v49, &v50, &unk_1EAE131B0);
      if ((OUTLINED_FUNCTION_45_13() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
        v20 = v43;
        v48[0] = v43;
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_43_1(v21);
        OUTLINED_FUNCTION_67();
        v20 = v44;
      }

      v20[2] = v22 + 1;
      OUTLINED_FUNCTION_11_2(&v20[5 * v22], v50, v51);
      v48[0] = v20;
      sub_1928FB988(&v52, &unk_1EAE131B0);
      v23 = v48;
      v24._countAndFlagsBits = 2112032;
      v24._object = 0xE300000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
      v53 = v13;
      v52.n128_u64[0] = v14;
      sub_1928F94C8(&v52, v49, &unk_1EAE131B0);
      v50 = 0u;
      v51 = 0u;

      sub_1928FDBFC(v49, &v50, &unk_1EAE131B0);
      if ((OUTLINED_FUNCTION_45_13() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
        v23 = v45;
        v48[0] = v45;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_43_1(v25);
        OUTLINED_FUNCTION_67();
        v23 = v46;
      }

      v23[2] = v26 + 1;
      OUTLINED_FUNCTION_11_2(&v23[5 * v26], v50, v51);
      v48[0] = v23;
      sub_1928FB988(&v52, &unk_1EAE131B0);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
      *(v17 + 32) = v48[0];
      v28 = sub_192F96E3C();
      if (os_log_type_enabled(oslog, v28))
      {
        v29 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v30 = swift_allocObject();
        *(v30 + 16) = v48;
        v50.n128_u64[0] = v17;
        v50.n128_u64[1] = sub_1928FA5C4;
        v51.n128_u64[0] = v30;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_61();
        v31 = sub_192F9674C();
        v33 = v32;

        objc_autoreleasePoolPop(v29);
        v34 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v35 = OUTLINED_FUNCTION_90();
        *(v35 + 16) = xmmword_192FBCD50;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1928FDB30();
        *(v35 + 32) = v31;
        *(v35 + 40) = v33;
        OUTLINED_FUNCTION_60();
        sub_192F9622C();

        objc_autoreleasePoolPop(v34);
      }

      v36 = *(v4 + 112);
      v37 = sub_192F9667C();

      v38 = sub_192F9679C();

      [v36 setObject:v37 forKey:v38];
    }
  }

  else
  {
    v39 = v10;
    v40 = sub_192F958DC();

    swift_willThrow();
    v41 = OUTLINED_FUNCTION_40_13();
    sub_19290CA6C(v41, v42);
  }
}

uint64_t sub_192CF8078()
{
  v0 = sub_192F9750C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_192CF80C4()
{
  OUTLINED_FUNCTION_168();
  v1 = v0;
  v3 = v2;
  v4 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_15();
  v59 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  v11 = OUTLINED_FUNCTION_142_0(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_21();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12B70);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_21();
  v60 = v23 - v24;
  OUTLINED_FUNCTION_33();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v58 - v28;
  v30 = *(v27 + 48);
  v61 = v3;
  sub_1928F94C8(v3, &v58 - v28, &qword_1EAE12E10);
  v62 = v1;
  sub_1928F94C8(v1, &v29[v30], &qword_1EAE12E10);
  OUTLINED_FUNCTION_14(v29);
  if (!v31)
  {
    sub_1928F94C8(v29, v19, &qword_1EAE12E10);
    OUTLINED_FUNCTION_14(&v29[v30]);
    if (!v31)
    {
      v33 = v63;
      v34 = *(v63 + 32);
      v58 = v15;
      v35 = v59;
      v34(v59, &v29[v30], v4);
      OUTLINED_FUNCTION_2_54();
      sub_19292902C(v36, v37);
      v38 = sub_192F9677C();
      v39 = *(v33 + 8);
      v40 = v35;
      v15 = v58;
      v39(v40, v4);
      v39(v19, v4);
      sub_1928FB988(v29, &qword_1EAE12E10);
      if ((v38 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    (*(v63 + 8))(v19, v4);
LABEL_9:
    v32 = v29;
LABEL_10:
    sub_1928FB988(v32, &qword_1EAE12B70);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14(&v29[v30]);
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_1928FB988(v29, &qword_1EAE12E10);
LABEL_13:
  v41 = type metadata accessor for StoreReviewGatingLedger.StateData();
  v42 = *(v41 + 20);
  v43 = v62;
  v44 = (v61 + v42);
  v45 = *(v61 + v42 + 8);
  v46 = (v62 + v42);
  v47 = *(v62 + v42 + 8);
  if (v45)
  {
    v48 = v60;
    if (!v47)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (*v44 != *v46)
  {
    LOBYTE(v47) = 1;
  }

  v48 = v60;
  if ((v47 & 1) == 0)
  {
LABEL_19:
    v49 = *(v41 + 24);
    v50 = *(v20 + 48);
    sub_1928F94C8(v61 + v49, v48, &qword_1EAE12E10);
    sub_1928F94C8(v43 + v49, v48 + v50, &qword_1EAE12E10);
    OUTLINED_FUNCTION_14(v48);
    if (v31)
    {
      OUTLINED_FUNCTION_14(v48 + v50);
      if (v31)
      {
        sub_1928FB988(v48, &qword_1EAE12E10);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1928F94C8(v48, v15, &qword_1EAE12E10);
      OUTLINED_FUNCTION_14(v48 + v50);
      if (!v51)
      {
        v52 = v15;
        v53 = v63;
        (*(v63 + 32))(v59, v48 + v50, v4);
        OUTLINED_FUNCTION_2_54();
        sub_19292902C(v54, v55);
        sub_192F9677C();
        v56 = *(v53 + 8);
        v57 = OUTLINED_FUNCTION_40_13();
        v56(v57);
        (v56)(v52, v4);
        sub_1928FB988(v48, &qword_1EAE12E10);
        goto LABEL_11;
      }

      (*(v63 + 8))(v15, v4);
    }

    v32 = v48;
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CF8588(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A68);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_30_18();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192928FD8();
  sub_192F9799C();
  sub_192F95CFC();
  OUTLINED_FUNCTION_2_54();
  sub_19292902C(v9, v10);
  OUTLINED_FUNCTION_38_11();
  if (!v1)
  {
    type metadata accessor for StoreReviewGatingLedger.StateData();
    sub_192F9767C();
    OUTLINED_FUNCTION_38_11();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_192CF8738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_168();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_192F95CFC();
  OUTLINED_FUNCTION_4_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_15();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  v33 = OUTLINED_FUNCTION_142_0(v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_21();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &a9 - v40;
  sub_1928F94C8(v23, &a9 - v40, &qword_1EAE12E10);
  OUTLINED_FUNCTION_87(v41, 1, v24);
  if (v42)
  {
    sub_192F978BC();
  }

  else
  {
    (*(v26 + 32))(v31, v41, v24);
    sub_192F978BC();
    OUTLINED_FUNCTION_2_54();
    sub_19292902C(v43, v44);
    OUTLINED_FUNCTION_47_13();
    (*(v26 + 8))(v31, v24);
  }

  v45 = type metadata accessor for StoreReviewGatingLedger.StateData();
  v46 = v23 + *(v45 + 20);
  if (*(v46 + 8) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v47 = *v46;
    sub_192F978BC();
    MEMORY[0x193B11C90](v47);
  }

  sub_1928F94C8(v23 + *(v45 + 24), v37, &qword_1EAE12E10);
  OUTLINED_FUNCTION_87(v37, 1, v24);
  if (v42)
  {
    sub_192F978BC();
  }

  else
  {
    (*(v26 + 32))(v31, v37, v24);
    sub_192F978BC();
    OUTLINED_FUNCTION_2_54();
    sub_19292902C(v48, v49);
    OUTLINED_FUNCTION_47_13();
    (*(v26 + 8))(v31, v24);
  }

  OUTLINED_FUNCTION_166();
}

uint64_t sub_192CF89E0()
{
  sub_192F9789C();
  sub_192CF8738(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_192F978DC();
}

uint64_t sub_192CF8A44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF8078();
  *a1 = result;
  return result;
}

uint64_t sub_192CF8A74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19292907C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CF8AA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CF8078();
  *a1 = result;
  return result;
}

uint64_t sub_192CF8AC8(uint64_t a1)
{
  v2 = sub_192928FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CF8B04(uint64_t a1)
{
  v2 = sub_192928FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CF8B60()
{
  sub_192F9789C();
  sub_192CF8738(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_192F978DC();
}

uint64_t sub_192CF8BA0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_192CF8BD0()
{
  sub_192CF8BA0();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_192CF8BFC()
{
  result = qword_1EAE15A58;
  if (!qword_1EAE15A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE15A58);
  }

  return result;
}

unint64_t sub_192CF8C8C()
{
  result = qword_1EAE15A78;
  if (!qword_1EAE15A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15A78);
  }

  return result;
}

uint64_t NSString.ams_splitKeyPathStringKeepingEnclosedParts()()
{
  v0 = sub_192F967CC();
  v2 = sub_192CF8E0C(v0, v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_192F9735C();
    v4 = v2 + 40;
    do
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

      v6 = sub_192F9679C();

      [v5 initWithString_];

      sub_192F9733C();
      sub_192F9736C();
      sub_192F9737C();
      sub_192F9734C();
      v4 += 16;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_192CF8E0C(uint64_t a1, void *a2)
{
  v4 = sub_192F966CC();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v6 = sub_192CFE254(0x292A2E287B5C7B5CLL, 0xEC0000007D5C7D5CLL, 0);
  v51 = 0;
  v58 = v4;
  v62 = a1;
  v63 = a2;

  v7 = sub_192F9679C();
  v8 = [v6 matchesInString:v7 options:0 range:{0, MEMORY[0x193B10D50](a1, a2)}];

  sub_192874CD0(0, &qword_1ED6DE608);
  v9 = sub_192F96B0C();

  if (v9 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_192F971FC())
  {
    v50 = v6;
    if (i)
    {
      v11 = 0;
      v12 = v9 & 0xC000000000000001;
      v54 = v9 + 32;
      v55 = v9 & 0xFFFFFFFFFFFFFF8;
      v13 = &selRef_initWithRequest_cachedResponse_client_;
      v52 = v9 & 0xC000000000000001;
      v53 = v9;
      while (1)
      {
        if (__OFSUB__(i--, 1))
        {
          __break(1u);
LABEL_26:

          goto LABEL_28;
        }

        if (v12)
        {
          v15 = MEMORY[0x193B116C0](i, v9);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          if (i >= *(v55 + 16))
          {
            goto LABEL_40;
          }

          v15 = *(v54 + 8 * i);
        }

        v16 = v15;
        [v15 v13[71]];
        v17 = sub_192F96E1C();
        if (v18 & 1) != 0 || (v8 = v17, [v16 rangeAtIndex_], sub_192F96E1C(), (v19))
        {

          if (!i)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v9 = a1;
          a1 = a2;
          v20 = sub_192F969EC();
          v21 = MEMORY[0x193B10C70](v20);
          v56 = v22;
          v57 = v21;

          v59 = v11;
          v60 = 31611;
          v61 = 0xE200000000000000;
          v23 = sub_192F9771C();
          v6 = v11;
          MEMORY[0x193B10CE0](v23);

          MEMORY[0x193B10CE0](32125, 0xE200000000000000);
          v24 = v60;
          a2 = v61;
          v25 = v58;
          swift_isUniquelyReferenced_nonNull_native();
          v60 = v25;
          sub_192C9A100();
          v58 = v60;
          v60 = v24;
          v61 = a2;
          sub_192CB0FC4();
          sub_192F9689C();

          v11 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          a2 = a1;
          a1 = v9;
          v12 = v52;
          v9 = v53;
          v13 = &selRef_initWithRequest_cachedResponse_client_;
          if (!i)
          {
LABEL_17:

            a1 = v62;
            a2 = v63;
            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    v60 = 46;
    v61 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v26, v27);
    v49[2] = &v60;

    v6 = sub_192CF9420(0x7FFFFFFFFFFFFFFFLL, 0, sub_1929250EC, v49, a1, a2);
    v28 = v6[2];
    v12 = v58;
    if (!v28)
    {
      break;
    }

    v57 = a2;
    v60 = MEMORY[0x1E69E7CC0];
    sub_19290BCE0(0, v28, 0);
    v9 = 0;
    v8 = v60;
    a2 = v6 + 7;
    while (v9 < v6[2])
    {
      a1 = MEMORY[0x193B10C70](*(a2 - 3), *(a2 - 2), *(a2 - 1), *a2);
      v30 = v29;
      v60 = v8;
      v32 = v8[2];
      v31 = v8[3];
      if (v32 >= v31 >> 1)
      {
        sub_19290BCE0((v31 > 1), v32 + 1, 1);
        v8 = v60;
      }

      ++v9;
      v8[2] = v32 + 1;
      v33 = &v8[2 * v32];
      v33[4] = a1;
      v33[5] = v30;
      a2 += 4;
      v12 = v58;
      if (v28 == v9)
      {
        goto LABEL_26;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v34 = v8[2];
  if (v34)
  {
    v35 = v8 + 5;
    v36 = MEMORY[0x1E69E7CC0];
    do
    {
      v37 = *(v35 - 1);
      v38 = *v35;
      v39 = *(v12 + 16);

      if (v39)
      {
        v40 = sub_1929225DC(v37, v38);
        if (v41)
        {
          v42 = v40;

          v43 = (*(v12 + 56) + 16 * v42);
          v37 = *v43;
          v38 = v43[1];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_113();
        sub_1928FE290();
        v36 = v46;
      }

      v44 = *(v36 + 16);
      if (v44 >= *(v36 + 24) >> 1)
      {
        sub_1928FE290();
        v36 = v47;
      }

      *(v36 + 16) = v44 + 1;
      v45 = v36 + 16 * v44;
      *(v45 + 32) = v37;
      *(v45 + 40) = v38;
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
LABEL_41:
    v36 = MEMORY[0x1E69E7CC0];
  }

  return v36;
}

id sub_192CF93AC(void *a1)
{
  v1 = a1;
  NSString.ams_splitKeyPathStringKeepingEnclosedParts()();

  sub_192874CD0(0, &qword_1ED6DE9F0);
  v2 = sub_192F96AFC();

  return v2;
}

uint64_t sub_192CF9420(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_192F969EC();
    OUTLINED_FUNCTION_2_55();
    sub_192BC4A74();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_192BC4A74();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_1_62();
      v17 = sub_192F969CC();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_1_62();
      v16 = sub_192F968DC();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_192F969EC();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_113();
      sub_192BC4A74();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_192BC4A74();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_1_62();
    v16 = sub_192F968DC();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_192F969EC();
        OUTLINED_FUNCTION_2_55();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_113();
      sub_192BC4A74();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Date.utcGregorianTimestamp(year:month:day:hour:minute:second:millisecond:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v43 = a8;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14808);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v41 - v14;
  v42 = sub_192F956DC();
  OUTLINED_FUNCTION_4_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = sub_192F95D7C();
  OUTLINED_FUNCTION_4_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = sub_192F95DFC();
  OUTLINED_FUNCTION_4_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_15();
  v38 = v37 - v36;
  (*(v25 + 104))(v30, *MEMORY[0x1E6969868], v23);
  sub_192F95D8C();
  (*(v25 + 8))(v30, v23);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
  v39 = sub_192F95E3C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v39);
  sub_192F956AC();
  (*(v33 + 16))(v15, v38, v31);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v31);
  sub_192F956BC();
  sub_192F95E1C();
  sub_192F956CC();
  sub_192F9566C();
  sub_192F9567C();
  sub_192F9564C();
  sub_192F9565C();
  sub_192F9568C();
  result = sub_192F9569C();
  if ((v50 * 1000) >> 64 == (1000 * v50) >> 63)
  {
    result = 1000000 * v50;
    if ((1000 * v50 * 1000) >> 64 == (1000000 * v50) >> 63)
    {
      sub_192F9563C();
      sub_192F95DBC();
      (*(v17 + 8))(v22, v42);
      return (*(v33 + 8))(v38, v31);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id (*sub_192CF9C2C(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 autoSyncDisabledForTSDataSync];
  return sub_192CF9C80;
}

uint64_t sub_192CF9CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *v4;
  v9 = sub_1929225DC(a3, a4);
  if (__OFADD__(*(v20 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A80);
  if (sub_192F9741C())
  {
    v13 = sub_1929225DC(a3, a4);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_11:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

LABEL_5:
  *v4 = v20;
  if ((v12 & 1) == 0)
  {
    sub_192C9AB5C(v11, a3, a4, MEMORY[0x1E69E7CC0], v20);
  }

  v15 = *(v20 + 56) + 8 * v11;
  sub_192BC487C();
  v16 = *(*v15 + 16);
  sub_192BC4894(v16);
  v17 = *v15;
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
}

uint64_t sub_192CF9E3C()
{
  v0 = sub_192F9550C();
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  v42 = sub_192F966CC();
  sub_192F9558C();
  sub_192CFA4D8(v14, v11);
  v15 = sub_192F955BC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {

    sub_1928FC07C(v11, &qword_1EAE142B0);
LABEL_20:
    v35 = sub_192F966CC();
    goto LABEL_21;
  }

  v16 = sub_192F9556C();
  (*(*(v15 - 8) + 8))(v11, v15);
  if (!v16)
  {

    goto LABEL_20;
  }

  v38 = v14;
  v39 = v16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v20 = *(v2 + 16);
    v18 = v2 + 16;
    v19 = v20;
    v21 = v39 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    v40 = v0;
    v41 = v22;
    v23 = (v18 - 8);
    do
    {
      v19(v6, v21, v0);
      v24 = sub_192F954EC();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = sub_192F954FC();
        if (v29)
        {
          v30 = v28;
          v31 = v29;
          v32 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v32 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (!v32)
          {
            (*v23)(v6, v0);

            goto LABEL_15;
          }

          v33 = sub_192F954EC();
          sub_192CF9CD4(v30, v31, v33, v34);

          v0 = v40;
        }
      }

      (*v23)(v6, v0);
LABEL_15:
      v21 += v41;
      --v17;
    }

    while (v17);
  }

  v35 = v42;
  v14 = v38;
LABEL_21:
  sub_1928FC07C(v14, &qword_1EAE142B0);
  return v35;
}

uint64_t sub_192CFA1D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_192F955BC();
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v28 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v28 - v21;
  sub_192F9558C();
  if (!__swift_getEnumTagSinglePayload(v22, 1, v4))
  {

    sub_192F955AC();
  }

  if (__swift_getEnumTagSinglePayload(v22, 1, v4))
  {
    v23 = sub_192F95A8C();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v23);
  }

  else
  {
    (*(v6 + 16))(v10, v22, v4);
    sub_192F9559C();
    (*(v6 + 8))(v10, v4);
  }

  sub_192C56500(v18, v15);
  v24 = sub_192F95A8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v24);
  v26 = *(v24 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v26 + 16))(a1, v2, v24);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) != 1)
    {
      sub_1928FC07C(v15, &unk_1EAE144B0);
    }
  }

  else
  {
    (*(v26 + 32))(a1, v15, v24);
  }

  return sub_1928FC07C(v22, &qword_1EAE142B0);
}

uint64_t sub_192CFA4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static URL.ams_paymentSheetsUIDirectory.getter(char *a1@<X8>)
{
  v117 = *MEMORY[0x1E69E9840];
  v2 = sub_192F95A8C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v97 - v9;
  v11 = [objc_opt_self() ams_paymentSheetsUIDirectory];
  if (v11)
  {
    v12 = v11;
    sub_192F959AC();

    v13 = *(v3 + 32);
    v13(v10, v7, v2);
    v14 = objc_opt_self();
    v15 = [v14 defaultManager];
    sub_192F959FC();
    v16 = sub_192F9679C();

    v17 = [v15 fileExistsAtPath_];

    if (v17)
    {
      v13(a1, v10, v2);
    }

    else
    {
      v100 = v13;
      v101 = v3 + 32;
      v102 = a1;
      if (qword_1ED6DF160 != -1)
      {
        OUTLINED_FUNCTION_1_2();
      }

      v104 = qword_1ED6DF140;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      v38 = swift_allocObject();
      v98 = xmmword_192FBCD90;
      *(v38 + 16) = xmmword_192FBCD90;
      v39 = AMSSetLogKeyIfNeeded();
      v40 = sub_192F967CC();
      v42 = v41;

      v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
      v43 = OUTLINED_FUNCTION_90();
      v103 = xmmword_192FBCD50;
      *(v43 + 16) = xmmword_192FBCD50;
      v110 = 0x5B203A4C5255;
      v111 = 0xE600000000000000;
      MEMORY[0x193B10CE0](v40, v42);

      MEMORY[0x193B10CE0](93, 0xE100000000000000);
      v113 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_1_63(v110);
      *(v43 + 64) = 0;
      *(v38 + 32) = v43;
      sub_19287AEE0();
      v108 = v44;
      v45._object = 0x8000000193025430;
      v45._countAndFlagsBits = 0xD000000000000014;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
      v116 = v2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v115);
      (*(v3 + 16))(boxed_opaque_existential_0, v10, v2);
      sub_192878268(v115, v109);
      OUTLINED_FUNCTION_11_38();
      v114 = 0;
      v47 = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_0();
        v47 = v95;
      }

      v48 = v104;
      if (*(v47 + 16) >= *(v47 + 24) >> 1)
      {
        OUTLINED_FUNCTION_3_13();
      }

      OUTLINED_FUNCTION_4_57();
      sub_1928FC07C(v115, &unk_1EAE131B0);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
      *(v38 + 40) = v108;
      v50 = sub_192F96E4C();
      if (os_log_type_enabled(v48, v50))
      {
        v51 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v52 = byte_1ED6DE5D8;
        v53 = swift_allocObject();
        *(v53 + 16) = v52;
        v110 = v38;
        v111 = sub_192BB97CC;
        v112 = v53;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_3_59();
        v54 = sub_192F9674C();
        v56 = v55;

        objc_autoreleasePoolPop(v51);
        v57 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v58 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_6_45(v58);
        *(v59 + 56) = MEMORY[0x1E69E6158];
        v58[4].n128_u64[0] = sub_1928FDB30();
        v58[2].n128_u64[0] = v54;
        v58[2].n128_u64[1] = v56;
        sub_192F9622C();

        objc_autoreleasePoolPop(v57);
      }

      v60 = [v14 defaultManager];
      v61 = sub_192F9596C();
      v110 = 0;
      v62 = [v60 createDirectoryAtURL:v61 withIntermediateDirectories:1 attributes:0 error:&v110];

      *&v105 = v110;
      if (v62)
      {
        v63 = OUTLINED_FUNCTION_5_44();
        v100(v63);
        v64 = v105;

        v65 = v64;
      }

      else
      {
        v66 = v105;
        v67 = sub_192F958DC();

        swift_willThrow();
        v68 = swift_allocObject();
        *(v68 + 16) = v98;
        v69 = AMSSetLogKeyIfNeeded();
        v70 = sub_192F967CC();
        v72 = v71;

        v73 = OUTLINED_FUNCTION_90();
        v74 = OUTLINED_FUNCTION_6_45(v73);
        v110 = 0x5B203A4C5255;
        v111 = 0xE600000000000000;
        MEMORY[0x193B10CE0](v70, v72, v74);

        MEMORY[0x193B10CE0](93, 0xE100000000000000);
        v113 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_1_63(v110);
        v73[4].n128_u8[0] = 0;
        *(v68 + 32) = v73;
        sub_19287AEE0();
        v108 = v75;
        v76._countAndFlagsBits = 0xD00000000000001CLL;
        v76._object = 0x8000000193025450;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v76);
        swift_getErrorValue();
        v77 = v106;
        v78 = v107;
        v116 = v107;
        v79 = __swift_allocate_boxed_opaque_existential_0(v115);
        (*(*(v78 - 8) + 16))(v79, v77, v78);
        sub_192878268(v115, v109);
        OUTLINED_FUNCTION_11_38();
        v114 = 0;
        v80 = v108;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v100;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_7_0();
          v80 = v96;
          v108 = v96;
        }

        if (*(v80 + 16) >= *(v80 + 24) >> 1)
        {
          OUTLINED_FUNCTION_3_13();
        }

        OUTLINED_FUNCTION_4_57();
        sub_1928FC07C(v115, &unk_1EAE131B0);
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v83);
        *(v68 + 40) = v108;
        v84 = sub_192F96E5C();
        if (os_log_type_enabled(v48, v84))
        {
          v85 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v86 = byte_1ED6DE5D8;
          v87 = swift_allocObject();
          *(v87 + 16) = v86;
          v110 = v68;
          v111 = sub_192BB97CC;
          v112 = v87;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
          sub_1928FD924();
          OUTLINED_FUNCTION_3_59();
          v88 = sub_192F9674C();
          v90 = v89;

          objc_autoreleasePoolPop(v85);
          v91 = objc_autoreleasePoolPush();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
          v92 = OUTLINED_FUNCTION_90();
          OUTLINED_FUNCTION_6_45(v92);
          *(v93 + 56) = MEMORY[0x1E69E6158];
          v92[4].n128_u64[0] = sub_1928FDB30();
          v92[2].n128_u64[0] = v88;
          v92[2].n128_u64[1] = v90;
          sub_192F9622C();

          objc_autoreleasePoolPop(v91);
        }

        v94 = OUTLINED_FUNCTION_5_44();
        v82(v94);
      }
    }
  }

  else
  {
    if (qword_1ED6DF160 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    v18 = qword_1ED6DF140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_192FBCD90;
    v20 = AMSSetLogKeyIfNeeded();
    v21 = sub_192F967CC();
    v23 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v24 = OUTLINED_FUNCTION_90();
    v105 = xmmword_192FBCD50;
    *(v24 + 16) = xmmword_192FBCD50;
    v110 = 0x5B203A4C5255;
    v111 = 0xE600000000000000;
    MEMORY[0x193B10CE0](v21, v23);

    MEMORY[0x193B10CE0](93, 0xE100000000000000);
    v25 = MEMORY[0x1E69E6158];
    v113 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_1_63(v110);
    *(v24 + 64) = 0;
    *(v19 + 32) = v24;
    v26._countAndFlagsBits = 0xD000000000000047;
    v26._object = 0x80000001930253E0;
    LogInterpolation.init(stringLiteral:)(v26);
    v27 = sub_192F96E5C();
    if (os_log_type_enabled(v18, v27))
    {
      v28 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = byte_1ED6DE5D8;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v110 = v19;
      v111 = sub_1928FA5C4;
      v112 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_59();
      v31 = sub_192F9674C();
      v33 = v32;

      objc_autoreleasePoolPop(v28);
      v34 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v35 = OUTLINED_FUNCTION_90();
      *(v35 + 16) = v105;
      *(v35 + 56) = v25;
      *(v35 + 64) = sub_1928FDB30();
      *(v35 + 32) = v31;
      *(v35 + 40) = v33;
      sub_192F9622C();

      objc_autoreleasePoolPop(v34);
    }

    v36 = [objc_opt_self() defaultManager];
    v37 = [v36 temporaryDirectory];

    sub_192F959AC();
  }
}

uint64_t URL.modifiedDate.getter@<X0>(uint64_t a1@<X8>)
{

  return sub_192CFB23C(a1);
}

uint64_t URL.createdDate.getter@<X0>(uint64_t a1@<X8>)
{

  return sub_192CFB23C(a1);
}

uint64_t sub_192CFB23C@<X0>(uint64_t a1@<X8>)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v32[-1] - v4;
  sub_192F959BC();
  v6 = [objc_opt_self() defaultManager];
  sub_192F959FC();
  v7 = sub_192F9679C();

  v32[0] = 0;
  v8 = [v6 attributesOfItemAtPath:v7 error:v32];

  v9 = v32[0];
  if (!v8)
  {
    v20 = v32[0];
    v21 = sub_192F958DC();

    swift_willThrow();
    v19 = sub_192F95CFC();
    v16 = a1;
    v17 = 1;
    v18 = 1;
    goto LABEL_6;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_192CFB520();
  sub_192F9669C();
  v10 = v9;

  sub_192BD2D38();

  if (v32[3])
  {
    v11 = sub_192F95CFC();
    swift_dynamicCast();
    OUTLINED_FUNCTION_10_35();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
    {
      (*(*(v11 - 8) + 32))(a1, v5, v11);
      OUTLINED_FUNCTION_10_35();
LABEL_6:
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
      return sub_192F9599C();
    }
  }

  else
  {
    sub_1928FC07C(v32, &unk_1EAE131B0);
    v11 = sub_192F95CFC();
    OUTLINED_FUNCTION_10_35();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  sub_192F95CFC();
  OUTLINED_FUNCTION_10_35();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  if (__swift_getEnumTagSinglePayload(v5, 1, v11) != 1)
  {
    sub_1928FC07C(v5, &qword_1EAE12E10);
  }

  return sub_192F9599C();
}

unint64_t sub_192CFB520()
{
  result = qword_1EAE11858;
  if (!qword_1EAE11858)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11858);
  }

  return result;
}

uint64_t sub_192CFB5C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CFB5D8()
{
  OUTLINED_FUNCTION_5();
  swift_getObjectType();
  v1 = sub_192CFC144();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_192CFB690;

  return sub_1928F6B4C(v1);
}

uint64_t sub_192CFB690()
{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;
  *(v4 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_192CFB7A4, 0, 0);
}

uint64_t sub_192CFB7A4()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  v2 = sub_192CFC1D8(v0[2]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t static URLParserInternal.type(for:bag:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CFB844()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  type metadata accessor for URLParser();
  inited = swift_initStackObject();
  v0[7] = inited;
  *(inited + 16) = v1;
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_192CFB908;
  v4 = v0[5];

  return sub_192CFB5C4(v4);
}

uint64_t sub_192CFB908()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v4 + 72) = v0;

  if (v0)
  {
    v7 = sub_192CFBA8C;
  }

  else
  {
    *(v4 + 80) = v3;
    v7 = sub_192CFBA24;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192CFBA24()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_192CFBA8C()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192CFBBA8(uint64_t a1, uint64_t a2, const void *a3)
{
  v3[2] = a2;
  v6 = sub_192F95A8C();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a3);
  sub_192F959AC();
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_192CFBCD8;

  return static URLParserInternal.type(for:bag:)(v7, a2);
}

uint64_t sub_192CFBCD8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[6];
  (*(v5[4] + 8))(v5[5], v5[3]);
  swift_unknownObjectRelease();
  if (v3)
  {
    v10 = sub_192F958CC();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(v6[6]);

  v11 = v8[1];

  return v11();
}

id URLParserInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLParserInternal.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLParserInternal();
  return objc_msgSendSuper2(&v2, sel_init);
}

id URLParserInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLParserInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192CFBF9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_192CFC05C;

  return sub_192CFBBA8(v2, v3, v4);
}

uint64_t sub_192CFC05C()
{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_192CFC144()
{
  sub_1928F6488();
  v1 = *(v0 + 16);
  if (v1 >= *(v0 + 24) >> 1)
  {
    sub_1928F6488();
  }

  OUTLINED_FUNCTION_62_0();
  *(v2 + 16) = v1 + 1;
  v3 = v2 + 24 * v1;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = v4;
  *(v3 + 48) = 6;
  return v2;
}

void *sub_192CFC1D8(uint64_t a1)
{
  type metadata accessor for URLParserError();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v8 = sub_192F9592C();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = sub_192C65E7C();
    if (!v1)
    {
      v7 = sub_192CFC994(a1, v12, v13, v14);
      v16 = v15;

      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
        swift_willThrowTypedImpl();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    *v7 = 0x74204C5255206F4ELL;
    v7[1] = 0xEF686374616D206FLL;
    v7[2] = 0xD000000000000027;
    v7[3] = v17;
    v7[4] = 2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_64();
    sub_192CFE5FC(v18);
    swift_allocError();
    sub_192CFCB9C(v7, v19);
    swift_willThrow();
    sub_192CFCC00(v7);
  }

  return v7;
}

uint64_t type metadata accessor for URLParserError()
{
  result = qword_1EAE11A50;
  if (!qword_1EAE11A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CFC3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  type metadata accessor for URLParserError();
  OUTLINED_FUNCTION_10();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v65 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15AD8);
  OUTLINED_FUNCTION_62();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v65 - v23;
  v25 = (&v65 + *(v22 + 56) - v23);
  sub_192CFCB9C(a1, &v65 - v23);
  sub_192CFCB9C(a2, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_192CFCB9C(v24, v16);
    v27 = *v16;
    v26 = v16[1];
    v29 = v16[2];
    v28 = v16[3];
    v30 = v16[4];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *v25;
      v32 = v25[1];
      v34 = v25[2];
      v33 = v25[3];
      v74 = v25[4];
      if (v27 == v31 && v26 == v32)
      {
      }

      else
      {
        v36 = sub_192F9775C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v29 == v34 && v28 == v33)
      {
      }

      else
      {
        OUTLINED_FUNCTION_77();
        v56 = sub_192F9775C();

        if ((v56 & 1) == 0)
        {
LABEL_30:
          sub_192CFCC00(v24);
          return 0;
        }
      }

      v59 = v30 == v74;
      goto LABEL_43;
    }

LABEL_12:
    sub_1928FB988(v24, &qword_1EAE15AD8);
    return 0;
  }

  v73 = v11;
  v74 = v4;
  sub_192CFCB9C(v24, v19);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A90);
  v38 = v37[12];
  v39 = *&v19[v38];
  v40 = *&v19[v38 + 8];
  v41 = v37[16];
  v42 = *&v19[v41 + 8];
  v71 = *&v19[v41];
  v72 = v39;
  v43 = v37[20];
  v70 = *&v19[v43];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    (*(v6 + 8))(v19, v74);
    goto LABEL_12;
  }

  v68 = v40;
  v69 = v42;
  v44 = *(v25 + v38);
  v45 = *(v25 + v38 + 8);
  v46 = *(v25 + v41 + 8);
  v66 = *(v25 + v41);
  v67 = v44;
  v65 = *(v25 + v43);
  v47 = v74;
  (*(v6 + 32))(v73, v25, v74);
  v48 = sub_192F9598C();
  v49 = *(v6 + 8);
  v49(v19, v47);
  if ((v48 & 1) == 0)
  {
    v57 = OUTLINED_FUNCTION_77();
    (v49)(v57);

    goto LABEL_29;
  }

  v50 = v46;
  v51 = v72 == v67 && v68 == v45;
  v52 = v69;
  if (v51)
  {
  }

  else
  {
    v53 = sub_192F9775C();

    if ((v53 & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_77();
      (v49)(v54);
LABEL_20:

LABEL_29:

      goto LABEL_30;
    }
  }

  if (v71 == v66 && v52 == v50)
  {

    v63 = OUTLINED_FUNCTION_77();
    (v49)(v63);
  }

  else
  {
    v61 = sub_192F9775C();

    v62 = OUTLINED_FUNCTION_77();
    (v49)(v62);
    if ((v61 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v59 = v70 == v65;
LABEL_43:
  v58 = v59;
  sub_192CFCC00(v24);
  return v58;
}

uint64_t sub_192CFC8D8(uint64_t a1)
{
  v2 = sub_192CFE5FC(&qword_1EAE15A98);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CFC930(uint64_t a1)
{
  v2 = sub_192CFE5FC(&qword_1EAE15A98);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_192CFC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_192CFCC5C(a1, v14 - v13);
  if (a2 && (sub_192CFD020(v15, a2) & 1) != 0)
  {
    v16 = 0;
  }

  else if (a4 && (sub_192CFD020(v15, a4) & 1) != 0)
  {
    v16 = 2;
  }

  else if (a3 && (sub_192CFD020(v15, a3) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    type metadata accessor for URLParserError();
    OUTLINED_FUNCTION_1_64();
    sub_192CFE5FC(v17);
    v16 = swift_allocError();
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15A90);
    v21 = (v19 + v20[12]);
    v22 = (v19 + v20[16]);
    v23 = v20[20];
    (*(v10 + 16))(v19, a1, v8);
    OUTLINED_FUNCTION_62_0();
    *v21 = 0xD000000000000012;
    v21[1] = v24;
    OUTLINED_FUNCTION_62_0();
    *v22 = v25 | 0x24;
    v22[1] = v26;
    *(v19 + v23) = 7;
    swift_storeEnumTagMultiPayload();
  }

  v27 = OUTLINED_FUNCTION_48();
  v28(v27);
  return v16;
}

uint64_t sub_192CFCB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLParserError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CFCC00(uint64_t a1)
{
  v2 = type metadata accessor for URLParserError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192CFCC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v39 - v6;
  v8 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v41 = &v39 - v16;
  v42 = v10;
  v39 = *(v10 + 16);
  v39(a2, a1, v8);
  v17 = sub_192CF9E3C();
  v18 = sub_192BD5670(0x6E6F69746361, 0xE600000000000000, v17);
  if (!v18 || (v19 = sub_192C949F0(v18), v21 = v20, , !v21))
  {

    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = sub_192BD5670(7107189, 0xE300000000000000, v17);

  if (!v22 || (v23 = sub_192C949F0(v22), v25 = v24, , !v25))
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    goto LABEL_17;
  }

  if (v19 != 0x746E756F636361 || v21 != 0xE700000000000000)
  {
    v28 = sub_192F9775C();

    if (v28)
    {
      goto LABEL_19;
    }

LABEL_17:

    v29 = v42;
    goto LABEL_24;
  }

LABEL_19:
  sub_192F95A3C();

  v29 = v42;
  v30 = OUTLINED_FUNCTION_12_30();
  v31(v30);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v32 = v41;
    v39(v41, a1, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_1928FB988(v7, &unk_1EAE144B0);
    }
  }

  else
  {
    v32 = v41;
    (*(v29 + 32))(v41, v7, v8);
  }

  (*(v29 + 32))(a2, v32, v8);
LABEL_24:
  result = sub_192F95A1C();
  if (v34)
  {
    v35 = sub_192F9699C();

    if ((v35 & 1) == 0)
    {
      v36 = v40;
      sub_192CFA1D0(v40);
      v37 = OUTLINED_FUNCTION_12_30();
      v38(v37);
      return (*(v29 + 32))(a2, v36, v8);
    }
  }

  return result;
}

uint64_t sub_192CFD020(uint64_t a1, uint64_t a2)
{
  sub_192F9592C();
  v13 = MEMORY[0x193B10D50]();
  v3 = *(a2 + 16);
  if (v3)
  {
    v12 = 0x80000001930255B0;
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);

      v8 = sub_192CFE254(v6, v5, 1);
      v9 = sub_192F9679C();
      v10 = [v8 numberOfMatchesInString:v9 options:2 range:{0, v13, v12}];

      if (v10 >= 1)
      {
        break;
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    return 1;
  }

  else
  {
LABEL_5:

    return 0;
  }
}

BOOL sub_192CFD538()
{
  v0 = sub_192F9750C();

  return v0 != 0;
}

uint64_t sub_192CFD59C()
{
  v0 = sub_192F9750C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192CFD5E8(char a1)
{
  if (!a1)
  {
    return 0x702D6C72752D3276;
  }

  if (a1 == 1)
  {
    return 0x747461702D6C7275;
  }

  return 0xD000000000000014;
}

uint64_t sub_192CFD658()
{
  OUTLINED_FUNCTION_14_29();
  if (v4)
  {
    if (!v5 || (sub_192C1C680(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (!v2 || (sub_192C1C680(v3, v2) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  if (v1)
  {
    if (v0)
    {
      v6 = OUTLINED_FUNCTION_48();
      if (sub_192C1C680(v6, v7))
      {
        return 1;
      }
    }
  }

  else if (!v0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_192CFD6E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15B08);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFEA9C();
  sub_192F9799C();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  sub_1929245BC(&qword_1EAE133F8);
  OUTLINED_FUNCTION_3_60();
  if (!v4)
  {
    v18 = v16;
    v17 = 1;
    OUTLINED_FUNCTION_3_60();
    v18 = a4;
    v17 = 2;
    OUTLINED_FUNCTION_3_60();
  }

  return (*(v10 + 8))(v14, v8);
}

void sub_192CFD884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_192F978BC();
    sub_192C1E504();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_192F978BC();
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_192F978BC();
    return;
  }

  sub_192F978BC();
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_192F978BC();
  sub_192C1E504();
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_192F978BC();
  OUTLINED_FUNCTION_48();

  sub_192C1E504();
}

uint64_t sub_192CFD938(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15B00);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v3, v4);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFEA9C();
  sub_192F9797C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  sub_1929245BC(&qword_1ED6DE860);
  OUTLINED_FUNCTION_2_56();
  sub_192F9759C();
  OUTLINED_FUNCTION_2_56();
  sub_192F9759C();
  OUTLINED_FUNCTION_2_56();
  sub_192F9759C();
  v5 = OUTLINED_FUNCTION_31_1();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_192CFDB6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15AC8);
  OUTLINED_FUNCTION_4_0();
  v10 = v9;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v16 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFE698();
  sub_192F9799C();
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  sub_192CFE740();
  sub_192F976CC();
  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_192CFDCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192F9789C();
  sub_192CFD884(v7, a1, a2, a3);
  return sub_192F978DC();
}

void *sub_192CFDD1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15AC0);
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192CFE698();
  sub_192F9797C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_192CFE6EC();
    sub_192F975EC();
    (*(v5 + 8))(v9, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v10;
}

BOOL sub_192CFDE94@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD538();
  *a1 = result;
  return result;
}

unint64_t sub_192CFDEC8@<X0>(void *a1@<X8>)
{
  result = sub_192CFD580();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

BOOL sub_192CFDF18@<W0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD538();
  *a1 = result;
  return result;
}

uint64_t sub_192CFDF58(uint64_t a1)
{
  v2 = sub_192CFE698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CFDF94(uint64_t a1)
{
  v2 = sub_192CFE698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CFDFF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD59C();
  *a1 = result;
  return result;
}

uint64_t sub_192CFE024@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192CFD5E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CFE058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFD59C();
  *a1 = result;
  return result;
}

uint64_t sub_192CFE090(uint64_t a1)
{
  v2 = sub_192CFEA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CFE0CC(uint64_t a1)
{
  v2 = sub_192CFEA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CFE108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192CFD938(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_192CFE17C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_192CFDD1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_192CFE1D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_192F9789C();
  sub_192CFD884(v5, v1, v2, v3);
  return sub_192F978DC();
}

id sub_192CFE254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192F9679C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_192F958DC();

    swift_willThrow();
  }

  return v6;
}

void sub_192CFE340(uint64_t a1, uint64_t a2)
{
  sub_192CFE3B4(319, a2);
  if (v2 <= 0x3F)
  {
    sub_192CFE4BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_192CFE3B4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EAE11B00)
  {
    MEMORY[0x1EEE9AC00](0, a2);
    sub_192F95A8C();
    type metadata accessor for Code(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EAE11B00);
    }
  }
}

void sub_192CFE4BC()
{
  if (!qword_1EAE11870)
  {
    type metadata accessor for Code(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EAE11870);
    }
  }
}

uint64_t sub_192CFE52C(void *a1)
{
  a1[1] = sub_192CFE5FC(&qword_1EAE15A98);
  a1[2] = sub_192CFE5FC(&qword_1EAE15AA0);
  result = sub_192CFE5FC(&qword_1EAE15AA8);
  a1[3] = result;
  return result;
}

uint64_t sub_192CFE5B8(uint64_t a1)
{
  result = sub_192CFE5FC(&qword_1EAE15AB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_192CFE5FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLParserError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192CFE644()
{
  result = qword_1EAE15AB8;
  if (!qword_1EAE15AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AB8);
  }

  return result;
}

unint64_t sub_192CFE698()
{
  result = qword_1EAE11AB0;
  if (!qword_1EAE11AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11AB0);
  }

  return result;
}

unint64_t sub_192CFE6EC()
{
  result = qword_1EAE11A80;
  if (!qword_1EAE11A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A80);
  }

  return result;
}

unint64_t sub_192CFE740()
{
  result = qword_1EAE15AD0;
  if (!qword_1EAE15AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLParserBag.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_192CFE840(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CFE894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_192CFE8FC()
{
  result = qword_1EAE15AE0;
  if (!qword_1EAE15AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AE0);
  }

  return result;
}

unint64_t sub_192CFE998()
{
  result = qword_1EAE15AF8;
  if (!qword_1EAE15AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15AF8);
  }

  return result;
}

unint64_t sub_192CFE9F0()
{
  result = qword_1EAE11AA0;
  if (!qword_1EAE11AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11AA0);
  }

  return result;
}

unint64_t sub_192CFEA48()
{
  result = qword_1EAE11AA8;
  if (!qword_1EAE11AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11AA8);
  }

  return result;
}

unint64_t sub_192CFEA9C()
{
  result = qword_1EAE11A98;
  if (!qword_1EAE11A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for URLParserBag.CommerceUIURLs.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CFEC14()
{
  result = qword_1ED6DE628;
  if (!qword_1ED6DE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE628);
  }

  return result;
}

unint64_t sub_192CFEC6C()
{
  result = qword_1EAE11A88;
  if (!qword_1EAE11A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A88);
  }

  return result;
}

unint64_t sub_192CFECC4()
{
  result = qword_1EAE11A90;
  if (!qword_1EAE11A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11A90);
  }

  return result;
}

uint64_t URLRequest.ams_fpdiDataToSign(signedAction:fpdiBag:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v13 - v4;
  v13[1] = *(a1 + 72);
  sub_192F953CC();
  v6 = sub_192F95A8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_192CFEEB0(v5);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  v9 = sub_192F9539C();
  v10 = [v9 ams_cookies];

  sub_192F9669C();
  sub_192CAC248();
  v8 = v11;

  return v8;
}

uint64_t sub_192CFEEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id URLSentry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLSentry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLSentry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of URLSentry.isTrusted(url:)()
{
  OUTLINED_FUNCTION_5();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_192BCA814;
  v5 = OUTLINED_FUNCTION_49_0();

  return v7(v5);
}

uint64_t sub_192CFF144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_192CFF3E0(a3, v23 - v11);
  v13 = sub_192F96C6C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_19290736C(v12);
  }

  else
  {
    sub_192F96C5C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_192F96B7C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_192F9687C() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_19290736C(a3);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19290736C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_192CFF3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192CFF450()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_12(v1);

  return v4(v3);
}

uint64_t sub_192CFF4E8()
{
  v0 = sub_192F9750C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CFF53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_192C1C680(a1, a3))
  {
    if (a2)
    {
      if (a4)
      {
        v6 = OUTLINED_FUNCTION_48();
        if (sub_192C1C680(v6, v7))
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_192CFF590(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15B28);
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19294D830();
  sub_192F9799C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131F0);
  sub_1929245BC(&qword_1EAE133F8);
  OUTLINED_FUNCTION_1_65();
  sub_192F976CC();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    OUTLINED_FUNCTION_1_65();
    sub_192F9768C();
  }

  return (*(v9 + 8))(v13, v7);
}

void sub_192CFF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_192C1E504();
  if (a3)
  {
    sub_192F978BC();
    OUTLINED_FUNCTION_48();

    sub_192C1E504();
  }

  else
  {
    sub_192F978BC();
  }
}

uint64_t sub_192CFF77C(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  sub_192C1E504();
  sub_192F978BC();
  if (a2)
  {
    sub_192C1E504();
  }

  return sub_192F978DC();
}

uint64_t sub_192CFF814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFF4E8();
  *a1 = result;
  return result;
}

uint64_t sub_192CFF844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19294D88C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CFF870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CFF4E8();
  *a1 = result;
  return result;
}

uint64_t sub_192CFF8AC(uint64_t a1)
{
  v2 = sub_19294D830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192CFF8E8(uint64_t a1)
{
  v2 = sub_19294D830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192CFF950()
{
  v1 = *(v0 + 8);
  sub_192F9789C();
  sub_192C1E504();
  sub_192F978BC();
  if (v1)
  {
    sub_192C1E504();
  }

  return sub_192F978DC();
}

unint64_t sub_192CFF9EC()
{
  result = qword_1ED6DE620;
  if (!qword_1ED6DE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE620);
  }

  return result;
}

unint64_t sub_192CFFA44()
{
  result = qword_1ED6DE300;
  if (!qword_1ED6DE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE15B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6DE300);
  }

  return result;
}

unint64_t sub_192CFFAAC()
{
  result = qword_1EAE123D8;
  if (!qword_1EAE123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE123D8);
  }

  return result;
}

void aslgmuibau()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B78 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FD0080[byte_192FCFD60[(-3 * (dword_1EAE15B78 ^ 0x8A ^ dword_1EAE15B50))] ^ 7]) + 16];
  v1 = *(v0 - 4);
  v2 = qword_1E73B2810[(byte_192FCFA68[(byte_192FCF75C[(-3 * (v1 ^ dword_1EAE15B50 ^ 0x8A)) - 12] ^ 0xC3) - 8] ^ (-3 * (v1 ^ dword_1EAE15B50 ^ 0x8A))) - 58];
  v3 = v1 - &v8 + *v2;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - dword_1EAE15B78) ^ 0x8A)) ^ byte_192FCF650[byte_192FD01D0[(-3 * ((dword_1EAE15B50 - dword_1EAE15B78) ^ 0x8A))] ^ 0xE2]) - 111] - 12;
  v7 = *(v6 + 8 * ((60 * ((*(v6 + 8 * ((byte_192FCF658[(byte_192FD01D0[(-3 * ((v5 + *(v0 - 4)) ^ 0x8A))] ^ 0x80) - 8] ^ (-3 * ((v5 + *(v0 - 4)) ^ 0x8A))) + 2697)))(24, 0x1010040E2407E0ALL) != 0)) | 0x682u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192CFFCEC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x78D94BCC6DAD3D9BLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((459 * (v3 != 0)) ^ 0x4FDu)))();
}

uint64_t sub_192CFFE3C()
{
  v5 = *(v3 + 8) + 1822127336;
  v6 = ((v2 - 31) ^ 0x616F660B) + ((v2 - 294191445) & 0x1188FFFDu) + v0 > v5;
  if (v1 > 0x25B74D78 != v5 < 0xDA48B283)
  {
    v6 = v1 > 0x25B74D78;
  }

  return (*(v4 + 8 * (((2 * !v6) | (8 * !v6)) ^ v2)))();
}

void sub_192CFFED0()
{
  v8 = v3 ^ (v6 + 851);
  v9 = *v4;
  *(*v4 + v2) = 0;
  *(v9 + (v8 - 1289608258 + v1)) = 0;
  v10 = v1 - 2027506636;
  *(v9 + (v10 + 3)) = 1;
  *(v9 + (v10 + 2)) = 0;
  *v0 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_192D003FC()
{
  v6 = *(v3 + 8) - 1523222835 + v4 + (v0 ^ 0x6B0) - 2015;
  v7 = v2 > 0x1918BB1C;
  v8 = v1 + 1846409495 > v6;
  if (v7 != v6 < 0xE6E744DF)
  {
    v8 = v7;
  }

  return (*(v5 + 8 * ((1289 * v8) ^ v0)))();
}

uint64_t sub_192D00884(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v8 + 12);
  *(a6 + 8) = v8 + 12;
  return (*(v10 + 8 * ((((v11 + v7) < 0xFFFFFFFC) * (a2 + v6 - 586 + v9 + v6 - 972 + 740)) ^ v6)))();
}

uint64_t sub_192D008CC()
{
  v5 = *(v3 + 8) - 780318865;
  v6 = v1 > ((v0 - 144781323) & 0xDCA5BEFF) - 321852806;
  v7 = v2 - 967755454 > v5;
  if (v5 < 0x3F2A850A == v6)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((v6 * (v0 ^ 0x67D)) ^ v0)))();
}

uint64_t sub_192D00D58@<X0>(int a1@<W1>, uint64_t a2@<X5>, int a3@<W8>)
{
  v7 = *(v4 + 12);
  *(a2 + 40) = v4 + 12;
  return (*(v6 + 8 * ((2654 * (v7 + v3 < ((6 * ((a3 - 903) ^ 0x271)) ^ (a1 - 725)) + ((a3 - 903) ^ (v5 + 410)))) ^ (a3 - 903))))();
}

uint64_t sub_192D00DB4()
{
  v6 = *(v3 + 8) - 1439124990;
  v7 = v1 > 0xE81A105A;
  v8 = v2 - 1626561575 > v6;
  if (v7 == v6 < 0x17E5EF9D)
  {
    v7 = v8;
  }

  return (*(v5 + 8 * ((v7 * (((v0 - 1811644490) | 0x40001037) - v4 + 17)) | v0)))();
}

uint64_t sub_192D00F54@<X0>(int a1@<W8>)
{
  v6 = ((2 * (v2 + 2 * a1)) & 0xFBDFFF3C) + ((v2 + 2 * a1) ^ 0xFDEFFF9F);
  if (v1 > 0x6F87E38C != v6 - 1836573492 < 0x90781C6B)
  {
    v7 = v6 - 1836573492 < 0x90781C6B;
  }

  else
  {
    v7 = v6 - 1836573492 > v3;
  }

  return (*(v5 + 8 * (v4 ^ (2045 * v7))))();
}

uint64_t sub_192D012F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v34 + 8 * (v33 ^ 0xEFC)))();
  (*(v34 + 8 * (v33 ^ 0xECB)))();
  v43 = (*(v34 + 8 * (v33 ^ 0xEF5)))(a12, 0);
  return (*(v34 + 8 * ((19 * (((v33 + 1) ^ (v43 == 0)) & 1)) ^ v33)))(v43, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_192D01420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v38 + 8 * (v35 + 712)))(a1, qword_1E73B2810[v35 - 2212] - 12);
  (*(v38 + 8 * (v35 ^ 0x336)))(a1);
  (*(v38 + 8 * (v35 + 750)))(a1, v37);
  v40 = (*(v38 + 8 * (v35 ^ 0x32A)))();
  return (*(v38 + 8 * (((v40 == qword_1E73B2810[v35 - 2202] - 12) * ((((2 * v35) ^ 0x19DC) - 1969) ^ 0x30A)) ^ v35)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D01514()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 329) | 0x101) + 131 * (v0 ^ 0x140) - 651)) ^ v0)))();
}

uint64_t sub_192D015C4()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 ^ 0xAC8)))() == v1;
  return (*(v4 + 8 * ((v5 * ((v0 - 22) ^ (v0 - 72))) ^ v0)))();
}

uint64_t sub_192D0165C()
{
  (*(v4 + 8 * (v0 ^ 0xAF0)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 ^ 0x15B) + 816) ^ (21 * (v0 ^ 0x15B)))) ^ v0)))(v5);
}

uint64_t sub_192D01714()
{
  (*(v4 + 8 * (v0 + 2640)))(v3, v2);
  v5 = (*(v4 + 8 * (v0 + 2632)))() == v1;
  return (*(v4 + 8 * ((v5 * (((v0 - 303) | 0x891) + ((v0 + 649812861) & 0x5944ABFB) - 1433)) ^ v0)))();
}

uint64_t sub_192D0178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v44 = (v42 - 120) | 0x2A0;
  (*(v43 + 8 * (v44 + 59)))(a41);
  (*(v43 + 8 * (v44 ^ 0x1DF)))(a42);
  return (*(v43 + 8 * (((a40 == 0) * ((v44 ^ 0xD4049A85) + 1475796767 + ((v44 - 29915003) & 0xD5CCFCFF))) ^ v44)))(a40, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D020F8@<X0>(int a1@<W8>)
{
  v3 = a1 - 235;
  v4 = (*(v2 + 8 * (a1 + 2222)))();
  return (*(v2 + 8 * ((((((v3 + 726) ^ (v1 == -45004)) & 1) == 0) * (v3 - 392)) ^ v3)))(v4);
}

uint64_t sub_192D02140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  a18 = 0;
  a20 = 0;
  v23 = (*(v22 + 8 * (v21 + 1803)))(*qword_1E73B2810[v21 ^ 0x478], *v20, *(v20 + 12) + (v21 ^ 0x8726B05E), &a18, &a20);
  v24 = ((v21 + 1409547257) | 0x80009014) + (v23 ^ 0x5F796EFD) + ((2 * v23) & 0xBEF2DDFA) == 1132330871;
  return (*(v22 + 8 * (v24 | (4 * v24) | v21)))(v23, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11);
}

uint64_t sub_192D02284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (*(v25 + 8 * (v22 + 1803)))(*v23, *v20, (*(v20 + 12) - 2027506636), &a18, &a20);
  v35 = (v27 ^ ((v22 ^ (v24 + 934)) + 1668486274)) - 556171400 + ((2 * v27) & 0x6EEF49F2);
  if (v35 == 374416497)
  {
    v36 = (*(v25 + 8 * ((v21 - 10) ^ 0xD4049077)))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v25 + 8 * ((37 * v36) ^ 0x78C)))();
  }

  else if (v35 == 642851956)
  {
    return (*(v25 + 4792))(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    v38 = 946232179 * ((v26 - 108) ^ 0x907B3CCF);
    *(v26 - 104) = v38 ^ 0x638;
    *(v26 - 100) = v35 - v38 + 962804850;
    v39 = (*(v25 + 8 * ((v21 - 29) ^ 0xD4049077)))(v26 - 108);
    return (*(v25 + 8 * ((3280 * (*(v26 - 108) != 1181123576)) ^ 0x4AD)))(v39);
  }
}

uint64_t sub_192D0289C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v16 = (a1 + 1458843159) & 0x4F8E;
  (*(v15 + 8 * (a1 ^ 0x26Cu)))(v13);
  v16 ^= 0x321u;
  v17 = (*(v15 + 8 * (v16 + 1760)))(**(v14 + 8 * (v16 - 1195)), a11, a13);
  return (*(v15 + 8 * v16))(v17);
}

void sub_192D028F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, _DWORD *a50, uint64_t a51, uint64_t a52)
{
  v54 = *(a6 + 144);
  (*(v53 + 8 * (v52 + 737901331)))(*(v54 - 0x1729FABDC6538B0));
  *(v54 - 0x1729FABDC6538B0) = a52;
  *a50 = a15;
  JUMPOUT(0x192D02954);
}

uint64_t sub_192D02B88(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v2 - 42) ^ 0xFFFFFF65) & v1) != 32) * ((1249 * ((v2 - 42) ^ 0x87)) ^ 0x9E8)) ^ (v2 - 42))))();
}

uint64_t sub_192D02C80(uint64_t a1)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE91 ^ (v3 - 2076)) + v1;
  *(a1 - 7 + v6) = *(v4 - 7 + v6);
  return (*(v5 + 8 * ((791 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_192D02D50(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((50 * (v5 != (v2 ^ 0x32u) - 737900046 - 3557068919)) ^ v2 ^ 0x32)))();
}

uint64_t sub_192D02D9C(uint64_t a1)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 != v3 + v5) * v1) ^ v2)))();
}

void sub_192D02DD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(a23 - 0x1729FABDC6538A8) = a20 - 1361886286 - (((a2 + v23 + 56) ^ 0x5DA685EB) & (2 * a20));
  *(a23 - 0x1729FABDC6538A4) = 1786714870;
  JUMPOUT(0x192D02F64);
}

uint64_t sub_192D03290()
{
  v6 = v0 - 284;
  *(v3 - 0x1729FABDC6538B0) = 0;
  *(v3 - 0x1729FABDC6538A8) = v1;
  *(v3 - 0x1729FABDC6538A4) = 1786714870;
  v7 = (*(v5 + 8 * (v0 + 2071)))(v3 - 0x1729FABDC6538B0);
  return (*(v5 + 8 * (((((v2 == 0) ^ (v4 + 2 * (v6 ^ 0x1F))) & 1) * (2 * (v6 ^ 0x71F) - 2670)) | (2 * (v6 ^ 0x71F)))))(v7);
}

void sub_192D033A4(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 1257)))();
  *v1 = 0;
  *(v1 + 8) = 1840070043;
  *(v1 + 12) = v2;
  JUMPOUT(0x192D033D0);
}

void fm23w5mn5o()
{
  v0 = qword_1E73B2810[((-3 * (qword_1EAE15B48 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FCF650[byte_192FD01D0[(-3 * (qword_1EAE15B48 ^ 0x8A ^ dword_1EAE15B50))] ^ 0x8E]) - 41];
  v1 = 1543604477 * ((*v0 + qword_1EAE15B48) ^ &v2 ^ 0x45EA3381FA58338ALL);
  qword_1EAE15B48 = v1;
  *v0 = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D0353C()
{
  (*(v1 + 23632))();
  *(v0 + 8) = 0;
  return (*(v1 + 8 * ((188 * (((*(v0 + 24) == 0) ^ 0x45) & 1)) ^ 0x27Cu)))();
}

uint64_t sub_192D03588()
{
  (*(v1 + 8 * (v2 ^ 0x9F6u)))();
  *(v0 + 24) = 0;
  *(v0 + 36) = 0;
  *v0 = 0;
  return (*(v1 + 8 * (((*(v0 + 48) == 0) * ((v2 ^ 0x139) - 423 + (((v2 ^ 0x139) + 1549308985) & 0xBF3) - 1241)) ^ v2 ^ 0x139)))();
}

uint64_t sub_192D03668@<X0>(int a1@<W8>)
{
  v3 = a1 - 468;
  (*(v2 + 8 * (a1 + 2072)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * ((v3 ^ 0x1A0F9FEF) + v3 + 14 - 437231595)) ^ v3)))();
}

uint64_t sub_192D036C0@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2526)))();
  *(v1 + 64) = 0;
  *(v1 + 76) = 0;
  *(v1 + 40) = 0;
  return 0;
}

void tn46gtiuhw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || a6 == 0 || a7 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D037B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  *a4 = 0;
  *a19 = 0;
  *a6 = 0;
  *a7 = 0;
  return (*(v19 + 8 * ((49 * (unk_1EAE31C78 == 0)) ^ 0x215u)))();
}

uint64_t sub_192D0384C()
{
  *(v2 + 36) = 0;
  *v2 = 0;
  return (*(v1 + 8 * (((*(v2 + 48) == 0) * ((v0 - 2388) ^ 0x14 ^ (81 * (v0 ^ 0xB7E)))) ^ v0)))();
}

uint64_t sub_192D03954@<X0>(int a1@<W8>)
{
  v4 = a1 - 25;
  (*(v1 + 8 * (a1 + 2395)))();
  *(v2 + 64) = 0;
  *(v2 + 76) = 0;
  *(v2 + 40) = 0;
  v5 = (*(v1 + 8 * (v4 + 2414)))(24, 0x1010040E2407E0ALL);
  return (*(v1 + 8 * (((v5 == 0) * (((6 * (v4 ^ 0x337)) ^ 0x543542CF) + (v4 ^ (v3 + 534)))) ^ v4)))(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_192D03A48(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xFEE00FC579CDB96;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * (v1 ^ 0xD42)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 + 1633413135) & 0x9EA41B7E) + 164) ^ (v1 + 1065))) ^ v1)))(v3, v4, v5, v6);
}

void qi864985u0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D087B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, void *a34, void *a35)
{
  *a35 = 0;
  *a32 = 0;
  *a34 = 0;
  *a28 = 0;
  return (*(v35 + 8 * ((200 * (a33 != 0)) ^ 0x26Au)))(a1, a2, 551906117);
}

uint64_t sub_192D088BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if ((a33 + 6) < 5)
  {
    goto LABEL_2;
  }

  if (a33 == -1)
  {
    v61 = a3 + v54;
    v62 = a3 + v54 - 600;
    v63 = (*(v53 + 8 * (v54 + 551908262)))(*a10, &a48) != 0;
    return (*(v53 + 8 * ((v63 * (v61 - 763)) ^ v62)))();
  }

  else
  {
    if (a33 == -8)
    {
LABEL_2:
      v55 = a3 + v54 - 600;
      v56 = (v54 + 13) ^ ((*(v53 + 8 * (v54 + 551908262)))(*a19, &a53) == ((v54 - 686759667) ^ 0xB62B78EF));
      return (*(v53 + 8 * ((44 * (v56 & 1)) ^ v55)))();
    }

    v58 = a3 + v54;
    v59 = a3 + v54 - 189;
    v60 = (*(v53 + 8 * (v54 ^ (v54 + 1160))))(*a11, &a38) == (v54 ^ (v54 - 225)) - 227;
    return (*(v53 + 8 * ((v60 * (v58 + 892)) ^ v59)))();
  }
}

uint64_t sub_192D08BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + 8 * (v38 + 415)))(v39 - 144, 0);
  if (v40 >= 0)
  {
    a31 = *(v39 - 144);
  }

  v48 = a31 / (((v38 - 512) | 0x40u) ^ 0x856);
  v49 = *(a36 + 40 * v36 + 36);
  v51 = v49 >= v48;
  v50 = v49 - v48;
  v51 = !v51 || v50 >= 0x12C;
  v52 = !v51;
  return (*(v37 + 8 * ((35 * v52) | v38)))(v40, v41, 551906117, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_192D08C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v39 = (*(v37 + 8 * (v38 + 828)))(*(v35 + 40 * v36 + 16), 0x100004077774924);
  *a35 = v39;
  return (*(v37 + 8 * (((v39 == 0) * ((v38 + 464) ^ v38 ^ 0x240)) | v38)))();
}

uint64_t sub_192D08CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34)
{
  v38 = (*(v36 + 8 * ((v37 - 551) ^ 0xDA5)))(*(v34 + 40 * v35 + 32), 0x100004077774924);
  *a34 = v38;
  return (*(v36 + 8 * (((v38 == 0) * ((((4 * (v37 - 551)) ^ 0x1814) + 1655999399) & 0x9D4B7BFC ^ 0x82F)) ^ (v37 - 551))))(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_192D08D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * (v36 ^ 0xB1A)))(*a35);
  *a35 = 0;
  return sub_192D08B28(v37, v38, 551906117);
}

void sub_192D08E30()
{
  v3 = (((v0 + 276668541) & 0xEF8258EA ^ 0x2B2) - 460) | 0x103;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_192D0D7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = v45 ^ (v49 - 1721);
  *(v46 - 0x2F9FA99D07A4AD62) = 0;
  *(v46 - 0x2F9FA99D07A4AD5ALL) = -1317876224;
  *(v46 - 0x2F9FA99D07A4AD56) = 0;
  v51 = (*(v47 + 8 * (v45 ^ (v49 + 1158))))(v46 - 0x2F9FA99D07A4AD62);
  return (*(v47 + 8 * ((((((v50 - 281) ^ (a45 == v48)) & 1) == 0) * (((v50 - 537224937) & 0xFF1FF7FF) + 551905353)) ^ v50)))(v51);
}

void sub_192D0D8EC()
{
  (*(v3 + 8 * ((v0 & 0xDFBFD7E2) + 551908264)))();
  *v4 = 0;
  *(v1 - 0x63E5E14B55EA7FF6) = v2;
  *(v1 - 0x63E5E14B55EA7FF2) = 223807700;
  JUMPOUT(0x192D0D958);
}

uint64_t sub_192D0D9AC()
{
  (*(v2 + 8 * (v1 + 1164)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (((v1 - 630840386) & 0x2599DF2D) + 824)) ^ v1)))();
}

uint64_t sub_192D0DA4C()
{
  (*(v2 + 8 * (v1 ^ 0xCB4)))(v4, v3);
  v5 = (*(v2 + 8 * (v1 + 1156)))() == v0;
  return (*(v2 + 8 * ((v5 * (v1 + 1764)) ^ v1)))();
}

uint64_t sub_192D0DAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = (*(v41 + 8 * (v40 ^ 0x202)))(a1, 0x100004077774924);
  *(v42 - 232) = v43;
  return (*(v41 + 8 * (((v43 != 0) * (v40 + ((2 * v40) ^ 0x1324) - 2467)) ^ v40)))(v43, v44, 551906117, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void y1rKtVxYz7()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B58 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FCFB60[byte_192FCF850[(-3 * (dword_1EAE15B58 ^ 0x8A ^ dword_1EAE15B50))] ^ 0xE6]) - 36];
  v1 = -3 * (*v0 ^ dword_1EAE15B50 ^ 0x8A);
  v2 = qword_1E73B2810[(byte_192FCFC68[(byte_192FCF958[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = &v8[*v0 + *v2];
  v4 = 1543604477 * v3 + 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  LOBYTE(v2) = -3 * ((v5 + *v0) ^ 0x8A);
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 + dword_1EAE15B58) ^ 0x8A)) ^ byte_192FD02D0[byte_192FCFF80[(-3 * ((dword_1EAE15B50 + dword_1EAE15B58) ^ 0x8A))] ^ 0xEA]) - 199] - 12;
  v7 = *(v6 + 8 * ((225 * ((*(v6 + 8 * ((byte_192FD02D4[(byte_192FCFF8C[v2 - 12] ^ 0xEA) - 4] ^ v2) + 2739)))(24, 0x1010040E2407E0ALL) != 0)) ^ 0x672u));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D0DD70(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x6F0AC1E1369E4B09;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((56 * (v3 != 0)) ^ 0x7DAu)))();
}

uint64_t sub_192D0DEB0()
{
  v5 = *(v3 + 8) - 1887993249;
  v6 = ((v2 - 1710) | 0x24) + ((v2 + 1576307951) & 0xA20B6EFF ^ 0x570B09FA) + v0 > v5;
  if (v1 > 0x39EA3293 != v5 < 0xC615CD68)
  {
    v6 = v1 > 0x39EA3293;
  }

  return (*(v4 + 8 * ((461 * !v6) ^ v2)))();
}

void sub_192D0DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = v15 + v11;
  v17 = *v12;
  *(*v12 + v10) = 0;
  *(v17 + v9 + ((v16 - 687) ^ 0x50750E82u)) = 0;
  *(v17 + (v9 - 1862975966)) = 1;
  *(v17 + (v9 - 1862975967)) = 0;
  *v8 += 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_192D0E45C()
{
  v5 = *(v3 + 8) + 1570186821;
  v6 = v1 > 0x6BCA8EAD;
  v7 = v6 ^ (v5 < 0x9435714E);
  v8 = ((v0 - 204706424) & 0xCCB3BEFE ^ 0xE5AA9FD3) + v2 > v5;
  if (v7)
  {
    v8 = v6;
  }

  return (*(v4 + 8 * ((58 * v8) ^ v0)))();
}

uint64_t sub_192D0E618@<X0>(int a1@<W8>)
{
  v6 = ((2 * ((a1 << (v4 - 114)) + v2)) & 0x6FFDD6F0) + (v4 ^ 0xB7FEEF0A ^ ((a1 << (v4 - 114)) + v2));
  if (v1 > 0x26199F4 != v6 + 1168079502 < 0xFD9E6607)
  {
    v7 = v6 + 1168079502 < 0xFD9E6607;
  }

  else
  {
    v7 = v6 + 1168079502 > v3;
  }

  return (*(v5 + 8 * ((247 * !v7) ^ v4)))();
}

uint64_t sub_192D0E734@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  HIDWORD(a10) = a1;
  v27 = (*(v18 + 8 * (v17 + 1957)))((v17 ^ (v19 + 731)) + (((v17 - 990) | 0x6C) ^ 0x8780E388) + v16, 0x100004077774924);
  return (*(v18 + 8 * ((1984 * (v27 == 0)) ^ v17)))(v27, v20, v21, v22, v23, v24, v25, 1065341128, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_192D0E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, int a31, int a32, uint64_t a33)
{
  v37 = (*(v34 + 8 * (v36 + v35)))(*v33);
  *v33 = a33;
  *a30 = a18;
  return (*(v34 + 8 * ((3760 * (a32 == 0)) ^ (v36 + v35 - 1112))))(v37);
}

void sub_192D0E878(_DWORD *a1@<X8>)
{
  v3 = *v2;
  v4 = *a1 + v1;
  *(*v2 + v4 + 1) = -24;
  *(v3 + v4 + 2) = -110;
  *(v3 + v4) = 118;
  *(v3 + v4 + 3) = 16;
  *a1 += 4;
  JUMPOUT(0x192D0E8C0);
}

uint64_t sub_192D0E9BC()
{
  v6 = ((v0 + 189) ^ (v5 + 379) ^ 0x7989D80) + *(v3 + 8);
  v7 = v1 > 0x24907D0;
  v8 = v2 - 1901316530 > v6;
  if (v7 == v6 < 0xFDB6F82B)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((28 * !v7) ^ v0)))();
}

uint64_t sub_192D0EA3C@<X0>(int a1@<W7>, _DWORD *a2@<X8>)
{
  v7 = *v3;
  v8 = *a2 + v2;
  *(*v3 + v8 + 3) = 1;
  *(v7 + v8 + 1) = 0;
  *(v7 + v8) = 0;
  *(v7 + v8 + 2) = 0;
  *a2 += 4;
  return (*(v5 + 8 * ((((v6 + v4 - 1412033483) & 0x5429E8E6) + 423) ^ (v4 + a1))))();
}

uint64_t sub_192D0EEFC()
{
  v5 = *(v3 + 8) + 290418297;
  v6 = v1 > ((v0 - 626445980) & 0xE5D6FAA6 ^ 0x789276DB);
  v7 = v2 - 656214107 > v5;
  if (v6 == v5 < ((v0 + 565057358) & 0xDE51E6FE) + 1206761118)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((4007 * v6) ^ v0)))();
}

uint64_t sub_192D0F3A8@<X0>(int a1@<W8>)
{
  v3 = a1 + 848;
  v11 = (*(v2 + 8 * (a1 + 2948)))(12, 0x100004077774924);
  *(v11 + 10) = *(*(v1 + 8 * (v3 ^ 0x34D)) + 10);
  return (*(v2 + 8 * ((((v3 ^ 0x350) == 10) | (8 * ((v3 ^ 0x350) == 10))) ^ v3)))(v11, v4, v5, v6, v7, v8, v9, 1065341128);
}

uint64_t sub_192D0F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = (v37 - 160 + v34);
  *v38 = *(v35 + 12);
  v38[1] = 1862975980;
  v38[2] = 1862975973;
  return (*(v36 + 8 * (((((v38 == 0) ^ (v33 - 120)) & 1) * ((v33 - 577) ^ 0x176)) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_192D0F520()
{
  v6 = *(v3 + 8) - 874318352;
  v7 = v2 > 0xFD7EBEF7;
  v8 = v0 - 1820950745 > v6;
  if (v7 != v6 < (((v1 ^ 0xC33) - 2810) ^ (v5 + 2) ^ 0xC201705B))
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((77 * ((((v1 ^ 0x33) - 1) ^ v8) & 1)) | v1 ^ 0xC33)))();
}

uint64_t sub_192D0F5B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unint64_t a40, _DWORD *a41)
{
  v46 = (v45 + v41 - 630) | 0x241;
  v47 = *v42;
  v48 = *a8;
  v49 = *a8 - 1862975969;
  *(*v42 + v49) = 0;
  *(v47 + v49 + 1) = 0;
  *(v47 + v48 + (v46 ^ 0x90F53574)) = 0;
  *(v47 + v49 + 3) = 11;
  *a8 += 4;
  v50 = *v42 + (*a41 - 1862975969);
  return (*(v44 + 8 * (((a40 <= v50) * (((31 * (v46 ^ 0xB08) - 2202) | 0x502) - 1950)) ^ v46)))(v50, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t sub_192D0F71C@<X0>(int a1@<W8>)
{
  v6 = (((v4 | 0x2A2) + 1836946254) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xB6BECB1B);
  if (v1 > 0x44054D84 != v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168)
  {
    v7 = v6 + 87811921 < ((v4 + 776718232) & 0xD1B43FB7) - 1141200168;
  }

  else
  {
    v7 = v6 + 87811921 > v3;
  }

  return (*(v5 + 8 * ((2032 * v7) ^ v4)))();
}

uint64_t sub_192D0F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, int a43, int a44, uint64_t a45)
{
  v49 = v48 + a8;
  v50 = (*(v46 + 8 * (v48 + v47)))(*v45);
  *v45 = a45;
  *a42 = a13;
  return (*(v46 + 8 * ((2861 * (a44 == v49 - 362)) ^ (v49 + 577))))(v50);
}

uint64_t sub_192D0FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v40 + 8 * (v41 + 306)))();
  (*(v40 + 8 * (v41 ^ 0x1C1)))();
  v50 = (*(v40 + 8 * (v41 + 315)))(*(v39 + 8 * (v41 - 2649)), 0);
  return (*(v40 + 8 * (((v50 == 0) * ((((v41 + 941014372) & 0xC7E93A7F) - 152) ^ 0x175)) ^ v41)))(v50, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D0FC0C(uint64_t a1)
{
  (*(v3 + 8 * (v4 + 1243)))(a1, *(v1 + 8 * (v4 - 1681)) - 12);
  (*(v3 + 8 * (v4 ^ 0xD25)))(a1);
  *(v5 - 256) = (*(v3 + 8 * (v4 ^ 0xD01)))(a1, v2);
  v7 = (*(v3 + 8 * (v4 + 1273)))() == *(v1 + 8 * (v4 - 1671)) - 12;
  return (*(v3 + 8 * ((v7 * ((v4 + 1410) ^ (v4 - 1100))) ^ v4)))();
}

uint64_t sub_192D0FCE8()
{
  v9 = v0;
  (*(v4 + 8 * ((v1 + 97) ^ 0x914)))(v3, v2);
  v5 = (*(v4 + 8 * ((v1 + 97) ^ 0x92C)))();
  return (*(v4 + 8 * (((v5 == v9) * (v1 ^ 0xC58 ^ (212 * ((v1 + 97) ^ 0x2BD)))) ^ (v1 + 97))))(v5, v6, v7);
}

uint64_t sub_192D0FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 ^ 0x914)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 + 2276)))() == a11;
  return (*(v13 + 8 * ((v15 * ((v14 + 1003) ^ 0x498 ^ (298 * (v14 ^ 0x2B7)))) ^ v14)))();
}

uint64_t sub_192D0FE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(v13 + 8 * (v14 + 2284)))(v12, v11);
  v15 = (*(v13 + 8 * (v14 ^ 0x92C)))() == a11;
  return (*(v13 + 8 * ((v15 * (((v14 + 2101928954) & 0x82B71FF0) + ((v14 - 97) ^ 0xFFFFFFB0))) ^ v14)))();
}

uint64_t sub_192D0FF08()
{
  v5 = v1 - 596;
  v6 = (v1 - 385) | 8;
  v7 = v3;
  v8 = v2;
  v9 = v0;
  v10 = v1;
  (*(v4 + 8 * (v1 ^ 0x9F5)))(v7, v8);
  v11 = (*(v4 + 8 * (v10 ^ 0x9CD)))() == v9;
  return (*(v4 + 8 * (((((v5 ^ v11) & 1) == 0) * (v6 ^ 0x3A)) ^ v10)))();
}

uint64_t sub_192D0FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v19 = (v14 + 63928535) & 0xFC3089EF;
  *(v18 - 256) = v15;
  v20 = (*(v17 + 8 * (v19 ^ 0x2CD)))(v15, v16, va);
  *(v18 - 248) = v20;
  return (*(v17 + 8 * (((v20 == 0) * (((v19 - 1939) ^ 0xFFFFF92F) + v19 - 599)) ^ v19)))(v20, v21, v22, v23, v24, v25, v26, v27, a1, a2, a3);
}

uint64_t sub_192D1008C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 495030071;
  *(a1 + 12) = -1179748465;
  *(a1 + 16) = 0;
  v3 = (*(v2 + 8 * ((v1 | 0x480) ^ 0xF15)))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 | 0x480) - 65) ^ 0xFFFFFD5C) + (v1 | 0x480) + 662)) ^ (v1 | 0x480))))(v3, v4, v5);
}

uint64_t sub_192D10118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *(v23 + 8) = 495034167;
  *(v27 - 240) = v25;
  return (*(v26 + 8 * (((a23 > 0x1000) * (v24 ^ 0x894 ^ ((v24 - 995) | 0x10))) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_192D10620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = v48 + 1475;
  *(v49 - 0x60E31FD2FE548731) = 0;
  *(v49 - 0x60E31FD2FE548729) = 495030071;
  *(v49 - 0x60E31FD2FE548725) = -1179748465;
  (*(v50 + 8 * (v48 + 2621)))(v49 - 0x60E31FD2FE548731);
  (*(v50 + 8 * (v51 + 1053)))(a47);
  (*(v50 + 8 * (v51 + 1053)))(a48);
  return (*(v50 + 8 * (((a46 == 0) * ((((v51 - 1839001745) & 0x6D9CEFDB) + 85) ^ v51 ^ 0x1AB)) | v51)))();
}

void sub_192D106AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(a20 - 0x60E31FD2FE548729) = a23 + 495030071 - ((v23 + v24 + 990057188) & (2 * a23));
  *(a20 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x192D10718);
}

uint64_t sub_192D1080C@<X0>(int a1@<W8>)
{
  v3 = 6 * (a1 ^ 0x99);
  v4 = (*(v2 + 8 * (a1 ^ 0xBD5)))();
  return (*(v2 + 8 * ((45 * (((v1 == -45004) ^ (v3 - 69)) & 1)) ^ v3)))(v4);
}

uint64_t sub_192D10870@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  a7 = 0;
  a11 = 0;
  v16 = (*(v14 + 8 * ((a1 | 0x800020A2) ^ 0xC0803BD7)))(**(v13 + 8 * ((a1 | 0x800020A2) + 1065340784)), *v12, (*(v12 + 12) - 1862975969), &a7, &a11);
  if (v16)
  {
    if (v16 == 268435459)
    {
      a12 = 0x60E31FD2FE548731;
      return (*(v14 + 2896))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4);
    }

    else
    {
      v33 = 946232179 * ((((2 * (v15 - 108)) | 0xD1772250) - (v15 - 108) - 1757122856) ^ 0xF8C0ADE7);
      *(v15 - 104) = v33 ^ 0x638;
      *(v15 - 100) = ((2 * v16) & 0xBF6DDBF6) - v33 + (v16 ^ 0xDFB6EDFB) + 1878881000;
      v34 = (*(v14 + 23736))(v15 - 108);
      return (*(v14 + 8 * ((474 * (*(v15 - 108) != 1181123576)) ^ 0x4FF)))(v34);
    }
  }

  else
  {
    v24 = (*(v14 + 23584))(24, 0x1010040E2407E0ALL);
    return (*(v14 + 8 * ((114 * (((v24 == 0) ^ 0x31) & 1)) ^ 0x6B8)))(v24, v25, v26, v27, v28, v29, v30, v31, a2);
  }
}

uint64_t sub_192D10EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v23 = 8 * (v21 ^ 0x428);
  v24 = v23 ^ 0x247;
  (*(v22 + 8 * (v23 ^ 0xD32)))(v20);
  v25 = (*(v22 + 8 * (v24 ^ 0xF72)))(**(v18 + 8 * (v24 - 1277)), a14, a18);
  return (*(v22 + 8 * (((v19 == 0) * (v24 - 805)) ^ v24)))(v25);
}

void sub_192D10ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23)
{
  v26 = *(v24 - 208);
  (*(v23 + 8 * (v25 ^ 0xC0803B28)))(*(v26 - 0x60E31FD2FE548731));
  *(v26 - 0x60E31FD2FE548731) = *(v24 - 184);
  **(v24 - 200) = a23;
  JUMPOUT(0x192D10F34);
}

uint64_t sub_192D11104(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((28 * (((v2 - 1915683267) & 0x722F01EE) - 196 != (((v2 - 20) ^ 0xFFFFFF44) & v1))) ^ (v2 - 20))))();
}

void sub_192D1132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  *(a15 - 0x60E31FD2FE548729) = a18 + 495030071 - ((2 * a18) & 0x3B031E6E);
  *(a15 - 0x60E31FD2FE548725) = -1179748465;
  JUMPOUT(0x192D11528);
}

uint64_t sub_192D11824@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a1 - 1296381823) & 0x4D453FDF;
  v17 = a1 + 2592;
  (*(v13 + 8 * (a1 + 2592)))();
  *(v10 - 0x60E31FD2FE548731) = 0;
  *(v10 + v12) = 495030071;
  *(v10 + v11) = v15;
  (*(v13 + 8 * v17))(v10 - 0x60E31FD2FE548731);
  v18 = (*(v13 + 8 * (v16 + 447)))(a9);
  return (*(v13 + 8 * (((((v16 - 2147481931) | 0x40802022) + (v16 ^ 0x2E ^ (v14 - 15))) * (v9 == 0)) ^ v16)))(v18);
}

void sub_192D11928(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2450)))();
  *v1 = 0;
  *(v1 + 8) = 916343561;
  *(v1 + 12) = 1862975969;
  JUMPOUT(0x192D11964);
}

void uv5t6nhkui()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[(byte_192FCFB60[byte_192FCF850[(-3 * ((dword_1EAE15B50 - dword_1EAE15B38) ^ 0x8A))] ^ 6] ^ (-3 * ((dword_1EAE15B50 - dword_1EAE15B38) ^ 0x8A))) - 53];
  v1 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 + *v0) ^ 0x8A)) ^ byte_192FCFB60[byte_192FCF850[(-3 * ((dword_1EAE15B50 + *v0) ^ 0x8A))] ^ 6]) - 62];
  v2 = (*v1 ^ *v0) - &v7;
  v3 = 1543604477 * v2 - 0x45EA3381FA58338ALL;
  v4 = 1543604477 * (v2 ^ 0x45EA3381FA58338ALL);
  *v0 = v3;
  *v1 = v4;
  LOBYTE(v1) = -3 * (*v0 ^ 0x8A ^ v4);
  v5 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 + dword_1EAE15B38) ^ 0x8A)) ^ byte_192FCF650[byte_192FD01D0[(-3 * ((dword_1EAE15B50 + dword_1EAE15B38) ^ 0x8A))] ^ 0xEC]) - 178] - 12;
  v6 = *(v5 + 8 * ((32 * ((*(v5 + 8 * ((byte_192FD02D4[(byte_192FCFF8C[v1 - 12] ^ 0xB0) - 4] ^ v1) + 2848)))(24, 0x1010040E2407E0ALL) == 0)) | 0xACAu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D11B94(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x210BB38616FB3631;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  if (v3)
  {
    v4 = 1422;
  }

  else
  {
    v4 = 1423;
  }

  return (*(v1 + 8 * v4))();
}

void p435tmhbla()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B40 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FCFA60[byte_192FCF750[(-3 * (dword_1EAE15B40 ^ 0x8A ^ dword_1EAE15B50))] ^ 0x42]) - 166];
  v1 = *(v0 - 4);
  v2 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - v1) ^ 0x8A)) ^ byte_192FCF650[byte_192FD01D0[(-3 * ((dword_1EAE15B50 - v1) ^ 0x8A))] ^ 0x8E]) - 41];
  v3 = v1 ^ &v8 ^ *v2;
  v4 = 1543604477 * v3 - 0x45EA3381FA58338ALL;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *(v0 - 4) = v4;
  *v2 = v5;
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - dword_1EAE15B40) ^ 0x8A)) ^ byte_192FD0080[byte_192FCFD60[(-3 * ((dword_1EAE15B50 - dword_1EAE15B40) ^ 0x8A))] ^ 7]) - 6] - 12;
  v7 = (*(v6 + 8 * ((byte_192FCF658[(byte_192FD01D0[(-3 * ((v5 - *(v0 - 4)) ^ 0x8A))] ^ 0x78) - 8] ^ (-3 * ((v5 - *(v0 - 4)) ^ 0x8A))) + 2718)))(24, 0x1010040E2407E0ALL) != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D16568(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x241C090D09BF22FCLL;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((23 * (v3 == 0)) ^ 0x645u)))();
}

void fy34trz2st()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = qword_1E73B2810[((-3 * (dword_1EAE15B70 ^ 0x8A ^ dword_1EAE15B50)) ^ byte_192FD02D0[byte_192FCFF80[(-3 * (dword_1EAE15B70 ^ 0x8A ^ dword_1EAE15B50))] ^ 0xEA]) - 198];
  v1 = -3 * ((dword_1EAE15B50 + *v0) ^ 0x8A);
  v2 = qword_1E73B2810[(byte_192FCFC68[(byte_192FCF958[v1 - 8] ^ 0x6B) - 8] ^ v1) - 20];
  v3 = (*v2 ^ *v0) - &v8;
  v4 = 1543604477 * v3 + 0x6D4BA15110163F62;
  v5 = 1543604477 * (v3 ^ 0x45EA3381FA58338ALL);
  *v0 = v4;
  *v2 = v5;
  v6 = qword_1E73B2810[((-3 * ((dword_1EAE15B50 - dword_1EAE15B70) ^ 0x8A)) ^ byte_192FD02D0[byte_192FCFF80[(-3 * ((dword_1EAE15B50 - dword_1EAE15B70) ^ 0x8A))] ^ 0xB0]) - 90] - 12;
  v7 = *(v6 + 8 * ((29 * ((*(v6 + 8 * ((byte_192FCFB64[(byte_192FCF850[(-3 * ((v5 + *v0) ^ 0x8A))] ^ 0xE6) - 4] ^ (-3 * ((v5 + *v0) ^ 0x8A))) + 2890)))(24, 0x1010040E2407E0ALL) == 0)) ^ 0x7CDu));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D1A41C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 987097956;
  *(a1 + 16) = 0;
  v3 = (*(v1 + 23584))(4096, 0x100004077774924);
  *a1 = v3;
  return (*(v1 + 8 * ((13 * (v3 == 0)) ^ 0x4F7u)))();
}

uint64_t sub_192D1D8A0@<X0>(int a1@<W8>)
{
  v4 = 109 * (a1 ^ 0x71D);
  (*(v2 + 8 * (a1 + 1137)))();
  return (*(v2 + 8 * ((120 * (((v4 ^ (*(v1 + 32 * v3 + 24) == 0)) & 1) == 0)) ^ v4)))();
}

void rsegvyrt87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D1DAF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;
  v6 = (*(v5 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v5 + 8 * ((85 * v6) ^ 0x427u)))();
}

uint64_t sub_192D1DB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = 0;
  *(a1 + 8) = 0x724731B45C318D7ALL;
  *(a1 + 16) = 0;
  v12 = (*(v10 + 23584))(4096, 0x100004077774924);
  *a1 = v12;
  return (*(v10 + 8 * ((169 * (v12 != 0)) ^ 0x576)))(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_192D1DD0C()
{
  v5 = *(v3 + 8) - 1720123901;
  v6 = v0 - 2090640947 > v5;
  if (v1 > 0xA55747E != v5 < ((v2 + 578) | 0x118) - 173373531)
  {
    v6 = v1 > 0xA55747E;
  }

  return (*(v4 + 8 * ((208 * v6) ^ v2)))();
}

uint64_t sub_192D1E294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v9 - 0x2B7CC17BA9FDC7DELL) + 1385189627 + v10 + (v6 ^ (a6 - 239)) - 1492;
  v13 = v7 > 0x513E1BD0;
  v14 = v8 + 1014674043 > v12;
  if (v13 == v12 < 0xAEC1E42B)
  {
    v13 = v14;
  }

  return (*(v11 + 8 * ((114 * !v13) ^ v6)))();
}

uint64_t sub_192D1E328@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 - 0x2B7CC17BA9FDC7E6);
  v6 = *a1 - 1917268404;
  *(v5 + (*a1 - 1917268403)) = 107;
  *(v5 + v6 + 2) = -40;
  *(v5 + v6) = 113;
  *(v5 + v6 + 3) = 108;
  *a1 += 4;
  return (*(v4 + 8 * (((((v2 + v3 - 2886) | 0x521) == 1381) * ((v3 ^ 0xBA7B9EC4) - 1558)) ^ (v2 + v3 - 1916))))();
}

uint64_t sub_192D1E840()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) - 603694859;
  v6 = (v2 ^ 0xC5EEB151) + v0 > v5;
  if (v1 > 0xC7CA198C != v5 < ((v2 + 1723021841) & 0x994CC6BF ^ 0x3835E0D0))
  {
    v6 = v1 > 0xC7CA198C;
  }

  return (*(v4 + 8 * ((1018 * !v6) ^ v2)))();
}

uint64_t sub_192D1E8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v9 ^ 0x2BF;
  v14 = *(v10 - 0x2B7CC17BA9FDC7E6);
  *(v14 + v8) = 0;
  *(v14 + (v7 - 1917268403)) = 0;
  v15 = a6 + v13 - 1873;
  *(v14 + (v7 - 1917268402)) = 0;
  *(v14 + v7 + (v15 ^ 0x37C3572Eu)) = 1;
  *v6 += 4;
  return (*(v12 + 8 * ((v11 + v15 - 1377) ^ 0x60D ^ (v11 + v15 - 1916))))();
}

uint64_t sub_192D1EA28@<X0>(int a1@<W8>)
{
  v9 = ((2 * ((a1 << ((v7 ^ v3) - 40)) + v2)) & 0xFF7B3EF4) + (((a1 << ((v7 ^ v3) - 40)) + v2) ^ 0x7FBD9F7B);
  if (v1 > v6 != v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568)
  {
    v10 = v9 - 1559314134 < (v7 ^ v3) * v4 + 583818568;
  }

  else
  {
    v10 = v9 - 1559314134 > v5;
  }

  return (*(v8 + 8 * ((2428 * v10) ^ v7)))();
}

uint64_t sub_192D1EB14@<X0>(int a1@<W1>, int a2@<W2>, char a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a1 + 461;
  v35 = (a1 - 51) ^ (a3 + 54);
  v36 = a1 + 65;
  HIDWORD(a25) = a4;
  v44 = (*(v33 + 8 * ((a1 + 461) ^ 0xA72u)))((a2 - 2143133563), 0x100004077774924);
  return (*(v33 + 8 * ((((v35 ^ (v44 == 0)) & 1) * (v36 ^ 0x62)) | v34)))(v44, v37, v38, v39, v40, 3128662369, v41, v42, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_192D1EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, int a45, int a46, uint64_t a47)
{
  v49 = a6 ^ 0xBA7B9F75;
  v50 = a6 + v47;
  v51 = a6 + v47 - 2837;
  v52 = (*(v48 + 8 * v50))(*(a42 - 0x2B7CC17BA9FDC7E6));
  *(a42 - 0x2B7CC17BA9FDC7E6) = a47;
  *a44 = a30;
  return (*(v48 + 8 * (((a46 == 0) * (v49 ^ 0x6FD)) ^ v51)))(v52);
}

uint64_t sub_192D1EE04()
{
  v5 = *(v3 - 0x2B7CC17BA9FDC7DELL) + 165424830;
  v6 = v2 - 205092212 > v5;
  if (v0 > 0x99F243BF != v5 < 0x660DBC38)
  {
    v6 = v0 > 0x99F243BF;
  }

  return (*(v4 + 8 * ((474 * (((v1 + 119) ^ 0xC1 ^ v6) & 1)) ^ v1)))();
}

uint64_t sub_192D1EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v13 ^ (a6 - 125);
  v18 = a11 - ((2 * a11) & 0x32A2E7DBEA424B78) - 0x66AE8C120ADEDA44;
  v19 = (((2 * v12) & 0xD6C19B7E) + *(v14 - 0x2B7CC17BA9FDC7E6) + 0x10292E00949F3241 + (v17 ^ v12 ^ 0xEFD6D1FFD11B54DELL));
  *v19 = HIBYTE(v18) ^ 0x99;
  v19[1] = BYTE6(v18) ^ 0x51;
  v19[2] = BYTE5(v18) ^ 0x73;
  v19[3] = BYTE4(v18) ^ 0xED;
  v19[4] = ((a11 - ((2 * a11) & 0xEA424B78) - 182377028) >> 24) ^ 0xF5;
  v19[5] = BYTE2(v18) ^ 0x21;
  v19[6] = BYTE1(v18) ^ 0x25;
  v19[7] = v18 ^ 0xBC;
  *v11 += 8;
  return (*(v16 + 8 * (((173 * (v17 ^ (a6 + 7)) == 1557) * ((19 * (v17 ^ (a6 - 91))) ^ 0x7EA)) ^ (v15 + v17 - 1615))))();
}

uint64_t sub_192D1F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v49 = (v48 - 240 + v44);
  *v49 = *(v46 - 0x2B7CC17BA9FDC7DALL);
  v49[1] = (HIDWORD(a15) ^ 0xFBFFB1FE) + ((2 * HIDWORD(a15)) & 0xF7FF63FC) + 1984397238;
  v49[2] = 1917268408;
  return (*(v47 + 8 * (((v49 != 0) | (4 * (v49 != 0))) ^ v45)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_192D1F560()
{
  v4 = (v0 ^ 0xC61CBD83) + v1;
  v5 = ((v0 - 75523240) & 0xBEFBFB7F ^ 0xD390A8ED) + *(v2 - 0x2B7CC17BA9FDC7DELL);
  v6 = v1 > 0x39E340F5;
  v7 = v4 > v5;
  if (v6 == v5 < 0xC61CBF06)
  {
    v6 = v7;
  }

  return (*(v3 + 8 * ((37 * !v6) ^ v0)))();
}

uint64_t sub_192D1F604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = v51 + v49;
  v55 = *(v52 - 0x2B7CC17BA9FDC7E6);
  v56 = HIDWORD(a15) - (v50 & 0xA4C9E4D2) - 765136279;
  v57 = *v48 - 1917268404;
  *(v55 + v57) = (v56 >> (v54 - 114)) ^ 0xD2;
  *(v55 + v57 + 1) = BYTE2(v56) ^ 0x64;
  v58 = v54 - 1641;
  *(v55 + v57 + 2) = BYTE1(v56) ^ 0xF2;
  *(v55 + v57 + 3) = v56 ^ 0x69;
  v59 = *v48 + 4;
  *v48 = v59;
  v60 = *(v52 - 0x2B7CC17BA9FDC7E6) + (v59 - 1917268404);
  return (*(v53 + 8 * ((8 * (a18 <= v60)) | (16 * (a18 <= v60)) | v58)))(v60, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_192D1FC28()
{
  v3 = (v0 - 1211) | 0x441;
  (*(v2 + 8 * (v0 ^ 0xD37u)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (v3 ^ (4 * ((((((v3 - 796) | 0x98) - 675) ^ (*(v1 + 24) == 0)) & 1) == 0)))))();
}

uint64_t sub_192D1FC8C@<X0>(int a1@<W8>)
{
  v3 = a1 - 675;
  (*(v2 + 8 * (a1 ^ 0x835)))();
  *(v1 + 24) = 0;
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * ((54 * ((((v3 + 210) ^ (*(v1 + 48) == 0)) & 1) == 0)) ^ v3)))();
}

uint64_t sub_192D1FCE4()
{
  (*(v2 + 8 * (v0 + 2670)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * ((998 * (((*(v1 + 64) == 0) ^ (v0 - 83)) & 1)) ^ (v0 + 210))))();
}

uint64_t sub_192D1FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = (v50 + 146) | 0x849;
  v54 = (*(v52 + 8 * (v50 + 2460)))();
  *(v51 + 64) = 0;
  *(v51 + 76) = 0;
  *(v51 + 40) = 0;
  (*(v52 + 8 * (v53 ^ 0x15D)))(v54);
  (*(v52 + 8 * (v53 + 218)))();
  v63 = (*(v52 + 8 * (v53 + 212)))(a16, 0);
  return (*(v52 + 8 * (((v63 == 0) * (((v53 - 1709) | 0x140) - 1353)) ^ v53)))(v63, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_192D1FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v54 + 8 * (v52 ^ 0x98B)))(a1, qword_1E73B2810[v52 ^ 0x2FF] - 12);
  (*(v54 + 8 * (v52 ^ 0x975)))(a1);
  (*(v54 + 8 * (v52 ^ 0x951)))(a1, v53);
  v56 = (*(v54 + 8 * (v52 ^ 0x969)))();
  return (*(v54 + 8 * (((v56 == qword_1E73B2810[v52 - 727] - 12) * (3 * (v52 ^ 0x226) + 2199)) ^ v52)))(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_192D20044()
{
  v8 = v0;
  (*(v4 + 8 * (v1 ^ 0x8D9)))(v2, v3);
  v5 = (*(v4 + 8 * (v1 + 2081)))();
  return (*(v4 + 8 * (((v5 == v8) * (3 * (v1 ^ 0x3AE) + ((v1 - 136) ^ 0x649))) ^ v1)))(v5, v6);
}

uint64_t sub_192D200F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 ^ 0x8E1)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 - 246) ^ 0x272)) ^ v9)))(v13, v14);
}

uint64_t sub_192D201A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0x8D9)))(v10, v11);
  v13 = (*(v12 + 8 * (v9 + 2081)))();
  return (*(v12 + 8 * (((v13 == a9) * ((v9 ^ 0x1FA) + (v9 ^ 0x188) + 923)) ^ v9)))(v13, v14);
}

uint64_t sub_192D2025C()
{
  (*(v4 + 8 * (v0 + 2089)))(v2, v3);
  v5 = (*(v4 + 8 * (v0 + 2081)))();
  return (*(v4 + 8 * (((v5 == v1) * (((v0 - 376) | 0xF0) ^ ((v0 - 336) | 0xC4) ^ 0x602)) ^ v0)))(v5, v6);
}

uint64_t sub_192D202D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = v59 + 889;
  v62 = (v59 - 1436905963) | 0x10210860;
  v63 = v59 - 1166305675;
  (*(v60 + 8 * (v59 + 2113)))(a58);
  (*(v60 + 8 * (v61 ^ 0xD48)))(a59);
  return (*(v60 + 8 * (((a57 == 0) * (v63 ^ v62 ^ 0x12)) | v61)))(a57, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_192D20D08@<X0>(int a1@<W8>)
{
  v3 = a1 - 1011;
  v4 = v3 + 2167;
  (*(v2 + 8 * (v3 + 2630)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * (((((3 * (v4 ^ 0x88E) - 839) | 0x425) ^ 0x415) * (*(v1 + 24) == 0)) ^ v4)))();
}

uint64_t sub_192D20D6C()
{
  *(v1 + 36) = 0;
  *v1 = 0;
  return (*(v2 + 8 * (((*(v1 + 48) == 0) * (v0 + 359 + v0 + 3 - 2407)) ^ v0)))();
}

uint64_t sub_192D20DA4()
{
  v3 = v0 ^ 0x164;
  (*(v2 + 8 * (v0 ^ 0xF0A)))();
  *(v1 + 48) = 0;
  return (*(v2 + 8 * (((*(v1 + 64) == 0) * (((v3 + 63) ^ 0xFFFFFBBF) + v3 + 80)) ^ v3)))();
}

uint64_t sub_192D20DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v34 + 76) = 0;
  *(v34 + 40) = 0;
  v37 = (*(v36 + 8 * (v33 ^ 0xD56)))(**(v35 + 8 * (v33 ^ 0x631)), *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v33 - v32 + 1383) ^ 0x37C3572Du), &a27, &a31);
  return (*(v36 + 8 * ((15 * ((v37 ^ 0xFCFF6EBC) + 2147137512 + ((2 * v37) & 0xF9FEDD78) != v33 - 1929764732)) ^ v33)))();
}

uint64_t sub_192D2101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v37 = (*(v35 + 8 * (v34 ^ 0xD59)))(*v33, *(v31 - 0x2B7CC17BA9FDC7E6), *(v31 - 0x2B7CC17BA9FDC7DALL) + ((v34 - v32 + 1374) ^ 0x37C3572Du), &a27, &a31);
  v45 = (v37 ^ 0xFEFE6FE6) + 2113648318 + ((2 * v37) & 0xFDFCDFCC);
  if (v45 == -1929763161)
  {
    v48 = -45017;
  }

  else
  {
    if (v45 == 2096768676)
    {
      v46 = (*(v35 + 8 * (v32 - 1166304933)))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v35 + 8 * ((v46 * (((v32 - 1166307785) ^ 0xFFFFFFD7) + ((v32 - 1166307785) | 1))) ^ (v32 - 1166305952))))();
    }

    v49 = 946232179 * ((((v36 - 108) ^ 0xCCAC8659 | 0xE433420F) - ((v36 - 108) ^ 0xCCAC8659) + (((v36 - 108) ^ 0xCCAC8659) & 0x1BCCBDF0)) ^ 0xB8E4F899);
    *(v36 - 104) = (v32 - 1166306289) ^ v49;
    *(v36 - 100) = v45 - v49 - 759547329;
    v37 = (*(v35 + 8 * (v32 - 1166304914)))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v48 = -45016;
    }

    else
    {
      v48 = 0;
    }
  }

  a28 = 0x5C8F431131299E9FLL;
  return (*(v35 + 8 * ((3185 * (v48 == ((169 * (((((v32 - 1166306849) | 6) - 105) | 0x400) ^ 0x7AE)) ^ 0x743))) ^ ((v32 - 1166306849) | 6))))(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_192D21B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 0x5C8F431131299E9FLL);
  v9 = (((v5 ^ 0x9FD) - 307763077) ^ v3) + ((2 * v3) & 0xDB4FE376) + 307760709;
  v10 = (*(v8 + v9) << 24) | (*(v8 + v9 + 1) << 16) | (*(v8 + v9 + 2) << 8) | *(v8 + v9 + 3);
  *(v6 + a3) = v4;
  return (*(v7 + 8 * ((1215 * (v10 == 0)) ^ v5)))();
}

void sub_192D21EB4(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *(v9 + a1) = v8;
  *(v12 - 244) = 0;
  *a8 = (*(v11 + 8 * (a2 ^ 0xB19)))(v10, 0x100004077774924);
  JUMPOUT(0x192D21F94);
}

uint64_t sub_192D22004()
{
  v4 = (((v2 + 846304775) & 0xCD8E6AEE) + 2581527331) ^ v0;
  v6 = v1 < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((19 * v6) ^ v2)))();
}

uint64_t sub_192D220A4(uint64_t a1)
{
  v5 = (a1 + v1 - 16);
  v6 = *(v3 + v1 - 16);
  *(v5 - 1) = *(v3 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 + 1219) | 0x302) - 152)) ^ v2)))();
}

uint64_t sub_192D222A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a12 = a25;
  *a13 = a19;
  return (*(v29 + 8 * ((25 * (a29 == 0x5C8F431131299E9FLL)) | 0x522)))(a1, 0x5C8F431131299E9FLL);
}

uint64_t sub_192D223C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 0x5C8F431131299E9FLL) = 0;
  *(v24 - 0x5C8F431131299E97) = 1237259409;
  *(v24 - 0x5C8F431131299E93) = 0;
  v26 = (*(v25 + 8 * (v22 ^ 0xEB1)))(v24 - 0x5C8F431131299E9FLL);
  return (*(v25 + 8 * (((a22 == 0x2B7CC17BA9FDC7E6) * (v23 + (((v22 ^ 0x29E) - 406) ^ 0xBA7B9F6E) - 2930)) ^ v22 ^ 0x29E)))(v26);
}

void sub_192D224CC(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1403)))();
  *(v1 - 0x2B7CC17BA9FDC7E6) = 0;
  *(v1 - 0x2B7CC17BA9FDC7DELL) = 1546751354;
  *(v1 - 0x2B7CC17BA9FDC7DALL) = 1917268404;
  JUMPOUT(0x192D22538);
}

uint64_t gJa8aF901k(uint64_t a1)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    v1 = off_1F06FFAE0[40 * ((*(&unk_1F06FFAEC + 23572))(24, 0x1010040E2407E0ALL) == 0) + 2369];
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_192D22BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _DWORD *a28, int a29, int a30, uint64_t a31)
{
  (*(v32 + 8 * (v33 ^ 0xF7BCACFC)))(*v31);
  *v31 = a31;
  *a28 = a21;
  return (*(v32 + 8 * ((1170 * (a30 == (v33 ^ (v33 - 775)) - 793)) ^ (v34 + v33 - 2359))))();
}

uint64_t sub_192D22D84()
{
  v5 = *(v3 + 8) + 1843760272;
  v6 = v1 > 0x740256CA;
  v7 = v2 + 1052898664 > v5;
  if (v6 == v5 < (((v0 - 2135940658) | 0x770C8502) ^ 0x7C410E47u))
  {
    LOBYTE(v6) = v7;
  }

  return (*(v4 + 8 * ((119 * ((v0 ^ 0x49 ^ v6) & 1)) ^ v0)))();
}

uint64_t sub_192D22E1C@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  v6 = *(a1 - 0x2E52CFE8A53EA7A5);
  v7 = *a2 - 1295758285;
  *(v6 + v7 + 1) = 43;
  *(v6 + v7 + 2) = -115;
  *(v6 + v7) = 99;
  *(v6 + v7 + 3) = 110;
  *a2 += 4;
  return (*(v2 + 8 * (((v4 == v3) * ((v4 + 1418907529) & 0xB3B08FDD ^ 0xD0)) ^ (v5 + v4 - 2370))))(0);
}

uint64_t sub_192D232C0()
{
  v6 = *(v2 + 12);
  *(v3 + 32) = v2 + 12;
  return (*(v4 + 8 * (((((v0 + 891706627) & 0xCAD99EE5 ^ (v1 + 708)) + v6 > 0xFFFFFFFB) * (v0 ^ (v5 - 1481) ^ (v5 - 6))) ^ v0)))(4294922289);
}

uint64_t sub_192D23320()
{
  v6 = *(v3 + 8) - 1490089906;
  v7 = v1 > 0x3AB8DB0C;
  v8 = v2 + (v0 ^ 0xAEEu) + v5 + v0 - 708 - 2142322298 > v6;
  if (v7 == v6 < 0xC54724EF)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((1620 * v7) ^ v0)))();
}

uint64_t sub_192D237D8()
{
  v5 = *(v2 + 12);
  *(v3 + 72) = v2 + 12;
  return (*(v4 + 8 * ((49 * ((((v5 + v1) > 0xFFFFFFF7) ^ (v0 - 86)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_192D2382C()
{
  v7 = (((v0 - 195) | 0x91D) ^ 0xCBC5EDE3) + *(v3 + 8);
  v8 = v1 > 0x1621FE5A;
  v9 = v2 - 1667084840 > v7;
  if (v8 == v7 < 0xE9DE019D)
  {
    v8 = v9;
  }

  return (*(v4 + 8 * ((v8 * ((v0 - v6 + 2757) ^ (v5 - 12))) ^ v0)))();
}

uint64_t sub_192D239F0@<X0>(int a1@<W8>)
{
  v7 = (((v2 + 2 * a1) << (((v5 - 34) ^ 0x8D) - 88)) & 0x3F7FFF60) + ((v2 + 2 * a1) ^ 0x1FBFFFB1);
  if (v1 > v4 != (v7 - 1803469259) < 0xB4413DE6)
  {
    v8 = (v7 - 1803469259) < 0xB4413DE6;
  }

  else
  {
    v8 = v7 - 1803469259 > v3;
  }

  return (*(v6 + 8 * ((324 * v8) ^ v5)))();
}

uint64_t sub_192D23DAC()
{
  v6 = *(v2 + 12);
  *(v3 + 112) = v2 + 12;
  return (*(v4 + 8 * ((45 * (((v5 + (v0 ^ 0xF6) + 61) ^ ((v6 + v1) > 0xFFFFFFF7)) & 1)) ^ v0)))(4294922289);
}

uint64_t sub_192D23E00()
{
  v6 = *(v3 + 8) - 595448546;
  v7 = v1 > ((v0 - 1515455313) | 0x5210A600u) - v5 + 90551864;
  v8 = v2 - 1386310150 > v6;
  if (v6 < 0xFA9A49BF == v7)
  {
    v7 = v8;
  }

  return (*(v4 + 8 * ((3530 * v7) ^ v0)))();
}

uint64_t sub_192D23FAC@<X0>(int a1@<W8>)
{
  v7 = (a1 << (((v5 - 35) ^ 0x65) + 5)) + v2;
  v8 = ((2 * v7) & 0xFCBBF95C) + (v7 ^ 0xFE5DFCAF);
  if (v1 > v4 != v8 - 1485663003 < 0xA5D09194)
  {
    v9 = v8 - 1485663003 < 0xA5D09194;
  }

  else
  {
    v9 = v8 - 1485663003 > v3;
  }

  return (*(v6 + 8 * ((3276 * v9) ^ v5)))();
}

uint64_t sub_192D24338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 144) = (*(v15 + 8 * (v16 ^ 0x25E)))();
  (*(v15 + 8 * (v16 ^ 0x269)))();
  v17 = (*(v15 + 8 * (v16 ^ 0x257)))(a14, 0);
  *(v14 + 152) = v17;
  return (*(v15 + 8 * (((v17 == 0) * (125 * (v16 ^ 0x9D9) - 2327)) | v16)))(4294922293, v17);
}

uint64_t sub_192D243F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v16 + 8 * (v15 ^ 0x2EF)))(a14, a2, 0);
  *(v14 + 160) = v17;
  return (*(v16 + 8 * (((v17 == 0) * (((137 * (v15 ^ 0x94B)) ^ 0x695) - 218)) ^ v15)))(4294922293);
}

uint64_t sub_192D24454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(v45 + 8 * (v46 ^ 0xD17)))(v48, qword_1E73B2810[v46 - 1629] - 12);
  (*(v45 + 8 * (v46 + 1305)))(v48);
  (*(v45 + 8 * (v46 ^ 0xDCD)))(v48, v47);
  v49 = (*(v45 + 8 * (v46 ^ 0xDF5)))();
  return (*(v45 + 8 * (((v49 == qword_1E73B2810[v46 ^ 0x675] - 12) * ((v46 + 77) ^ (v46 - 905) ^ 0xB78)) ^ v46)))(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_192D2455C()
{
  v8 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v5 = (*(v1 + 8 * (v2 + 2697)))();
  return (*(v1 + 8 * (((v5 == v8) * ((v2 ^ 0x3F3) + 1622)) ^ v2)))(v5, v6);
}

uint64_t sub_192D245EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 + 2705)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 | 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((((v10 ^ 0x11C) + 727) ^ 0xFFFFFB2F) + 137 * (v10 ^ 0x11C))) ^ v10)))();
}

uint64_t sub_192D24694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v9 + 8 * (v10 ^ 0xAB1)))(v12, v11);
  v13 = (*(v9 + 8 * (v10 ^ 0xA89)))() == a9;
  return (*(v9 + 8 * ((v13 * ((v10 - 92070189) & 0x57CE2FF ^ (v10 - 695402915) & 0x297306FE ^ 0xD94)) ^ v10)))();
}

uint64_t sub_192D2476C()
{
  v5 = v0;
  (*(v1 + 8 * (v2 + 2705)))(v4, v3);
  v6 = (*(v1 + 8 * (v2 + 2697)))() == v5;
  return (*(v1 + 8 * ((v6 * ((v2 + 1372) ^ 0x59F)) ^ v2)))();
}

uint64_t sub_192D247D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  (*(v53 + 8 * (v52 + 1838)))(a51);
  (*(v53 + 8 * ((v52 - 160) ^ 0x872)))(a52);
  return (*(v53 + 8 * ((46 * ((((v52 - 379) ^ (a50 == 0)) & 1) == 0)) ^ (v52 - 160))))(a50, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_192D2505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v27 = v26 ^ 0x250;
  a19 = 0;
  a24 = 0;
  v28 = (*(v25 + 8 * (v27 + 2252)))(*qword_1E73B2810[v26 ^ 0xEB], *v24, ((v27 - 4279082) & 0xF7FDEFF6) + *(v24 + 12) - 1157126979, &a19, &a24);
  return (*(v25 + 8 * ((2511 * ((v28 ^ 0xE7DF7FBE) + 1072954862 + ((((v27 - 417) | 0xC3) - 809566799) & (2 * v28)) == 936607151)) ^ v27)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_192D251C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v30 = (*(v26 + 8 * (v25 ^ 0x9DC)))(*v27, *v24, (v25 - 1295758285 + *(v24 + 12) - 681), &a19, &a24);
  v31 = (v30 ^ 0x27F3FFED) - 2130497 + ((2 * v30) & 0x4FE7FFDA);
  if (v31 == 668171692)
  {
    v32 = (*(v26 + 8 * (v28 - 138631312)))(24, 0x1010040E2407E0ALL) == 0;
    return (*(v26 + 8 * ((v32 * ((v28 - 138630772) ^ (v28 - 138631575))) ^ (v28 - 138633243))))();
  }

  else if (v31 == 936607151)
  {
    return (*(v26 + 8 * ((211 * (35 * ((v28 - 138633676) ^ 0x247) == -44492)) ^ (v28 - 138633676))))(4294922279);
  }

  else
  {
    v34 = 946232179 * ((1523044408 - ((v29 - 108) | 0x5AC7D038) + ((v29 - 108) | 0xA5382FC7)) ^ 0x35431308);
    *(v29 - 104) = (v28 - 138632668) ^ v34;
    *(v29 - 100) = v31 - v34 + 669049655;
    (*(v26 + 23736))(v29 - 108);
    return (*(v26 + 8 * ((1045 * (*(v29 - 108) != 1181123576)) ^ (v28 - 138633785))))(4294922280);
  }
}

uint64_t sub_192D255E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (*(v19 + 8 * (v17 ^ 0xCBE)))(a1, 0x100004077774924);
  *(v18 + 240) = v20;
  return (*(v19 + 8 * (((v20 != 0) * ((v17 - 1385195606) & 0x529063BF ^ (v17 - 218373316) & 0xD0415BD ^ 0x2D8)) ^ v17)))(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_192D257F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  (*(v24 + 8 * (v25 + 1445)))(v26);
  (*(v24 + 8 * ((4 * (v25 ^ 0x5A5)) ^ 0xA8D)))(*qword_1E73B2810[(4 * (v25 ^ 0x5A5)) ^ 0x102], a19, a24);
  return (*(v24 + 8 * ((1045 * (v27 + ((((4 * (v25 ^ 0x5A5)) ^ 0xDB) - 134371933) & 0xFFBEFFF7) == -42049)) ^ (4 * (v25 ^ 0x5A5)) ^ 0xDB)))(4294922293);
}

void sub_192D25844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v29 = *(v26 + 216);
  (*(v27 + 8 * (v28 ^ 0xF7BCACFC)))(*(v29 - 0x78520B45E1B54CDELL));
  *(v29 - 0x78520B45E1B54CDELL) = *(v26 + 240);
  **(v26 + 224) = a26;
  JUMPOUT(0x192D258A0);
}

uint64_t sub_192D25B14@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v4 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v3 + 8 * (((((((v2 - 1368) | 0x509u) + 4294965399) & v1) != 32) * (((((v2 - 1368) | 0x509) - 1344311958) & 0x50208F7F) - 866)) ^ ((v2 - 1368) | 0x509))))(32);
}

uint64_t sub_192D25C0C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFF5A7 ^ (v3 - 1258913336) & 0x4B097E7B) + v1;
  *(a1 - 7 + v6) = *(v5 - 7 + v6);
  return (*(v4 + 8 * ((297 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_192D25CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  *(a16 - 0x78520B45E1B54CD6) = a24 - 1172238684 - ((v25 + v24 + 1950486974) & (2 * a24));
  *(a16 - 0x78520B45E1B54CD2) = -267630515;
  JUMPOUT(0x192D25EE4);
}

uint64_t sub_192D260F0@<X0>(int a1@<W8>)
{
  v6 = a1 - 2200;
  v7 = (a1 - 1973414721) & 0x759FE87D;
  v8 = *(v3 - 0x78520B45E1B54CDELL);
  v9 = ((2 * v1) & 0xEFEFE5DE ^ 0xE008809A) + (v1 ^ 0x7FBBAA2);
  v10 = (*(v8 + (v7 ^ 0x8080509) + v9) << ((v6 - 72) & 0x3D ^ 0x21)) | (*(v8 + v9 + 134745362) << 16) | (*(v8 + v9 + 134745363) << 8) | *(v8 + v9 + 134745364);
  *(v3 + v4) = v2;
  return (*(v5 + 8 * (v6 ^ (11 * (v3 == 0x78520B45E1B54CDELL)))))(v10);
}

uint64_t sub_192D261DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v6 + 8 * (v7 + 2385)))(a2);
  *(v3 - 0x78520B45E1B54CDELL) = 0;
  *(v3 + v5) = -1172238684;
  *(v3 + v4) = v8;
  (*(v6 + 8 * (v7 ^ 0x9B3)))(v3 - 0x78520B45E1B54CDELL);
  return (*(v6 + 8 * ((((v9 + ((((v7 + 1479) | 0x18) - 138496025) & 0xFFFDE776) - 2855) ^ ((v7 + 1479) | 0x18) ^ 0x87D) * (v2 == 0)) | (v7 + 1479) | 0x18)))(a1);
}

void sub_192D262C0()
{
  *v0 = 0;
  *(v0 + 8) = 504896673;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0x8EA)))(v0);
  JUMPOUT(0x192D228F4);
}

uint64_t jkag7Bg01u(uint64_t a1, uint64_t a2)
{
  if (a1 + 8) <= 6 && ((0x7Du >> (a1 + 8)))
  {
    __asm { BRAA            X8, X17 }
  }

  return 4294922295;
}

uint64_t sub_192D269F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30)
{
  v33 = a5 + a4 - 322;
  (*(v32 + 8 * (a4 + v31)))(*v30);
  *v30 = a30;
  *a27 = a16;
  return (*(v32 + 8 * ((1760 * (a29 == 0)) ^ v33)))();
}

uint64_t sub_192D26BCC()
{
  v5 = *(v3 + 8) - 748115895;
  v6 = v1 > ((v0 + 857) ^ 0xBAE3162F);
  v7 = v2 + 1189952448 + ((v0 - 1601795400) | 0x1411018Au) > v5;
  if (v6 == v5 < 0x451CE12D)
  {
    v6 = v7;
  }

  return (*(v4 + 8 * ((1003 * v6) ^ v0)))();
}

uint64_t sub_192D26D64@<X0>(int a1@<W8>)
{
  v6 = (a1 << (((v4 - 33) | 0x41) + 62)) + ((v4 + 479) ^ 0x4A4 ^ (v2 + 230));
  v7 = ((2 * v6) & 0xF76FFDFC) + (v6 ^ 0x7BB7FEFE);
  if (v1 > 0x24ACDCE0 != v7 + 1604002845 < 0xDB53231B)
  {
    v8 = v7 + 1604002845 < 0xDB53231B;
  }

  else
  {
    v8 = v7 + 1604002845 > v3;
  }

  return (*(v5 + 8 * ((104 * v8) ^ v4)))();
}

uint64_t sub_192D270F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 16) = v8 + 12;
  return (*(v9 + 8 * ((125 * (((a4 + v6 - 2106) ^ (a4 + 969) ^ (v7 - 1113)) + v10 > 0xFFFFFFFB)) ^ v6)))(4294922289);
}

uint64_t sub_192D2713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(v8 + 8) + 1736112910;
  v11 = v7 > 0x26D0CC09;
  v12 = v6 - 1885921201 > v10;
  if (v11 != v10 < ((a5 + ((v5 + 604175601) | 0x90949080) - 391) ^ 0xD92F3321))
  {
    v12 = v11;
  }

  return (*(v9 + 8 * ((v12 | (2 * v12)) ^ v5)))();
}

uint64_t sub_192D272F8@<X0>(int a1@<W8>)
{
  v7 = ((((v5 + 1490577244) & 0xA7279E77) - 201429150) & (2 * (v2 + 2 * a1))) + ((v2 + 2 * a1) ^ 0xF9FF3CE4);
  if (v1 > v4 != v7 - 172588860 < 0xEFB5BDA8)
  {
    v8 = v7 - 172588860 < 0xEFB5BDA8;
  }

  else
  {
    v8 = v7 - 172588860 > v3;
  }

  return (*(v6 + 8 * ((15 * v8) ^ v5)))();
}

uint64_t sub_192D2764C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 12);
  *(a6 + 56) = v8 + 12;
  return (*(v9 + 8 * ((63 * ((v10 + v7) < 0xFFFFFFF8)) ^ v6)))(4294922289);
}

uint64_t sub_192D27698(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = (((a5 + a4 + v5 - 975 - 186 - 434) | 0x310) ^ 0xBF92BAD8) + *(v8 + 8);
  v11 = v6 > 0xCEB90DB3;
  v12 = v7 - 407970139 > v10;
  if (v11 == v10 < 0x3146F244)
  {
    v11 = v12;
  }

  return (*(v9 + 8 * (((32 * v11) | (v11 << 6)) ^ (v5 - 975))))();
}

uint64_t sub_192D27C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2414)))();
  (*(v13 + 8 * (v12 + 2429)))();
  v15 = (*(v13 + 8 * (v12 ^ 0x9BB)))(a12, 0);
  return (*(v13 + 8 * (v12 | (8 * (v15 == 0)))))(4294922293, v15);
}

uint64_t sub_192D27DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  (*(v43 + 8 * (v40 + 2724)))(v42, qword_1E73B2810[(v40 + 1979) ^ 0x89D] - 12);
  (*(v43 + 8 * (v40 + 2734)))(v42);
  (*(v43 + 8 * ((v40 + 1979) ^ 0x333)))(v42, v41);
  v44 = (*(v43 + 8 * ((v40 + 1979) ^ 0x30B)))();
  return (*(v43 + 8 * (((v44 == qword_1E73B2810[(v40 + 1979) ^ 0x88B] - 12) * (((v40 + 1459144467) & 0xA9073F7D ^ 0xFFFFFC95) + ((v40 + 2135594790) & 0x80B56C4F))) ^ (v40 + 1979))))(v44, v45, v46, v47, v48, v49, v50, v51, a9, v39, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D27ED8()
{
  v7 = v0;
  (*(v4 + 8 * (v1 ^ 0xA7D)))(v3, v2);
  v5 = (*(v4 + 8 * (v1 + 2493)))();
  return (*(v4 + 8 * (((v5 == v7) * (v1 + 1718 + v1 + 625 - 988)) ^ v1)))(v5);
}

uint64_t sub_192D27F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7Du)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * (((v9 ^ 0x94E) - 2007) ^ 0x255)) ^ v9)))();
}

uint64_t sub_192D28034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v12 + 8 * (v9 ^ 0xA7D)))(v11, v10);
  v13 = (*(v12 + 8 * (v9 + 2493)))() == a9;
  return (*(v12 + 8 * ((v13 * ((11 * (v9 ^ 0x1CD) + 272272676) & 0xEFC57AB2 ^ 0xBCF)) ^ v9)))();
}

uint64_t sub_192D280F4()
{
  v5 = v0;
  (*(v4 + 8 * ((v1 + 289) ^ 0xA7D)))(v3, v2);
  v6 = (*(v4 + 8 * ((v1 + 289) ^ 0xA45)))() == v5;
  return (*(v4 + 8 * ((v6 * (((v1 - 2065532648) & 0x7B1D8EBE) - 769)) ^ (v1 + 289))))();
}

uint64_t sub_192D28174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = 5 * (v46 ^ 0x4DB);
  (*(v47 + 8 * (v48 ^ 0x298)))(a45);
  (*(v47 + 8 * (v48 + 376)))(a46);
  return (*(v47 + 8 * (((a44 == 0) * ((((v48 + 335837067) | 0xA093108A) ^ 0xFFFFFF88) + v48 - 1265137643)) ^ v48)))(a44, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_192D28C10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = 0;
  a16 = 0;
  v23 = (*(v22 + 8 * (v21 ^ 0xC76)))(*qword_1E73B2810[v21 ^ 0x711], *v20, v19 + *(v20 + 12) + ((v21 - 1265136953) ^ (a2 - 284)) - 356, &a19, &a16);
  return (*(v22 + 8 * ((134 * ((v23 ^ 0x3733C776) - 84018724 + ((2 * v23) & 0x6E678EEC) != 1110557013)) ^ v21)))(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11);
}

uint64_t sub_192D28D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v15 = (*(v13 + 8 * (v9 + 1008)))(*v11, *v7, (*(v7 + 12) + v8), va1, va);
  v16 = (v15 ^ 0xF235DB53) + 1073473023 + (((v9 - 1265137083) ^ 0x50FC276C) & (2 * v15));
  if (v16 == 842121554)
  {
    v17 = (*(v13 + 23584))(24, 0x1010040E2407E0ALL) != 0;
    return (*(v13 + 8 * ((v17 * (11 * (v12 ^ 0xB4979086) - 327)) ^ 0x73C)))();
  }

  else if (v16 == 1110557013)
  {
    v23 = v10;
    return (*(v13 + 4816))(4294922279);
  }

  else
  {
    v19 = 946232179 * ((((2 * (v14 - 108)) | 0xAD5392EC) - (v14 - 108) - 1453967734) ^ 0xC6D2F5B9);
    *(v14 - 104) = v19 ^ 0x638;
    *(v14 - 100) = v16 - v19 + 495099793;
    (*(v13 + 23736))(v14 - 108);
    return (*(v13 + 8 * ((173 * (*(v14 - 108) != 1181123576)) ^ 0x164)))(4294922280);
  }
}

uint64_t sub_192D29398@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0x9B4;
  (*(v13 + 8 * (a1 + 368)))(v12);
  v15 = (v14 - 618) | 0x20;
  (*(v13 + 8 * (v15 + 2601)))(*qword_1E73B2810[v15 - 354], a12, a9);
  return (*(v13 + 8 * ((173 * ((((v15 + 805797662) | 0x84901148) ^ 0xB49791CA) == -45003)) ^ v15)))(4294922293);
}

void sub_192D293D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, uint64_t a56, uint64_t a57)
{
  v59 = *(a6 + 160);
  (*(v58 + 8 * (a4 ^ v57)))(*(v59 - 0x161D22D60BEDB2F3));
  *(v59 - 0x161D22D60BEDB2F3) = a57;
  *a55 = a18;
  JUMPOUT(0x192D29430);
}

uint64_t sub_192D295F4(uint64_t a1)
{
  v5 = *(v3 + v1 - 1 - 31);
  v6 = a1 + v1 - 1;
  *(v6 - 15) = *(v3 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3128 * ((v2 ^ 0x17Cu) - 1228 == (v1 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_192D29688(uint64_t a1)
{
  *(a1 + v1) = *(v5 + v1);
  v7 = ((v1 + 1) ^ v3) != (v2 ^ 0x2D496C09);
  return (*(v6 + 8 * (((v7 << 6) | (v7 << 7)) ^ v4)))();
}

void sub_192D29814(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a20 - 0x161D22D60BEDB2EBLL) = ((a5 + a4 + 1250) ^ 0x7878E419) + a16 - ((2 * a16) & 0xF0F1C64A);
  *(a20 - 0x161D22D60BEDB2E7) = -499228505;
  JUMPOUT(0x192D29A00);
}

uint64_t sub_192D29C2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v7 - 0x161D22D60BEDB2F3);
  v12 = ((2 * v5) & 0xFFDFE97E ^ 0xC45CC14E) + (v5 ^ 0x1DD19418) + 1051457;
  v13 = (*(v11 + v12) << 24) | (*(v11 + v12 + 1) << 16) | (*(v11 + v12 + 2) << 8);
  v14 = *(v11 + v12 + 3);
  *(v7 + v9) = v6;
  if (!(v13 | v14))
  {
    return (*(v10 + 8 * ((((a2 ^ (a2 + 493)) - 407) * (v7 == v8)) ^ (a5 + a2 + 27))))(4294922294);
  }

  if ((v13 | v14) == 0xFFFF4FFB)
  {
    return (*(v10 + 8 * (((*(qword_1E73B2810[a5 - 602 + a2] - 4) == 0) * (((a5 + a2 - 1727431518) & 0x66F68BBF) - 2568)) ^ (a5 + a2 + 527))))();
  }

  return (*(v10 + 8 * ((16 * (((v7 == v8) ^ (((-77 - a2) ^ 0x2F) + 1)) & 1)) | 0x7AC)))();
}

uint64_t sub_192D2A120@<X0>(int a1@<W8>)
{
  v8 = (a1 - 1387687271) & 0x52B66EFA;
  (*(v7 + 8 * (a1 ^ 0xB4C)))();
  *(v2 - 0x161D22D60BEDB2F3) = 0;
  *(v2 + v6) = 2021188389;
  *(v2 + v4) = v5;
  (*(v7 + 8 * (v8 + 2352)))(v2 - 0x161D22D60BEDB2F3);
  return (*(v7 + 8 * (((((((v8 + 718) | 0x2C1) + 806746591) | 0x84819002) + 1265135760 + 354 * (((v8 + 718) | 0x2C1) ^ 0x7EE) - 3057) * (v1 == 0)) ^ ((v8 + 718) | 0x2C1))))(v3);
}

void sub_192D2A248()
{
  *v0 = 0;
  *(v0 + 8) = 1907636452;
  *(v0 + 12) = v1;
  (*(v3 + 8 * (v2 ^ 0xA4E)))(v0);
  JUMPOUT(0x192D26504);
}

void asabc800ag(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D2A328(uint64_t a1, _DWORD *a2)
{
  *v2 = 0;
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) == 0;
  return (*(v3 + 8 * (v4 | (4 * v4) | 0x542u)))(4294922293);
}

uint64_t sub_192D2ADEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, _DWORD *a34, int a35, unsigned int a36, uint64_t a37)
{
  v39 = 2 * (a5 ^ (a5 - 167));
  v40 = v38 + a5 - 2045;
  (*(v37 + 8 * (a5 ^ (a5 - 2422))))(*a11);
  *a11 = a37;
  *a34 = a26;
  return (*(v37 + 8 * (((a36 == 0) * (v39 ^ 0xC50)) ^ v40)))(a36, v41, v42, v43, 2932264581, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_192D2AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, int a41, unsigned int a42, uint64_t a43)
{
  v45 = a5 ^ (a5 + 168);
  v46 = a5 + v44 - 1924;
  (*(v43 + 8 * (a5 + v44)))(*(a38 - 0x1A8CA07156B7B2ABLL));
  *(a38 - 0x1A8CA07156B7B2ABLL) = a43;
  *a40 = a31;
  return (*(v43 + 8 * (((a42 == 0) * (v45 ^ 0x163)) ^ v46)))(a42, v47, v48, v49, 2932264581, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_192D2B188()
{
  v4 = *(v2 - 0x1A8CA07156B7B2A3) - 1579938237 + ((v1 - 531815500) & 0x1FB2DF3F);
  if (v0 > 0x572430B != v4 < 0xFA8DBCF0)
  {
    v5 = v0 > 0x572430B;
  }

  else
  {
    v5 = v0 - 91374841 + v1 - 62 > v4;
  }

  return (*(v3 + 8 * ((27 * !v5) ^ v1)))();
}

uint64_t sub_192D2B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v8 - 0x1A8CA07156B7B2ABLL);
  v12 = ((2 * v6) & 0xFD37F77A) + (v6 ^ 0xFE9BFBBD);
  *(v11 + v12 + 23331908) = 0;
  v13 = a5 + v7 - 493;
  *(v11 + v12 + 23331907) = 0;
  *(v11 + v12 + 23331909) = 0;
  *(v11 + v12 + (v13 ^ 0xAFA2CAC3)) = 1;
  *v5 += 4;
  return (*(v9 + 8 * ((690 * (((a5 + v7 + 1561448301) ^ 0xBD89E42) + ((a5 + v7 + 1561448301) & 0xF42766F7) == 2164)) ^ (v10 + v13 - 2775))))(0);
}

uint64_t sub_192D2B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(v13 + 8 * (v12 + 2426)))();
  (*(v13 + 8 * (v12 + 2441)))();
  v15 = (*(v13 + 8 * (v12 + 2435)))(a12, 0);
  return (*(v13 + 8 * (((((v12 - 67) ^ (v15 == 0)) & 1) * ((v12 - 528963) & 0xAECEDEAD ^ 0xAEC6CEB3)) ^ v12)))(4294922293, v15);
}

uint64_t sub_192D2B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ v12 ^ (a5 - 99);
  v17 = (*(v14 + 8 * ((v13 ^ v12) + 513)))(a12, a2, 0);
  *(v15 - 256) = v17;
  return (*(v14 + 8 * ((((v16 ^ (v17 == 0)) & 1) * ((((v13 ^ v12) - 2374) | 0x210) ^ 0x265)) ^ v13 ^ v12)))(4294922293);
}

uint64_t sub_192D2B870()
{
  (*(v1 + 8 * (v0 ^ 0x90A)))(v2, qword_1E73B2810[v0 - 610] - 12);
  (*(v1 + 8 * (v0 ^ 0x9F4)))(v2);
  *(v4 - 248) = (*(v1 + 8 * (v0 ^ 0x9D0)))(v2, v3);
  v5 = (*(v1 + 8 * (v0 ^ 0x9E8)))();
  return (*(v1 + 8 * (((v5 == qword_1E73B2810[v0 ^ 0x268] - 12) * (v0 ^ 0x36E ^ ((v0 + 399) | 0x3B2))) ^ v0)))(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_192D2B974(uint64_t a1)
{
  v4 = (v1 - 1359520148) & 0x5108A6FB;
  *(v3 - 248) = a1;
  (*(v2 + 8 * (v4 + 1074)))();
  (*(v2 + 8 * (v4 + 1074)))(*(v3 - 256));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D2C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = v28 + 1187;
  v32 = (v28 - 1126878) & 0xAED7FFAF;
  a19 = 0;
  a28 = 0;
  a27 = v30;
  v33 = (*(v29 + 8 * (v28 + 2754)))(*qword_1E73B2810[v28 - 161], *(a24 - 0x1A8CA07156B7B2ABLL), *(a24 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  return (*(v29 + 8 * ((13 * ((v33 ^ (v32 - 1325847814)) - 44073024 + ((2 * v33) & 0xBF7FF2FE) == 1830779202)) ^ v31)))(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_192D2C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v37 = (*(v32 + 8 * (v29 + 1567)))(*v33, *(v30 + v31), *(v30 - 0x1A8CA07156B7B29FLL), &a19, &a28);
  v43 = (v37 ^ 0x7F9FF9FF) - 578846912 + ((v37 << ((v29 - 113) & 0x9F ^ (v35 - 1))) & 0xFF3FF3FE);
  if (v43 == v28)
  {
    v46 = 4294922279;
    v47 = v34;
  }

  else
  {
    if (v43 == 1562343743)
    {
      v44 = (*(v32 + 23584))(24, 0x1010040E2407E0ALL) != 0;
      return (*(v32 + 8 * ((115 * v44) ^ 0x391)))();
    }

    v48 = 946232179 * ((((v36 - 108) | 0x211FEA39) - ((v36 - 108) & 0x211FEA39)) ^ 0xB164D6F6);
    *(v36 - 104) = v48 ^ 0x638;
    *(v36 - 100) = v43 - v48 - 225122396;
    (*(v32 + 23736))(v36 - 108);
    if (*(v36 - 108) == 1181123576)
    {
      v46 = 4294922280;
    }

    else
    {
      v46 = 0;
    }

    v47 = v34;
  }

  if (v46)
  {
    v49 = v34;
  }

  else
  {
    v49 = v47;
  }

  a20 = v49;
  return (*(v32 + 8 * ((2576 * (v46 == 0)) ^ 0xB3)))(v46, 4130263200, v38, v39, 2932264581, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_192D2CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  *(v30 + 8) = v32 - 4096;
  *(v33 - 200) = v31;
  return (*(v29 + 8 * (((a28 <= 0x1000) * (v28 - 777)) ^ v28)))(a1, a2, a3, a4, 2932264581);
}

uint64_t sub_192D2CB9C()
{
  *(v4 - 180) = -45007;
  *(v4 - 164) = -45007;
  return (*(v1 + 8 * (((v2 == v3) * (((v0 + 338) ^ 0x664) + ((v0 + 338) ^ 0xFFFFFD87))) ^ (v0 + 338))))();
}

void sub_192D2CE1C()
{
  (*(v4 + 8 * (v1 ^ (v0 - 2422))))();
  *(v5 + v2) = 0;
  *(v5 - 0x71166887D0A76934) = v6;
  *(v5 + v3) = 164704100;
  (*(v4 + 8 * (v1 ^ 0xAEC6C50F)))(v5 + v2);
  sub_192D2D0B8();
}

uint64_t sub_192D2CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29)
{
  v32 = 163 * (a5 ^ (a5 + 1));
  v33 = a5 + v31 - 2863;
  v34 = *(v30 - 200);
  v35 = (*(v29 + 8 * (a5 + v31)))(*(v34 - 0x71166887D0A7693CLL));
  *(v34 - 0x71166887D0A7693CLL) = *(v30 - 176);
  **(v30 - 192) = a29;
  v36 = *(v30 - 180);
  *(v30 - 164) = v36;
  return (*(v29 + 8 * ((204 * (v36 != (v32 ^ 0x1E9))) ^ v33)))(v35);
}

uint64_t sub_192D2D040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  *(a27 - 0x71166887D0A76934) = (a5 ^ (a5 - 369)) + 524352999 + a28 - ((2 * a28) & 0x3E81FBCE) - 913;
  *(a27 - 0x71166887D0A76930) = 164704100;
  return sub_192D2D0B8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_192D2D298(uint64_t a1, int a2)
{
  v8 = *(v6 - 0x71166887D0A7693CLL);
  v9 = (*(v8 + v5) << ((v4 ^ 0x2A) + 13)) | (*(v8 + (a2 + v3 - 3)) << 16) | (*(v8 + (a2 + v3 - 2)) << 8) | *(v8 + (a2 + v3 - 1));
  *(v6 - 0x71166887D0A76930) = v2 + 1509109630;
  return (*(v7 + 8 * ((1085 * (v9 == 261 * (v4 ^ 0x22A) - 2871)) ^ v4)))();
}

uint64_t sub_192D2D418@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(a1 + v3) << (((v4 - 32) & 0x3F) - 31)) | (*(a1 + (v1 + 1)) << 16) | (*(a1 + (v1 + 2)) << ((v4 - 120) & 0x7D ^ 0x15)) | *(a1 + (v1 + 3));
  *(v5 - 0x71166887D0A76930) = v2 - 908234881;
  return (*(v6 + 8 * ((978 * (v8 != 0)) ^ (v4 - 342))))(0);
}

uint64_t sub_192D2D4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = (*(v8 + 8 * (v7 ^ 0x999)))(v6 << (((-67 * (v7 ^ 0x1E)) ^ 0xB7u) + a5 + v7 - 29), 0x1010040F32E1FD2);
  v12 = v5 == v9 || v10 == 0;
  return (*(v8 + 8 * ((60 * v12) ^ v7)))(4294922294);
}

uint64_t sub_192D2D664@<X0>(int a1@<W4>, int a2@<W5>, int *a3@<X8>)
{
  v16 = bswap64(*(*(v10 + v9) + (((a2 - 4) << ((a1 ^ v5) + 118)) & ((a1 - 1455) + v7)) + ((a2 - 4) ^ v6) + v3));
  *(a3 - 3) = (v16 + v4 - (v8 & (2 * v16))) ^ v4;
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 8;
  v17 = *(v10 + v9);
  *(a3 - 1) = (*(v17 + (v14 + v16 + 4)) << 24) | (*(v17 + (v14 + v16 + 5)) << 16) | (*(v17 + (v14 + v16 + 6)) << 8) | *(v17 + (v14 + v16 + 7));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  v18 = *(v10 + v9);
  *a3 = (*(v18 + (v16 + v14)) << 24) | (*(v18 + (v16 + v14 + 1)) << 16) | (*(v18 + (v16 + v14 + 2)) << 8) | *(v18 + (v16 + v14 + 3));
  LODWORD(v16) = *(v10 + v12);
  *(v10 + v12) = v16 + 4;
  return (*(v13 + 8 * (a1 | (2 * (v16 + v14 + *(a3 - 1) + *a3 > (*(v10 + v11) ^ v15))))))();
}

uint64_t sub_192D2D77C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  *(a7 + 4) = *(v9 + v8) + a5;
  v13 = *(v9 + v10) + a4;
  *(v9 + v10) = v13;
  *(a7 + 12) = *(v9 + v8) + (a6 + v13 - 4);
  *(v9 + v10) += *a7;
  return (*(v11 + 8 * (((v12 + ((a3 + a1) | a2) - 2894) * (v7 == 0)) ^ a3)))();
}

uint64_t sub_192D2D890@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 < v5;
  *(v2 + v3) = 0;
  if (v7 == (v3 + 1) > 0xFFFFFFFFFA44B07CLL)
  {
    v7 = a1 + v3 + (v1 + 1329) + 411 < v4;
  }

  return (*(v6 + 8 * ((3224 * v7) ^ v1)))(4294922262);
}

uint64_t sub_192D2D8F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  *(v28 - 160) = a22;
  *(v28 - 148) = a27;
  return (*(v27 + 8 * ((((7 * (((a4 - 645) | 0x148) ^ 0x77D)) ^ 0x109) * (a22 != 0)) ^ (a4 + 564))))(0);
}

uint64_t sub_192D2D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v21 = (*(v20 + 8 * (v17 ^ 0xAE1)))(32 * v18, 0x1010040F32E1FD2);
  *a17 = v21;
  return (*(v20 + 8 * (((v21 == 0) * (((v17 - 95) | 0x648) - 1850)) ^ v17)))(v19);
}

uint64_t sub_192D2D9A8()
{
  *(v3 - 137) = v1 != 0;
  *(v3 - 144) = 0;
  return (*(v2 + 8 * (((((v0 - 28) ^ (v1 != 0)) & 1) * ((v0 + 996) ^ 0x54E)) ^ (v0 + 996))))();
}

uint64_t sub_192D2D9F4@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v12 - 160);
  v14 = 32 * a1;
  *(*a10 + v14) = *(v13 + v14);
  v16 = (v13 + v14 + 8);
  v15 = *v16;
  *(v12 - 136) = a1;
  *(v12 - 128) = v16;
  *(*a10 + v14 + 8) = v15;
  v17 = *(v13 + v14 + 12);
  *(v12 - 120) = v13 + v14 + 12;
  *(*a10 + v14 + 12) = v17;
  *(*a10 + v14 + 16) = 0;
  *(*a10 + v14 + 24) = 0;
  *(*a10 + v14 + 16) = (*(v11 + 8 * (v10 ^ 0xE57)))(*v16, 0x100004077774924);
  return (*(v11 + 8 * (((*(*a10 + v14 + 16) == 0) * (v10 - 1432 + ((v10 - 315706908) & 0x12D14A6F) - 601)) ^ v10)))();
}

uint64_t sub_192D2DCA8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 329;
  v6 = (v1 - 16 + a1);
  v7 = *(v4 + v1 - 16);
  *(v6 - 1) = *(v4 + v1 - 16 - 16);
  *v6 = v7;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v5 + 181761835) & 0xF52A87AD ^ 0x43E)) ^ v5)))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_192D2DEAC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a2 + v9) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 == ((v2 + v4) | v5) + a1) * v6) ^ v2)))();
}

uint64_t sub_192D2DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int *a15, uint64_t a16, void *a17)
{
  v19 = 7 * ((v18 + a5 - 1176) ^ 0x6F9);
  v20 = v18 + a5 - 793;
  *(*a17 + 32 * a7 + 24) = (*(v17 + 8 * (v18 + a5 - 6)))(*a15, 0x100004077774924);
  return (*(v17 + 8 * (((*(*a17 + 32 * a7 + 24) == 0) * (v19 ^ 0xB6)) ^ v20)))();
}

uint64_t sub_192D2DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 451 * (a5 ^ (a5 + 1));
  v27 = *(v25 - 148);
  v28 = v26 + *(v25 - 144) - 1352;
  *(v25 - 144) = v28;
  LOBYTE(v27) = v28 < v27;
  *(v25 - 137) = v27;
  return (*(v24 + 8 * ((((v26 ^ v27) & 1) * (v26 ^ 0x54E)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_192D2E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v29 = 11 * (v27 ^ 0x74);
  (*(v28 + 8 * ((v27 ^ 0x63F) + 1084)))(a22);
  *a10 = a27;
  return (*(v28 + 8 * (((a20 == 0x71166887D0A7693CLL) * ((((v29 - 1782) | 0x296) + 521) ^ 0x888)) ^ v29)))(0);
}

uint64_t sub_192D2E34C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (a1 - 2253) | 0xA0;
  (*(v20 + 8 * (a1 + 682)))();
  *(v18 + v19) = 0;
  *(v18 - 0x71166887D0A76934) = v21;
  *(v18 - 0x71166887D0A76930) = 164704100;
  (*(v20 + 8 * (v22 + 2775)))(v18 + v19);
  return (*(v20 + 8 * (((((((v22 + 76) & 0xD7) + 68) ^ (a17 == 0x1A8CA07156B7B2ABLL)) & 1) * (((v22 + 2121187148) & 0x819146D7 ^ 0xAEC6C852) + 1362702777)) ^ (v22 + 2121187148) & 0x819146D7)))(v17);
}

void sub_192D2E46C()
{
  *(v1 + v2) = 0;
  *(v1 - 0x1A8CA07156B7B2A3) = 1488562574;
  *(v1 - 0x1A8CA07156B7B29FLL) = 0;
  (*(v3 + 8 * ((v0 ^ 0x1098) + 1756)))(v1 + v2);
  sub_192D2A37C();
}

void Gg9q7vHg34(unint64_t a1, uint64_t a2)
{
  v3 = a1 > 0xFFFFFFFFFFFFFFEFLL && a2 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_192D2E620(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v4 = (*(v3 + 23584))(24, 0x1010040E2407E0ALL) != 0;
  return (*(v3 + 8 * ((39 * v4) ^ v2)))(4294922293);
}

uint64_t sub_192D2E670()
{
  *v0 = 0;
  *(v0 + 8) = 0x205585D268BFA235;
  *(v0 + 16) = 0;
  v2 = (*(v1 + 23584))(4096, 0x100004077774924);
  *v0 = v2;
  return (*(v1 + 8 * ((20 * (v2 == 0)) ^ 0x801)))();
}

uint64_t sub_192D31F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = -191875503 * (v19 ^ 1) - 2 * v19 + 5;
  *(&a19 + 16 * &a19 - 144 * ((&a9 - 0x36F214C141B3E0BELL) / 9) - 0x6F214C141B3E10D1) = *(qword_1E73B2950[v20 + 6] + 8) ^ *(a2 + 15) ^ 0xD1 ^ *(qword_1E73B2950[v20 + 1] + 13) ^ *(qword_1E73B2950[v20 + 5] + 14);
  return (*(a5 + 8 * v20))();
}

uint64_t xtiKg(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  qword_1EAE16938 = 1000671541 * ((qword_1EAE16938 - &v7 + qword_1EAE16918) ^ 0x25209C7892F2405CLL);
  qword_1EAE16918 = qword_1EAE16938;
  v5 = 398132233 * ((2 * (&v8 & 0x130F2ADC81DB4528) - &v8 - 0x130F2ADC81DB4529) ^ 0x1D6B4662CA30F771);
  v8 = a2;
  v14 = -601934099 - v5;
  v10 = a1;
  v9 = v5 ^ a5;
  v12 = v5 ^ a3;
  v13 = a4;
  v15 = off_1F070E440 - v5;
  (*(&off_1F070E080 + (unk_193010A3C ^ 0xCu) + 1929))(&v8);
  return v11;
}

uint64_t ZyNF2D9(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (qword_1EAE16918 ^ qword_1EAE16940) - &v5;
  qword_1EAE16940 = 1000671541 * v1 + 0x78D52D199FB68F0CLL;
  qword_1EAE16918 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * (((&v6 | 0xBCC87CDF8A18F0EFLL) - &v6 + (&v6 & 0x4337832075E70F10)) ^ 0x8E2A700E2019D0FLL);
  v6 = v2 ^ 0x9405E0C4;
  v3 = byte_193010800[byte_193010700[(53 * ((qword_1EAE16918 - qword_1EAE16940) ^ 0x5C))] ^ 0x20];
  v9 = v2 + qword_1F070E2E8;
  v7 = a1;
  (*(&off_1F070E080 + ((53 * ((qword_1EAE16918 - qword_1EAE16940) ^ 0x5C)) ^ v3) + 2185))(&v6);
  return v8;
}

uint64_t ewFHQ(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAE16928 - &v5 + qword_1EAE16918;
  qword_1EAE16928 = (1000671541 * v1) ^ 0x25209C7892F2405CLL;
  qword_1EAE16918 = 1000671541 * (v1 ^ 0x25209C7892F2405CLL);
  v2 = 1614251083 * ((2 * (&v6 & 0x5BC954F4024B22D0) - &v6 - 0x5BC954F4024B22D4) ^ 0x101C70D495ADB0CCLL);
  v6 = v2 ^ 0x9405E0C4;
  LOBYTE(v1) = 53 * ((53 * v1) ^ qword_1EAE16918);
  v3 = byte_193010800[byte_193010700[v1] ^ 0x6A];
  v7 = a1;
  v9 = off_1F070E3B8 + v2;
  (*(&off_1F070E080 + (v1 ^ v3) + 2031))(&v6);
  return v8;
}

uint64_t qSCskg(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = qword_1EAE16918 - qword_1EAE16920 - &v15;
  qword_1EAE16920 = 1000671541 * (v7 - 0x25209C7892F2405CLL);
  qword_1EAE16918 = 1000671541 * (v7 ^ 0x25209C7892F2405CLL);
  v10[0] = qword_1F070E3F8;
  v10[1] = a1;
  v11 = a3;
  v10[2] = a2;
  v10[3] = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = v10;
  v8 = byte_193010600[byte_193010500[(53 * ((qword_1EAE16918 + qword_1EAE16920) ^ 0x5C))] ^ 0xE2];
  v16[1] = (923786993 * ((((&vars0 - 24) | 0x369D7D4) - (&vars0 - 24) + ((&vars0 - 24) & 0xFC962828)) ^ 0x698E6B9B)) ^ 0x6294CF9;
  (*(&off_1F070E080 + ((53 * ((qword_1EAE16918 + qword_1EAE16920) ^ 0x5C)) ^ v8) + 1891))(v16);
  return v16[0];
}

uint64_t SwZuQte6Dm(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  qword_1EAE16930 = 1000671541 * ((qword_1EAE16918 - qword_1EAE16930 - &v8) ^ 0x25209C7892F2405CLL);
  qword_1EAE16918 = qword_1EAE16930;
  v6[0] = off_1F070E3A0;
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v7 = a4;
  v9[1] = (923786993 * ((2 * ((&vars0 - 24) & 0x63FDC6F8) - (&vars0 - 24) + 469907714) ^ 0x76E5854D)) ^ 0x6294CF9;
  v4 = byte_193010C00[byte_193010B00[(53 * ((2 * qword_1EAE16930) ^ 0x5C))] ^ 0x5A];
  v10 = v6;
  (*(&off_1F070E080 + ((53 * ((2 * qword_1EAE16930) ^ 0x5C)) ^ v4) + 1823))(v9);
  return v9[0];
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x1E696CD68];
  v4 = IORegistryEntryFromPath(*MEMORY[0x1E696CD68], path);
  v5 = MEMORY[0x1E69E9A60];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x1E69E9A60], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

uint64_t sldksmfm1n(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16A68) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 + dword_1EAE16A68) ^ 0x88))] ^ 0x4F]) - 74);
  v2 = *(v1 - 4);
  v3 = *(&off_1E73B2A80 + (byte_193012CC0[byte_1930115B0[(127 * (v2 ^ dword_1EAE16A30 ^ 0x88))] ^ 0x11] ^ (127 * (v2 ^ dword_1EAE16A30 ^ 0x88))));
  v4 = &v9[*v3 ^ v2];
  *(v1 - 4) = 2140301951 * v4 + 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16A68 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_193016030[byte_193015040[(127 * (dword_1EAE16A68 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x2D]) - 161);
  v6 = 663017543 * ((-2 - ((~&v10 | 0x6CA43041D842A3C3) + (&v10 | 0x935BCFBE27BD5C3CLL))) ^ 0x752850828552FEE7);
  v7 = *(v5 + 1624) - v6;
  v10 = 1231722968 - v6;
  v11 = a1;
  v12 = v7;
  (*(v5 + 8 * (((127 * ((*v3 - *(v1 - 4)) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((*v3 - *(v1 - 4)) ^ 0x88))] ^ 0x4E]) + 2636)))(&v10);
  return v13;
}

uint64_t koqa938msd8(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88))] ^ 0x6B]) - 88);
  v3 = *(v2 - 4);
  v4 = *(&off_1E73B2A80 + (byte_193012BC4[(byte_1930114BC[(127 * ((dword_1EAE16A30 + v3) ^ 0x88)) - 12] ^ 0x66) - 4] ^ (127 * ((dword_1EAE16A30 + v3) ^ 0x88))) + 28);
  v5 = (*v4 + v3) ^ &v10;
  *(v2 - 4) = 2140301951 * v5 + 0x3D3AC77DA7219688;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  v6 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AF0) ^ 0x88))] ^ 0x12]) - 132);
  v7 = 398614211 * (&v11 ^ 0x5365D0A976C72DABLL);
  v11 = *(v6 + 1208) + v7;
  v12 = v7 ^ a2;
  v13 = v7 ^ 0xD19B2ADA;
  v15 = a1;
  v8 = 127 * ((*v4 + *(v2 - 4)) ^ 0x88);
  (*(v6 + 8 * ((byte_193016038[(byte_193015048[v8 - 8] ^ 0x2D) - 8] ^ v8) + 2453)))(&v11);
  return v14;
}

uint64_t RXm4IJLE3xR(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88))] ^ 0x11]) + 18);
  v5 = *(&off_1E73B2A80 + ((127 * (*v4 ^ dword_1EAE16A30 ^ 0x88)) ^ byte_1930129C0[byte_1930111B0[(127 * (*v4 ^ dword_1EAE16A30 ^ 0x88))] ^ 0x27]) - 143);
  v6 = *v4 - &v12 + *v5;
  *v4 = (2140301951 * v6) ^ 0x3D3AC77DA7219688;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  HIDWORD(v13) = 407104343 * ((392479340 - (&v13 | 0x1764C26C) + (&v13 | 0xE89B3D93)) ^ 0xAA0A763B) + 1644606322;
  LOBYTE(v6) = 127 * (*v4 ^ 0x88 ^ *v5);
  v7 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16990) ^ 0x88))] ^ 0x12]) - 132);
  (*(v7 + 8 * ((byte_193012CC4[(byte_1930115B4[v6 - 4] ^ 0x23) - 4] ^ v6) + 2468)))(&v13);
  v8 = *(v7 + 1744);
  v9 = 398614211 * (((&v13 | 0x2740C0D24AF117E3) - (&v13 & 0x2740C0D24AF117E3)) ^ 0x7425107B3C363A48);
  v17 = a1;
  v13 = v8 + v9;
  v14 = v9 ^ ((a2 ^ 0xFFFB9B61) + 1056960416 + ((2 * a2) & 0xFFF736C2));
  v15 = v9 ^ 0xD19B2ADA;
  v10 = 127 * (*v4 ^ 0x88 ^ *v5);
  (*(v7 + 8 * ((byte_193012BC4[(byte_1930114BC[v10 - 12] ^ 0x66) - 4] ^ v10) + 2681)))(&v13);
  return (v16 - 335305226);
}

uint64_t g9000sds9(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AC8) ^ 0x88)) ^ byte_193012AC0[byte_1930112B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AC8) ^ 0x88))] ^ 0xF9]) - 176);
  v6 = *(v5 - 4);
  v7 = *(&off_1E73B2A80 + (byte_193012ACC[(byte_1930112BC[(127 * ((dword_1EAE16A30 + v6) ^ 0x88)) - 12] ^ 0xF9) - 12] ^ (127 * ((dword_1EAE16A30 + v6) ^ 0x88))) - 170);
  v8 = (*v7 ^ v6) - &v14;
  *(v5 - 4) = 2140301951 * v8 - 0x2DAA06A0DC720288;
  *v7 = 2140301951 * (v8 ^ 0x3D3AC77DA7219688);
  v9 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16AC8) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 + dword_1EAE16AC8) ^ 0x88))] ^ 0x4E]) - 18);
  v10 = *(v9 + 1440);
  v11 = 1704084847 * (((v15 | 0xCEC0B4E2C6878310) - (v15 | 0x313F4B1D39787CEFLL) + 0x313F4B1D39787CEFLL) ^ 0x836378271B3C6227);
  v19 = v11 ^ a3;
  v20 = a4;
  v15[1] = a2;
  v15[2] = a1;
  v17 = v11 - 535688854;
  v18 = v10 - v11;
  v15[0] = a5;
  v12 = 127 * ((*v7 + *(v5 - 4)) ^ 0x88);
  (*(v9 + 8 * ((byte_193012CC4[(byte_1930115B4[v12 - 4] ^ 0x4F) - 4] ^ v12) + 2657)))(v15);
  return v16;
}

uint64_t sdfspp103e9rf(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16970) ^ 0x88)) ^ byte_193012BC0[byte_1930114B0[(127 * ((dword_1EAE16A30 - dword_1EAE16970) ^ 0x88))] ^ 0xBE]) - 48);
  v6 = *(&off_1E73B2A80 + (byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 + *v5) ^ 0x88))] ^ 0x2D] ^ (127 * ((dword_1EAE16A30 + *v5) ^ 0x88))) - 200);
  v7 = 2140301951 * (*v5 ^ &v12 ^ 0x3D3AC77DA7219688 ^ *v6);
  *v5 = v7;
  *v6 = v7;
  v8 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16970 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_1930129C0[byte_1930111B0[(127 * (dword_1EAE16970 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x27]) - 104);
  v9 = *(v8 + 1096);
  v10 = 1704084847 * (v13 ^ 0x4DA3CCC5DDBBE137);
  v18 = a4;
  v13[1] = a2;
  v13[2] = a1;
  v17 = v10 ^ a3;
  v16 = v9 - v10;
  v15 = v10 - 535688854;
  v13[0] = a5;
  (*(v8 + 8 * (((127 * ((*v6 + *v5) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((*v6 + *v5) ^ 0x88))] ^ 0xC0]) + 2658)))(v13);
  return v14;
}

uint64_t fdf324tt5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E73B2A80 + ((127 * (dword_1EAE16A08 ^ 0x88 ^ dword_1EAE16A30)) ^ byte_193012CC0[byte_1930115B0[(127 * (dword_1EAE16A08 ^ 0x88 ^ dword_1EAE16A30))] ^ 0x4E]) - 10);
  v2 = 127 * (*v1 ^ dword_1EAE16A30 ^ 0x88);
  v3 = *(&off_1E73B2A80 + (byte_193012BC4[(byte_1930114BC[v2 - 12] ^ 0xBE) - 4] ^ v2) - 85);
  v4 = *v1 ^ &v10 ^ *v3;
  *v1 = (2140301951 * v4) ^ 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16A08) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 + dword_1EAE16A08) ^ 0x88))] ^ 0x2D]) - 161);
  v6 = *(v5 + 1184);
  v7 = 663017543 * ((&v11 - 2 * (&v11 & 0xA6B16BB7FDEA1E87) - 0x594E94480215E179) ^ 0xBF3D0B74A0FA43A3);
  v11 = 1231722968 - v7;
  v12 = a1;
  v13 = v6 - v7;
  v8 = 127 * (*v1 ^ 0x88 ^ *v3);
  (*(v5 + 8 * ((byte_193012CC4[(byte_1930115B4[v8 - 4] ^ 0x23) - 4] ^ v8) + 2551)))(&v11);
  return v14;
}

void plsicnq9qs(int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 + dword_1EAE16AE8) ^ 0x88)) ^ byte_193016030[byte_193015040[(127 * ((dword_1EAE16A30 + dword_1EAE16AE8) ^ 0x88))] ^ 0x2D]) - 219);
  v3 = 127 * (*v2 ^ dword_1EAE16A30 ^ 0x88);
  v4 = *(&off_1E73B2A80 + (byte_193016038[(byte_193015048[v3 - 8] ^ 0x6B) - 8] ^ v3) - 114);
  v5 = 2140301951 * ((*v4 + *v2) ^ &v8 ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  v20 = 407104343 * (((v19 | 0x978A4CBE) - (v19 & 0x978A4CBE)) ^ 0xD51B0716) + 1644606322;
  v6 = *(&off_1E73B2A80 + ((127 * ((dword_1EAE16A30 - dword_1EAE16AE8) ^ 0x88)) ^ byte_193012CC0[byte_1930115B0[(127 * ((dword_1EAE16A30 - dword_1EAE16AE8) ^ 0x88))] ^ 0x4F]) + 10);
  (*(v6 + 8 * ((byte_193012CC0[byte_1930115B0[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x23] ^ (127 * ((*v4 + *v2) ^ 0x88))) + 2468)))(v19);
  v9 = 0x23EBEE970F30E96ELL;
  v11 = 0;
  v12 = 0xB2C8811167FCF552;
  v13 = 0xABCF1EB1C778095;
  v14 = 0x23EBEE970F30E96ELL;
  v10 = -1874706694;
  v15 = a1 - ((2 * a1) & 0x42087B1C) - 1593557618;
  v16 = 0;
  v17 = 0xB2C8811141DDBF59;
  v18 = 0xABCF1EB1C778095;
  v7 = *(v6 + 8 * ((43 * ((*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_193012CC0[byte_1930115B0[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x12]) + 2474)))(128) != 0)) ^ 0xA55u));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_192D3748C(uint64_t a1)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (v1)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((1926 * v4) ^ 0x3F9)))();
}

uint64_t sub_192D37534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 + 16) = *a1;
  *(v36 + 88) = *(a1 + 72);
  *(v36 + 92) = *(a1 + 76);
  *(v36 + 96) = *(a1 + 80);
  *(v36 + 97) = *(a1 + 81);
  *(v36 + 120) = *(a1 + 104);
  *(v36 + 100) = *(a1 + 84);
  *(v36 + 124) = *(a1 + 108) & 1 | 0x28;
  return (*(v37 + 8 * v35))(a1, v36 + 24, -3917399019, -888267117, 0xFFFFFFFFLL, a6, 57, (v35 - 671), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_192D375E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v54 = v52 + a4;
  *(a2 + v54) = (127 * (v54 & 0xF)) ^ *(*(v48 + 8 * a8) + (v54 & 0xF)) ^ *((v54 & 0xF) + *(v48 + 8 * v50)) ^ *((v54 & 0xF) + *(v48 + 8 * v49) - 4 + 5) ^ (v46 + ((*(v45 + v52 + a4) ^ 0x44) - ((a5 ^ (2 * *(v45 + v52 + a4))) & 0x88)) * a7);
  return (*(a44 + 8 * (((((v53 + v44 - 681) ^ a3) + v52 == v47) * v51) ^ v44)))();
}

uint64_t sub_192D3773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *(a43 + 119) = *(a1 + 103);
  *(a43 + 118) = *(a1 + 102);
  *(a43 + 117) = *(a1 + 101);
  *(a43 + 116) = *(a1 + 100);
  *(a43 + 115) = *(a1 + 99);
  *(a43 + 114) = *(a1 + 98);
  *(a43 + 113) = *(a1 + 97);
  *(a43 + 112) = *(a1 + 96);
  *(a43 + 111) = *(a1 + 95);
  *(a43 + 110) = *(a1 + 94);
  *(a43 + 109) = *(a1 + 93);
  *(a43 + 108) = *(a1 + 92);
  *(a43 + 107) = *(a1 + 91);
  *(a43 + 106) = *(a1 + 90);
  *(a43 + 105) = *(a1 + 89);
  *(a43 + 104) = *(a1 + 88);
  v46 = *(a1 + 4);
  *(a43 + 20) = v46;
  return (*(v45 + 8 * ((101 * (v46 == v44 + ((v43 + 404415438) & 0x27E51D37) + 1805380828)) ^ v43)))();
}

uint64_t sub_192D37970(void *a1)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v1 + 8) = a1 + v2;
  return (*(v4 + 8 * (((3 * (((v3 + 875) | 0x22C) ^ 0x60B) + (((v3 + 875) | 0x22C) ^ 0xFFFFF988)) * (v1 == 0)) ^ ((v3 + 875) | 0x22C))))();
}

uint64_t sub_192D37A54(void *a1)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v1 = a1 + v3;
  return (*(v7 + 8 * ((((v4 + ((v2 - 1806) ^ (v5 + 9)) - 623) ^ ((v2 - 1806) | 0x22)) * (v6 == 192)) ^ v2)))();
}

uint64_t sub_192D37D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v45 - 104) = v44 - 36 - 2138855791 * ((-1190335241 - ((v45 - 112) | 0xB90CECF7) + ((v45 - 112) | 0x46F31308)) ^ 0x49452B89) + 2111;
  v47 = (*(v46 + 8 * (v44 + 2556)))(v45 - 112);
  return (*(a44 + 8 * ((v44 - 36) | 0x37E)))(v47);
}

uint64_t sub_192D37EA4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v53 = v49 + 54;
  v54 = (v49 + 54) ^ (v50 - 185);
  v55 = (v49 - 101) | 0x329;
  a45 = *(v52 + 8 * (v49 + 54));
  a47 = a1;
  a49 = a27;
  *(v51 - 112) = &a45;
  *(v51 - 104) = v49 + 54 - 385730383 * (((v51 - 112) & 0x380A9227 | ~((v51 - 112) | 0x380A9227)) ^ 0xBE640609) - 1310139384;
  v56 = (*(v52 + 8 * (v49 + 2526)))(v51 - 112);
  return (*(a37 + 8 * ((1377 * (*(v51 - 100) == v55 - 346023524)) ^ ((v54 ^ (v50 - 620)) + v53))))(v56);
}

uint64_t sub_192D3819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  LODWORD(a26) = v34;
  HIDWORD(a15) = v38;
  HIDWORD(v42) = a1 - 1096719702;
  LODWORD(v42) = v39 - 1995336735;
  return (*(v40 + 8 * v35))(a1, 11975039, 0x4E57CE6D5C1D29D7, 0x4D7C3013B6750271, 0x4B876952F452CECFLL, 0x3283CFEC498AFD8ELL, a7, 0x1380784254EB2752, a9, a10, a11, a12, a2 + (((v35 - 1325) | 0x181u) ^ 0x1D0C208B337C3B9ALL), a14, a15, a16, a17, v42, a19, a20, v36, a22, v37, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_192D38EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43)
{
  v47 = v44 + v45 + 1278;
  v48 = (v43 ^ 0x80B6B977) + a31 - 0x3B0F042835DE8A4ALL;
  v49 = v48 < 0xA0242A49;
  v50 = v48 > a43;
  if (a43 < 0xA0242A49 != v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  return (*(v46 + 8 * (v47 ^ (112 * !v51))))(a1, a2, a3, a4, a5, a6, 3917399018);
}

uint64_t sub_192D39508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v43 + v41) = a16;
  *(v43 - 0xF2C67B766E067CBLL) = a16;
  return (*(v44 + 8 * v42))(a1, a2, a41);
}

uint64_t sub_192D3997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  (*(v47 + 8 * (v45 ^ 0xE5E)))(v46 - 0xF2C67B766E067CBLL);
  *v44 = 0xF2C67B766E067CBLL;
  return (*(a44 + 8 * v45))(a43);
}

uint64_t sub_192D39AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = (*(v46 + 8 * (v45 + 2107066806)))();
  *(v44 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a44 + 8 * (((((v45 + 2107064351) | 0x454) ^ 0x7D974672) + v45) ^ (3153 * (v45 < 0x40B41D18)))))(v47);
}

uint64_t sub_192D3A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v55 = v37;
  LODWORD(a13) = v36;
  LODWORD(a33) = v38;
  v54 = v34;
  v56 = v39;
  v41 = v35 + 1215;
  v42 = v35 + 359;
  v43 = v35 + 498;
  v57 = (*(v40 + 8 * ((v35 + 1215) ^ 0xC81)))(32);
  return (*(v40 + 8 * (((((v43 ^ (v57 == 0)) & 1) == 0) * (v42 ^ 0x2A1)) ^ v41)))(v57, v44, v45, v46, v47, v48, v49, v50, a9, a4, a11, a1, a13, a14, a15, v57 + 0x785FEF64C8799D66, a17, a18, a19, a20, a21, a22, a23, v54, a25, a26, v55, a28, a29, a30, a31, v56, a33, a34);
}

uint64_t sub_192D3A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  *a37 = 0x785FEF64C8799D66;
  *(a37 + 8) = 0x785FEF64C8799D66;
  *(a37 + 16) = a39 + 119306422 + ((v39 - 683) | 0x220);
  v42 = (*(v41 + 8 * (v39 ^ 0x9B4)))((v40 + a39 + 10));
  *(a37 + 24) = v42;
  return (*(v41 + 8 * ((114 * (v42 == 0)) ^ v39)))();
}

uint64_t sub_192D3A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = (*(v45 + 8 * (v44 ^ 0x841)))();
  *(a16 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a44 + 8 * v44))(v46);
}

uint64_t sub_192D3AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  v37 = *(a6 + 24);
  v38 = (__ROR8__((v37 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + ((v30 - 771) ^ 0x705)) & 0xF9FFFFFFFFFFFFFFLL;
  v39 = v38 ^ 0x1E4559FE42F2471ELL;
  v38 ^= 0x8A5B269C0EA5AB6FLL;
  v40 = (__ROR8__(v39, 8) + v38) ^ v32;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v29;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v36;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v34;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v28;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (((2 * (v49 + v50)) & 0xAAAA746556851DE8) - (v49 + v50) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  *(v37 + 4) = (((((2 * (v53 + v52)) | 0xC5585AB08F272530) - (v53 + v52) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v37 + 4) & 7))) ^ a28 ^ 0xA8;
  v54 = __ROR8__((v37 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = (v54 + v30) ^ 0x885B269C0EA5AB6FLL;
  v56 = (__ROR8__((v54 + v30) ^ 0x1C4559FE42F2471ELL, 8) + v55) ^ v32;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v29;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (v60 + v59 - ((2 * (v60 + v59)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v34;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v28;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (0x964AD0183F74BFF6 - ((v67 + v66) | 0x964AD0183F74BFF6) + ((v67 + v66) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v37 + 5) = a19 ^ (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ v31) >> (8 * ((v37 + 5) & 7)));
  return (*(v33 + 8 * (v35 + 377570200)))(a1, a2, a22);
}

uint64_t sub_192D3AFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *(a6 + 24) + v15 - 0x1E06D87D68ADC517;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v21 + v10) | 0x7E054FB39FC80770) - ((v21 + v10) | v19) + v19;
  v23 = __ROR8__(v22 ^ 0x6240164DDD3A406ELL, 8);
  v22 ^= 0xF65E692F916DAC1FLL;
  v24 = (v23 + v22) ^ a7;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v9;
  v27 = *(v16 + 8 * v14);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v26, 8) + v28) ^ v18;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v17;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v8;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v13;
  *v20 = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ v11) >> (8 * (v20 & 7u))) ^ HIBYTE(a3) ^ 0x4F;
  v36 = __ROR8__((v20 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((0x4D7C3013B6750271 - v36) & 0x7C0A1F12C3784FEDLL) + v36 + v10 - ((v36 + v10) & 0x7A0A1F12C3784FEDLL);
  v38 = v37 ^ 0x624F46EC818A08F3;
  v37 ^= 0xF651398ECDDDE482;
  v39 = __ROR8__(v38, 8);
  v40 = (a1 - ((v39 + v37) | a1) + ((v39 + v37) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (a2 - ((v42 + v41) | a2) + ((v42 + v41) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (a5 - ((v45 + v44) | a5) + ((v45 + v44) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((v51 + v50 - ((2 * (v51 + v50)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v53 = (v51 + v50 - ((2 * (v51 + v50)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v50, 61);
  *(v20 + 1) = (((__ROR8__((v52 + v53) ^ v13, 8) + ((v52 + v53) ^ v13 ^ __ROR8__(v53, 61))) ^ v11) >> (8 * ((v20 + 1) & 7))) ^ BYTE2(a3) ^ 0xCB;
  v54 = __ROR8__((v20 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = v54 - ((2 * v54 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v56 = __ROR8__(v55 ^ 0x24709F6C17CEA06BLL, 8);
  v55 ^= 0xB06EE00E5B994C1ALL;
  v57 = (((2 * (v56 + v55)) | 0x84A35F8B8F02A07ELL) - (v56 + v55) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((2 * (v59 + v58)) | 0x5AE37AFB8B700D10) - (v59 + v58) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = __ROR8__((((2 * (v62 + v61)) | 0xA0645171747853D8) - (v62 + v61) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v64 = (((2 * (v62 + v61)) | 0xA0645171747853D8) - (v62 + v61) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v61, 61);
  v65 = (((2 * (v63 + v64)) & 0xC0FA970E03639268) - (v63 + v64) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) & 0x3F1A3AC322107E48) - (v67 + v66) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) | 0xA1336988A728D0CALL) - (v70 + v69) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v72 = __ROR8__(v71, 8);
  v73 = __ROR8__(v69, 61);
  *(v20 + 2) = (((a4 - ((v72 + (v71 ^ v73)) | a4) + ((v72 + (v71 ^ v73)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v20 + 2) & 7))) ^ BYTE1(a3) ^ 0x10;
  v74 = __ROR8__((v20 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = v74 - ((2 * v74 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v76 = v75 ^ 0xCFE61775360C1323;
  v75 ^= 0x5BF868177A5BFF52uLL;
  v77 = __ROR8__(v76, 8);
  v78 = (((2 * (v77 + v75)) & 0x3185DFB098D2C9E8) - (v77 + v75) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v79 = v78 ^ __ROR8__(v75, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v9;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (a8 - ((v81 + v82) | a8) + ((v81 + v82) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0xDC1EDE556F26AEE8) - (v85 + v84) - 0x6E0F6F2AB7935775) ^ 0x6DE52BDC61A5701BLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v8;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ v13;
  *(v20 + 3) = a3 ^ v12 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ v11) >> (8 * ((v20 + 3) & 7)));
  return v27();
}

uint64_t sub_192D3B9A4@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v38 = (a2 - 8393862) & 0xE9FED7FE;
  v39 = *(a31 + 24);
  v40 = a4 - (((v38 ^ 0x382822D108E0EECELL) + 2 * a4) & 0x2C65C7A2CEED3AA6) - 0xDB90AC5A7BA4C1BLL;
  v41 = __ROR8__((v39 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((v41 + v32) | 0x8EF30571B3E03BF9) - ((v41 + v32) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v43 = v42 ^ 0x92B65C8FF1127CE7;
  v42 ^= 0x6A823EDBD459096uLL;
  v44 = (__ROR8__(v43, 8) + v42) ^ a1;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v31;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) | 0x6257A18AC6AFEA71) - ((v48 + v47) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFC15BB0929C9D890;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (((2 * (v52 + v53)) | 0x73433184586818C6) - (v52 + v53) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) & 0x2E6D9124F850C1CLL) - (v56 + v55) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v39[10] = (((((v59 + v58) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v59 + v58) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v39 + 10) & 7u))) ^ HIBYTE(v40) ^ 0x16;
  v60 = __ROR8__((v39 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((v60 + v32) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v60 + v32) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v62 = v61 ^ 0x5BE668DB5A344230;
  v61 ^= 0xCFF817B91663AE41;
  v63 = (__ROR8__(v62, 8) + v61) ^ a1;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v31;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v37;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xFED65BFA7285710) - (v75 + v74) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v39[11] = (((((v78 + v77) | 0x21983AC56B0BB129) - ((v78 + v77) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v39 + 11) & 7u))) ^ BYTE6(v40) ^ 0x32;
  v79 = __ROR8__((v39 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = -2 - (((0xD7C3013B6750271 - v79) | 0xEFC9086FACD320D4) + ((v79 + v32) | 0x1036F790532CDF2BLL));
  v81 = v80 ^ 0xF38C5191EE2167CALL;
  v80 ^= 0x67922EF3A2768BBBuLL;
  v82 = (__ROR8__(v81, 8) + v80) ^ a1;
  v83 = __ROR8__(v82, 8);
  v84 = v82 ^ __ROR8__(v80, 61);
  v85 = (((2 * (v83 + v84)) & 0xA44BB63E2DDF8B52) - (v83 + v84) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ v37;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xFC15BB0929C9D890;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0xD2E383F95083B686) - ((v91 + v90) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ v34;
  v39[12] = (((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ v33) >> (8 * ((v39 + 12) & 7u))) ^ BYTE5(v40) ^ 0xE3;
  v95 = __ROR8__((v39 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((2 * (v95 + v32)) | 0xA4234159906F106ALL) - (v95 + v32) + 0x2DEE5F5337C877CBLL;
  v97 = v96 ^ 0xCE54F9528AC5CF2BLL;
  v96 ^= 0x5A4A8630C692235AuLL;
  v98 = __ROR8__(v97, 8);
  v99 = (((v98 + v96) | 0xD738201BC43E983BLL) - ((v98 + v96) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((v101 + v100) ^ 0x70783716B7118F26) - ((2 * ((v101 + v100) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ v37;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v35;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ v34;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  v39[13] = (((v113 + v112 - ((2 * (v113 + v112)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v39 + 13) & 7u))) ^ BYTE4(v40) ^ 0xD1;
  v114 = __ROR8__((v39 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v115 = (0xCD7C3013B6750271 - v114) & 0xF050E761A6289A68 | (v114 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v116 = v115 ^ 0xEE15BE9FE4DADD76;
  v115 ^= 0x7A0BC1FDA88D3107uLL;
  v117 = (__ROR8__(v116, 8) + v115) ^ a1;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((v119 + v118) | 0x349C4C6A3E574525) - ((v119 + v118) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ v37;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xFC15BB0929C9D890;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ v35;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0x749128A0D39CA49CLL) - (v128 + v127) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v39[14] = (((__ROR8__(v129, 8) + (v129 ^ __ROR8__(v127, 61))) ^ v33) >> (8 * ((v39 + 14) & 7u))) ^ ((a4 - (((v38 ^ 0x8E0EECE) + 2 * a4) & 0xCEED3AA6) + 1480963045) >> 24) ^ 0x67;
  v130 = __ROR8__((v39 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = (0x57C3013B6750271 - v130) & 0x5D98955B3706B30 | (v130 + v32) & 0xFA2676AA4C8F94CFLL;
  v132 = v131 ^ 0x199CD0ABF1822C2ELL;
  v131 ^= 0x8D82AFC9BDD5C05FLL;
  v133 = (__ROR8__(v132, 8) + v131) ^ a1;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) | 0x86D73428622BDA3ALL) - (v135 + v134) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ v37;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x407F7AAF3D2F06C8) - (v140 + v139) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ v35;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ v34;
  v39[15] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v144, 61))) ^ v33) >> (8 * ((v39 + 15) & 7u))) ^ BYTE2(v40) ^ 0x76;
  v146 = __ROR8__((v39 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v147 = ((2 * v146 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v146 + 0x5649FDBD14324CA8;
  v148 = v147 ^ 0x948894571F4F0D28;
  v147 ^= 0x96EB355318E159uLL;
  v149 = __ROR8__(v148, 8);
  v150 = (((2 * (v149 + v147)) & 0xA1738BF9A2E70742) - (v149 + v147) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v151 = v150 ^ __ROR8__(v147, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ v31;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((2 * (v154 + v153)) & 0x2D730DB5B3BDACF8) - (v154 + v153) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (((2 * (v157 + v156)) | 0x4D17F792C6A75DEALL) - (v157 + v156) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (((2 * (v160 + v159)) & 0x305CE5312BE34172) - (v160 + v159) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v162 = __ROR8__(v159, 61);
  v163 = (__ROR8__(v161, 8) + (v161 ^ v162)) ^ v34;
  v164 = v163 ^ __ROR8__(v161 ^ v162, 61);
  v165 = __ROR8__(v163, 8);
  v39[16] = (((v165 + v164 - ((2 * (v165 + v164)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v39 + 16) & 7u))) ^ BYTE1(v40) ^ 0x9D;
  v166 = __ROR8__((v39 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v167 = ((2 * ((v166 + v32) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v166 + v32) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v168 = v167 ^ 0xD9CC90F52308FB19;
  v167 ^= 0x4DD2EF976F5F1768uLL;
  v169 = __ROR8__(v168, 8);
  v170 = (((2 * (v169 + v167)) | 0xC93FF3953A26D81ALL) - (v169 + v167) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v171 = __ROR8__(v167, 61);
  v172 = (__ROR8__(v170, 8) + (v170 ^ v171)) ^ v31;
  v173 = v172 ^ __ROR8__(v170 ^ v171, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ v37;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((2 * (v176 + v175)) | 0x9AD9A558F1F83E32) - (v176 + v175) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ v35;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = __ROR8__(v179, 8);
  v182 = (v181 + v180 - ((2 * (v181 + v180)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v39[17] = (((__ROR8__(v182, 8) + (v182 ^ __ROR8__(v180, 61))) ^ v33) >> (8 * ((v39 + 17) & 7u))) ^ (a4 - ((((a2 + 122) & 0xFE ^ 0xCE) + 2 * a4) & 0xA6) - 27) ^ 0x53;
  return (*(v36 + 8 * a2))();
}