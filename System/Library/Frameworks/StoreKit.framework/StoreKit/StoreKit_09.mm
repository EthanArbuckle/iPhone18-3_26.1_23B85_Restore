unint64_t sub_1B24E4808()
{
  result = qword_1EB7D1EA0;
  if (!qword_1EB7D1EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D1EA0);
  }

  return result;
}

uint64_t sub_1B24E484C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B24E48B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B24E4924()
{
  result = qword_1EB7D1EA8;
  if (!qword_1EB7D1EA8)
  {
    sub_1B256D47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1EA8);
  }

  return result;
}

void sub_1B24E4990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2008);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  if (a1)
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v6, qword_1ED69A108);
    v7 = *(v30 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B19TransactionReceiver_logKey);
    v8 = *(v30 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B19TransactionReceiver_logKey + 8);
    v9 = sub_1B256E0CC();

    v10 = sub_1B256D5CC();

    if (os_log_type_enabled(v10, v9))
    {
      v29 = "ng transaction batches";
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v3;
      v13 = v12;
      *v11 = 136446466;
      v31 = 91;
      v32 = 0xE100000000000000;
      v33 = v12;
      MEMORY[0x1B2749D50](v7, v8);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v14 = sub_1B2519814(v31, v32, &v33);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1B2519814(0xD00000000000001ALL, v29 | 0x8000000000000000, &v33);
      _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      v15 = v13;
      v3 = v28;
      MEMORY[0x1B274BFF0](v15, -1, -1);
      MEMORY[0x1B274BFF0](v11, -1, -1);
    }

    v16 = *(a1 + 16);
    v17 = (v3 + 8);
    for (i = (a1 + 40); v16; --v16)
    {
      v19 = *i;
      v31 = *(i - 1);
      v32 = v19;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2010);
      sub_1B256DEEC();

      (*v17)(v5, v2);
      i += 2;
    }
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v20, qword_1ED69A108);
    v21 = *(v30 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B19TransactionReceiver_logKey);
    v22 = *(v30 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B19TransactionReceiver_logKey + 8);
    v23 = sub_1B256E0CC();

    v24 = sub_1B256D5CC();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136446466;
      v31 = 91;
      v32 = 0xE100000000000000;
      v33 = v26;
      MEMORY[0x1B2749D50](v21, v22);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v27 = sub_1B2519814(v31, v32, &v33);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1B2519814(0xD000000000000026, 0x80000001B25909C0, &v33);
      _os_log_impl(&dword_1B23EF000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v26, -1, -1);
      MEMORY[0x1B274BFF0](v25, -1, -1);
    }

    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2010);
    sub_1B256DEFC();
  }
}

void sub_1B24E4F90(uint64_t a1, unint64_t a2)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FD8);
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v27 - v6;
  if (a2 >> 60 == 15)
  {
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FE0);
    sub_1B256DEFC();
  }

  else
  {
    sub_1B256CE7C();
    swift_allocObject();
    sub_1B244784C(a1, a2);
    v8 = sub_1B256CE6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FE8);
    sub_1B24E5CC0();
    sub_1B256CE5C();
    v27 = v8;
    v28 = a1;
    v29 = a2;
    v30 = v2;
    v21 = 0;
    v22 = v32;
    v23 = *(v32 + 16);
    v24 = (v5 + 8);
    for (i = (v32 + 48); ; i += 3)
    {
      if (v23 == v21)
      {

        sub_1B2443AD0(v28, v29);
        goto LABEL_11;
      }

      if (v21 >= v22[2])
      {
        break;
      }

      ++v21;
      v26 = *(i - 1);
      a2 = *i;
      v32 = *(i - 2);
      v33 = v26;
      v34 = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FE0);
      sub_1B256DEEC();

      (*v24)(v7, v31);
    }

    __break(1u);
    swift_once();
    v9 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v9, qword_1ED69A108);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD00000000000002DLL, 0x80000001B2590960);
    v35[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    sub_1B256E78C();
    v10 = v32;
    v11 = v33;
    v12 = *(v23 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B26SubscriptionStatusReceiver_logKey + 8);
    v31 = *(v23 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B26SubscriptionStatusReceiver_logKey);
    v13 = sub_1B256E0AC();

    v14 = sub_1B256D5CC();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = a2;
      v17 = v24;
      v18 = v16;
      v35[0] = v16;
      *v15 = 136446466;
      v32 = 91;
      v33 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v31, v12);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v19 = sub_1B2519814(v32, v33, v35);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1B2519814(v10, v11, v35);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1B23EF000, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v18, -1, -1);
      MEMORY[0x1B274BFF0](v15, -1, -1);
      sub_1B2443AD0(v17, v29);

      return;
    }

    sub_1B2443AD0(v24, a2);

LABEL_11:
  }
}

void sub_1B24E54E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FD8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  if (a1)
  {
    v39 = v7;
    v40 = v5;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger();
    v9 = __swift_project_value_buffer(v8, qword_1ED69A108);
    v41 = v1;
    v10 = *(v1 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B26SubscriptionStatusReceiver_logKey);
    v11 = *(v1 + OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B26SubscriptionStatusReceiver_logKey + 8);
    v12 = sub_1B256E0CC();

    v43 = v9;
    v13 = sub_1B256D5CC();

    v14 = os_log_type_enabled(v13, v12);
    v42 = v11;
    v38 = v10;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v45 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v49 = v17;
      *v16 = 136446466;
      v46 = 91;
      v47 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v10, v11);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v18 = sub_1B2519814(v46, v47, &v49);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1B2519814(0xD00000000000001BLL, 0x80000001B2590900, &v49);
      _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v17, -1, -1);
      v19 = v16;
      v4 = v45;
      MEMORY[0x1B274BFF0](v19, -1, -1);
    }

    v20 = *(a1 + 16);
    v21 = (a1 + 32);
    v44 = (v4 + 8);
    v45 = OBJC_IVAR____TtCV8StoreKit22CacheServiceConnectionP33_D5F6FFD989A4D8B4ACADD1724F2B2E1B26SubscriptionStatusReceiver_continuation;
    v37 = "Received subscription batch";
    *&v22 = 136446466;
    v36 = v22;
    v23 = v40;
    for (i = v39; v20; --v20)
    {
      v25 = *v21;
      swift_bridgeObjectRetain_n();
      sub_1B2474B84(v25);
      if (v27)
      {
        v46 = v26;
        v47 = v27;
        v48 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FE0);
        sub_1B256DEEC();

        (*v44)(i, v23);
      }

      else
      {
        v29 = sub_1B256E0AC();
        v30 = v42;

        v31 = sub_1B256D5CC();

        if (os_log_type_enabled(v31, v29))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v49 = v33;
          *v32 = v36;
          v46 = 91;
          v47 = 0xE100000000000000;
          MEMORY[0x1B2749D50](v38, v30);
          MEMORY[0x1B2749D50](8285, 0xE200000000000000);
          v34 = sub_1B2519814(v46, v47, &v49);

          *(v32 + 4) = v34;
          *(v32 + 12) = 2082;
          *(v32 + 14) = sub_1B2519814(0xD000000000000031, v37 | 0x8000000000000000, &v49);
          _os_log_impl(&dword_1B23EF000, v31, v29, "%{public}s%{public}s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B274BFF0](v33, -1, -1);
          v35 = v32;
          i = v39;
          v23 = v40;
          MEMORY[0x1B274BFF0](v35, -1, -1);
        }
      }

      ++v21;
    }
  }

  else
  {
    v46 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1FE0);
    sub_1B256DEFC();
  }
}

id sub_1B24E5A84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B24E5AE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
}

void sub_1B24E5BAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_1B24E5C4C(319, a4);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B24E5C4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7CFF40);
    v3 = sub_1B256DF0C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1B24E5CC0()
{
  result = qword_1EB7D1FF0;
  if (!qword_1EB7D1FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D1FE8);
    sub_1B24E5D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1FF0);
  }

  return result;
}

unint64_t sub_1B24E5D44()
{
  result = qword_1EB7D1FF8;
  if (!qword_1EB7D1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1FF8);
  }

  return result;
}

uint64_t static Product.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v11 = *(a1 + 16);
  v12 = v2;
  v13 = *(a1 + 32);
  v3 = *(a2 + 24);
  v8 = *(a2 + 16);
  v9 = v3;
  v10 = *(a2 + 32);
  sub_1B24472B8(v11, v2, v13);
  v4 = OUTLINED_FUNCTION_22_1();
  sub_1B24472B8(v4, v5, v10);
  v6 = static BackingValue.== infix(_:_:)(&v11, &v8);
  sub_1B24472E0(v8, v9, v10);
  sub_1B24472E0(v11, v12, v13);
  return v6 & 1;
}

uint64_t sub_1B24E5E54()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 104) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  v8 = type metadata accessor for ProductRequest();
  *(v0 + 48) = v8;
  OUTLINED_FUNCTION_2_2(v8);
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 105) = *v2;
  v9 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24E5EF8()
{
  if (qword_1EB7CD328 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v18 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v17 = *(v0 + 104);
  sub_1B2503724();
  v8 = v7;
  sub_1B2503518();
  v10 = v9;

  MEMORY[0x1B2749D50](843797343, 0xE400000000000000);
  sub_1B2498F24(v2, v1, &qword_1EB7D1850);
  v11 = v1 + v3[5];
  *v11 = v6;
  *(v11 + 8) = v17 & 1;
  *(v1 + v3[6]) = 2;
  *(v1 + v3[7]) = v8;
  *(v1 + v3[8]) = v10;
  v12 = (v1 + v3[9]);
  *v12 = v5;
  v12[1] = v4;
  *(v1 + v3[10]) = 0;
  sub_1B24EB10C(v1, v18, type metadata accessor for ProductRequest);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2050));
  j__swift_bridgeObjectRetain();
  *(v0 + 72) = sub_1B24FF218(v18);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_41_7(v13);
  *v14 = v15;
  v14[1] = sub_1B24E6120;

  return sub_1B24FA084();
}

uint64_t sub_1B24E6120()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_19();
  v4 = v3;
  OUTLINED_FUNCTION_13_9();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_8();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (v0)
  {
    v8 = sub_1B24E62B0;
  }

  else
  {
    *(v4 + 96) = v1;
    v8 = sub_1B24E622C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B24E622C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();
  sub_1B24EB16C(v1, v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_1B24E62B0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();
  sub_1B24EB16C(v2, v3);
  v4 = parseError(_:)(v1);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = *(v0 + 105);
  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  v7 = 0;
  if (v5 != 6)
  {
    v7 = qword_1B25831E0[*(v0 + 105)];
  }

  v8 = *(v0 + 88);
  v9 = objc_allocWithZone(type metadata accessor for SKTwoErrorEvent());
  v10 = v4;
  v11 = [v9 init];
  v12 = sub_1B256D0CC();
  [v11 setPrimaryError_];

  v13 = sub_1B256D0CC();
  [v11 setMappedError_];

  [v11 setUserAction_];
  v14 = &v11[OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context];
  *v14 = v7;
  v14[8] = v5 == 6;
  [v11 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();

  return v15();
}

uint64_t sub_1B24E64B4@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_9();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_1_9();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v26, 1, a2);
}

uint64_t sub_1B24E66F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1780);
  v6 = OUTLINED_FUNCTION_2_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v136 = &v124 - v7;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2058);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a2 + 40) = v11;
  v13 = objc_opt_self();
  *&v130[0] = v9;
  *(&v130[0] + 1) = v8;
  LOBYTE(v130[1]) = v10;
  BackingValue.foundation.getter(v135);
  __swift_project_boxed_opaque_existential_1(v135, *(&v135[1] + 1));
  v12 = sub_1B256EB3C();
  __swift_destroy_boxed_opaque_existential_1(v135);
  LODWORD(v13) = [v13 isValidJSONObject_];
  swift_unknownObjectRelease();
  if (!v13)
  {
    v26 = OUTLINED_FUNCTION_2_29();
    sub_1B24472E0(v26, v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D0);
    sub_1B2493830();
    OUTLINED_FUNCTION_15_9();
    *v29 = 0u;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 4;
    swift_willThrow();
  }

  v129 = v11;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  v14 = OUTLINED_FUNCTION_2_29();
  sub_1B24472B8(v14, v15, v16);
  OUTLINED_FUNCTION_1_33();
  sub_1B24AEC70(v17, v18, v19, v20);
  if (v2)
  {
    v23 = OUTLINED_FUNCTION_2_29();
    sub_1B24472E0(v23, v24, v25);
    LODWORD(v9) = 0;
    LODWORD(v10) = 0;
    LODWORD(v8) = 0;
    OUTLINED_FUNCTION_22_9();
    goto LABEL_6;
  }

  v13 = v22;
  *a2 = v21;
  *(a2 + 8) = v22;
  OUTLINED_FUNCTION_1_33();
  sub_1B24AEC70(v31, v32, v33, v34);
  *(a2 + 48) = v41;
  *(a2 + 56) = v42;
  OUTLINED_FUNCTION_1_33();
  sub_1B24AEC70(v43, v44, v45, v46);
  *(a2 + 80) = v47;
  *(a2 + 88) = v48;
  sub_1B24AEC70(&unk_1F29AF1F8, v9, v8, v10);
  *(a2 + 96) = v49;
  *(a2 + 104) = v50;
  sub_1B24AE8B4(&unk_1F29AF220);
  v52 = v51;
  if (!*(v51 + 16))
  {
    v62 = OUTLINED_FUNCTION_2_29();
    sub_1B24472E0(v62, v63, v64);

    LODWORD(v12) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D0);
    sub_1B2493830();
    OUTLINED_FUNCTION_15_9();
    *v65 = &unk_1F29AF248;
    *(v65 + 8) = xmmword_1B2578530;
    *(v65 + 24) = 0;
    *(v65 + 32) = 3;
    swift_willThrow();

    LODWORD(v10) = 0;
    LODWORD(v8) = 0;
    OUTLINED_FUNCTION_22_9();
    LODWORD(v9) = 1;
    goto LABEL_6;
  }

  v53 = *(v51 + 32);
  v127 = v13;
  v128 = v53;
  v54 = *(v52 + 40);
  v55 = *(v52 + 48);
  sub_1B24472B8(v53, v54, *(v52 + 48));
  v56 = v54;
  v57 = v128;

  sub_1B24AF3A0(&unk_1F29AF270, v57, v56, v55, v58, v59, v60, v61, v124, v125, v126, v127, v128, v129, *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), *&v130[2], SBYTE8(v130[2]), *&v130[3], *(&v130[3] + 1), *&v130[4], *(&v130[4] + 1), *&v130[5], *(&v130[5] + 1), *&v130[6], *(&v130[6] + 1), *&v130[7], *(&v130[7] + 1), *&v130[8], *(&v130[8] + 1));
  *(a2 + 112) = v133;
  *(a2 + 128) = v134;
  v66 = v57;
  v67 = v56;
  v68 = v56;
  LOBYTE(v56) = v55;
  sub_1B24AEC70(&unk_1F29AF298, v66, v68, v55);
  v70 = v69;
  v71 = v128;
  v128 = v72;
  sub_1B24472E0(v71, v67, v56);
  v73 = v128;
  *(a2 + 136) = v70;
  *(a2 + 144) = v73;
  OUTLINED_FUNCTION_1_33();
  sub_1B24AF79C(v74, v75, v76, v77, v78, v79, v80, v81, v124, v125, v126, v127, v128, v129, *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), *&v130[2], SBYTE8(v130[2]), *&v130[3], *(&v130[3] + 1), *&v130[4], *(&v130[4] + 1), *&v130[5], *(&v130[5] + 1), *&v130[6], *(&v130[6] + 1), *&v130[7], *(&v130[7] + 1), *&v130[8], *(&v130[8] + 1));
  *(a2 + 152) = v82 & 1;
  OUTLINED_FUNCTION_1_33();
  sub_1B24AEC70(v83, v84, v85, v86);
  v88 = v87;
  *(a2 + 64) = v87;
  *(a2 + 72) = v89;
  v128 = v89;
  OUTLINED_FUNCTION_1_33();
  sub_1B24AEC70(v90, v91, v92, v93);
  v124 = v88;
  v126 = v94;
  v125 = type metadata accessor for Product();
  sub_1B256D3DC();
  v95 = v136;
  sub_1B256D46C();
  v12 = v95;
  v96 = sub_1B256D45C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v96);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B243E88C(v12, &unk_1EB7D1780);
    v98 = OUTLINED_FUNCTION_2_29();
    sub_1B24472E0(v98, v99, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D10D0);
    sub_1B2493830();
    OUTLINED_FUNCTION_15_9();
    v101 = MEMORY[0x1E69E6158];
    *v102 = &unk_1F29AF388;
    *(v102 + 8) = v101;
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = 0;
    swift_willThrow();

    LODWORD(v13) = 0;
    LODWORD(v12) = 0;
    OUTLINED_FUNCTION_33_6();
    LODWORD(v11) = 1;
LABEL_6:
    sub_1B24472E0(*(a2 + 16), *(a2 + 24), *(a2 + 32));

    if (v9)
    {

      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (!v10)
    {
LABEL_8:
      if (v9)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    if (v9)
    {
LABEL_9:

      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

LABEL_16:
    if (!v8)
    {
LABEL_10:
      if (v13)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:

    if (v13)
    {
LABEL_11:
      memcpy(v135, (a2 + 160), 0xD0uLL);
      result = sub_1B243E88C(v135, &qword_1EB7D2020);
      if (!v11)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

LABEL_18:
    if (!v11)
    {
LABEL_12:
      if (!v12)
      {
        return result;
      }

LABEL_20:
      v37 = type metadata accessor for Product();
      v38 = OUTLINED_FUNCTION_311(a2 + *(v37 + 64));
      return sub_1B24EB1C4(v38, v39, v40);
    }

LABEL_19:
    v35 = *(type metadata accessor for Product() + 60);
    sub_1B256D47C();
    OUTLINED_FUNCTION_7_0();
    result = (*(v36 + 8))(a2 + v35);
    if (!v12)
    {
      return result;
    }

    goto LABEL_20;
  }

  sub_1B256D43C();
  (*(*(v96 - 8) + 8))(v12, v96);

  OUTLINED_FUNCTION_1_33();
  sub_1B24AFAEC(v103, v104, v105, v106, v107, v108, v109, v110, v124, v125, v126, v127, v128, v129, *&v130[0]);
  v130[0] = v135[0];
  LOBYTE(v130[1]) = v135[1];
  sub_1B24E7A90(v135);
  v111 = v135[1];
  v112 = *&v135[2];
  v113 = *(&v135[2] + 8);
  v114 = a2 + *(v125 + 64);
  *v114 = v135[0];
  *(v114 + 16) = v111;
  *(v114 + 32) = v112;
  *(v114 + 40) = v113;
  v115 = v124;
  v116 = v128;
  v117 = v124 == 0xD00000000000001BLL && 0x80000001B258FD90 == v128;
  if (v117 || (sub_1B256EB5C() & 1) != 0 || (v115 == 0xD000000000000013 ? (v118 = 0x80000001B2590A10 == v116) : (v118 = 0), v118 || (sub_1B256EB5C() & 1) != 0))
  {
    v131[0] = v9;
    v131[1] = v8;
    v132 = v10;
    sub_1B2491634(v131, v135);
    memcpy(v130, v135, sizeof(v130));
    nullsub_3(v130);
    v119 = (a2 + 160);
    v120 = v130;
  }

  else
  {
    v121 = OUTLINED_FUNCTION_2_29();
    sub_1B24472E0(v121, v122, v123);
    sub_1B24EB214(v135);
    v119 = (a2 + 160);
    v120 = v135;
  }

  memcpy(v119, v120, 0xD0uLL);
  OUTLINED_FUNCTION_1_33();
  result = sub_1B2507AA8();
  *(a2 + *(v125 + 68)) = result & 1;
  return result;
}

uint64_t Product.currentEntitlement.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_16_7();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24E7000()
{
  OUTLINED_FUNCTION_21_5();
  v0[4] = *(v0[3] + 56);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_36_4(v1);

  return static Transaction.currentEntitlement(for:)();
}

uint64_t sub_1B24E7180@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = Product.ProductType.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B24E71C0@<X0>(uint64_t *a1@<X8>)
{
  result = Product.ProductType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

StoreKit::Product::Image::FileFormat_optional __swiftcall Product.Image.FileFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B256E91C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Product.Image.FileFormat.rawValue.getter()
{
  result = 6778480;
  switch(*v0)
  {
    case 1:
      result = 6778986;
      break;
    case 2:
      result = 6711655;
      break;
    case 3:
      result = 1885496695;
      break;
    case 4:
      result = 1718183272;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B24E72D8@<X0>(uint64_t *a1@<X8>)
{
  result = Product.Image.FileFormat.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

StoreKit::Product::Image::ResizingMode_optional __swiftcall Product.Image.ResizingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B256E91C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Product.Image.ResizingMode.rawValue.getter()
{
  if (*v0)
  {
    return 104;
  }

  else
  {
    return 119;
  }
}

uint64_t sub_1B24E73B0@<X0>(uint64_t *a1@<X8>)
{
  result = Product.Image.ResizingMode.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

BOOL static Product.Image.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = *a1 == *a2 && v3 == v9;
    if (!v15 && (sub_1B256EB5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((sub_1B2451AEC(v4, v10) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v11 && v6 == v12)
  {
    if (v8 == v14)
    {
      return v7 == v13;
    }

    return 0;
  }

  OUTLINED_FUNCTION_22_1();
  v17 = sub_1B256EB5C();
  result = 0;
  if ((v17 & 1) != 0 && v8 == v14)
  {
    return v7 == v13;
  }

  return result;
}

uint64_t Product.Image.hash(into:)()
{
  v2 = v0[5];
  v1 = v0[6];
  if (v0[1])
  {
    sub_1B256ED5C();
    sub_1B256DA7C();
  }

  else
  {
    sub_1B256ED5C();
  }

  sub_1B2456EAC();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v2);
  return MEMORY[0x1B274AFC0](v1);
}

uint64_t Product.Image.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[5];
  v3 = v0[6];
  sub_1B256ED3C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256DA7C();
  }

  sub_1B2456EAC();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v2);
  MEMORY[0x1B274AFC0](v3);
  return sub_1B256ED7C();
}

uint64_t sub_1B24E76AC()
{
  sub_1B256ED3C();
  Product.Image.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t Product.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1B24472B8(v2, v3, v4);
}

uint64_t Product.jsonRepresentation.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = sub_1B24E7908();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B256D22C();

    return v3;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = *(v0 + 32);
    v16 = *(v0 + 16);
    v17 = v6;
    BackingValue.foundation.getter(v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v7 = sub_1B256EB3C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v15[0] = 0;
    v8 = [v5 dataWithJSONObject:v7 options:2 error:v15];
    swift_unknownObjectRelease();
    v9 = v15[0];
    if (v8)
    {
      v10 = sub_1B256D22C();
      v12 = v11;

      sub_1B256D1FC();
      v13 = sub_1B256D57C();
      sub_1B256D22C();

      sub_1B2443AE4(v10, v12);
      return OUTLINED_FUNCTION_22_1();
    }

    else
    {
      v14 = v9;
      sub_1B256D0DC();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

void *sub_1B24E7908()
{
  explicit = atomic_load_explicit((v0 + 16), memory_order_acquire);
  if (explicit)
  {
    v2 = explicit;
  }

  return explicit;
}

uint64_t Product.subscription.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 160), 0xD0uLL);
  memcpy(a1, (v1 + 160), 0xD0uLL);
  return sub_1B2498F24(__dst, v4, &qword_1EB7D2020);
}

uint64_t Product.image.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Product();
  v4 = OUTLINED_FUNCTION_311(v1 + *(v3 + 64));
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_1B24EAA80(v4, v5, v6);
}

uint64_t sub_1B24E7A90@<X0>(void *a1@<X8>)
{
  sub_1B24AE498();
  if (v1)
  {
    return OUTLINED_FUNCTION_37_5();
  }

  v6 = v3;
  v7 = v4;
  OUTLINED_FUNCTION_8_21();
  sub_1B24AE6C8();
  v9 = v8;
  OUTLINED_FUNCTION_8_21();
  sub_1B24AE6C8();
  v27 = v10;
  OUTLINED_FUNCTION_8_21();
  sub_1B24AE498();
  v30 = v7;
  v31 = a1;
  v28 = v9;
  v29 = v6;
  v25 = v12;
  v26 = v11;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v13 != 10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2060);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B2578530;
    v16 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v16);

    *(v15 + 32) = 0x6F6C6F4374786574;
    *(v15 + 40) = 0xE900000000000072;
    OUTLINED_FUNCTION_8_21();
    sub_1B24AE498();
    v18 = v17;
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2448D00();
      v14 = v23;
    }

    v21 = *(v14 + 16);
    if (v21 >= *(v14 + 24) >> 1)
    {
      sub_1B2448D00();
      v14 = v24;
    }

    *(v14 + 16) = v21 + 1;
    v22 = v14 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    ++v13;
  }

  result = OUTLINED_FUNCTION_37_5();
  *v31 = v26;
  v31[1] = v25;
  v31[2] = v14;
  v31[3] = v29;
  v31[4] = v30;
  v31[5] = v28;
  v31[6] = v27;
  return result;
}

uint64_t sub_1B24E7D0C@<X0>(uint64_t *a1@<X8>)
{
  result = Product.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Product.hash(into:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.hash(into:)();

  return sub_1B24472E0(v2, v3, v4);
}

uint64_t Product.hashValue.getter()
{
  sub_1B256ED3C();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.hash(into:)();
  sub_1B24472E0(v2, v3, v4);
  return sub_1B256ED7C();
}

uint64_t sub_1B24E7E04()
{
  sub_1B256ED3C();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.hash(into:)();
  sub_1B24472E0(v2, v3, v4);
  return sub_1B256ED7C();
}

uint64_t Product.debugDescription.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1B24472B8(v2, v3, v4);
  BackingValue.debugDescription.getter();
  sub_1B24472E0(v2, v3, v4);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t static Product.products<A>(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_2_2(v4);
  v5 = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_18_10(v5);
  v0[6] = v6;
  v0[7] = OUTLINED_FUNCTION_250();
  v7 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24E7F88()
{
  OUTLINED_FUNCTION_21_5();
  v1 = OUTLINED_FUNCTION_5_24();
  v2(v1);
  OUTLINED_FUNCTION_24_10();
  v3 = sub_1B256DCCC();
  *(v0 + 96) = 6;
  *(v0 + 64) = v3;
  v4 = type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_28_8(v4);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v5, qword_1ED69A108);
  v6 = sub_1B24D3E10();
  OUTLINED_FUNCTION_34_6(v6, v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41_7(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_21_11(v9);
  OUTLINED_FUNCTION_31_7();

  return sub_1B24E5E54();
}

uint64_t sub_1B24E809C()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_12_19();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_32_5();
    sub_1B243E88C(v3, &qword_1EB7D1850);

    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_42_4();

    __asm { BRAA            X2, X16 }
  }

  sub_1B243E88C(*(v3 + 40), &qword_1EB7D1850);

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_42_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static Product.productsInternal<A>(for:origin:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_39_7(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_2_2(v6);
  v7 = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_18_10(v7);
  *(v1 + 48) = v8;
  *(v1 + 56) = OUTLINED_FUNCTION_250();
  *(v1 + 97) = *v0;
  v9 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24E82EC()
{
  OUTLINED_FUNCTION_24_5();
  v0 = OUTLINED_FUNCTION_5_24();
  v1(v0);
  OUTLINED_FUNCTION_24_10();
  v2 = sub_1B256DCCC();
  v3 = OUTLINED_FUNCTION_38_8(v2);
  OUTLINED_FUNCTION_28_8(v3);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_1ED69A108);
  v5 = sub_1B24D3E10();
  OUTLINED_FUNCTION_34_6(v5, v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_7(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_21_11(v8);
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_42_4();

  return sub_1B24E5E54();
}

uint64_t sub_1B24E83F0()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_12_19();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_32_5();
    sub_1B243E88C(v3, &qword_1EB7D1850);

    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_42_4();

    __asm { BRAA            X2, X16 }
  }

  sub_1B243E88C(*(v3 + 40), &qword_1EB7D1850);

  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_42_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24E8578()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static Product.productsRequest<A>(bundleID:identifiers:origin:serverOverride:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v4 = v3;
  *(v0 + 40) = v1;
  *(v0 + 48) = v5;
  *(v0 + 169) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  *(v0 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_2_2(v10);
  *(v0 + 56) = OUTLINED_FUNCTION_250();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v11);
  *(v0 + 64) = OUTLINED_FUNCTION_250();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C20);
  OUTLINED_FUNCTION_2_2(v12);
  *(v0 + 72) = OUTLINED_FUNCTION_250();
  v13 = type metadata accessor for ClientOverride.Server(0);
  *(v0 + 80) = v13;
  OUTLINED_FUNCTION_2_2(v13);
  *(v0 + 88) = OUTLINED_FUNCTION_250();
  v14 = type metadata accessor for ClientOverride(0);
  *(v0 + 96) = v14;
  OUTLINED_FUNCTION_2_2(v14);
  *(v0 + 104) = OUTLINED_FUNCTION_250();
  *(v0 + 112) = *(v2 - 8);
  *(v0 + 120) = OUTLINED_FUNCTION_250();
  *(v0 + 170) = *v4;
  v15 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1B24E8768()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 169);
  v4 = OUTLINED_FUNCTION_24_10();
  v5(v4);
  OUTLINED_FUNCTION_24_10();
  *(v0 + 128) = sub_1B256DCCC();
  sub_1B24E8CE8(v3, v2);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v1);
  v7 = *(v0 + 88);
  if (EnumTagSinglePayload == 1)
  {
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
    __swift_storeEnumTagSinglePayload(v7, 1, 3, v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v8) != 1)
    {
      sub_1B243E88C(*(v0 + 72), &qword_1EB7D0C20);
    }
  }

  else
  {
    sub_1B24782CC(*(v0 + 72), *(v0 + 88));
  }

  v25 = *(v0 + 170);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v24 = *(v0 + 88);
  v13 = *(v0 + 64);
  v26 = *(v0 + 56);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = sub_1B256D3CC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
  *v12 = xmmword_1B25793F0;
  v17 = v12 + v11[8];
  v18 = v12 + v11[9];
  v19 = v11[10];
  __swift_storeEnumTagSinglePayload(v12 + v19, 1, 1, v16);
  sub_1B2443AD0(*v12, v12[1]);
  *v12 = xmmword_1B25793F0;
  v12[2] = v14;
  v12[3] = v15;
  v12[4] = 0;
  v12[5] = 0;
  sub_1B24782CC(v24, v12 + v11[7]);
  *v17 = 0;
  v17[8] = 1;
  *v18 = 0;
  v18[8] = 1;

  sub_1B247858C(v13, v12 + v19);
  *(v0 + 168) = v25;
  sub_1B24EB10C(v12, v26, type metadata accessor for ClientOverride);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v11);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v20 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v20, qword_1ED69A108);
  sub_1B24D3E10();
  *(v0 + 136) = v21;
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_1B24E8A50;

  return sub_1B24E5E54();
}

uint64_t sub_1B24E8A50()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_12_19();
  v4 = v3;
  OUTLINED_FUNCTION_13_9();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_8();
  *v7 = v6;
  v4[19] = v0;

  if (v0)
  {
    sub_1B243E88C(v4[7], &qword_1EB7D1850);

    v8 = sub_1B24E8C50;
  }

  else
  {
    v9 = v4[7];
    v4[20] = v1;
    sub_1B243E88C(v9, &qword_1EB7D1850);

    v8 = sub_1B24E8BB0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B24E8BB0()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_15_18();

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_1B24E8C50()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_15_18();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24E8CE8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = 3;
LABEL_5:
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
    __swift_storeEnumTagSinglePayload(a2, v3, 3, v4);
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 1;
LABEL_7:
  v6 = type metadata accessor for ClientOverride.Server(0);

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t static Product.subscriptionsInternal<A>(groupIDs:origin:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_39_7(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_2_2(v6);
  v7 = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_18_10(v7);
  *(v1 + 48) = v8;
  *(v1 + 56) = OUTLINED_FUNCTION_250();
  *(v1 + 97) = *v0;
  v9 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24E8E4C()
{
  OUTLINED_FUNCTION_24_5();
  v0 = OUTLINED_FUNCTION_5_24();
  v1(v0);
  OUTLINED_FUNCTION_24_10();
  v2 = sub_1B256DCCC();
  v3 = OUTLINED_FUNCTION_38_8(v2);
  OUTLINED_FUNCTION_28_8(v3);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_1ED69A108);
  v5 = sub_1B24D3E10();
  OUTLINED_FUNCTION_34_6(v5, v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_7(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_21_11(v8);
  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_42_4();

  return sub_1B24E5E54();
}

uint64_t sub_1B24E8F50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B24E8F70, 0, 0);
}

uint64_t sub_1B24E8F70()
{
  v10 = v0;
  v1 = *(v0 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
  *&v7 = v1;

  BackingValue.init(foundation:)(&v7, &v5);
  v2 = *(v0 + 16);
  v7 = v5;
  v8 = v6;
  sub_1B24E66F8(&v7, v2);
  OUTLINED_FUNCTION_7_2();

  return v4();
}

uint64_t Product.latestTransaction.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_16_7();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24E9060()
{
  OUTLINED_FUNCTION_21_5();
  v0[4] = *(v0[3] + 56);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_36_4(v1);

  return static Transaction.latest(for:)();
}

uint64_t sub_1B24E910C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t Product.currentEntitlements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = xmmword_1B2580A90;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t Product.priceFormatStyle.getter()
{
  v1 = sub_1B256D47C();
  OUTLINED_FUNCTION_1_9();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Product();
  v11 = *(v3 + 16);
  v11(v9, v0 + *(v10 + 60), v1);
  sub_1B256D3FC();
  v11(v7, v9, v1);
  sub_1B256E23C();
  return (*(v3 + 8))(v9, v1);
}

uint64_t sub_1B24E9384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1B256D48C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x1E6969868], v5);
  sub_1B256D49C();
  (*(v6 + 8))(v8, v5);
  v9 = sub_1B256D47C();
  (*(*(v9 - 8) + 16))(v4, a1, v9);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
  return sub_1B256D4BC();
}

uint64_t Product.subscriptionPeriodFormatStyle.getter()
{
  v1 = sub_1B256D4DC();
  v2 = OUTLINED_FUNCTION_2_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v3 = sub_1B256D47C();
  OUTLINED_FUNCTION_1_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = sub_1B256D2FC();
  v11 = OUTLINED_FUNCTION_2_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v12 = *(type metadata accessor for Product() + 60);
  sub_1B256D2EC();
  (*(v5 + 16))(v9, v0 + v12, v3);
  sub_1B24E9384(v0 + v12);
  return sub_1B256D30C();
}

uint64_t _s8StoreKit7ProductV11priceLocale10Foundation0E0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Product() + 60);
  sub_1B256D47C();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1B24E9760()
{
  v2 = *(v0 + 24);

  sub_1B256EAAC();
  sub_1B243E6F8();
  sub_1B256E35C();

  sub_1B24EB0B8(&v2);
  sub_1B256EAAC();
  sub_1B256E35C();

  sub_1B256E35C();

  sub_1B256E35C();

  sub_1B256D13C();
}

uint64_t Product.Image.url<A, B>(width:height:fileFormat:resizingMode:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v29 = *a3;
  v28 = *a4;
  v5 = v4[4];
  v6 = v4[5];
  v27 = v4[6];
  v34 = v4[3];
  v35 = v5;
  v7 = 0xE300000000000000;
  v32 = 8222587;
  v33 = 0xE300000000000000;
  sub_1B256E2EC();

  sub_1B24E64B4(sub_1B24EAAD0, MEMORY[0x1E69E6530], v8, &v30);
  v9 = v30;
  if (v31)
  {
    v9 = v6;
  }

  v30 = v9;
  v30 = sub_1B256EAAC();
  v31 = v10;
  sub_1B243E6F8();
  v11 = sub_1B256E35C();
  v13 = v12;

  v34 = v11;
  v35 = v13;
  v32 = 8218747;
  v33 = 0xE300000000000000;
  sub_1B256E2EC();
  sub_1B24E64B4(sub_1B24EAAEC, MEMORY[0x1E69E6530], v14, &v30);
  v15 = v30;
  if (v31)
  {
    v15 = v27;
  }

  v30 = v15;
  v30 = sub_1B256EAAC();
  v31 = v16;
  v17 = OUTLINED_FUNCTION_3_31();
  v19 = v18;

  v34 = v17;
  v35 = v19;
  v32 = 8217467;
  v33 = 0xE300000000000000;
  v20 = 119;
  if (v28)
  {
    v20 = 104;
  }

  if (v28 == 2)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = 0xE100000000000000;
  }

  v30 = v20;
  v31 = v21;
  v22 = OUTLINED_FUNCTION_3_31();
  v24 = v23;

  v34 = v22;
  v35 = v24;
  v32 = 8218235;
  v33 = 0xE300000000000000;
  v25 = 6778480;
  switch(v29)
  {
    case 1:
      v25 = 6778986;
      break;
    case 2:
      v25 = 6711655;
      break;
    case 3:
      v7 = 0xE400000000000000;
      v25 = 1885496695;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v25 = 1718183272;
      break;
    default:
      break;
  }

  v30 = v25;
  v31 = v7;
  OUTLINED_FUNCTION_3_31();

  sub_1B256D13C();
}

uint64_t sub_1B24E9D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  (*(v7 + 16))(&v21[-v11], a1, a2);
  if ((sub_1B256E39C() & 1) != 0 && sub_1B256E38C() > 64)
  {
    v24 = 0x8000000000000000;
    if (sub_1B256E39C())
    {
      if (sub_1B256E38C() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v22 = sub_1B256E39C();
    v13 = sub_1B256E38C();
    if (v22)
    {
      if (v13 > 64)
      {
LABEL_8:
        sub_1B24D40D8();
        sub_1B256E36C();
        v14 = sub_1B256D92C();
        result = (*(v7 + 8))(v10, a2);
        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_1B256EC7C();
      sub_1B256EB2C();
      v16 = sub_1B256D92C();
      result = (*(v7 + 8))(v10, a2);
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1B256E37C();
      goto LABEL_14;
    }

    if (v13 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1B256E38C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = sub_1B256E39C();
    v18 = sub_1B256E38C();
    if ((v17 & 1) == 0)
    {
      break;
    }

    if (v18 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1B24D40D8();
    sub_1B256E36C();
    v19 = sub_1B256D92C();
    (*(v7 + 8))(v10, a2);
    if (v19)
    {
      __break(1u);
LABEL_19:
      if (sub_1B256E38C() == 64 && (sub_1B256E39C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v18 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1B256E37C();
LABEL_24:
  v20 = sub_1B256E37C();
  result = (*(v7 + 8))(v12, a2);
  *v23 = v20;
  return result;
}

uint64_t sub_1B24EA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  (*(v7 + 16))(&v21[-v11], a1, a2);
  if ((sub_1B256E39C() & 1) != 0 && sub_1B256E38C() > 64)
  {
    v24 = 0x8000000000000000;
    if (sub_1B256E39C())
    {
      if (sub_1B256E38C() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v22 = sub_1B256E39C();
    v13 = sub_1B256E38C();
    if (v22)
    {
      if (v13 > 64)
      {
LABEL_8:
        sub_1B24D40D8();
        sub_1B256E36C();
        v14 = sub_1B256D92C();
        result = (*(v7 + 8))(v10, a2);
        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_1B256EC7C();
      sub_1B256EB2C();
      v16 = sub_1B256D92C();
      result = (*(v7 + 8))(v10, a2);
      if (v16)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1B256E37C();
      goto LABEL_14;
    }

    if (v13 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1B256E38C() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = sub_1B256E39C();
    v18 = sub_1B256E38C();
    if ((v17 & 1) == 0)
    {
      break;
    }

    if (v18 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1B24D40D8();
    sub_1B256E36C();
    v19 = sub_1B256D92C();
    (*(v7 + 8))(v10, a2);
    if (v19)
    {
      __break(1u);
LABEL_19:
      if (sub_1B256E38C() == 64 && (sub_1B256E39C() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v18 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1B256E37C();
LABEL_24:
  v20 = sub_1B256E37C();
  result = (*(v7 + 8))(v12, a2);
  *v23 = v20;
  return result;
}

uint64_t Product.Image.url<A, B>(width:height:fileFormat:resizingMode:)()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v11 = *(v0 + 6);
  sub_1B256E2EC();
  v2 = MEMORY[0x1E69E6530];
  sub_1B24E64B4(sub_1B24EAB08, MEMORY[0x1E69E6530], v3, &v7);
  sub_1B256E2EC();
  sub_1B24E64B4(sub_1B24EAB24, v2, v4, &v6);
  return sub_1B24E9760();
}

uint64_t sub_1B24EA764@<X0>(void *a1@<X8>)
{
  sub_1B2437B0C();
  result = sub_1B256E7FC();
  if (v5)
  {
    sub_1B256E4FC();
    v3 = sub_1B256EE7C();
    MEMORY[0x1B2749D50](v3);

    MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258FED0);
    MEMORY[0x1B2749D50](7630409, 0xE300000000000000);
    MEMORY[0x1B2749D50](0xD00000000000002ELL, 0x80000001B258FEF0);
    result = sub_1B256E83C();
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1B24EA8B4@<X0>(void *a1@<X8>)
{
  sub_1B2437B0C();
  result = sub_1B256E7FC();
  if (v5)
  {
    sub_1B256E4FC();
    v3 = sub_1B256EE7C();
    MEMORY[0x1B2749D50](v3);

    MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258FED0);
    MEMORY[0x1B2749D50](7630409, 0xE300000000000000);
    MEMORY[0x1B2749D50](0xD00000000000002ELL, 0x80000001B258FEF0);
    result = sub_1B256E83C();
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1B24EAA04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_3(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t type metadata accessor for Product()
{
  result = qword_1EB7CD2E0;
  if (!qword_1EB7CD2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B24EAA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1B24EAB44()
{
  result = qword_1EB7D2028;
  if (!qword_1EB7D2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2028);
  }

  return result;
}

unint64_t sub_1B24EAB9C()
{
  result = qword_1EB7D2030;
  if (!qword_1EB7D2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2030);
  }

  return result;
}

unint64_t sub_1B24EABF4()
{
  result = qword_1EB7D2038;
  if (!qword_1EB7D2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2038);
  }

  return result;
}

unint64_t sub_1B24EAC4C()
{
  result = qword_1EB7D2040;
  if (!qword_1EB7D2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2040);
  }

  return result;
}

unint64_t sub_1B24EACA4()
{
  result = qword_1EB7D2048;
  if (!qword_1EB7D2048)
  {
    type metadata accessor for Product();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2048);
  }

  return result;
}

void sub_1B24EAD24()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    sub_1B2441328(319, &qword_1EB7CD300);
    if (v1 <= 0x3F)
    {
      sub_1B256D47C();
      if (v2 <= 0x3F)
      {
        sub_1B2441328(319, &qword_1EB7CD2F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B24EAE54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B24EAE94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Product.Image.FileFormat(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Product.Image.ResizingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B24EB10C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B24EB16C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B24EB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1B24EB230()
{
  result = qword_1EB7CD2F8;
  if (!qword_1EB7CD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD2F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_31()
{

  return sub_1B256E35C();
}

uint64_t OUTLINED_FUNCTION_15_18()
{
  v2 = *(v0 + 104);

  return sub_1B24EB16C(v2, type metadata accessor for ClientOverride);
}

uint64_t OUTLINED_FUNCTION_28_8(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_37_5()
{

  return sub_1B24472E0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_38_8(uint64_t a1)
{
  *(v1 + 96) = v2;
  *(v1 + 64) = a1;

  return type metadata accessor for ClientOverride(0);
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = result;
  return result;
}

uint64_t sub_1B24EB4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B24EB504, 0, 0);
}

uint64_t sub_1B24EB504()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1B24EB5C0;
  v3 = *(v0 + 48);

  return sub_1B24EC20C(sub_1B24ECC60, v1, v3);
}

uint64_t sub_1B24EB5C0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24EB6D8()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2070);
  swift_dynamicCast();
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B24EB784()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B24EB7E4()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 40) = v1;
  *(v0 + 104) = v2;
  *(v0 + 48) = type metadata accessor for ExternalGatewayRequest();
  *(v0 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24EB874()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 48) + 28);
  v3 = type metadata accessor for ClientOverride(0);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 104);
  v7 = type metadata accessor for SKLogger();
  *(v0 + 64) = __swift_project_value_buffer(v7, qword_1ED69A108);
  v8 = sub_1B24D3E10();
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  v10 = v5[8];
  v11 = (v4 + v5[9]);
  *v4 = v6;
  *(v4 + 8) = xmmword_1B257BCD0;
  *(v4 + 24) = 0;
  *(v4 + v10) = 0;
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + v5[10]);
  *v12 = v8;
  v12[1] = v9;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1B24EB9B0;
  v14 = *(v0 + 56);
  v15 = *(v0 + 40);

  return sub_1B24EBD68(v14, v15);
}

uint64_t sub_1B24EB9B0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24EBAB8()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2443A74(*(v0 + 56));

  v1 = OUTLINED_FUNCTION_8_22();

  return v2(v1);
}

uint64_t sub_1B24EBB1C()
{
  v18 = v0;
  v1 = v0[12];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1B256E4FC();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1B2749D50](0xD000000000000020, 0x80000001B2590AD0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v2 = sub_1B256E0CC();

  v3 = sub_1B256D5CC();

  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[12];
  if (v4)
  {
    v6 = v0[9];
    v7 = v0[10];
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_28_3(4.8752e-34);
    MEMORY[0x1B2749D50](v6, v7);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    sub_1B2519814(v16, v17, &v15);

    v11 = OUTLINED_FUNCTION_6_20(v9, v10);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_1B23EF000, v3, v2, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  sub_1B2443A74(v0[7]);

  v12 = OUTLINED_FUNCTION_8_22();

  return v13(v12);
}

uint64_t sub_1B24EBD68(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B24EBD7C()
{
  v21 = v0;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = v0[9];
  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1B256E4FC();
  v0[7] = 0;
  v0[8] = 0xE000000000000000;
  MEMORY[0x1B2749D50](0xD000000000000022, 0x80000001B2590AA0);
  v3 = type metadata accessor for ExternalGatewayRequest();
  sub_1B256E78C();
  v4 = (v1 + *(v3 + 40));
  v6 = *v4;
  v5 = v4[1];
  v7 = sub_1B256E0CC();

  v8 = sub_1B256D5CC();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_28_3(4.8752e-34);
    MEMORY[0x1B2749D50](v6, v5);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    sub_1B2519814(v19, v20, &v18);

    v12 = OUTLINED_FUNCTION_6_20(v10, v11);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v13 = v0[9];
  v0[5] = v3;
  v0[6] = sub_1B24ECD60();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B2443A10(v13, boxed_opaque_existential_1);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_1B24EC054;
  v16 = v0[10];

  return sub_1B2527668((v0 + 2), sub_1B24EC6D4, 0, v16);
}

uint64_t sub_1B24EC054(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_1();
  v7 = v6;
  OUTLINED_FUNCTION_3_10();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_0_8();
  *v10 = v9;
  *(v7 + 96) = v2;

  if (v2)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 16);
    v14 = *(v9 + 8);

    return v14(a1, a2);
  }
}

uint64_t sub_1B24EC1AC()
{
  OUTLINED_FUNCTION_4_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B24EC20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B24EC230, 0, 0);
}

uint64_t sub_1B24EC230()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2068);
  *v4 = v0;
  v4[1] = sub_1B24EC338;
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v2, v11);
}

uint64_t sub_1B24EC338()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = *(v3 + 16);
    v11 = *(v5 + 8);

    return v11(v10);
  }
}

uint64_t sub_1B24EC460()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B24EC4C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t (*)(uint64_t *a1, void *a2), uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v14 = a1;
  (*(v7 + 16))(&v13 - v8, a2, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  a3(&v14, sub_1B24ECC7C, v11);
}

uint64_t sub_1B24EC620(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B50);
    return sub_1B256DCFC();
  }

  if (!a1)
  {
    sub_1B2467710();
    swift_allocError();
    *v4 = 9;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B50);
  return sub_1B256DD0C();
}

void sub_1B24EC6D4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  v9 = sub_1B256D1FC();
  v11[4] = sub_1B243CBF0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B2444748;
  v11[3] = &block_descriptor_19_3;
  v10 = _Block_copy(v11);

  [v7 externalGatewayRequest:v9 reply:v10];
  _Block_release(v10);
}

uint64_t sub_1B24EC7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B24EC7F8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1B24EC8D0;
  v5 = v0[4];

  return sub_1B24EB4E0(sub_1B24ECB20, v3, v5);
}

uint64_t sub_1B24EC8D0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;

  if (v0)
  {

    v3 = 0;
  }

  v9 = *(v7 + 8);

  return v9(v3);
}

void sub_1B24EC9DC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  if (a5)
  {
    a5 = sub_1B256D98C();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B24ECD08;
  *(v10 + 24) = v9;
  v12[4] = sub_1B24ECD40;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B24ECB8C;
  v12[3] = &block_descriptor_17;
  v11 = _Block_copy(v12);

  [v8 externalPurchaseLinkURLsForBundleID:a5 reply:v11];
  _Block_release(v11);
}

uint64_t sub_1B24ECB28(void *a1, void (*a2)(uint64_t, void))
{
  if (a1)
  {
    v3 = sub_1B24ECBF8(a1);
  }

  else
  {
    v3 = 0;
  }

  a2(v3, 0);
}

void sub_1B24ECB8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1B24ECBF8(void *a1)
{
  v1 = [a1 multi];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B256D14C();
  v3 = sub_1B256DC5C();

  return v3;
}

uint64_t sub_1B24ECC7C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B50);

  return sub_1B24ECC74(a1, a2);
}

uint64_t sub_1B24ECD08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B24ECD60()
{
  result = qword_1EB7D01E0;
  if (!qword_1EB7D01E0)
  {
    type metadata accessor for ExternalGatewayRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D01E0);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_6_20(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = v3;
  *(v4 + 12) = 2082;

  return sub_1B2519814(a2, v2, va);
}

uint64_t sub_1B24ECE18()
{
  OUTLINED_FUNCTION_21_5();
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v1 = sub_1B24D3E10();
  v0[5] = v2;
  v0[2] = v1;
  v0[3] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[6] = v3;
  *v3 = v4;
  v3[1] = sub_1B24ECF30;
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6DE98]();
}

void sub_1B24ECF30()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v5 + 8);

    v7();
  }
}

uint64_t sub_1B24ED054()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_33_5(&unk_1B2583760);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[4] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_40_7(v3);

  return v6(v5);
}

uint64_t sub_1B24ED0E8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24ED1CC()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_58_2();
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48);
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_18_1();
    sub_1B24F9194();
    *(v3 + v4) = v1;
  }

  else if (v1)
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_22_1();
    sub_1B24F9194();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8);
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_22_1();
    sub_1B24F9194();
    OUTLINED_FUNCTION_57_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_7_2();

  return v5();
}

uint64_t sub_1B24ED2C8()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_33_5(&unk_1B2583788);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[4] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_40_7(v3);

  return v6(v5);
}

uint64_t sub_1B24ED35C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24ED440()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_58_2();
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1520) + 48);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_18_1();
    sub_1B24F9194();
    *(v3 + v4) = v1;
  }

  else if (v1)
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_22_1();
    sub_1B24F9194();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1520);
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_22_1();
    sub_1B24F9194();
    OUTLINED_FUNCTION_57_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21F0);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_7_2();

  return v5();
}

uint64_t sub_1B24ED53C()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_33_5(&unk_1B2583748);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[4] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_40_7(v3);

  return v6(v5);
}

uint64_t sub_1B24ED5D0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24ED6B4()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_58_2();
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D20F0) + 48);
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_18_1();
    sub_1B24F9194();
    *(v3 + v4) = v1;
  }

  else if (v1)
  {
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_22_1();
    sub_1B24F9194();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D20F0);
    OUTLINED_FUNCTION_2_30();
    OUTLINED_FUNCTION_22_1();
    sub_1B24F9194();
    OUTLINED_FUNCTION_57_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0A88);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_7_2();

  return v5();
}

uint64_t static AppStore.forceSandbox(forBundleID:until:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = type metadata accessor for ClientOverrideRequest();
  v0[8] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v0[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v5);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_83_2(v6);
  v8 = type metadata accessor for ClientOverride(v7);
  v0[11] = v8;
  OUTLINED_FUNCTION_2_2(v8);
  v0[12] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24ED894()
{
  OUTLINED_FUNCTION_92_1();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v24 = v0[8];
  v28 = v0[6];
  v26 = v0[7];
  v27 = v0[5];
  v5 = type metadata accessor for SKLogger();
  v0[13] = __swift_project_value_buffer(v5, qword_1ED69A108);
  v25 = sub_1B24D3E10();
  v7 = v6;
  v0[14] = v25;
  v0[15] = v6;
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
  __swift_storeEnumTagSinglePayload(v2 + v8, 3, 3, v9);
  v10 = sub_1B256D3CC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  *v2 = xmmword_1B25793F0;
  v11 = v2 + v1[8];
  v12 = v2 + v1[9];
  v13 = v1[10];
  __swift_storeEnumTagSinglePayload(v2 + v13, 1, 1, v10);
  sub_1B2443AD0(*v2, *(v2 + 8));
  *v2 = xmmword_1B25793F0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v11 = 0;
  *(v11 + 8) = 1;
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_1B247858C(v3, v2 + v13);
  v14 = v24[5];
  sub_1B24F869C();
  __swift_storeEnumTagSinglePayload(&v4[v14], 0, 1, v1);
  v15 = v24[7];
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  (*(v16 + 16))(&v4[v15], v26);
  *v4 = v27;
  *(v4 + 1) = v28;
  v17 = &v4[v24[6]];
  *v17 = v25;
  v17[1] = v7;
  v18 = qword_1EB7CDA40;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v0[16] = qword_1EB7CDA48;
  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_62_2();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1B24EDAE0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1B24EDB84;
  v3 = v0[9];

  return sub_1B2440C00(v3, v1);
}

uint64_t sub_1B24EDB84()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24EDC84()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_32_6();
  sub_1B24F86F4(v2, v3);
  OUTLINED_FUNCTION_31_8();
  sub_1B24F86F4(v1, v4);

  OUTLINED_FUNCTION_14_7();

  return v5();
}

uint64_t sub_1B24EDD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_159();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_87_2();
  a22 = v24;
  v27 = v24[19];
  v29 = v24[5];
  v28 = v24[6];
  a11 = 0;
  a12 = 0xE000000000000000;
  sub_1B256E4FC();
  v30 = a12;
  v24[2] = a11;
  v24[3] = v30;
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD00000000000001ALL);
  MEMORY[0x1B2749D50](v29, v28);
  MEMORY[0x1B2749D50](32, 0xE100000000000000);
  v24[4] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v31 = v24[2];
  v32 = v24[3];
  v33 = sub_1B256E0AC();

  v34 = sub_1B256D5CC();

  v35 = os_log_type_enabled(v34, v33);
  v36 = v24[15];
  if (v35)
  {
    v37 = v24[14];
    v38 = OUTLINED_FUNCTION_21_3();
    v39 = OUTLINED_FUNCTION_20_4();
    *v38 = 136446466;
    a10 = v39;
    a11 = 91;
    a12 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v37, v36);
    OUTLINED_FUNCTION_94_0();
    v40 = sub_1B2519814(a11, a12, &a10);

    *(v38 + 4) = v40;
    *(v38 + 12) = 2082;
    v41 = sub_1B2519814(v31, v32, &a10);

    *(v38 + 14) = v41;
    _os_log_impl(&dword_1B23EF000, v34, v33, "%{public}s%{public}s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v42 = v24[12];
  v43 = v24[9];
  swift_willThrow();

  OUTLINED_FUNCTION_32_6();
  sub_1B24F86F4(v43, v44);
  OUTLINED_FUNCTION_31_8();
  sub_1B24F86F4(v42, v45);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_7();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B24EDFAC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1B256D36C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24EE06C, 0, 0);
}

uint64_t sub_1B24EE06C()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  if (sub_1B24F74EC())
  {
    OUTLINED_FUNCTION_10_18();
    *(v1 + 96) = type metadata accessor for Transaction(0);
    v3 = OUTLINED_FUNCTION_37_6();
    v4(v3);
    if (qword_1EB7CFC80 != -1)
    {
      OUTLINED_FUNCTION_9_20();
    }

    if (*(v2 + 16))
    {
      v5 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_56_4(v5);
      OUTLINED_FUNCTION_36_5();

      v6 = swift_task_alloc();
      *(v1 + 120) = v6;
      *v6 = v1;
      v6[1] = sub_1B24EE288;
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_66_2();

      __asm { BR              X8 }
    }

    __break(1u);
  }

  else if (qword_1ED699E80 == -1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_17();
LABEL_9:
  v9 = type metadata accessor for SKLogger();
  v10 = __swift_project_value_buffer(v9, qword_1ED69A108);
  sub_1B256E0AC();
  v11 = sub_1B256D5CC();
  if (OUTLINED_FUNCTION_96_3(v11))
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_35_6();
    v12 = OUTLINED_FUNCTION_47_4(4.8752e-34);
    v13 = OUTLINED_FUNCTION_18_11(v12);
    *(v0 + 14) = OUTLINED_FUNCTION_75_3(v13, v14);
    OUTLINED_FUNCTION_19_16(&dword_1B23EF000, v15, v16, "%{public}s%{public}s");
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_66_2();

  return v17();
}

uint64_t sub_1B24EE288()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;
  OUTLINED_FUNCTION_74_3(v5, v6, v7);

  v8 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1B24EE39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_159();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_87_2();
  a22 = v24;
  v27 = *(v24 + 144);
  if ((v27 & 0x100) != 0)
  {
    LOBYTE(v48) = *(v24 + 128);
    (*(*(v24 + 56) + 8))(*(v24 + 64), *(v24 + 48));
    goto LABEL_7;
  }

  v28 = *(v24 + 88);
  if (v28[2] < 3uLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  v30 = *(v24 + 128);
  v29 = *(v24 + 136);
  v31 = v28[12];
  v32 = v28[13];
  v33 = v28[14];
  v34 = v28[15];

  sub_1B24F8CD0(v30, v29, v27, 0);
  MEMORY[0x1B2749CC0](v31, v32, v33, v34);

  OUTLINED_FUNCTION_18_1();
  sub_1B246314C();

  OUTLINED_FUNCTION_38_7();
  a11 = sub_1B256D1AC();
  if (v35 >> 60 == 15)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v36 = v35;
  v38 = *(v24 + 128);
  v37 = *(v24 + 136);
  v40 = *(v24 + 80);
  v39 = *(v24 + 88);
  v41 = *(v24 + 72);
  v42 = *(v24 + 56);
  a9 = *(v24 + 48);
  a10 = *(v24 + 64);
  v43 = *(v24 + 144);

  sub_1B25317F0(v41, v40, v39);
  v45 = v44;
  v47 = v46;
  v48 = sub_1B2533CC0(a11, v36, v44, v46, v38, v37, v43);
  sub_1B2443AE4(v45, v47);
  sub_1B2443AD0(a11, v36);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_94_1();
  (*(v42 + 8))(a10, a9);
  if ((v48 & 0x100) != 0)
  {
LABEL_7:
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v51 = type metadata accessor for SKLogger();
    v52 = __swift_project_value_buffer(v51, qword_1ED69A108);
    a12 = 0;
    a13 = 0xE000000000000000;
    sub_1B256E4FC();
    v53 = a13;
    *(v24 + 16) = a12;
    *(v24 + 24) = v53;
    MEMORY[0x1B2749D50](0xD00000000000001FLL, 0x80000001B2590BD0);
    v54 = sub_1B256EE7C();
    MEMORY[0x1B2749D50](v54);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000017);
    *(v24 + 146) = v48;
    sub_1B256E78C();
    v56 = *(v24 + 16);
    v55 = *(v24 + 24);
    v57 = sub_1B256E0AC();

    v58 = v52;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_67_2();

    if (os_log_type_enabled(v52, v57))
    {
      v59 = OUTLINED_FUNCTION_21_3();
      v60 = OUTLINED_FUNCTION_20_4();
      a12 = v60;
      *v59 = 136446466;
      v62 = OUTLINED_FUNCTION_75_2(v60, v61, &a12);
      OUTLINED_FUNCTION_76_1(v62);
      v63 = sub_1B2519814(v56, v55, &a12);

      *(v59 + 14) = v63;
      OUTLINED_FUNCTION_77_3(&dword_1B23EF000, v64, v57, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    v49 = 1;
    v50 = 0;
    switch(v48)
    {
      case 3:
      case 6:
        v50 = 5;
        break;
      case 8:
        v50 = 1;
        break;
      case 9:
        goto LABEL_16;
      default:
        v50 = 3;
        break;
    }

    goto LABEL_16;
  }

  v49 = 0;
  v50 = v48 & 1;
LABEL_16:
  v65 = *(v24 + 32);
  *v65 = v50;
  v65[1] = v49;

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_7();

  v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B24EE758(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1B256D36C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24EE818, 0, 0);
}

uint64_t sub_1B24EE818()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  if (sub_1B24F7A44())
  {
    OUTLINED_FUNCTION_10_18();
    *(v1 + 96) = type metadata accessor for AppTransaction();
    v3 = OUTLINED_FUNCTION_37_6();
    v4(v3);
    if (qword_1EB7CFC80 != -1)
    {
      OUTLINED_FUNCTION_9_20();
    }

    if (*(v2 + 16))
    {
      v5 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_56_4(v5);
      OUTLINED_FUNCTION_36_5();

      v6 = swift_task_alloc();
      *(v1 + 120) = v6;
      *v6 = v1;
      v6[1] = sub_1B24EEA2C;
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_66_2();

      __asm { BR              X8 }
    }

    __break(1u);
  }

  else if (qword_1ED699E80 == -1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_17();
LABEL_9:
  v9 = type metadata accessor for SKLogger();
  v10 = __swift_project_value_buffer(v9, qword_1ED69A108);
  sub_1B256E0AC();
  v11 = sub_1B256D5CC();
  if (OUTLINED_FUNCTION_96_3(v11))
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_35_6();
    v12 = OUTLINED_FUNCTION_47_4(4.8752e-34);
    v13 = OUTLINED_FUNCTION_18_11(v12);
    *(v0 + 14) = OUTLINED_FUNCTION_75_3(v13, v14);
    OUTLINED_FUNCTION_19_16(&dword_1B23EF000, v15, v16, "%{public}s%{public}s");
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_66_2();

  return v17();
}

uint64_t sub_1B24EEA2C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;
  OUTLINED_FUNCTION_74_3(v5, v6, v7);

  v8 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B24EEB40(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1B256D36C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24EEC00, 0, 0);
}

uint64_t sub_1B24EEC00()
{
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_126();
  if (sub_1B24F7F9C())
  {
    OUTLINED_FUNCTION_10_18();
    *(v1 + 96) = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
    v3 = OUTLINED_FUNCTION_37_6();
    v4(v3);
    if (qword_1EB7CFC80 != -1)
    {
      OUTLINED_FUNCTION_9_20();
    }

    if (*(v2 + 16))
    {
      v5 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_56_4(v5);
      OUTLINED_FUNCTION_36_5();

      v6 = swift_task_alloc();
      *(v1 + 120) = v6;
      *v6 = v1;
      v6[1] = sub_1B24EEA2C;
      OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_66_2();

      __asm { BR              X8 }
    }

    __break(1u);
  }

  else if (qword_1ED699E80 == -1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_17();
LABEL_9:
  v9 = type metadata accessor for SKLogger();
  v10 = __swift_project_value_buffer(v9, qword_1ED69A108);
  sub_1B256E0AC();
  v11 = sub_1B256D5CC();
  if (OUTLINED_FUNCTION_96_3(v11))
  {
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_35_6();
    v12 = OUTLINED_FUNCTION_47_4(4.8752e-34);
    v13 = OUTLINED_FUNCTION_18_11(v12);
    *(v0 + 14) = OUTLINED_FUNCTION_75_3(v13, v14);
    OUTLINED_FUNCTION_19_16(&dword_1B23EF000, v15, v16, "%{public}s%{public}s");
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_66_2();

  return v17();
}

uint64_t sub_1B24EEE48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1B256D87C();
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = a3;
    a3 = sub_1B256D22C();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v6(v7, a3, v10, a4);

  sub_1B2443AD0(a3, v10);
}

void sub_1B24EEF3C(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a3)
  {

    v5 = a2;
    v6 = v3;
    v3 = sub_1B256D22C();
    v8 = v7;
  }

  else
  {

    v9 = a2;
    v8 = 0xF000000000000000;
  }

  v4(a2, v3, v8);
  sub_1B2443AD0(v3, v8);
}

uint64_t sub_1B24EEFFC()
{

  v1 = sub_1B256DB9C();
  sub_1B256DABC();
  return v1;
}

id sub_1B24EF0A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  __swift_allocate_value_buffer(v1, qword_1EB7D2080);
  __swift_project_value_buffer(v0, qword_1EB7D2080);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v5 = result;
    v6 = [result deviceIdentifierForVendor];

    if (v6)
    {
      sub_1B256D3AC();

      v7 = sub_1B256D3CC();
      v8 = 0;
    }

    else
    {
      v7 = sub_1B256D3CC();
      v8 = 1;
    }

    __swift_storeEnumTagSinglePayload(v3, v8, 1, v7);
    return sub_1B24C42F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static AppStore.deviceVerificationID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_7_0();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  if (qword_1EB7CFC60 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EB7D2080);
  sub_1B24C5C14();
  v9 = sub_1B256D3CC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v11 = result;
      v12 = [result deviceIdentifierForVendor];

      if (v12)
      {
        sub_1B256D3AC();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      __swift_storeEnumTagSinglePayload(v6, v13, 1, v9);
      sub_1B24C42F0();
      result = __swift_getEnumTagSinglePayload(v8, 1, v9);
      if (result != 1)
      {
        return sub_1B243E88C(v8, &qword_1EB7D1770);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_22_1();
    v15(v14);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
  }

  return result;
}

uint64_t static AppStore.sync()()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B24EF49C()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CFC68 != -1)
  {
    swift_once();
  }

  v1 = _os_activity_create(&dword_1B23EF000, "StoreKit/AppStoreSync", qword_1EB7EDFB8, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[1] = 0;
  v0[6].opaque[0] = v1;
  v0[5].opaque[0] = 0;
  os_activity_scope_enter(v1, v0 + 5);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24EF580()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 16) = v0;
  v1 = OUTLINED_FUNCTION_128();
  sub_1B24EF88C(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B24EF62C()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 104) = v4;
  if (v4)
  {
    swift_willThrow();
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24EF764()
{
  OUTLINED_FUNCTION_4_0();
  os_activity_scope_leave(v0 + 5);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24EF7F8()
{
  OUTLINED_FUNCTION_4_0();
  os_activity_scope_leave(v0 + 5);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24EF88C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = [objc_opt_self() defaultBroker];
  v20 = sub_1B24F9174;
  v21 = v2;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1B244BD28;
  v19 = &block_descriptor_146;
  v4 = _Block_copy(&v16);

  v5 = [v3 storeKitServiceWithErrorHandler_];
  _Block_release(v4);

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v20 = sub_1B24F917C;
    v21 = v6;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1B2515BBC;
    v19 = &block_descriptor_152;
    v7 = _Block_copy(&v16);

    [v5 authenticateAndSyncTransactionsAndStatusWithReply_];
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
      v16 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B2519814(0, 0xE000000000000000, &v16);
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1B2519814(0xD00000000000004BLL, 0x80000001B2590F00, &v16);
      _os_log_impl(&dword_1B23EF000, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v13, -1, -1);
      MEMORY[0x1B274BFF0](v12, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24F8FEC(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v15 = v14;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24EFC40(void *a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000037, 0x80000001B2590F50);
  v3 = sub_1B256D0CC();
  v4 = [v3 description];
  v5 = sub_1B256D9BC();
  v7 = v6;

  MEMORY[0x1B2749D50](v5, v7);

  v8 = sub_1B256E0AC();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, v16);
    *(v10 + 12) = 2082;
    v12 = sub_1B2519814(0, 0xE000000000000000, v16);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }

  v13 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v14 = v13;

  return swift_continuation_throwingResumeWithError();
}

void sub_1B24EFEC0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = parseError(_:)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v4 = v3;
    swift_continuation_throwingResumeWithError();
  }

  else
  {

    swift_continuation_throwingResume();
  }
}

uint64_t sub_1B24EFF74(uint64_t a1)
{
  OUTLINED_FUNCTION_81_2();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = [objc_opt_self() defaultBroker];
  v21 = sub_1B24F9184;
  v22 = v2;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1B244BD28;
  v20 = &block_descriptor_158;
  v4 = _Block_copy(&v17);

  v5 = [v3 storeKitServiceWithErrorHandler_];
  _Block_release(v4);

  if (v5)
  {
    OUTLINED_FUNCTION_81_2();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v21 = sub_1B24F918C;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1B243963C;
    v20 = &block_descriptor_164;
    v7 = _Block_copy(&v17);

    [v5 invalidateTransactionsAndStatusCacheWithReply_];
    _Block_release(v7);

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v9 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v9, qword_1ED69A108);
    v10 = sub_1B256E0AC();
    v11 = sub_1B256D5CC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = OUTLINED_FUNCTION_21_3();
      v13 = OUTLINED_FUNCTION_20_4();
      v17 = v13;
      *v12 = 136446466;
      v15 = OUTLINED_FUNCTION_75_2(v13, v14, &v17);
      OUTLINED_FUNCTION_76_1(v15);
      *(v12 + 14) = sub_1B2519814(0xD000000000000036, 0x80000001B2590F90, &v17);
      OUTLINED_FUNCTION_77_3(&dword_1B23EF000, v16, v10, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    swift_continuation_throwingResume();
  }
}

uint64_t sub_1B24F0234()
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v0, qword_1ED69A108);
  sub_1B256E4FC();

  v12[0] = 0xD000000000000027;
  v12[1] = 0x80000001B2590FD0;
  v1 = sub_1B256D0CC();
  v2 = [v1 description];
  v3 = sub_1B256D9BC();
  v5 = v4;

  MEMORY[0x1B2749D50](v3, v5);

  v6 = sub_1B256E0AC();

  v7 = sub_1B256D5CC();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B2519814(0, 0xE000000000000000, v12);
    *(v8 + 12) = 2082;
    v10 = sub_1B2519814(0xD000000000000027, 0x80000001B2590FD0, v12);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v9, -1, -1);
    MEMORY[0x1B274BFF0](v8, -1, -1);
  }

  else
  {
  }

  return swift_continuation_throwingResume();
}

uint64_t static ManageSubscriptionsFilter.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1B256EB5C();
}

uint64_t static AppStore.showManageSubscriptions(in:filter:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 80) = v1;
  *(v0 + 88) = *v2;
  *(v0 + 104) = sub_1B256DD6C();
  *(v0 + 112) = sub_1B256DD5C();
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24F0564()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_72_2();
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v1[2] = v5;
  v6 = OUTLINED_FUNCTION_128();
  sub_1B24F0E2C(v6, v3, v2, v4);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B24F05FC()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 120) = v4;
  if (v4)
  {
    swift_willThrow();
  }

  sub_1B256DCEC();
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t static AppStore.showManageSubscriptions(in:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_83_2(v1);
  *(v0 + 88) = sub_1B256DD6C();
  *(v0 + 96) = sub_1B256DD5C();
  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24F07C8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  v2 = *(v1 + 80);
  *(v1 + 16) = v3;
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_9_2();
  sub_1B24F0E2C(v4, v5, v6, v2);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B24F0850()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 104) = v4;
  if (v4)
  {
    swift_willThrow();
  }

  sub_1B256DCEC();
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24F09B0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_14_7();

  return v0();
}

uint64_t sub_1B24F0A08()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static AppStore.showManageSubscriptions(in:subscriptionGroupID:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[11] = v1;
  v0[12] = v2;
  OUTLINED_FUNCTION_83_2(v3);
  v0[13] = sub_1B256DD6C();
  v0[14] = sub_1B256DD5C();

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B24F0AE8()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_72_2();
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v1[2] = v5;
  v6 = OUTLINED_FUNCTION_128();
  sub_1B24F0E2C(v6, v3, v2, v4);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B24F0B80()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 120) = v4;
  if (v4)
  {
    swift_willThrow();
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24F0C88()
{
  OUTLINED_FUNCTION_4_0();

  sub_1B256DCEC();
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B24F0D00()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_14_7();

  return v0();
}

uint64_t sub_1B24F0D58()
{
  OUTLINED_FUNCTION_4_0();

  sub_1B256DCEC();
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B24F0DD0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B24F0E2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_opt_self() defaultBroker];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v29 = sub_1B24F90BC;
  v30 = v9;
  v25 = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1B244BD28;
  v28 = &block_descriptor_122;
  v10 = _Block_copy(&v25);

  v11 = [v8 inAppEngagementServiceWithErrorHandler_];
  _Block_release(v10);

  if (v11)
  {
    if (a3)
    {
      objc_allocWithZone(ManageSubscriptionsRequest);

      v12 = sub_1B24F8574(a2, a3);
    }

    else
    {
      v12 = [objc_allocWithZone(ManageSubscriptionsRequest) init];
    }

    v20 = v12;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a4;
    v29 = sub_1B24F90C4;
    v30 = v21;
    v25 = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B24EEF3C;
    v28 = &block_descriptor_128;
    v22 = _Block_copy(&v25);
    v23 = v20;
    v24 = a4;

    [v11 manageSubscriptionsEngagementRequestWithRequest:v23 reply:v22];

    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v13, qword_1ED69A108);
    v14 = sub_1B256E0AC();
    v15 = sub_1B256D5CC();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_1B2519814(0, 0xE000000000000000, &v25);
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1B2519814(0xD000000000000037, 0x80000001B2590E90, &v25);
      _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v17, -1, -1);
      MEMORY[0x1B274BFF0](v16, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24F8FEC(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v18 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v19 = v18;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24F1238(void *a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B256E4FC();

  v16[0] = 0xD000000000000027;
  v16[1] = 0x80000001B2590ED0;
  v3 = sub_1B256D0CC();
  v4 = [v3 description];
  v5 = sub_1B256D9BC();
  v7 = v6;

  MEMORY[0x1B2749D50](v5, v7);

  v8 = sub_1B256E0AC();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, v16);
    *(v10 + 12) = 2082;
    v12 = sub_1B2519814(0xD000000000000027, 0x80000001B2590ED0, v16);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }

  v13 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v14 = v13;

  return swift_continuation_throwingResumeWithError();
}

void sub_1B24F14B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v52 = a5;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v6 = sub_1B256D69C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B256D6CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SKLogger();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  if (a1)
  {
    v20 = a1;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v14, qword_1ED69A108);
    sub_1B24F869C();
    v21 = a1;
    v22 = sub_1B256D5CC();
    v23 = sub_1B256D5EC();
    (*(*(v23 - 8) + 8))(v19, v23);
    v24 = sub_1B256E0AC();

    if (os_log_type_enabled(v22, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = sub_1B256D0CC();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&dword_1B23EF000, v22, v24, "Failed to get engagement request for manage subscriptions due to error %{public}@", v25, 0xCu);
      sub_1B243E88C(v26, &qword_1EB7D18E0);
      MEMORY[0x1B274BFF0](v26, -1, -1);
      MEMORY[0x1B274BFF0](v25, -1, -1);
    }

    v28 = parseError(_:)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v29 = v28;
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    v47 = v13;
    v48 = v11;
    v49 = v9;
    v50 = v10;
    v51 = v7;
    v30 = v52;
    v31 = v53;
    v32 = v54;
    if (v54 >> 60 == 15)
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v14, qword_1ED69A108);
      sub_1B24F869C();
      v33 = sub_1B256D5CC();
      v34 = sub_1B256D5EC();
      (*(*(v34 - 8) + 8))(v17, v34);
      v35 = sub_1B256E0AC();
      if (os_log_type_enabled(v33, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B23EF000, v33, v35, "Failed to get engagement request without an error.", v36, 2u);
        MEMORY[0x1B274BFF0](v36, -1, -1);
      }

      type metadata accessor for StoreKitError();
      sub_1B24F8FEC(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
      v37 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      swift_allocError();
      *v38 = v37;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      sub_1B246063C(0, &qword_1EB7CDC60);
      sub_1B244784C(v31, v32);
      v46 = sub_1B256E0EC();
      v39 = swift_allocObject();
      v39[2] = v31;
      v39[3] = v32;
      v40 = v55;
      v39[4] = v30;
      v39[5] = v40;
      aBlock[4] = sub_1B24F910C;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B243963C;
      aBlock[3] = &block_descriptor_134;
      v41 = _Block_copy(aBlock);
      sub_1B24786B4(v31, v32);
      v42 = v30;

      v43 = v47;
      sub_1B256D6BC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B24F8FEC(&unk_1EB7D18C0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21E0);
      sub_1B24F9034();
      v44 = v49;
      sub_1B256E40C();
      v45 = v46;
      MEMORY[0x1B274A370](0, v43, v44, v41);
      _Block_release(v41);

      sub_1B2443AD0(v31, v32);
      (*(v51 + 8))(v44, v6);
      (*(v48 + 8))(v43, v50);
    }
  }
}

uint64_t static AppStore.presentOfferCodeRedeemSheet(in:)()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_83_2(v1);
  v0[11] = sub_1B256DD6C();
  v0[12] = sub_1B256DD5C();
  v3 = sub_1B256DCEC();
  v0[13] = v3;
  v0[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B24F1C48, v3, v2);
}

uint64_t sub_1B24F1C48()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B256DD5C();
  *(v0 + 120) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1B256DCEC();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B24F1CD8, v2, v4);
}

uint64_t sub_1B24F1CD8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  v2 = *(v1 + 80);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_128();
  sub_1B24F1EF0(v4, v2);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B24F1D5C()
{
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_9();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[16] = v5;
  if (v5)
  {
    swift_willThrow();

    v6 = v2[13];
    v7 = v2[14];
    v8 = sub_1B24F1E94;
  }

  else
  {

    v6 = v2[13];
    v7 = v2[14];
    v8 = sub_1B24F9290;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B24F1E94()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24F1EF0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultBroker];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v25 = sub_1B24F8F98;
  v26 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B244BD28;
  v24 = &block_descriptor_98;
  v9 = _Block_copy(&aBlock);

  v10 = [v7 storeKitServiceWithErrorHandler_];
  _Block_release(v9);

  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v25 = sub_1B24F8FA0;
    v26 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1B24EEF3C;
    v24 = &block_descriptor_104;
    v12 = _Block_copy(&aBlock);
    v13 = a2;

    [v10 engagementRequestForOfferCodeRedemptionSheetWithReply_];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1ED69A108);
    sub_1B24F869C();
    v15 = sub_1B256D5CC();
    v16 = sub_1B256D5EC();
    (*(*(v16 - 8) + 8))(v6, v16);
    v17 = sub_1B256E0AC();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B23EF000, v15, v17, "Failed to get XPC remote object for offer code redeem", v18, 2u);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24F8FEC(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v19 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v20 = v19;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24F22B4(void *a1)
{
  v2 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B24F869C();
  v5 = a1;
  v6 = sub_1B256D5CC();
  v7 = sub_1B256D5EC();
  (*(*(v7 - 8) + 8))(v4, v7);
  v8 = sub_1B256E0AC();

  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = sub_1B256D0CC();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_1B23EF000, v6, v8, "Failed in XPC for offer code redeem: %{public}@", v9, 0xCu);
    sub_1B243E88C(v10, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v10, -1, -1);
    MEMORY[0x1B274BFF0](v9, -1, -1);
  }

  v12 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v13 = v12;
  return swift_continuation_throwingResumeWithError();
}

void sub_1B24F24E4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v58 = a5;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v6 = sub_1B256D69C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B256D6CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SKLogger();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  if (a1)
  {
    v20 = a1;
    v21 = sub_1B256D0CC();
    v22 = [v21 domain];
    v23 = sub_1B256D9BC();
    v25 = v24;

    if (v23 == 0x726F727245445341 && v25 == 0xEE006E69616D6F44)
    {
    }

    else
    {
      v27 = sub_1B256EB5C();

      if ((v27 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ([v21 code] != 910)
    {
LABEL_19:
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v14, qword_1ED69A108);
      sub_1B24F869C();
      v37 = a1;
      v38 = sub_1B256D5CC();
      v39 = sub_1B256D5EC();
      (*(*(v39 - 8) + 8))(v19, v39);
      v40 = sub_1B256E0AC();

      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        v43 = sub_1B256D0CC();
        *(v41 + 4) = v43;
        *v42 = v43;
        _os_log_impl(&dword_1B23EF000, v38, v40, "Failed to get engagement request for offer code sheet due to error %{public}@", v41, 0xCu);
        sub_1B243E88C(v42, &qword_1EB7D18E0);
        MEMORY[0x1B274BFF0](v42, -1, -1);
        MEMORY[0x1B274BFF0](v41, -1, -1);
      }

      v44 = parseError(_:)(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      swift_allocError();
      *v45 = v44;
      swift_continuation_throwingResumeWithError();

      return;
    }

    swift_continuation_throwingResume();
  }

  else
  {
    v28 = v58;
    v29 = v59;
    v54 = v11;
    v55 = v9;
    v56 = v10;
    v57 = v7;
    v30 = v60;
    if (v60 >> 60 == 15)
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v14, qword_1ED69A108);
      sub_1B24F869C();
      v31 = sub_1B256D5CC();
      v32 = sub_1B256D5EC();
      (*(*(v32 - 8) + 8))(v17, v32);
      v33 = sub_1B256E0AC();
      if (os_log_type_enabled(v31, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1B23EF000, v31, v33, "Failed to get engagement request without an error.", v34, 2u);
        MEMORY[0x1B274BFF0](v34, -1, -1);
      }

      type metadata accessor for StoreKitError();
      sub_1B24F8FEC(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
      v35 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      swift_allocError();
      *v36 = v35;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      sub_1B246063C(0, &qword_1EB7CDC60);
      v46 = v29;
      sub_1B244784C(v29, v30);
      v47 = sub_1B256E0EC();
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v30;
      v49 = v28;
      v50 = v61;
      v48[4] = v28;
      v48[5] = v50;
      aBlock[4] = sub_1B24F8FA8;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B243963C;
      aBlock[3] = &block_descriptor_110;
      v51 = _Block_copy(aBlock);
      sub_1B24786B4(v46, v30);
      v52 = v49;

      sub_1B256D6BC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B24F8FEC(&unk_1EB7D18C0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D21E0);
      sub_1B24F9034();
      v53 = v55;
      sub_1B256E40C();
      MEMORY[0x1B274A370](0, v13, v53, v51);
      _Block_release(v51);

      sub_1B2443AD0(v46, v30);
      (*(v57 + 8))(v53, v6);
      (*(v54 + 8))(v13, v56);
    }
  }
}

void sub_1B24F2CD8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [objc_allocWithZone(type metadata accessor for SKRemoteEngagementContainerViewController()) init];
  v14 = objc_allocWithZone(SKEngagementRemoteViewTask);
  v15 = v13;
  sub_1B244784C(a1, a2);
  sub_1B24F84F4(a1, a2, v15, a3);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_81_2();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v18[4] = a6;
  v18[5] = v16;
  OUTLINED_FUNCTION_26_8();
  v18[1] = 1107296256;
  v18[2] = sub_1B24EEE48;
  v18[3] = a7;
  v17 = _Block_copy(v18);

  [v14 setCompletion_];
  _Block_release(v17);
  [v14 presentEngagement];
}

void sub_1B24F2E14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, const char *a6)
{
  v8 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v33 = a6;
    v12 = a4;
    v13 = sub_1B256D0CC();
    v14 = [v13 domain];
    v15 = sub_1B256D9BC();
    v17 = v16;

    if (v15 == 0x726F727245534D41 && v17 == 0xEE006E69616D6F44)
    {
    }

    else
    {
      v19 = sub_1B256EB5C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if ([v13 code] != 6)
    {
LABEL_16:
      if (qword_1ED699E80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
      }

      __swift_project_value_buffer(v8, qword_1ED69A108);
      OUTLINED_FUNCTION_3_32();
      sub_1B24F869C();
      v23 = a4;
      v24 = sub_1B256D5CC();
      sub_1B256D5EC();
      OUTLINED_FUNCTION_7_0();
      (*(v25 + 8))(v11);
      v26 = sub_1B256E0AC();

      if (os_log_type_enabled(v24, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        v29 = sub_1B256D0CC();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&dword_1B23EF000, v24, v26, v33, v27, 0xCu);
        sub_1B243E88C(v28, &qword_1EB7D18E0);
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_44_1();
      }

      v30 = parseError(_:)(a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      swift_allocError();
      *v31 = v30;
      swift_continuation_throwingResumeWithError();

      OUTLINED_FUNCTION_45();
      return;
    }

    swift_continuation_throwingResume();

    OUTLINED_FUNCTION_45();
  }

  else
  {
    OUTLINED_FUNCTION_45();

    swift_continuation_throwingResume();
  }
}

uint64_t static AppStore.presentMerchandising(_:from:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = *v3;
  *(v0 + 33) = *(v3 + 16);
  sub_1B256DD6C();
  *(v0 + 72) = sub_1B256DD5C();
  v5 = sub_1B256DCEC();
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B24F31D8, v5, v4);
}

id sub_1B24F31D8()
{
  OUTLINED_FUNCTION_21_5();
  result = [*(v0 + 48) view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result window];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 windowScene];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [v4 _persistenceIdentifier];
  if (!v5)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  sub_1B256D9BC();
  v8 = v7;

LABEL_8:
  *(v0 + 96) = v8;
  v9 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 104) = v10;
  *v10 = v11;
  v10[1] = sub_1B24F333C;

  return static AppStore.presentAppStoreMerchandisingInternal(kind:sceneID:)();
}

uint64_t sub_1B24F333C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1B24F3498;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1B24F3440;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B24F3440()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_14_7();

  return v0();
}

uint64_t sub_1B24F3498()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static AppStore.presentAppStoreMerchandisingInternal(kind:sceneID:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  *(v0 + 208) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  *(v0 + 232) = v6;
  OUTLINED_FUNCTION_2_2(v6);
  *(v0 + 240) = swift_task_alloc();
  *(v0 + 248) = swift_task_alloc();
  v7 = type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_2_2(v7);
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  v8 = type metadata accessor for SKLogger();
  *(v0 + 272) = v8;
  OUTLINED_FUNCTION_2_2(v8);
  *(v0 + 280) = swift_task_alloc();
  *(v0 + 288) = swift_task_alloc();
  *(v0 + 296) = *v2;
  *(v0 + 121) = *(v2 + 16);
  v9 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24F3624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_159();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_87_2();
  a22 = v24;
  if (*(v24 + 121))
  {
    v28 = *(v24 + 296);
    v27 = *(v24 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B2578530;
    *(v29 + 32) = v28;
    *(v29 + 40) = v27;
  }

  else
  {
    v29 = *(v24 + 296);
  }

  *(v24 + 312) = v29;
  sub_1B24F85D8();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v30 = *(v24 + 121);
  v31 = *(v24 + 288);
  v32 = *(v24 + 216);
  v33 = *(v24 + 224);
  *(v24 + 320) = __swift_project_value_buffer(*(v24 + 272), qword_1ED69A108);
  v34 = sub_1B24D3E10();
  v36 = v35;
  *(v24 + 328) = v34;
  *(v24 + 336) = v35;
  v54 = v34;
  *(v24 + 80) = v34;
  *(v24 + 88) = v35;
  *(v24 + 96) = v32;
  *(v24 + 104) = v33;
  *(v24 + 112) = v29;
  *(v24 + 120) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20B0);
  OUTLINED_FUNCTION_81_2();
  swift_allocObject();

  *(v24 + 344) = sub_1B24F620C();
  OUTLINED_FUNCTION_3_32();
  sub_1B24F869C();
  sub_1B24F85D8();

  j__swift_bridgeObjectRetain();
  v37 = sub_1B256D5CC();
  *(v24 + 352) = sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  v39 = *(v38 + 8);
  *(v24 + 360) = v39;
  *(v24 + 368) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v31);
  LOBYTE(v31) = sub_1B256E0CC();

  j__swift_bridgeObjectRelease();
  sub_1B24F85E4();
  if (os_log_type_enabled(v37, v31))
  {
    v40 = *(v24 + 121);
    v42 = *(v24 + 296);
    v41 = *(v24 + 304);
    OUTLINED_FUNCTION_21_3();
    a13 = OUTLINED_FUNCTION_35_6();
    *v29 = 136446467;
    *(v29 + 4) = sub_1B2519814(v54, v36, &a13);
    *(v29 + 12) = 2081;
    *(v24 + 160) = v42;
    *(v24 + 168) = v41;
    *(v24 + 176) = v40;
    sub_1B24F85D8();
    v43 = sub_1B256D9FC();
    v45 = sub_1B2519814(v43, v44, &a13);

    *(v29 + 14) = v45;
    OUTLINED_FUNCTION_19_16(&dword_1B23EF000, v46, v47, "[%{public}s] Displaying offer %{private}s");
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_7_12();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v24 + 376) = v48;
  *v48 = v49;
  v48[1] = sub_1B24F394C;
  OUTLINED_FUNCTION_8_7();

  return sub_1B2466FC4(v50, v51);
}

uint64_t sub_1B24F394C()
{
  OUTLINED_FUNCTION_24_5();
  v2 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_9();
  *v5 = v4;
  v2[48] = v6;
  v2[49] = v7;
  v2[50] = v8;
  v2[51] = v9;
  v2[52] = v0;

  j__swift_bridgeObjectRelease();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B24F3F6C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24F4050()
{
  OUTLINED_FUNCTION_24_5();
  v20 = v1;
  sub_1B24C5C14();
  OUTLINED_FUNCTION_38_7();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v1 + 240);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = sub_1B243E88C(*(v1 + 240), &unk_1EB7D0DF0);
LABEL_4:
    if (qword_1EB7CFC50 != -1)
    {
      v4 = OUTLINED_FUNCTION_55_2();
    }

    OUTLINED_FUNCTION_29_9(v4, qword_1EB7EDFA8);
    v9 = v8;
    goto LABEL_7;
  }

  v5 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8) + 48));
  OUTLINED_FUNCTION_30_8();
  v4 = sub_1B24F86F4(v3, v6);
  if (v5)
  {
    goto LABEL_4;
  }

  v10 = *(v1 + 320);
  sub_1B256E0AC();
  v11 = sub_1B256D5CC();
  if (OUTLINED_FUNCTION_96_3(v11))
  {
    OUTLINED_FUNCTION_21_3();
    v12 = OUTLINED_FUNCTION_35_6();
    v19 = v12;
    *v0 = 136446466;
    v14 = OUTLINED_FUNCTION_75_2(v12, v13, &v19);
    OUTLINED_FUNCTION_18_11(v14);
    *(v0 + 14) = sub_1B2519814(0xD00000000000002DLL, v15, &v19);
    OUTLINED_FUNCTION_19_16(&dword_1B23EF000, v16, v17, "%{public}s%{public}s");
    OUTLINED_FUNCTION_54_4();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_7_12();
  }

  v9 = sub_1B24F41F8;
  v7 = 0;
LABEL_7:

  return MEMORY[0x1EEE6DFA0](v9, v7, 0);
}

uint64_t sub_1B24F41F8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_72_2();
  *(v1 + 16) = v2;
  *(v1 + 24) = sub_1B24F4280;
  v3 = swift_continuation_init();
  sub_1B24EFF74(v3);

  return MEMORY[0x1EEE6DEC8](v0);
}

uint64_t sub_1B24F4280()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24F4350()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CFC50 != -1)
  {
    v0 = OUTLINED_FUNCTION_55_2();
  }

  OUTLINED_FUNCTION_29_9(v0, qword_1EB7EDFA8);
  v1 = OUTLINED_FUNCTION_90_3();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B24F43C4()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2463AE0(*(v0 + 248));
  v1 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B24F4424()
{
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[26];

  OUTLINED_FUNCTION_30_8();
  sub_1B24F86F4(v2, v5);
  sub_1B24C42F0();
  __swift_storeEnumTagSinglePayload(v4, 0, 2, v3);
  v6 = OUTLINED_FUNCTION_80_3();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);

  OUTLINED_FUNCTION_14_7();

  return v7();
}

id static AppStore.requestReview(in:)(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 requestReviewInScene_];
}

void *sub_1B24F489C@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t static AppStore.canMakePaymentsAsync.getter()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B24F4968;

  return static AppStore.canMakePaymentsAsyncUsableFromInline.getter();
}

uint64_t sub_1B24F4968()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1B24F4A74()
{
  OUTLINED_FUNCTION_21_5();
  v1 = [objc_opt_self() defaultBroker];
  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_33_5(&unk_1B2577D60);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1B24F4B58;

  return v5(0, 0, 0xD000000000000017, 0x80000001B2590B80, v1);
}

uint64_t sub_1B24F4B58()
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
  *(v5 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3 & 1);
  }
}

uint64_t sub_1B24F4C94()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1B24F4CF8()
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_81_2();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v4[4] = sub_1B24F8F38;
  v4[5] = v2;
  OUTLINED_FUNCTION_26_8();
  v4[1] = 1107296256;
  v4[2] = sub_1B252E700;
  v4[3] = &block_descriptor_18;
  v3 = _Block_copy(v4);

  [v1 canMakePaymentsWithReply_];
  _Block_release(v3);
}

uint64_t sub_1B24F4DA4(char a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1 & 1;

    return swift_continuation_throwingResume();
  }
}

uint64_t AppStore.AccountType.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t sub_1B24F4F1C()
{
  v13 = v0;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = type metadata accessor for SKLogger();
  v0[10] = __swift_project_value_buffer(v1, qword_1ED69A108);
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v0[11] = qword_1EB7EDF60;
  sub_1B256EE5C();
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1B256E0CC();

  v5 = sub_1B256D5CC();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = OUTLINED_FUNCTION_21_3();
    v7 = OUTLINED_FUNCTION_20_4();
    *v6 = 136446466;
    v12[0] = v7;
    v12[1] = 91;
    v12[2] = 0xE100000000000000;
    MEMORY[0x1B2749D50](v3, v2);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(91, 0xE100000000000000, v12);
    OUTLINED_FUNCTION_97_3();
    *(v6 + 4) = v3;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_1B2519814(0xD00000000000001DLL, 0x80000001B2591000, v12);
    _os_log_impl(&dword_1B23EF000, v5, v4, "%{public}s%{public}s", v6, 0x16u);
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v0[12] = qword_1EB7CDA48;
  v8 = OUTLINED_FUNCTION_90_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B24F513C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1B24F51D8;

  return sub_1B243C73C(v1);
}

uint64_t sub_1B24F51D8()
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
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B24F52E4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 128);

  **(v0 + 72) = v1;
  OUTLINED_FUNCTION_14_7();

  return v2();
}

uint64_t sub_1B24F5348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_159();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_87_2();
  a22 = v24;
  v27 = *(v24 + 120);

  a12 = 0;
  a13 = 0xE000000000000000;
  sub_1B256E4FC();
  v28 = a13;
  *(v24 + 32) = a12;
  *(v24 + 40) = v28;
  MEMORY[0x1B2749D50](0xD000000000000023, 0x80000001B2591020);
  *(v24 + 64) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000017);
  v29 = *(v24 + 32);
  v30 = *(v24 + 40);
  sub_1B256EE5C();
  v32 = *(v24 + 48);
  v31 = *(v24 + 56);
  v33 = sub_1B256E0AC();

  v34 = sub_1B256D5CC();

  v35 = os_log_type_enabled(v34, v33);
  v36 = *(v24 + 120);
  if (v35)
  {
    a10 = v29;
    v37 = OUTLINED_FUNCTION_21_3();
    v38 = OUTLINED_FUNCTION_20_4();
    *v37 = 136446466;
    a11 = v38;
    a12 = 91;
    a13 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v32, v31);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(a12, a13, &a11);
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_60_3();
    v39 = sub_1B2519814(a10, v30, &a11);

    *(v37 + 14) = v39;
    OUTLINED_FUNCTION_49_4(&dword_1B23EF000, v40, v41, "%{public}s%{public}s");
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  **(v24 + 72) = 0;
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_8_7();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t AppStore.AppStoreAction.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t static AppStore.setLastAppStoreAction(_:adamID:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 80) = *a1;
  return OUTLINED_FUNCTION_3_11(sub_1B24F5648);
}

uint64_t sub_1B24F5648()
{
  OUTLINED_FUNCTION_24_5();
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_1ED69A108);
  v5 = sub_1B24D3E10();
  *(v0 + 48) = v6;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v1;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1B24F57C4;
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1B24F57C4()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24F5940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B24F5964, 0, 0);
}

uint64_t sub_1B24F5964()
{
  OUTLINED_FUNCTION_126();
  v36 = v0;
  v4 = v0[2];
  v3 = v0[3];
  v5 = HIBYTE(v3) & 0xF;
  v6 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_73;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    v29 = OUTLINED_FUNCTION_38_7();
    sub_1B243EE68(v29, v30, 0xAuLL);
    v4 = v31;
    v33 = v32;

    if (v33)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v34 = v0[2];
    v35 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          OUTLINED_FUNCTION_17_4();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v10 && v9)
            {
              break;
            }

            OUTLINED_FUNCTION_11_5();
            if (!v10)
            {
              break;
            }

            OUTLINED_FUNCTION_59_4();
            if (v9)
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_91:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v1, v6, v2);
    }

    if (v4 != 45)
    {
      if (v5)
      {
        v4 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_9_0();
          if (!v10 && v9)
          {
            break;
          }

          OUTLINED_FUNCTION_11_5();
          if (!v10)
          {
            break;
          }

          OUTLINED_FUNCTION_59_4();
          if (v9)
          {
            break;
          }

          OUTLINED_FUNCTION_22();
          if (v10)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        OUTLINED_FUNCTION_17_4();
        while (1)
        {
          OUTLINED_FUNCTION_9_0();
          if (!v10 && v9)
          {
            break;
          }

          OUTLINED_FUNCTION_11_5();
          if (!v10)
          {
            break;
          }

          v9 = 10 * v4 >= v13;
          v4 = 10 * v4 - v13;
          if (!v9)
          {
            break;
          }

          OUTLINED_FUNCTION_22();
          if (v10)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_89;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v1 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    OUTLINED_FUNCTION_38_7();
    v1 = sub_1B256E5FC();
  }

  v8 = *v1;
  if (v8 == 43)
  {
    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v4 = 0;
        if (v1)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v10 && v9)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_11_5();
            if (!v10)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_59_4();
            if (v9)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_22();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    goto LABEL_90;
  }

  if (v8 == 45)
  {
    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        v4 = 0;
        if (v1)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v10 && v9)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_11_5();
            if (!v10)
            {
              goto LABEL_71;
            }

            v9 = 10 * v4 >= v11;
            v4 = 10 * v4 - v11;
            if (!v9)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_22();
            if (v10)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_61:
        v12 = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v6)
  {
    v4 = 0;
    if (v1)
    {
      while (1)
      {
        v14 = *v1 - 48;
        if (v14 > 9)
        {
          goto LABEL_71;
        }

        if (!is_mul_ok(v4, 0xAuLL))
        {
          goto LABEL_71;
        }

        v9 = __CFADD__(10 * v4, v14);
        v4 = 10 * v4 + v14;
        if (v9)
        {
          goto LABEL_71;
        }

        ++v1;
        if (!--v6)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  v4 = 0;
  v12 = 1;
LABEL_72:
  if ((v12 & 1) == 0)
  {
LABEL_82:
    v0[4] = v4;
    if (qword_1EB7CDA40 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v0[5] = qword_1EB7CDA48;
    v1 = OUTLINED_FUNCTION_90_3();

    return MEMORY[0x1EEE6DFA0](v1, v6, v2);
  }

LABEL_73:
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v16 = v0[2];
  v15 = v0[3];
  v17 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v17, qword_1ED69A108);
  sub_1B256E4FC();

  v34 = 0xD000000000000010;
  v35 = 0x80000001B2590C60;
  MEMORY[0x1B2749D50](v16, v15);
  MEMORY[0x1B2749D50](0xD00000000000001CLL, 0x80000001B2590C80);
  v18 = sub_1B256E0AC();

  v19 = sub_1B256D5CC();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = OUTLINED_FUNCTION_21_3();
    v21 = OUTLINED_FUNCTION_20_4();
    v34 = v21;
    *v20 = 136446466;
    v23 = OUTLINED_FUNCTION_75_2(v21, v22, &v34);
    OUTLINED_FUNCTION_76_1(v23);
    v24 = sub_1B2519814(0xD000000000000010, 0x80000001B2590C60, &v34);

    *(v20 + 14) = v24;
    OUTLINED_FUNCTION_77_3(&dword_1B23EF000, v25, v18, "%{public}s%{public}s");
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  sub_1B2467710();
  swift_allocError();
  *v26 = 15;
  swift_willThrow();
  OUTLINED_FUNCTION_7_2();

  return v27();
}

uint64_t sub_1B24F5E04()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 72);
  v2 = sub_1B246F59C();
  *(v0 + 48) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = sub_1B24F5EAC;
  v5 = *(v0 + 32);

  return sub_1B24D3188(v1 & 1, v5, v2);
}

uint64_t sub_1B24F5EAC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24F5FA4()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_14_7();

  return v0();
}

uint64_t sub_1B24F5FFC()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static AppStoreMerchandisingKind.subscriptionBundle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t static AppStoreMerchandisingKind.subscriptionBundle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

void static AppStoreMerchandisingKind.subscriptionBundle(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Product();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B2455BD8(0, v8, 0);
    v9 = v18;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1B24F869C();
      v13 = *(v7 + 6);
      v12 = *(v7 + 7);

      sub_1B24F86F4(v7, type metadata accessor for Product);
      v18 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B2455BD8((v14 > 1), v15 + 1, 1);
        v9 = v18;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B24F620C()
{
  v1 = v0;
  sub_1B246063C(0, &qword_1EB7D2108);
  v2 = sub_1B24F6794(0xD000000000000020, 0x80000001B2590CA0, 0xD000000000000039, 0x80000001B2590420, 0, 0);
  if (!v2)
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v14, qword_1ED69A108);
    aBlock = 0;
    v26 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000038, 0x80000001B2590CD0);
    MEMORY[0x1B2749D50](0xD000000000000020, 0x80000001B2590CA0);
    MEMORY[0x1B2749D50](32, 0xE100000000000000);
    MEMORY[0x1B2749D50](0xD000000000000039, 0x80000001B2590420);
    v15 = sub_1B256E0BC();

    v16 = sub_1B256D5CC();

    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
      *(v17 + 12) = 2082;
      v19 = sub_1B2519814(0, 0xE000000000000000, &aBlock);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_1B23EF000, v16, v15, "%{public}s%{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v18, -1, -1);
      MEMORY[0x1B274BFF0](v17, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 connectionWithEndpoint_];
  if (!v6)
  {
LABEL_12:
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v20, qword_1ED69A108);
    v21 = sub_1B256E0BC();
    v22 = sub_1B256D5CC();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_1B2519814(0, 0xE000000000000000, &aBlock);
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_1B2519814(0xD000000000000083, 0x80000001B2590D10, &aBlock);
      _os_log_impl(&dword_1B23EF000, v22, v21, "%{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v24, -1, -1);
      MEMORY[0x1B274BFF0](v23, -1, -1);
    }

LABEL_17:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v31 = &unk_1F2A06940;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = v8;
  *(v1 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B24F8F58;
  *(v10 + 24) = v1;
  v29 = sub_1B24F8F60;
  v30 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1B24F7498;
  v28 = &block_descriptor_79;
  v11 = _Block_copy(&aBlock);
  v12 = v7;

  [v9 configureConnection_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    [v9 activate];

    return v1;
  }

  __break(1u);
  return result;
}

id sub_1B24F6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1B256D98C();

  v8 = sub_1B256D98C();

  if (a6)
  {
    v9 = sub_1B256D98C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() endpointForMachName:v7 service:v8 instance:v9];

  return v10;
}

void sub_1B24F6868(void *a1)
{
  sub_1B246063C(0, &unk_1EB7D21D0);
  v2 = sub_1B24D4148();
  [a1 setInterface_];

  v3 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  v13 = sub_1B24F6AE4;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1B24F6D18;
  v12 = &block_descriptor_82;
  v4 = _Block_copy(&v9);

  [a1 setActivationHandler_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v13 = sub_1B24F8F88;
  v14 = v5;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1B24F6D18;
  v12 = &block_descriptor_88;
  v6 = _Block_copy(&v9);

  [a1 setInterruptionHandler_];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v13 = sub_1B24F8F90;
  v14 = v7;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_1B24F6D18;
  v12 = &block_descriptor_92;
  v8 = _Block_copy(&v9);

  [a1 setInvalidationHandler_];
  _Block_release(v8);
}

void sub_1B24F6AE4()
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v0, qword_1ED69A108);
  v6[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000002ALL, 0x80000001B258EC30);
  MEMORY[0x1B2749D50](0xD000000000000017, 0x80000001B2590E70);
  swift_getObjectType();
  swift_getWitnessTable();
  sub_1B256EB1C();
  v1 = sub_1B256E08C();

  v2 = sub_1B256D5CC();

  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6[0] = v4;
    *v3 = 136446466;
    *(v3 + 4) = sub_1B2519814(0, 0xE000000000000000, v6);
    *(v3 + 12) = 2082;
    v5 = sub_1B2519814(0, 0xE000000000000000, v6);

    *(v3 + 14) = v5;
    _os_log_impl(&dword_1B23EF000, v2, v1, "%{public}s%{public}s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v4, -1, -1);
    MEMORY[0x1B274BFF0](v3, -1, -1);
  }

  else
  {
  }
}

void sub_1B24F6D18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B24F6D80(uint64_t a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000002ALL, 0x80000001B258EC30);
  MEMORY[0x1B2749D50](0xD000000000000019, 0x80000001B2590E50);
  swift_getObjectType();
  v9[3] = a1;
  swift_getWitnessTable();
  sub_1B256EB1C();
  v3 = sub_1B256E0AC();

  v4 = sub_1B256D5CC();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B2519814(0, 0xE000000000000000, v9);
    *(v5 + 12) = 2082;
    v7 = sub_1B2519814(0, 0xE000000000000000, v9);

    *(v5 + 14) = v7;
    _os_log_impl(&dword_1B23EF000, v4, v3, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v6, -1, -1);
    MEMORY[0x1B274BFF0](v5, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B24F6FF0();
  }

  return result;
}

id sub_1B24F6FF0()
{
  v1 = v0;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B256E4FC();
  v3 = sub_1B256EE7C();
  v5 = v4;

  v15[0] = v3;
  v15[1] = v5;
  MEMORY[0x1B2749D50](0xD000000000000019, 0x80000001B2590E30);
  v7 = v3;
  v6 = v5;
  v8 = sub_1B256E0CC();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B2519814(0, 0xE000000000000000, v15);
    *(v10 + 12) = 2082;
    v12 = sub_1B2519814(v7, v6, v15);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v1 + 16);

  return [v13 invalidate];
}

uint64_t sub_1B24F7228(uint64_t a1)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000002ALL, 0x80000001B258EC30);
  MEMORY[0x1B2749D50](0xD000000000000019, 0x80000001B2590E10);
  swift_getObjectType();
  v9[3] = a1;
  swift_getWitnessTable();
  sub_1B256EB1C();
  v3 = sub_1B256E0CC();

  v4 = sub_1B256D5CC();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B2519814(0, 0xE000000000000000, v9);
    *(v5 + 12) = 2082;
    v7 = sub_1B2519814(0, 0xE000000000000000, v9);

    *(v5 + 14) = v7;
    _os_log_impl(&dword_1B23EF000, v4, v3, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v6, -1, -1);
    MEMORY[0x1B274BFF0](v5, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B24F6FF0();
  }

  return result;
}

uint64_t sub_1B24F7498(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B24F74EC()
{
  v0 = sub_1B256D83C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B256D73C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  static AppStore.deviceVerificationID.getter(&v39 - v12);
  v14 = sub_1B256D3CC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B243E88C(v13, &qword_1EB7D1770);
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();
    v17 = sub_1B256D5CC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B2519814(0, 0xE000000000000000, &v44);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000049, 0x80000001B2590C10, &v44);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    v20 = 0;
  }

  else
  {
    v21 = sub_1B256D38C();
    v42 = v10;
    v43 = v5;
    v22 = v21;
    v24 = v23;
    (*(*(v14 - 8) + 8))(v13, v14);
    v44 = v22;
    v45 = v24;
    sub_1B243E6F8();
    sub_1B256E33C();
    v40 = v8;
    v41 = v4;
    v25 = v1;

    v39 = type metadata accessor for Transaction(0);
    v44 = sub_1B256D38C();
    v45 = v26;
    sub_1B256E33C();

    sub_1B24EEFFC();

    sub_1B24D7B84();
    v28 = v27;
    v30 = v29;
    sub_1B24F8FEC(&qword_1EB7D20F8, MEMORY[0x1E6966630]);
    sub_1B256D72C();
    sub_1B244784C(v28, v30);
    sub_1B24F8CE8(v28, v30);
    sub_1B2443AE4(v28, v30);
    v31 = v42;
    sub_1B256D71C();
    (*(v25 + 8))(v3, v0);
    v32 = v43;
    v33 = v41;
    v34 = v31;
    (*(v43 + 16))(v40, v31, v41);
    v35 = sub_1B24D8028();
    v37 = v36;
    v20 = MEMORY[0x1B2749490]();
    sub_1B2443AE4(v35, v37);
    sub_1B2443AE4(v28, v30);
    (*(v32 + 8))(v34, v33);
  }

  return v20 & 1;
}

uint64_t sub_1B24F7A44()
{
  v0 = sub_1B256D83C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B256D73C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  static AppStore.deviceVerificationID.getter(&v39 - v12);
  v14 = sub_1B256D3CC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B243E88C(v13, &qword_1EB7D1770);
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();
    v17 = sub_1B256D5CC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B2519814(0, 0xE000000000000000, &v44);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000049, 0x80000001B2590C10, &v44);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    v20 = 0;
  }

  else
  {
    v21 = sub_1B256D38C();
    v42 = v10;
    v43 = v5;
    v22 = v21;
    v24 = v23;
    (*(*(v14 - 8) + 8))(v13, v14);
    v44 = v22;
    v45 = v24;
    sub_1B243E6F8();
    sub_1B256E33C();
    v40 = v8;
    v41 = v4;
    v25 = v1;

    v39 = type metadata accessor for AppTransaction();
    v44 = sub_1B256D38C();
    v45 = v26;
    sub_1B256E33C();

    sub_1B24EEFFC();

    sub_1B24D7B84();
    v28 = v27;
    v30 = v29;
    sub_1B24F8FEC(&qword_1EB7D20F8, MEMORY[0x1E6966630]);
    sub_1B256D72C();
    sub_1B244784C(v28, v30);
    sub_1B24F8CE8(v28, v30);
    sub_1B2443AE4(v28, v30);
    v31 = v42;
    sub_1B256D71C();
    (*(v25 + 8))(v3, v0);
    v32 = v43;
    v33 = v41;
    v34 = v31;
    (*(v43 + 16))(v40, v31, v41);
    v35 = sub_1B24D8028();
    v37 = v36;
    v20 = MEMORY[0x1B2749490]();
    sub_1B2443AE4(v35, v37);
    sub_1B2443AE4(v28, v30);
    (*(v32 + 8))(v34, v33);
  }

  return v20 & 1;
}

uint64_t sub_1B24F7F9C()
{
  v0 = sub_1B256D83C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B256D73C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  static AppStore.deviceVerificationID.getter(&v39 - v12);
  v14 = sub_1B256D3CC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B243E88C(v13, &qword_1EB7D1770);
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();
    v17 = sub_1B256D5CC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B2519814(0, 0xE000000000000000, &v44);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000049, 0x80000001B2590C10, &v44);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    v20 = 0;
  }

  else
  {
    v21 = sub_1B256D38C();
    v42 = v10;
    v43 = v5;
    v22 = v21;
    v24 = v23;
    (*(*(v14 - 8) + 8))(v13, v14);
    v44 = v22;
    v45 = v24;
    sub_1B243E6F8();
    sub_1B256E33C();
    v40 = v8;
    v41 = v4;
    v25 = v1;

    v39 = type metadata accessor for Product.SubscriptionInfo.RenewalInfo(0);
    v44 = sub_1B256D38C();
    v45 = v26;
    sub_1B256E33C();

    sub_1B24EEFFC();

    sub_1B24D7B84();
    v28 = v27;
    v30 = v29;
    sub_1B24F8FEC(&qword_1EB7D20F8, MEMORY[0x1E6966630]);
    sub_1B256D72C();
    sub_1B244784C(v28, v30);
    sub_1B24F8CE8(v28, v30);
    sub_1B2443AE4(v28, v30);
    v31 = v42;
    sub_1B256D71C();
    (*(v25 + 8))(v3, v0);
    v32 = v43;
    v33 = v41;
    v34 = v31;
    (*(v43 + 16))(v40, v31, v41);
    v35 = sub_1B24D8028();
    v37 = v36;
    v20 = MEMORY[0x1B2749490]();
    sub_1B2443AE4(v35, v37);
    sub_1B2443AE4(v28, v30);
    (*(v32 + 8))(v34, v33);
  }

  return v20 & 1;
}

id sub_1B24F84F4(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = sub_1B256D1FC();
  v10 = [v4 initWithRequestData:v9 presentingViewController:a3 windowScene:a4];

  sub_1B2443AE4(a1, a2);
  return v10;
}

id sub_1B24F8574(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1B256D98C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithFamilyID_];

  return v4;
}

uint64_t sub_1B24F85F0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1B2445514;

  return sub_1B24F5940(v3, v4, v5, v6);
}

uint64_t sub_1B24F869C()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B24F86F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B24F8750()
{
  result = qword_1EB7D20C0;
  if (!qword_1EB7D20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D20C0);
  }

  return result;
}

unint64_t sub_1B24F87A8()
{
  result = qword_1EB7D20C8;
  if (!qword_1EB7D20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D20C8);
  }

  return result;
}

unint64_t sub_1B24F8800()
{
  result = qword_1EB7D20D0;
  if (!qword_1EB7D20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D20D0);
  }

  return result;
}

unint64_t sub_1B24F8858()
{
  result = qword_1EB7D20D8;
  if (!qword_1EB7D20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D20D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppStore(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AppStore.AccountType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppStore.AppStoreAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for AppStoreMerchandisingKind.PresentationResult()
{
  result = qword_1EB7D20E0;
  if (!qword_1EB7D20E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B24F8BD0()
{
  v0 = type metadata accessor for Product.PurchaseResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1B24F8C28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B24F8C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B24F8CD0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1B244784C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B24F8CDC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1B2443AE4(a1, a2);
  }

  return a1;
}

void sub_1B24F8CE8(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1B24F8E58(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1B24F8D84();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1B24F8D84()
{
  sub_1B256D83C();
  sub_1B24F8FEC(&qword_1EB7D20F8, MEMORY[0x1E6966630]);
  return sub_1B256D70C();
}

uint64_t sub_1B24F8E58(uint64_t a1, uint64_t a2)
{
  result = sub_1B256CF2C();
  if (!result || (result = sub_1B256CF4C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B256CF3C();
      sub_1B256D83C();
      sub_1B24F8FEC(&qword_1EB7D20F8, MEMORY[0x1E6966630]);
      return sub_1B256D70C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B24F8FEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B24F9034()
{
  result = qword_1EB7D18D0;
  if (!qword_1EB7D18D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7D21E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D18D0);
  }

  return result;
}

uint64_t objectdestroy_106Tm()
{
  sub_1B2443AE4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B24F9194()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_20()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10_18()
{
  v1 = v0[5];
  v0[9] = *v1;
  v0[10] = v1[1];
  v0[11] = v1[2];
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_19_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_5()
{
}

void OUTLINED_FUNCTION_45_3(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  **(v0 + 32) = 258;
}

unint64_t OUTLINED_FUNCTION_47_4(float a1)
{
  *v1 = a1;

  return sub_1B2519814(0, 0xE000000000000000, (v2 + 24));
}

uint64_t OUTLINED_FUNCTION_48_4()
{
  *(v0 + 104) = *(v1 + 56);

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_49_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return swift_arrayDestroy();
}

char *OUTLINED_FUNCTION_55_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{

  return parseError(_:)(a11);
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t result)
{
  *(v1 + 112) = result;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1, uint64_t a2, __int16 a3)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
}

unint64_t OUTLINED_FUNCTION_75_3(uint64_t a1, unint64_t a2)
{

  return sub_1B2519814(0xD00000000000002ALL, a2, (v2 + 24));
}

uint64_t OUTLINED_FUNCTION_76_2()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_77_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return type metadata accessor for Product.PurchaseResult(0);
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return sub_1B24F8CDC(v1, v0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return sub_1B256E4FC();
}

BOOL OUTLINED_FUNCTION_96_3(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_97_3()
{
}

uint64_t static AdvancedCommerceProduct.PurchaseOption.onStorefrontChange(shouldContinuePurchase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t AdvancedCommerceProduct.PurchaseOption.hashValue.getter()
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  return sub_1B256ED7C();
}

unint64_t sub_1B24F987C()
{
  result = qword_1EB7D2260;
  if (!qword_1EB7D2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2260);
  }

  return result;
}

uint64_t sub_1B24F9900(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B24F9940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B24F9990()
{
  result = qword_1EB7D2268;
  if (!qword_1EB7D2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2268);
  }

  return result;
}

uint64_t sub_1B24F99EC()
{
  OUTLINED_FUNCTION_4_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2280);
  v1[7] = v4;
  OUTLINED_FUNCTION_26_7(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_250();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2580);
  v1[10] = v6;
  OUTLINED_FUNCTION_26_7(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_250();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2288);
  v1[13] = v8;
  OUTLINED_FUNCTION_26_7(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_131_0();
  v1[16] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B24F9B5C()
{
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_316();
  v1 = v0[16];
  v2 = v0[14];
  v14 = v0[13];
  v15 = v0[15];
  sub_1B24FF538();
  v3 = OUTLINED_FUNCTION_96_4();
  v4(v3);
  OUTLINED_FUNCTION_123_1();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_166_1(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2290);
  OUTLINED_FUNCTION_28_9(&qword_1EB7CD5C8, &qword_1EB7D2580);
  OUTLINED_FUNCTION_17_13(&qword_1EB7CD510);
  OUTLINED_FUNCTION_55_4();
  v6 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  (*(v2 + 16))(v15, v1, v14);
  OUTLINED_FUNCTION_26_9(&qword_1EB7CD4E8, &qword_1EB7D2288);
  sub_1B256DECC();
  v0[17] = v6;
  OUTLINED_FUNCTION_1_34(&qword_1EB7CD4F0, &qword_1EB7D2280);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[18] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_63_2(v7);
  OUTLINED_FUNCTION_114();

  return MEMORY[0x1EEE6D8C8](v9, v10, v11);
}

uint64_t sub_1B24F9D34()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24F9E50()
{
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_24_5();
  if (v0[3])
  {
    MEMORY[0x1B2749EB0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B256DC7C();
    }

    sub_1B256DCAC();
    v0[17] = v0[2];
    OUTLINED_FUNCTION_1_34(&qword_1EB7CD4F0, &qword_1EB7D2280);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[18] = v1;
    *v1 = v2;
    OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_336();

    return MEMORY[0x1EEE6D8C8](v3, v4, v5);
  }

  else
  {
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v9 + 8))(v7, v8);

    OUTLINED_FUNCTION_336();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1B24F9FE4()
{
  OUTLINED_FUNCTION_21_5();
  (*(v0[14] + 8))(v0[16], v0[13]);

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24FA084()
{
  OUTLINED_FUNCTION_4_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330);
  OUTLINED_FUNCTION_2_2(v4);
  v1[5] = OUTLINED_FUNCTION_250();
  v5 = type metadata accessor for Product();
  v1[6] = v5;
  OUTLINED_FUNCTION_26_7(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_131_0();
  v1[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2338);
  v1[10] = v7;
  OUTLINED_FUNCTION_26_7(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_250();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2580);
  v1[13] = v9;
  OUTLINED_FUNCTION_26_7(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_250();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2340);
  v1[16] = v11;
  OUTLINED_FUNCTION_26_7(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_131_0();
  v1[19] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B24FA430()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  v3[22] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24FA54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v13 = v12[5];
  if (__swift_getEnumTagSinglePayload(v13, 1, v12[6]) == 1)
  {
    v14 = v12[19];
    v15 = v12[16];
    v16 = v12[17];
    (*(v12[11] + 8))(v12[12], v12[10]);
    (*(v16 + 8))(v14, v15);
    sub_1B243E88C(v13, &qword_1EB7D2330);

    OUTLINED_FUNCTION_115();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v27 = v12[8];
    v26 = v12[9];
    sub_1B2505984(v13, v26);
    OUTLINED_FUNCTION_84_3();
    sub_1B25059E8(v26, v27, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v12[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_121_2();
      sub_1B2448D30();
      v30 = v42;
    }

    v31 = *(v30 + 16);
    if (v31 >= *(v30 + 24) >> 1)
    {
      OUTLINED_FUNCTION_121_2();
      sub_1B2448D30();
      v30 = v43;
    }

    v32 = v12[8];
    v33 = v12[7];
    OUTLINED_FUNCTION_83_3();
    sub_1B2505A44(v34, v35);
    *(v30 + 16) = v31 + 1;
    sub_1B2505984(v32, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31);
    v12[20] = v30;
    OUTLINED_FUNCTION_1_34(&unk_1EB7CD290, &qword_1EB7D2338);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v12[21] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6D8C8](v38, v39, v40);
  }
}

uint64_t sub_1B24FA780()
{
  OUTLINED_FUNCTION_155();
  (*(v0[17] + 8))(v0[19], v0[16]);

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24FA850(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22E0);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2580);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D22E8);
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24FA9FC, 0, 0);
}

uint64_t sub_1B24FABB4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  v3[24] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24FACD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_126();
  v13 = v12[6];
  if (v13)
  {
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[7];
    v19 = v12[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v12[22];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B24494E4();
      v21 = v41;
    }

    v22 = *(v21 + 16);
    if (v22 >= *(v21 + 24) >> 1)
    {
      sub_1B24494E4();
      v21 = v42;
    }

    *(v21 + 16) = v22 + 1;
    v23 = v21 + 56 * v22;
    *(v23 + 32) = v14;
    *(v23 + 40) = v15;
    *(v23 + 48) = v16;
    *(v23 + 56) = v17;
    *(v23 + 64) = v13;
    *(v23 + 72) = v18;
    *(v23 + 80) = v19;
    v12[22] = v21;
    OUTLINED_FUNCTION_1_34(&qword_1EB7D2308, &qword_1EB7D22E0);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v12[23] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6D8C8](v26, v27, v28);
  }

  else
  {
    v30 = v12[21];
    v31 = v12[18];
    v32 = v12[19];
    (*(v12[13] + 8))(v12[14], v12[12]);
    (*(v32 + 8))(v30, v31);
    sub_1B250544C(v12[2], v12[3], v12[4], v12[5], v12[6]);

    OUTLINED_FUNCTION_115();

    return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_1B24FAEA4()
{
  OUTLINED_FUNCTION_21_5();
  (*(v0[19] + 8))(v0[21], v0[18]);

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t AdvancedCommerceProduct.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B24472B8(v2, v3, v4);
}

uint64_t AdvancedCommerceProduct.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t AdvancedCommerceProduct.init(id:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = type metadata accessor for ProductRequest();
  v0[7] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v0[8] = OUTLINED_FUNCTION_131_0();
  v0[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24FB01C()
{
  OUTLINED_FUNCTION_126();
  if (qword_1EB7CD328 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B2578530;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_1B2503518();
  v5 = v4;
  if (qword_1EB7CDA50 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  sub_1B256EE5C();
  v19 = v0[2];
  v20 = v0[3];

  MEMORY[0x1B2749D50](843797343, 0xE400000000000000);

  type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v7 + v8[5];
  *v13 = v3;
  *(v13 + 8) = 0;
  *(v7 + v8[6]) = 2;
  *(v7 + v8[7]) = MEMORY[0x1E69E7CD0];
  *(v7 + v8[8]) = v5;
  v14 = (v7 + v8[9]);
  *v14 = v19;
  v14[1] = v20;
  *(v7 + v8[10]) = 0;
  OUTLINED_FUNCTION_79_2();
  sub_1B25059E8(v7, v6, v15);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2270));
  v0[10] = sub_1B24FF230(v6, sub_1B25060B0);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1B24FB288;

  return sub_1B24FA850(&unk_1B2583928, 0);
}

uint64_t sub_1B24FB288()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24FB388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_87_2();
  v17 = v16[12];
  v18 = v16[10];
  if (*(v17 + 16))
  {
    v19 = v16[9];
    v20 = v16[4];
    v21 = *(v17 + 32);
    v22 = *(v17 + 40);
    v23 = *(v17 + 64);
    a11 = *(v17 + 56);
    a12 = v16[8];
    v24 = *(v17 + 80);
    a10 = *(v17 + 72);
    v25 = *(v17 + 48);
    sub_1B24472B8(v21, v22, v25);

    OUTLINED_FUNCTION_5_26();
    sub_1B2505A44(v19, v26);
    *v20 = v21;
    *(v20 + 8) = v22;
    *(v20 + 16) = v25;
    *(v20 + 24) = a11;
    *(v20 + 32) = v23;
    *(v20 + 40) = a10;
    *(v20 + 48) = v24;

    OUTLINED_FUNCTION_14_7();
  }

  else
  {

    type metadata accessor for StoreKitError();
    OUTLINED_FUNCTION_13_17();
    sub_1B2505150(v27, v28);
    OUTLINED_FUNCTION_113_0();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_49_5();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_5_26();
    sub_1B2505A44(v30, v31);
    v32 = parseError(_:)(v29);
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v33 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v33, qword_1ED69A108);
    v34 = objc_allocWithZone(type metadata accessor for SKTwoErrorEvent());
    v35 = OUTLINED_FUNCTION_149_1();
    v36 = [v29 init];
    OUTLINED_FUNCTION_172_0();
    v37 = sub_1B256D0CC();
    OUTLINED_FUNCTION_199(v37, sel_setPrimaryError_);

    v38 = sub_1B256D0CC();
    OUTLINED_FUNCTION_199(v38, sel_setMappedError_);

    [v29 setUserAction_];
    OUTLINED_FUNCTION_27_2(OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
    [v29 setInAppPurchaseID_];

    [objc_opt_self() sendEvent_];
    swift_willThrow();

    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_8_7();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B24FB614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_155();

  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_5_26();
  sub_1B2505A44(v13, v14);
  v15 = parseError(_:)(v12);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v16 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v16, qword_1ED69A108);
  v17 = objc_allocWithZone(type metadata accessor for SKTwoErrorEvent());
  v18 = OUTLINED_FUNCTION_149_1();
  v19 = [v10 init];
  OUTLINED_FUNCTION_172_0();
  v20 = sub_1B256D0CC();
  OUTLINED_FUNCTION_199(v20, sel_setPrimaryError_);

  v21 = sub_1B256D0CC();
  OUTLINED_FUNCTION_199(v21, sel_setMappedError_);

  [v10 setUserAction_];
  OUTLINED_FUNCTION_27_2(OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
  [v10 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_168_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1B24FB7B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B24FB7D4, 0, 0);
}

uint64_t sub_1B24FB7D4()
{
  OUTLINED_FUNCTION_316();
  v9 = v0;
  v1 = *(v0 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
  *&v6 = v1;

  BackingValue.init(foundation:)(&v6, &v4);
  v6 = v4;
  v7 = v5;
  sub_1B24FB894(&v6);
  OUTLINED_FUNCTION_14_7();

  return v3();
}

uint64_t sub_1B24FBB04@<X0>(uint64_t *a1@<X8>)
{
  result = AdvancedCommerceProduct.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AdvancedCommerceProduct.purchase(compactJWS:confirmIn:options:)()
{
  OUTLINED_FUNCTION_4_0();
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 88) = v6;
  *(v1 + 128) = *v0;
  *(v1 + 200) = *(v0 + 16);
  *(v1 + 144) = *(v0 + 24);
  *(v1 + 152) = *(v0 + 32);
  *(v1 + 168) = *(v0 + 48);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24FBBE4()
{
  OUTLINED_FUNCTION_126();
  if (qword_1EB7CFC68 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v10 = *(v0 + 144);
  v3 = *(v0 + 200);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = _os_activity_create(&dword_1B23EF000, "StoreKit/Purchase_ACA", qword_1EB7EDFB8, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 176) = v6;
  *(v0 + 80) = 0;
  *(v0 + 72) = 0;
  os_activity_scope_enter(v6, (v0 + 72));
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = v10;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 184) = v7;
  *v7 = v8;
  v7[1] = sub_1B24FBD58;

  return sub_1B24FBFA8();
}

uint64_t sub_1B24FBD58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24FBE80()
{
  OUTLINED_FUNCTION_4_0();
  os_activity_scope_leave((v0 + 72));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24FBF14()
{
  OUTLINED_FUNCTION_4_0();
  os_activity_scope_leave((v0 + 72));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24FBFA8()
{
  OUTLINED_FUNCTION_4_0();
  *(v1 + 704) = v2;
  *(v1 + 696) = v3;
  *(v1 + 688) = v4;
  *(v1 + 680) = v5;
  *(v1 + 672) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E48);
  OUTLINED_FUNCTION_2_2(v7);
  *(v1 + 712) = OUTLINED_FUNCTION_250();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  *(v1 + 720) = v8;
  OUTLINED_FUNCTION_2_2(v8);
  *(v1 + 728) = swift_task_alloc();
  *(v1 + 736) = swift_task_alloc();
  v9 = type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_2_2(v9);
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  v10 = *(v0 + 16);
  *(v1 + 144) = *v0;
  *(v1 + 160) = v10;
  *(v1 + 176) = *(v0 + 32);
  *(v1 + 192) = *(v0 + 48);
  v11 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B24FC0CC()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CFC58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7EDFB0;
  *(v0 + 760) = qword_1EB7EDFB0;

  return MEMORY[0x1EEE6DFA0](sub_1B24FC160, v1, 0);
}

uint64_t sub_1B24FC160()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24A3E58();
  v0 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B24FC1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_191();
  a26 = v28;
  a27 = v29;
  a25 = v27;
  v85 = (v27 + 456);
  v86 = (v27 + 552);
  v30 = *(v27 + 704);
  type metadata accessor for SKPaymentOption(0);
  sub_1B2505150(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption);
  sub_1B256D8AC();
  v31 = -1;
  v32 = -1 << *(v30 + 32);
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & *(v30 + 56);
  v34 = (63 - v32) >> 6;

  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
    *(v27 + 776) = v36;
    *(v27 + 768) = v35;
    if (!v33)
    {
      break;
    }

    v38 = v37;
LABEL_10:
    v39 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v40 = (*(v30 + 48) + ((v38 << 10) | (16 * v39)));
    v41 = *v40;
    v42 = v40[1];

    sub_1B24E313C(v35);
    v35 = v41;
    v36 = v42;
  }

  while (1)
  {
    v38 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_22:
      OUTLINED_FUNCTION_0_17();
      goto LABEL_14;
    }

    if (v38 >= v34)
    {
      break;
    }

    v33 = *(v30 + 56 + 8 * v38);
    ++v37;
    if (v33)
    {
      v37 = v38;
      goto LABEL_10;
    }
  }

  v43 = *(v27 + 696);
  v44 = *(v27 + 688);
  v45 = *(v27 + 680);

  v46 = *(v27 + 160);
  a13 = *(v27 + 144);
  a14 = v46;
  a15 = *(v27 + 176);
  a16 = *(v27 + 192);
  v47 = SKPaymentOptionAdvancedCommerceData;
  v48 = sub_1B24FE0F0(v45, v44);
  v49 = MEMORY[0x1E69E6158];
  *(v27 + 288) = MEMORY[0x1E69E6158];
  *(v27 + 264) = v48;
  *(v27 + 272) = v50;
  sub_1B244AA0C((v27 + 264), (v27 + 296));
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_183_0();
  sub_1B244A54C((v27 + 296), v47, v51);

  v52 = SKPaymentOptionLegacyOfferName;
  v53 = *(v27 + 168);
  v54 = *(v27 + 176);
  *(v27 + 784) = v53;
  *(v27 + 792) = v54;
  *(v27 + 352) = v49;
  *(v27 + 328) = v53;
  *(v27 + 336) = v54;
  sub_1B244AA0C((v27 + 328), (v27 + 360));
  v55 = v52;

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_183_0();
  sub_1B244A54C((v27 + 360), v55, v56);

  v57 = SKPaymentOptionLegacyQuantity;
  *(v27 + 416) = v49;
  *(v27 + 392) = 49;
  *(v27 + 400) = 0xE100000000000000;
  sub_1B244AA0C((v27 + 392), (v27 + 424));
  v58 = v57;
  OUTLINED_FUNCTION_179_0();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_183_0();
  sub_1B244A54C((v27 + 424), v54, v59);

  v35 = (v27 + 552);
  v33 = SKPaymentOptionProductKind;
  v60 = *(v27 + 184);
  *v86 = v60;
  *v85 = v60;
  *(v27 + 480) = v49;
  sub_1B244AA0C(v85, (v27 + 488));
  v37 = v33;
  sub_1B2505080(v86, v27 + 600);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_183_0();
  sub_1B244A54C((v27 + 488), v37, v61);

  v62 = a13;
  *(v27 + 800) = a13;
  *(v27 + 656) = v62;
  if (v43)
  {
    v63 = *(v27 + 696);
    *(v27 + 808) = sub_1B256DD6C();
    v64 = v63;
    *(v27 + 816) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_57_3();
    goto LABEL_18;
  }

  if (qword_1ED699E80 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v65 = OUTLINED_FUNCTION_161_1();
  __swift_project_value_buffer(v65, qword_1ED69A108);
  OUTLINED_FUNCTION_180_0();
  sub_1B256E4FC();
  v66 = OUTLINED_FUNCTION_59_5();
  MEMORY[0x1B2749D50](v66);
  MEMORY[0x1B2749D50](v37, v33);
  OUTLINED_FUNCTION_75_0();
  v67 = OUTLINED_FUNCTION_91_1();
  MEMORY[0x1B2749D50](v67);
  v68 = a13;
  v69 = sub_1B256E0AC();

  v70 = v35;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_135_1();
  if (os_log_type_enabled(v35, v69))
  {
    v71 = OUTLINED_FUNCTION_21_3();
    v72 = OUTLINED_FUNCTION_20_4();
    *&a13 = v72;
    *v71 = 136446466;
    v74 = OUTLINED_FUNCTION_75_2(v72, v73, &a13);
    OUTLINED_FUNCTION_76_1(v74);
    v75 = sub_1B2519814(v68, *(&v68 + 1), &a13);

    *(v71 + 14) = v75;
    OUTLINED_FUNCTION_64_2(&dword_1B23EF000, v76, v77, "%{public}s%{public}s");
    OUTLINED_FUNCTION_100_2();
    OUTLINED_FUNCTION_22_8();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_54_5(*(v27 + 800));
  OUTLINED_FUNCTION_127_0();
  v78 = *(&v68 + 1);
  v79 = OUTLINED_FUNCTION_27_8();
  OUTLINED_FUNCTION_2_31(v79);
LABEL_18:
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v80, v81, v82);
}

uint64_t sub_1B24FC680()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 696);

  *(v0 + 824) = [v1 view];
  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24FC6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 824))
  {
    OUTLINED_FUNCTION_4_0();
    *(v3 + 832) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    a1 = OUTLINED_FUNCTION_57_3();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B24FC780()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 824);

  *(v0 + 840) = [v1 window];

  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24FC800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_197_0();
  a17 = v22;
  a18 = v23;
  OUTLINED_FUNCTION_155();
  a16 = v20;
  if (*(v20 + 840))
  {
    *(v20 + 848) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_57_3();
  }

  else
  {

    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v24 = OUTLINED_FUNCTION_161_1();
    __swift_project_value_buffer(v24, qword_1ED69A108);
    OUTLINED_FUNCTION_97_2();
    v25 = OUTLINED_FUNCTION_59_5();
    MEMORY[0x1B2749D50](v25);
    MEMORY[0x1B2749D50](v19, v18);
    OUTLINED_FUNCTION_75_0();
    v26 = OUTLINED_FUNCTION_91_1();
    MEMORY[0x1B2749D50](v26);
    v28 = a9;
    v27 = a10;
    v29 = sub_1B256E0AC();

    v30 = v21;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_135_1();
    if (os_log_type_enabled(v21, v29))
    {
      v31 = OUTLINED_FUNCTION_21_3();
      v32 = OUTLINED_FUNCTION_20_4();
      a9 = v32;
      *v31 = 136446466;
      v34 = OUTLINED_FUNCTION_75_2(v32, v33, &a9);
      OUTLINED_FUNCTION_76_1(v34);
      v35 = sub_1B2519814(v28, v27, &a9);

      *(v31 + 14) = v35;
      OUTLINED_FUNCTION_64_2(&dword_1B23EF000, v36, v37, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_54_5(*(v20 + 800));
    OUTLINED_FUNCTION_127_0();
    v38 = v27;
    v39 = OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_2_31(v39);
  }

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x1EEE6DFA0](v40, v41, v42);
}

uint64_t sub_1B24FC9DC()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 840);

  *(v0 + 856) = [v1 windowScene];

  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24FCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_197_0();
  a17 = v22;
  a18 = v23;
  OUTLINED_FUNCTION_155();
  a16 = v20;
  if (*(v20 + 856))
  {
    *(v20 + 864) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_57_3();
  }

  else
  {

    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v24 = OUTLINED_FUNCTION_161_1();
    __swift_project_value_buffer(v24, qword_1ED69A108);
    OUTLINED_FUNCTION_97_2();
    v25 = OUTLINED_FUNCTION_59_5();
    MEMORY[0x1B2749D50](v25);
    MEMORY[0x1B2749D50](v19, v18);
    OUTLINED_FUNCTION_75_0();
    v26 = OUTLINED_FUNCTION_91_1();
    MEMORY[0x1B2749D50](v26);
    v28 = a9;
    v27 = a10;
    v29 = sub_1B256E0AC();

    v30 = v21;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_135_1();
    if (os_log_type_enabled(v21, v29))
    {
      v31 = OUTLINED_FUNCTION_21_3();
      v32 = OUTLINED_FUNCTION_20_4();
      a9 = v32;
      *v31 = 136446466;
      v34 = OUTLINED_FUNCTION_75_2(v32, v33, &a9);
      OUTLINED_FUNCTION_76_1(v34);
      v35 = sub_1B2519814(v28, v27, &a9);

      *(v31 + 14) = v35;
      OUTLINED_FUNCTION_64_2(&dword_1B23EF000, v36, v37, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_54_5(*(v20 + 800));
    OUTLINED_FUNCTION_127_0();
    v38 = v27;
    v39 = OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_2_31(v39);
  }

  OUTLINED_FUNCTION_168_0();

  return MEMORY[0x1EEE6DFA0](v40, v41, v42);
}

uint64_t sub_1B24FCC38()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 856);

  *(v0 + 872) = [v1 _sceneIdentifier];

  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24FCCB8()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 872);
  v2 = *(v0 + 696);
  v3 = sub_1B256D9BC();
  v5 = v4;

  v6 = SKPaymentOptionPresentingSceneID;
  *(v0 + 256) = MEMORY[0x1E69E6158];
  *(v0 + 232) = v3;
  *(v0 + 240) = v5;
  sub_1B244AA0C((v0 + 232), (v0 + 520));
  v7 = v6;
  v8 = *(v0 + 656);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B244A54C((v0 + 520), v7, isUniquelyReferenced_nonNull_native);

  *(v0 + 656) = v8;
  OUTLINED_FUNCTION_54_5(v8);
  OUTLINED_FUNCTION_127_0();
  v10 = v5;
  v11 = OUTLINED_FUNCTION_27_8();
  v12 = OUTLINED_FUNCTION_2_31(v11);

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B24FCDA4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[111];
  v0[10] = v0;
  v0[15] = v0 + 83;
  v0[11] = sub_1B24FCE48;
  v2 = swift_continuation_init();
  sub_1B24FE430(v2, (v0 + 18), (v0 + 82), v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B24FCE48()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  v1[112] = v4;
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v1[113] = v1[83];
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24FCF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_191();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  sub_1B247A578(*(v30 + 904), (v30 + 200));

  if (*(v30 + 224))
  {
    if (swift_dynamicCast())
    {
      Transaction.init(receipt:)(*(v30 + 584), *(v30 + 592), *(v30 + 752));
      sub_1B25059E8(*(v30 + 752), *(v30 + 744), type metadata accessor for Transaction);
      swift_task_alloc();
      OUTLINED_FUNCTION_8_2();
      *(v30 + 912) = v33;
      *v33 = v34;
      v33[1] = sub_1B24FDBB4;
      OUTLINED_FUNCTION_112();

      return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, sub_1B24ED054, a17, a18, a19, a20, a21, a22);
    }
  }

  else
  {
    sub_1B243E88C(v30 + 200, &qword_1EB7D05F0);
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v44 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v44, qword_1ED69A108);
  v45 = sub_1B256E0AC();
  v46 = sub_1B256D5CC();
  if (os_log_type_enabled(v46, v45))
  {
    v47 = OUTLINED_FUNCTION_21_3();
    v48 = OUTLINED_FUNCTION_20_4();
    a17 = v48;
    *v47 = 136446466;
    v50 = OUTLINED_FUNCTION_75_2(v48, v49, &a17);
    OUTLINED_FUNCTION_78_2(v50);
    v51 = OUTLINED_FUNCTION_91_1();
    *(v47 + 14) = sub_1B2519814(v51, v52, v53);
    OUTLINED_FUNCTION_163_1(&dword_1B23EF000, v54, v45, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_11_4();
  }

  type metadata accessor for StoreKitError();
  OUTLINED_FUNCTION_13_17();
  sub_1B2505150(v55, v56);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_113_0();
  v57 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  _s3__C4CodeOMa_0(0);
  v59 = v58;
  *(v30 + 648) = 504;
  v60 = v57;
  OUTLINED_FUNCTION_82_3();
  v63 = sub_1B2505150(v61, v62);
  OUTLINED_FUNCTION_12_18();
  v64 = sub_1B256CFDC();

  if ((v64 & 1) == 0)
  {
    *(v30 + 616) = 1052;
    v65 = v57;
    OUTLINED_FUNCTION_12_18();
    sub_1B256CFDC();
    OUTLINED_FUNCTION_129_1();
    if ((v59 & 1) == 0)
    {
      type metadata accessor for Code(0);
      OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_81_3();
      sub_1B2505150(v66, v67);
      OUTLINED_FUNCTION_38_7();
      sub_1B256CFDC();
      OUTLINED_FUNCTION_129_1();
      if ((v63 & 1) == 0)
      {
        v81 = parseError(_:)(v57);
        *(v30 + 632) = v81;
        v82 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
        type metadata accessor for StoreKitError();
        v83 = OUTLINED_FUNCTION_142_0();
        v84 = *(v30 + 712);
        if (v83)
        {
          OUTLINED_FUNCTION_121_2();
          __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v89 = OUTLINED_FUNCTION_99_3();
            v90 = *(v30 + 712);
            sub_1B24E313C(v89);

            OUTLINED_FUNCTION_6_21();
            sub_1B2505A44(v90, v91);
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_6_21();
          sub_1B2505A44(v95, v96);
        }

        else
        {
          OUTLINED_FUNCTION_16_2();
          __swift_storeEnumTagSinglePayload(v92, v93, v94, v63);
          sub_1B243E88C(v84, &qword_1EB7D1E48);
        }

        if (qword_1ED699E80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
        }

        v97 = type metadata accessor for SKLogger();
        __swift_project_value_buffer(v97, qword_1ED69A108);
        OUTLINED_FUNCTION_196_0();
        v98 = a18;
        *(v30 + 568) = a17;
        *(v30 + 576) = v98;
        MEMORY[0x1B2749D50](0xD000000000000027, 0x80000001B2590700);
        *(v30 + 640) = v57;
        sub_1B256E78C();
        v99 = *(v30 + 568);
        a16 = *(v30 + 576);
        v100 = v81;
        v101 = sub_1B256E0AC();
        v102 = sub_1B256D5CC();
        if (os_log_type_enabled(v102, v101))
        {
          v103 = OUTLINED_FUNCTION_21_3();
          v104 = OUTLINED_FUNCTION_20_4();
          a17 = v104;
          *v103 = 136446466;
          *(v103 + 4) = OUTLINED_FUNCTION_75_2(v104, v105, &a17);
          *(v103 + 12) = 2082;
          *(v103 + 14) = sub_1B2519814(v99, a16, &a17);
          _os_log_impl(&dword_1B23EF000, v102, v101, "%{public}s%{public}s", v103, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_63_0();
          OUTLINED_FUNCTION_11_4();
        }

        OUTLINED_FUNCTION_150_1();
        a10 = v106;
        a11 = v107;
        a12 = *(v30 + 744);
        a13 = *(v30 + 736);
        a14 = *(v30 + 728);
        a15 = *(v30 + 712);
        v108 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
        OUTLINED_FUNCTION_149_1();
        v109 = sub_1B256D0CC();
        OUTLINED_FUNCTION_200_0(v109, sel_setPrimaryError_);

        v110 = sub_1B256D0CC();
        OUTLINED_FUNCTION_200_0(v110, sel_setMappedError_);

        [v101 setUserAction_];
        OUTLINED_FUNCTION_27_2(OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
        v111 = sub_1B256D98C();
        [v101 setInAppPurchaseID_];

        [objc_opt_self() sendEvent_];

        swift_willThrow();
        sub_1B24E313C(v99);

        OUTLINED_FUNCTION_7_2();
        goto LABEL_16;
      }
    }
  }

  v68 = OUTLINED_FUNCTION_99_3();
  sub_1B24E313C(v68);

LABEL_15:
  v69 = OUTLINED_FUNCTION_8_24();
  OUTLINED_FUNCTION_185_0(v69, v70, v71, v72);

  OUTLINED_FUNCTION_14_7();
LABEL_16:
  OUTLINED_FUNCTION_112();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}