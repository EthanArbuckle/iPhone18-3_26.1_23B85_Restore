unint64_t sub_1B252C28C()
{
  result = qword_1EB7D29E0;
  if (!qword_1EB7D29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29E0);
  }

  return result;
}

unint64_t sub_1B252C2E4()
{
  result = qword_1EB7D29E8;
  if (!qword_1EB7D29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29E8);
  }

  return result;
}

unint64_t sub_1B252C33C()
{
  result = qword_1EB7D29F0;
  if (!qword_1EB7D29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29F0);
  }

  return result;
}

unint64_t sub_1B252C394()
{
  result = qword_1EB7D29F8;
  if (!qword_1EB7D29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29F8);
  }

  return result;
}

unint64_t sub_1B252C3E8()
{
  result = qword_1EB7D2A00;
  if (!qword_1EB7D2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A00);
  }

  return result;
}

uint64_t sub_1B252C44C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B252C4A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B252C500(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2A18);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B252C844();
  sub_1B256EDFC();
  sub_1B256E9FC();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1B252C634(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2A08);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B252C844();
  sub_1B256EDBC();
  if (!v1)
  {
    v9 = sub_1B256E94C();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1B252C784(uint64_t a1)
{
  v2 = sub_1B252C844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B252C7C0(uint64_t a1)
{
  v2 = sub_1B252C844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B252C7FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B252C634(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1B252C844()
{
  result = qword_1EB7D2A10;
  if (!qword_1EB7D2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B252C948()
{
  result = qword_1EB7D2A20;
  if (!qword_1EB7D2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A20);
  }

  return result;
}

unint64_t sub_1B252C9A0()
{
  result = qword_1EB7D2A28;
  if (!qword_1EB7D2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A28);
  }

  return result;
}

unint64_t sub_1B252C9F8()
{
  result = qword_1EB7D2A30;
  if (!qword_1EB7D2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A30);
  }

  return result;
}

id sub_1B252CA4C(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC8StoreKit15MessageReceiver_logKey;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_44();
    swift_once();
  }

  v5 = &v2[v4];
  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  *v5 = sub_1B24D3E10();
  v5[1] = v7;
  v8 = OBJC_IVAR____TtC8StoreKit15MessageReceiver_continuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05A8);
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a1, v9);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MessageReceiver();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

void sub_1B252CB84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2A50);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - v10;
  if (a1)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = v2 + OBJC_IVAR____TtC8StoreKit15MessageReceiver_logKey;
      v13 = (a1 + 32);
      v24[0] = v8 + 8;
      v24[1] = OBJC_IVAR____TtC8StoreKit15MessageReceiver_continuation;
      *&v9 = 136446466;
      v27 = v9;
      while (1)
      {
        v14 = *v13;
        v28 = 1701869940;
        v29 = 0xE400000000000000;

        sub_1B256E47C();
        if (!*(v14 + 16))
        {
          break;
        }

        v15 = sub_1B2455674(v30);
        if ((v16 & 1) == 0)
        {
          break;
        }

        sub_1B2456DAC(*(v14 + 56) + 32 * v15, v31);
        sub_1B245856C(v30);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_9;
        }

        v30[0] = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05A8);
        v17 = v25;
        sub_1B256DDEC();
        (*v24[0])(v17, v26);
LABEL_14:
        ++v13;
        if (!--v11)
        {
          return;
        }
      }

      sub_1B245856C(v30);
LABEL_9:
      if (qword_1ED699E80 != -1)
      {
        OUTLINED_FUNCTION_0_44();
        swift_once();
      }

      v18 = __swift_project_value_buffer(v4, qword_1ED69A108);
      sub_1B244CC80(v18, v7);

      v19 = sub_1B256D5CC();
      sub_1B256D5EC();
      OUTLINED_FUNCTION_7_0();
      (*(v20 + 8))(v7);
      v21 = sub_1B256E0AC();

      if (os_log_type_enabled(v19, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v30[0] = v23;
        *v22 = v27;
        *(v22 + 4) = sub_1B2519814(*v12, *(v12 + 8), v30);
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_1B2519814(1701869940, 0xE400000000000000, v30);
        _os_log_impl(&dword_1B23EF000, v19, v21, "[%{public}s] Missing required field %{public}s for message", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274BFF0](v23, -1, -1);
        MEMORY[0x1B274BFF0](v22, -1, -1);
      }

      goto LABEL_14;
    }
  }
}

void sub_1B252CFB8()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1B252D008()
{
  v1 = OBJC_IVAR____TtC8StoreKit15MessageReceiver_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05A8);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B252D088()
{
  sub_1B252D008();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for MessageReceiver()
{
  result = qword_1EB7D2A38;
  if (!qword_1EB7D2A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B252D108()
{
  sub_1B252D1AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B252D1AC()
{
  if (!qword_1EB7D2A48)
  {
    v0 = sub_1B256DE0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D2A48);
    }
  }
}

uint64_t sub_1B252D210()
{
  type metadata accessor for LaunchObserverManager();
  swift_allocObject();
  result = sub_1B252D24C();
  qword_1EB7EDF40 = result;
  return result;
}

uint64_t sub_1B252D24C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  swift_defaultActor_initialize();
  v4 = sub_1B256DDAC();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1B2484230();
  *(v0 + 112) = v6;

  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1B2484230();
  *(v0 + 120) = v8;

  return v0;
}

uint64_t sub_1B252D3A4()
{
  v0[9] = type metadata accessor for SKLogger();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2A70);
  v0[12] = swift_task_alloc();
  v1 = sub_1B256E1BC();
  v0[13] = v1;
  v0[14] = *(v1 - 8);
  v0[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B252D4D4, 0, 0);
}

uint64_t sub_1B252D4D4()
{
  OUTLINED_FUNCTION_21_5();
  v1 = [objc_opt_self() defaultCenter];
  *(v0 + 128) = sub_1B256E1CC();

  sub_1B256E1AC();
  sub_1B252E5CC();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_28(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_38(v3);

  return MEMORY[0x1EEE6D8C8](v5, v6, v7);
}

uint64_t sub_1B252D5C4()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1B252E640;
  }

  else
  {
    v5 = sub_1B252D6CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B252D6E0()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[12];
  v2 = sub_1B256CEFC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

LABEL_17:

    v30 = v0[1];

    return v30();
  }

  v3 = [objc_opt_self() defaultBroker];
  v0[6] = sub_1B252DA70;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_3_36(COERCE_DOUBLE(1107296256));
  v0[4] = v4;
  v0[5] = &block_descriptor_17;
  v5 = _Block_copy(v0 + 2);
  v6 = [v3 storeKitServiceWithErrorHandler_];
  _Block_release(v5);

  if (!v6)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v22 = v0[11];
    v23 = __swift_project_value_buffer(v0[9], qword_1ED69A108);
    sub_1B244CC80(v23, v22);
    sub_1B256D5CC();
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_2_1();
    (*(v24 + 8))(v22);
    v25 = sub_1B256E0AC();
    if (OUTLINED_FUNCTION_9_23(v25))
    {
      v26 = OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_14_19(v26);
      OUTLINED_FUNCTION_4_26(&dword_1B23EF000, v27, v28, "Failed to get XPC remote object for launch event");
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    v29 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_1B24CFCF0(v29, &qword_1EB7D2A70);
    goto LABEL_17;
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v7 = v0[10];
  v8 = __swift_project_value_buffer(v0[9], qword_1ED69A108);
  sub_1B244CC80(v8, v7);
  v9 = v7;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 8))(v7);
  v11 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_9_23(v11))
  {
    v12 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_14_19(v12);
    OUTLINED_FUNCTION_4_26(&dword_1B23EF000, v13, v14, "Sending launch event");
    OUTLINED_FUNCTION_44_1();
  }

  v15 = v0[12];

  [v6 checkForMessages];
  swift_unknownObjectRelease();
  sub_1B24CFCF0(v15, &qword_1EB7D2A70);
  sub_1B252E5CC();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_6_28(v16);
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_2_38(v17);

  return MEMORY[0x1EEE6D8C8](v19, v20, v21);
}

uint64_t sub_1B252DA7C()
{
  v0[9] = type metadata accessor for SKLogger();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2A70);
  v0[12] = swift_task_alloc();
  v1 = sub_1B256E1BC();
  v0[13] = v1;
  v0[14] = *(v1 - 8);
  v0[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B252DBAC, 0, 0);
}

uint64_t sub_1B252DBAC()
{
  OUTLINED_FUNCTION_21_5();
  v1 = [objc_opt_self() defaultCenter];
  *(v0 + 128) = sub_1B256E1CC();

  sub_1B256E1AC();
  sub_1B252E5CC();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_28(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_38(v3);

  return MEMORY[0x1EEE6D8C8](v5, v6, v7);
}

uint64_t sub_1B252DC9C()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1B252E148;
  }

  else
  {
    v5 = sub_1B252DDA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B252DDB8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[12];
  v2 = sub_1B256CEFC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

LABEL_17:

    v30 = v0[1];

    return v30();
  }

  v3 = [objc_opt_self() defaultBroker];
  v0[6] = sub_1B252E1D0;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_3_36(COERCE_DOUBLE(1107296256));
  v0[4] = v4;
  v0[5] = &block_descriptor_24;
  v5 = _Block_copy(v0 + 2);
  v6 = [v3 storeKitServiceWithErrorHandler_];
  _Block_release(v5);

  if (!v6)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v22 = v0[11];
    v23 = __swift_project_value_buffer(v0[9], qword_1ED69A108);
    sub_1B244CC80(v23, v22);
    sub_1B256D5CC();
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_2_1();
    (*(v24 + 8))(v22);
    v25 = sub_1B256E0AC();
    if (OUTLINED_FUNCTION_9_23(v25))
    {
      v26 = OUTLINED_FUNCTION_18_5();
      OUTLINED_FUNCTION_14_19(v26);
      OUTLINED_FUNCTION_4_26(&dword_1B23EF000, v27, v28, "Failed to get XPC remote object for foreground event");
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    v29 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_1B24CFCF0(v29, &qword_1EB7D2A70);
    goto LABEL_17;
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v7 = v0[10];
  v8 = __swift_project_value_buffer(v0[9], qword_1ED69A108);
  sub_1B244CC80(v8, v7);
  v9 = v7;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 8))(v7);
  v11 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_9_23(v11))
  {
    v12 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_14_19(v12);
    OUTLINED_FUNCTION_4_26(&dword_1B23EF000, v13, v14, "Sending foreground event");
    OUTLINED_FUNCTION_44_1();
  }

  v15 = v0[12];

  [v6 checkForMessages];
  swift_unknownObjectRelease();
  sub_1B24CFCF0(v15, &qword_1EB7D2A70);
  sub_1B252E5CC();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_6_28(v16);
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_2_38(v17);

  return MEMORY[0x1EEE6D8C8](v19, v20, v21);
}

uint64_t sub_1B252E148()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 64) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1B252E1DC(void *a1, const char *a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v7 = __swift_project_value_buffer(v4, qword_1ED69A108);
  sub_1B244CC80(v7, v6);
  v8 = a1;
  v9 = v6;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_12_24();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 8))(v6);
  v11 = sub_1B256E0AC();

  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = sub_1B256D0CC();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_1B23EF000, v9, v11, a2, v12, 0xCu);
    sub_1B24CFCF0(v13, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v13, -1, -1);
    OUTLINED_FUNCTION_44_1();
  }
}

uint64_t sub_1B252E37C()
{
  if (*(v0 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256DE7C();
  }

  if (*(v0 + 120))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256DE7C();
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B252E44C()
{
  sub_1B252E37C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B252E49C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_21(v1);

  return sub_1B252D3A4();
}

uint64_t sub_1B252E534()
{
  OUTLINED_FUNCTION_21_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_21(v1);

  return sub_1B252DA7C();
}

unint64_t sub_1B252E5CC()
{
  result = qword_1EB7CD2B8;
  if (!qword_1EB7CD2B8)
  {
    sub_1B256E1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD2B8);
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_4_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_9_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_24()
{

  return sub_1B256D5EC();
}

void sub_1B252E700(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t PaymentMethodBinding.PaymentMethodBindingError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  v2 = OUTLINED_FUNCTION_2_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34_2();
  v3 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v3);
  return sub_1B24E41B8(0xD000000000000013, 0x80000001B2592310, v0);
}

uint64_t PaymentMethodBinding.PaymentMethodBindingError.failureReason.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = *v1;
  v5 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v5);
  v6 = "Failed in XPC to ";
  if (v4)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = "BINDING_FAILED_DESC";
    v7 = 0xD000000000000019;
  }

  return sub_1B24E41B8(v7, v6 | 0x8000000000000000, v0);
}

uint64_t PaymentMethodBinding.PaymentMethodBindingError.recoverySuggestion.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  v3 = OUTLINED_FUNCTION_2_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  if (!*v1)
  {
    return 0;
  }

  v4 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v4);
  return sub_1B24E41B8(0xD000000000000012, 0x80000001B258E370, v0);
}

uint64_t PaymentMethodBinding.PaymentMethodBindingError.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t PaymentMethodBinding.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PaymentMethodBinding.init(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B252EA58, 0, 0);
}

uint64_t sub_1B252EA58()
{
  sub_1B246063C(0, &qword_1EB7D2A78);

  v1 = sub_1B252FCC8();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B252EB7C;
  OUTLINED_FUNCTION_5_31();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, 0xE900000000000029, v8, v2, v9);
}

uint64_t sub_1B252EB7C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {

    v2 = sub_1B252ED34;
  }

  else
  {

    v2 = sub_1B252ECC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B252ECC4()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *v3 = v2;
  v3[1] = v1;
  OUTLINED_FUNCTION_7_2();

  return v4();
}

uint64_t sub_1B252ED34()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B252ED90(uint64_t a1, void *a2)
{
  v37 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v41 = [objc_opt_self() defaultBroker];
  v9 = *(v6 + 16);
  v43 = a1;
  v40 = v9;
  v9(v8, a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v39 = *(v6 + 32);
  v39(v11 + v10, v8, v5);
  v48 = sub_1B2530B70;
  v49 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v38 = &v46;
  v46 = sub_1B244BD28;
  v47 = &block_descriptor_20;
  v12 = _Block_copy(&aBlock);
  v42 = a2;

  v13 = v41;
  v14 = [v41 inAppBindingServiceWithErrorHandler_];
  _Block_release(v12);

  if (v14)
  {
    v40(v8, v43, v5);
    v15 = swift_allocObject();
    v16 = v42;
    *(v15 + 16) = v42;
    v39(v15 + v10, v8, v5);
    v48 = sub_1B2530CC0;
    v49 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1B252E700;
    v47 = &block_descriptor_26_1;
    v17 = _Block_copy(&aBlock);
    v18 = v16;

    [v14 checkPaymentAccountBindingEligibilityWithRequest:v18 reply:v17];
    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    v21 = v36;
    v20 = v37;
    v22 = v42;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v20, qword_1ED69A108);
    sub_1B244CC80(v23, v21);
    v24 = v22;
    v25 = sub_1B256D5CC();
    v26 = sub_1B256D5EC();
    (*(*(v26 - 8) + 8))(v21, v26);
    v27 = sub_1B256E0AC();

    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136380675;
      v30 = [v24 pinningID];
      v31 = sub_1B256D9BC();
      v33 = v32;

      v34 = sub_1B2519814(v31, v33, &aBlock);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1B23EF000, v25, v27, "Failed to get XPC remote object to check payment account binding eligibility %{private}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B274BFF0](v29, -1, -1);
      MEMORY[0x1B274BFF0](v28, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    aBlock = v35;
    return sub_1B256DCFC();
  }
}

void sub_1B252F2C8(char a1, void *a2, void *a3)
{
  v6 = type metadata accessor for SKLogger();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  if (a2 && (v44 = a2, v12 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40), sub_1B246063C(0, &qword_1EB7D0050), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v43;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_1ED69A108);
    sub_1B244CC80(v14, v11);
    v15 = a3;
    v16 = v13;
    v17 = sub_1B256D5CC();
    v18 = sub_1B256D5EC();
    (*(*(v18 - 8) + 8))(v11, v18);
    v19 = sub_1B256E0AC();

    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44 = v22;
      *v20 = 136380931;
      v23 = [v15 pinningID];
      v24 = sub_1B256D9BC();
      v26 = v25;

      v27 = sub_1B2519814(v24, v26, &v44);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2114;
      *(v20 + 14) = v16;
      *v21 = v16;
      v28 = v16;
      _os_log_impl(&dword_1B23EF000, v17, v19, "Failed to check payment account binding eligibility %{private}s: %{public}@", v20, 0x16u);
      sub_1B2468C20(v21);
      MEMORY[0x1B274BFF0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1B274BFF0](v22, -1, -1);
      MEMORY[0x1B274BFF0](v20, -1, -1);
    }

    v44 = sub_1B252F7D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    sub_1B256DCFC();
  }

  else if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    sub_1B256DD0C();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v6, qword_1ED69A108);
    sub_1B244CC80(v29, v9);
    v30 = a3;
    v31 = sub_1B256D5CC();
    v32 = sub_1B256D5EC();
    (*(*(v32 - 8) + 8))(v9, v32);
    v33 = sub_1B256E0AC();

    if (os_log_type_enabled(v31, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136380675;
      v36 = [v30 pinningID];
      v37 = sub_1B256D9BC();
      v39 = v38;

      v40 = sub_1B2519814(v37, v39, &v44);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1B23EF000, v31, v33, "Account is not eligible for payment binding %{private}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1B274BFF0](v35, -1, -1);
      MEMORY[0x1B274BFF0](v34, -1, -1);
    }

    sub_1B2530918();
    v41 = swift_allocError();
    *v42 = 0;
    v44 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    sub_1B256DCFC();
  }
}

uint64_t sub_1B252F7D0()
{
  sub_1B246063C(0, &qword_1EB7CDAD8);
  sub_1B2467710();
  v0 = OUTLINED_FUNCTION_5();
  *v1 = 3;
  v2 = sub_1B256D0CC();
  v3 = sub_1B256E21C();

  if (v3 & 1) != 0 || (v4 = OUTLINED_FUNCTION_5(), *v5 = 11, v6 = sub_1B256D0CC(), v7 = sub_1B256E21C(), v6, v4, (v7))
  {
    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v8 = OUTLINED_FUNCTION_5();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B252A234();
    v9 = OUTLINED_FUNCTION_5();
    *v10 = 4000029;
    v11 = sub_1B256D0CC();
    v12 = sub_1B256E21C();

    sub_1B2530918();
    v8 = OUTLINED_FUNCTION_5();
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    *v13 = v14;
  }

  return v8;
}

uint64_t PaymentMethodBinding.bind()()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B252F9E8, 0, 0);
}

uint64_t sub_1B252F9E8()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B246063C(0, &qword_1EB7D2A80);
  v1 = sub_1B252FCC8();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B252FAF0;
  OUTLINED_FUNCTION_5_31();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, 0xE600000000000000, v8, v2, v9);
}

uint64_t sub_1B252FAF0()
{
  OUTLINED_FUNCTION_4_0();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B252FC64;
  }

  else
  {

    v2 = sub_1B252FC08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B252FC08()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B252FC64()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v1();
}

id sub_1B252FCC8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B256D98C();

  v2 = [v0 initWithPinningID_];

  return v2;
}

uint64_t sub_1B252FD3C(uint64_t a1, void *a2)
{
  v37 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v41 = [objc_opt_self() defaultBroker];
  v9 = *(v6 + 16);
  v43 = a1;
  v40 = v9;
  v9(v8, a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v39 = *(v6 + 32);
  v39(v11 + v10, v8, v5);
  v48 = sub_1B2530ADC;
  v49 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v38 = &v46;
  v46 = sub_1B244BD28;
  v47 = &block_descriptor_25;
  v12 = _Block_copy(&aBlock);
  v42 = a2;

  v13 = v41;
  v14 = [v41 inAppBindingServiceWithErrorHandler_];
  _Block_release(v12);

  if (v14)
  {
    v40(v8, v43, v5);
    v15 = swift_allocObject();
    v16 = v42;
    *(v15 + 16) = v42;
    v39(v15 + v10, v8, v5);
    v48 = sub_1B2530B00;
    v49 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = sub_1B2515BBC;
    v47 = &block_descriptor_14_0;
    v17 = _Block_copy(&aBlock);
    v18 = v16;

    [v14 bindPaymentAccountWithRequest:v18 reply:v17];
    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    v21 = v36;
    v20 = v37;
    v22 = v42;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v20, qword_1ED69A108);
    sub_1B244CC80(v23, v21);
    v24 = v22;
    v25 = sub_1B256D5CC();
    v26 = sub_1B256D5EC();
    (*(*(v26 - 8) + 8))(v21, v26);
    v27 = sub_1B256E0AC();

    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136380675;
      v30 = [v24 pinningID];
      v31 = sub_1B256D9BC();
      v33 = v32;

      v34 = sub_1B2519814(v31, v33, &aBlock);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1B23EF000, v25, v27, "Failed to get XPC remote object to bind payment account %{private}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B274BFF0](v29, -1, -1);
      MEMORY[0x1B274BFF0](v28, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    aBlock = v35;
    return sub_1B256DCFC();
  }
}

uint64_t sub_1B2530274(void *a1, void *a2, uint64_t a3, const char *a4)
{
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v8, qword_1ED69A108);
  sub_1B244CC80(v11, v10);
  v12 = a2;
  v13 = a1;
  v14 = sub_1B256D5CC();
  v15 = sub_1B256D5EC();
  (*(*(v15 - 8) + 8))(v10, v15);
  v16 = sub_1B256E0AC();

  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v17 = 136380931;
    v20 = [v12 pinningID];
    v21 = sub_1B256D9BC();
    v28 = a3;
    v22 = a4;
    v24 = v23;

    v25 = sub_1B2519814(v21, v24, &v29);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2114;
    v26 = sub_1B256D0CC();
    *(v17 + 14) = v26;
    *v18 = v26;
    _os_log_impl(&dword_1B23EF000, v14, v16, v22, v17, 0x16u);
    sub_1B2468C20(v18);
    MEMORY[0x1B274BFF0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B274BFF0](v19, -1, -1);
    MEMORY[0x1B274BFF0](v17, -1, -1);
  }

  v29 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  return sub_1B256DCFC();
}

void sub_1B2530518(void *a1, void *a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v25 = a1, v7 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40), sub_1B246063C(0, &qword_1EB7D0050), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v24;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_1ED69A108);
    sub_1B244CC80(v9, v6);
    v10 = a2;
    v11 = v8;
    v12 = sub_1B256D5CC();
    v13 = sub_1B256D5EC();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = sub_1B256E0AC();

    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v15 = 136380931;
      v18 = [v10 pinningID];
      v19 = sub_1B256D9BC();
      v21 = v20;

      v22 = sub_1B2519814(v19, v21, &v25);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2114;
      *(v15 + 14) = v11;
      *v16 = v11;
      v23 = v11;
      _os_log_impl(&dword_1B23EF000, v12, v14, "Failed to bind payment account %{private}s: %{public}@", v15, 0x16u);
      sub_1B2468C20(v16);
      MEMORY[0x1B274BFF0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1B274BFF0](v17, -1, -1);
      MEMORY[0x1B274BFF0](v15, -1, -1);
    }

    v25 = sub_1B252F7D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    sub_1B256DCFC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
    sub_1B256DD0C();
  }
}

uint64_t static PaymentMethodBinding.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C();
  }
}

uint64_t PaymentMethodBinding.hashValue.getter()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

unint64_t sub_1B25308C0()
{
  result = qword_1EB7D2A88;
  if (!qword_1EB7D2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A88);
  }

  return result;
}

unint64_t sub_1B2530918()
{
  result = qword_1EB7D2A90;
  if (!qword_1EB7D2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A90);
  }

  return result;
}

unint64_t sub_1B2530970()
{
  result = qword_1EB7D2A98;
  if (!qword_1EB7D2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2A98);
  }

  return result;
}

uint64_t sub_1B25309C4@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentMethodBinding.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PaymentMethodBinding.PaymentMethodBindingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B2530B00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_7_29();

  sub_1B2530518(a1, v3);
}

uint64_t sub_1B2530B7C(void *a1, const char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_7_29();
  return sub_1B2530274(a1, v5, v6, a2);
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1B2530CC0(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030);
  OUTLINED_FUNCTION_2_2(v5);
  v6 = *(v2 + 16);

  sub_1B252F2C8(a1, a2, v6);
}

uint64_t sub_1B2530EB0()
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_49_6();
  return sub_1B256ED7C();
}

uint64_t sub_1B2530F1C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_38_3();
  a2(v5, a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2530F88(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_38_3();
  a2(a1);
  OUTLINED_FUNCTION_48_5();

  return sub_1B256ED7C();
}

uint64_t sub_1B2530FD8(uint64_t a1)
{
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x1B274AFC0](a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2531018(char a1)
{
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x1B274AFC0](a1 & 1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2531058()
{
  sub_1B256ED3C();
  sub_1B252A2E4();
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

uint64_t sub_1B25310B0(char a1)
{
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x1B274AFC0]((a1 & 1u) + 1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2531100(char a1)
{
  sub_1B256ED3C();
  sub_1B2531DA4(a1);
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B253115C()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_38_3();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B25311A0()
{
  OUTLINED_FUNCTION_51_5();
  MEMORY[0x1B274AFC0]((v0 & 1u) + 1);
  return sub_1B256ED7C();
}

uint64_t sub_1B25311E0()
{
  sub_1B256ED3C();
  sub_1B252A2E4();
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

uint64_t sub_1B253124C()
{
  OUTLINED_FUNCTION_51_5();
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B2531330()
{
  sub_1B256ED3C();
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B253138C(uint64_t a1, char a2)
{
  sub_1B256ED3C();
  sub_1B2531DA4(a2);
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B25313FC()
{
  sub_1B256ED3C();
  OUTLINED_FUNCTION_49_6();
  return sub_1B256ED7C();
}

uint64_t sub_1B253146C(uint64_t a1, char a2)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a2 & 1);
  return sub_1B256ED7C();
}

uint64_t sub_1B25314B0()
{
  OUTLINED_FUNCTION_51_5();
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B2531550()
{
  OUTLINED_FUNCTION_51_5();
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B25315C8(uint64_t a1, unsigned __int8 a2)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a2);
  return sub_1B256ED7C();
}

uint64_t sub_1B253163C(uint64_t a1, uint64_t a2)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a2);
  return sub_1B256ED7C();
}

uint64_t sub_1B2531698(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1B256ED3C();
  a3(a2);
  OUTLINED_FUNCTION_48_5();

  return sub_1B256ED7C();
}

uint64_t sub_1B2531704(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1B256ED3C();
  a3(v6, a2);
  return sub_1B256ED7C();
}

uint64_t sub_1B2531750()
{
  OUTLINED_FUNCTION_51_5();
  sub_1B256DA7C();

  return sub_1B256ED7C();
}

uint64_t sub_1B25317A4()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

void sub_1B25317F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x1B2749CC0](v4);

  MEMORY[0x1B2749D50](46, 0xE100000000000000);
  if (v3 == 1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = OUTLINED_FUNCTION_18_1();
  v6 = MEMORY[0x1B2749CC0](v5);
  v8 = v7;

  MEMORY[0x1B2749D50](v6, v8);

  sub_1B24D7B84();
}

uint64_t sub_1B25318E0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B25869B0;
  *(inited + 32) = 0x726564616568;
  *(inited + 40) = 0xE600000000000000;
  sub_1B256CE7C();
  swift_allocObject();
  result = sub_1B256CE6C();
  v6 = a3[2];
  if (!v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];

  MEMORY[0x1B2749CC0](v7, v8, v9, v10);

  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v11 >> 60 == 15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v13 = v11;

  sub_1B244A000();
  sub_1B256CE5C();
  sub_1B2443AD0(v12, v13);

  *(inited + 48) = v28;
  *(inited + 64) = v29;
  *(inited + 72) = 0x64616F6C796170;
  *(inited + 80) = 0xE700000000000000;
  swift_allocObject();
  result = sub_1B256CE6C();
  if (v6 == 1)
  {
    goto LABEL_9;
  }

  v14 = a3[8];
  v15 = a3[9];
  v16 = a3[10];
  v17 = a3[11];

  MEMORY[0x1B2749CC0](v14, v15, v16, v17);

  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v18 >> 60 == 15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = result;
  v20 = v18;

  sub_1B256CE5C();
  sub_1B2443AD0(v19, v20);

  *(inited + 88) = v28;
  *(inited + 104) = v29;
  *(inited + 112) = 0x727574616E676973;
  *(inited + 120) = 0xE900000000000065;
  if (v6 < 3)
  {
    goto LABEL_10;
  }

  v21 = OUTLINED_FUNCTION_18_1();
  MEMORY[0x1B2749CC0](v21);

  OUTLINED_FUNCTION_18_1();
  sub_1B246314C();

  result = sub_1B256D1AC();
  if (v22 >> 60 != 15)
  {
    v23 = result;
    v24 = v22;

    v25 = sub_1B256D19C();
    v27 = v26;
    sub_1B2443AD0(v23, v24);
    *(inited + 128) = v25;
    *(inited + 136) = v27;
    *(inited + 144) = 0;
    return sub_1B256D8AC();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B2531CB4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x1B274AFC0](a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2531CF4()
{
  v0 = sub_1B256E91C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B2531D58()
{
  v0 = sub_1B256E91C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B2531DFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2531CF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B2531E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2531D40(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1B2531F30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2531D58();
  *a1 = result;
  return result;
}

uint64_t sub_1B2531F60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2531DA4(*v1);
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1B2531FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2531D58();
  *a1 = result;
  return result;
}

uint64_t sub_1B2531FE4(uint64_t a1)
{
  v2 = sub_1B253BAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2532020(uint64_t a1)
{
  v2 = sub_1B253BAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B253205C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  v5 = OUTLINED_FUNCTION_2_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B98);
  OUTLINED_FUNCTION_1_1();
  v41 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for JWSInternals.Header(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = (v15 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B253BAF8();
  sub_1B256EDBC();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v38 = v16;
    v49 = 0;
    v18 = sub_1B256E94C();
    v19 = v7;
    v20 = v38;
    *v38 = v18;
    v20[1] = v21;
    sub_1B256D14C();
    v48 = 2;
    OUTLINED_FUNCTION_17_17();
    sub_1B253B49C(v22, v23);
    sub_1B256E95C();
    sub_1B24C42F0();
    v47 = 3;
    v24 = sub_1B256E94C();
    v25 = (v20 + *(v12 + 28));
    *v25 = v24;
    v25[1] = v26;
    v45 = 4;
    sub_1B253BB4C();
    sub_1B256E95C();
    *(v20 + *(v12 + 32)) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
    v44 = 1;
    sub_1B2460F44(&qword_1EB7D0910);
    sub_1B256E95C();
    v29 = v42;
    if (v42)
    {
      (*(v41 + 8))(v11, v19);
    }

    else
    {
      v43 = 1;
      v27 = sub_1B256E94C();
      v30 = v28;
      if (v28)
      {
        v31 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1B2578530;
        *(v29 + 32) = v31;
        *(v29 + 40) = v30;
        v32 = OUTLINED_FUNCTION_3_7();
        v33(v32);
      }

      else
      {
        v34 = OUTLINED_FUNCTION_3_7();
        v35(v34);
        v29 = 0;
      }

      v20 = v38;
    }

    v20[2] = v29;
    OUTLINED_FUNCTION_16_20();
    sub_1B253B544();
    v17 = a1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1B2532508(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2BB0);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B253BAF8();
  sub_1B256EDFC();
  v17 = 0;
  OUTLINED_FUNCTION_23_5();
  sub_1B256E9FC();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v15[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
    sub_1B2460F44(&qword_1EB7CD5E8);
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA0C();
    v11 = type metadata accessor for JWSInternals.Header(0);
    v15[14] = 2;
    sub_1B256D14C();
    OUTLINED_FUNCTION_17_17();
    sub_1B253B49C(v12, v13);
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA0C();
    v15[13] = 3;
    OUTLINED_FUNCTION_23_5();
    sub_1B256E9FC();
    v15[12] = *(v3 + *(v11 + 32));
    v15[11] = 4;
    sub_1B253BBA0();
    OUTLINED_FUNCTION_23_5();
    sub_1B256EA0C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B25327B0()
{
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_7();

  return v1(v0);
}

uint64_t sub_1B2532810(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65646F6358 && a2 == 0xE500000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C();
  }
}

uint64_t sub_1B2532840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v17[28] = v26;
  v17[29] = a17;
  v17[26] = v27;
  v17[27] = v28;
  v17[24] = v18;
  v17[25] = v29;
  v17[22] = v22;
  v17[23] = v20;
  v17[21] = v24;
  v30 = sub_1B256E15C();
  v17[30] = v30;
  OUTLINED_FUNCTION_26_7(v30);
  v17[31] = v31;
  v17[32] = OUTLINED_FUNCTION_54_7();
  v17[33] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AF8);
  v17[34] = v32;
  OUTLINED_FUNCTION_2_2(v32);
  v17[35] = OUTLINED_FUNCTION_54_7();
  v17[36] = swift_task_alloc();
  v33 = type metadata accessor for SignatureSupport.ChainValidationSuccess(0);
  v17[37] = v33;
  OUTLINED_FUNCTION_2_2(v33);
  v17[38] = OUTLINED_FUNCTION_250();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
  v17[39] = v34;
  OUTLINED_FUNCTION_2_2(v34);
  v17[40] = OUTLINED_FUNCTION_54_7();
  v17[41] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B00);
  OUTLINED_FUNCTION_2_2(v35);
  v17[42] = OUTLINED_FUNCTION_250();
  v36 = sub_1B256D36C();
  v17[43] = v36;
  OUTLINED_FUNCTION_26_7(v36);
  v17[44] = v37;
  v17[45] = OUTLINED_FUNCTION_54_7();
  v17[46] = swift_task_alloc();
  v17[47] = swift_task_alloc();
  v38 = type metadata accessor for TrustStore.CacheValue(0);
  v17[48] = v38;
  OUTLINED_FUNCTION_26_7(v38);
  v17[49] = v39;
  v17[50] = OUTLINED_FUNCTION_54_7();
  v17[51] = swift_task_alloc();
  v17[52] = swift_task_alloc();
  v17[53] = swift_task_alloc();
  v17[54] = swift_task_alloc();
  v17[2] = v25;
  v17[3] = v23;
  v17[4] = v21;
  v17[5] = v19;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_326();

  return MEMORY[0x1EEE6DFA0](v40, v41, v42);
}

uint64_t sub_1B2532AE4()
{
  v78 = (v0 + 2);
  v1 = v0[49];
  v81 = v0[48];
  v2 = v0[44];
  v3 = v0[27];
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_50_5();
  v7 = 0;
  v8 = *(v3 + 112);
  v83 = (v2 + 8);
  v79 = v3;
  v80 = *(v8 + 16);
  v9 = v80;
  do
  {
    if (v80 == v7)
    {
      goto LABEL_23;
    }

    if (v7 >= v9)
    {
      __break(1u);
      goto LABEL_51;
    }

    v10 = v85[54];
    v11 = v85[47];
    v12 = v85[43];
    v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v14 = *(v1 + 72);
    OUTLINED_FUNCTION_3_37();
    sub_1B253B814();
    sub_1B256D34C();
    v15 = sub_1B256D2BC();
    v16 = *v83;
    (*v83)(v11, v12);
    OUTLINED_FUNCTION_2_39();
    isUniquelyReferenced_nonNull_native = sub_1B253B59C(v10, v17);
    ++v7;
    v9 = *(v8 + 16);
  }

  while ((v15 & 1) == 0);
  v18 = v7 - 1;
  if (v7 != v9)
  {
    v19 = v13 + v14 * v7;
    v20 = v85;
    while (v7 < v9)
    {
      v80 = v18;
      v21 = v20[54];
      v22 = v20[47];
      v23 = v20[43];
      OUTLINED_FUNCTION_3_37();
      sub_1B253B814();
      sub_1B256D34C();
      v24 = sub_1B256D2BC();
      v16(v22, v23);
      OUTLINED_FUNCTION_2_39();
      isUniquelyReferenced_nonNull_native = sub_1B253B59C(v21, v25);
      if (v24)
      {
        v20 = v85;
        v18 = v80;
      }

      else
      {
        if (v7 == v80)
        {
          v20 = v85;
        }

        else
        {
          v20 = v85;
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v26 = *(v8 + 16);
          if (v80 >= v26)
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_3_37();
          isUniquelyReferenced_nonNull_native = sub_1B253B814();
          if (v7 >= v26)
          {
            goto LABEL_54;
          }

          OUTLINED_FUNCTION_3_37();
          sub_1B253B814();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v79 + 112) = v8;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B2456E70();
            v8 = isUniquelyReferenced_nonNull_native;
            *(v79 + 112) = isUniquelyReferenced_nonNull_native;
          }

          if (v80 >= *(v8 + 16))
          {
            goto LABEL_55;
          }

          isUniquelyReferenced_nonNull_native = sub_1B253AD28(v85[50], v8 + v13 + v80 * v14);
          *(v79 + 112) = v8;
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_56;
          }

          isUniquelyReferenced_nonNull_native = sub_1B253AD28(v85[51], v8 + v19);
          *(v79 + 112) = v8;
        }

        v18 = v80 + 1;
      }

      ++v7;
      v9 = *(v8 + 16);
      v19 += v14;
      if (v7 == v9)
      {
        if (v7 >= v18)
        {
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_39;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, v5, v6);
  }

LABEL_23:
  v20 = v85;
LABEL_24:
  v27 = v20[48];
  v28 = v20[42];
  sub_1B2564330();
  swift_endAccess();
  v13 = v78;
  *(swift_task_alloc() + 16) = v78;

  sub_1B24AB038();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v27);
  *(v20 + 120) = EnumTagSinglePayload;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B243E88C(v20[42], &qword_1EB7D2B00);
  }

  else
  {
    v30 = v20[53];
    v31 = v20[48];
    OUTLINED_FUNCTION_15_20();
    v32 = sub_1B253B544();
    if (*(v30 + *(v31 + 32)) & 1) == 0 || ((v32 = v20[28], v32 == 0x65646F6358) ? (v33 = v20[29] == 0xE500000000000000) : (v33 = 0), v33 || (v32 = sub_1B256EB5C(), (v32)))
    {
      (v20[25])(v32);
      OUTLINED_FUNCTION_1_43();
      sub_1B253B49C(v34, v35);
      if (sub_1B256D93C())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
        v36 = sub_1B256D94C();
        v37 = OUTLINED_FUNCTION_30_0();
        v38(v37);
        v39 = v20[53];
        if (v36)
        {
          v40 = v20[48];
          v41 = (v39 + *(v40 + 24));
          v82 = v41[1];
          v84 = *v41;
          v86 = *(v39 + *(v40 + 28));
          sub_1B244784C(*v41, v82);
          OUTLINED_FUNCTION_2_39();
          sub_1B253B59C(v39, v42);
          sub_1B2539F14();
          swift_bridgeObjectRelease_n();

          v43 = v20[1];

          return v43(v84, v82, v86);
        }
      }

      else
      {
LABEL_39:
        v39 = v20[53];
        (*v83)(v20[46], v20[43]);
      }

      v45 = type metadata accessor for TrustStore.CacheValue;
      v46 = v39;
    }

    else
    {
      OUTLINED_FUNCTION_2_39();
    }

    sub_1B253B59C(v46, v45);
  }

  v47 = v20[27];
  swift_beginAccess();
  v48 = *(v47 + 120);
  v49 = swift_task_alloc();
  *(v49 + 16) = v13;

  sub_1B24AB0A0(sub_1B253B47C, v49, v48, v50, v51, v52, v53, v54, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v83, v85, v87, v88, v89);
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v20[55] = v56;

  if (v56)
  {
    v20[56] = v60;
    v20[57] = v58;
    v61 = swift_task_alloc();
    v20[58] = v61;
    *v61 = v20;
    v61[1] = sub_1B2533298;
    isUniquelyReferenced_nonNull_native = v20[41];
    v6 = v20[39];
    v5 = v60;

    return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, v5, v6);
  }

  v62 = swift_task_alloc();
  v20[59] = v62;
  *v62 = v20;
  OUTLINED_FUNCTION_13_18(v62);
  v63 = v20[36];
  v64 = v20[26];
  v65 = v20[27];
  v66 = v20[24];
  v67 = v20[25];
  v68 = v20[22];
  v69 = v20[23];
  v70 = v20[21];

  return sub_1B2538D3C(v63, v70, v68, v69, v66, v67, v64, v65);
}

uint64_t sub_1B2533298()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2533390()
{
  sub_1B24C5C14();
  OUTLINED_FUNCTION_38_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B243E88C(*(v0 + 328), &qword_1EB7D0EA0);
LABEL_3:

LABEL_10:

    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    *(v0 + 472) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_13_18(v18);
    v20 = *(v0 + 288);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
    v27 = *(v0 + 168);

    return sub_1B2538D3C(v20, v27, v25, v26, v23, v24, v21, v22);
  }

  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_20_15();
  v2 = sub_1B253B544();
  v1(v2);
  OUTLINED_FUNCTION_1_43();
  sub_1B253B49C(v3, v4);
  OUTLINED_FUNCTION_6_15();
  if ((sub_1B256D93C() & 1) == 0)
  {
    v13 = *(v0 + 328);
    v14 = *(v0 + 304);

    v15 = OUTLINED_FUNCTION_41_1();
    v16(v15);
    OUTLINED_FUNCTION_6_29();
    sub_1B253B59C(v14, v17);
    sub_1B243E88C(v13, &qword_1EB7D0EA0);
    goto LABEL_10;
  }

  v5 = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
  v6 = sub_1B256D94C();
  v7 = OUTLINED_FUNCTION_25_1();
  v8(v7);
  sub_1B243E88C(v5, &qword_1EB7D0EA0);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_29();
    sub_1B253B59C(v28, v29);
    goto LABEL_3;
  }

  v9 = *(v0 + 304);
  v31 = v9[1];
  v32 = *v9;
  sub_1B244784C(*v9, v31);
  OUTLINED_FUNCTION_6_29();
  sub_1B253B59C(v9, v10);

  v30 = *(v0 + 456);
  OUTLINED_FUNCTION_19_20();
  sub_1B2539F14();
  swift_bridgeObjectRelease_n();

  v11 = *(v0 + 8);

  return v11(v32, v31, v30);
}

uint64_t sub_1B2533728()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1B2533820()
{
  sub_1B24C5C14();
  OUTLINED_FUNCTION_38_7();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 280);
    sub_1B243E88C(*(v0 + 288), &qword_1EB7D2AF8);
    v39 = 0;
    v40 = *v3;
    v42 = 0;
LABEL_22:
    OUTLINED_FUNCTION_19_20();
    sub_1B2539F14();
    swift_bridgeObjectRelease_n();

    v35 = *(v0 + 8);

    v35(v40, v42, v39 | ((v2 == 1) << 8));
    return;
  }

  v38 = EnumCaseMultiPayload;
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  OUTLINED_FUNCTION_15_20();
  sub_1B253B544();
  v8 = OBJC_IVAR____TtC8StoreKit10TrustStore_memoryPressure;
  swift_beginAccess();
  v41 = *(v6 + 16);
  v41(v4, v7 + v8, v5);
  sub_1B256E14C();
  sub_1B253B49C(&qword_1EB7D2B08, MEMORY[0x1E69E80E0]);
  OUTLINED_FUNCTION_14_3();
  v9 = sub_1B256D96C();
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_25_1();
  v10(v11);
  (v10)(v4, v5);
  if (v9 & 1) != 0 || (v12 = *(v0 + 264), v13 = *(v0 + 240), v41(v12, v7 + v8, v13), sub_1B256E13C(), OUTLINED_FUNCTION_14_3(), v14 = sub_1B256D96C(), v15 = OUTLINED_FUNCTION_25_1(), v10(v15), (v10)(v12, v13), (v14))
  {
LABEL_21:
    v31 = *(v0 + 416);
    v32 = *(v0 + 384);
    sub_1B243E88C(*(v0 + 288), &qword_1EB7D2AF8);
    v33 = (v31 + *(v32 + 24));
    v39 = *(v31 + *(v32 + 28));
    v40 = *v33;
    v42 = v33[1];
    sub_1B244784C(*v33, v42);
    OUTLINED_FUNCTION_2_39();
    sub_1B253B59C(v31, v34);
    v2 = v38;
    goto LABEL_22;
  }

  v16 = *(v0 + 416);
  v17 = *(v0 + 216);
  if (*(v0 + 480) == 1)
  {
LABEL_19:
    OUTLINED_FUNCTION_50_5();
    sub_1B253AC08(sub_1B2449194);
    v29 = *(*(v17 + 112) + 16);
    sub_1B253AC64(v29, sub_1B2449194);
    v30 = *(v17 + 112);
    *(v30 + 16) = v29 + 1;
    OUTLINED_FUNCTION_3_37();
    sub_1B253B814();
    *(v17 + 112) = v30;
LABEL_20:
    swift_endAccess();
    goto LABEL_21;
  }

  v18 = 0;
  v19 = *(v17 + 112);
  v20 = *(v19 + 16);
  while (1)
  {
    if (v20 == v18)
    {
      v17 = *(v0 + 216);
      goto LABEL_19;
    }

    v21 = *(v0 + 392);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = *(v21 + 72) * v18;
    v24 = (v19 + v22 + v23);
    v25 = *v24 == **(v0 + 416) && v24[1] == *(v16 + 8);
    if (v25 || (sub_1B256EB5C() & 1) != 0)
    {
      break;
    }

    ++v18;
  }

  v26 = *(v0 + 216);
  OUTLINED_FUNCTION_50_5();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 112) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = *(v0 + 216);
    sub_1B2456E70();
    v19 = v37;
    *(v36 + 112) = v37;
  }

  if (v18 < *(v19 + 16))
  {
    v28 = *(v0 + 216);
    sub_1B253B4E0(*(v0 + 416), v19 + v22 + v23);
    *(v28 + 112) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1B2533CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  sub_1B256D82C();
  OUTLINED_FUNCTION_1_1();
  v48 = v8;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v52 = v10 - v9;
  sub_1B256D7FC();
  OUTLINED_FUNCTION_1_1();
  v53 = v12;
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  sub_1B256D7DC();
  OUTLINED_FUNCTION_1_1();
  v46 = v17;
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  sub_1B256D7AC();
  OUTLINED_FUNCTION_1_1();
  v50 = v22;
  v51 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v25 = v24 - v23;
  v26 = sub_1B256D78C();
  OUTLINED_FUNCTION_1_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v32 = v31 - v30;
  v33 = sub_1B256D75C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v38 = v37 - v36;
  if (a7)
  {
    v39 = OUTLINED_FUNCTION_41_1();
    sub_1B244784C(v39, v40);
    sub_1B246352C();
    if (a7 == 1)
    {
      sub_1B256D79C();
      sub_1B244784C(a5, a6);
      sub_1B256D7CC();
      v44 = sub_1B256D7BC();
      (*(v46 + 8))(v20, v47);
      (*(v50 + 8))(v25, v51);
    }

    else
    {
      sub_1B256D7EC();
      sub_1B244784C(a5, a6);
      sub_1B256D81C();
      v44 = sub_1B256D80C();
      (*(v48 + 8))(v52, v49);
      (*(v53 + 8))(v15, v54);
    }
  }

  else
  {
    v41 = v35;
    v42 = OUTLINED_FUNCTION_41_1();
    sub_1B244784C(v42, v43);
    sub_1B246352C();
    sub_1B256D74C();
    sub_1B244784C(a5, a6);
    sub_1B256D77C();
    v44 = sub_1B256D76C();
    (*(v28 + 8))(v32, v26);
    (*(v41 + 8))(v38, v33);
  }

  return v44 & 1;
}

unint64_t sub_1B2534370()
{
  sub_1B243E6F8();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_33_8();

  while (1)
  {
    v0 = sub_1B256DAEC();
    if (!v1)
    {
      break;
    }

    v2 = v0;
    v3 = v1;
    result = sub_1B253AFD4(v0, v1);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
      return result;
    }

    v5 = (result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2;
    if (v5 && result != 133 && (sub_1B256D90C() & 1) == 0)
    {
      MEMORY[0x1B2749D40](v2, v3);
    }
  }

  v6 = sub_1B256D1AC();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    sub_1B24A231C();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1B2534548()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 429) = v1;
  *(v0 + 272) = v2;
  *(v0 + 280) = v3;
  *(v0 + 264) = v4;
  v5 = type metadata accessor for SKLogger();
  *(v0 + 288) = v5;
  OUTLINED_FUNCTION_2_2(v5);
  *(v0 + 296) = OUTLINED_FUNCTION_250();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_2_2(v6);
  *(v0 + 304) = OUTLINED_FUNCTION_250();
  v7 = sub_1B256D36C();
  *(v0 + 312) = v7;
  OUTLINED_FUNCTION_26_7(v7);
  *(v0 + 320) = v8;
  *(v0 + 328) = swift_task_alloc();
  *(v0 + 336) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B48);
  OUTLINED_FUNCTION_2_2(v9);
  *(v0 + 344) = swift_task_alloc();
  *(v0 + 352) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B50);
  *(v0 + 360) = v10;
  OUTLINED_FUNCTION_2_2(v10);
  *(v0 + 368) = swift_task_alloc();
  *(v0 + 376) = swift_task_alloc();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B253470C()
{
  v57 = v0;
  v2 = 0;
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 272);
  v4 = MEMORY[0x1E69E7CC0];
  v54 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 16);
  v6 = *MEMORY[0x1E695E480];
  v7 = v3 + 40;
  v51 = v7;
LABEL_2:
  v53 = v4;
  *(v0 + 384) = v4;
  v8 = v7 + 16 * v2;
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_0_17();
LABEL_35:
      __swift_project_value_buffer(*(v0 + 288), qword_1ED69A108);
      sub_1B256E4FC();

      v54 = 0xD00000000000002FLL;
      v55 = 0x80000001B2592410;
      *(v0 + 424) = v1;
      v33 = sub_1B256EAAC();
      MEMORY[0x1B2749D50](v33);

      MEMORY[0x1B2749D50](41, 0xE100000000000000);
      v35 = v54;
      v34 = v55;
      v36 = sub_1B256E0BC();

      v37 = sub_1B256D5CC();

      if (os_log_type_enabled(v37, v36))
      {
        v38 = OUTLINED_FUNCTION_21_3();
        v39 = OUTLINED_FUNCTION_20_4();
        v54 = v39;
        *v38 = 136446466;
        *(v38 + 4) = OUTLINED_FUNCTION_75_2(v39, v40, &v54);
        *(v38 + 12) = 2082;
        v41 = sub_1B2519814(v35, v34, &v54);

        *(v38 + 14) = v41;
        _os_log_impl(&dword_1B23EF000, v37, v36, "%{public}s%{public}s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_11_4();
      }

      else
      {
      }

      v42 = *(v0 + 264);
      v43 = 8;
LABEL_44:
      *v42 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
      OUTLINED_FUNCTION_122_2();
      swift_storeEnumTagMultiPayload();

LABEL_45:
      OUTLINED_FUNCTION_21_16();

      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_8_7();

      __asm { BRAA            X1, X16 }
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_49;
    }

    v10 = OUTLINED_FUNCTION_30_0();
    sub_1B244784C(v10, v11);
    OUTLINED_FUNCTION_30_0();
    v12 = sub_1B256D1FC();
    v1 = SecCertificateCreateWithData(v6, v12);

    v13 = OUTLINED_FUNCTION_30_0();
    v15 = sub_1B2443AE4(v13, v14);
    v8 += 16;
    ++v2;
    if (v1)
    {
      MEMORY[0x1B2749EB0](v15);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B256DC7C();
      }

      OUTLINED_FUNCTION_14_3();
      sub_1B256DCAC();
      v4 = v54;
      v2 = v9;
      v7 = v51;
      goto LABEL_2;
    }
  }

  if (sub_1B24D0D24(v53) != v5)
  {
    v17 = *(v0 + 264);

    *v17 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
    OUTLINED_FUNCTION_122_2();
    swift_storeEnumTagMultiPayload();
    goto LABEL_45;
  }

  if (*(v0 + 429) == 1)
  {
    BasicX509 = SecPolicyCreateBasicX509();
  }

  else
  {
    BasicX509 = SKPolicyCreateJWS();
  }

  v6 = BasicX509;
  *(v0 + 392) = BasicX509;
  *(v0 + 224) = 0;
  type metadata accessor for SecCertificate(0);
  *(v0 + 400) = v18;
  v19 = sub_1B256DC4C();
  LODWORD(v1) = SecTrustCreateWithCertificates(v19, v6, (v0 + 224));

  v20 = *(v0 + 224);
  *(v0 + 408) = v20;
  if (v1 || !v20)
  {

    if (qword_1ED699E80 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_35;
  }

  v21 = v6;
  v22 = *(v0 + 429);
  v1 = v20;
  v23 = sub_1B256D2AC();
  v24 = OUTLINED_FUNCTION_25_1();
  SecTrustSetVerifyDate(v24, v25);

  if (v22 == 1)
  {
    v52 = v1;
    v26 = sub_1B24D0D24(v53);
    v27 = 0;
    v6 = (v53 & 0xC000000000000001);
    LODWORD(v1) = v53 & 0xFFFFFFF8;
    while (1)
    {
      if (v26 == v27)
      {
        goto LABEL_39;
      }

      if (v6)
      {
        v28 = MEMORY[0x1B274A7A0](v27, v53);
      }

      else
      {
        if (v27 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v28 = *(v53 + 8 * v27 + 32);
      }

      v29 = v28;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_50;
      }

      *(v0 + 248) = 0;
      SecCertificateCopyCommonName(v28, (v0 + 248));
      if (!*(v0 + 248))
      {
        break;
      }

      if (sub_1B256D9BC() == 0xD000000000000019 && 0x80000001B2592480 == v30)
      {
      }

      else
      {
        v32 = sub_1B256EB5C();

        if ((v32 & 1) == 0)
        {

          goto LABEL_43;
        }
      }

      ++v27;
    }

LABEL_43:
    v42 = *(v0 + 264);
    v43 = 4;
    goto LABEL_44;
  }

LABEL_39:
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_8_7();

  return MEMORY[0x1EEE6DFA0](v44, v45, v46);
}

uint64_t sub_1B2534D28()
{
  OUTLINED_FUNCTION_4_0();
  v0[10] = v0;
  v0[15] = v0 + 428;
  v0[11] = sub_1B2534DE8;
  v1 = swift_continuation_init();
  sub_1B2538004(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B2534DE8()
{
  OUTLINED_FUNCTION_4_0();
  *(*v0 + 430) = *(*v0 + 428);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B2534EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  v26 = *MEMORY[0x1E69E9840];
  if (*(v10 + 430) == 1)
  {
    v11 = *(v10 + 408);
    v12 = *(v10 + 264);

    *v12 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_21_16();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_326();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, v26, a10);
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_326();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }
}

uint64_t sub_1B253505C()
{
  OUTLINED_FUNCTION_4_0();
  v0[18] = v0;
  v0[23] = v0 + 32;
  v0[19] = sub_1B253511C;
  v1 = swift_continuation_init();
  sub_1B2537364(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 18);
}

uint64_t sub_1B253511C()
{
  OUTLINED_FUNCTION_4_0();
  *(*v0 + 416) = *(*v0 + 256);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B253523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  v29 = *MEMORY[0x1E69E9840];
  if (*(v10 + 416))
  {
    v11 = sub_1B256DC4C();

    v12 = OUTLINED_FUNCTION_41_1();
    SecTrustSetAnchorCertificates(v12, v13);

    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_326();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v18 = *(v10 + 408);
    v19 = *(v10 + 264);

    *v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_21_16();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_326();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
  }
}

uint64_t sub_1B25353C8()
{
  v1 = v0[51];
  v2 = v0[46];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B253549C;
  v3 = swift_continuation_init();
  sub_1B2536104(v3, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B253549C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;
  sub_1B24C42F0();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B25355D8()
{
  v59 = v0;
  v58[2] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 376);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 408);
    v3 = *(v0 + 264);

    *v3 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
  }

  else
  {
    v4 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B58);
    sub_1B24C42F0();
    *(v0 + 232) = 0;
    v5 = SecKeyCopyExternalRepresentation(v4, (v0 + 232));
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 344);
      v8 = sub_1B256D22C();
      v54 = v9;
      v55 = v8;

      sub_1B24C5C14();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
      v12 = *(v0 + 336);
      v13 = *(v0 + 344);
      v57 = v4;
      if (EnumTagSinglePayload == 1)
      {
        v15 = *(v0 + 320);
        v14 = *(v0 + 328);
        v17 = *(v0 + 304);
        v16 = *(v0 + 312);
        sub_1B243E88C(v13, &qword_1EB7D2B48);
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
        sub_1B256D34C();
        sub_1B256D2CC();
        (*(v15 + 8))(v14, v16);
        if (__swift_getEnumTagSinglePayload(v17, 1, v16) != 1)
        {
          sub_1B243E88C(*(v0 + 304), &qword_1EB7D0088);
        }
      }

      else
      {
        v24 = *(v0 + 312);
        v25 = *(v0 + 320);
        v26 = *(v0 + 304);
        (*(v25 + 16))(v26, v13 + *(v10 + 36), v24);
        sub_1B243E88C(v13, &qword_1EB7D2AC0);
        __swift_storeEnumTagSinglePayload(v26, 0, 1, v24);
        (*(v25 + 32))(v12, v26, v24);
      }

      v27 = *(v0 + 408);
      v29 = *(v0 + 384);
      v28 = *(v0 + 392);
      v30 = *(v0 + 352);
      v31 = *(v0 + 336);
      v33 = *(v0 + 312);
      v32 = *(v0 + 320);
      v34 = *(v0 + 264);
      v35 = type metadata accessor for SignatureSupport.ChainValidationSuccess(0);
      sub_1B2535C90(v29, v34 + *(v35 + 24));

      sub_1B243E88C(v30, &qword_1EB7D2B48);
      *v34 = v55;
      v34[1] = v54;
      (*(v32 + 32))(v34 + *(v35 + 20), v31, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
    }

    else
    {

      if (qword_1ED699E80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
      }

      __swift_project_value_buffer(*(v0 + 288), qword_1ED69A108);
      sub_1B253B814();
      v58[0] = 0;
      v58[1] = 0xE000000000000000;
      sub_1B256E4FC();
      *(v0 + 208) = 0;
      *(v0 + 216) = 0xE000000000000000;
      MEMORY[0x1B2749D50](0xD000000000000034, 0x80000001B2592440);
      v21 = *(v0 + 232);
      if (v21)
      {
        type metadata accessor for CFError(0);
        sub_1B253B49C(&qword_1EB7D2B60, type metadata accessor for CFError);
        OUTLINED_FUNCTION_122_2();
        v22 = swift_allocError();
        *v23 = v21;
      }

      else
      {
        type metadata accessor for StoreKitError();
        sub_1B253B49C(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
        OUTLINED_FUNCTION_122_2();
        v22 = swift_allocError();
        swift_storeEnumTagMultiPayload();
      }

      *(v0 + 240) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      sub_1B256E78C();

      v37 = *(v0 + 208);
      v36 = *(v0 + 216);
      v38 = sub_1B256E0BC();
      v39 = sub_1B256D5CC();
      v40 = os_log_type_enabled(v39, v38);
      v41 = *(v0 + 408);
      v42 = *(v0 + 392);
      v43 = *(v0 + 352);
      v44 = *(v0 + 296);
      if (v40)
      {
        v56 = *(v0 + 352);
        v45 = OUTLINED_FUNCTION_21_3();
        v46 = OUTLINED_FUNCTION_20_4();
        v58[0] = v46;
        *v45 = 136446466;
        *(v45 + 4) = OUTLINED_FUNCTION_75_2(v46, v47, v58);
        *(v45 + 12) = 2082;
        v48 = sub_1B2519814(v37, v36, v58);

        *(v45 + 14) = v48;
        _os_log_impl(&dword_1B23EF000, v39, v38, "%{public}s%{public}s", v45, 0x16u);
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_11_4();

        OUTLINED_FUNCTION_14_20();
        sub_1B253B59C(v44, v49);
        v50 = v56;
      }

      else
      {

        OUTLINED_FUNCTION_14_20();
        sub_1B253B59C(v44, v51);
        v50 = v43;
      }

      sub_1B243E88C(v50, &qword_1EB7D2B48);
      **(v0 + 264) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
      OUTLINED_FUNCTION_122_2();
    }
  }

  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_21_16();

  OUTLINED_FUNCTION_7_2();

  return v52();
}

void sub_1B2535C90(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0080);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_5();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v49[-v10];
  v11 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_0_5();
  v54 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49[-v18];
  v55 = a1;
  v56 = 0;
  v57 = sub_1B253860C;
  v58 = 0;

  v20 = COERCE_DOUBLE(sub_1B2542F8C());
  v21 = *&v20;
  v50 = v22;
  if ((v22 & 1) == 0)
  {
    v23 = v20;
    sub_1B24D0D24(a1);
    OUTLINED_FUNCTION_63_4();
    while (&v55 != v21)
    {
      if (v3)
      {
        v24 = MEMORY[0x1B274A7A0](v21, a1);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v21 >= *(v2 + 16))
        {
          goto LABEL_33;
        }

        v24 = *(a1 + 8 * v21 + 32);
      }

      v25 = v24;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_32;
      }

      SKSecCertificateNotValidBefore();
      v27 = v26;

      if (v23 < v27)
      {
        v23 = v27;
      }

      ++v21;
    }
  }

  v55 = a1;
  v56 = 0;
  v57 = sub_1B2538638;
  v58 = 0;

  v28 = COERCE_DOUBLE(sub_1B2542F8C());
  if (v29)
  {
  }

  else
  {
    v30 = v28;
    sub_1B24D0D24(a1);
    OUTLINED_FUNCTION_63_4();
    while (&v55 != v21)
    {
      if (v3)
      {
        v31 = MEMORY[0x1B274A7A0](v21, a1);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v21 >= *(v2 + 16))
        {
          goto LABEL_36;
        }

        v31 = *(a1 + 8 * v21 + 32);
      }

      v32 = v31;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_35;
      }

      SKSecCertificateNotValidAfter();
      v34 = v33;

      if (v34 < v30)
      {
        v30 = v34;
      }

      ++v21;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  sub_1B256D26C();
  v35 = v54;
  sub_1B256D27C();
  OUTLINED_FUNCTION_1_43();
  sub_1B253B49C(v36, v37);
  if (OUTLINED_FUNCTION_46_6())
  {
LABEL_30:
    v40 = *(v13 + 32);
    v41 = v51;
    v40(v51, v19, v11);
    v42 = v13;
    v43 = v52;
    v40(&v41[*(v52 + 48)], v35, v11);
    sub_1B24C5C14();
    v44 = *(v43 + 48);
    v45 = v53;
    v40(v53, v8, v11);
    v46 = *(v42 + 8);
    v46(&v8[v44], v11);
    sub_1B24C42F0();
    v47 = *(v43 + 48);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
    v40(&v45[*(v48 + 36)], &v8[v47], v11);
    v46(v8, v11);
    return;
  }

  __break(1u);
LABEL_29:
  sub_1B256D25C();
  v35 = v54;
  sub_1B256D25C();
  OUTLINED_FUNCTION_1_43();
  sub_1B253B49C(v38, v39);
  if (OUTLINED_FUNCTION_46_6())
  {
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1B2536104(uint64_t a1, void *a2)
{
  v19 = a1;
  v3 = sub_1B256D69C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B256D6CC();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B256D6AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B246063C(0, &qword_1EB7CDC60);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F98], v9);
  v13 = sub_1B256E10C();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  aBlock[4] = sub_1B253B8A4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B243963C;
  aBlock[3] = &block_descriptor_63;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  sub_1B256D6BC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B253B49C(&unk_1EB7D18C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21E0);
  sub_1B24F9034();
  sub_1B256E40C();
  MEMORY[0x1B274A370](0, v8, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v3);
  (*(v6 + 8))(v8, v20);
}

void sub_1B253648C(__SecTrust *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B50);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  v7 = sub_1B256D6AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B246063C(0, &qword_1EB7CDC60);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F98], v7);
  v11 = sub_1B256E10C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v29 = sub_1B253B8AC;
  v30 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1B25372D0;
  v28 = &block_descriptor_69;
  v13 = _Block_copy(&aBlock);

  v14 = SecTrustEvaluateAsyncWithError(a1, v11, v13);
  _Block_release(v13);

  if (v14)
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    aBlock = 0;
    v26 = 0xE000000000000000;
    sub_1B256E4FC();

    aBlock = 0xD000000000000030;
    v26 = 0x80000001B25926D0;
    v24[3] = v14;
    v16 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v16);

    v18 = aBlock;
    v17 = v26;
    v19 = sub_1B256E0BC();

    v20 = sub_1B256D5CC();

    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
      *(v21 + 12) = 2082;
      v23 = sub_1B2519814(v18, v17, &aBlock);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_1B23EF000, v20, v19, "%{public}s%{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v22, -1, -1);
      MEMORY[0x1B274BFF0](v21, -1, -1);
    }

    else
    {
    }

    *v6 = 8;
    swift_storeEnumTagMultiPayload();
    sub_1B24C42F0();
    swift_continuation_resume();
  }
}

void sub_1B25368C8(__SecTrust *a1, char a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B50);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  if (a2)
  {
    v14 = SecTrustCopyKey(a1);
    if (v14)
    {
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B58) + 48);
      *v13 = v15;
      v17 = v15;
      sub_1B2536FB4(a1, v13 + v16);
      swift_storeEnumTagMultiPayload();
      sub_1B24C42F0();
LABEL_19:
      swift_continuation_resume();

      return;
    }

    *v13 = 6;
    swift_storeEnumTagMultiPayload();
    sub_1B24C42F0();
  }

  else
  {
    v39 = a4;
    result = kSecTrustResultInvalid;
    SecTrustGetTrustResult(a1, &result);
    if (result == kSecTrustResultRecoverableTrustFailure)
    {
      v18 = 0x80000001B2592770;
      v19 = 0xD00000000000001ALL;
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1B256E4FC();

      v42 = 0xD00000000000002CLL;
      v43 = 0x80000001B2592710;
      LODWORD(v40) = result;
      v20 = sub_1B256EAAC();
      MEMORY[0x1B2749D50](v20);

      MEMORY[0x1B2749D50](41, 0xE100000000000000);
      v19 = v42;
      v18 = v43;
    }

    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1ED69A108);
    sub_1B253B814();
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD00000000000002ALL, 0x80000001B2592740);
    MEMORY[0x1B2749D50](v19, v18);

    MEMORY[0x1B2749D50](2618, 0xE200000000000000);
    if (a3)
    {
      type metadata accessor for CFError(0);
      sub_1B253B49C(&qword_1EB7D2B60, type metadata accessor for CFError);
      v21 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      type metadata accessor for StoreKitError();
      sub_1B253B49C(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
      v21 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v40 = v21;
    v23 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();

    v24 = v42;
    v25 = v43;
    v26 = sub_1B256E0BC();
    v27 = sub_1B256D5CC();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = a3;
      v30 = v23;
      v31 = v29;
      v42 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_1B2519814(0, 0xE000000000000000, &v42);
      *(v28 + 12) = 2082;
      v32 = sub_1B2519814(v24, v25, &v42);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1B23EF000, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      swift_arrayDestroy();
      v33 = v31;
      v23 = v30;
      a3 = v38;
      MEMORY[0x1B274BFF0](v33, -1, -1);
      MEMORY[0x1B274BFF0](v28, -1, -1);
    }

    else
    {
    }

    sub_1B253B59C(v10, type metadata accessor for SKLogger);
    if (a3)
    {
      type metadata accessor for CFError(0);
      sub_1B253B49C(&qword_1EB7D2B60, type metadata accessor for CFError);
      v34 = swift_allocError();
      *v35 = v23;
      v36 = v23;
      v17 = sub_1B256D0CC();

      if ([(__SecKey *)v17 code]== -67820)
      {
        *v13 = 9;
        swift_storeEnumTagMultiPayload();
        sub_1B24C42F0();
        goto LABEL_19;
      }
    }

    *v13 = 8;
    swift_storeEnumTagMultiPayload();
    sub_1B24C42F0();
  }

  swift_continuation_resume();
}

void sub_1B2536FB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0080);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_5();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_0_5();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v35 = 0;
  v36[0] = 0;
  SKSecTrustCopyResultValidityRange(a1, v36, &v35);
  if (v36[0] && v35)
  {
    sub_1B256D33C();
    sub_1B256D33C();
    OUTLINED_FUNCTION_1_43();
    sub_1B253B49C(v22, v23);
    if ((sub_1B256D94C() & 1) == 0)
    {
      __break(1u);
    }

    v24 = a2;
    v25 = *(v14 + 32);
    v25(v11, v21, v12);
    v25(&v11[*(v4 + 48)], v18, v12);
    sub_1B24C5C14();
    v26 = *(v4 + 48);
    v25(v24, v8, v12);
    v27 = *(v14 + 8);
    v27(&v8[v26], v12);
    sub_1B24C42F0();
    v28 = *(v4 + 48);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
    v25((v24 + *(v29 + 36)), &v8[v28], v12);
    v27(v8, v12);
    v30 = v24;
    v31 = 0;
    v32 = 1;
    v33 = v29;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AC0);
    OUTLINED_FUNCTION_16_2();
  }

  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

void sub_1B25372D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t sub_1B2537364(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = [objc_opt_self() defaultBroker];
  v18 = sub_1B253B86C;
  v19 = v2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B244BD28;
  v17 = &block_descriptor_26;
  v4 = _Block_copy(&v14);

  v5 = [v3 storeKitServiceWithErrorHandler_];
  _Block_release(v4);

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v18 = sub_1B253B88C;
    v19 = v6;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1B2537F6C;
    v17 = &block_descriptor_45;
    v7 = _Block_copy(&v14);

    [v5 xcodeTestCertificatesWithReply_];
    _Block_release(v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v9, qword_1ED69A108);
    v10 = sub_1B256E0AC();
    v11 = sub_1B256D5CC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B2519814(0, 0xE000000000000000, &v14);
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1B2519814(0xD000000000000048, 0x80000001B25924A0, &v14);
      _os_log_impl(&dword_1B23EF000, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v13, -1, -1);
      MEMORY[0x1B274BFF0](v12, -1, -1);
    }

    **(*(a1 + 64) + 40) = 0;
    swift_continuation_resume();
  }
}

uint64_t sub_1B2537698(uint64_t a1, uint64_t a2)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_1ED69A108);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000003FLL, 0x80000001B2592570);
  v4 = sub_1B256D0CC();
  v5 = [v4 description];
  v6 = sub_1B256D9BC();
  v8 = v7;

  MEMORY[0x1B2749D50](v6, v8);

  v9 = sub_1B256E0AC();

  v10 = sub_1B256D5CC();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B2519814(0, 0xE000000000000000, v15);
    *(v11 + 12) = 2082;
    v13 = sub_1B2519814(0, 0xE000000000000000, v15);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v12, -1, -1);
    MEMORY[0x1B274BFF0](v11, -1, -1);
  }

  else
  {
  }

  **(*(a2 + 64) + 40) = 0;

  return swift_continuation_resume();
}

void sub_1B25378F4(uint64_t a1, __SecCertificate *a2, unint64_t a3)
{
  v4 = a3;
  if (a2)
  {
    v3 = a2;
    v5 = a2;
    if (qword_1ED699E80 != -1)
    {
LABEL_36:
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v6, qword_1ED69A108);
    sub_1B256E4FC();

    v37[0] = 0xD00000000000002ALL;
    v37[1] = 0x80000001B2592540;
    v7 = sub_1B256D0CC();
    v8 = [v7 description];
    v9 = sub_1B256D9BC();
    v11 = v10;

    MEMORY[0x1B2749D50](v9, v11);

    v12 = sub_1B256E0AC();

    v13 = sub_1B256D5CC();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37[0] = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_1B2519814(0, 0xE000000000000000, v37);
      *(v14 + 12) = 2082;
      v16 = sub_1B2519814(0xD00000000000002ALL, 0x80000001B2592540, v37);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v15, -1, -1);
      MEMORY[0x1B274BFF0](v14, -1, -1);
    }

    else
    {
    }

    **(*(v4 + 64) + 40) = 0;
    swift_continuation_resume();
  }

  else
  {
    if (a1)
    {
      v17 = 0;
      v18 = MEMORY[0x1E69E7CC0];
      v37[0] = MEMORY[0x1E69E7CC0];
      v19 = *(a1 + 16);
      v20 = a1 + 40;
LABEL_7:
      v21 = (v20 + 16 * v17);
      while (v19 != v17)
      {
        if (v17 >= v19)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v4 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_35;
        }

        v23 = *(v21 - 1);
        v22 = *v21;
        sub_1B244784C(v23, *v21);
        v24 = sub_1B256D1FC();
        v3 = SecCertificateCreateWithData(0, v24);

        v25 = sub_1B2443AE4(v23, v22);
        ++v17;
        v21 += 2;
        if (v3)
        {
          MEMORY[0x1B2749EB0](v25);
          if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B256DC7C();
          }

          sub_1B256DCAC();
          v18 = v37[0];
          v17 = v4;
          goto LABEL_7;
        }
      }

      if (sub_1B24D0D24(v18))
      {
        **(*(a3 + 64) + 40) = v18;
      }

      else
      {

        if (qword_1ED699E80 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v31, qword_1ED69A108);
        v32 = sub_1B256E0AC();
        v33 = sub_1B256D5CC();
        if (os_log_type_enabled(v33, v32))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37[0] = v35;
          *v34 = 136446466;
          *(v34 + 4) = sub_1B2519814(0, 0xE000000000000000, v37);
          *(v34 + 12) = 2082;
          *(v34 + 14) = sub_1B2519814(0xD000000000000021, 0x80000001B2592510, v37);
          _os_log_impl(&dword_1B23EF000, v33, v32, "%{public}s%{public}s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B274BFF0](v35, -1, -1);
          MEMORY[0x1B274BFF0](v34, -1, -1);
        }

        **(*(a3 + 64) + 40) = 0;
      }
    }

    else
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v26, qword_1ED69A108);
      v27 = sub_1B256E0AC();
      v28 = sub_1B256D5CC();
      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136446466;
        *(v29 + 4) = sub_1B2519814(0, 0xE000000000000000, v37);
        *(v29 + 12) = 2082;
        *(v29 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B25924F0, v37);
        _os_log_impl(&dword_1B23EF000, v28, v27, "%{public}s%{public}s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274BFF0](v30, -1, -1);
        MEMORY[0x1B274BFF0](v29, -1, -1);
      }

      **(*(v4 + 64) + 40) = 0;
    }

    swift_continuation_resume();
  }
}

uint64_t sub_1B2537F6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B256DC5C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1B2538004(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = [objc_opt_self() defaultBroker];
  v18 = sub_1B253B894;
  v19 = v2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1B244BD28;
  v17 = &block_descriptor_51;
  v4 = _Block_copy(&v14);

  v5 = [v3 storeKitServiceWithErrorHandler_];
  _Block_release(v4);

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v18 = sub_1B253B89C;
    v19 = v6;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1B25385B8;
    v17 = &block_descriptor_57;
    v7 = _Block_copy(&v14);

    [v5 xcodeTestCertificatesShouldSimulateRevocationWithReply_];
    _Block_release(v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v9, qword_1ED69A108);
    v10 = sub_1B256E0AC();
    v11 = sub_1B256D5CC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B2519814(0, 0xE000000000000000, &v14);
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1B2519814(0xD00000000000006BLL, 0x80000001B25925B0, &v14);
      _os_log_impl(&dword_1B23EF000, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v13, -1, -1);
      MEMORY[0x1B274BFF0](v12, -1, -1);
    }

    **(*(a1 + 64) + 40) = 0;
    swift_continuation_resume();
  }
}

uint64_t sub_1B2538338(uint64_t a1, uint64_t a2)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_1ED69A108);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000062, 0x80000001B2592630);
  v4 = sub_1B256D0CC();
  v5 = [v4 description];
  v6 = sub_1B256D9BC();
  v8 = v7;

  MEMORY[0x1B2749D50](v6, v8);

  v9 = sub_1B256E0AC();

  v10 = sub_1B256D5CC();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B2519814(0, 0xE000000000000000, v15);
    *(v11 + 12) = 2082;
    v13 = sub_1B2519814(0, 0xE000000000000000, v15);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v12, -1, -1);
    MEMORY[0x1B274BFF0](v11, -1, -1);
  }

  else
  {
  }

  **(*(a2 + 64) + 40) = 0;

  return swift_continuation_resume();
}

uint64_t sub_1B25385B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1B253860C@<X0>(void *a1@<X8>)
{
  result = SKSecCertificateNotValidBefore();
  *a1 = v3;
  return result;
}

uint64_t sub_1B2538638@<X0>(void *a1@<X8>)
{
  result = SKSecCertificateNotValidAfter();
  *a1 = v3;
  return result;
}

uint64_t sub_1B2538664()
{
  sub_1B256CE7C();
  swift_allocObject();
  result = sub_1B256CE6C();
  qword_1EB7D2AA0 = result;
  return result;
}

void *sub_1B25386A4()
{
  type metadata accessor for TrustStore(0);
  v0 = swift_allocObject();
  result = sub_1B253AB74();
  qword_1EB7EDFD0 = v0;
  return result;
}

uint64_t sub_1B25386E4()
{
  if (*(v0 + 128))
  {

    sub_1B256DE7C();
  }

  v1 = OBJC_IVAR____TtC8StoreKit10TrustStore_memoryPressure;
  sub_1B256E15C();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B2538794()
{
  sub_1B25386E4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B25387E8()
{
  result = sub_1B256E15C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B25388F4()
{
  sub_1B256D36C();
  if (v0 <= 0x3F)
  {
    sub_1B25389A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B25389A4()
{
  if (!qword_1EB7D2AD8)
  {
    sub_1B256D36C();
    sub_1B253B49C(&qword_1EB7D0090, MEMORY[0x1E6969530]);
    v0 = sub_1B256D95C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D2AD8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JWSInternals.SigningAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for JWSError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B2538C04()
{
  result = qword_1EB7D2AE0;
  if (!qword_1EB7D2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2AE0);
  }

  return result;
}

unint64_t sub_1B2538C5C()
{
  result = qword_1EB7D2AE8;
  if (!qword_1EB7D2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2AE8);
  }

  return result;
}

uint64_t sub_1B2538D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v16;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v8[18] = a2;
  v8[19] = a3;
  v8[17] = a1;
  v8[26] = type metadata accessor for SignatureSupport.ChainValidationSuccess(0);
  v8[27] = swift_task_alloc();
  v8[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v8[31] = swift_task_alloc();
  v10 = sub_1B256D36C();
  v8[32] = v10;
  v11 = *(v10 - 8);
  v8[33] = v11;
  v8[34] = *(v11 + 64);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  v8[37] = swift_task_alloc();
  v8[38] = type metadata accessor for JWSInternals.Header(0);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[41] = v12;
  *(v12 + 16) = v15;
  *(v12 + 24) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1B2538F68, a8, 0);
}

uint64_t sub_1B2538F68()
{
  v79 = v0;
  sub_1B2463320();
  v2 = sub_1B256D1AC();
  v4 = v3;

  *(v0 + 336) = v2;
  *(v0 + 344) = v4;
  if (v4 >> 60 == 15)
  {
    OUTLINED_FUNCTION_58_3();
    v5 = 7;
LABEL_34:
    *v1 = v5;
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AF8);
    swift_storeEnumTagMultiPayload();

    OUTLINED_FUNCTION_26_13();

    OUTLINED_FUNCTION_7_2();

    return v68();
  }

  else
  {
    if (qword_1EB7CFC78 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      sub_1B253B49C(&qword_1EB7D2B38, type metadata accessor for JWSInternals.Header);
      OUTLINED_FUNCTION_14_3();
      sub_1B256CE5C();
      v75 = v2;
      v6 = *(v0 + 320);
      OUTLINED_FUNCTION_16_20();
      sub_1B253B544();
      v7 = *(v6 + 16);
      if (!v7)
      {
        v15 = *(v0 + 296);
        sub_1B24C5C14();
        v16 = sub_1B256D14C();
        if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
        {
          v17 = *(v0 + 296);
          OUTLINED_FUNCTION_0_45();
          sub_1B253B59C(v18, v19);
          sub_1B2443AD0(v2, v4);
          sub_1B243E88C(v17, &qword_1EB7D0018);
        }

        else
        {
          sub_1B243E88C(*(v0 + 296), &qword_1EB7D0018);
          if (qword_1ED699E80 != -1)
          {
            OUTLINED_FUNCTION_0_17();
          }

          v29 = type metadata accessor for SKLogger();
          __swift_project_value_buffer(v29, qword_1ED69A108);
          v78[0] = 0;
          v78[1] = 0xE000000000000000;
          sub_1B256E4FC();
          *(v0 + 112) = 0;
          *(v0 + 120) = 0xE000000000000000;
          MEMORY[0x1B2749D50](0xD000000000000035, 0x80000001B25923D0);
          sub_1B256E78C();
          v31 = *(v0 + 112);
          v30 = *(v0 + 120);
          v1 = sub_1B256E0AC();

          v32 = sub_1B256D5CC();

          v33 = os_log_type_enabled(v32, v1);
          v34 = *(v0 + 320);
          if (v33)
          {
            v35 = OUTLINED_FUNCTION_21_3();
            v36 = OUTLINED_FUNCTION_20_4();
            v78[0] = v36;
            *v35 = 136446466;
            *(v35 + 4) = OUTLINED_FUNCTION_75_2(v36, v37, v78);
            *(v35 + 12) = 2082;
            v38 = sub_1B2519814(v31, v30, v78);

            *(v35 + 14) = v38;
            _os_log_impl(&dword_1B23EF000, v32, v1, "%{public}s%{public}s", v35, 0x16u);
            OUTLINED_FUNCTION_96_0();
            OUTLINED_FUNCTION_11_4();
            OUTLINED_FUNCTION_11_4();
            v39 = OUTLINED_FUNCTION_6_15();
            sub_1B2443AD0(v39, v40);
          }

          else
          {
            v65 = OUTLINED_FUNCTION_6_15();
            sub_1B2443AD0(v65, v66);
          }

          OUTLINED_FUNCTION_0_45();
          sub_1B253B59C(v34, v67);
        }

        OUTLINED_FUNCTION_58_3();
        v5 = 3;
        goto LABEL_34;
      }

      v8 = *(v7 + 16);
      v2 = MEMORY[0x1E69E7CC0];
      if (!v8)
      {
        break;
      }

      v73 = v4;
      v78[0] = MEMORY[0x1E69E7CC0];
      sub_1B2455E78(0, v8, 0);
      v4 = 0;
      v2 = v78[0];
      v1 = (v7 + 40);
      v77 = v0;
      while (v4 < *(v7 + 16))
      {

        v9 = sub_1B2534370();
        v11 = v10;

        v78[0] = v2;
        v13 = *(v2 + 16);
        v12 = *(v2 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1B2455E78((v12 > 1), v13 + 1, 1);
          v2 = v78[0];
        }

        ++v4;
        *(v2 + 16) = v13 + 1;
        v14 = v2 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        v1 += 16;
        v0 = v77;
        if (v8 == v4)
        {
          v4 = v73;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_39:
      swift_once();
    }

LABEL_14:
    *(v0 + 352) = 0;
    *(v0 + 360) = v2;
    v20 = *(v0 + 320);
    v21 = *(v20 + *(*(v0 + 304) + 32));
    *(v0 + 416) = v21;
    v22 = v0;
    if (v21 == 3)
    {
      v23 = *(v0 + 136);
      sub_1B2443AD0(v75, v4);

      OUTLINED_FUNCTION_0_45();
      sub_1B253B59C(v20, v24);
      *v23 = 2;
      goto LABEL_35;
    }

    v25 = v2;
    v26 = v20[1];
    v74 = v21;
    if (v26 && (*v20 == 0x63585F656C707041 ? (v27 = v26 == 0xEF79654B5F65646FLL) : (v27 = 0), v27 || (sub_1B256EB5C() & 1) != 0))
    {
      v28 = sub_1B253B6B4();
    }

    else
    {
      v28 = 0;
    }

    v41 = v28 & 1;
    *(v22 + 417) = v28 & 1;
    v42 = *(v22 + 280);
    v43 = *(v22 + 288);
    v45 = *(v22 + 264);
    v44 = *(v22 + 272);
    v46 = *(v22 + 256);
    v76 = *(v22 + 192);
    v70 = *(v22 + 168);
    v72 = *(v22 + 160);
    v71 = *(v22 + 144);
    (*(v22 + 176))();
    sub_1B256DDAC();
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    (*(v45 + 16))(v42, v43, v46);
    v51 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v52 = swift_allocObject();
    *(v52 + 2) = 0;
    *(v52 + 3) = 0;
    *(v52 + 4) = v25;
    v53 = *(v45 + 32);
    *(v22 + 368) = v53;
    *(v22 + 376) = (v45 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53(&v52[v51], v42, v46);
    v52[v51 + v44] = v41;

    sub_1B247DEE0();
    v55 = v54;
    *(v22 + 384) = v54;
    *(v22 + 16) = v71;
    *(v22 + 32) = v72;
    *(v22 + 40) = v70;
    sub_1B253B7C0();

    v56 = sub_1B256DB9C();
    v58 = v57;
    *(v22 + 392) = v56;
    *(v22 + 400) = v57;
    OUTLINED_FUNCTION_50_5();

    sub_1B253AC08(sub_1B24490B0);
    v59 = *(*(v76 + 120) + 16);
    sub_1B253AC64(v59, sub_1B24490B0);
    v60 = *(v76 + 120);
    *(v60 + 16) = v59 + 1;
    v61 = v60 + 32 * v59;
    *(v61 + 32) = v56;
    *(v61 + 40) = v58;
    *(v61 + 48) = v74;
    *(v61 + 56) = v55;
    *(v76 + 120) = v60;
    swift_endAccess();
    v62 = swift_task_alloc();
    *(v22 + 408) = v62;
    *v62 = v22;
    v62[1] = sub_1B253997C;
    v63 = *(v22 + 240);
    v64 = *(v22 + 224);

    return MEMORY[0x1EEE6DA40](v63, v55, v64);
  }
}

uint64_t sub_1B253997C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2539A74()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 192);
  OUTLINED_FUNCTION_50_5();

  result = sub_1B253AD8C((v2 + 120));
  if (v1)
  {
    OUTLINED_FUNCTION_8_7();

    return swift_endAccess();
  }

  else
  {
    if (*(*(*(v0 + 192) + 120) + 16) >= result)
    {
      v6 = *(v0 + 336);
      v5 = *(v0 + 344);
      v7 = *(v0 + 288);
      v9 = *(v0 + 256);
      v8 = *(v0 + 264);
      v27 = *(v0 + 320);
      sub_1B2564254();
      swift_endAccess();
      sub_1B2443AD0(v6, v5);

      (*(v8 + 8))(v7, v9);
      OUTLINED_FUNCTION_0_45();
      sub_1B253B59C(v27, v10);
      sub_1B24C42F0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v0 + 400);
      if (EnumCaseMultiPayload == 1)
      {
        v13 = *(v0 + 232);
        v14 = *(v0 + 136);

        *v14 = *v13;
      }

      else
      {
        v15 = *(v0 + 368);
        v30 = *(v0 + 417);
        v29 = *(v0 + 416);
        v16 = *(v0 + 256);
        v18 = *(v0 + 208);
        v17 = *(v0 + 216);
        v28 = *(v0 + 392);
        v19 = *(v0 + 136);
        OUTLINED_FUNCTION_20_15();
        sub_1B253B544();
        v20 = *(v18 + 20);
        v21 = type metadata accessor for TrustStore.CacheValue(0);
        v15(&v19[v21[5]], &v17[v20], v16);
        v22 = *v17;
        v23 = *(v17 + 1);
        sub_1B24C42F0();
        *v19 = v28;
        *(v19 + 1) = v12;
        v24 = &v19[v21[6]];
        *v24 = v22;
        *(v24 + 1) = v23;
        v19[v21[7]] = v29;
        v19[v21[8]] = v30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2AF8);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_26_13();

      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_8_7();

      __asm { BRAA            X1, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B2539D64(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  for (i = a1 + 56; ; i += 32)
  {
    if (v2 == v1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
    v4 = sub_1B256DE6C();

    if (v4)
    {
      break;
    }

    ++v1;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

uint64_t sub_1B2539E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B2445514;

  return sub_1B2534548();
}

uint64_t sub_1B2539F14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - v3;
  v5 = sub_1B256E15C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  result = swift_beginAccess();
  if (*(*(v0 + 112) + 16) || (v13 = OBJC_IVAR____TtC8StoreKit10TrustStore_memoryPressure, swift_beginAccess(), (*(v6 + 16))(v11, v1 + v13, v5), sub_1B256E12C(), sub_1B253B49C(&qword_1EB7D2B10, MEMORY[0x1E69E80E0]), sub_1B256DBEC(), sub_1B256DBEC(), v14 = *(v6 + 8), v14(v9, v5), result = (v14)(v11, v5), v19[1] != v19[0]))
  {
    if (*(v1 + 128))
    {
      return result;
    }

    sub_1B256DD7C();
    v15 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v18 = sub_1B253CDD0(0, 0, v4, &unk_1B2586CF8, v17);
    sub_1B243E88C(v4, &qword_1EB7D1910);
    *(v1 + 128) = v18;
  }

  else
  {
    if (!*(v1 + 128))
    {
      return result;
    }

    sub_1B256DE7C();

    *(v1 + 128) = 0;
  }
}

uint64_t sub_1B253A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B18);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B20);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2B28);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1B256E15C();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B253A408, 0, 0);
}

uint64_t sub_1B253A408()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1B246063C(0, &qword_1EB7D2B30);
  sub_1B256E11C();
  v0[17] = sub_1B256E16C();
  v0[18] = *(v1 + 8);
  v0[19] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_14_3();
  v6(v5);
  ObjectType = swift_getObjectType();
  sub_1B2438EE8(ObjectType);
  sub_1B256DE1C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[20] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_22(v8);

  return MEMORY[0x1EEE6D9C8](v10);
}

uint64_t sub_1B253A558()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B253A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_155();
  v11 = v10[13];
  v12 = v10[6];
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    (*(v10[11] + 8))(v10[12], v10[10]);
    swift_unknownObjectRelease();
LABEL_8:

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_326();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  (*(v10[14] + 32))(v10[15], v12, v11);
  Strong = swift_weakLoadStrong();
  v10[21] = Strong;
  if (!Strong)
  {
    v18 = v10[18];
    swift_unknownObjectRelease();
    v19 = OUTLINED_FUNCTION_38_7();
    v18(v19);
    v20 = OUTLINED_FUNCTION_14_3();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_326();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1B253A7B4()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B253A8B0(*(v0 + 120));
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B253A818()
{
  v1 = *(v0 + 144);

  v2 = OUTLINED_FUNCTION_38_7();
  v1(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 160) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_10_22();

  return MEMORY[0x1EEE6D9C8](v5);
}

uint64_t sub_1B253A8B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B256E15C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8StoreKit10TrustStore_memoryPressure;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  swift_endAccess();
  sub_1B256E14C();
  sub_1B253B49C(&qword_1EB7D2B10, MEMORY[0x1E69E80E0]);
  sub_1B256DBEC();
  sub_1B256DBEC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v12 == v11 || (sub_1B256E13C(), sub_1B256DBEC(), sub_1B256DBEC(), v9(v7, v4), v12 == v11))
  {
    swift_beginAccess();
    *(v2 + 112) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1B256E12C();
    sub_1B256DBEC();
    sub_1B256DBEC();
    result = (v9)(v7, v4);
    if (v12 == v11)
    {
      result = swift_beginAccess();
      if (!*(*(v2 + 112) + 16))
      {
        if (*(v2 + 128))
        {

          sub_1B256DE7C();
        }

        *(v2 + 128) = 0;
      }
    }
  }

  return result;
}

void *sub_1B253AB74()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = MEMORY[0x1E69E7CC0];
  v0[15] = v1;
  v0[16] = 0;
  sub_1B256E12C();
  return v0;
}

unint64_t sub_1B253ABB4()
{
  result = qword_1EB7D2AF0;
  if (!qword_1EB7D2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2AF0);
  }

  return result;
}

uint64_t sub_1B253AC08(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B253AC64(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1B253ACCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1B256DB3C();
    OUTLINED_FUNCTION_36_6(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1B2749D90](15, a1 >> 16);
    OUTLINED_FUNCTION_36_6(v3);
    return v4 | 8;
  }
}

uint64_t sub_1B253AD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrustStore.CacheValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B253AD8C(uint64_t *a1)
{
  v3 = *a1;

  result = sub_1B2539D64(v3);
  v6 = result;
  if (v1)
  {
    goto LABEL_19;
  }

  if (v5)
  {
    v6 = *(v3 + 16);
LABEL_19:

    return v6;
  }

  v22 = a1;
  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 32 * result + 88; ; i += 32)
    {
      v9 = *(v3 + 16);
      if (v7 == v9)
      {
        break;
      }

      if (v7 >= v9)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v3 + i;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EA0);
      v11 = sub_1B256DE6C();

      if ((v11 & 1) == 0)
      {
        if (v7 != v6)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(v3 + 16);
          if (v6 >= v12)
          {
            goto LABEL_22;
          }

          if (v7 >= v12)
          {
            goto LABEL_23;
          }

          v13 = v3 + 32 + 32 * v6;
          v15 = *v13;
          v14 = *(v13 + 8);
          v23 = *(v13 + 16);
          v16 = *(v13 + 24);
          v17 = *(v10 - 16);
          v25 = *(v10 - 24);
          v24 = *(v3 + i - 8);
          v18 = *(v3 + i);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B2456E5C();
            v3 = v21;
          }

          v19 = v3 + 32 * v6;
          *(v19 + 32) = v25;
          *(v19 + 40) = v17;
          *(v19 + 48) = v24;
          *(v19 + 56) = v18;

          if (v7 >= *(v3 + 16))
          {
            goto LABEL_24;
          }

          v20 = (v3 + i);
          *(v20 - 3) = v15;
          *(v20 - 2) = v14;
          *(v20 - 8) = v23;
          *v20 = v16;

          *v22 = v3;
        }

        ++v6;
      }

      ++v7;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1B253AFD4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B253B168(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1B256E4EC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B256E5FC();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_1B253B168(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B253B208(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B253B278(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B253B208(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1B253ACCC(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B253B278(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1B256E5FC();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B253B394(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1B256EA8C() & 1;
  }
}

uint64_t sub_1B253B49C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_122_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B253B4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrustStore.CacheValue(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B253B544()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B253B59C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B253B5F4()
{
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_45_5(v3);

  return sub_1B253A234(v5, v6, v7, v2);
}

uint64_t sub_1B253B6BC()
{
  v1 = sub_1B256D36C();
  OUTLINED_FUNCTION_26_7(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 16) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_45_5(v2);

  return sub_1B2539E5C();
}

unint64_t sub_1B253B7C0()
{
  result = qword_1EB7D2B40;
  if (!qword_1EB7D2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2B40);
  }

  return result;
}

uint64_t sub_1B253B814()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B253B8DC()
{
  sub_1B2441328(319, &qword_1ED699E38);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1B253B9C8();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1B243C248();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1B2441328(319, &qword_1EB7D2B80);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1B253B9C8()
{
  if (!qword_1EB7D2B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0620);
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D2B78);
    }
  }
}

void sub_1B253BA64()
{
  sub_1B256D36C();
  if (v0 <= 0x3F)
  {
    sub_1B25389A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B253BAF8()
{
  result = qword_1EB7D2BA0;
  if (!qword_1EB7D2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2BA0);
  }

  return result;
}

unint64_t sub_1B253BB4C()
{
  result = qword_1EB7D2BA8;
  if (!qword_1EB7D2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2BA8);
  }

  return result;
}

unint64_t sub_1B253BBA0()
{
  result = qword_1EB7D2BB8;
  if (!qword_1EB7D2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2BB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JWSInternals.Header.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B253BCD4()
{
  result = qword_1EB7D2BC0;
  if (!qword_1EB7D2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2BC0);
  }

  return result;
}

unint64_t sub_1B253BD2C()
{
  result = qword_1EB7D2BC8;
  if (!qword_1EB7D2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2BC8);
  }

  return result;
}

unint64_t sub_1B253BD84()
{
  result = qword_1EB7D2BD0[0];
  if (!qword_1EB7D2BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7D2BD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_16()
{
}

uint64_t OUTLINED_FUNCTION_26_13()
{
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return sub_1B256E35C();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_1B256D94C();
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return sub_1B256DA7C();
}

uint64_t OUTLINED_FUNCTION_49_6()
{

  return sub_1B256DA7C();
}

uint64_t OUTLINED_FUNCTION_50_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return sub_1B256ED3C();
}

uint64_t OUTLINED_FUNCTION_54_7()
{

  return swift_task_alloc();
}

void sub_1B253C134()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B256DE0C();
  if (v0 <= 0x3F)
  {
    sub_1B253C6E8(319, &unk_1EB7D2C60, MEMORY[0x1E69E8698]);
    if (v1 <= 0x3F)
    {
      sub_1B253C6E8(319, &qword_1EB7D2C70, MEMORY[0x1E69E8660]);
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B253C300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2438);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
  sub_1B256DDEC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B253C428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
    v3 = sub_1B256DC5C();
  }

  sub_1B253C300(v3);
}

void sub_1B253C4A0()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1B253C4F0()
{

  OUTLINED_FUNCTION_0_46();
  v2 = *(v1 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B256DE0C();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_46();
  v5 = *(v4 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CB0);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_0_46();
  v8 = *(v7 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2CA0);
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 8))(v0 + v8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B253C6A4()
{
  sub_1B253C4F0();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1B253C6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D24A0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B253C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B244FC90;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B253C96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B253C990, 0, 0);
}

uint64_t sub_1B253C990()
{
  v17 = v0;
  sub_1B247A514(*(v0 + 64), (v0 + 16));
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 56);
      *(v0 + 88) = *(v0 + 48);
      *(v0 + 96) = v1;
      v2 = swift_task_alloc();
      *(v0 + 104) = v2;
      *v2 = v0;
      v2[1] = sub_1B253CC7C;
      v3 = *(v0 + 72);
      v4 = *(v0 + 80);
      v5 = *(v0 + 64);

      return sub_1B250BB78(v5, v3, v4);
    }
  }

  else
  {
    sub_1B2475424(v0 + 16);
  }

  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v7, qword_1ED69A108);
  v8 = sub_1B256E0BC();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v16[0] = v13;
    v16[1] = 91;
    v16[2] = 0xE100000000000000;
    MEMORY[0x1B2749D50](v11, v10);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v14 = sub_1B2519814(91, 0xE100000000000000, v16);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1B2519814(0xD000000000000041, 0x80000001B2592850, v16);
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v13, -1, -1);
    MEMORY[0x1B274BFF0](v12, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15(0, 0, 0);
}

uint64_t sub_1B253CC7C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v8 = *v1;

  v5 = *(v3 + 88);
  v6 = *(v8 + 8);

  return v6(v5, v4, a1);
}

uint64_t sub_1B253CDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v9);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  sub_1B2479E30(a3, v25 - v11);
  v13 = sub_1B256DDAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B24CFCF0(v12, &qword_1EB7D1910);
  }

  else
  {
    sub_1B256DD9C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B256DCEC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B256DA3C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1B253D05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v3[14] = a2;
  v3[15] = a3;
  v3[16] = a1;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for StoreKitPaymentDelegate();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B253D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a4;

  OUTLINED_FUNCTION_107_0();
  sub_1B247DAA8();
}

uint64_t sub_1B253D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B253D1B8, 0, 0);
}

uint64_t sub_1B253D1B8()
{
  OUTLINED_FUNCTION_24_5();
  v11 = v0;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v1, qword_1ED69A108);
  v2 = sub_1B256E0AC();
  v3 = sub_1B256D5CC();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1B2519814(0, 0xE000000000000000, &v10);
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_1B2519814(0xD000000000000032, 0x80000001B25928E0, &v10);
    _os_log_impl(&dword_1B23EF000, v3, v2, "%{public}s%{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v5, -1, -1);
    MEMORY[0x1B274BFF0](v4, -1, -1);
  }

  v6 = *(v0 + 16);
  type metadata accessor for StoreKitError();
  sub_1B243A51C();
  v7 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v6(0, 0xF000000000000000, v7);

  OUTLINED_FUNCTION_7_2();

  return v8();
}

void sub_1B253D458(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1B256D0CC();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1B256D1FC();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1B253D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v10);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_21_17(v12);
  OUTLINED_FUNCTION_15_21();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;

  v14 = OUTLINED_FUNCTION_107_0();
  sub_1B253CDD0(v14, v15, v5, v16, v13);

  return sub_1B24CFCF0(v5, &qword_1EB7D1910);
}

uint64_t sub_1B253D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v9 = swift_task_alloc();
  v8[4] = v9;
  *v9 = v8;
  v9[1] = sub_1B253D690;

  return sub_1B253D8A4();
}

uint64_t sub_1B253D690()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 40) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1B253D788, 0, 0);
}

uint64_t sub_1B253D788()
{
  OUTLINED_FUNCTION_4_0();
  (*(v0 + 16))(*(v0 + 40));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B253D8A4()
{
  OUTLINED_FUNCTION_4_0();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E38);
  OUTLINED_FUNCTION_2_2(v2);
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Storefront(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_2_2(v3);
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B253D95C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[6] = v2;
  v0[7] = *(v1 + 120);
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1B253DA58;
    v4 = v0[3];

    return static Storefront.current.getter(v4);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1B253DA58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B253DB50()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[3];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v0[4]);
  v3 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_1B24E313C(v0[6]);
    sub_1B24CFCF0(v1, &qword_1EB7D0E38);
    v4 = 1;
  }

  else
  {
    v5 = v0[5];
    sub_1B253E63C(v1, v5);
    v4 = v3(v5);
    sub_1B24E313C(v3);
    sub_1B253E6A0(v5);
  }

  v6 = v0[1];

  return v6(v4 & 1);
}

uint64_t sub_1B253DC44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v10);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_21_17(v12);
  OUTLINED_FUNCTION_15_21();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;

  sub_1B244784C(a1, a2);

  v14 = OUTLINED_FUNCTION_107_0();
  sub_1B253CDD0(v14, v15, v5, v16, v13);

  return sub_1B24CFCF0(v5, &qword_1EB7D1910);
}

uint64_t sub_1B253DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v9 = swift_task_alloc();
  v8[4] = v9;
  *v9 = v8;
  v9[1] = sub_1B253DDE8;

  return sub_1B253E0EC();
}

uint64_t sub_1B253DDE8()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_6_1();
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v9 = v8;
  v7[5] = v0;

  if (v0)
  {
    v10 = sub_1B253DF94;
  }

  else
  {
    v7[6] = v3;
    v7[7] = v5;
    v10 = sub_1B253DF0C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B253DF0C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_41_1();
  sub_1B244784C(v2, v3);
  v4 = OUTLINED_FUNCTION_41_1();
  v1(v4);
  v5 = OUTLINED_FUNCTION_41_1();
  sub_1B2443AE4(v5, v6);
  v7 = OUTLINED_FUNCTION_41_1();
  sub_1B2443AE4(v7, v8);
  OUTLINED_FUNCTION_7_2();

  return v9();
}

uint64_t sub_1B253DF94()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v1;
  v2(0, 0xF000000000000000, v1);

  OUTLINED_FUNCTION_7_2();

  return v4();
}

uint64_t sub_1B253E0EC()
{
  OUTLINED_FUNCTION_4_0();
  v1 = type metadata accessor for SKLogger();
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_2_2(v1);
  *(v0 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B253E16C()
{
  OUTLINED_FUNCTION_24_5();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = *(v0 + 24);
  v2 = __swift_project_value_buffer(*(v0 + 16), qword_1ED69A108);
  sub_1B244CC80(v2, v1);
  v3 = sub_1B256D5CC();
  sub_1B256D5EC();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(v1);
  v5 = sub_1B256E0AC();
  if (os_log_type_enabled(v3, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B23EF000, v3, v5, "Engagement request not handled.", v6, 2u);
    MEMORY[0x1B274BFF0](v6, -1, -1);
  }

  type metadata accessor for StoreKitError();
  sub_1B243A51C();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();

  return v7();
}

void sub_1B253E2F0()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1B253E340()
{
  sub_1B24E313C(*(v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B253E370()
{
  sub_1B253E340();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B253E3C0()
{
  OUTLINED_FUNCTION_14_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_10(v1);
  OUTLINED_FUNCTION_9_24();

  return sub_1B253DD54(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B253E464()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_47_5();
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_10(v2);

  return v6(v4);
}

uint64_t sub_1B253E514()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B253E5A8()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B253E63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Storefront(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B253E6A0(uint64_t a1)
{
  v2 = type metadata accessor for Storefront(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B253E6FC()
{
  OUTLINED_FUNCTION_14_21();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_8(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_10(v1);
  OUTLINED_FUNCTION_9_24();

  return sub_1B253D5FC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B253E7A0()
{
  OUTLINED_FUNCTION_24_5();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_8(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_16_10(v6);

  return sub_1B253D198(v8, v1, v2, v4, v3);
}

uint64_t sub_1B253E84C()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_47_5();
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_8(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_10(v2);

  return v6(v4);
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return sub_1B256DDAC();
}

uint64_t OUTLINED_FUNCTION_21_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_1B253E9A8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  v4 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;
  v8 = sub_1B2458898(a1, a2);
  if (__OFADD__(v19[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470);
  if (sub_1B256E80C())
  {
    v12 = sub_1B2458898(a1, a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_16:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v11)
  {
    sub_1B244ADF4(v19[7] + 16 * v10, &v18);
  }

  else
  {
    v18 = xmmword_1B257CAF0;
  }

  a3(&v18);
  sub_1B24C42F0();
  if (v16[0] == 1)
  {
    result = sub_1B256615C(v16, &unk_1EB7D2CD0);
    v15 = v19;
    if (v11)
    {
      sub_1B2565A60(v19[6] + 16 * v10);
      sub_1B24D0B38();
      result = sub_1B256E82C();
    }
  }

  else
  {
    sub_1B244ADF4(v16, v17);
    v15 = v19;
    if (v11)
    {
      result = sub_1B244ADF4(v17, v19[7] + 16 * v10);
    }

    else
    {
      sub_1B244ADF4(v17, v16);
      sub_1B2449D74(v10, a1, a2, v16, v15);
    }
  }

  *v4 = v15;
  return result;
}

void (*sub_1B253EBAC(void *a1))(void **)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1B255F58C(v2);
  return sub_1B253EC20;
}

void (*sub_1B253EC24(void *a1, uint64_t a2, uint64_t a3))(void **)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1B255F628(v6, a2, a3);
  return sub_1B25661E0;
}

void sub_1B253EC98(void **a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_212_0();
  v3(v2);

  free(v1);
}

uint64_t sub_1B253ECE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v6 = v5;
  v23[1] = a5;
  v24 = a4;
  v9 = type metadata accessor for StoreProductManager.CachedProduct(0);
  v23[0] = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B255FE0C();
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  v25 = v13;
  v14 = sub_1B2458898(a1, a2);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
  v18 = sub_1B256E80C();
  v19 = v25;
  if (v18)
  {
    v20 = sub_1B2458898(a1, a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v16 = v20;
      goto LABEL_5;
    }

LABEL_9:
    sub_1B2563750();
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

LABEL_5:
  *v6 = v19;
  if ((v17 & 1) == 0)
  {
    sub_1B255FE0C();
    sub_1B2449CF8(v16, a1, a2, v12, v19);
  }

  v24(*(v19 + 56) + *(v23[0] + 72) * v16);
  return sub_1B2563750();
}

void sub_1B253EF24()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_253_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C68);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_108_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v5, v6, v3);
  if (v7)
  {
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v8, v9);
    OUTLINED_FUNCTION_250_0();
    sub_1B2562DAC();
    sub_1B256D3CC();
    OUTLINED_FUNCTION_2_1();
    (*(v10 + 8))(v0);
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_149_2();
    v14(v13);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = OUTLINED_FUNCTION_101_4();
    sub_1B2449E7C(v15, v16, v17);
    OUTLINED_FUNCTION_462();
    sub_1B256D3CC();
    OUTLINED_FUNCTION_2_1();
    (*(v18 + 8))(v0);
  }

  OUTLINED_FUNCTION_51();
}

void sub_1B253F0E0()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_253_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0EB8);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_108_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04F0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v5, v6, v3);
  if (v7)
  {
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v8, v9);
    OUTLINED_FUNCTION_250_0();
    sub_1B2562EF8();
    sub_1B245856C(v0);
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_149_2();
    v13(v12);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_101_4();
    sub_1B2449EA0(v14, v15, v16);
    OUTLINED_FUNCTION_462();
    sub_1B245856C(v0);
  }

  OUTLINED_FUNCTION_51();
}

void sub_1B253F254()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_253_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AB0);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_108_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v5, v6, v3);
  if (v7)
  {
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v8, v9);
    OUTLINED_FUNCTION_250_0();
    sub_1B2562DAC();
    sub_1B256D3CC();
    OUTLINED_FUNCTION_2_1();
    (*(v10 + 8))(v0);
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_149_2();
    v14(v13);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = OUTLINED_FUNCTION_101_4();
    sub_1B244A10C(v15, v16, v17);
    OUTLINED_FUNCTION_462();
    sub_1B256D3CC();
    OUTLINED_FUNCTION_2_1();
    (*(v18 + 8))(v0);
  }

  OUTLINED_FUNCTION_51();
}

void sub_1B253F410()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_253_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E68);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_108_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0428);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v5, v6, v3);
  if (v7)
  {
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v8, v9);
    OUTLINED_FUNCTION_250_0();
    sub_1B2562EF8();
    sub_1B245856C(v0);
    OUTLINED_FUNCTION_251_0();
    sub_1B256615C(v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_149_2();
    v13(v12);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_101_4();
    sub_1B244A3B4(v14, v15, v16);
    OUTLINED_FUNCTION_462();
    sub_1B245856C(v0);
  }

  OUTLINED_FUNCTION_51();
}

void sub_1B253F584()
{
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  v8 = sub_1B256D47C();
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v15, v16, v8);
  if (v17)
  {
    OUTLINED_FUNCTION_34_1();
    sub_1B256615C(v18, v19);
    OUTLINED_FUNCTION_41_0();
    sub_1B2562FFC(v20);

    v21 = OUTLINED_FUNCTION_13_5();
    sub_1B256615C(v21, v22);
  }

  else
  {
    (*(v10 + 32))(v14, v5, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *v1;
    v23 = OUTLINED_FUNCTION_376();
    sub_1B244A804(v23, v24, v3, v25, v26, v27, v28, v29, v30, v31);

    *v1 = v32;
  }

  OUTLINED_FUNCTION_51();
}

uint64_t sub_1B253F70C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    sub_1B256615C(a1, &unk_1EB7D2CD0);
    sub_1B256328C(a2, a3, &v8);

    return sub_1B256615C(&v8, &unk_1EB7D2CD0);
  }

  else
  {
    sub_1B244ADF4(a1, &v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1B244AB8C();

    *v3 = v7;
  }

  return result;
}

uint64_t sub_1B253F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for StoreProductManager.CachedProduct(0);
  MEMORY[0x1EEE9AC00](v11);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_1B256615C(a1, &qword_1EB7CFEA0);
    sub_1B2563144(a2, a3, v10);

    return sub_1B256615C(v10, &qword_1EB7CFEA0);
  }

  else
  {
    sub_1B25636F8();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    sub_1B244AA78();

    *v4 = v15;
  }

  return result;
}

void sub_1B253F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2564554(a2, a3, v18, a1);
  v3 = v18[0];
  v4 = v18[1];
  v5 = v18[3];
  v6 = v19;
  v15 = v20;
  for (i = (v18[2] + 64) >> 6; v6; v5 = v8)
  {
    v8 = v5;
LABEL_7:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(v3 + 48) + 24 * (v10 | (v8 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v16[0] = *v11;
    v16[1] = v13;
    v17 = v14;
    sub_1B24D0BE0();
    if (v15(v16))
    {
      sub_1B2560258(v16, v12, v13, v14);
    }

    sub_1B24D0BE8();
  }

  v9 = v5;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= i)
    {
      break;
    }

    v6 = *(v4 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  sub_1B23FB6C4();
}

uint64_t sub_1B253FAE4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_1B24D0BE0();
      sub_1B2560258(&v14, v11, v12, v13);
      result = sub_1B24D0BE8();
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B253FC04(uint64_t a1, char a2)
{
  *(v2 + 57) = a2;
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B253FCA4, 0, 0);
}

uint64_t sub_1B253FCA4()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_395();
  v1 = OUTLINED_FUNCTION_150_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v5, qword_1ED69A108);
  sub_1B24D3E10();
  *(v0 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B253FD9C;
  OUTLINED_FUNCTION_373();

  return sub_1B24E5E54();
}

uint64_t sub_1B253FD9C()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    sub_1B256615C(*(v5 + 24), &qword_1EB7D1850);
    v9 = OUTLINED_FUNCTION_16_7();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1B256615C(*(v5 + 24), &qword_1EB7D1850);

    OUTLINED_FUNCTION_141();

    return v12(v3);
  }
}

uint64_t sub_1B253FF1C()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B253FF78(uint64_t a1, char a2)
{
  *(v2 + 57) = a2;
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2540018, 0, 0);
}

uint64_t sub_1B2540018()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_395();
  v1 = OUTLINED_FUNCTION_150_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v5, qword_1ED69A108);
  sub_1B24D3E10();
  *(v0 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B254010C;
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_373();

  return sub_1B24E5E54();
}

uint64_t sub_1B254010C()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    sub_1B256615C(*(v5 + 24), &qword_1EB7D1850);
    v9 = OUTLINED_FUNCTION_16_7();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1B256615C(*(v5 + 24), &qword_1EB7D1850);

    OUTLINED_FUNCTION_141();

    return v12(v3);
  }
}

void *sub_1B254028C()
{
  type metadata accessor for StoreProductManager(0);
  v0 = swift_allocObject();
  result = sub_1B255E158();
  qword_1EB7D2CB8 = v0;
  return result;
}

uint64_t static StoreProductManager.shared.getter()
{
  if (qword_1EB7CFC88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B2540340@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B2540374(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x1B2749D50](0x203A70756F726728, 0xE800000000000000);
  }

  else
  {
    MEMORY[0x1B2749D50](0x746375646F727028, 0xEA0000000000203ALL);
  }

  sub_1B256E78C();
  MEMORY[0x1B2749D50](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B2540440(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C();
  }
}

uint64_t sub_1B2540478(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x1B274AFC0](a4 & 1);
  OUTLINED_FUNCTION_18_1();

  return sub_1B256DA7C();
}

uint64_t sub_1B25404C8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a3 & 1);
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B2540548()
{
  v1 = *(v0 + 16);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B25405D0()
{
  v0 = sub_1B256D36C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  sub_1B24C5C14();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_1B256615C(v9, &qword_1EB7D2CD8);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v0);
  }

  else
  {
    (*(v1 + 32))(v15, &v9[*(v16 + 48)], v0);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v0);
    sub_1B2563750();
  }

  sub_1B24C5C14();
  if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
  {
    v17 = 0;
  }

  else
  {
    (*(v1 + 32))(v6, v13, v0);
    sub_1B256D34C();
    v17 = sub_1B256D2BC();
    v18 = *(v1 + 8);
    v18(v4, v0);
    v18(v6, v0);
  }

  sub_1B256615C(v15, &qword_1EB7D0088);
  return v17 & 1;
}

uint64_t StoreProductManager.cachedProduct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  OUTLINED_FUNCTION_2_2(v7);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  OUTLINED_FUNCTION_278_0();
  v11 = *(v3 + 112);
  if (*(v11 + 16) && (sub_1B2458898(a1, a2), (v12 & 1) != 0))
  {
    v11 = type metadata accessor for StoreProductManager.CachedProduct(0);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
  }

  else
  {
    type metadata accessor for StoreProductManager.CachedProduct(0);
    OUTLINED_FUNCTION_154();
  }

  OUTLINED_FUNCTION_121_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for StoreProductManager.CachedProduct(0);
  v17 = OUTLINED_FUNCTION_164_1();
  if (__swift_getEnumTagSinglePayload(v17, v18, v11) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0), v19 = OUTLINED_FUNCTION_164_1(), __swift_getEnumTagSinglePayload(v19, v20, v21)))
  {
    sub_1B256615C(v10, &qword_1EB7CFEA0);
    swift_endAccess();
    v22 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_24();
    sub_1B255FE0C();
    sub_1B256615C(v10, &qword_1EB7CFEA0);
    swift_endAccess();
    v22 = 0;
  }

  v23 = type metadata accessor for Product();
  return __swift_storeEnumTagSinglePayload(a3, v22, 1, v23);
}

Swift::Void __swiftcall StoreProductManager.removeObserver(for:origin:)(Swift::String a1, StoreKit::StoreKitViewOrigin origin)
{
  OUTLINED_FUNCTION_67();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  OUTLINED_FUNCTION_2_2(v10);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  v14 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v19 = *v5;
  v20 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v76 = sub_1B24D3E10();
  v22 = v21;
  OUTLINED_FUNCTION_278_0();
  sub_1B247A5F8(v9, v7, *(v2 + 112), v13);
  v23 = OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_268_0(v23, v24, v14);
  if (v45)
  {
    sub_1B256615C(v13, &qword_1EB7CFEA0);
    swift_endAccess();
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_1B256E4FC();
    OUTLINED_FUNCTION_345();
    v80 = v9;
    v81 = v7;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](v13 + 18, 0x80000001B2592970);
    v25 = sub_1B256E09C();

    v26 = sub_1B256D5CC();

    if (os_log_type_enabled(v26, v25))
    {
      v27 = OUTLINED_FUNCTION_21_3();
      v80 = OUTLINED_FUNCTION_20_4();
      *v27 = 136446466;
      OUTLINED_FUNCTION_39_2();
      v78 = v28;
      v79 = v29;
      MEMORY[0x1B2749D50](v76, v22);
      OUTLINED_FUNCTION_94_0();
      v30 = v79;
      sub_1B2519814(v78, v79, &v80);
      OUTLINED_FUNCTION_328_0();
      *(v27 + 4) = v22;
      OUTLINED_FUNCTION_439();
      v31 = OUTLINED_FUNCTION_50_0();
      sub_1B2519814(v31, v32, v33);
      OUTLINED_FUNCTION_200_1();

      *(v27 + 14) = v30;
      OUTLINED_FUNCTION_486(&dword_1B23EF000, v34, v35, "%{public}s%{public}s");
      OUTLINED_FUNCTION_304_0();
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_63_0();
    }

    else
    {
    }

    goto LABEL_40;
  }

  v75 = v20;
  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_14_3();
  sub_1B25636F8();
  swift_endAccess();
  v36 = sub_1B2541168(v18);
  v37 = v22;
  v38 = v76;
  if (v36)
  {
LABEL_39:
    LOBYTE(v78) = v19;
    sub_1B25415D4(1, v38, v37, &v78);

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
LABEL_40:
    OUTLINED_FUNCTION_45();
    return;
  }

  v73 = v19;
  v74 = v18;
  OUTLINED_FUNCTION_50_5();
  v39 = *(v3 + 128);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);

  OUTLINED_FUNCTION_437();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_18_16();
  if (v41)
  {
    v42 = ~v40;
    v43 = *(v39 + 48);
    while (1)
    {
      v44 = v43 + 24 * v13;
      if ((*(v44 + 16) & 1) == 0)
      {
        v45 = *v44 == v9 && *(v44 + 8) == v7;
        if (v45 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v42;
      OUTLINED_FUNCTION_97_6();
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v50 = *(*(v39 + 48) + 24 * v13);
    OUTLINED_FUNCTION_265_0();
    sub_1B24D0BE0();
    goto LABEL_35;
  }

LABEL_15:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v3 + 128);
  v48 = v77;
  *(v3 + 128) = 0x8000000000000000;
  v49 = v48[2];
  v43 = v48[3];

  if (v43 <= v49)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1B2560C10();
    }

    else
    {
      sub_1B2562770();
    }

    v48 = v77;
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](0);
    OUTLINED_FUNCTION_437();
    sub_1B256DA7C();
    sub_1B256ED7C();
    OUTLINED_FUNCTION_18_16();
    if (v52)
    {
      v43 = ~v51;
      v53 = v48[6];
      do
      {
        v54 = v53 + 24 * v13;
        if ((*(v54 + 16) & 1) == 0)
        {
          v55 = *v54 == v9 && *(v54 + 8) == v7;
          if (v55 || (sub_1B256EB5C() & 1) != 0)
          {
            goto LABEL_42;
          }
        }

        v13 = (v13 + 1) & v43;
        OUTLINED_FUNCTION_97_6();
      }

      while ((v56 & 1) != 0);
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B2561E44();
    v48 = v77;
  }

  OUTLINED_FUNCTION_220_0();
  OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_336_0(v57);
  v58 = v48[6] + 24 * v13;
  *v58 = v9;
  *(v58 + 8) = v7;
  *(v58 + 16) = 0;
  v59 = v48[2];
  v60 = __OFADD__(v59, 1);
  v61 = v59 + 1;
  if (!v60)
  {
    v48[2] = v61;
    *(v3 + 128) = v48;
    v50 = v9;
LABEL_35:
    swift_endAccess();
    OUTLINED_FUNCTION_265_0();
    sub_1B24D0BE8();
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_1B256E4FC();
    OUTLINED_FUNCTION_346();
    v80 = v9;
    v81 = v7;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](v50 + 28, 0x80000001B25929C0);
    v62 = v78;
    v63 = v79;

    v64 = sub_1B256E08C();

    v65 = sub_1B256D5CC();

    if (os_log_type_enabled(v65, v64))
    {
      v66 = OUTLINED_FUNCTION_21_3();
      v67 = OUTLINED_FUNCTION_20_4();
      v75 = v62;
      v80 = v67;
      *v66 = 136446466;
      OUTLINED_FUNCTION_39_2();
      v78 = v68;
      v79 = v69;
      v70 = v76;
      MEMORY[0x1B2749D50](v76, v37);
      OUTLINED_FUNCTION_94_0();
      v71 = v79;
      sub_1B2519814(v78, v79, &v80);
      OUTLINED_FUNCTION_328_0();
      *(v66 + 4) = v43;
      OUTLINED_FUNCTION_368();
      sub_1B2519814(v75, v63, &v80);
      OUTLINED_FUNCTION_399();
      *(v66 + 14) = v71;
      OUTLINED_FUNCTION_404(&dword_1B23EF000, v65, v64, "%{public}s%{public}s");
      OUTLINED_FUNCTION_304_0();
      OUTLINED_FUNCTION_7_12();
      v38 = v70;
      OUTLINED_FUNCTION_11_4();
    }

    else
    {

      v38 = v76;
    }

    LOBYTE(v19) = v73;
    goto LABEL_39;
  }

  __break(1u);
LABEL_42:
  sub_1B256EC8C();
  __break(1u);
}

uint64_t sub_1B2541168(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StoreProductManager.CachedProduct(0);
  if (swift_weakLoadStrong())
  {
LABEL_6:

    return 1;
  }

  v32 = v8;
  v30 = v1;
  v31 = v11;
  v13 = *(a1 + *(v12 + 24));
  result = v13 + 32;
  v15 = -*(v13 + 16);
  v16 = -1;
  while (1)
  {
    if (v15 + v16 == -1)
    {
      sub_1B24C5C14();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
      if (__swift_getEnumTagSinglePayload(v5, 1, v20) == 1)
      {
        sub_1B256615C(v5, &qword_1EB7D2CD8);
        v21 = v32;
        __swift_storeEnumTagSinglePayload(v32, 1, 1, v9);
LABEL_11:
        sub_1B256615C(v21, &qword_1EB7D2330);
        return 0;
      }

      v22 = *(v20 + 48);
      v21 = v32;
      sub_1B25636F8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v9);
      v23 = sub_1B256D36C();
      (*(*(v23 - 8) + 8))(&v5[v22], v23);
      if (__swift_getEnumTagSinglePayload(v21, 1, v9) == 1)
      {
        goto LABEL_11;
      }

      v24 = v31;
      sub_1B25636F8();
      memcpy(__dst, v24 + 160, sizeof(__dst));
      if (sub_1B2447BD4(__dst) == 1)
      {
        sub_1B2563750();
        return 0;
      }

      v25 = __dst[16];
      v26 = __dst[17];
      v27 = v30;
      swift_beginAccess();
      v28 = *(v27 + 120);

      sub_1B247A6B4(v25, v26, v28, &v33);

      if (v33 == 1)
      {
        sub_1B256615C(&v33, &unk_1EB7D2CD0);
        swift_endAccess();
        Strong = 0;
      }

      else
      {
        Strong = swift_weakLoadStrong();
        sub_1B256615C(&v33, &unk_1EB7D2CD0);
        swift_endAccess();
        if (Strong)
        {

          Strong = 1;
        }
      }

      sub_1B2563750();
      return Strong;
    }

    if (++v16 >= *(v13 + 16))
    {
      break;
    }

    v17 = result + 8;
    sub_1B24C5C14();
    v18 = swift_weakLoadStrong();
    sub_1B256615C(__dst, &unk_1EB7D0460);
    result = v17;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B25415D4(char a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v175 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v172 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v197 = &v172 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE0);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v172 - v14;
  v183 = sub_1B256D36C();
  v199 = *(v183 - 8);
  v15 = MEMORY[0x1EEE9AC00](v183);
  v182 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v181 = &v172 - v17;
  v18 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v186 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StoreProductManager.CachedProduct(0);
  v189 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v198 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v187 = &v172 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v195 = (&v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v196 = (&v172 - v27);
  v173 = *a4;
  v203[0] = 0;
  v203[1] = 0xE000000000000000;
  sub_1B256E4FC();

  v203[0] = 0xD00000000000002DLL;
  v203[1] = 0x80000001B25933C0;
  if (a1)
  {
    if (a1 == 1)
    {
      v28 = 0xD000000000000010;
    }

    else
    {
      v28 = 0x726576726573626FLL;
    }

    if (a1 == 1)
    {
      v29 = 0x80000001B2593440;
    }

    else
    {
      v29 = 0xEE00646564646120;
    }
  }

  else
  {
    v29 = 0xEC00000064657269;
    v28 = 0x7078652061746164;
  }

  v30 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  MEMORY[0x1B2749D50](v28, v29);

  v31 = v203[1];
  v194 = v203[0];
  v32 = sub_1B256E08C();

  v172 = v30;
  v33 = sub_1B256D5CC();

  v34 = os_log_type_enabled(v33, v32);
  v174 = a3;
  v177 = v20;
  v178 = v11;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v200[0] = v36;
    *v35 = 136446466;
    v203[0] = 91;
    v203[1] = 0xE100000000000000;
    MEMORY[0x1B2749D50](v175, a3);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v37 = v33;
    v38 = sub_1B2519814(v203[0], v203[1], v200);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v39 = sub_1B2519814(v194, v31, v200);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1B23EF000, v37, v32, "%{public}s%{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v36, -1, -1);
    MEMORY[0x1B274BFF0](v35, -1, -1);
  }

  else
  {
  }

  v40 = v197;
  v41 = v199;
  v176 = MEMORY[0x1E69E7CD0];
  v204 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v42 = *(v5 + 112);
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v199 = v45 & *(v42 + 64);
  v192 = (v44 + 63) >> 6;
  v179 = v5;
  v180 = (v41 + 32);
  v190 = (v41 + 8);
  v188 = v42;

  v46 = 0;
  v47 = &unk_1B2587C38;
  v48 = v196;
  v191 = v43;
  while (2)
  {
    v49 = v192;
    while (1)
    {
      while (1)
      {
        v50 = v199;
        if (!v199)
        {
          v52 = v195;
          while (1)
          {
            v51 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            if (v51 >= v49)
            {
              v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8);
              __swift_storeEnumTagSinglePayload(v52, 1, 1, v75);
              v199 = 0;
              goto LABEL_25;
            }

            v50 = *(v43 + 8 * v51);
            ++v46;
            if (v50)
            {
              v46 = v51;
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v51 = v46;
LABEL_24:
        v199 = (v50 - 1) & v50;
        v53 = (*(v188 + 48) + 16 * (__clz(__rbit64(v50)) | (v51 << 6)));
        v55 = *v53;
        v54 = v53[1];
        sub_1B255FE0C();
        v47 = &unk_1B2587C38;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8);
        v57 = v195;
        *v195 = v55;
        *(v57 + 8) = v54;
        sub_1B25636F8();
        __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);

        v48 = v196;
        v40 = v197;
LABEL_25:
        sub_1B24C42F0();
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8);
        if (__swift_getEnumTagSinglePayload(v48, 1, v58) == 1)
        {

          v139 = v176;
          if (*(v176 + 16) || (v140 = v204, *(v204 + 16)))
          {
            v203[0] = 0;
            v203[1] = 0xE000000000000000;
            sub_1B256E4FC();
            MEMORY[0x1B2749D50](0x726F662061746144, 0xE900000000000020);
            v200[0] = *(v139 + 16);
            v141 = sub_1B256EAAC();
            MEMORY[0x1B2749D50](v141);

            MEMORY[0x1B2749D50](0xD00000000000002DLL, 0x80000001B25933F0);
            v140 = v204;
            v200[0] = *(v204 + 16);
            v142 = sub_1B256EAAC();
            MEMORY[0x1B2749D50](v142);

            MEMORY[0x1B2749D50](0xD00000000000001CLL, 0x80000001B2593420);
            v143 = v203[0];
            v144 = v203[1];
            v145 = sub_1B256E08C();
            v146 = v174;

            v147 = sub_1B256D5CC();

            if (os_log_type_enabled(v147, v145))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v199 = v140;
              v200[0] = v149;
              v150 = v149;
              *v148 = 136446466;
              v203[0] = 91;
              v203[1] = 0xE100000000000000;
              MEMORY[0x1B2749D50](v175, v146);
              MEMORY[0x1B2749D50](8285, 0xE200000000000000);
              v151 = sub_1B2519814(v203[0], v203[1], v200);

              *(v148 + 4) = v151;
              *(v148 + 12) = 2082;
              v152 = sub_1B2519814(v143, v144, v200);

              *(v148 + 14) = v152;
              _os_log_impl(&dword_1B23EF000, v147, v145, "%{public}s%{public}s", v148, 0x16u);
              swift_arrayDestroy();
              v153 = v150;
              v140 = v199;
              MEMORY[0x1B274BFF0](v153, -1, -1);
              MEMORY[0x1B274BFF0](v148, -1, -1);
            }

            else
            {
            }
          }

          v154 = v140 + 56;
          v155 = 1 << *(v140 + 32);
          v156 = -1;
          if (v155 < 64)
          {
            v156 = ~(-1 << v155);
          }

          v157 = v156 & *(v140 + 56);
          v158 = (v155 + 63) >> 6;

          v159 = 0;
          v199 = v140;
          if (v157)
          {
            goto LABEL_117;
          }

          while (1)
          {
            v160 = v159 + 1;
            if (__OFADD__(v159, 1))
            {
              break;
            }

            if (v160 >= v158)
            {

              sub_1B254BA3C(v176, v175, v174, v173);
            }

            v157 = *(v154 + 8 * v160);
            ++v159;
            if (v157)
            {
              v159 = v160;
              do
              {
LABEL_117:
                v161 = (*(v140 + 48) + ((v159 << 10) | (16 * __clz(__rbit64(v157)))));
                v162 = *v161;
                v163 = v161[1];
                v164 = v179;
                swift_beginAccess();

                sub_1B2458898(v162, v163);
                v166 = v165;

                if (v166)
                {
                  swift_isUniquelyReferenced_nonNull_native();
                  v200[0] = *(v164 + 112);
                  *(v164 + 112) = 0x8000000000000000;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
                  sub_1B256E80C();
                  v167 = v200[0];

                  v168 = v178;
                  sub_1B25636F8();
                  sub_1B243A2E0();
                  v169 = v177;
                  sub_1B256E82C();
                  *(v164 + 112) = v167;

                  v170 = 0;
                }

                else
                {
                  v170 = 1;
                  v169 = v177;
                  v168 = v178;
                }

                v157 &= v157 - 1;
                __swift_storeEnumTagSinglePayload(v168, v170, 1, v169);
                sub_1B256615C(v168, &qword_1EB7CFEA0);
                swift_endAccess();
                v140 = v199;
              }

              while (v157);
            }
          }

          goto LABEL_124;
        }

        v59 = v47;
        v60 = v48[1];
        v194 = *v48;
        sub_1B25636F8();
        sub_1B24C5C14();
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
        if (__swift_getEnumTagSinglePayload(v40, 1, v61) != 1)
        {
          break;
        }

        sub_1B2563750();

        sub_1B256615C(v40, &qword_1EB7D2CD8);
        v43 = v191;
        v49 = v192;
        v47 = v59;
      }

      v193 = v60;
      v62 = *(v61 + 48);
      v63 = v184;
      v64 = v185;
      v65 = *(v185 + 48);
      sub_1B25636F8();
      v66 = *v180;
      v67 = &v63[v65];
      v68 = v183;
      (*v180)(v67, v40 + v62, v183);
      v69 = *(v64 + 48);
      v70 = v181;
      sub_1B25636F8();
      v66(v70, &v63[v69], v68);
      v71 = v190;
      v72 = v182;
      sub_1B256D34C();
      v73 = sub_1B256D2BC();
      v74 = *v71;
      (*v71)(v72, v68);
      if (v73)
      {
        break;
      }

      v74(v70, v68);
      sub_1B2563750();
      sub_1B2563750();
      v48 = v196;
      v40 = v197;
      v43 = v191;
      v49 = v192;
      v47 = &unk_1B2587C38;
    }

    if ((sub_1B2541168(v198) & 1) == 0)
    {
      sub_1B2560518();

      v86 = v186;
      goto LABEL_64;
    }

    v76 = v176;
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](0);
    sub_1B256DA7C();
    v77 = sub_1B256ED7C();
    v78 = -1 << *(v76 + 32);
    v79 = v77 & ~v78;
    if (((*(v76 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
    {
LABEL_43:
      v87 = v176;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v87;
      if (*(v87 + 24) <= *(v87 + 16))
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1B2560C10();
        }

        else
        {
          sub_1B2562770();
        }

        v90 = v200[0];
        sub_1B256ED3C();
        MEMORY[0x1B274AFC0](0);
        sub_1B256DA7C();
        v91 = sub_1B256ED7C();
        v92 = -1 << *(v90 + 32);
        v79 = v91 & ~v92;
        v93 = *(v90 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79;
        v176 = v90;
        if (v93)
        {
          v94 = ~v92;
          v95 = *(v90 + 48);
          v89 = v194;
          while (1)
          {
            v96 = v95 + 24 * v79;
            if ((*(v96 + 16) & 1) == 0)
            {
              if (*v96 == v89 && *(v96 + 8) == v193)
              {
                goto LABEL_127;
              }

              v98 = sub_1B256EB5C();
              v89 = v194;
              if (v98)
              {
                goto LABEL_127;
              }
            }

            v79 = (v79 + 1) & v94;
            if (((*(v90 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
            {
              goto LABEL_61;
            }
          }
        }

        v89 = v194;
      }

      else
      {
        v89 = v194;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B2561E44();
          v89 = v194;
          v176 = v200[0];
        }
      }

LABEL_61:
      v99 = v176;
      *(v176 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v79;
      v100 = *(v99 + 48) + 24 * v79;
      v101 = v193;
      *v100 = v89;
      *(v100 + 8) = v101;
      *(v100 + 16) = 0;
      v102 = *(v99 + 16);
      v103 = __OFADD__(v102, 1);
      v104 = v102 + 1;
      if (!v103)
      {
        *(v99 + 16) = v104;
        goto LABEL_63;
      }

      goto LABEL_125;
    }

    v80 = ~v78;
    v81 = *(v76 + 48);
    v82 = v194;
    while (1)
    {
      v83 = v81 + 24 * v79;
      if ((*(v83 + 16) & 1) == 0)
      {
        if (*v83 == v82 && *(v83 + 8) == v193)
        {
          break;
        }

        v85 = sub_1B256EB5C();
        v82 = v194;
        if (v85)
        {
          break;
        }
      }

      v79 = (v79 + 1) & v80;
      if (((*(v76 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_63:
    v86 = v186;
LABEL_64:
    memcpy(v203, v86 + 160, sizeof(v203));
    if (sub_1B2447BD4(v203) == 1)
    {
      v74(v70, v68);
      sub_1B2563750();
      goto LABEL_80;
    }

    v106 = v203[16];
    v105 = v203[17];
    v107 = v179;
    swift_beginAccess();
    v108 = *(v107 + 120);
    v109 = *(v108 + 16);

    if (!v109 || (v110 = sub_1B2458898(v106, v105), (v111 & 1) == 0))
    {
      swift_endAccess();

      v74(v70, v68);
      sub_1B2563750();
LABEL_80:
      sub_1B2563750();
      v48 = v196;
      v40 = v197;
      v43 = v191;
      goto LABEL_81;
    }

    v194 = v106;
    sub_1B247D7E0(*(v108 + 56) + 16 * v110, &v201);
    sub_1B244ADF4(&v201, v202);
    swift_endAccess();
    if (!swift_weakLoadStrong())
    {
      swift_beginAccess();
      sub_1B256328C(v194, v105, &v201);

      sub_1B256615C(&v201, &unk_1EB7D2CD0);
      swift_endAccess();
      goto LABEL_100;
    }

    v112 = v176;
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](1);
    v193 = v105;
    sub_1B256DA7C();
    v113 = sub_1B256ED7C();
    v114 = -1 << *(v112 + 32);
    v115 = v113 & ~v114;
    if ((*(v112 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115))
    {
      v116 = ~v114;
      v117 = *(v112 + 48);
      v118 = v194;
      while (1)
      {
        v119 = v117 + 24 * v115;
        if (*(v119 + 16) == 1)
        {
          if (*v119 == v118 && *(v119 + 8) == v193)
          {
            break;
          }

          v121 = sub_1B256EB5C();
          v118 = v194;
          if (v121)
          {
            break;
          }
        }

        v115 = (v115 + 1) & v116;
        if (((*(v112 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
        {
          goto LABEL_83;
        }
      }

LABEL_100:
      v43 = v191;
LABEL_104:
      sub_1B25629C4(v202);
      v74(v70, v68);
      sub_1B2563750();
      sub_1B2563750();
      v48 = v196;
      v40 = v197;
LABEL_81:
      v47 = &unk_1B2587C38;
      continue;
    }

    break;
  }

LABEL_83:
  v122 = v176;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  *&v201 = v122;
  if (*(v122 + 24) > *(v122 + 16))
  {
    v43 = v191;
    v124 = v194;
    if ((v123 & 1) == 0)
    {
      sub_1B2561E44();
      v124 = v194;
      v43 = v191;
      v176 = v201;
    }

    goto LABEL_102;
  }

  if (v123)
  {
    sub_1B2560C10();
  }

  else
  {
    sub_1B2562770();
  }

  v125 = v201;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](1);
  sub_1B256DA7C();
  v126 = sub_1B256ED7C();
  v127 = -1 << *(v125 + 32);
  v115 = v126 & ~v127;
  v128 = *(v125 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115;
  v176 = v125;
  if ((v128 & 1) == 0)
  {
    v43 = v191;
    v124 = v194;
LABEL_102:
    v134 = v176;
    *(v176 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v115;
    v135 = *(v134 + 48) + 24 * v115;
    v136 = v193;
    *v135 = v124;
    *(v135 + 8) = v136;
    *(v135 + 16) = 1;
    v137 = *(v134 + 16);
    v103 = __OFADD__(v137, 1);
    v138 = v137 + 1;
    if (!v103)
    {
      *(v134 + 16) = v138;
      goto LABEL_104;
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v129 = ~v127;
  v130 = *(v125 + 48);
  v124 = v194;
  while (1)
  {
    v131 = v130 + 24 * v115;
    if (*(v131 + 16) == 1)
    {
      if (*v131 == v124 && *(v131 + 8) == v193)
      {
        break;
      }

      v133 = sub_1B256EB5C();
      v124 = v194;
      if (v133)
      {
        break;
      }
    }

    v115 = (v115 + 1) & v129;
    if (((*(v125 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
    {
      v43 = v191;
      goto LABEL_102;
    }
  }

LABEL_127:
  result = sub_1B256EC8C();
  __break(1u);
  return result;
}

void StoreProductManager.removeObserver<A>(for:origin:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  sub_1B256E51C();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_456();
  sub_1B256E71C();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_456();
  sub_1B256E70C();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  v15 = *v3;
  v7 = sub_1B24D3E10();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_12_11();
  MEMORY[0x1B2749E40](v10);
  OUTLINED_FUNCTION_203_1();
  swift_getWitnessTable();
  sub_1B256E8FC();
  v11 = OUTLINED_FUNCTION_138_0();
  v12(v11);
  sub_1B256E6EC();
  while (1)
  {
    sub_1B256E6FC();
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_50_5();

    sub_1B24388A0(v16, v17, (v1 + 112), v1, v16, v17, v7, v9);
    swift_endAccess();
  }

  v13 = OUTLINED_FUNCTION_28_1();
  v14(v13);
  LOBYTE(v16) = v15;
  sub_1B25415D4(1, v7, v9, &v16);

  OUTLINED_FUNCTION_45();
}

void sub_1B2542E1C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X0>)
{
  v4 = -1 << *(a4 + 32);
  *a3 = a4;
  a3[1] = a4 + 64;
  a3[2] = ~v4;
  OUTLINED_FUNCTION_300_0(a1, a2, a3);
}

id sub_1B2542E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + 8 * v10);
    sub_1B2456DAC(*(v3 + 56) + 32 * v10, &v15);
    *&v18[0] = v11;
    sub_1B244AA0C(&v15, (v18 + 8));
    result = v11;
    v13 = *&v18[0];
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15 = v13;
      v16 = *(v18 + 8);
      v17 = *(&v18[1] + 8);
      v14(&v15);
      return sub_1B256615C(&v15, &unk_1EB7D2ED0);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        memset(v18, 0, 40);
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1B2542F8C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_1B256E8AC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == v2)
  {
    return 0;
  }

  sub_1B2463718(v0[1], (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B274A7A0](v3, v1);
  }

  else
  {
    result = *(v1 + 8 * v3 + 32);
  }

  v5 = result;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v0[1] = v3 + 1;
    v6 = v0[2];
    v8 = result;
    v6(&v7, &v8);

    return v7;
  }

  return result;
}

uint64_t sub_1B2543070()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_130();
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v6 = (*v0 + 16 * v1 + 32);
    v4 = *v6;
    v5 = v6[1];
    v0[1] = v1 + 1;
    v7 = v0[2];
    v9[0] = v4;
    v9[1] = v5;

    v7(&v8, v9);

    return v8;
  }

  return result;
}

uint64_t sub_1B25430F8()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v2)
  {
    v3 = v0[3];
LABEL_6:
    v4 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
    v0[3] = v3;
    v0[4] = (v2 - 1) & v2;
    v5 = v0[5];
    v8 = v4;

    v5(&v7, &v8);

    return v7;
  }

  else
  {
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= ((v0[2] + 64) >> 6))
      {
        result = 0;
        v0[3] = v1;
        v0[4] = 0;
        return result;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1B25431C0()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v103 = v2;
  v4 = v3;
  v6 = v5;
  v105 = v7;
  v9 = v8;
  v10 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = OUTLINED_FUNCTION_22_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  v17 = OUTLINED_FUNCTION_2_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_313();
  v104 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  sub_1B24C5C14();
  v22 = OUTLINED_FUNCTION_164_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, v10);
  v25 = OUTLINED_FUNCTION_24();
  sub_1B256615C(v25, v26);
  if (EnumTagSinglePayload == 1)
  {
    v27 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    OUTLINED_FUNCTION_142_1();
    sub_1B256E4FC();
    OUTLINED_FUNCTION_297_0();
    OUTLINED_FUNCTION_345();
    v110 = v6;
    v111 = v4;
    OUTLINED_FUNCTION_384();
    MEMORY[0x1B2749D50](v21 + 18, 0x80000001B2592970);
    v28 = sub_1B256E09C();

    v29 = &v27[v105];
    v30 = sub_1B256D5CC();

    if (os_log_type_enabled(v30, v28))
    {
      OUTLINED_FUNCTION_21_3();
      v110 = OUTLINED_FUNCTION_3_23();
      *v1 = 136446466;
      OUTLINED_FUNCTION_98_4();
      MEMORY[0x1B2749D50](v103, v1);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_228_0();
      OUTLINED_FUNCTION_371();

      *(v1 + 4) = v1;
      OUTLINED_FUNCTION_207_0();
      v31 = OUTLINED_FUNCTION_28_1();
      sub_1B2519814(v31, v32, v33);
      OUTLINED_FUNCTION_154();

      *(v1 + 14) = v29;
      OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v30, v28, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_10_7();
    }

    else
    {
    }

    goto LABEL_67;
  }

  v106 = v6;
  v107 = v4;
  v34 = OUTLINED_FUNCTION_208_0();
  v36 = __swift_getEnumTagSinglePayload(v34, v35, v10);
  v37 = v105;
  if (v36)
  {
    goto LABEL_29;
  }

  v101 = v14;
  v102 = v1;
  v38 = 0;
  v100 = v10;
  v6 = *(v10 + 24);
  v39 = *(v9 + v6);
  v40 = *(v39 + 16);
  v41 = v39 + 32;
  v1 = -40;
  v21 = &qword_1EB7D0460;
  while (1)
  {
    if (v40 == v38)
    {
      v21 = *(*(v9 + v6) + 16);
      goto LABEL_13;
    }

    if (v38 >= *(v39 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    sub_1B24C5C14();
    Strong = swift_weakLoadStrong();
    OUTLINED_FUNCTION_146_2();
    sub_1B256615C(v43, v44);
    if (!Strong)
    {
      break;
    }

    ++v38;
    v1 -= 8;
    v41 += 8;
  }

  v21 = v38 + 1;
  v45 = *(*(v9 + v6) + 16);
  if (v45 - 1 == v38)
  {
LABEL_13:
    v1 = v102;
    goto LABEL_28;
  }

  v1 = -v1;
  v39 = v102;
  do
  {
    if (v21 >= v45)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_373();
    sub_1B24C5C14();
    v46 = swift_weakLoadStrong();
    sub_1B256615C(v109, &qword_1EB7D0460);
    if (v46)
    {

      if (v21 != v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v47 = *(v9 + v6);
        v48 = *(v47 + 16);
        if (v38 >= v48)
        {
          goto LABEL_71;
        }

        OUTLINED_FUNCTION_373();
        sub_1B24C5C14();
        if (v21 >= v48)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_373();
        sub_1B24C5C14();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + v6) = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B2456E84();
          v47 = v51;
          *(v9 + v6) = v51;
        }

        sub_1B25660E4(&v110, v47 + 8 * v38 + 32);
        v50 = *(v9 + v6);
        if (v21 >= *(v50 + 16))
        {
          goto LABEL_73;
        }

        sub_1B25660E4(v109, v50 + v1);
      }

      ++v38;
    }

    ++v21;
    v45 = *(*(v9 + v6) + 16);
    v1 += 8;
  }

  while (v21 != v45);
  v1 = v39;
  if (v21 < v38)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_28:
  v52 = OUTLINED_FUNCTION_41_1();
  sub_1B2564454(v52, v53);
  v10 = v100;
  v14 = v101;
  v37 = v105;
LABEL_29:
  v54 = v104;
  sub_1B24C5C14();
  v55 = OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_268_0(v55, v56, v10);
  if (v66)
  {
    sub_1B256615C(v54, &qword_1EB7CFEA0);
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_2_40();
  OUTLINED_FUNCTION_201_0();
  sub_1B25636F8();
  v57 = sub_1B2541168(v14);
  if (v57)
  {
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_50_5();
  v58 = v37;
  v59 = *(v37 + 128);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);

  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_18_16();
  if ((v61 & 1) == 0)
  {
    v39 = v1;
LABEL_44:
    v1 = v37;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v37 + 128);
    v70 = v108;
    *(v37 + 128) = 0x8000000000000000;
    v71 = v70[2];
    v72 = v70[3];

    if (v72 <= v71)
    {
      if (v69)
      {
        sub_1B2560C10();
      }

      else
      {
        sub_1B2562770();
      }

      v70 = v108;
      sub_1B256ED3C();
      MEMORY[0x1B274AFC0](0);
      sub_1B256DA7C();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_25_15();
      if ((*(v70 + v77 + 56) >> v21))
      {
        v78 = ~v76;
        v79 = v70[6];
        v81 = v106;
        v80 = v107;
        while (1)
        {
          v82 = v79 + 24 * v21;
          if ((*(v82 + 16) & 1) == 0)
          {
            v83 = *v82 == v81 && *(v82 + 8) == v80;
            if (v83 || (sub_1B256EB5C() & 1) != 0)
            {
              break;
            }
          }

          v21 = (v21 + 1) & v78;
          OUTLINED_FUNCTION_220_0();
          if (((*(v70 + v84 + 56) >> v21) & 1) == 0)
          {
            v1 = v58;
            goto LABEL_61;
          }
        }

        sub_1B256EC8C();
        __break(1u);
        return;
      }
    }

    else if ((v69 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_61:
    while (1)
    {
      OUTLINED_FUNCTION_220_0();
      OUTLINED_FUNCTION_433();
      OUTLINED_FUNCTION_336_0(v85);
      v88 = v70[6] + 24 * v21;
      *v88 = v87;
      *(v88 + 8) = v86;
      *(v88 + 16) = 0;
      v89 = v70[2];
      v90 = __OFADD__(v89, 1);
      v91 = v89 + 1;
      if (!v90)
      {
        break;
      }

LABEL_75:
      __break(1u);
LABEL_76:
      sub_1B2561E44();
      v70 = v108;
    }

    v70[2] = v91;
    *(v1 + 128) = v70;
    v75 = v86;
    v73 = v86;
    v74 = v87;
    goto LABEL_63;
  }

  v62 = ~v60;
  v63 = *(v59 + 48);
  v64 = v106;
  v39 = v1;
  while (1)
  {
    v65 = v63 + 24 * v21;
    if ((*(v65 + 16) & 1) == 0)
    {
      v66 = *v65 == v64 && *(v65 + 8) == v107;
      if (v66)
      {
        break;
      }

      v67 = sub_1B256EB5C();
      v64 = v106;
      if (v67)
      {
        break;
      }
    }

    v21 = (v21 + 1) & v62;
    OUTLINED_FUNCTION_97_6();
    if ((v68 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v73 = v107;
  v74 = v64;

  v75 = *(*(v59 + 48) + 24 * v21 + 8);
  OUTLINED_FUNCTION_18_1();
  sub_1B24D0BE0();
LABEL_63:
  swift_endAccess();
  OUTLINED_FUNCTION_18_1();
  sub_1B24D0BE8();
  OUTLINED_FUNCTION_142_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_346();
  v110 = v74;
  v111 = v73;
  OUTLINED_FUNCTION_384();
  MEMORY[0x1B2749D50](v75 + 28, 0x80000001B25929C0);
  v92 = sub_1B256E08C();

  v93 = sub_1B256D5CC();

  if (os_log_type_enabled(v93, v92))
  {
    OUTLINED_FUNCTION_21_3();
    v110 = OUTLINED_FUNCTION_126_1();
    OUTLINED_FUNCTION_51_6(4.8752e-34);
    v109[0] = v94;
    v109[1] = v95;
    MEMORY[0x1B2749D50](v103, v39);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_374();

    *(v6 + 4) = v73;
    OUTLINED_FUNCTION_135_2();
    v96 = OUTLINED_FUNCTION_157_0();
    sub_1B2519814(v96, v97, v98);
    OUTLINED_FUNCTION_154();

    *(v6 + 14) = v109;
    OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v99, v92, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

LABEL_66:
  OUTLINED_FUNCTION_0_47();
  sub_1B2563750();
LABEL_67:
  OUTLINED_FUNCTION_45();
}