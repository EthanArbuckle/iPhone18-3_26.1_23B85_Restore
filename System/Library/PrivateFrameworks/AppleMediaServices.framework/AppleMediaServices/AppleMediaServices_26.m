uint64_t sub_192CD8D2C()
{
  OUTLINED_FUNCTION_3();
  **(v0 + 88) = *(v0 + 192);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CD8D94()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PassingMockAuthenticateTask.deinit()
{

  return v0;
}

uint64_t PassingMockAuthenticateTask.__deallocating_deinit()
{
  PassingMockAuthenticateTask.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_192CD8E64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = PassingMockAuthenticateTask.__allocating_init(authenticationResults:accountStore:options:)(a1, *a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_192CD8E90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C44;

  return PassingMockAuthenticateTask.performAuthentication()();
}

uint64_t sub_192CD8F7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CD8FBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_192CD9040()
{
  v1 = *(v0 + 16);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_192CD90EC;

  return sub_192CD965C(v3, v2, v4);
}

uint64_t sub_192CD90EC()
{
  OUTLINED_FUNCTION_5_40();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (v1 || (v0 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_2_50();

    return v10(v9);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 32) = v7;
    *v7 = v5;
    v7[1] = sub_192CD925C;

    return sub_192CB5700();
  }
}

uint64_t sub_192CD925C()
{
  OUTLINED_FUNCTION_5_40();
  v3 = *v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  v5 = *(v3 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0 & 1;
  }

  return v5(v6);
}

uint64_t sub_192CD9354(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192CD93E4;

  return sub_192CD9020();
}

uint64_t sub_192CD93E4()
{
  OUTLINED_FUNCTION_5_40();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = v0 & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_192CD94E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_192C98440(a2, v15);

  v8 = sub_192CDA0A8(v7, v15);
  if (v3)
  {
    sub_192CD95E4(a2);
  }

  else
  {
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    sub_192C98440(a2, v14);
    sub_192CB8694(a1, v14, v15);
    result = sub_192CD95E4(a2);
    v12 = v15[1];
    *(a3 + 24) = v15[0];
    *(a3 + 40) = v12;
    v13 = v15[3];
    *(a3 + 56) = v15[2];
    *(a3 + 72) = v13;
  }

  return result;
}

uint64_t sub_192CD95E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192CD965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return MEMORY[0x1EEE6DFA0](sub_192CD9680, 0, 0);
}

uint64_t sub_192CD9680()
{
  v1 = v0;
  v2 = v0 + 80;
  sub_192CDA340();

  v3 = sub_192C59F70();
  *(v1 + 232) = v3;
  if (qword_1EAE12488 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 216);
  v4 = *(v1 + 224);
  v6 = *(v1 + 208);
  oslog = qword_1EAE15410;
  *(v1 + 240) = qword_1EAE15410;
  *(v1 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD90;
  *(v1 + 96) = v4;
  *(v1 + 104) = &type metadata for PromptNotificationAction;
  *(v1 + 80) = v6;
  *(v1 + 88) = v5;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    v10 = sub_192F967CC();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = *(v1 + 208);
  *(v1 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v14 = OUTLINED_FUNCTION_90();
  *(v14 + 16) = xmmword_192FBCD50;
  sub_19286C588(v2, v1 + 144);
  sub_19286CFC8(v1 + 144, v10, v12, v14 + 32);
  *(v7 + 32) = v14;
  __swift_destroy_boxed_opaque_existential_0(v2);
  sub_19287AEE0();
  v40 = v15;
  v16._object = 0x80000001930230E0;
  v16._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  type metadata accessor for UNAuthorizationOptions(0);
  *(v1 + 168) = v17;
  *(v1 + 144) = v13;
  sub_192878268(v1 + 144, v1 + 176);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  sub_19286D180(v1 + 176, v2);
  *(v1 + 112) = 0;
  v18 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v18 = v35;
  }

  v19 = *(v18 + 16);
  if (v19 >= *(v18 + 24) >> 1)
  {
    sub_19287AEE0();
    v18 = v36;
  }

  *(v18 + 16) = v19 + 1;
  v20 = v18 + 40 * v19;
  v21 = *v2;
  v22 = *(v2 + 16);
  *(v20 + 64) = *(v2 + 32);
  *(v20 + 32) = v21;
  *(v20 + 48) = v22;
  sub_1928FC07C(v1 + 144, &unk_1EAE131B0);
  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  *(v7 + 40) = v18;
  v24 = sub_192F96E3C();
  if (os_log_type_enabled(oslog, v24))
  {
    v38 = v3;
    v25 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v26 = byte_1ED6DE5D8;
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v1 + 80) = v7;
    *(v1 + 88) = sub_192BB97CC;
    *(v1 + 96) = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_11();
    v28 = sub_192F9674C();
    v30 = v29;

    objc_autoreleasePoolPop(v25);
    v31 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v32 = OUTLINED_FUNCTION_90();
    *(v32 + 16) = xmmword_192FBCD50;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1928FDB30();
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    sub_192F9622C();

    objc_autoreleasePoolPop(v31);
    v3 = v38;
  }

  v33 = *(v1 + 208);

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_192CD9B70;
  v34 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DD0);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_19294E224;
  *(v1 + 104) = &block_descriptor_29;
  *(v1 + 112) = v34;
  [v3 requestAuthorizationWithOptions:v33 completionHandler:v2];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_192CD9B70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_192CDA030;
  }

  else
  {
    v2 = sub_192CD9C80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CD9C80()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 144);
  v5 = swift_allocObject();
  *(v0 + 80) = v3;
  v6 = (v0 + 80);
  *(v5 + 16) = xmmword_192FBCD90;
  *(v0 + 96) = v1;
  *(v0 + 104) = &type metadata for PromptNotificationAction;
  *(v0 + 88) = v2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_192F967CC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = OUTLINED_FUNCTION_90();
  *(v12 + 16) = xmmword_192FBCD50;
  sub_19286C588(v0 + 80, v0 + 144);
  sub_19286CFC8(v0 + 144, v9, v11, v12 + 32);
  *(v5 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  sub_19287AEE0();
  v36 = v13;
  v14._object = 0x8000000193023100;
  v14._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 168) = MEMORY[0x1E69E6370];
  *(v0 + 144) = v4;
  sub_192878268(v0 + 144, v0 + 176);
  *v6 = 0u;
  *(v0 + 96) = 0u;
  sub_19286D180(v0 + 176, v0 + 80);
  *(v0 + 112) = 0;
  v15 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v15 = v34;
  }

  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_19287AEE0();
    v15 = v35;
  }

  v17 = *(v0 + 240);
  *(v15 + 16) = v16 + 1;
  v18 = v15 + 40 * v16;
  v19 = *v6;
  v20 = *(v0 + 96);
  *(v18 + 64) = *(v0 + 112);
  *(v18 + 32) = v19;
  *(v18 + 48) = v20;
  sub_1928FC07C(v0 + 144, &unk_1EAE131B0);
  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  *(v5 + 40) = v15;
  v22 = sub_192F96E7C();
  if (os_log_type_enabled(v17, v22))
  {
    v23 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v24 = byte_1ED6DE5D8;
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v0 + 80) = v5;
    *(v0 + 88) = sub_1928FA5C4;
    *(v0 + 96) = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_11();
    v26 = sub_192F9674C();
    v28 = v27;

    objc_autoreleasePoolPop(v23);
    v29 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v30 = OUTLINED_FUNCTION_90();
    *(v30 + 16) = xmmword_192FBCD50;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1928FDB30();
    *(v30 + 32) = v26;
    *(v30 + 40) = v28;
    sub_192F9622C();

    objc_autoreleasePoolPop(v29);
  }

  v31 = *(v0 + 232);

  v32 = *(v0 + 8);

  return v32(v4);
}

uint64_t sub_192CDA030()
{
  v1 = *(v0 + 232);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_192CDA0A8(uint64_t a1, uint64_t a2)
{
  sub_192952700(0xD000000000000014, 0x800000019301CAD0);
  if (!v8)
  {

    sub_1928FC07C(v7, &unk_1EAE131B0);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_3_55() & 1) == 0)
  {

LABEL_9:
    sub_192CDA2EC();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1928FC07C(a2, &qword_1EAE14D20);
    return v2;
  }

  v2 = v6;
  sub_192952700(0xD000000000000010, 0x800000019301CAB0);

  if ((OUTLINED_FUNCTION_3_55() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1928FC07C(a2, &qword_1EAE14D20);
  return v2;
}

uint64_t sub_192CDA210(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_192CB8580;

  return sub_192CD965C(v3, v4, v5);
}

uint64_t sub_192CDA2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_192CDA0A8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

unint64_t sub_192CDA2EC()
{
  result = qword_1EAE15670;
  if (!qword_1EAE15670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15670);
  }

  return result;
}

unint64_t sub_192CDA340()
{
  result = qword_1EAE15678;
  if (!qword_1EAE15678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE15678);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptNotificationAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_192CDA460(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CDA4A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_192CDA4F8()
{
  result = qword_1EAE15680;
  if (!qword_1EAE15680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15680);
  }

  return result;
}

uint64_t dispatch thunk of PurchaseConfigBiometricsProtocol.isActionSupported(for:account:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_192CDA6F8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_192CDA6F8(uint64_t a1)
{

  OUTLINED_FUNCTION_40();

  return v2(a1);
}

id sub_192CDA840(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v11[0] = 0;
  v5 = [v4 copyAccessControlRefWithAccount:a1 options:a2 error:v11];
  v6 = v11[0];
  v7 = v4;
  v8 = v6;
  if (!v5)
  {
    v9 = v8;
    sub_192F958DC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_192CDA908(uint64_t a1)
{
  v1 = [objc_opt_self() ACLVersionForAccessControl_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F967CC();

  return v3;
}

uint64_t sub_192CDA9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_192CDA9E8, 0, 0);
}

uint64_t sub_192CDA9E8()
{
  v1 = [objc_opt_self() isActionSupportedForType:v0[19] account:v0[20] options:v0[21]];
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192CDAB44;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19293A7A4;
  v0[13] = &block_descriptor_30;
  v0[14] = v2;
  [v1 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CDAB44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_192CDACDC;
  }

  else
  {
    v2 = sub_192CDAC54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CDAC54()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = [v2 BOOLValue];

  OUTLINED_FUNCTION_40();

  return v4(v3);
}

uint64_t sub_192CDACDC()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v2(0);
}

id sub_192CDAD4C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 stateForAccount_];
}

uint64_t sub_192CDADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_192CDAE64;

  return sub_192CDA9C4(a1, a2, a3);
}

uint64_t sub_192CDAE64(char a1)
{

  OUTLINED_FUNCTION_40();
  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 & 1;
  }

  return v3(v4);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.getCurrentPaymentPassIdentifier()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 24) + **(a2 + 24));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_69(v5);

  return v8(a1, a2);
}

uint64_t sub_192CDB0A4()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_4();
  v5 = *v0;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.getPaymentServicesMerchantURL()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_28();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_38(v7);
  *v8 = v9;
  v8[1] = sub_192919C44;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.isCardEligibleForAutoEnrollment(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 40) + **(a4 + 40));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_38(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_69(v9);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.shouldAttemptApplePayClassic(with:options:countryCode:paymentNetworks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_12_28();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_38(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_69(v16);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.shouldAttemptApplePayClassic(with:paymentNetworks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_28();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_38(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_69(v12);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_192CDB688()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_36();

  return v4(v3);
}

uint64_t sub_192CDB790(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t sub_192CDB7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t *sub_192CDB7D4(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_192922AC4(v6, a3);
  }

  if (a2)
  {
    swift_unknownObjectRetain();
    return sub_1929256A8(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192CDB844()
{
  v0 = objc_opt_self();

  return sub_192CDCE40(v0);
}

uint64_t sub_192CDB8C4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_0();
  v0[19] = [objc_opt_self() getCurrentPaymentPassIdentifier];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v2 = OUTLINED_FUNCTION_39_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13B60);
  OUTLINED_FUNCTION_4_4(v3);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  v0[12] = sub_192932AA0;
  v0[13] = &block_descriptor_30_0;
  v0[14] = v2;
  OUTLINED_FUNCTION_73_1(v4, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDB9C8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_192CDBB4C;
  }

  else
  {
    v5 = sub_192CDBAC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDBAC8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_192F967CC();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_192CDBB4C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 152);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CDBBCC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_0();
  v0[20] = [objc_opt_self() paymentServicesMerchantURLPromise];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v2 = OUTLINED_FUNCTION_39_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144D0);
  OUTLINED_FUNCTION_4_4(v3);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  v0[12] = sub_19292BA5C;
  v0[13] = &block_descriptor_24_0;
  v0[14] = v2;
  OUTLINED_FUNCTION_73_1(v4, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDBCD0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_192CDBE64;
  }

  else
  {
    v5 = sub_192CDBDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDBDD0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_192F959AC();

  v4 = sub_192F95A8C();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_192CDBE64()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CDBECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_4_6(sub_192CDBEE4);
}

uint64_t sub_192CDBEE4()
{
  OUTLINED_FUNCTION_43_0();
  v3 = objc_opt_self();
  v4 = sub_192F9679C();
  v5 = [v3 isCardEligibleForAutoEnrollmentWithCountryCode_];
  v0[21] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v6 = OUTLINED_FUNCTION_39_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14220);
  OUTLINED_FUNCTION_4_4(v7);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  v0[12] = sub_192CDB7D4;
  v0[13] = &block_descriptor_19_0;
  v0[14] = v6;
  [v5 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDC020()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_192CDC1B8;
  }

  else
  {
    v5 = sub_192CDC120;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDC120()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 144);

  result = [v1 respondsToSelector_];
  if (result)
  {
    [v1 value];
    swift_unknownObjectRelease();
    v3 = OUTLINED_FUNCTION_3_36();

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192CDC1B8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v3(0);
}

void sub_192CDC248(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_192F9679C();
  }

  else
  {
    v2 = 0;
  }

  [objc_opt_self() setDefaultPaymentPassIdentifier_];
}

uint64_t sub_192CDC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return OUTLINED_FUNCTION_4_6(sub_192CDC2C8);
}

uint64_t sub_192CDC2C8()
{
  OUTLINED_FUNCTION_43_0();
  v2 = v0[20];
  v3 = v0[19];
  v4 = objc_opt_self();
  v5 = sub_192F9679C();
  v6 = sub_192F96D9C();
  v0[24] = [v4 shouldAttemptApplePayClassicWithAccount:v3 options:v2 countryCode:v5 paymentNetworks:v6];

  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_39_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0);
  OUTLINED_FUNCTION_4_4(v7);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1(v8, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDC430()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_192CDC5B0;
  }

  else
  {
    v5 = sub_192CDC530;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDC530()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  [v2 BOOLValue];

  v3 = OUTLINED_FUNCTION_3_36();

  return v4(v3);
}

uint64_t sub_192CDC5B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v2(0);
}

uint64_t sub_192CDC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_4_6(sub_192CDC638);
}

uint64_t sub_192CDC638()
{
  OUTLINED_FUNCTION_43_0();
  v2 = objc_opt_self();
  v3 = sub_192F9679C();
  v4 = sub_192F96D9C();
  v0[22] = [v2 shouldAttemptApplePayClassicWithCountryCode:v3 paymentNetworks:v4];

  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_39_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0);
  OUTLINED_FUNCTION_4_4(v5);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1(v6, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDC78C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_192CDC90C;
  }

  else
  {
    v5 = sub_192CDC88C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDC88C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  [v2 BOOLValue];

  v3 = OUTLINED_FUNCTION_3_36();

  return v4(v3);
}

uint64_t sub_192CDC90C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v2(0);
}

id sub_192CDC978(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = sub_192F9679C();
  v6 = [v4 shouldSampleWithPercentage:v5 sessionDuration:a1 identifier:a2];

  return v6;
}

uint64_t sub_192CDCA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192CDCA90;

  return sub_192CDB8B0();
}

uint64_t sub_192CDCA90()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_4();
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_192CDCB90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_192919C44;

  return sub_192CDBBB4(a1);
}

uint64_t sub_192CDCC28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_192C784C4;

  return sub_192CDBECC(a1, a2);
}

uint64_t sub_192CDCCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_192C784C4;

  return sub_192CDC2A8(a1, a2, a3, a4, a5);
}

uint64_t sub_192CDCD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_192C77C28;

  return sub_192CDC61C(a1, a2, a3);
}

uint64_t sub_192CDCE40(void *a1)
{
  v1 = [a1 defaultPaymentPassIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F967CC();

  return v3;
}

uint64_t sub_192CDCEC4()
{
  OUTLINED_FUNCTION_3();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[15] = swift_getObjectType();
  v5 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192CDCF2C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[14];
  v2 = OBJC_IVAR___AMSPurchaseConfiguration_kAutoEnrollRetryKey;
  v0[16] = OBJC_IVAR___AMSPurchaseConfiguration_kAutoEnrollRetryKey;
  v3 = (v1 + v2);
  *v3 = 0xD000000000000020;
  v3[1] = 0x8000000193024140;
  v4 = OBJC_IVAR___AMSPurchaseConfiguration_kDPANEmptyIdentifier;
  v0[17] = OBJC_IVAR___AMSPurchaseConfiguration_kDPANEmptyIdentifier;
  v5 = (v1 + v4);
  *v5 = 0x2A5954504D452ALL;
  v5[1] = 0xE700000000000000;
  v6 = sub_192C46E14();
  v7 = sub_192C9B4AC();
  sub_192BD0A70(v7);
  v0[18] = v6;
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_192CDD040;

  return SendableBag.codableDictionary(for:)(v6);
}

uint64_t sub_192CDD040()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_192CDD140()
{
  OUTLINED_FUNCTION_120();
  sub_192C65C70();
  v1 = *(v0 + 112) + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel;
  v3 = *(v0 + 32);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  *v1 = v4;
  v5 = sub_192C65D84();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v11 = *(v0 + 112);

  *(v11 + OBJC_IVAR___AMSPurchaseConfiguration_expressCheckoutBagModel) = v5;
  sub_1928F6068(v6, v11 + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider);
  sub_1928F6068(v7, v11 + OBJC_IVAR___AMSPurchaseConfiguration_systemProvider);
  *(v0 + 72) = v11;
  objc_msgSendSuper2((v0 + 72), sel_init);

  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  __asm { BRAA            X2, X16 }
}

uint64_t static PurchaseConfiguration.makeConfiguration(withBag:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = OUTLINED_FUNCTION_133();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CDD354()
{
  OUTLINED_FUNCTION_65();
  if (v0[12])
  {
    v1 = v0[12];
  }

  else
  {
    v1 = static PurchaseConfiguration.createDefaultBag()();
  }

  v0[14] = v1;
  v2 = v0[13];
  type metadata accessor for SendableBag();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_54_0();
  sub_192908290(v3, v4);
  v0[5] = &type metadata for DefaultPurchaseConfigBiometricsProvider;
  v0[6] = &off_1F06FDCC8;
  v0[10] = &type metadata for DefaultPurchaseConfigSystemProvider;
  v0[11] = &off_1F06FDD48;
  objc_allocWithZone(v2);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_192CDD488;

  return sub_192CDCEC4();
}

uint64_t sub_192CDD488()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CDD598()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_192CDD5F8()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v0();
}

id static PurchaseConfiguration.createDefaultBag()()
{
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_192FBCD90;
  v1 = AMSSetLogKeyIfNeeded();
  v2 = sub_192F967CC();
  v4 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v5 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v5, xmmword_192FBCD50);
  v26 = sub_192F979EC();
  v27 = v6;
  MEMORY[0x193B10CE0](5972026, 0xE300000000000000);
  MEMORY[0x193B10CE0](v2, v4);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v7 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_19286D180(&v26, v5 + 32);
  *(v5 + 64) = 0;
  *(v0 + 32) = v5;
  OUTLINED_FUNCTION_26_21();
  v8._countAndFlagsBits = 0xD000000000000052;
  LogInterpolation.init(stringLiteral:)(v8);
  v9 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_85_6(v9))
  {
    v10 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v11 = swift_allocObject();
    v12 = OUTLINED_FUNCTION_27_1(v11);
    v26 = v0;
    v27 = sub_1928FA5C4;
    v28 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_48_10();

    objc_autoreleasePoolPop(v10);
    v13 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v14 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_23_21(v14, v15, v16, v17, v18, v19, v20, v21, v22);
    *(v23 + 56) = v7;
    v24 = sub_1928FDB30();
    OUTLINED_FUNCTION_125_1(v24);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_134_1();

    objc_autoreleasePoolPop(v13);
  }

  sub_192CE92A0();
  return sub_19294D4D0();
}

uint64_t sub_192CDD99C(uint64_t a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CDDA64;

  return static PurchaseConfiguration.makeConfiguration(withBag:)(a1);
}

uint64_t sub_192CDDA64()
{
  OUTLINED_FUNCTION_65();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  swift_unknownObjectRelease();
  v8 = *(v5 + 24);
  if (v2)
  {
    v9 = sub_192F958CC();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, v4, 0);
    _Block_release(v8);
  }

  v10 = *(v6 + 8);

  return v10();
}

id PurchaseConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PurchaseConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PurchaseConfiguration.beginCardEnrollmentAttempt(account:)()
{
  OUTLINED_FUNCTION_3();
  v1[125] = v0;
  v1[124] = v2;
  v1[123] = v3;
  v1[126] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CDDDDC()
{
  if (PurchaseConfiguration.isExpressCheckoutShouldCheckForWalletBiometrics.getter())
  {
    v2 = OUTLINED_FUNCTION_96_4((v0[125] + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider));
    v3 = OUTLINED_FUNCTION_102();
    if ((v4(v3) & 1) == 0)
    {
      if (qword_1EAE11D30 != -1)
      {
        OUTLINED_FUNCTION_1_32();
      }

      OUTLINED_FUNCTION_120_2();
      v16 = qword_1EAE11D38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_42();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_192FBCD90;
      v0[36] = v2;
      v0[33] = v1;
      v18 = v1;
      v19 = AMSLogKey();
      if (v19)
      {
        v20 = v19;
        sub_192F967CC();
        OUTLINED_FUNCTION_27_12();
      }

      else
      {
        OUTLINED_FUNCTION_48_13();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
      v31 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_50(v31, xmmword_192FBCD50);
      sub_19286C588((v0 + 33), (v0 + 29));
      OUTLINED_FUNCTION_11_18();
      sub_19286CFC8(v32, v33, v34, v35);
      *(v17 + 32) = v31;
      __swift_destroy_boxed_opaque_existential_0((v0 + 33));
      OUTLINED_FUNCTION_73_9();
      v37._countAndFlagsBits = v36 + 39;
      v37._object = (v38 | 0x8000000000000000);
      LogInterpolation.init(stringLiteral:)(v37);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v16, v39))
      {
        goto LABEL_39;
      }

      v40 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v41 = swift_allocObject();
      v42 = OUTLINED_FUNCTION_116(v41);
      v0[110] = v17;
      v0[111] = sub_192BB97CC;
      v0[112] = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
LABEL_38:
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v40);
      v54 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v55 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v55, v56, v57, v58, v59, v60, v61, v62, v63);
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v65 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v65);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6();

      objc_autoreleasePoolPop(v54);
      goto LABEL_39;
    }
  }

  if ((sub_192CE003C() & 1) == 0)
  {
    v5 = v0[125];
    if ((sub_192CE0290() & 1) == 0)
    {
      if (qword_1EAE11D30 != -1)
      {
        OUTLINED_FUNCTION_1_32();
      }

      OUTLINED_FUNCTION_120_2();
      v21 = qword_1EAE11D38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_42();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_192FBCD90;
      v0[20] = v5;
      v0[17] = v1;
      v23 = v1;
      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        sub_192F967CC();
        OUTLINED_FUNCTION_27_12();
      }

      else
      {
        OUTLINED_FUNCTION_48_13();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
      v43 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_50(v43, xmmword_192FBCD50);
      sub_19286C588((v0 + 17), (v0 + 21));
      OUTLINED_FUNCTION_11_18();
      sub_19286CFC8(v44, v45, v46, v47);
      *(v22 + 32) = v43;
      __swift_destroy_boxed_opaque_existential_0((v0 + 17));
      OUTLINED_FUNCTION_73_9();
      v49._countAndFlagsBits = v48 + 68;
      v49._object = (v50 | 0x8000000000000000);
      LogInterpolation.init(stringLiteral:)(v49);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v21, v51))
      {
        goto LABEL_39;
      }

      v40 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v52 = swift_allocObject();
      v53 = OUTLINED_FUNCTION_116(v52);
      v0[98] = v22;
      v0[99] = sub_192BB97CC;
      v0[100] = v53;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      goto LABEL_38;
    }
  }

  v6 = v0[125];
  v7 = [objc_allocWithZone(AMSKeychainOptions) init];
  v0[129] = v7;
  [v7 setPurpose_];
  [v7 setStyle_];
  v8 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v0[130] = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v9 = *(v6 + v8 + 24);
  v10 = *(v6 + v8 + 32);
  __swift_project_boxed_opaque_existential_0((v6 + v8), v9);
  if ((*(v10 + 48))(v9, v10))
  {
    __swift_project_boxed_opaque_existential_0((v0[125] + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider), *(v0[125] + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider + 24));
    OUTLINED_FUNCTION_67_0();
    v12 = v11();
    v0[133] = v12;
    v28 = v12;
    if (v12)
    {
      if (sub_192CE003C())
      {
        v29 = swift_task_alloc();
        v0[134] = v29;
        *v29 = v0;
        OUTLINED_FUNCTION_25_20(v29);
        OUTLINED_FUNCTION_68();

        return PurchaseConfiguration.shouldAttemptApplePayClassic(account:accessControl:)();
      }

      if (sub_192CE0290())
      {
        v76 = swift_task_alloc();
        v0[135] = v76;
        *v76 = v0;
        OUTLINED_FUNCTION_25_20(v76);
        OUTLINED_FUNCTION_68();

        return PurchaseConfiguration.shouldAttemptAutoEnrollment(account:accessControl:)();
      }

LABEL_41:
      v66 = sub_192F95A8C();
      OUTLINED_FUNCTION_22_24(v66);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    v69 = v0[126];
    v70 = v0[125];
    v71 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_192FBCD90;
    v0[64] = v69;
    v0[61] = v70;
    v73 = v70;
    v74 = AMSLogKey();
    if (v74)
    {
      v75 = v74;
      sub_192F967CC();
      OUTLINED_FUNCTION_77_0();
    }

    else
    {
      OUTLINED_FUNCTION_73_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v78 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50(v78, xmmword_192FBCD50);
    sub_19286C588((v0 + 61), (v0 + 45));
    OUTLINED_FUNCTION_101_4((v0 + 45), &v78[2]);
    *(v72 + 32) = v78;
    __swift_destroy_boxed_opaque_existential_0((v0 + 61));
    OUTLINED_FUNCTION_73_9();
    v80._countAndFlagsBits = v79 + 5;
    v80._object = (v81 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v80);
    v82 = sub_192F96E5C();
    if (os_log_type_enabled(v71, v82))
    {
      v83 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v84 = swift_allocObject();
      v85 = OUTLINED_FUNCTION_38_0(v84);
      v0[104] = v72;
      v0[105] = sub_192BB97CC;
      v0[106] = v85;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_154();

      objc_autoreleasePoolPop(v83);
      v86 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v87 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_29_0(v87, v88, v89, v90, v91, v92, v93, v94, v95);
      *(v96 + 56) = MEMORY[0x1E69E6158];
      v97 = sub_1928FDB30();
      OUTLINED_FUNCTION_159(v97);
      OUTLINED_FUNCTION_60();
      sub_192F9622C();

      objc_autoreleasePoolPop(v86);
    }

LABEL_39:

    goto LABEL_41;
  }

  if (sub_192CE003C())
  {
    v13 = swift_task_alloc();
    v0[131] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_25_20(v13);
    OUTLINED_FUNCTION_68();

    return PurchaseConfiguration.shouldAttemptApplePayClassic(account:options:)();
  }

  else
  {
    if ((sub_192CE0290() & 1) == 0)
    {

      goto LABEL_41;
    }

    v26 = swift_task_alloc();
    v0[132] = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_25_20(v26);
    OUTLINED_FUNCTION_68();

    return PurchaseConfiguration.shouldAttemptAutoEnrollment(account:options:)();
  }
}

uint64_t sub_192CDEAD4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 912) = v3;
  *(v1 + 904) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDEBB4()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 912))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDECD4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 928) = v3;
  *(v1 + 920) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDEDB4()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 928))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDEED4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 944) = v3;
  *(v1 + 936) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDEFB4()
{
  OUTLINED_FUNCTION_65();

  if (*(v0 + 944))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDF0DC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 960) = v3;
  *(v1 + 952) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDF1BC()
{
  OUTLINED_FUNCTION_65();

  if (*(v0 + 960))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDF2E4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1096) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CDF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  OUTLINED_FUNCTION_120_2();
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  *(v13 + 320) = v12;
  *(v13 + 296) = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_77_0();
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v20 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v20, xmmword_192FBCD50);
  sub_19286C588(v13 + 296, v13 + 680);
  OUTLINED_FUNCTION_101_4(v13 + 680, &v20[2]);
  *(v16 + 32) = v20;
  __swift_destroy_boxed_opaque_existential_0(v13 + 296);
  sub_19287AEE0();
  v55 = v21;
  OUTLINED_FUNCTION_31_0();
  v22._countAndFlagsBits = 0xD000000000000029;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  swift_getErrorValue();
  *(v13 + 224) = *(v13 + 864);
  __swift_allocate_boxed_opaque_existential_0((v13 + 200));
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_11_18();
  v23();
  sub_1928F9340(v13 + 200, v13 + 328, &unk_1EAE131B0);
  OUTLINED_FUNCTION_84_4();
  sub_19286D180(v13 + 328, v13 + 16);
  *(v13 + 48) = 0;
  v24 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v24 = v53;
  }

  OUTLINED_FUNCTION_24();
  if (v25)
  {
    OUTLINED_FUNCTION_142();
    v24 = v54;
  }

  OUTLINED_FUNCTION_12();
  v56 = v24;
  sub_19292E1F0(v13 + 200, &unk_1EAE131B0);
  OUTLINED_FUNCTION_49_7();
  *(v16 + 40) = v24;
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v26))
  {
    v27 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_116(v28);
    *(v13 + 808) = v16;
    *(v13 + 816) = sub_192BB97CC;
    *(v13 + 824) = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v27);
    v30 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v31 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v31, v32, v33, v34, v35, v36, v37, v38, v39);
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v41);
    OUTLINED_FUNCTION_10_32();
    sub_192F9622C();

    objc_autoreleasePoolPop(v30);
  }

  v42 = *(v13 + 1096);

  v43 = OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_22_24(v43);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_145();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, v56, a12);
}

uint64_t PurchaseConfiguration.isExpressCheckoutShouldCheckForWalletBiometrics.getter()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___AMSPurchaseConfiguration_expressCheckoutBagModel + 1);
  if (v2 == 2)
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v4, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v6 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v6, xmmword_192FBCD50);
    v8 = sub_19286C588(v7, v146);
    v16 = OUTLINED_FUNCTION_37_14(v8, v9, v10, v11, v12, v13, v14, v15, v102, v107, v112, v117);
    OUTLINED_FUNCTION_110_4(v16, v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_82_6();
    v22._countAndFlagsBits = 0xD000000000000088;
    v22._object = (v23 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v22);
    v24 = sub_192F96E7C();
    if (OUTLINED_FUNCTION_63_10(v24))
    {
      v25 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v26);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v25);
      v27 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v28 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_29_0(v28, v29, v30, v31, v32, v33, v34, v35, v36);
      *(v37 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v38);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2();
      LOBYTE(v2) = 1;
LABEL_25:

      objc_autoreleasePoolPop(v27);
      goto LABEL_26;
    }

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v5, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v39 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v39, xmmword_192FBCD50);
    v41 = sub_19286C588(v40, v146);
    v49 = OUTLINED_FUNCTION_37_14(v41, v42, v43, v44, v45, v46, v47, v48, v102, v107, v112, v117);
    OUTLINED_FUNCTION_110_4(v49, v50, v51, v52, v53, v54);
    sub_19287AEE0();
    v145 = v55;
    OUTLINED_FUNCTION_31_0();
    v56 = &v145;
    v57._countAndFlagsBits = 0xD000000000000053;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    v147 = MEMORY[0x1E69E6370];
    v64 = OUTLINED_FUNCTION_81_9(v58, v59, &unk_1EAE131B0, &unk_192FBD860, v60, v61, v62, v63, v103, v108, v113, v118, v122, v126, v130, v134, v136, v140, v142, v145, v2 & 1);
    v67 = sub_1928F9340(v64, v65, v66);
    OUTLINED_FUNCTION_14_1(v67, v68, v69, v70, v71, v72, v73, v74, v104, v109, v114, v119, v123, v127, v131, v137);
    if ((OUTLINED_FUNCTION_88_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v56 = v100;
    }

    OUTLINED_FUNCTION_7_9();
    if (v76)
    {
      OUTLINED_FUNCTION_43_1(v75);
      OUTLINED_FUNCTION_67();
      v56 = v101;
    }

    v56[2] = ObjectType;
    OUTLINED_FUNCTION_3_56(&v56[5 * v39], v105, v110, v115, v120, v124, v128, v132, v138, v143);
    sub_19292E1F0(v146, &unk_1EAE131B0);
    OUTLINED_FUNCTION_49_7();
    v85 = OUTLINED_FUNCTION_133_1(v77, v78, v79, v80, v81, v82, v83, v84, v106, v111, v116, v121, v125, v129, v133, v135, v139, v141, v144, v145);
    if (OUTLINED_FUNCTION_63_10(v85))
    {
      v86 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v87 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v87);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v86);
      v27 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v88 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_29_0(v88, v89, v90, v91, v92, v93, v94, v95, v96);
      *(v97 + 56) = MEMORY[0x1E69E6158];
      v98 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v98);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2();
      goto LABEL_25;
    }
  }

LABEL_26:

  return v2 & 1;
}

uint64_t sub_192CE003C()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 25);
  if (v1 == 2)
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v2, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v3 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v3, xmmword_192FBCD50);
    v5 = sub_19286C588(v4, v25);
    OUTLINED_FUNCTION_132_2(v5, v6);
    v2[2].n128_u64[0] = v3;
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_26_21();
    v7._countAndFlagsBits = 0xD00000000000005ELL;
    LogInterpolation.init(stringLiteral:)(v7);
    v8 = sub_192F96E5C();
    if (OUTLINED_FUNCTION_85_6(v8))
    {
      v9 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_27_1(v10);
      v26[0] = v2;
      v26[1] = sub_192BB97CC;
      v26[2] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_48_10();

      objc_autoreleasePoolPop(v9);
      v12 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v13 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_23_21(v13, v14, v15, v16, v17, v18, v19, v20, v21);
      *(v22 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1928FDB30();
      OUTLINED_FUNCTION_125_1(v23);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_134_1();

      objc_autoreleasePoolPop(v12);
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_192CE0290()
{
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel];
  if (v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 8] & 1) != 0 || (v5[24])
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    *(swift_allocObject() + 16) = xmmword_192FBCD90;
    *(&v207 + 1) = ObjectType;
    v206.n128_u64[0] = v1;
    v6 = v1;
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v7 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v7, xmmword_192FBCD50);
    v9 = sub_19286C588(v8, v210);
    v17 = OUTLINED_FUNCTION_37_14(v9, v10, v11, v12, v13, v14, v15, v16, v146, v156, v166, v176);
    OUTLINED_FUNCTION_110_4(v17, v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_82_6();
    v23._countAndFlagsBits = 0xD000000000000022;
    v23._object = (v24 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v23);
    v25 = sub_192F96E7C();
    if (OUTLINED_FUNCTION_63_10(v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v27);
      OUTLINED_FUNCTION_58_10();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v26);
      v29 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v30 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_23_21(v30, v31, v32, v33, v34, v35, v36, v37, v38);
      *(v39 + 56) = MEMORY[0x1E69E6158];
      ObjectType[8] = sub_1928FDB30();
      ObjectType[4] = v28;
      ObjectType[5] = v3;
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_134_1();
      v40 = 0;
LABEL_34:

      objc_autoreleasePoolPop(v29);
      goto LABEL_35;
    }

    v40 = 0;
  }

  else
  {
    v41 = *v5;
    v42 = *(v5 + 2);
    OUTLINED_FUNCTION_96_4(&v1[OBJC_IVAR___AMSPurchaseConfiguration_systemProvider]);
    v40 = (*(v2 + 80))(0x6F726E456F747541, 0xEE00746E656D6C6CLL, v0, v2, v41, v42);
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    v43 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_192FBCD90;
    *(&v207 + 1) = ObjectType;
    v206.n128_u64[0] = v1;
    v45 = v1;
    v46 = AMSLogKey();
    if (v46)
    {
      v47 = v46;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v48 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v48, xmmword_192FBCD50);
    sub_19286C588(v49, v210);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v50, v51, v52, v53);
    *(v44 + 32) = v48;
    __swift_destroy_boxed_opaque_existential_0(&v206);
    sub_19287AEE0();
    v209 = v54;
    v55._countAndFlagsBits = 0xD00000000000003DLL;
    v55._object = 0x80000001930240A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v211 = MEMORY[0x1E69E63B0];
    v62 = OUTLINED_FUNCTION_81_9(v56, v57, &unk_1EAE131B0, &unk_192FBD860, v58, v59, v60, v61, v146, v156, v166, v176, v186, v196, v206.n128_i64[0], v206.n128_i64[1], v207, *(&v207 + 1), v208, v209, SLOBYTE(v41));
    v65 = sub_1928F9340(v62, v63, v64);
    OUTLINED_FUNCTION_14_1(v65, v66, v67, v68, v69, v70, v71, v72, v147, v157, v167, v177, v187, v197, *&v206, v207);
    if ((OUTLINED_FUNCTION_83_7() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
    }

    OUTLINED_FUNCTION_24();
    if (v73)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_3_56(v74, v148, v158, v168, v178, v188, v198, v206, v207, v208);
    OUTLINED_FUNCTION_54_0();
    sub_19292E1F0(v75, v76);
    OUTLINED_FUNCTION_31_0();
    v77._countAndFlagsBits = 0xD000000000000019;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v77);
    v211 = MEMORY[0x1E69E6530];
    OUTLINED_FUNCTION_81_9(v78, v79, v80, v81, v82, v83, v84, v85, v149, v159, v169, v179, v189, v199, v206.n128_i64[0], v206.n128_i64[1], v207, *(&v207 + 1), v208, v209, v42);
    OUTLINED_FUNCTION_67_0();
    v89 = sub_1928F9340(v86, v87, v88);
    OUTLINED_FUNCTION_14_1(v89, v90, v91, v92, v93, v94, v95, v96, v150, v160, v170, v180, v190, v200, *&v206, v207);
    if ((OUTLINED_FUNCTION_83_7() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v209 = v144;
    }

    OUTLINED_FUNCTION_24();
    if (v73)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_3_56(v97, v151, v161, v171, v181, v191, v201, v206, v207, v208);
    OUTLINED_FUNCTION_54_0();
    sub_19292E1F0(v98, v99);
    v100._countAndFlagsBits = 0x73657220646E6120;
    v100._object = 0xED0000203A746C75;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v100);
    v211 = MEMORY[0x1E69E6370];
    OUTLINED_FUNCTION_81_9(v101, v102, v103, v104, v105, v106, v107, v108, v152, v162, v172, v182, v192, v202, v206.n128_i64[0], v206.n128_i64[1], v207, *(&v207 + 1), v208, v209, v40 & 1);
    OUTLINED_FUNCTION_67_0();
    v112 = sub_1928F9340(v109, v110, v111);
    OUTLINED_FUNCTION_14_1(v112, v113, v114, v115, v116, v117, v118, v119, v153, v163, v173, v183, v193, v203, *&v206, v207);
    if ((OUTLINED_FUNCTION_83_7() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v209 = v145;
    }

    OUTLINED_FUNCTION_24();
    if (v73)
    {
      OUTLINED_FUNCTION_142();
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_3_56(v120, v154, v164, v174, v184, v194, v204, v206, v207, v208);
    sub_19292E1F0(v210, &unk_1EAE131B0);
    OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_133_1(v121, v122, v123, v124, v125, v126, v127, v128, v155, v165, v175, v185, v195, v205, v206.n128_i64[0], v206.n128_i64[1], v207, *(&v207 + 1), v208, v209);
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v43, v129))
    {
      v130 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v131 = swift_allocObject();
      OUTLINED_FUNCTION_116(v131);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();

      objc_autoreleasePoolPop(v130);
      v29 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v132 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_23_21(v132, v133, v134, v135, v136, v137, v138, v139, v140);
      *(v141 + 56) = MEMORY[0x1E69E6158];
      v142 = sub_1928FDB30();
      OUTLINED_FUNCTION_124_1(v142);
      OUTLINED_FUNCTION_60();
      sub_192F9622C();
      goto LABEL_34;
    }
  }

LABEL_35:

  return v40 & 1;
}

uint64_t PurchaseConfiguration.shouldAttemptApplePayClassic(account:options:)()
{
  OUTLINED_FUNCTION_3();
  v1[89] = v0;
  v1[88] = v2;
  v1[87] = v3;
  v1[90] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE1094()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v7 + 49) = v6;
  *(v7 + 744) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CE11B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v13 = *(v12 + 720);
  v14 = *(v12 + 712);
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  *(v12 + 376) = v13;
  *(v12 + 352) = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v20 = *(v12 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v21 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v21, xmmword_192FBCD50);
  sub_19286C588(v12 + 352, v12 + 384);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v22, v23, v24, v25);
  *(v16 + 32) = v21;
  __swift_destroy_boxed_opaque_existential_0(v12 + 352);
  sub_19287AEE0();
  v58 = v26;
  OUTLINED_FUNCTION_31_0();
  v27._countAndFlagsBits = 0xD000000000000039;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  *(v12 + 440) = MEMORY[0x1E69E6370];
  *(v12 + 416) = v20;
  sub_1928F9340(v12 + 416, v12 + 448, &unk_1EAE131B0);
  OUTLINED_FUNCTION_56_4();
  sub_19286D180(v12 + 448, v12 + 56);
  *(v12 + 88) = 3;
  v28 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v28 = v56;
  }

  OUTLINED_FUNCTION_24();
  if (v29)
  {
    OUTLINED_FUNCTION_142();
    v28 = v57;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_40(v30);
  sub_19292E1F0(v12 + 416, &unk_1EAE131B0);
  OUTLINED_FUNCTION_100_7();
  *(v16 + 40) = v28;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v31))
  {
    v32 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v33 = swift_allocObject();
    v34 = OUTLINED_FUNCTION_116(v33);
    *(v12 + 640) = v16;
    *(v12 + 648) = sub_192BB97CC;
    *(v12 + 656) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v32);
    v35 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v36 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v36, v37, v38, v39, v40, v41, v42, v43, v44);
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v46 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v46);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v35);
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_145();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, v28, a12);
}

uint64_t PurchaseConfiguration.shouldAttemptAutoEnrollment(account:options:)()
{
  OUTLINED_FUNCTION_3();
  v1[49] = v2;
  v1[50] = v0;
  v1[48] = v3;
  v1[51] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE18E4()
{
  OUTLINED_FUNCTION_120();
  v1 = *(v0 + 400) + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider;
  v2 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v4 = OUTLINED_FUNCTION_71_6();
  v6 = v5(v4);
  if (v6 == 1)
  {
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = OUTLINED_FUNCTION_102();
    __swift_project_boxed_opaque_existential_0(v9, v10);
    OUTLINED_FUNCTION_28_20();
    v51 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 416) = v12;
    *v12 = v0;
    v12[1] = sub_192CE1D70;
    v13 = *(v0 + 384);
    v14 = *(v0 + 392);

    return v51(3, v13, v14, v7, v8);
  }

  else
  {
    v16 = v6;
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_192FBCD90;
    *(v0 + 80) = v17;
    *(v0 + 56) = v18;
    v21 = v18;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      sub_192F967CC();
      OUTLINED_FUNCTION_77_0();
    }

    else
    {
      OUTLINED_FUNCTION_73_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v24 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50_0(v24, xmmword_192FBCD50);
    sub_19286C588(v0 + 56, v0 + 88);
    OUTLINED_FUNCTION_101_4(v0 + 88, &v24[2]);
    *(v20 + 32) = v24;
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
    sub_19287AEE0();
    v52 = v25;
    OUTLINED_FUNCTION_31_0();
    v26._countAndFlagsBits = 0xD000000000000058;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    *(v0 + 144) = MEMORY[0x1E69E6530];
    *(v0 + 120) = v16;
    sub_1928F9340(v0 + 120, v0 + 152, &unk_1EAE131B0);
    OUTLINED_FUNCTION_84_4();
    sub_19286D180(v0 + 152, v0 + 16);
    *(v0 + 48) = 3;
    v27 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v27 = v47;
    }

    OUTLINED_FUNCTION_24();
    if (v28)
    {
      OUTLINED_FUNCTION_142();
      v27 = v48;
    }

    OUTLINED_FUNCTION_12();
    sub_19292E1F0(v0 + 120, &unk_1EAE131B0);
    OUTLINED_FUNCTION_100_7();
    *(v20 + 40) = v27;
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v19, v29))
    {
      v30 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v31 = swift_allocObject();
      v32 = OUTLINED_FUNCTION_116(v31);
      *(v0 + 312) = v20;
      *(v0 + 320) = sub_192BB97CC;
      *(v0 + 328) = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v30);
      v33 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v34 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_59(v34, v35, v36, v37, v38, v39, v40, v41, v49, v50, v42);
      *(v43 + 56) = MEMORY[0x1E69E6158];
      v44 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v44);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6();

      objc_autoreleasePoolPop(v33);
    }

    v45 = OUTLINED_FUNCTION_26_4();

    return v46(v45);
  }
}

uint64_t sub_192CE1D70()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 49) = v3 & 1;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CE1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (*(v12 + 49))
  {
    v13 = swift_task_alloc();
    *(v12 + 424) = v13;
    *v13 = v12;
    v13[1] = sub_192CE2170;
    OUTLINED_FUNCTION_145();

    return PurchaseConfiguration.isApplePayWalletRefreshed()();
  }

  else
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    v17 = *(v12 + 400);
    v16 = *(v12 + 408);
    v18 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_192FBCD90;
    *(v12 + 272) = v16;
    *(v12 + 248) = v17;
    v20 = v17;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v23 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50(v23, xmmword_192FBCD50);
    sub_19286C588(v12 + 248, v12 + 280);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v24, v25, v26, v27);
    *(v19 + 32) = v23;
    __swift_destroy_boxed_opaque_existential_0(v12 + 248);
    OUTLINED_FUNCTION_26_21();
    v28._countAndFlagsBits = 0xD00000000000005ALL;
    LogInterpolation.init(stringLiteral:)(v28);
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v29))
    {
      v30 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v31 = swift_allocObject();
      v32 = OUTLINED_FUNCTION_116(v31);
      *(v12 + 360) = v19;
      *(v12 + 368) = sub_192BB97CC;
      *(v12 + 376) = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v30);
      v33 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v34 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v34, v35, v36, v37, v38, v39, v40, v41, v42);
      *(v43 + 56) = MEMORY[0x1E69E6158];
      v44 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v44);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6();

      objc_autoreleasePoolPop(v33);
    }

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_145();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }
}

uint64_t sub_192CE2170()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t sub_192CE2258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v14 = v12[50];
  v13 = v12[51];
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  v12[26] = v13;
  v12[23] = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v20 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v20, xmmword_192FBCD50);
  sub_19286C588((v12 + 23), (v12 + 27));
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v21, v22, v23, v24);
  *(v16 + 32) = v20;
  __swift_destroy_boxed_opaque_existential_0((v12 + 23));
  OUTLINED_FUNCTION_26_21();
  v25._countAndFlagsBits = 0xD000000000000042;
  LogInterpolation.init(stringLiteral:)(v25);
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v26))
  {
    v27 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_116(v28);
    v12[42] = v16;
    v12[43] = sub_192BB97CC;
    v12[44] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v27);
    v30 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v31 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v31, v32, v33, v34, v35, v36, v37, v38, v39);
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v41);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v30);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_145();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t PurchaseConfiguration.shouldAttemptApplePayClassic(account:accessControl:)()
{
  OUTLINED_FUNCTION_3();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v1[38] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE2534()
{
  OUTLINED_FUNCTION_178();
  v1 = v0[37];
  if (!*&v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 40])
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
      v1 = v0[37];
    }

    v5 = v0[38];
    v6 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_192FBCD90;
    v0[5] = v5;
    v0[2] = v1;
    v8 = v1;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v24 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50(v24, xmmword_192FBCD50);
    sub_19286C588((v0 + 2), (v0 + 6));
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v25, v26, v27, v28);
    *(v7 + 32) = v24;
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    OUTLINED_FUNCTION_46_11();
    v30._countAndFlagsBits = v29 + 1;
    v30._object = (v31 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v30);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v6, v32))
    {
      goto LABEL_35;
    }

    v33 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v34 = swift_allocObject();
    v35 = OUTLINED_FUNCTION_116(v34);
    v0[26] = v7;
    v0[27] = sub_192BB97CC;
    v0[28] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    goto LABEL_34;
  }

  if (!*&v1[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 48])
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
      v1 = v0[37];
    }

    v11 = v0[38];
    v12 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_192FBCD90;
    v0[13] = v11;
    v0[10] = v1;
    v14 = v1;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v36 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50(v36, xmmword_192FBCD50);
    sub_19286C588((v0 + 10), (v0 + 14));
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v37, v38, v39, v40);
    *(v13 + 32) = v36;
    __swift_destroy_boxed_opaque_existential_0((v0 + 10));
    OUTLINED_FUNCTION_46_11();
    v42._countAndFlagsBits = v41 + 5;
    v42._object = (v43 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v42);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v12, v44))
    {
      goto LABEL_35;
    }

    v33 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v45 = swift_allocObject();
    v46 = OUTLINED_FUNCTION_116(v45);
    v0[29] = v13;
    v0[30] = sub_192BB97CC;
    v0[31] = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    goto LABEL_34;
  }

  sub_19293615C();
  v0[39] = v2;
  if (*(v2 + 16))
  {
    v3 = swift_task_alloc();
    v0[40] = v3;
    *v3 = v0;
    v3[1] = sub_192CE2BB0;

    return PurchaseConfiguration.shouldAttemptApplePayClassic(with:paymentNetworks:account:accessControl:)();
  }

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v18 = v0[37];
  v17 = v0[38];
  v19 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_192FBCD90;
  v0[21] = v17;
  v0[18] = v18;
  v21 = v18;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v47 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v47, xmmword_192FBCD50);
  sub_19286C588((v0 + 18), (v0 + 22));
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v48, v49, v50, v51);
  *(v20 + 32) = v47;
  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  OUTLINED_FUNCTION_72_6();
  v52._countAndFlagsBits = 0xD000000000000035;
  LogInterpolation.init(stringLiteral:)(v52);
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v19, v53))
  {
    v33 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v54 = swift_allocObject();
    v55 = OUTLINED_FUNCTION_116(v54);
    v0[32] = v20;
    v0[33] = sub_192BB97CC;
    v0[34] = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
LABEL_34:
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_112_4();

    objc_autoreleasePoolPop(v33);
    v56 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v57 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_23_21(v57, v58, v59, v60, v61, v62, v63, v64, v65);
    *(v66 + 56) = MEMORY[0x1E69E6158];
    v67 = sub_1928FDB30();
    OUTLINED_FUNCTION_124_1(v67);
    OUTLINED_FUNCTION_10_32();
    sub_192F9622C();

    objc_autoreleasePoolPop(v56);
  }

LABEL_35:

  v68 = OUTLINED_FUNCTION_26_4();

  return v69(v68);
}

uint64_t sub_192CE2BB0()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t PurchaseConfiguration.shouldAttemptAutoEnrollment(account:accessControl:)()
{
  OUTLINED_FUNCTION_3();
  v1[51] = v2;
  v1[52] = v0;
  v1[50] = v3;
  v1[53] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE33CC()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t sub_192CE353C(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  v7 = a1;
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_192CE3654;

  return PurchaseConfiguration.beginCardEnrollmentAttempt(account:)();
}

uint64_t sub_192CE3654()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v0;
  OUTLINED_FUNCTION_6();
  *v10 = v9;

  sub_192C56500(v5, v6);
  v11 = sub_192F95A8C();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) != 1)
  {
    v13 = *(v2 + 32);
    v12 = sub_192F9596C();
    OUTLINED_FUNCTION_28_2();
    (*(v14 + 8))(v13, v11);
  }

  v15 = *(v2 + 48);
  v16 = OUTLINED_FUNCTION_9_20();
  v17(v16, v12);
  _Block_release(v15);

  v18 = *(v9 + 8);

  return v18();
}

Swift::Void __swiftcall PurchaseConfiguration.clearAutoEnrollmentIdentifier()()
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_96_4(&v0[OBJC_IVAR___AMSPurchaseConfiguration_systemProvider]);
  (*(v1 + 56))(0, 0);
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_192FBCD90;
  v27[3] = ObjectType;
  v27[0] = v0;
  v4 = v0;
  if (AMSLogKey())
  {
    sub_192F967CC();
    OUTLINED_FUNCTION_99_5();
  }

  else
  {
    OUTLINED_FUNCTION_67_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v5 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19_23(v5, xmmword_192FBCD50);
  v7 = sub_19286C588(v6, v26);
  OUTLINED_FUNCTION_132_2(v7, v8);
  *(v3 + 32) = v5;
  __swift_destroy_boxed_opaque_existential_0(v27);
  OUTLINED_FUNCTION_26_21();
  v9._countAndFlagsBits = 0xD000000000000036;
  LogInterpolation.init(stringLiteral:)(v9);
  v10 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_85_6(v10))
  {
    v11 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v12 = swift_allocObject();
    v13 = OUTLINED_FUNCTION_27_1(v12);
    v27[0] = v3;
    v27[1] = sub_192BB97CC;
    v27[2] = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_48_10();

    objc_autoreleasePoolPop(v11);
    v14 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v15 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_23_21(v15, v16, v17, v18, v19, v20, v21, v22, v23);
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1928FDB30();
    OUTLINED_FUNCTION_125_1(v25);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_134_1();

    objc_autoreleasePoolPop(v14);
  }
}

uint64_t PurchaseConfiguration.finishCardEnrollmentAttempt(buyParams:purchaseResult:)()
{
  OUTLINED_FUNCTION_3();
  v1[121] = v0;
  v1[120] = v2;
  v1[119] = v3;
  v1[122] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE3B28()
{
  v216 = v0;
  if ((sub_192CE0290() & 1) == 0)
  {
    OUTLINED_FUNCTION_118_1();
    if (!v114)
    {
      OUTLINED_FUNCTION_1_32();
    }

    v1 = *(v0 + 976);
    v2 = *(v0 + 968);
    v3 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_192FBCD90;
    *(v0 + 608) = v1;
    *(v0 + 584) = v2;
    v5 = v2;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v10 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_127_2(v10, xmmword_192FBCD50);
    sub_19286C588(v0 + 584, v0 + 168);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v11, v12, v13, v14);
    *(v4 + 32) = v10;
    __swift_destroy_boxed_opaque_existential_0(v0 + 584);
    OUTLINED_FUNCTION_26_21();
    v15._countAndFlagsBits = 0xD00000000000003BLL;
    LogInterpolation.init(stringLiteral:)(v15);
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v3, v16))
    {
      goto LABEL_60;
    }

    v17 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v18 = swift_allocObject();
    v19 = OUTLINED_FUNCTION_116(v18);
    *(v0 + 816) = v4;
    *(v0 + 824) = sub_192BB97CC;
    *(v0 + 832) = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    goto LABEL_59;
  }

  if ([*(v0 + 952) parameterForKey_])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v214 = 0u;
    v215 = 0u;
  }

  v8 = v214;
  *(v0 + 248) = v215;
  *(v0 + 232) = v8;
  if (*(v0 + 256))
  {
    if (swift_dynamicCast())
    {

      v9 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    sub_19292E1F0(v0 + 232, &unk_1EAE131B0);
  }

  v9 = 0;
LABEL_19:
  if ([*(v0 + 952) parameterForKey_])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v214 = 0u;
    v215 = 0u;
  }

  v20 = v215;
  *(v0 + 264) = v214;
  *(v0 + 280) = v20;
  if (!*(v0 + 288))
  {
    sub_19292E1F0(v0 + 264, &unk_1EAE131B0);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    if (v9)
    {
      OUTLINED_FUNCTION_118_1();
      if (!v114)
      {
        OUTLINED_FUNCTION_1_32();
      }

      v28 = *(v0 + 976);
      v29 = *(v0 + 968);
      v30 = qword_1EAE11D38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_42();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_192FBCD90;
      *(v0 + 544) = v28;
      *(v0 + 520) = v29;
      v32 = v29;
      v33 = AMSLogKey();
      if (v33)
      {
        v34 = v33;
        sub_192F967CC();
        OUTLINED_FUNCTION_27_12();
      }

      else
      {
        OUTLINED_FUNCTION_48_13();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
      v65 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_127_2(v65, xmmword_192FBCD50);
      sub_19286C588(v0 + 520, v0 + 552);
      OUTLINED_FUNCTION_11_18();
      sub_19286CFC8(v66, v67, v68, v69);
      *(v31 + 32) = v65;
      __swift_destroy_boxed_opaque_existential_0(v0 + 520);
      v70._countAndFlagsBits = 0xD00000000000003DLL;
      v70._object = 0x80000001930237B0;
      LogInterpolation.init(stringLiteral:)(v70);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v30, v71))
      {
        goto LABEL_60;
      }

      v17 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v72 = swift_allocObject();
      v73 = OUTLINED_FUNCTION_116(v72);
      *(v0 + 744) = v31;
      *(v0 + 752) = sub_192BB97CC;
      *(v0 + 760) = v73;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      goto LABEL_59;
    }

    v35 = 0;
    goto LABEL_37;
  }

  if ((v9 & 1) == 0)
  {
    v35 = 1;
LABEL_37:
    OUTLINED_FUNCTION_118_1();
    if (!v114)
    {
      OUTLINED_FUNCTION_1_32();
    }

    v36 = *(v0 + 976);
    v37 = *(v0 + 968);
    v38 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_192FBCD90;
    *(v0 + 320) = v36;
    *(v0 + 296) = v37;
    v40 = v37;
    v41 = AMSLogKey();
    if (v41)
    {
      v42 = v41;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v43 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_127_2(v43, xmmword_192FBCD50);
    sub_19286C588(v0 + 296, v0 + 328);
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v44, v45, v46, v47);
    *(v39 + 32) = v43;
    __swift_destroy_boxed_opaque_existential_0(v0 + 296);
    sub_19287AEE0();
    *&v214 = v48;
    OUTLINED_FUNCTION_31_0();
    v49 = &v214;
    v50._countAndFlagsBits = 0xD00000000000003BLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
    v51 = MEMORY[0x1E69E6370];
    *(v0 + 384) = MEMORY[0x1E69E6370];
    *(v0 + 360) = 0;
    sub_1928F9340(v0 + 360, v0 + 392, &unk_1EAE131B0);
    OUTLINED_FUNCTION_56_4();
    sub_19286D180(v0 + 392, v0 + 56);
    *(v0 + 88) = 0;
    if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v49 = v201;
    }

    OUTLINED_FUNCTION_24();
    if (v52)
    {
      OUTLINED_FUNCTION_142();
      v49 = v202;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_7_40(v53);
    *&v214 = v49;
    OUTLINED_FUNCTION_54_0();
    sub_19292E1F0(v54, v55);
    v56 = &v214;
    v57._countAndFlagsBits = OUTLINED_FUNCTION_61();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    *(v0 + 448) = v51;
    *(v0 + 424) = v35;
    OUTLINED_FUNCTION_67_0();
    sub_1928F9340(v58, v59, v60);
    OUTLINED_FUNCTION_130_2();
    sub_19286D180(v0 + 456, v0 + 96);
    *(v0 + 128) = 0;
    if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v56 = v203;
      *&v214 = v203;
    }

    OUTLINED_FUNCTION_24();
    if (v52)
    {
      OUTLINED_FUNCTION_142();
      v56 = v204;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_11_2(v61, *(v0 + 96), *(v0 + 112));
    *&v214 = v56;
    sub_19292E1F0(v0 + 424, &unk_1EAE131B0);
    OUTLINED_FUNCTION_100_7();
    *(v39 + 40) = v214;
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v38, v62))
    {
      goto LABEL_60;
    }

    v17 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v63 = swift_allocObject();
    v64 = OUTLINED_FUNCTION_116(v63);
    *(v0 + 792) = v39;
    *(v0 + 800) = sub_192BB97CC;
    *(v0 + 808) = v64;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
LABEL_59:
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v17);
    v74 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v75 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_62_1(v75, v76, v77, v78, v79, v80, v81, v82, v205, v208, v211, v212, v83);
    *(v84 + 56) = MEMORY[0x1E69E6158];
    v85 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v85);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v74);
LABEL_60:

    goto LABEL_61;
  }

  OUTLINED_FUNCTION_118_1();
  if (!v114)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v21 = *(v0 + 976);
  v22 = *(v0 + 968);
  oslog = qword_1EAE11D38;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_50(v24, xmmword_192FBCD90);
  *(v0 + 640) = v21;
  *(v0 + 616) = v22;
  v25 = v22;
  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v88 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50_0(v88, xmmword_192FBCD50);
  sub_19286C588(v0 + 616, v0 + 648);
  OUTLINED_FUNCTION_116_2(v0 + 648, &v88[2]);
  v24[2].n128_u64[0] = v88;
  __swift_destroy_boxed_opaque_existential_0(v0 + 616);
  v89._countAndFlagsBits = 0xD000000000000037;
  v89._object = 0x80000001930237F0;
  LogInterpolation.init(stringLiteral:)(v89);
  v90 = sub_192F96E7C();
  if (os_log_type_enabled(oslog, v90))
  {
    v91 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v92 = swift_allocObject();
    *(v92 + 16) = v21;
    *(v0 + 864) = v24;
    *(v0 + 872) = sub_192BB97CC;
    *(v0 + 880) = v92;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v93 = sub_192F9674C();
    v95 = v94;

    objc_autoreleasePoolPop(v91);
    v96 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v97 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_59(v97, v98, v99, v100, v101, v102, v103, v104, v205, v208, v105);
    *(v106 + 56) = MEMORY[0x1E69E6158];
    v97[4].n128_u64[0] = sub_1928FDB30();
    v97[2].n128_u64[0] = v93;
    v97[2].n128_u64[1] = v95;
    OUTLINED_FUNCTION_60();
    sub_192F9622C();

    objc_autoreleasePoolPop(v96);
  }

  v107 = *(v0 + 960);

  if (!sub_192CE9234(v107))
  {
    *(v0 + 680) = 0u;
    *(v0 + 696) = 0u;
    goto LABEL_79;
  }

  v108 = (*(v0 + 968) + OBJC_IVAR___AMSPurchaseConfiguration_kAutoEnrollRetryKey);
  v109 = v108[1];
  *(v0 + 904) = *v108;
  *(v0 + 912) = v109;

  sub_192F9725C();
  sub_192BD2CFC();

  sub_192948374(v0 + 16);
  if (!*(v0 + 704))
  {
LABEL_79:
    sub_19292E1F0(v0 + 680, &unk_1EAE131B0);
    goto LABEL_80;
  }

  v110 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v111 = sub_192F9684C();
    v113 = v112;

    v114 = v111 == 1702195828 && v113 == 0xE400000000000000;
    if (v114)
    {

LABEL_91:
      v162 = *(v0 + 976);
      v163 = *(v0 + 968);
      OUTLINED_FUNCTION_42();
      v164 = swift_allocObject();
      OUTLINED_FUNCTION_29_0(v164, v165, v166, v167, v168, v169, v170, v171, v172);
      *(v0 + 512) = v162;
      *(v0 + 488) = v163;
      v173 = v163;
      v174 = AMSLogKey();
      if (v174)
      {
        v175 = v174;
        sub_192F967CC();
        OUTLINED_FUNCTION_77_0();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
      }

      v176 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_59(v176, v177, v178, v179, v180, v181, v182, v183, v205, v208, v184);
      sub_19286C588(v0 + 488, v0 + 200);
      OUTLINED_FUNCTION_101_4(v0 + 200, &v176[2]);
      v164[2].n128_u64[0] = v176;
      __swift_destroy_boxed_opaque_existential_0(v0 + 488);
      v185._countAndFlagsBits = 0xD000000000000043;
      v185._object = 0x8000000193023870;
      LogInterpolation.init(stringLiteral:)(v185);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (os_log_type_enabled(oslog, v186))
      {
        v187 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71();
        v188 = swift_allocObject();
        *(v188 + 16) = v162;
        *(v0 + 840) = v164;
        *(v0 + 848) = sub_192BB97CC;
        *(v0 + 856) = v188;

        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_61();
        sub_192F9674C();
        OUTLINED_FUNCTION_136_0();

        objc_autoreleasePoolPop(v187);
        v190 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v191 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_59(v191, v192, v193, v194, v195, v196, v197, v198, v207, v210, v199);
        *(v200 + 56) = v110;
        v191[4].n128_u64[0] = sub_1928FDB30();
        v191[2].n128_u64[0] = v0 + 840;
        v191[2].n128_u64[1] = v189;
        OUTLINED_FUNCTION_60();
        sub_192F9622C();

        objc_autoreleasePoolPop(v190);
      }

      PurchaseConfiguration.clearAutoEnrollmentIdentifier()();
LABEL_61:
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_102_6();

      __asm { BRAA            X1, X16 }
    }

    v115 = sub_192F9775C();

    if (v115)
    {
      goto LABEL_91;
    }
  }

LABEL_80:
  v116 = *(v0 + 976);
  v117 = *(v0 + 968);
  OUTLINED_FUNCTION_42();
  v118 = swift_allocObject();
  OUTLINED_FUNCTION_23_21(v118, v119, v120, v121, v122, v123, v124, v125, v126);
  *(v0 + 736) = v116;
  *(v0 + 712) = v117;
  v127 = v117;
  v128 = AMSLogKey();
  if (v128)
  {
    v129 = v128;
    sub_192F967CC();
    OUTLINED_FUNCTION_48_10();
  }

  else
  {
    OUTLINED_FUNCTION_121_2();
  }

  v130 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_59(v130, v131, v132, v133, v134, v135, v136, v137, v205, v208, v138);
  sub_19286C588(v0 + 712, v0 + 136);
  OUTLINED_FUNCTION_107_5();
  sub_19286CFC8(v139, v140, v141, v142);
  *(v23 + 32) = v130;
  __swift_destroy_boxed_opaque_existential_0(v0 + 712);
  v143._countAndFlagsBits = 0xD000000000000034;
  v143._object = 0x8000000193023830;
  LogInterpolation.init(stringLiteral:)(v143);
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(oslog, v144))
  {
    v145 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v146 = swift_allocObject();
    *(v146 + 16) = v116;
    *(v0 + 768) = v23;
    *(v0 + 776) = sub_192BB97CC;
    *(v0 + 784) = v146;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v145);
    v147 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v148 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_59(v148, v149, v150, v151, v152, v153, v154, v155, v206, v209, v156);
    *(v157 + 56) = MEMORY[0x1E69E6158];
    v158 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v158);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v147);
  }

  v159 = swift_task_alloc();
  *(v0 + 984) = v159;
  *v159 = v0;
  v159[1] = sub_192CE4B48;
  OUTLINED_FUNCTION_102_6();

  return PurchaseConfiguration.updateAutoEnrollmentIdentifier()();
}

uint64_t sub_192CE4B48()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t PurchaseConfiguration.updateAutoEnrollmentIdentifier()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 432) = v0;
  *(v1 + 440) = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CE4C90()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[54];
  v2 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v0[56] = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  OUTLINED_FUNCTION_21_22((v1 + v2));
  OUTLINED_FUNCTION_28_20();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_192CE4DA0;
  v5 = OUTLINED_FUNCTION_30_3();

  return v7(v5);
}

uint64_t sub_192CE4DA0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  v2[58] = v4;
  v2[59] = v5;
  v2[60] = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CE4EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_120();
  v16 = *(v14 + 464);
  v15 = *(v14 + 472);
  v17 = (*(v14 + 432) + *(v14 + 448));
  v18 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_0(v17, v18);
  v20 = *(v19 + 56);

  v20(v16, v15, v18, v19);

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v22 = *(v14 + 432);
  v21 = *(v14 + 440);
  v23 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_192FBCD90;
  *(v14 + 248) = v21;
  *(v14 + 224) = v22;
  v25 = v22;
  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v29 = *(v14 + 464);
  v28 = *(v14 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v30 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v30, xmmword_192FBCD50);
  sub_19286C588(v14 + 224, v14 + 256);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v31, v32, v33, v34);
  *(v24 + 32) = v30;
  __swift_destroy_boxed_opaque_existential_0(v14 + 224);
  sub_19287AEE0();
  OUTLINED_FUNCTION_27_20();
  v35._countAndFlagsBits = 0xD00000000000003ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
  v36 = MEMORY[0x1E69E6158];
  *(v14 + 312) = MEMORY[0x1E69E6158];
  *(v14 + 288) = v29;
  *(v14 + 296) = v28;
  sub_1928F9340(v14 + 288, v14 + 320, &unk_1EAE131B0);
  OUTLINED_FUNCTION_56_4();
  sub_19286D180(v14 + 320, v14 + 56);
  *(v14 + 88) = 2;
  if ((OUTLINED_FUNCTION_103() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v21 = v64;
  }

  OUTLINED_FUNCTION_24();
  if (v37)
  {
    OUTLINED_FUNCTION_142();
    v21 = v65;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_40(v38);
  sub_19292E1F0(v14 + 288, &unk_1EAE131B0);
  OUTLINED_FUNCTION_91_4();
  *(v24 + 40) = v21;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v23, v39))
  {
    v40 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v41 = swift_allocObject();
    v42 = OUTLINED_FUNCTION_116(v41);
    *(v14 + 400) = v24;
    *(v14 + 408) = sub_192BB97CC;
    *(v14 + 416) = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v40);
    v43 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v44 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v44, v45, v46, v47, v48, v49, v50, v51, v52);
    *(v53 + 56) = v36;
    v54 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v54);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v43);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_71_0();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, v21, a13, a14);
}

uint64_t sub_192CE5630(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_192CE5708;

  return PurchaseConfiguration.finishCardEnrollmentAttempt(buyParams:purchaseResult:)();
}

uint64_t sub_192CE5708()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v10 = sub_192F958CC();

    v11 = OUTLINED_FUNCTION_9_20();
    v12(v11, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_20();
    v14(v13, 0);
  }

  _Block_release(v4[5]);
  v15 = v9[1];

  return v15();
}

uint64_t PurchaseConfiguration.isExpressCheckoutEligible.getter()
{
  ObjectType = swift_getObjectType();
  if (sub_192CE5BFC())
  {
    v2 = sub_192CE6170();
  }

  else
  {
    v2 = 0;
  }

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v3 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD90;
  *(&v71 + 1) = ObjectType;
  v70.n128_u64[0] = v0;
  v5 = v0;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v8 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19_23(v8, xmmword_192FBCD50);
  sub_19286C588(v9, v74);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v10, v11, v12, v13);
  *(v4 + 32) = v8;
  __swift_destroy_boxed_opaque_existential_0(&v70);
  sub_19287AEE0();
  v73 = v14;
  OUTLINED_FUNCTION_31_0();
  v15._countAndFlagsBits = 0xD000000000000037;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v75 = MEMORY[0x1E69E6370];
  v22 = OUTLINED_FUNCTION_81_9(v16, v17, &unk_1EAE131B0, &unk_192FBD860, v18, v19, v20, v21, v52, v55, v58, v61, v64, v67, v70.n128_i64[0], v70.n128_i64[1], v71, *(&v71 + 1), v72, v73, v2 & 1);
  v25 = sub_1928F9340(v22, v23, v24);
  OUTLINED_FUNCTION_14_1(v25, v26, v27, v28, v29, v30, v31, v32, v53, v56, v59, v62, v65, v68, *&v70, v71);
  if ((OUTLINED_FUNCTION_88_6() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_24();
  if (v33)
  {
    OUTLINED_FUNCTION_142();
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_56(v34, v54, v57, v60, v63, v66, v69, v70, v71, v72);
  sub_19292E1F0(v74, &unk_1EAE131B0);
  OUTLINED_FUNCTION_100_7();
  *(v4 + 40) = v73;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v3, v35))
  {
    v36 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v37 = swift_allocObject();
    v38 = OUTLINED_FUNCTION_116(v37);
    v70.n128_u64[0] = v4;
    v70.n128_u64[1] = sub_192BB97CC;
    *&v71 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v36);
    v39 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v40 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v40, v41, v42, v43, v44, v45, v46, v47, v48);
    *(v49 + 56) = MEMORY[0x1E69E6158];
    v50 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v50);
    OUTLINED_FUNCTION_10_32();
    sub_192F9622C();

    objc_autoreleasePoolPop(v39);
  }

  return v2 & 1;
}

uint64_t sub_192CE5BFC()
{
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel);
  if ((*(v0 + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 8) & 1) == 0 && (v2[3] & 1) == 0)
  {
    v38 = *v2;
    v39 = v2[2];
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v40, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v41 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v41, xmmword_192FBCD50);
    v43 = sub_19286C588(v42, v199);
    v51 = OUTLINED_FUNCTION_37_14(v43, v44, v45, v46, v47, v48, v49, v50, v127, v135, v143, v151);
    OUTLINED_FUNCTION_110_4(v51, v52, v53, v54, v55, v56);
    sub_19287AEE0();
    v198 = v57;
    v58._countAndFlagsBits = 0xD00000000000003CLL;
    v58._object = 0x8000000193024010;
    v59 = &v198;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
    v200 = MEMORY[0x1E69E63B0];
    v66 = OUTLINED_FUNCTION_81_9(v60, v61, &unk_1EAE131B0, &unk_192FBD860, v62, v63, v64, v65, v128, v136, v144, v152, v159, v166, v173, v180, v183, v190, v193, v198, v38);
    v69 = sub_1928F9340(v66, v67, v68);
    OUTLINED_FUNCTION_14_1(v69, v70, v71, v72, v73, v74, v75, v76, v129, v137, v145, v153, v160, v167, v174, v184);
    if ((OUTLINED_FUNCTION_83_7() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v59 = v123;
    }

    OUTLINED_FUNCTION_7_9();
    if (v78)
    {
      OUTLINED_FUNCTION_43_1(v77);
      OUTLINED_FUNCTION_67();
      v59 = v124;
    }

    v59[2] = ObjectType;
    OUTLINED_FUNCTION_3_56(&v59[5 * v41], v130, v138, v146, v154, v161, v168, v175, v185, v194);
    sub_19292E1F0(v199, &unk_1EAE131B0);
    OUTLINED_FUNCTION_31_0();
    v79 = &v198;
    v80._countAndFlagsBits = 0xD000000000000019;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
    v200 = MEMORY[0x1E69E6530];
    v89 = OUTLINED_FUNCTION_81_9(v81, v82, v83, v84, v85, v86, v87, v88, v131, v139, v147, v155, v162, v169, v176, v181, v186, v191, v195, v198, v39);
    v91 = sub_1928F9340(v89, v90, &unk_1EAE131B0);
    OUTLINED_FUNCTION_14_1(v91, v92, v93, v94, v95, v96, v97, v98, v132, v140, v148, v156, v163, v170, v177, v187);
    if ((OUTLINED_FUNCTION_83_7() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v79 = v125;
      v198 = v125;
    }

    OUTLINED_FUNCTION_7_9();
    if (v78)
    {
      OUTLINED_FUNCTION_43_1(v99);
      OUTLINED_FUNCTION_67();
      v79 = v126;
    }

    v79[2] = &unk_1EAE131B0;
    OUTLINED_FUNCTION_3_56(&v79[5 * &unk_192FBD860], v133, v141, v149, v157, v164, v171, v178, v188, v196);
    sub_19292E1F0(v199, &unk_1EAE131B0);
    OUTLINED_FUNCTION_49_7();
    v108 = OUTLINED_FUNCTION_133_1(v100, v101, v102, v103, v104, v105, v106, v107, v134, v142, v150, v158, v165, v172, v179, v182, v189, v192, v197, v198);
    if (!OUTLINED_FUNCTION_63_10(v108))
    {
      v37 = 1;
      goto LABEL_31;
    }

    v109 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v110 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v110);
    OUTLINED_FUNCTION_58_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_62_9();

    objc_autoreleasePoolPop(v109);
    v25 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v111 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v111, v112, v113, v114, v115, v116, v117, v118, v119);
    *(v120 + 56) = MEMORY[0x1E69E6158];
    v121 = sub_1928FDB30();
    OUTLINED_FUNCTION_94_4(v121);
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_114_2();
    v37 = 1;
    goto LABEL_30;
  }

  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_61_11(v3, xmmword_192FBCD90);
  if (AMSLogKey())
  {
    sub_192F967CC();
    OUTLINED_FUNCTION_99_5();
  }

  else
  {
    OUTLINED_FUNCTION_67_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v4 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19_23(v4, xmmword_192FBCD50);
  v6 = sub_19286C588(v5, v199);
  v14 = OUTLINED_FUNCTION_37_14(v6, v7, v8, v9, v10, v11, v12, v13, v127, v135, v143, v151);
  OUTLINED_FUNCTION_110_4(v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_82_6();
  v20._countAndFlagsBits = 0xD000000000000048;
  v20._object = (v21 | 0x8000000000000000);
  LogInterpolation.init(stringLiteral:)(v20);
  v22 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_63_10(v22))
  {
    v23 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v24);
    OUTLINED_FUNCTION_58_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_3_5();
    sub_192F9674C();
    OUTLINED_FUNCTION_62_9();

    objc_autoreleasePoolPop(v23);
    v25 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v26 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v26, v27, v28, v29, v30, v31, v32, v33, v34);
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1928FDB30();
    OUTLINED_FUNCTION_94_4(v36);
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_114_2();
    v37 = 0;
LABEL_30:

    objc_autoreleasePoolPop(v25);
    goto LABEL_31;
  }

  v37 = 0;
LABEL_31:

  return v37;
}

uint64_t sub_192CE6170()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR___AMSPurchaseConfiguration_expressCheckoutBagModel);
  if (v2 == 2)
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v4, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v6 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v6, xmmword_192FBCD50);
    v8 = sub_19286C588(v7, v146);
    v16 = OUTLINED_FUNCTION_37_14(v8, v9, v10, v11, v12, v13, v14, v15, v102, v107, v112, v117);
    OUTLINED_FUNCTION_110_4(v16, v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_82_6();
    v22._countAndFlagsBits = 0xD000000000000044;
    v22._object = (v23 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v22);
    v24 = sub_192F96E5C();
    if (OUTLINED_FUNCTION_63_10(v24))
    {
      v25 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v26 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v26);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v25);
      v27 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v28 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_29_0(v28, v29, v30, v31, v32, v33, v34, v35, v36);
      *(v37 + 56) = MEMORY[0x1E69E6158];
      v38 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v38);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2();
      LOBYTE(v2) = 0;
LABEL_25:

      objc_autoreleasePoolPop(v27);
      goto LABEL_26;
    }

    LOBYTE(v2) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_128_1();
    if (!v3)
    {
      OUTLINED_FUNCTION_1_32();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_61_11(v5, xmmword_192FBCD90);
    if (AMSLogKey())
    {
      sub_192F967CC();
      OUTLINED_FUNCTION_99_5();
    }

    else
    {
      OUTLINED_FUNCTION_67_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v39 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_19_23(v39, xmmword_192FBCD50);
    v41 = sub_19286C588(v40, v146);
    v49 = OUTLINED_FUNCTION_37_14(v41, v42, v43, v44, v45, v46, v47, v48, v102, v107, v112, v117);
    OUTLINED_FUNCTION_110_4(v49, v50, v51, v52, v53, v54);
    sub_19287AEE0();
    v145 = v55;
    OUTLINED_FUNCTION_31_0();
    v56 = &v145;
    v57._countAndFlagsBits = 0xD000000000000038;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    v147 = MEMORY[0x1E69E6370];
    v64 = OUTLINED_FUNCTION_81_9(v58, v59, &unk_1EAE131B0, &unk_192FBD860, v60, v61, v62, v63, v103, v108, v113, v118, v122, v126, v130, v134, v136, v140, v142, v145, v2 & 1);
    v67 = sub_1928F9340(v64, v65, v66);
    OUTLINED_FUNCTION_14_1(v67, v68, v69, v70, v71, v72, v73, v74, v104, v109, v114, v119, v123, v127, v131, v137);
    if ((OUTLINED_FUNCTION_88_6() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v56 = v100;
    }

    OUTLINED_FUNCTION_7_9();
    if (v76)
    {
      OUTLINED_FUNCTION_43_1(v75);
      OUTLINED_FUNCTION_67();
      v56 = v101;
    }

    v56[2] = ObjectType;
    OUTLINED_FUNCTION_3_56(&v56[5 * v39], v105, v110, v115, v120, v124, v128, v132, v138, v143);
    sub_19292E1F0(v146, &unk_1EAE131B0);
    OUTLINED_FUNCTION_49_7();
    v85 = OUTLINED_FUNCTION_133_1(v77, v78, v79, v80, v81, v82, v83, v84, v106, v111, v116, v121, v125, v129, v133, v135, v139, v141, v144, v145);
    if (OUTLINED_FUNCTION_63_10(v85))
    {
      v86 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v87 = swift_allocObject();
      OUTLINED_FUNCTION_27_1(v87);
      OUTLINED_FUNCTION_58_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_3_5();
      sub_192F9674C();
      OUTLINED_FUNCTION_62_9();

      objc_autoreleasePoolPop(v86);
      v27 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v88 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_29_0(v88, v89, v90, v91, v92, v93, v94, v95, v96);
      *(v97 + 56) = MEMORY[0x1E69E6158];
      v98 = sub_1928FDB30();
      OUTLINED_FUNCTION_94_4(v98);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_114_2();
      goto LABEL_25;
    }
  }

LABEL_26:

  return v2 & 1;
}

uint64_t PurchaseConfiguration.isApplePayWalletRefreshed()()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 104) = v0;
  *(v1 + 112) = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CE6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = v12[13];
  if (*&v13[OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel + 40])
  {
    v14 = swift_task_alloc();
    v12[15] = v14;
    *v14 = v12;
    v14[1] = sub_192CE6980;
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_145();

    return PurchaseConfiguration.shouldAttemptAutoEnrollment(with:)();
  }

  else
  {
    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32();
      v13 = v12[13];
    }

    v17 = v12[14];
    v18 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    OUTLINED_FUNCTION_42();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_192FBCD90;
    v12[5] = v17;
    v12[2] = v13;
    v20 = v13;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_192F967CC();
      OUTLINED_FUNCTION_27_12();
    }

    else
    {
      OUTLINED_FUNCTION_48_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v23 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50(v23, xmmword_192FBCD50);
    sub_19286C588((v12 + 2), (v12 + 6));
    OUTLINED_FUNCTION_11_18();
    sub_19286CFC8(v24, v25, v26, v27);
    *(v19 + 32) = v23;
    __swift_destroy_boxed_opaque_existential_0((v12 + 2));
    OUTLINED_FUNCTION_26_21();
    v28._countAndFlagsBits = 0xD000000000000033;
    LogInterpolation.init(stringLiteral:)(v28);
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v29))
    {
      v30 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v31 = swift_allocObject();
      v32 = OUTLINED_FUNCTION_116(v31);
      v12[10] = v19;
      v12[11] = sub_192BB97CC;
      v12[12] = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v30);
      v33 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v34 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v34, v35, v36, v37, v38, v39, v40, v41, v42);
      *(v43 + 56) = MEMORY[0x1E69E6158];
      v44 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v44);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6();

      objc_autoreleasePoolPop(v33);
    }

    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_145();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }
}

uint64_t sub_192CE6980()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5(v2);
}

uint64_t PurchaseConfiguration.shouldAttemptAutoEnrollment(with:)()
{
  OUTLINED_FUNCTION_3();
  v1[87] = v0;
  v1[86] = v2;
  v1[85] = v3;
  v1[88] = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CE6AD4()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[87];
  v2 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v0[89] = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v3 = v1 + v2;
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  v6 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_0(v6, v7);
  v0[90] = (*(v5 + 8))(v4, v5);
  v0[91] = v8;
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = OUTLINED_FUNCTION_102();
  __swift_project_boxed_opaque_existential_0(v11, v12);
  v15 = (*(v10 + 24) + **(v10 + 24));
  v13 = swift_task_alloc();
  v0[92] = v13;
  *v13 = v0;
  v13[1] = sub_192CE6C40;

  return v15(v9, v10);
}

uint64_t sub_192CE6C40()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 744) = v5;
  *(v3 + 752) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_192CE6D5C()
{
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v1 = v0[44].n128_u64[0];
  v2 = v0[43].n128_u64[1];
  oslog = qword_1EAE11D38;
  v0[47].n128_u64[1] = qword_1EAE11D38;
  v0[48].n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_50_0(v3, xmmword_192FBCD90);
  v0[14].n128_u64[0] = v1;
  v0[12].n128_u64[1] = v2;
  v4 = v2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v7 = v0[47].n128_u64[0];
  v8 = v0[46].n128_u64[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v0[48].n128_u64[1] = v9;
  v75 = v9;
  v10 = OUTLINED_FUNCTION_90();
  *(v10 + 16) = xmmword_192FBCD50;
  sub_19286C588(&v0[12].n128_i64[1], &v0[14].n128_i64[1]);
  OUTLINED_FUNCTION_116_2(&v0[14].n128_i64[1], v10 + 32);
  v3[2].n128_u64[0] = v10;
  __swift_destroy_boxed_opaque_existential_0(&v0[12].n128_i64[1]);
  sub_19287AEE0();
  v77 = v11;
  v12._countAndFlagsBits = 0xD000000000000044;
  v12._object = 0x8000000193023A40;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  v0[18].n128_u64[0] = MEMORY[0x1E69E6158];
  v0[16].n128_u64[1] = v8;
  v0[17].n128_u64[0] = v7;
  sub_1928F9340(&v0[16].n128_i64[1], &v0[18].n128_i64[1], &unk_1EAE131B0);
  OUTLINED_FUNCTION_84_4();

  sub_19286D180(&v0[18].n128_i64[1], &v0[1]);
  v0[3].n128_u8[0] = 2;
  v13 = v77;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v13 = v68;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v14);
    OUTLINED_FUNCTION_67();
    v13 = v69;
  }

  v16 = v0[45].n128_u64[1];
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_15_29(v13 + v15 * v17);
  sub_19292E1F0(&v0[16].n128_i64[1], &unk_1EAE131B0);
  OUTLINED_FUNCTION_31_0();
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  if (v16)
  {
    v19 = v0[45].n128_u64[1];
    v20 = v0[45].n128_u64[0];
    v21 = MEMORY[0x1E69E6158];
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v0[21].n128_u64[1] = 0;
  }

  v0[20].n128_u64[1] = v20;
  v0[21].n128_u64[0] = v19;
  v0[22].n128_u64[0] = v21;
  sub_1928F9340(&v0[20].n128_i64[1], &v0[22].n128_i64[1], &unk_1EAE131B0);
  OUTLINED_FUNCTION_56_4();

  sub_19286D180(&v0[22].n128_i64[1], &v0[3].n128_i64[1]);
  v0[5].n128_u8[8] = 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v13 = v70;
  }

  v23 = *(v13 + 16);
  v22 = *(v13 + 24);
  if (v23 >= v22 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v22);
    OUTLINED_FUNCTION_67();
    v13 = v71;
  }

  v24 = v0[43].n128_u64[0];
  v25 = v0[42].n128_u64[1];
  *(v13 + 16) = v23 + 1;
  OUTLINED_FUNCTION_7_40(v13 + 40 * v23);
  sub_19292E1F0(&v0[20].n128_i64[1], &unk_1EAE131B0);
  v26._countAndFlagsBits = 0x72746E756F63202CLL;
  v26._object = 0xEE003A65646F4379;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  v0[26].n128_u64[0] = MEMORY[0x1E69E6158];
  v0[24].n128_u64[1] = v25;
  v0[25].n128_u64[0] = v24;
  sub_1928F9340(&v0[24].n128_i64[1], &v0[26].n128_i64[1], &unk_1EAE131B0);
  OUTLINED_FUNCTION_130_2();

  sub_19286D180(&v0[26].n128_i64[1], &v0[6]);
  v0[8].n128_u8[0] = 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v13 = v72;
  }

  v28 = *(v13 + 16);
  v27 = *(v13 + 24);
  if (v28 >= v27 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v27);
    OUTLINED_FUNCTION_67();
    v13 = v73;
  }

  *(v13 + 16) = v28 + 1;
  OUTLINED_FUNCTION_11_2((v13 + 40 * v28), v0[6], v0[7]);
  sub_19292E1F0(&v0[24].n128_i64[1], &unk_1EAE131B0);
  OUTLINED_FUNCTION_49_7();
  v3[2].n128_u64[1] = v13;
  v29 = sub_192F96E7C();
  if (os_log_type_enabled(oslog, v29))
  {
    v30 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v31 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v0[41].n128_u64[0] = v3;
    v0[41].n128_u64[1] = sub_192BB97CC;
    v0[42].n128_u64[0] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v33 = sub_192F9674C();
    v35 = v34;

    objc_autoreleasePoolPop(v30);
    v36 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v37 = OUTLINED_FUNCTION_90();
    *(v37 + 16) = xmmword_192FBCD50;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1928FDB30();
    *(v37 + 32) = v33;
    *(v37 + 40) = v35;
    OUTLINED_FUNCTION_60();
    sub_192F9622C();

    objc_autoreleasePoolPop(v36);
  }

  if (v16)
  {
    if (v0[45].n128_u64[0] == v0[46].n128_u64[1] && v0[45].n128_u64[1] == v0[47].n128_u64[0])
    {

      goto LABEL_37;
    }

    v39 = sub_192F9775C();

    if (v39)
    {
LABEL_37:
      v43 = v0[44].n128_u64[0];
      v44 = v0[43].n128_u64[1];
      OUTLINED_FUNCTION_42();
      v45 = swift_allocObject();
      OUTLINED_FUNCTION_59(v45, v46, v47, v48, v49, v50, v51, v52, v74, v75, v53);
      v0[34].n128_u64[0] = v43;
      v0[32].n128_u64[1] = v44;
      v54 = v44;
      v55 = AMSLogKey();
      if (v55)
      {
        v56 = v55;
        sub_192F967CC();
        OUTLINED_FUNCTION_77_0();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
      }

      v57 = OUTLINED_FUNCTION_90();
      *(v57 + 16) = xmmword_192FBCD50;
      sub_19286C588(&v0[32].n128_i64[1], &v0[34].n128_i64[1]);
      OUTLINED_FUNCTION_101_4(&v0[34].n128_i64[1], v57 + 32);
      v45[2].n128_u64[0] = v57;
      __swift_destroy_boxed_opaque_existential_0(&v0[32].n128_i64[1]);
      v58._countAndFlagsBits = 0xD000000000000047;
      v58._object = 0x8000000193023B10;
      LogInterpolation.init(stringLiteral:)(v58);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (os_log_type_enabled(oslog, v59))
      {
        v60 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v61 = byte_1ED6DE5D8;
        OUTLINED_FUNCTION_71();
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        v0[39].n128_u64[1] = v45;
        v0[40].n128_u64[0] = sub_192BB97CC;
        v0[40].n128_u64[1] = v62;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_61();
        sub_192F9674C();
        OUTLINED_FUNCTION_48_10();

        objc_autoreleasePoolPop(v60);
        v63 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v64 = OUTLINED_FUNCTION_90();
        *(v64 + 16) = xmmword_192FBCD50;
        *(v64 + 56) = MEMORY[0x1E69E6158];
        v65 = sub_1928FDB30();
        OUTLINED_FUNCTION_125_1(v65);
        OUTLINED_FUNCTION_60();
        sub_192F9622C();

        objc_autoreleasePoolPop(v63);
      }

      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_102_6();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_21_22((v0[43].n128_u64[1] + v0[44].n128_u64[1]));
  v40 = swift_task_alloc();
  v0[49].n128_u64[0] = v40;
  *v40 = v0;
  v40[1] = sub_192CE7668;
  OUTLINED_FUNCTION_102_6();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_192CE7668()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_133();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v9(v3 & 1);
  }
}

uint64_t sub_192CE778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  v13 = v12[88];
  v14 = v12[87];
  OUTLINED_FUNCTION_42();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_192FBCD90;
  v12[60] = v13;
  v12[57] = v14;
  v16 = v14;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    v19 = sub_192F967CC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v22, xmmword_192FBCD50);
  sub_19286C588((v12 + 57), (v12 + 61));
  sub_19286CFC8((v12 + 61), v19, v21, &v22[2]);
  *(v15 + 32) = v22;
  __swift_destroy_boxed_opaque_existential_0((v12 + 57));
  OUTLINED_FUNCTION_72_6();
  v23._countAndFlagsBits = 0xD000000000000050;
  LogInterpolation.init(stringLiteral:)(v23);
  v24 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_113_2(v24))
  {
    v25 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v26 = swift_allocObject();
    v27 = OUTLINED_FUNCTION_27_1(v26);
    v12[76] = v15;
    v12[77] = sub_192BB97CC;
    v12[78] = v27;

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_48_10();

    objc_autoreleasePoolPop(v25);
    v29 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v30 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v30, v31, v32, v33, v34, v35, v36, v37, v38);
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v30[4].n128_u64[0] = sub_1928FDB30();
    v30[2].n128_u64[0] = (v12 + 76);
    v30[2].n128_u64[1] = v28;
    OUTLINED_FUNCTION_60();
    sub_192F9622C();

    objc_autoreleasePoolPop(v29);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_145();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_192CE79E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_178();
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v13 = v12[88];
  v14 = v12[87];
  v15 = qword_1EAE11D38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  OUTLINED_FUNCTION_42();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_192FBCD90;
  v12[20] = v13;
  v12[17] = v14;
  v17 = v14;
  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v20 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v20, xmmword_192FBCD50);
  sub_19286C588((v12 + 17), (v12 + 21));
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v21, v22, v23, v24);
  *(v16 + 32) = v20;
  __swift_destroy_boxed_opaque_existential_0((v12 + 17));
  OUTLINED_FUNCTION_26_21();
  v25._countAndFlagsBits = 0xD000000000000058;
  LogInterpolation.init(stringLiteral:)(v25);
  sub_192F96E5C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v15, v26))
  {
    v27 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_116(v28);
    v12[73] = v16;
    v12[74] = sub_192BB97CC;
    v12[75] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v27);
    v30 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v31 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_78(v31, v32, v33, v34, v35, v36, v37, v38, v39);
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v41);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v30);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_145();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t PurchaseConfiguration.shouldAttemptApplePayClassic(with:paymentNetworks:account:accessControl:)()
{
  OUTLINED_FUNCTION_3();
  v1[155] = v0;
  v1[154] = v2;
  v1[153] = v3;
  v1[152] = v4;
  v1[151] = v5;
  v1[150] = v6;
  v1[156] = swift_getObjectType();
  v7 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CE7CD4()
{
  v160 = v0;
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32();
  }

  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = qword_1EAE11D38;
  *(v0 + 1256) = qword_1EAE11D38;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  *(v0 + 1264) = v4;
  v155 = v4;
  OUTLINED_FUNCTION_42();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_50(v5, xmmword_192FBCD90);
  *(v0 + 696) = v1;
  *(v0 + 672) = v2;
  v6 = v2;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v9 = *(v0 + 1208);
  v10 = *(v0 + 1200);
  *(v0 + 1272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v11 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_127_2(v11, xmmword_192FBCD50);
  sub_19286C588(v0 + 672, v0 + 928);
  OUTLINED_FUNCTION_116_2(v0 + 928, &v11[2]);
  v5[2].n128_u64[0] = v11;
  __swift_destroy_boxed_opaque_existential_0(v0 + 672);
  sub_19287AEE0();
  v159 = v12;
  v13._countAndFlagsBits = 0xD000000000000043;
  v13._object = 0x8000000193023B60;
  v14 = &v159;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 888) = MEMORY[0x1E69E6158];
  *(v0 + 864) = v10;
  *(v0 + 872) = v9;
  sub_1928F9340(v0 + 864, v0 + 608, &unk_1EAE131B0);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;

  sub_19286D180(v0 + 608, v0 + 136);
  *(v0 + 168) = 0;
  if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v14 = v141;
    v159 = v141;
  }

  v16 = v14[2];
  v15 = v14[3];
  v17 = v3;
  if (v16 >= v15 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v15);
    OUTLINED_FUNCTION_67();
    v14 = v142;
  }

  v18 = *(v0 + 1216);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_11_2((v14 + v16 * v19), *(v0 + 136), *(v0 + 152));
  v159 = v14;
  sub_19292E1F0(v0 + 864, &unk_1EAE131B0);
  OUTLINED_FUNCTION_31_0();
  v20 = &v159;
  v21._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  *(v0 + 440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE156B0);
  *(v0 + 416) = v18;
  sub_1928F9340(v0 + 416, v0 + 288, &unk_1EAE131B0);
  OUTLINED_FUNCTION_84_4();

  sub_19286D180(v0 + 288, v0 + 16);
  *(v0 + 48) = 0;
  if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v20 = v143;
    v159 = v143;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    OUTLINED_FUNCTION_43_1(v22);
    OUTLINED_FUNCTION_67();
    v20 = v144;
  }

  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_15_29(v20 + v23 * v24);
  v159 = v20;
  sub_19292E1F0(v0 + 416, &unk_1EAE131B0);
  OUTLINED_FUNCTION_49_7();
  v5[2].n128_u64[1] = v159;
  v25 = sub_192F96E7C();
  if (OUTLINED_FUNCTION_85_6(v25))
  {
    v26 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v0 + 1168) = v5;
    *(v0 + 1176) = sub_192BB97CC;
    *(v0 + 1184) = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v29 = sub_192F9674C();
    v31 = v30;

    objc_autoreleasePoolPop(v26);
    v23 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v32 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_62_1(v32, v33, v34, v35, v36, v37, v38, v39, v149, v151, v153, v155, v40);
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v32[4].n128_u64[0] = sub_1928FDB30();
    v32[2].n128_u64[0] = v29;
    v32[2].n128_u64[1] = v31;
    OUTLINED_FUNCTION_52();
    sub_192F9622C();

    objc_autoreleasePoolPop(v23);
  }

  OUTLINED_FUNCTION_111_4();
  v42 = OUTLINED_FUNCTION_129_2();
  v44 = v43(v42);
  if (v44 != 1)
  {
    v53 = v44;
    v54 = *(v0 + 1248);
    v55 = *(v0 + 1240);
    OUTLINED_FUNCTION_42();
    v56 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v56, v57, v58, v59, v60, v61, v62, v63, v64);
    *(v0 + 344) = v54;
    *(v0 + 320) = v55;
    v65 = v55;
    v66 = AMSLogKey();
    if (v66)
    {
      v67 = v66;
      sub_192F967CC();
      OUTLINED_FUNCTION_48_10();
    }

    else
    {
      OUTLINED_FUNCTION_121_2();
    }

    v87 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_62_1(v87, v88, v89, v90, v91, v92, v93, v94, v149, v151, v153, v155, v95);
    sub_19286C588(v0 + 320, v0 + 352);
    OUTLINED_FUNCTION_107_5();
    sub_19286CFC8(v96, v97, v98, v99);
    v56[2].n128_u64[0] = v87;
    __swift_destroy_boxed_opaque_existential_0(v0 + 320);
    sub_19287AEE0();
    v159 = v100;
    v101._countAndFlagsBits = 0xD000000000000047;
    v101._object = 0x8000000193023BD0;
    v102 = &v159;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v101);
    *(v0 + 408) = MEMORY[0x1E69E6530];
    *(v0 + 384) = v53;
    sub_1928F9340(v0 + 384, v0 + 448, &unk_1EAE131B0);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    sub_19286D180(v0 + 448, v0 + 216);
    *(v0 + 248) = 3;
    if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_0();
      v102 = v145;
    }

    OUTLINED_FUNCTION_24();
    if (v103)
    {
      OUTLINED_FUNCTION_142();
      v102 = v146;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_11_2(v104, *(v0 + 216), *(v0 + 232));
    v159 = v102;
    sub_19292E1F0(v0 + 384, &unk_1EAE131B0);
    OUTLINED_FUNCTION_49_7();
    v56[2].n128_u64[1] = v159;
    sub_192F96E7C();
    OUTLINED_FUNCTION_165();
    if (!os_log_type_enabled(v17, v105))
    {
      goto LABEL_49;
    }

    v106 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v107 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v0 + 1120) = v56;
    v109 = 1136;
    v110 = 1128;
    goto LABEL_48;
  }

  v45 = *(v0 + 1232);
  OUTLINED_FUNCTION_111_4();
  if ((*(v23 + 32))(4, v45, v5, v23))
  {
    v46 = *(v0 + 1240);
    v47 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
    *(v0 + 1280) = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
    v156 = (OUTLINED_FUNCTION_21_22((v46 + v47)) + 72);
    v158 = (*v156 + **v156);
    v48 = swift_task_alloc();
    *(v0 + 1288) = v48;
    *v48 = v0;
    v48[1] = sub_192CE87F0;
    v49 = *(v0 + 1216);
    v50 = *(v0 + 1208);
    v51 = *(v0 + 1200);

    return v158(v51, v50, v49, v3, &unk_1ED6DF000);
  }

  v68 = *(v0 + 1248);
  v69 = *(v0 + 1240);
  OUTLINED_FUNCTION_111_4();
  v70 = OUTLINED_FUNCTION_129_2();
  v72 = v71(v70);
  v74 = v73;
  OUTLINED_FUNCTION_42();
  v75 = swift_allocObject();
  OUTLINED_FUNCTION_29_0(v75, v76, v77, v78, v79, v80, v81, v82, v83);
  *(v0 + 536) = v68;
  *(v0 + 512) = v69;
  v84 = v69;
  v85 = AMSLogKey();
  if (v85)
  {
    v86 = v85;
    sub_192F967CC();
    OUTLINED_FUNCTION_136_0();
  }

  else
  {
    OUTLINED_FUNCTION_105_5();
  }

  v111 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_62_1(v111, v112, v113, v114, v115, v116, v117, v118, v149, v151, v153, v155, v119);
  sub_19286C588(v0 + 512, v0 + 544);
  OUTLINED_FUNCTION_116_2(v0 + 544, &v111[2]);
  v75[2].n128_u64[0] = v111;
  __swift_destroy_boxed_opaque_existential_0(v0 + 512);
  sub_19287AEE0();
  v159 = v120;
  v121._countAndFlagsBits = 0xD000000000000046;
  v121._object = 0x8000000193023C20;
  v122 = &v159;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v121);
  if (v74)
  {
    v123 = MEMORY[0x1E69E6158];
  }

  else
  {
    v72 = 0;
    v123 = 0;
    *(v0 + 592) = 0;
  }

  *(v0 + 576) = v72;
  *(v0 + 584) = v74;
  *(v0 + 600) = v123;
  sub_1928F9340(v0 + 576, v0 + 640, &unk_1EAE131B0);
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_19286D180(v0 + 640, v0 + 176);
  *(v0 + 208) = 3;
  if ((OUTLINED_FUNCTION_83_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v122 = v147;
  }

  OUTLINED_FUNCTION_24();
  if (v103)
  {
    OUTLINED_FUNCTION_142();
    v122 = v148;
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_11_2(v124, *(v0 + 176), *(v0 + 192));
  v159 = v122;
  sub_19292E1F0(v0 + 576, &unk_1EAE131B0);
  OUTLINED_FUNCTION_49_7();
  v75[2].n128_u64[1] = v159;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v17, v125))
  {
    v106 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v126 = byte_1ED6DE5D8;
    OUTLINED_FUNCTION_71();
    v108 = swift_allocObject();
    *(v108 + 16) = v126;
    *(v0 + 1024) = v75;
    v109 = 1040;
    v110 = 1032;
LABEL_48:
    *(v0 + v110) = sub_192BB97CC;
    *(v0 + v109) = v108;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_136_0();

    objc_autoreleasePoolPop(v106);
    v127 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v128 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_62_1(v128, v129, v130, v131, v132, v133, v134, v135, v150, v152, v154, v157, v136);
    *(v137 + 56) = MEMORY[0x1E69E6158];
    v138 = sub_1928FDB30();
    OUTLINED_FUNCTION_137(v138);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_89_6();

    objc_autoreleasePoolPop(v127);
  }

LABEL_49:

  v139 = OUTLINED_FUNCTION_26_4();

  return v140(v139);
}

uint64_t sub_192CE87F0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1296) = v0;

  if (!v0)
  {
    *(v5 + 49) = v3 & 1;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_192CE8904()
{
  OUTLINED_FUNCTION_120();
  if (*(v0 + 49) == 1)
  {
    v1 = *(v0 + 1248);
    v2 = *(v0 + 1240);
    OUTLINED_FUNCTION_42();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_192FBCD90;
    *(v0 + 824) = v1;
    *(v0 + 800) = v2;
    v4 = v2;
    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      v7 = sub_192F967CC();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_50(v11, xmmword_192FBCD50);
    sub_19286C588(v0 + 800, v0 + 480);
    sub_19286CFC8(v0 + 480, v7, v9, &v11[2]);
    *(v3 + 32) = v11;
    __swift_destroy_boxed_opaque_existential_0(v0 + 800);
    OUTLINED_FUNCTION_72_6();
    v12._countAndFlagsBits = 0xD000000000000032;
    LogInterpolation.init(stringLiteral:)(v12);
    v13 = sub_192F96E7C();
    if (OUTLINED_FUNCTION_113_2(v13))
    {
      v14 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_71();
      v15 = swift_allocObject();
      v16 = OUTLINED_FUNCTION_116(v15);
      *(v0 + 1144) = v3;
      *(v0 + 1152) = sub_192BB97CC;
      *(v0 + 1160) = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v14);
      v17 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v18 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78(v18, v19, v20, v21, v22, v23, v24, v25, v26);
      *(v27 + 56) = MEMORY[0x1E69E6158];
      v28 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v28);
      OUTLINED_FUNCTION_60();
      sub_192F9622C();

      objc_autoreleasePoolPop(v17);
    }

    v29 = *(v0 + 1280);
    v30 = *(v0 + 1240);
    v31 = *(v0 + 1232);

    OUTLINED_FUNCTION_96_4((v30 + v29));
    v10 = (*(v29 + 16))(v31, v3, v29);
  }

  else
  {
    v10 = 0;
  }

  v32 = *(v0 + 1248);
  v33 = *(v0 + 1240);
  OUTLINED_FUNCTION_42();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_192FBCD90;
  *(v0 + 984) = v32;
  *(v0 + 960) = v33;
  v35 = v33;
  v36 = AMSLogKey();
  if (v36)
  {
    v37 = v36;
    sub_192F967CC();
    OUTLINED_FUNCTION_27_12();
  }

  else
  {
    OUTLINED_FUNCTION_48_13();
  }

  v38 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v38, xmmword_192FBCD50);
  sub_19286C588(v0 + 960, v0 + 992);
  OUTLINED_FUNCTION_11_18();
  sub_19286CFC8(v39, v40, v41, v42);
  *(v34 + 32) = v38;
  __swift_destroy_boxed_opaque_existential_0(v0 + 960);
  sub_19287AEE0();
  v68 = v43;
  v44._countAndFlagsBits = 0xD000000000000042;
  v44._object = 0x8000000193023CB0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
  *(v0 + 280) = MEMORY[0x1E69E6370];
  *(v0 + 256) = v10 & 1;
  sub_1928F9340(v0 + 256, v0 + 832, &unk_1EAE131B0);
  OUTLINED_FUNCTION_56_4();
  sub_19286D180(v0 + 832, v0 + 56);
  *(v0 + 88) = 0;
  v45 = v68;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v45 = v66;
  }

  v46 = *(v45 + 16);
  if (v46 >= *(v45 + 24) >> 1)
  {
    OUTLINED_FUNCTION_142();
    v45 = v67;
  }

  v47 = *(v0 + 1256);
  *(v45 + 16) = v46 + 1;
  OUTLINED_FUNCTION_7_40(v45 + 40 * v46);
  sub_19292E1F0(v0 + 256, &unk_1EAE131B0);
  OUTLINED_FUNCTION_49_7();
  *(v34 + 40) = v45;
  sub_192F96E7C();
  OUTLINED_FUNCTION_165();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_71();
    v50 = swift_allocObject();
    v51 = OUTLINED_FUNCTION_38_0(v50);
    *(v0 + 1096) = v34;
    *(v0 + 1104) = sub_192BB97CC;
    *(v0 + 1112) = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_154();

    objc_autoreleasePoolPop(v49);
    v52 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v53 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v53, v54, v55, v56, v57, v58, v59, v60, v61);
    *(v62 + 56) = MEMORY[0x1E69E6158];
    v63 = sub_1928FDB30();
    OUTLINED_FUNCTION_159(v63);
    OUTLINED_FUNCTION_60();
    sub_192F9622C();

    objc_autoreleasePoolPop(v52);
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_192CE9234(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F9669C();

  return v3;
}

unint64_t sub_192CE92A0()
{
  result = qword_1EAE12350;
  if (!qword_1EAE12350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE12350);
  }

  return result;
}

uint64_t sub_192CE9320()
{
  OUTLINED_FUNCTION_65();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C40;
  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t sub_192CE93D4()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C40;
  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t sub_192CE947C()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C44;
  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_88_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

BOOL OUTLINED_FUNCTION_113_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_116_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_19286CFC8(a1, v2, v3, a2);
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_192F95A8C();
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 40) = a20;

  return sub_192F96E7C();
}

void sub_192CE95CC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15820);
    v2 = sub_192F974CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  OUTLINED_FUNCTION_0_29();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v23 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_192948314(*(v1 + 48) + 40 * v11, __src);
      sub_19286C588(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_192948314(__dst, v26);
      if (!swift_dynamicCast())
      {
        sub_1928FC07C(__dst, &qword_1EAE13300);

        goto LABEL_21;
      }

      sub_19286C588(&__dst[40], v26);
      sub_1928FC07C(__dst, &qword_1EAE13300);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v12 = sub_1929225DC(v24, v25);
      if (v13)
      {
        OUTLINED_FUNCTION_34_16();
        *v14 = v24;
        v14[1] = v25;

        v15 = (v2[7] + 16 * v12);
        *v15 = v24;
        v15[1] = v25;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_32_14();
        *(v2 + v16 + 64) |= v17;
        OUTLINED_FUNCTION_34_16();
        *v18 = v24;
        v18[1] = v25;
        v19 = (v2[7] + 16 * v12);
        *v19 = v24;
        v19[1] = v25;
        v20 = v2[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_24;
        }

        v2[2] = v22;
      }

      v9 = v10;
      v1 = v23;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

LABEL_21:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_192CE9878(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15810);
    v3 = sub_192F974CC();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_42_13();
  v5 = v4 >> 6;

  v7 = 0;
  while (1)
  {
    if (!v1)
    {
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v5)
        {

          return v3;
        }

        v1 = a1[v8 + 8];
        ++v7;
        if (v1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v1)) | (v8 << 6);
    sub_192948314(a1[6] + 40 * v9, __src);
    sub_19286C588(a1[7] + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_192948314(__dst, v23);
    if (!swift_dynamicCast())
    {
      break;
    }

    v1 &= v1 - 1;
    sub_19286C588(&__dst[40], v24);
    sub_1928FC07C(__dst, &qword_1EAE13300);
    v25 = v21;
    v26 = v22;
    sub_1928FA5CC(v24);
    v10 = v25;
    v11 = v26;
    sub_1928FA5CC(&v27);
    sub_1928FA5CC(v28);
    result = sub_1929225DC(v10, v11);
    v12 = result;
    if (v13)
    {
      OUTLINED_FUNCTION_34_16();
      *v14 = v10;
      v14[1] = v11;

      __swift_destroy_boxed_opaque_existential_0(v3[7] + 32 * v12);
      result = sub_1928FA5CC(&v25);
      v7 = v8;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_32_14();
      *(v3 + v15 + 64) |= v16;
      OUTLINED_FUNCTION_34_16();
      *v17 = v10;
      v17[1] = v11;
      result = sub_1928FA5CC(&v25);
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v3[2] = v20;
      v7 = v8;
    }
  }

  sub_1928FC07C(__dst, &qword_1EAE13300);

  return 0;
}

void sub_192CE9B04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15800);
    v2 = sub_192F974CC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_192948314(*(a1 + 48) + 40 * v9, __src);
    sub_19286C588(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_192948314(__dst, v22);
    if (!swift_dynamicCast())
    {
      sub_1928FC07C(__dst, &qword_1EAE13300);

LABEL_22:

      return;
    }

    sub_19286C588(&__dst[40], v22);
    sub_1928FC07C(__dst, &qword_1EAE13300);
    sub_192C3F6E4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v5 &= v5 - 1;
    v10 = sub_1929225DC(v20, v21);
    v11 = v10;
    if (v12)
    {
      v13 = (v2[6] + 16 * v10);
      *v13 = v20;
      v13[1] = v21;

      v14 = v2[7];
      v15 = *(v14 + 8 * v11);
      *(v14 + 8 * v11) = v20;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      v16 = (v2[6] + 16 * v10);
      *v16 = v20;
      v16[1] = v21;
      *(v2[7] + 8 * v10) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v2[2] = v19;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_22;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_192CE9DC8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id RemoteSignInTask.init(request:clientInfo:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_listener] = 0;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_connection] = 0;
  v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceAction] = 0;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise] = 0;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_request] = a1;
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_clientInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RemoteSignInTask();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_192CE9F28()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[13];
  v2 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v3 = OUTLINED_FUNCTION_27_2();
  *(v3 + 16) = xmmword_192FBCD90;
  v0[5] = type metadata accessor for RemoteSignInTask();
  v0[2] = v1;
  v4 = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    v7 = sub_192F967CC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v10 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v10, xmmword_192FBCD50);
  sub_19286C588((v0 + 2), (v0 + 6));
  sub_19286CFC8((v0 + 6), v7, v9, &v10[2]);
  *(v3 + 32) = v10;
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v11._countAndFlagsBits = 0x676E697472617453;
  v11._object = 0xED00006B73615420;
  LogInterpolation.init(stringLiteral:)(v11);
  v12 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v12))
  {
    v13 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = byte_1ED6DE5D8;
    v15 = OUTLINED_FUNCTION_19();
    *(v15 + 16) = v14;
    v0[10] = v3;
    v0[11] = sub_1928FA5C4;
    v0[12] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v16 = sub_192F9674C();
    v18 = v17;

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v20 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v20[4].n128_u64[0] = sub_1928FDB30();
    v20[2].n128_u64[0] = v16;
    v20[2].n128_u64[1] = v18;
    sub_192F9622C();

    objc_autoreleasePoolPop(v19);
  }

  v30 = [objc_opt_self() currentProcess];
  v31 = sub_19287A8E4(v30);
  if (!v32)
  {
    goto LABEL_16;
  }

  if (v31 == 0xD000000000000016 && v32 == 0x8000000193024170)
  {
  }

  else
  {
    v34 = sub_192F9775C();

    if ((v34 & 1) == 0)
    {
LABEL_16:
      v35 = swift_task_alloc();
      v0[15] = v35;
      *v35 = v0;
      v35[1] = sub_192CEA408;

      return sub_192CEA4F4();
    }
  }

  v37 = swift_task_alloc();
  v0[14] = v37;
  *v37 = v0;
  v37[1] = sub_192CEA31C;

  return sub_192CEB320();
}

uint64_t sub_192CEA31C()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_192CEA408()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_192CEA508()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[37];
  v2 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v3 = OUTLINED_FUNCTION_27_2();
  *(v3 + 16) = xmmword_192FBCD90;
  v0[21] = type metadata accessor for RemoteSignInTask();
  v0[18] = v1;
  v4 = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    v7 = sub_192F967CC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v10 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v10, xmmword_192FBCD50);
  sub_19286C588((v0 + 18), (v0 + 26));
  sub_19286CFC8((v0 + 26), v7, v9, &v10[2]);
  *(v3 + 32) = v10;
  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  v11._object = 0x8000000193024470;
  v11._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.init(stringLiteral:)(v11);
  v12 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v12))
  {
    v13 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = byte_1ED6DE5D8;
    v15 = OUTLINED_FUNCTION_19();
    *(v15 + 16) = v14;
    v0[18] = v3;
    v0[19] = sub_192BB97CC;
    v0[20] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v16 = sub_192F9674C();
    v18 = v17;

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v20 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v20[4].n128_u64[0] = sub_1928FDB30();
    v20[2].n128_u64[0] = v16;
    v20[2].n128_u64[1] = v18;
    OUTLINED_FUNCTION_22_1();

    objc_autoreleasePoolPop(v19);
  }

  v30 = [objc_allocWithZone(AMSDaemonConnection) init];
  v0[38] = v30;
  v31 = [v30 securityServiceProxyWithDelegate_];
  v0[39] = v31;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_192CEA8AC;
  v32 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE157E0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_192CEB0D4;
  v0[21] = &block_descriptor_75;
  v0[22] = v32;
  [v31 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CEA8AC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 320) = v4;
  if (v4)
  {
    v5 = sub_192CEAFC8;
  }

  else
  {
    v5 = sub_192CEA9B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CEA9B0()
{
  v1 = v0[39];
  v2 = v0[37];
  v0[41] = v0[26];

  v3 = *(v2 + OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_request);
  v4 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v5 = *(v3 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420);
  sub_192F9668C();

  v6 = v0[38];
  v7 = sub_192F9679C();
  OUTLINED_FUNCTION_4_3();
  AMSError(v8, v9, v10, v11);

  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43();

  return v12();
}

uint64_t sub_192CEAD70()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 360) = v4;
  if (v4)
  {
    v5 = sub_192CEB038;
  }

  else
  {
    v5 = sub_192CEAE74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CEAE74()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);

  sub_192CE9B04(v3);
  v5 = v4;

  v6 = *(v0 + 304);
  if (v5)
  {
    v7 = sub_192CEB100(v5);

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_40();

    return v8(v7);
  }

  else
  {
    v10 = sub_192F9679C();
    OUTLINED_FUNCTION_4_3();
    AMSError(v11, v12, v13, v14);

    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_43();

    return v15();
  }
}

uint64_t sub_192CEAFC8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CEB038()
{
  v1 = v0[44];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[38];
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_192CEB100(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v28 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
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

  v8 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = [v14 BOOLValue];
    v16 = *(v1 + 16);
    if (*(v1 + 24) <= v16)
    {
      sub_192CEE4AC(v16 + 1, 1);
      v1 = v28;
    }

    sub_192F9789C();
    sub_192F968BC();
    result = sub_192F978DC();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v17 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_20;
        }
      }

      goto LABEL_24;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    v5 &= v5 - 1;
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v1 + 48) + 16 * v21);
    *v26 = v13;
    v26[1] = v12;
    *(*(v1 + 56) + v21) = v15;
    ++*(v1 + 16);
  }

  while (v5);
LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_192CEB334()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[43];
  v2 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v3 = OUTLINED_FUNCTION_27_2();
  *(v3 + 16) = xmmword_192FBCD90;
  v0[33] = type metadata accessor for RemoteSignInTask();
  v0[30] = v1;
  v4 = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    v7 = sub_192F967CC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v10 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v10, xmmword_192FBCD50);
  sub_19286C588((v0 + 30), (v0 + 34));
  sub_19286CFC8((v0 + 34), v7, v9, &v10[2]);
  *(v3 + 32) = v10;
  __swift_destroy_boxed_opaque_existential_0((v0 + 30));
  v11._object = 0x80000001930242A0;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  LogInterpolation.init(stringLiteral:)(v11);
  v12 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v12))
  {
    v13 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = byte_1ED6DE5D8;
    v15 = OUTLINED_FUNCTION_19();
    *(v15 + 16) = v14;
    v0[38] = v3;
    v0[39] = sub_192BB97CC;
    v0[40] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v16 = sub_192F9674C();
    v18 = v17;

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v20 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v20, v21, v22, v23, v24, v25, v26, v27, v28);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v20[4].n128_u64[0] = sub_1928FDB30();
    v20[2].n128_u64[0] = v16;
    v20[2].n128_u64[1] = v18;
    OUTLINED_FUNCTION_22_1();

    objc_autoreleasePoolPop(v19);
  }

  v30 = v0[43];

  v31 = [objc_opt_self() anonymousListener];
  v0[44] = v31;
  [v31 setDelegate_];
  [v31 resume];
  v32 = *&v30[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_listener];
  *&v30[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_listener] = v31;
  v33 = v31;

  v34 = [objc_allocWithZone(AMSMutablePromise) initWithTimeout_];
  v0[45] = v34;
  v35 = OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise;
  v36 = *&v30[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise];
  *&v30[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise] = v34;
  v37 = v34;

  v38 = objc_opt_self();
  v39 = *&v30[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_clientInfo];
  v40 = sub_192F96DEC();
  v41 = [v33 endpoint];
  v42 = [v41 _endpoint];

  v43 = [v38 launchWithClientInfo:v39 action:v40 xpcEndpoint:v42];
  v0[46] = v43;
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_39_16();
  v44 = swift_allocObject();
  *(v44 + 16) = v30;
  v0[22] = sub_192CEE898;
  v0[23] = v44;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_192CE9DC8;
  v0[21] = &block_descriptor_27;
  v45 = _Block_copy(v0 + 18);
  v46 = v30;

  [v43 addErrorBlock_];
  _Block_release(v45);
  v47 = *&v30[v35];
  if (v47)
  {
    v48 = v0[43];
    OUTLINED_FUNCTION_39_16();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    v0[28] = sub_192CEE8A0;
    v0[29] = v49;
    v0[24] = MEMORY[0x1E69E9820];
    v0[25] = 1107296256;
    v0[26] = sub_19291B650;
    v0[27] = &block_descriptor_33_0;
    v50 = _Block_copy(v0 + 24);
    v51 = v48;
    v52 = v47;

    [v52 addFinishBlock_];
    _Block_release(v50);
  }

  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_192CEB934;
  v53 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15768);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_192CEB0D4;
  v0[13] = &block_descriptor_36_0;
  v0[14] = v53;
  [v37 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CEB934()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 376) = v4;
  if (v4)
  {
    v5 = sub_192CEBCCC;
  }

  else
  {
    v5 = sub_192CEBA38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CEBA38()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[43];
  v2 = v0[41];
  v0[48] = v2;
  v3 = swift_task_alloc();
  v0[49] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[50] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15770);
  *v4 = v0;
  v4[1] = sub_192CEBB44;

  return MEMORY[0x1EEE6DE38](v0 + 42, 0, 0, 0xD000000000000012, 0x8000000193024310, sub_192CEE8A8, v3, v5);
}

uint64_t sub_192CEBB44()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
    v7 = sub_192CEBD4C;
  }

  else
  {

    v7 = sub_192CEBC4C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192CEBC4C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_192CEBCCC()
{
  v1 = v0[46];
  v3 = v0[44];
  v2 = v0[45];
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192CEBD4C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_43();

  return v3();
}

void sub_192CEBDD0(uint64_t a1, void *a2)
{
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD40;
  v29 = type metadata accessor for RemoteSignInTask();
  v28[0] = a2;
  v5 = a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    v8 = sub_192F967CC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_192FBCD50;
  sub_19286C588(v28, v27);
  sub_19286CFC8(v27, v8, v10, v11 + 32);
  *(v4 + 32) = v11;
  __swift_destroy_boxed_opaque_existential_0(v28);
  v12._object = 0x8000000193024440;
  v12._countAndFlagsBits = 0xD000000000000028;
  LogInterpolation.init(stringLiteral:)(v12);
  swift_getErrorValue();
  v29 = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0);
  static LogInterpolation.traceableSensitive(_:)(v28, (v4 + 48));
  sub_1928FC07C(v28, &unk_1EAE131B0);
  v14 = sub_192F96E5C();
  if (os_log_type_enabled(v3, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v16 = byte_1ED6DE5D8;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v28[0] = v4;
    v28[1] = sub_192BB97CC;
    v28[2] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_192FBCD50;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1928FDB30();
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    sub_192F9622C();

    objc_autoreleasePoolPop(v21);
  }

  v23 = *&v5[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise];
  if (v23)
  {
    v24 = v23;
    v25 = sub_192F958CC();
    [v24 finishWithError_];
  }
}

void sub_192CEC170(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_1ED6DE070 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_192FBCD40;
    v50 = type metadata accessor for RemoteSignInTask();
    v47 = a3;
    v8 = a3;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      v11 = sub_192F967CC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v47, v46);
    sub_19286CFC8(v46, v11, v13, v22 + 32);
    *(v7 + 32) = v22;
    __swift_destroy_boxed_opaque_existential_0(&v47);
    v23._countAndFlagsBits = 0xD00000000000002CLL;
    v23._object = 0x8000000193024410;
    LogInterpolation.init(stringLiteral:)(v23);
    swift_getErrorValue();
    v50 = v45;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v47);
    (*(*(v45 - 8) + 16))(v24);
    static LogInterpolation.traceableSensitive(_:)(&v47, (v7 + 48));
    sub_1928FC07C(&v47, &unk_1EAE131B0);
    v25 = sub_192F96E5C();
    if (os_log_type_enabled(v6, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v27 = byte_1ED6DE5D8;
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      v47 = v7;
      v48 = sub_192BB97CC;
      v49 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v29 = sub_192F9674C();
      v31 = v30;

      objc_autoreleasePoolPop(v26);
      v32 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_192FBCD50;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1928FDB30();
      *(v33 + 32) = v29;
      *(v33 + 40) = v31;
      sub_192F9622C();

      objc_autoreleasePoolPop(v32);
    }
  }

  else
  {
    if (qword_1ED6DE070 != -1)
    {
      swift_once();
    }

    v14 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_192FBCD90;
    v50 = type metadata accessor for RemoteSignInTask();
    v47 = a3;
    v16 = a3;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      v19 = sub_192F967CC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v47, v46);
    sub_19286CFC8(v46, v19, v21, v34 + 32);
    *(v15 + 32) = v34;
    __swift_destroy_boxed_opaque_existential_0(&v47);
    v35._object = 0x80000001930243F0;
    v35._countAndFlagsBits = 0xD000000000000016;
    LogInterpolation.init(stringLiteral:)(v35);
    v36 = sub_192F96E7C();
    if (os_log_type_enabled(v14, v36))
    {
      v37 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v38 = byte_1ED6DE5D8;
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      v47 = v15;
      v48 = sub_192BB97CC;
      v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v40 = sub_192F9674C();
      v42 = v41;

      objc_autoreleasePoolPop(v37);
      v43 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_192FBCD50;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1928FDB30();
      *(v44 + 32) = v40;
      *(v44 + 40) = v42;
      sub_192F9622C();

      objc_autoreleasePoolPop(v43);
    }
  }
}

uint64_t *sub_192CEC77C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    swift_unknownObjectRetain();
    v10 = v8;
    v9 = a2;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

void sub_192CEC830(uint64_t a1, void *a2, void *a3)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778);
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v7);
  v9 = &v34 - v8;
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v38 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_192FBCD90;
  v42 = type metadata accessor for RemoteSignInTask();
  aBlock = a2;
  v11 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    v14 = sub_192F967CC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v17 = swift_allocObject();
  v36 = xmmword_192FBCD50;
  *(v17 + 16) = xmmword_192FBCD50;
  sub_19286C588(&aBlock, v45);
  sub_19286CFC8(v45, v14, v16, v17 + 32);
  *(v10 + 32) = v17;
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v18._object = 0x8000000193024330;
  v18._countAndFlagsBits = 0xD00000000000002ALL;
  LogInterpolation.init(stringLiteral:)(v18);
  v19 = sub_192F96E7C();
  if (os_log_type_enabled(v38, v19))
  {
    v34 = a1;
    v35 = a3;
    v20 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v21 = byte_1ED6DE5D8;
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    aBlock = v10;
    v40 = sub_192BB97CC;
    v41 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v23 = sub_192F9674C();
    v25 = v24;

    objc_autoreleasePoolPop(v20);
    v26 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v27 = swift_allocObject();
    *(v27 + 16) = v36;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1928FDB30();
    *(v27 + 32) = v23;
    *(v27 + 40) = v25;
    sub_192F9622C();

    objc_autoreleasePoolPop(v26);
    a1 = v34;
    a3 = v35;
  }

  v28 = *&v11[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_request];
  v29 = v37;
  (*(v6 + 16))(v9, a1, v37);
  v30 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v11;
  (*(v6 + 32))(v31 + v30, v9, v29);
  v43 = sub_192CEE8B0;
  v44 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_192CED3E4;
  v42 = &block_descriptor_48;
  v32 = _Block_copy(&aBlock);
  v33 = v11;

  [a3 performRemoteSignInTaskWithRequest:v28 completion:v32];
  _Block_release(v32);
}

uint64_t sub_192CECCB8(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = qword_1ED6DE070;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_192FBCD40;
    *(&v54 + 1) = type metadata accessor for RemoteSignInTask();
    *&v53 = a3;
    v8 = a3;
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      v11 = sub_192F967CC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v53, v52);
    sub_19286CFC8(v52, v11, v13, v23 + 32);
    *(v7 + 32) = v23;
    __swift_destroy_boxed_opaque_existential_0(&v53);
    v24._countAndFlagsBits = 0xD000000000000014;
    v24._object = 0x80000001930243D0;
    LogInterpolation.init(stringLiteral:)(v24);
    *(&v54 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15770);
    *&v53 = a1;

    static LogInterpolation.traceableSensitive(_:)(&v53, (v7 + 48));
    sub_1928FC07C(&v53, &unk_1EAE131B0);
    v25 = sub_192F96E7C();
    if (os_log_type_enabled(v6, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v27 = byte_1ED6DE5D8;
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *&v53 = v7;
      *(&v53 + 1) = sub_192BB97CC;
      *&v54 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v29 = sub_192F9674C();
      v31 = v30;

      objc_autoreleasePoolPop(v26);
      v32 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_192FBCD50;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1928FDB30();
      *(v33 + 32) = v29;
      *(v33 + 40) = v31;
      sub_192F9622C();

      objc_autoreleasePoolPop(v32);
    }

    *&v53 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778);
    return sub_192F96BAC();
  }

  else
  {
    if (qword_1ED6DE070 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED6DE078;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_192FBCD40;
    *(&v54 + 1) = type metadata accessor for RemoteSignInTask();
    *&v53 = a3;
    v17 = a3;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      v20 = sub_192F967CC();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_192FBCD50;
    sub_19286C588(&v53, v52);
    sub_19286CFC8(v52, v20, v22, v35 + 32);
    *(v16 + 32) = v35;
    __swift_destroy_boxed_opaque_existential_0(&v53);
    v36._countAndFlagsBits = 0xD000000000000013;
    v36._object = 0x8000000193024360;
    LogInterpolation.init(stringLiteral:)(v36);
    if (a2)
    {
      swift_getErrorValue();
      *(&v54 + 1) = v51;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
      (*(*(v51 - 8) + 16))(boxed_opaque_existential_0);
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    static LogInterpolation.traceableSensitive(_:)(&v53, (v16 + 48));
    sub_1928FC07C(&v53, &unk_1EAE131B0);
    v38 = sub_192F96E7C();
    if (os_log_type_enabled(v15, v38))
    {
      v39 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        swift_once();
      }

      v40 = byte_1ED6DE5D8;
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *&v53 = v16;
      *(&v53 + 1) = sub_192BB97CC;
      *&v54 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v42 = sub_192F9674C();
      v44 = v43;

      objc_autoreleasePoolPop(v39);
      v45 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_192FBCD50;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = sub_1928FDB30();
      *(v46 + 32) = v42;
      *(v46 + 40) = v44;
      sub_192F9622C();

      objc_autoreleasePoolPop(v45);
    }

    if (a2)
    {
      v47 = a2;
    }

    else
    {
      v48 = sub_192F9679C();
      v49 = sub_192F9679C();
      v47 = AMSError(0, v48, v49, 0);
    }

    *&v53 = v47;
    v50 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778);
    return sub_192F96B9C();
  }
}

uint64_t sub_192CED3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_192F9669C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id RemoteSignInTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteSignInTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteSignInTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall RemoteSignInTask.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v4 = objc_opt_self();
  v5 = [v4 interfaceWithProtocol_];
  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:v5];

  if (v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceAction])
  {
    v6 = &protocolRef__TtP18AppleMediaServices41VerifyDevicePasscodeActionRemoteInterface_;
  }

  else
  {
    v6 = &protocolRef__TtP18AppleMediaServices27SignInActionRemoteInterface_;
  }

  v7 = [v4 interfaceWithProtocol_];
  [(objc_class *)shouldAcceptNewConnection.super.isa setRemoteObjectInterface:v7];

  [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:v2];
  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  v8 = *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_connection];
  *&v2[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_connection] = shouldAcceptNewConnection;
  v9 = shouldAcceptNewConnection.super.isa;

  OUTLINED_FUNCTION_39_16();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  aBlock[4] = sub_192CEE748;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_192CE9DC8;
  aBlock[3] = &block_descriptor_32;
  v11 = _Block_copy(aBlock);
  v12 = v2;

  v13 = [(objc_class *)v9 remoteObjectProxyWithErrorHandler:v11];
  _Block_release(v11);
  sub_192F9715C();
  swift_unknownObjectRelease();
  sub_1928F9460(aBlock, v19, &unk_1EAE131B0);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE156F8);
    if (swift_dynamicCast())
    {
      v14 = *&v12[OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise];
      if (v14)
      {
        v15 = v14;
        [v15 finishWithResult_];
      }

      swift_unknownObjectRelease();
    }

    v16 = aBlock;
  }

  else
  {
    sub_1928FC07C(aBlock, &unk_1EAE131B0);
    v16 = v19;
  }

  sub_1928FC07C(v16, &unk_1EAE131B0);
  return 1;
}

void sub_192CED874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18AppleMediaServices16RemoteSignInTask_viewServiceConnectPromise);
  if (v2)
  {
    v3 = v2;
    v4 = sub_192F958CC();
    [v3 finishWithError_];
  }
}

Swift::Void __swiftcall RemoteSignInTask.initializeClientToViewServiceConnection()()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v2 = OUTLINED_FUNCTION_27_2();
  *(v2 + 16) = xmmword_192FBCD90;
  v30[3] = type metadata accessor for RemoteSignInTask();
  v30[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    v6 = sub_192F967CC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v9 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_50(v9, xmmword_192FBCD50);
  sub_19286C588(v30, v29);
  sub_19286CFC8(v29, v6, v8, &v9[2]);
  *(v2 + 32) = v9;
  __swift_destroy_boxed_opaque_existential_0(v30);
  v10._object = 0x80000001930241C0;
  v10._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.init(stringLiteral:)(v10);
  v11 = sub_192F96E7C();
  if (os_log_type_enabled(v1, v11))
  {
    v12 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = byte_1ED6DE5D8;
    v14 = OUTLINED_FUNCTION_19();
    *(v14 + 16) = v13;
    v30[0] = v2;
    v30[1] = sub_192BB97CC;
    v30[2] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    v15 = sub_192F9674C();
    v17 = v16;

    objc_autoreleasePoolPop(v12);
    v18 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v19 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_29_0(v19, v20, v21, v22, v23, v24, v25, v26, v27);
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v19[4].n128_u64[0] = sub_1928FDB30();
    v19[2].n128_u64[0] = v15;
    v19[2].n128_u64[1] = v17;
    sub_192F9622C();

    objc_autoreleasePoolPop(v18);
  }
}

void sub_192CEDC20(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D80);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v45 = &v39 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D78);
  v43 = a2;
  v9 = sub_192F974BC();
  if (!v8[2])
  {
LABEL_30:

LABEL_31:
    *v3 = v9;
    return;
  }

  v40 = v2;
  v41 = v8;
  v10 = 0;
  v11 = v8 + 8;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_42_13();
  v13 = v12 >> 6;
  v14 = v9 + 8;
  if (!v2)
  {
LABEL_4:
    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v13)
      {
        break;
      }

      ++v16;
      if (v11[v10])
      {
        OUTLINED_FUNCTION_10_33();
        v3 = (v18 & v17);
        goto LABEL_9;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_9_36();
    v3 = v40;
    if (v35 != v36)
    {
      *v11 = -1 << v34;
    }

    else
    {
      v37 = OUTLINED_FUNCTION_11_37();
      sub_192942B74(v37, v38, v11);
    }

    v8[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_15_30();
LABEL_9:
    v19 = v15 | (v10 << 6);
    v20 = v8[7];
    v21 = (v8[6] + 24 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    v25 = v20 + *(v42 + 72) * v19;
    v44 = *(v42 + 72);
    if (v43)
    {
      sub_19293D384(v25, v45);
    }

    else
    {
      sub_1928F9460(v25, v45, &qword_1EAE12D80);
    }

    sub_192F9789C();
    sub_192F968BC();
    MEMORY[0x193B11CB0](v24);
    sub_192F978DC();
    OUTLINED_FUNCTION_30_16();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_22:
    OUTLINED_FUNCTION_5_41();
    *(v14 + v30) |= v31;
    v33 = (v9[6] + 24 * v32);
    *v33 = v22;
    v33[1] = v23;
    v33[2] = v24;
    sub_19293D384(v45, v9[7] + v44 * v32);
    ++v9[2];
    v8 = v41;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_192CEDF18()
{
  OUTLINED_FUNCTION_21_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13108);
  v24 = v2;
  v5 = sub_192F974BC();
  if (!*(v1 + 16))
  {
LABEL_29:

    *v0 = v5;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_36_14();
  if (!v3)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v1 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_10_33();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v24)
    {
      OUTLINED_FUNCTION_9_36();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_14_27(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_11_37();
        sub_192942B74(v22, v23, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_35_13();
LABEL_9:
    OUTLINED_FUNCTION_33_15();
    v25 = *(v11 + 16 * v10);
    if ((v24 & 1) == 0)
    {
    }

    sub_192F9789C();
    sub_192F968BC();
    sub_192F978DC();
    OUTLINED_FUNCTION_4_56();
    OUTLINED_FUNCTION_30_16();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_21:
    OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_18_26(v16);
    *(v18 + 16 * v17) = v25;
    OUTLINED_FUNCTION_13_27();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    if (v13 == v15)
    {
      v13 = 0;
    }

    if (*(v4 + 8 * v13) != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_192CEE0E4()
{
  OUTLINED_FUNCTION_22_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE15820);
  v30 = v1;
  v3 = sub_192F974BC();
  if (!*(v2 + 16))
  {
LABEL_29:

LABEL_30:
    *v0 = v3;
    return;
  }

  v28 = v0;
  v29 = v2;
  v4 = 0;
  v5 = v2 + 64;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_42_13();
  v7 = v6 >> 6;
  if (!v1)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v7)
      {
        break;
      }

      ++v8;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_10_33();
        v1 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v30 & 1) == 0)
    {

      v0 = v28;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_36();
    v0 = v28;
    if (v24 != v25)
    {
      OUTLINED_FUNCTION_14_27(v23);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_11_37();
      sub_192942B74(v26, v27, v5);
    }

    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_15_30();
LABEL_9:
    OUTLINED_FUNCTION_41_12();
    v13 = (v12 + 16 * v11);
    v14 = v13[1];
    v31 = *v13;
    if ((v30 & 1) == 0)
    {
    }

    sub_192F9789C();
    sub_192F968BC();
    sub_192F978DC();
    OUTLINED_FUNCTION_4_56();
    OUTLINED_FUNCTION_30_16();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_21:
    OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_20_26(v19);
    v22 = (v21 + 16 * v20);
    *v22 = v31;
    v22[1] = v14;
    OUTLINED_FUNCTION_13_27();
    v2 = v29;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v3 + 64 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_192CEE2CC()
{
  OUTLINED_FUNCTION_21_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15810);
  v23 = v2;
  v5 = sub_192F974BC();
  if (!*(v1 + 16))
  {
LABEL_30:

    *v0 = v5;
    return;
  }

  v6 = 0;
  OUTLINED_FUNCTION_0_49();
  OUTLINED_FUNCTION_36_14();
  if (!v3)
  {
LABEL_4:
    v7 = v6;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v1 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_10_33();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_9_36();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_14_27(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_11_37();
        sub_192942B74(v21, v22, v1 + 64);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_35_13();
LABEL_9:
    OUTLINED_FUNCTION_33_15();
    v12 = v11 + 32 * v10;
    if (v23)
    {
      sub_1928FA5CC(v12);
    }

    else
    {
      sub_19286C588(v12, v24);
    }

    sub_192F9789C();
    sub_192F968BC();
    sub_192F978DC();
    OUTLINED_FUNCTION_4_56();
    OUTLINED_FUNCTION_30_16();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_8_42();
LABEL_22:
    OUTLINED_FUNCTION_5_41();
    OUTLINED_FUNCTION_18_26(v17);
    sub_1928FA5CC(v24);
    OUTLINED_FUNCTION_13_27();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_41();
  while (1)
  {
    OUTLINED_FUNCTION_29_18();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    if (v14 == v16)
    {
      v14 = 0;
    }

    if (*(v4 + 8 * v14) != -1)
    {
      OUTLINED_FUNCTION_6_44();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_192CEE4AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE157F8);
  v34 = a2;
  result = sub_192F974BC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_192942B74(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_192F9789C();
    sub_192F968BC();
    result = sub_192F978DC();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of RemoteSignInTask.perform()()
{
  OUTLINED_FUNCTION_5();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_192C781E8;

  return v5();
}

uint64_t sub_192CEE8B0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15778);
  v5 = *(v2 + 16);

  return sub_192CECCB8(a1, a2, v5);
}

uint64_t sub_192CEE968()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

id SendableBag.__allocating_init(wrappedBag:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_192908290(a1, v1);
}

uint64_t SendableBag.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR___AMSSendableBag_wrappedBag) expirationDate];
  if (v3)
  {
    v4 = v3;
    sub_192F95CAC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_192F95CFC();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id sub_192CEEC40(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_192F9679C();

  return v5;
}

uint64_t sub_192CEECBC(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___AMSSendableBag_wrappedBag) *a1];
  v3 = sub_192F967CC();

  return v3;
}

uint64_t sub_192CEED30()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[19] + OBJC_IVAR___AMSSendableBag_wrappedBag);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192CEEE54;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14668);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19293A7A4;
  v0[13] = &block_descriptor_34;
  v0[14] = v2;
  [v1 createSnapshotWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CEEE54()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 160) = v2;
  if (v2)
  {
    v3 = sub_192C5B610;
  }

  else
  {
    v3 = sub_192BAB9A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192CEEFD8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_192CEF080;

  return SendableBag.createSnapshot()();
}

uint64_t sub_192CEF080(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_6();
  *v8 = v7;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_192F958CC();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v7 + 8);

  return v11();
}

id SendableBag.integer(forKey:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___AMSSendableBag_wrappedBag) integerForKey_];

  return v2;
}

id SendableBag.processInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMSSendableBag_wrappedBag);
  v2 = &selRef_processInfo;
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    v1 = objc_opt_self();
    v2 = &selRef_currentProcess;
  }

  v3 = [v1 *v2];

  return v3;
}

uint64_t sub_192CEF380()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v0();
}

id SendableBag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendableBag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_192CEF488()
{
  result = qword_1EAE15910;
  if (!qword_1EAE15910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendableBag.SendableBagError(_BYTE *result, int a2, int a3)
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

unint64_t sub_192CEF5B8()
{
  result = qword_1EAE15920;
  if (!qword_1EAE15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15920);
  }

  return result;
}

uint64_t sub_192CEF60C()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_192919C44;

  return sub_192CEEFD8(v2, v3);
}

Swift::String __swiftcall SignInRequest.ServiceType.stringValue()()
{
  if (*v0)
  {
    v1 = 0x64756F6C4369;
  }

  else
  {
    v1 = 0x65726F7453;
  }

  if (*v0)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

AppleMediaServices::SignInRequest::ServiceType_optional __swiftcall SignInRequest.ServiceType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_192CEF714@<X0>(uint64_t *a1@<X8>)
{
  result = SignInRequest.ServiceType.rawValue.getter();
  *a1 = result;
  return result;
}

id sub_192CEF768()
{
  v1 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  OUTLINED_FUNCTION_0_50();
  v2 = *(v0 + v1);

  return v2;
}

void sub_192CEF7AC(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  OUTLINED_FUNCTION_2_52();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_192CEF844(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_192CEF8B0(v1);
}

void *sub_192CEF874()
{
  v1 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  OUTLINED_FUNCTION_0_50();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_192CEF8B0(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  OUTLINED_FUNCTION_2_52();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_192CEF9AC(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes;
  OUTLINED_FUNCTION_2_52();
  *(v1 + v3) = a1;
}

id SignInRequest.init(authenticationResults:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AMSRemoteSignInRequest_signInContext] = 0;
  *&v1[OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SignInRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_192CEFB0C()
{
  v1 = OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = sub_192F9679C();
  v4 = OUTLINED_FUNCTION_3_57();
  [v4 v5];

  v6 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = sub_192F9679C();
  v9 = OUTLINED_FUNCTION_3_57();
  [v9 v10];

  v11 = OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes;
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(*(v0 + v11) + 16);
  if (v12)
  {

    v13 = 32;
    do
    {
      sub_192F96DEC();
      MEMORY[0x193B10ED0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192F96B2C();
      }

      sub_192F96B4C();
      ++v13;
      --v12;
    }

    while (v12);
  }

  sub_192874CD0(0, &qword_1ED6DDBB0);
  v14 = sub_192F96AFC();

  v15 = sub_192F9679C();
  v16 = OUTLINED_FUNCTION_3_57();
  [v16 v17];
}

void SignInRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___AMSRemoteSignInRequest_signInContext;
  *&v2[OBJC_IVAR___AMSRemoteSignInRequest_signInContext] = 0;
  v5 = OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes;
  v22 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___AMSRemoteSignInRequest_serviceTypes] = MEMORY[0x1E69E7CC0];
  sub_192CF02EC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192FBED40;
  *(inited + 32) = sub_192874CD0(0, &qword_1ED6DEE70);
  *(inited + 40) = sub_192874CD0(0, &qword_1ED6DE9F0);
  *(inited + 48) = sub_192874CD0(0, &qword_1ED6DDBB0);
  *(inited + 56) = sub_192874CD0(0, &qword_1EAE15950);
  *(inited + 64) = sub_192874CD0(0, &qword_1ED6DE7D8);
  sub_192C38508(inited);

  sub_192F96FBC();

  if (!v26)
  {

    sub_192907DE8(v25);
LABEL_24:

    type metadata accessor for SignInRequest();
    swift_deallocPartialClassInstance();
    return;
  }

  sub_1928FA5CC(v25);
  sub_1928FA5CC(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  *&v2[OBJC_IVAR___AMSRemoteSignInRequest_authenticationResults] = v24;
  sub_192874CD0(0, &qword_1EAE15958);
  v7 = sub_192F96FAC();
  swift_beginAccess();
  v8 = *&v2[v4];
  v21 = v2;
  *&v2[v4] = v7;

  v9 = sub_192F96FCC();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_19295466C(v10);
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {

      swift_beginAccess();
      *&v21[v5] = v22;

      v23.receiver = v21;
      v23.super_class = type metadata accessor for SignInRequest();
      objc_msgSendSuper2(&v23, sel_init);

      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193B116C0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v13 integerValue];

    if (v16)
    {
      ++v12;
      if (v16 == 1)
      {
        v17 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_192BC50AC();
        v22 = v19;
      }

      v18 = *(v22 + 16);
      if (v18 >= *(v22 + 24) >> 1)
      {
        sub_192BC50AC();
        v22 = v20;
      }

      *(v22 + 16) = v18 + 1;
      *(v22 + v18 + 32) = v17;
      v12 = v15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}